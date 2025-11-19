@interface TIDocumentWordsAligned
- (TIDocumentWordsAligned)init;
- (id)_wordsFromContext:(id)a3 shouldDelete:(BOOL)a4;
- (id)description;
- (id)lastWord;
- (id)matchingLeftContextToWordMapKey:(id)a3;
- (id)preferredLeftContextToWordMapKeyForLeftContext:(id)a3 andMatchingLeftContext:(id)a4;
- (id)wordsForContext:(id)a3;
- (unint64_t)wordsCount;
- (void)addToContextMap:(id)a3;
- (void)insertWord:(id)a3 atIndex:(int64_t)a4;
- (void)pushWordToDocument:(id)a3;
- (void)removeFromContextMap:(id)a3;
- (void)replaceLeftContextToWordMapKey:(id)a3 withNewKey:(id)a4;
@end

@implementation TIDocumentWordsAligned

- (id)lastWord
{
  v2 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v3 = [v2 lastObject];
  v4 = [v3 acceptedString];

  return v4;
}

- (id)description
{
  v2 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v3 = [v2 componentsJoinedByString:@" "];

  return v3;
}

- (unint64_t)wordsCount
{
  v2 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v3 = [v2 count];

  return v3;
}

- (id)_wordsFromContext:(id)a3 shouldDelete:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = 0;
    goto LABEL_37;
  }

  v9 = [MEMORY[0x277CBEB18] array];
  if (v6)
  {
    v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v38 = [v6 stringByTrimmingCharactersInSet:v10];
  }

  else
  {
    v38 = &stru_283FDFAF8;
  }

  if (v8 >= 1)
  {
    v36 = v4;
    v11 = 0;
    while (1)
    {
      v12 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
      v13 = [v12 objectAtIndexedSubscript:v11];
      v14 = [v13 documentState];
      v15 = [v14 contextBeforeInput];

      v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v17 = [v15 stringByTrimmingCharactersInSet:v16];

      if (([v17 isEqualToString:v6] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", v38))
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
        v19 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
        v20 = [v19 objectAtIndexedSubscript:v18];
        [v9 addObject:v20];

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
  if (v4)
  {
LABEL_19:
    v37 = v6;
    if (v11 != -1)
    {
      v21 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
      [v21 removeObjectsInRange:{v11, v8 - v11}];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = v9;
    v22 = v9;
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
          v28 = [v27 allEdits];
          v29 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
                  objc_enumerationMutation(v28);
                }

                [*(*(&v39 + 1) + 8 * j) setDeleted:1];
              }

              v30 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v30);
          }

          [(TIDocumentWordsAligned *)self removeFromContextMap:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v24);
    }

    v9 = v35;
    v6 = v37;
  }

LABEL_36:

LABEL_37:
  v33 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)insertWord:(id)a3 atIndex:(int64_t)a4
{
  v11 = a3;
  v6 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v7 = [v6 count];

  v8 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  v9 = v8;
  if (v7 <= a4)
  {
    [v8 addObject:v11];

    v10 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
    [v11 setSessionIndex:{objc_msgSend(v10, "count")}];
  }

  else
  {
    [v8 insertObject:v11 atIndex:a4];

    [v11 setSessionIndex:a4];
  }

  [(TIDocumentWordsAligned *)self addToContextMap:v11];
}

- (void)replaceLeftContextToWordMapKey:(id)a3 withNewKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (([v11 isEqualToString:v6] & 1) == 0)
  {
    v7 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    v8 = [v7 objectForKey:v11];

    v9 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    [v9 setObject:v8 forKey:v6];

    v10 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    [v10 removeObjectForKey:v11];
  }
}

- (id)preferredLeftContextToWordMapKeyForLeftContext:(id)a3 andMatchingLeftContext:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = a4;
    v8 = [v7 length];
    if (v8 <= [v6 length])
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)matchingLeftContextToWordMapKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isEqualToString:v4])
        {
          v15 = v12;

          goto LABEL_21;
        }

        v13 = [v12 length];
        if (v13 > [v9 length] && ((objc_msgSend(v12, "hasPrefix:", v4) & 1) == 0 && objc_msgSend(v12, "hasSuffix:", v4) && objc_msgSend(v4, "length") > 0xF || (objc_msgSend(v4, "hasPrefix:", v12) & 1) == 0 && objc_msgSend(v4, "hasSuffix:", v12) && objc_msgSend(v12, "length") >= 0x10))
        {
          v14 = v12;

          v9 = v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)wordsForContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    v7 = [(TIDocumentWordsAligned *)self matchingLeftContextToWordMapKey:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [(TIDocumentWordsAligned *)self preferredLeftContextToWordMapKeyForLeftContext:v6 andMatchingLeftContext:v7];
      [(TIDocumentWordsAligned *)self replaceLeftContextToWordMapKey:v8 withNewKey:v9];
      v10 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
      v11 = [v10 objectForKeyedSubscript:v9];
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

- (void)removeFromContextMap:(id)a3
{
  v8 = a3;
  v4 = [v8 trimmedDocumentContextBeforeInput];
  v5 = [(TIDocumentWordsAligned *)self matchingLeftContextToWordMapKey:v4];
  if (v5)
  {
    v6 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    v7 = [v6 objectForKeyedSubscript:v5];
    [v7 removeObject:v8];
  }
}

- (void)addToContextMap:(id)a3
{
  v9 = a3;
  v4 = [v9 trimmedDocumentContextBeforeInput];
  v5 = [(TIDocumentWordsAligned *)self matchingLeftContextToWordMapKey:v4];
  if (v5)
  {
    v6 = [(TIDocumentWordsAligned *)self preferredLeftContextToWordMapKeyForLeftContext:v4 andMatchingLeftContext:v5];
    [(TIDocumentWordsAligned *)self replaceLeftContextToWordMapKey:v5 withNewKey:v6];
    v7 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    v8 = [v7 objectForKeyedSubscript:v6];
    [v8 addObject:v9];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
    v7 = [(TIDocumentWordsAligned *)self leftContextToWordMap];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }
}

- (void)pushWordToDocument:(id)a3
{
  v6 = a3;
  v4 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  [v6 setSessionIndex:{objc_msgSend(v4, "count")}];

  v5 = [(TIDocumentWordsAligned *)self inDocumentWordsStack];
  [v5 addObject:v6];

  [(TIDocumentWordsAligned *)self addToContextMap:v6];
}

- (TIDocumentWordsAligned)init
{
  v8.receiver = self;
  v8.super_class = TIDocumentWordsAligned;
  v2 = [(TIDocumentWordsAligned *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    inDocumentWordsStack = v2->_inDocumentWordsStack;
    v2->_inDocumentWordsStack = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    leftContextToWordMap = v2->_leftContextToWordMap;
    v2->_leftContextToWordMap = v5;
  }

  return v2;
}

@end