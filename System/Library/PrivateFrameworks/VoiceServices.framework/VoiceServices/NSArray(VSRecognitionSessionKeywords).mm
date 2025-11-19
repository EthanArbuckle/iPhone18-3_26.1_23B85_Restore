@interface NSArray(VSRecognitionSessionKeywords)
- (id)_scrambledKeywordsAndAddToSet:()VSRecognitionSessionKeywords;
- (void)_nextKeywordUsingCursors:()VSRecognitionSessionKeywords;
@end

@implementation NSArray(VSRecognitionSessionKeywords)

- (void)_nextKeywordUsingCursors:()VSRecognitionSessionKeywords
{
  Value = CFDictionaryGetValue(theDict, key);
  v6 = [key count];
  v7 = 0;
  if (v6 <= Value)
  {
    Value = 0;
  }

  if (Value < v6)
  {
    v7 = [key objectAtIndex:Value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v7 _nextKeywordUsingCursors:theDict];
    }

    CFDictionarySetValue(theDict, key, Value + 1);
  }

  return v7;
}

- (id)_scrambledKeywordsAndAddToSet:()VSRecognitionSessionKeywords
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [a1 count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 _scrambledKeywordsAndAddToSet:a3];
          v13 = v5;
        }

        else
        {
          [v5 addObject:v11];
          v13 = a3;
          v12 = v11;
        }

        [v13 addObject:v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [a1 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if (v6)
  {
    v14 = 0;
    do
    {
      [v5 exchangeObjectAtIndex:v14 withObjectAtIndex:random() % v6 + v14];
      ++v14;
      --v6;
    }

    while (v6);
  }

  result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

@end