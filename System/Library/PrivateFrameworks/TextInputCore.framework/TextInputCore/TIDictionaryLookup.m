@interface TIDictionaryLookup
- (TIDictionaryLookup)initWithSourceLocale:(id)a3 targetLocale:(id)a4;
- (id)translationForString:(id)a3;
- (id)translationsForStrings:(id)a3;
@end

@implementation TIDictionaryLookup

- (id)translationsForStrings:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(TIDictionaryLookup *)self translationForString:*(*(&v15 + 1) + 8 * i), v15];
          if ([v11 length])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 array];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)translationForString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(TIDictionaryLookup *)self sourceLocale];
    v6 = [v4 lowercaseStringWithLocale:v5];

    v7 = [(TIDictionaryLookup *)self translationPairs];
    v8 = [v7 objectForKeyedSubscript:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TIDictionaryLookup)initWithSourceLocale:(id)a3 targetLocale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAF8];
  v9 = [v6 languageIdentifier];
  v10 = [v8 baseLanguageFromLanguage:v9];

  v11 = MEMORY[0x277CBEAF8];
  v12 = [v7 languageIdentifier];
  v13 = [v11 baseLanguageFromLanguage:v12];

  v14 = [@"Dictionary_" stringByAppendingFormat:@"%@-%@", v10, v13];
  v15 = TIGetDictionaryData();

  if ([v15 count])
  {
    v20.receiver = self;
    v20.super_class = TIDictionaryLookup;
    v16 = [(TIDictionaryLookup *)&v20 init];
    v17 = v16;
    if (v16)
    {
      [(TIDictionaryLookup *)v16 setSourceLocale:v6];
      [(TIDictionaryLookup *)v17 setTargetLocale:v7];
      [(TIDictionaryLookup *)v17 setTranslationPairs:v15];
    }

    self = v17;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end