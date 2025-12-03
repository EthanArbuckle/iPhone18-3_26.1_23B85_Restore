@interface SCROBrailleSubstitutionManager
+ (id)_bundleForStrings;
+ (id)sharedInstance;
- (SCROBrailleSubstitutionManager)init;
- (id)brailleSubstitutionForType:(int64_t)type withLanguage:(id)language;
- (id)stringWithBrailleSubstitutions:(id)substitutions withLanguage:(id)language;
- (void)_ensureLanguageDataPresent:(id)present;
- (void)_loadLanguageSubstitutions:(id)substitutions intoDictionary:(id)dictionary;
@end

@implementation SCROBrailleSubstitutionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SCROBrailleSubstitutionManager sharedInstance];
  }

  v3 = sharedInstance_Manager;

  return v3;
}

uint64_t __48__SCROBrailleSubstitutionManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  sharedInstance_Manager = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (SCROBrailleSubstitutionManager)init
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = SCROBrailleSubstitutionManager;
  v2 = [(SCROBrailleSubstitutionManager *)&v19 init];
  v3 = objc_alloc(MEMORY[0x277CCAAE8]);
  v20[0] = *MEMORY[0x277CCA408];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v5 = [v3 initWithTagSchemes:v4 options:0];
  linguisticTagger = v2->_linguisticTagger;
  v2->_linguisticTagger = v5;

  v2->_taggerLock._os_unfair_lock_opaque = 0;
  v7 = objc_opt_new();
  lookup = v2->_lookup;
  v2->_lookup = v7;

  v9 = objc_opt_new();
  v10 = v2->_lookup;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:languageCode];

  _bundleForStrings = [objc_opt_class() _bundleForStrings];
  bundleURL = [_bundleForStrings bundleURL];
  v15 = CFBundleCreate(0, bundleURL);

  v16 = CFBundleCopyLocalizedStringTableForLocalization();
  CFRelease(v15);
  [(SCROBrailleSubstitutionManager *)v2 _loadLanguageSubstitutions:v16 intoDictionary:v9];

  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_loadLanguageSubstitutions:(id)substitutions intoDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  substitutionsCopy = substitutions;
  dictionaryCopy = dictionary;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [substitutionsCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 hasSuffix:@"_FULL"])
        {
          v12 = [v11 stringByReplacingOccurrencesOfString:@"_FULL" withString:@"_SHORT"];
          v13 = [substitutionsCopy objectForKeyedSubscript:v12];
          if (v13)
          {
            v14 = [substitutionsCopy objectForKeyedSubscript:v11];
            lowercaseString = [v14 lowercaseString];
            [dictionaryCopy setObject:v13 forKeyedSubscript:lowercaseString];
          }
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)_bundleForStrings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SCROBrailleSubstitutionManager__bundleForStrings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_bundleForStrings_onceToken != -1)
  {
    dispatch_once(&_bundleForStrings_onceToken, block);
  }

  v2 = _bundleForStrings_Bundle;

  return v2;
}

