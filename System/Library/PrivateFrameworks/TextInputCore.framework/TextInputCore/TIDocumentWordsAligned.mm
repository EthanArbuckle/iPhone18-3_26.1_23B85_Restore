@interface TIDocumentWordsAligned
- (TIDocumentWordsAligned)init;
- (id)_wordsFromContext:(id)context shouldDelete:(BOOL)delete;
- (id)description;
- (id)lastWord;
- (id)matchingLeftContextToWordMapKey:(id)key;
- (id)preferredLeftContextToWordMapKeyForLeftContext:(id)context andMatchingLeftContext:(id)leftContext;
- (id)wordsForContext:(id)context;
- (unint64_t)wordsCount;
- (void)addToContextMap:(id)map;
- (void)insertWord:(id)word atIndex:(int64_t)index;
- (void)pushWordToDocument:(id)document;
- (void)removeFromContextMap:(id)map;
- (void)replaceLeftContextToWordMapKey:(id)key withNewKey:(id)newKey;
@end

@implementation TIDocumentWordsAligned

- (id)lastWord
{
  inDocumentWordsStack = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  lastObject = [inDocumentWordsStack lastObject];
  acceptedString = [lastObject acceptedString];

  return acceptedString;
}

- (id)description
{
  inDocumentWordsStack = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v3 = [inDocumentWordsStack componentsJoinedByString:@" "];

  return v3;
}

- (unint64_t)wordsCount
{
  inDocumentWordsStack = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v3 = [inDocumentWordsStack count];

  return v3;
}

