phoneBook = [("betty","555-2938")  
            ,("bonnie","452-2928")  
            ,("patsy","493-2928")  
            ,("lucille","205-2928")  
            ,("wendy","939-8282")  
            ,("penny","853-2492")  
            ]
            
--findKey :: (Eq k) => k -> [(k,v)] -> v
--findKey key xs = snd . head . filter (\(k,v) -> k == key) $ xs

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key xs = case xs of
  [] -> Nothing
  (x:xs) -> if key == fst x
            then Just $ snd x
            else findKey key xs
