@interface WLKSettingsLanguageUtilities
+ (id)_localizedNameForLanguageCode:(id)code withLocale:(id)locale;
+ (id)availableAudioLanguageCodes;
+ (id)localizedNameForLanguageCode:(id)code;
+ (id)localizedNameForLanguageCodeInItsOwnLanguage:(id)language;
+ (id)userFacingAudioLanguageTitles:(id)titles;
+ (id)userFacingLocalizedNameForLanguageCode:(id)code autoString:(id)string;
@end

@implementation WLKSettingsLanguageUtilities

+ (id)localizedNameForLanguageCodeInItsOwnLanguage:(id)language
{
  if (language)
  {
    v3 = MEMORY[0x277CBEAF8];
    languageCopy = language;
    v5 = [v3 localeWithLocaleIdentifier:languageCopy];
    v6 = [WLKSettingsLanguageUtilities _localizedNameForLanguageCode:languageCopy withLocale:v5];
  }

  else
  {
    v6 = &stru_288206BC0;
  }

  return v6;
}

+ (id)localizedNameForLanguageCode:(id)code
{
  v3 = MEMORY[0x277CBEAF8];
  codeCopy = code;
  autoupdatingCurrentLocale = [v3 autoupdatingCurrentLocale];
  v6 = [WLKSettingsLanguageUtilities _localizedNameForLanguageCode:codeCopy withLocale:autoupdatingCurrentLocale];

  return v6;
}

+ (id)userFacingLocalizedNameForLanguageCode:(id)code autoString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  if ([codeCopy isEqualToString:@"AUTO_SENTINEL_VALUE"])
  {
    v7 = stringCopy;
  }

  else
  {
    v7 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:codeCopy];
  }

  v8 = v7;
  if (!v7)
  {
    v8 = codeCopy;
  }

  return v8;
}

+ (id)userFacingAudioLanguageTitles:(id)titles
{
  v19 = *MEMORY[0x277D85DE8];
  titlesCopy = titles;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = +[WLKSettingsLanguageUtilities availableAudioLanguageCodes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [WLKSettingsLanguageUtilities userFacingLocalizedNameForLanguageCode:v10 autoString:titlesCopy];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)availableAudioLanguageCodes
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = +[WLKSettingsLanguageUtilities staticLanguageCodes];
  v3 = [v2 mutableCopy];

  v4 = +[WLKSystemPreferencesStore sharedPreferences];
  supplementaryAvailableAudioLanguages = [v4 supplementaryAvailableAudioLanguages];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = supplementaryAvailableAudioLanguages;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        if (([v3 containsObject:v11] & 1) == 0)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  v14 = 0x277CBE000uLL;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = v16;
  if (firstObject)
  {
    v18 = [firstObject componentsSeparatedByString:@"-"];
    firstObject2 = [v18 firstObject];
    if (firstObject2)
    {
      v30 = v18;
      v31 = firstObject;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v20 = v3;
      v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v33;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v32 + 1) + 8 * j);
            if ([v25 hasPrefix:{firstObject2, v30, v31, v32}])
            {
              v26 = v15;
            }

            else
            {
              v26 = v17;
            }

            [v26 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v22);
      }

      v18 = v30;
      firstObject = v31;
      v14 = 0x277CBE000;
    }

    else
    {
      [v17 addObjectsFromArray:v3];
    }
  }

  else
  {
    [v16 addObjectsFromArray:v3];
  }

  [v15 sortUsingComparator:{&__block_literal_global_16, v30, v31}];
  [v17 sortUsingComparator:&__block_literal_global_10];
  v27 = [objc_alloc(*(v14 + 2840)) initWithArray:v15];
  [v27 addObjectsFromArray:v17];
  [v27 insertObject:@"AUTO_SENTINEL_VALUE" atIndex:0];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

uint64_t __59__WLKSettingsLanguageUtilities_availableAudioLanguageCodes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:a2];
  v6 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v4];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

uint64_t __59__WLKSettingsLanguageUtilities_availableAudioLanguageCodes__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:a2];
  v6 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v4];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

+ (id)_localizedNameForLanguageCode:(id)code withLocale:(id)locale
{
  codeCopy = code;
  localeCopy = locale;
  v7 = *MEMORY[0x277CBE6C0];
  v8 = [localeCopy displayNameForKey:*MEMORY[0x277CBE6C0] value:codeCopy];
  if ([WLKSettingsLanguageUtilities _isSpecialSpokenLanguage:codeCopy])
  {
    v9 = [codeCopy componentsSeparatedByString:@"-"];
    firstObject = [v9 firstObject];
    v11 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:firstObject];
    if (v11)
    {
      v12 = v11;
      if ([v9 count] >= 2)
      {
        v13 = [v9 objectAtIndex:1];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v12, v13];

        v12 = v14;
      }

      v15 = [localeCopy displayNameForKey:v7 value:v12];

      v8 = v15;
    }
  }

  v16 = [v8 capitalizedStringWithLocale:localeCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = codeCopy;
  }

  v19 = v18;

  return v18;
}

@end