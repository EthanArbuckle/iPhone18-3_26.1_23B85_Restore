@interface TIDictionaryLookup
- (TIDictionaryLookup)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale;
- (id)translationForString:(id)string;
- (id)translationsForStrings:(id)strings;
@end

@implementation TIDictionaryLookup

- (id)translationsForStrings:(id)strings
{
  v20 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  if ([stringsCopy count])
  {
    v5 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = stringsCopy;
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

    array = [v5 array];
  }

  else
  {
    array = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)translationForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    sourceLocale = [(TIDictionaryLookup *)self sourceLocale];
    v6 = [stringCopy lowercaseStringWithLocale:sourceLocale];

    translationPairs = [(TIDictionaryLookup *)self translationPairs];
    v8 = [translationPairs objectForKeyedSubscript:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TIDictionaryLookup)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale
{
  localeCopy = locale;
  targetLocaleCopy = targetLocale;
  v8 = MEMORY[0x277CBEAF8];
  languageIdentifier = [localeCopy languageIdentifier];
  v10 = [v8 baseLanguageFromLanguage:languageIdentifier];

  v11 = MEMORY[0x277CBEAF8];
  languageIdentifier2 = [targetLocaleCopy languageIdentifier];
  v13 = [v11 baseLanguageFromLanguage:languageIdentifier2];

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
      [(TIDictionaryLookup *)v16 setSourceLocale:localeCopy];
      [(TIDictionaryLookup *)v17 setTargetLocale:targetLocaleCopy];
      [(TIDictionaryLookup *)v17 setTranslationPairs:v15];
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end