@interface SCROBrailleSubstitutionManager
+ (id)_bundleForStrings;
+ (id)sharedInstance;
- (SCROBrailleSubstitutionManager)init;
- (id)brailleSubstitutionForType:(int64_t)a3 withLanguage:(id)a4;
- (id)stringWithBrailleSubstitutions:(id)a3 withLanguage:(id)a4;
- (void)_ensureLanguageDataPresent:(id)a3;
- (void)_loadLanguageSubstitutions:(id)a3 intoDictionary:(id)a4;
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
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [v11 languageCode];
  [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v12];

  v13 = [objc_opt_class() _bundleForStrings];
  v14 = [v13 bundleURL];
  v15 = CFBundleCreate(0, v14);

  v16 = CFBundleCopyLocalizedStringTableForLocalization();
  CFRelease(v15);
  [(SCROBrailleSubstitutionManager *)v2 _loadLanguageSubstitutions:v16 intoDictionary:v9];

  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_loadLanguageSubstitutions:(id)a3 intoDictionary:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 hasSuffix:@"_FULL"])
        {
          v12 = [v11 stringByReplacingOccurrencesOfString:@"_FULL" withString:@"_SHORT"];
          v13 = [v5 objectForKeyedSubscript:v12];
          if (v13)
          {
            v14 = [v5 objectForKeyedSubscript:v11];
            v15 = [v14 lowercaseString];
            [v17 setObject:v13 forKeyedSubscript:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  block[4] = a1;
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

- (id)brailleSubstitutionForType:(int64_t)a3 withLanguage:(id)a4
{
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:a4];
  if (a3 == 1 || a3 == 2)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = [objc_opt_class() _bundleForStrings];
    v8 = [v7 bundleURL];
    v9 = CFBundleCreate(v6, v8);

    v10 = [v5 languageCode];
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

- (void)_ensureLanguageDataPresent:(id)a3
{
  v12 = a3;
  v4 = [(NSMutableDictionary *)self->_lookup objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v12];
    v6 = [objc_opt_class() _bundleForStrings];
    v7 = [v6 bundleURL];
    v8 = CFBundleCreate(0, v7);

    v9 = [v5 languageCode];
    v10 = CFBundleCopyLocalizedStringTableForLocalization();

    CFRelease(v8);
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_lookup setObject:v11 forKeyedSubscript:v12];
    [(SCROBrailleSubstitutionManager *)self _loadLanguageSubstitutions:v10 intoDictionary:v11];
  }
}

- (id)stringWithBrailleSubstitutions:(id)a3 withLanguage:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v44 = v6;
  if (![v6 length])
  {
    v9 = v6;
    goto LABEL_22;
  }

  v8 = [v6 copy];
  v45 = self;
  if (v7)
  {
    [(SCROBrailleSubstitutionManager *)self _ensureLanguageDataPresent:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v10 languageCode];

    v7 = v11;
  }

  v43 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v7, v7}];
  v12 = MEMORY[0x277CCABF8];
  v13 = [v43 languageCode];
  v42 = [v12 defaultOrthographyForLanguage:v13];

  os_unfair_lock_lock(&v45->_taggerLock);
  [(NSLinguisticTagger *)v45->_linguisticTagger setString:v8];
  -[NSLinguisticTagger setOrthography:range:](v45->_linguisticTagger, "setOrthography:range:", v42, 0, [v8 length]);
  v14 = [(NSMutableDictionary *)v45->_lookup objectForKeyedSubscript:v41];
  v15 = [MEMORY[0x277CBEB18] array];
  linguisticTagger = v45->_linguisticTagger;
  v17 = [v8 length];
  v18 = *MEMORY[0x277CCA408];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __78__SCROBrailleSubstitutionManager_stringWithBrailleSubstitutions_withLanguage___block_invoke;
  v49[3] = &unk_279B74658;
  v19 = v8;
  v50 = v19;
  v20 = v15;
  v51 = v20;
  [(NSLinguisticTagger *)linguisticTagger enumerateTagsInRange:0 scheme:v17 options:v18 usingBlock:0, v49];
  if (![v20 count])
  {
    os_unfair_lock_unlock(&v45->_taggerLock);
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
    v24 = [v23 rangeValue];

    v25 = 0;
    v48 = v22;
    v26 = v22 + 3;
    while (1)
    {
      if ([v20 count] > v26)
      {
        v27 = [v20 objectAtIndexedSubscript:v26];
        v28 = [v27 rangeValue];
        v30 = v29;

        v31 = v30 - v24 + v28;
        v32 = [v19 substringWithRange:{v24, v31}];
        v33 = [v32 lowercaseString];
        v34 = [v14 objectForKeyedSubscript:v33];

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
    [v35 replaceCharactersInRange:v24 + v47 withString:{v31, v34}];
    v36 = [v34 length];

    v47 = v47 - v31 + v36;
    v48 = v48 - v25 + 3;
LABEL_16:
    v37 = [v20 count];
    v22 = v48 + 1;
    v21 = v48 + 1;
  }

  while (v37 > v21);
  os_unfair_lock_unlock(&v45->_taggerLock);
  if (!v46)
  {
    goto LABEL_20;
  }

  v38 = v46;
  v9 = v38;
LABEL_21:

  v7 = v41;
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