uint64_t __51__SCROBrailleSubstitutionManager__bundleForStrings__block_invoke(uint64_t a1)
{
  if (+[SCROConnection inUnitTests])
  {
    [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/ScreenReaderOutput.framework"];
  }

  else
  {
    v3 = *(a1 + 32);
    [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  }
  v2 = ;
  _bundleForStrings_Bundle = v2;

  return MEMORY[0x2821F96F8](v2);
}

- (id)brailleSubstitutionForType:(int64_t)type withLanguage:(id)language
{
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:language];
  if (type == 1 || type == 2)
  {
    v6 = *MEMORY[0x277CBECE8];
    _bundleForStrings = [objc_opt_class() _bundleForStrings];
    bundleURL = [_bundleForStrings bundleURL];
    v9 = CFBundleCreate(v6, bundleURL);

    languageCode = [v5 languageCode];
    v11 = CFBundleCopyLocalizedStringForLocalization();

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_ensureLanguageDataPresent:(id)present
{
  presentCopy = present;
  v4 = [(NSMutableDictionary *)self->_lookup objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:presentCopy];
    _bundleForStrings = [objc_opt_class() _bundleForStrings];
    bundleURL = [_bundleForStrings bundleURL];
    v8 = CFBundleCreate(0, bundleURL);

    languageCode = [v5 languageCode];
    v10 = CFBundleCopyLocalizedStringTableForLocalization();

    CFRelease(v8);
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_lookup setObject:v11 forKeyedSubscript:presentCopy];
    [(SCROBrailleSubstitutionManager *)self _loadLanguageSubstitutions:v10 intoDictionary:v11];
  }
}

- (id)stringWithBrailleSubstitutions:(id)substitutions withLanguage:(id)language
{
  v52 = *MEMORY[0x277D85DE8];
  substitutionsCopy = substitutions;
  languageCopy = language;
  v44 = substitutionsCopy;
  if (![substitutionsCopy length])
  {
    v9 = substitutionsCopy;
    goto LABEL_22;
  }

  v8 = [substitutionsCopy copy];
  selfCopy = self;
  if (languageCopy)
  {
    [(SCROBrailleSubstitutionManager *)self _ensureLanguageDataPresent:languageCopy];
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];

    languageCopy = languageCode;
  }

  v43 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{languageCopy, languageCopy}];
  v12 = MEMORY[0x277CCABF8];
  languageCode2 = [v43 languageCode];
  v42 = [v12 defaultOrthographyForLanguage:languageCode2];

  os_unfair_lock_lock(&selfCopy->_taggerLock);
  [(NSLinguisticTagger *)selfCopy->_linguisticTagger setString:v8];
  -[NSLinguisticTagger setOrthography:range:](selfCopy->_linguisticTagger, "setOrthography:range:", v42, 0, [v8 length]);
  v14 = [(NSMutableDictionary *)selfCopy->_lookup objectForKeyedSubscript:v41];
  array = [MEMORY[0x277CBEB18] array];
  linguisticTagger = selfCopy->_linguisticTagger;
  v17 = [v8 length];
  v18 = *MEMORY[0x277CCA408];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __78__SCROBrailleSubstitutionManager_stringWithBrailleSubstitutions_withLanguage___block_invoke;
  v49[3] = &unk_279B74658;
  v19 = v8;
  v50 = v19;
  v20 = array;
  v51 = v20;
  [(NSLinguisticTagger *)linguisticTagger enumerateTagsInRange:0 scheme:v17 options:v18 usingBlock:0, v49];
  if (![v20 count])
  {
    os_unfair_lock_unlock(&selfCopy->_taggerLock);
LABEL_20:
    v9 = v19;
    v38 = 0;
    goto LABEL_21;
  }

  v21 = 0;
  v46 = 0;
  v47 = 0;
  v22 = 0;
  do
  {
    v23 = [v20 objectAtIndexedSubscript:v21];
    rangeValue = [v23 rangeValue];

    v25 = 0;
    v48 = v22;
    v26 = v22 + 3;
    while (1)
    {
      if ([v20 count] > v26)
      {
        v27 = [v20 objectAtIndexedSubscript:v26];
        rangeValue2 = [v27 rangeValue];
        v30 = v29;

        v31 = v30 - rangeValue + rangeValue2;
        v32 = [v19 substringWithRange:{rangeValue, v31}];
        lowercaseString = [v32 lowercaseString];
        v34 = [v14 objectForKeyedSubscript:lowercaseString];

        if (v34)
        {
          break;
        }
      }

      ++v25;
      --v26;
      if (v25 == 4)
      {
        goto LABEL_16;
      }
    }

    v35 = v46;
    if (!v46)
    {
      v35 = [v19 mutableCopy];
    }

    v46 = v35;
    [v35 replaceCharactersInRange:rangeValue + v47 withString:{v31, v34}];
    v36 = [v34 length];

    v47 = v47 - v31 + v36;
    v48 = v48 - v25 + 3;
LABEL_16:
    v37 = [v20 count];
    v22 = v48 + 1;
    v21 = v48 + 1;
  }

  while (v37 > v21);
  os_unfair_lock_unlock(&selfCopy->_taggerLock);
  if (!v46)
  {
    goto LABEL_20;
  }

  v38 = v46;
  v9 = v38;
LABEL_21:

  languageCopy = v41;
LABEL_22:

  v39 = *MEMORY[0x277D85DE8];

  return v9;
}

void __78__SCROBrailleSubstitutionManager_stringWithBrailleSubstitutions_withLanguage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isEqualToString:*MEMORY[0x277CCA428]] && a3 + a4 <= objc_msgSend(*(a1 + 32), "length"))
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    [v7 addObject:v8];
  }
}

@end