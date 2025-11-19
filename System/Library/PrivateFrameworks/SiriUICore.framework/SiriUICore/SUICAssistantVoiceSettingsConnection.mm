@interface SUICAssistantVoiceSettingsConnection
+ (id)assistantLanguageTitlesDictionary;
+ (id)capitalizeFirstPartOfCountry:(id)a3;
+ (id)shortTitlesForLanguageIdentifiers:(id)a3 deviceLanguageLocale:(id)a4;
+ (id)titlesForLanguageIdentifiers:(id)a3;
- (BOOL)languageHasVoiceSelection:(id)a3;
- (BOOL)languageHasVoiceVariations:(id)a3;
- (id)_regionForLanguageIdentifier:(id)a3;
- (id)dialectForLanguageIdentifier:(id)a3;
- (id)getAvailableDialectsForLanguage:(id)a3;
- (id)getAvailableVoicesForLanguage:(id)a3;
@end

@implementation SUICAssistantVoiceSettingsConnection

- (BOOL)languageHasVoiceVariations:(id)a3
{
  v3 = [(SUICAssistantVoiceSettingsConnection *)self getAvailableVoicesForLanguage:a3];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_7];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  LOBYTE(v3) = [v5 count] > 1;
  return v3;
}

BOOL __67__SUICAssistantVoiceSettingsConnection_languageHasVoiceVariations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = [v2 name];
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getAvailableVoicesForLanguage:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = self->_cachedAvailableVoices;
    objc_sync_enter(v6);
    cachedAvailableVoices = self->_cachedAvailableVoices;
    if (!cachedAvailableVoices)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_cachedAvailableVoices;
      self->_cachedAvailableVoices = v8;

      cachedAvailableVoices = self->_cachedAvailableVoices;
    }

    v10 = [(NSMutableDictionary *)cachedAvailableVoices objectForKeyedSubscript:v4];

    if (!v10)
    {
      v11 = [MEMORY[0x1E698D270] allVoicesForSiriSessionLanguage:v4];
      v12 = MEMORY[0x1E696AE18];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __70__SUICAssistantVoiceSettingsConnection_getAvailableVoicesForLanguage___block_invoke;
      v18[3] = &unk_1E81E84A0;
      v13 = v4;
      v19 = v13;
      v14 = [v12 predicateWithBlock:v18];
      v15 = [v11 filteredArrayUsingPredicate:v14];

      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v5;
      }

      [(NSMutableDictionary *)self->_cachedAvailableVoices setObject:v16 forKeyedSubscript:v13];
    }

    objc_sync_exit(v6);

    v5 = [(NSMutableDictionary *)self->_cachedAvailableVoices objectForKeyedSubscript:v4];
  }

  return v5;
}

uint64_t __70__SUICAssistantVoiceSettingsConnection_getAvailableVoicesForLanguage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 languageCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)getAvailableDialectsForLanguage:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"AssistantVoiceDialects" ofType:@"plist"];

  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
  v7 = [v6 objectForKeyedSubscript:v3];
  if (v7)
  {
    [MEMORY[0x1E695DFD8] setWithArray:v7];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{v3, 0}];
  }
  v8 = ;

  return v8;
}

- (BOOL)languageHasVoiceSelection:(id)a3
{
  v4 = a3;
  if ([(SUICAssistantVoiceSettingsConnection *)self languageHasVoiceVariations:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SUICAssistantVoiceSettingsConnection *)self getAvailableDialectsForLanguage:v4];
    v5 = [v6 count] > 1;
  }

  return v5;
}

- (id)_regionForLanguageIdentifier:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a3;
  v5 = [v3 _deviceLanguage];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  v7 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v4];

  v8 = *MEMORY[0x1E695D978];
  v9 = [v7 objectForKey:*MEMORY[0x1E695D978]];
  v10 = [v6 displayNameForKey:v8 value:v9];

  return v10;
}

- (id)dialectForLanguageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"REGION_%@", v4];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_1F43BC8C0 table:0];

  if (v7 && ([v7 isEqualToString:v5] & 1) == 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = [(SUICAssistantVoiceSettingsConnection *)self _regionForLanguageIdentifier:v4];
  }

  v9 = v8;

  return v9;
}

+ (id)assistantLanguageTitlesDictionary
{
  v3 = AFPreferencesSupportedLanguages();
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  v5 = [a1 titlesForLanguageIdentifiers:v4];

  return v5;
}