- (id)_wordsFromContext:(id)context shouldDelete:(BOOL)delete
{
  deleteCopy = delete;
  v49 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  inDocumentWordsStack = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v8 = [inDocumentWordsStack count];

  if (!v8)
  {
    array = 0;
    goto LABEL_37;
  }

  array = [MEMORY[0x277CBEB18] array];
  if (contextCopy)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v38 = [contextCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  }

  else
  {
    v38 = &stru_283FDFAF8;
  }

  if (v8 >= 1)
  {
    v36 = deleteCopy;
    v11 = 0;
    while (1)
    {
      inDocumentWordsStack2 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
      v13 = [inDocumentWordsStack2 objectAtIndexedSubscript:v11];
      documentState = [v13 documentState];
      contextBeforeInput = [documentState contextBeforeInput];

      whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v17 = [contextBeforeInput stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

      if (([v17 isEqualToString:contextCopy] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", v38))
      {
        break;
      }

      if (v8 == ++v11)
      {
        v11 = -1;
        goto LABEL_16;
      }
    }

    if (v8 > v11)
    {
      v18 = v11;
      do
      {
        inDocumentWordsStack3 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
        v20 = [inDocumentWordsStack3 objectAtIndexedSubscript:v18];
        [array addObject:v20];

        ++v18;
      }

      while (v8 != v18);
    }

LABEL_16:
    if (!v36)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  v11 = -1;
  if (deleteCopy)
  {
LABEL_19:
    v37 = contextCopy;
    if (v11 != -1)
    {
      inDocumentWordsStack4 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
      [inDocumentWordsStack4 removeObjectsInRange:{v11, v8 - v11}];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = array;
    v22 = array;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * i);
          [v27 setDeleted:1];
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          allEdits = [v27 allEdits];
          v29 = [allEdits countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v40;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v40 != v31)
                {
                  objc_enumerationMutation(allEdits);
                }

                [*(*(&v39 + 1) + 8 * j) setDeleted:1];
              }

              v30 = [allEdits countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v30);
          }

          [(TIDocumentWordsAligned *)self removeFromContextMap:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v24);
    }

    array = v35;
    contextCopy = v37;
  }

LABEL_36:

LABEL_37:
  v33 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)insertWord:(id)word atIndex:(int64_t)index
{
  wordCopy = word;
  inDocumentWordsStack = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v7 = [inDocumentWordsStack count];

  inDocumentWordsStack2 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v9 = inDocumentWordsStack2;
  if (v7 <= index)
  {
    [inDocumentWordsStack2 addObject:wordCopy];

    inDocumentWordsStack3 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
    [wordCopy setSessionIndex:{objc_msgSend(inDocumentWordsStack3, "count")}];
  }

  else
  {
    [inDocumentWordsStack2 insertObject:wordCopy atIndex:index];

    [wordCopy setSessionIndex:index];
  }

  [(TIDocumentWordsAligned *)self addToContextMap:wordCopy];
}

- (void)replaceLeftContextToWordMapKey:(id)key withNewKey:(id)newKey
{
  keyCopy = key;
  newKeyCopy = newKey;
  if (([keyCopy isEqualToString:newKeyCopy] & 1) == 0)
  {
    leftContextToWordMap = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    v8 = [leftContextToWordMap objectForKey:keyCopy];

    leftContextToWordMap2 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    [leftContextToWordMap2 setObject:v8 forKey:newKeyCopy];

    leftContextToWordMap3 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    [leftContextToWordMap3 removeObjectForKey:keyCopy];
  }
}

- (id)preferredLeftContextToWordMapKeyForLeftContext:(id)context andMatchingLeftContext:(id)leftContext
{
  contextCopy = context;
  v6 = contextCopy;
  if (leftContext)
  {
    leftContextCopy = leftContext;
    v8 = [leftContextCopy length];
    if (v8 <= [v6 length])
    {
      v9 = v6;
    }

    else
    {
      v9 = leftContextCopy;
    }

    v10 = v9;
  }

  else
  {
    v10 = contextCopy;
  }

  return v10;
}

- (id)matchingLeftContextToWordMapKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  leftContextToWordMap = [(TIDocumentWordsAligned *)self leftContextToWordMap];
  allKeys = [leftContextToWordMap allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isEqualToString:keyCopy])
        {
          v15 = v12;

          goto LABEL_21;
        }

        v13 = [v12 length];
        if (v13 > [v9 length] && ((objc_msgSend(v12, "hasPrefix:", keyCopy) & 1) == 0 && objc_msgSend(v12, "hasSuffix:", keyCopy) && objc_msgSend(keyCopy, "length") > 0xF || (objc_msgSend(keyCopy, "hasPrefix:", v12) & 1) == 0 && objc_msgSend(keyCopy, "hasSuffix:", v12) && objc_msgSend(v12, "length") >= 0x10))
        {
          v14 = v12;

          v9 = v14;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v9 = v9;
  v15 = v9;
LABEL_21:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)wordsForContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [contextCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    v7 = [(TIDocumentWordsAligned *)self matchingLeftContextToWordMapKey:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [(TIDocumentWordsAligned *)self preferredLeftContextToWordMapKeyForLeftContext:v6 andMatchingLeftContext:v7];
      [(TIDocumentWordsAligned *)self replaceLeftContextToWordMapKey:v8 withNewKey:v9];
      leftContextToWordMap = [(TIDocumentWordsAligned *)self leftContextToWordMap];
      v11 = [leftContextToWordMap objectForKeyedSubscript:v9];
      v12 = [v11 copy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)removeFromContextMap:(id)map
{
  mapCopy = map;
  trimmedDocumentContextBeforeInput = [mapCopy trimmedDocumentContextBeforeInput];
  v5 = [(TIDocumentWordsAligned *)self matchingLeftContextToWordMapKey:trimmedDocumentContextBeforeInput];
  if (v5)
  {
    leftContextToWordMap = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    v7 = [leftContextToWordMap objectForKeyedSubscript:v5];
    [v7 removeObject:mapCopy];
  }
}

- (void)addToContextMap:(id)map
{
  mapCopy = map;
  trimmedDocumentContextBeforeInput = [mapCopy trimmedDocumentContextBeforeInput];
  v5 = [(TIDocumentWordsAligned *)self matchingLeftContextToWordMapKey:trimmedDocumentContextBeforeInput];
  if (v5)
  {
    v6 = [(TIDocumentWordsAligned *)self preferredLeftContextToWordMapKeyForLeftContext:trimmedDocumentContextBeforeInput andMatchingLeftContext:v5];
    [(TIDocumentWordsAligned *)self replaceLeftContextToWordMapKey:v5 withNewKey:v6];
    leftContextToWordMap = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    v8 = [leftContextToWordMap objectForKeyedSubscript:v6];
    [v8 addObject:mapCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:mapCopy];
    leftContextToWordMap = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    [leftContextToWordMap setObject:v6 forKeyedSubscript:trimmedDocumentContextBeforeInput];
  }
}

- (void)pushWordToDocument:(id)document
{
  documentCopy = document;
  inDocumentWordsStack = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  [documentCopy setSessionIndex:{objc_msgSend(inDocumentWordsStack, "count")}];

  inDocumentWordsStack2 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  [inDocumentWordsStack2 addObject:documentCopy];

  [(TIDocumentWordsAligned *)self addToContextMap:documentCopy];
}

- (TIDocumentWordsAligned)init
{
  v8.receiver = self;
  v8.super_class = TIDocumentWordsAligned;
  v2 = [(TIDocumentWordsAligned *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    inDocumentWordsStack = v2->_inDocumentWordsStack;
    v2->_inDocumentWordsStack = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    leftContextToWordMap = v2->_leftContextToWordMap;
    v2->_leftContextToWordMap = dictionary;
  }

  return v2;
}

@end