+ (id)titlesForLanguageIdentifiers:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 0x1E695D000uLL;
  v6 = MEMORY[0x1E695DF58];
  v7 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v8 = [v6 localeWithLocaleIdentifier:v7];

  v54 = [MEMORY[0x1E696AB50] set];
  v53 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v43 = a1;
  v52 = v8;
  v48 = [a1 shortTitlesForLanguageIdentifiers:v4 deviceLanguageLocale:v8];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v64;
    v12 = *MEMORY[0x1E695D9B0];
    v55 = *MEMORY[0x1E695D978];
    v13 = @"zh";
    v50 = *MEMORY[0x1E695D9B0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v63 + 1) + 8 * i);
        v16 = [*(v5 + 3928) componentsFromLocaleIdentifier:v15];
        v17 = [v16 objectForKey:v12];
        if ([(__CFString *)v17 isEqualToString:v13])
        {
          v18 = v11;
          v19 = v13;
          v20 = v5;
          v21 = [v16 objectForKey:v55];
          v22 = [v21 isEqualToString:@"HK"];

          if (v22)
          {

            v17 = @"yue";
          }

          v5 = v20;
          v13 = v19;
          v11 = v18;
          v12 = v50;
        }

        [v53 setObject:v16 forKey:v15];
        [v54 addObject:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v10);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v44 = obj;
  v23 = v43;
  v49 = [v44 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v49)
  {
    v47 = *v60;
    v51 = *MEMORY[0x1E695D9B0];
    v46 = *MEMORY[0x1E695D978];
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v25 = *(*(&v59 + 1) + 8 * j);
        v26 = [v53 objectForKey:v25];
        v27 = [v26 objectForKey:v51];
        v28 = [v26 objectForKey:v46];
        obja = [v48 objectForKey:v25];
        v56 = [v52 displayNameForKey:v46 value:v28];
        if ([v27 isEqualToString:@"zh"])
        {
          if ([v28 isEqualToString:@"HK"])
          {
            v29 = [v52 displayNameForKey:v51 value:@"yue"];
          }

          else
          {
            v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v29 = [v32 localizedStringForKey:@"MANDARIN_SPOKEN_DIALECT" value:&stru_1F43BC8C0 table:0];
          }
        }

        else if ([v27 isEqualToString:@"yue"] && objc_msgSend(v28, "isEqualToString:", @"CN"))
        {
          v29 = [v52 displayNameForKey:v51 value:@"yue"];
          v30 = [v52 displayNameForKey:v51 value:@"zh"];
          v31 = [v23 capitalizeFirstPartOfCountry:v30];

          obja = v31;
        }

        else
        {
          v29 = 0;
        }

        if ([v54 countForObject:v27] < 2)
        {
          if ([v27 isEqualToString:@"pt"])
          {
            v38 = v56;

            v29 = v38;
          }

          if (!v29)
          {
            v37 = obja;
            if (!v37)
            {
              goto LABEL_38;
            }

LABEL_37:
            [v45 setValue:v37 forKey:v25];
            goto LABEL_38;
          }

          v39 = MEMORY[0x1E696AEC0];
          v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v40 = [v35 localizedStringForKey:@"LANGUAGE_WITH_REGION" value:&stru_1F43BC8C0 table:0];
          v37 = [v39 stringWithFormat:v40, obja, v29];

          v23 = v43;
          goto LABEL_32;
        }

        v33 = MEMORY[0x1E696AEC0];
        v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v35 = v34;
        if (v29)
        {
          v36 = [v34 localizedStringForKey:@"LANGUAGE_WITH_REGION_AND_DIALECT" value:&stru_1F43BC8C0 table:0];
          v37 = [v33 stringWithFormat:v36, obja, v29, v56];

LABEL_32:
          if (v37)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        v41 = [v34 localizedStringForKey:@"LANGUAGE_WITH_REGION" value:&stru_1F43BC8C0 table:0];
        v37 = [v33 stringWithFormat:v41, obja, v56];

        if (v37)
        {
          goto LABEL_37;
        }

LABEL_38:
      }

      v49 = [v44 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v49);
  }

  return v45;
}

+ (id)shortTitlesForLanguageIdentifiers:(id)a3 deviceLanguageLocale:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = *MEMORY[0x1E695D9B0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v12];
        v14 = [v13 objectForKey:v10];
        v15 = [v6 displayNameForKey:v10 value:v14];
        v16 = [a1 capitalizeFirstPartOfCountry:v15];
        if (v16)
        {
          [v19 setValue:v16 forKey:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return v19;
}

+ (id)capitalizeFirstPartOfCountry:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"(");
    v5 = [v3 componentsSeparatedByCharactersInSet:v4];

    v6 = [v5 objectAtIndex:0];
    v7 = [v6 capitalizedString];

    v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v7];
    if ([v5 count] >= 2)
    {
      v9 = 1;
      do
      {
        -[__CFString appendString:](v8, "appendString:", @"(");
        v10 = [v5 objectAtIndex:v9];
        [(__CFString *)v8 appendString:v10];

        ++v9;
      }

      while ([v5 count] > v9);
    }
  }

  else
  {
    v8 = &stru_1F43BC8C0;
  }

  return v8;
}

@end