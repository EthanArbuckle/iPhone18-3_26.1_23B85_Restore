@interface TIInputModeController
+ (id)_inputModesForLocale:(id)locale language:(id)language modeFetcher:(id)fetcher;
+ (id)sharedInputModeController;
- (BOOL)identifierIsValidSystemInputMode:(id)mode;
- (NSArray)enabledInputModeIdentifiers;
- (NSArray)supportedInputModeIdentifiers;
- (NSArray)supportedInputModeLanguageAndRegions;
- (id)_archivedInputModeConfigurationFrom:(id)from;
- (id)_inputModeConfiguration;
- (id)_inputModesFromInputModeConfiguration:(id)configuration;
- (id)archivedInputModeConfiguration;
- (id)defaultEnabledInputModesForCurrentLocale;
- (id)inputModesFromArchivedInputModeConfiguration:(id)configuration;
- (id)suggestedDictationLanguageForDeviceLanguage;
- (id)transformedInputModesFromInputModes:(id)modes sourcePlatform:(id)platform targetPlatform:(id)targetPlatform preferredLanguages:(id)languages preferredLocale:(id)locale;
@end

@implementation TIInputModeController

+ (id)sharedInputModeController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__TIInputModeController_sharedInputModeController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInputModeController_createSharedInputModeControllerOnce != -1)
  {
    dispatch_once(&sharedInputModeController_createSharedInputModeControllerOnce, block);
  }

  v2 = sharedInputModeController_sharedInputModeController;

  return v2;
}

uint64_t __50__TIInputModeController_sharedInputModeController__block_invoke()
{
  sharedInputModeController_sharedInputModeController = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)supportedInputModeIdentifiers
{
  supportedInputModeIdentifiers = self->_supportedInputModeIdentifiers;
  if (!supportedInputModeIdentifiers)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"ain", @"ak", @"am", @"apw", @"ar", @"ars", @"as", @"az_Latn", @"be", @"bg_BG", @"bn-Translit", @"bn", @"bo", @"brx", @"ca_ES", @"cho", @"chr", @"cic", @"ckb", @"cs_CZ", @"cst", @"cv", @"cy_GB", @"da_DK", @"de_AT", @"de_CH", @"de_DE", @"doi_Deva", @"dv", @"dz", @"el_GR", @"emoji", @"en_AU", @"en_CA", @"en_GB", @"en_JP", @"en_IN", @"en_NZ", @"en_SG", @"en_US", @"en_ZA", @"es_ES", @"es_MX", @"es_419", @"et_EE", @"fa", @"fa_AF", @"ff_Adlm", @"fi_FI", @"fo", @"fr_FR", @"fr_BE", @"fr_CA", @"fr_CH", @"ga_IE", @"gu-Translit", @"gu", @"ha", @"haw", @"hch", @"he_IL"}];
    v5 = self->_supportedInputModeIdentifiers;
    self->_supportedInputModeIdentifiers = v4;

    supportedInputModeIdentifiers = self->_supportedInputModeIdentifiers;
  }

  v6 = supportedInputModeIdentifiers;
  v7 = +[TIPreferencesController sharedPreferencesController];
  v8 = [v7 BOOLForKey:2];

  if (v8)
  {
    v9 = [(NSArray *)v6 arrayByAddingObject:@"intl"];

    v6 = v9;
  }

  if (_os_feature_enabled_impl())
  {
    v10 = [(NSArray *)v6 arrayByAddingObjectsFromArray:&unk_1EF7CB2A8];

    v6 = v10;
  }

  if (_os_feature_enabled_impl())
  {
    v11 = [(NSArray *)v6 arrayByAddingObjectsFromArray:&unk_1EF7CB2C0];

    v6 = v11;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [(NSArray *)v6 arrayByAddingObjectsFromArray:&unk_1EF7CB2D8];

    v6 = v12;
  }

  if (_os_feature_enabled_impl())
  {
    v13 = [(NSArray *)v6 arrayByAddingObject:@"th_TH-24Key"];

    v6 = v13;
  }

  return v6;
}

- (NSArray)supportedInputModeLanguageAndRegions
{
  supportedInputModeLanguageAndRegions = self->_supportedInputModeLanguageAndRegions;
  if (!supportedInputModeLanguageAndRegions)
  {
    array = [MEMORY[0x1E695DF70] array];
    supportedInputModeIdentifiers = [(TIInputModeController *)self supportedInputModeIdentifiers];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__TIInputModeController_supportedInputModeLanguageAndRegions__block_invoke;
    v14[3] = &unk_1E6F4C340;
    v6 = array;
    v15 = v6;
    [supportedInputModeIdentifiers enumerateObjectsUsingBlock:v14];

    v7 = self->_supportedInputModeLanguageAndRegions;
    self->_supportedInputModeLanguageAndRegions = v6;
    v8 = v6;

    supportedInputModeLanguageAndRegions = self->_supportedInputModeLanguageAndRegions;
  }

  v9 = supportedInputModeLanguageAndRegions;
  v10 = +[TIPreferencesController sharedPreferencesController];
  v11 = [v10 BOOLForKey:2];

  if (v11)
  {
    v12 = [(NSArray *)self->_supportedInputModeLanguageAndRegions arrayByAddingObject:@"intl"];

    v9 = v12;
  }

  return v9;
}

void __61__TIInputModeController_supportedInputModeLanguageAndRegions__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isEqualToString:@"intl"] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = TIInputModeGetLanguageWithRegion(v5);
    [v3 addObject:v4];
  }
}

- (NSArray)enabledInputModeIdentifiers
{
  v29 = *MEMORY[0x1E69E9840];
  inputModesForTesting = [(TIInputModeController *)self inputModesForTesting];
  v4 = [inputModesForTesting count];

  if (v4)
  {
    inputModesForTesting2 = [(TIInputModeController *)self inputModesForTesting];
    goto LABEL_25;
  }

  v6 = +[TIPreferencesController sharedPreferencesController];
  v7 = [v6 BOOLForKey:1];

  if (v7)
  {
    v8 = +[TIPreferencesController sharedPreferencesController];
    defaultEnabledInputModesForCurrentLocale2 = [v8 valueForKey:0];

    enabledInputModes = [(TIInputModeController *)self enabledInputModes];
    if ([enabledInputModes count])
    {
      enabledInputModes2 = [(TIInputModeController *)self enabledInputModes];
      v12 = [enabledInputModes2 isEqualToArray:defaultEnabledInputModesForCurrentLocale2];

      if (v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = defaultEnabledInputModesForCurrentLocale2;
    v14 = defaultEnabledInputModesForCurrentLocale2;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          if ([v19 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = TICanonicalInputModeName(v19);

            v19 = v20;
          }

          if (([array containsObject:v19] & 1) == 0)
          {
            [array addObject:v19];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    if ([array count])
    {
      [(TIInputModeController *)self setEnabledInputModes:array];
    }

    else
    {
      defaultEnabledInputModesForCurrentLocale = [(TIInputModeController *)self defaultEnabledInputModesForCurrentLocale];
      [(TIInputModeController *)self setEnabledInputModes:defaultEnabledInputModesForCurrentLocale];
    }

    defaultEnabledInputModesForCurrentLocale2 = v23;
    goto LABEL_24;
  }

  defaultEnabledInputModesForCurrentLocale2 = [(TIInputModeController *)self defaultEnabledInputModesForCurrentLocale];
  [(TIInputModeController *)self setEnabledInputModes:defaultEnabledInputModesForCurrentLocale2];
LABEL_24:

  inputModesForTesting2 = [(TIInputModeController *)self enabledInputModes];
LABEL_25:

  return inputModesForTesting2;
}

- (id)defaultEnabledInputModesForCurrentLocale
{
  v26 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  defaultInputModes = [(TIInputModeController *)self defaultInputModes];
  if ([defaultInputModes count])
  {
    currentLocale2 = [(TIInputModeController *)self currentLocale];
    if ([currentLocale2 isEqualToString:localeIdentifier])
    {
      preferredLanguages2 = [(TIInputModeController *)self preferredLanguages];
      v9 = [preferredLanguages2 isEqualToArray:preferredLanguages];

      if (v9)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  [(TIInputModeController *)self setCurrentLocale:localeIdentifier];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = preferredLanguages;
  v11 = preferredLanguages;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [TIInputModeController _inputModesForLocale:localeIdentifier language:*(*(&v21 + 1) + 8 * i) modeFetcher:&__block_literal_global_85_2416];
        [orderedSet addObjectsFromArray:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [orderedSet addObject:@"emoji"];
  array = [orderedSet array];
  [(TIInputModeController *)self setDefaultInputModes:array];

  preferredLanguages = v20;
LABEL_15:
  defaultInputModes2 = [(TIInputModeController *)self defaultInputModes];

  return defaultInputModes2;
}

- (id)_inputModesFromInputModeConfiguration:(id)configuration
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  configurationCopy = configuration;
  v4 = [configurationCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = *v21;
  do
  {
    v7 = 0;
    do
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(configurationCopy);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"version"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v9 integerValue] != 1)
        {
          goto LABEL_20;
        }

        v10 = [v8 objectForKeyedSubscript:@"platform"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v10 length])
        {
          goto LABEL_19;
        }

        v11 = [v8 objectForKeyedSubscript:@"inputModes"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 count])
        {

LABEL_19:
LABEL_20:

          goto LABEL_21;
        }

        v12 = [v8 objectForKeyedSubscript:@"preferredLanguages"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 count])
        {
          v13 = [v8 objectForKeyedSubscript:@"preferredLocale"];
          objc_opt_class();
          v19 = v13;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 length])
          {
            v18 = [(TIInputModeController *)self transformedInputModesFromInputModes:v11 sourcePlatform:v10 targetPlatform:@"iOS" preferredLanguages:v12 preferredLocale:v13];
            v14 = 0;
          }

          else
          {
            v14 = 1;
          }
        }

        else
        {
          v14 = 1;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_21:
      ++v7;
    }

    while (v5 != v7);
    v15 = [configurationCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    v5 = v15;
  }

  while (v15);
LABEL_29:
  v18 = 0;
LABEL_30:

  return v18;
}

- (id)transformedInputModesFromInputModes:(id)modes sourcePlatform:(id)platform targetPlatform:(id)targetPlatform preferredLanguages:(id)languages preferredLocale:(id)locale
{
  v68 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  platformCopy = platform;
  languagesCopy = languages;
  if (![platformCopy isEqualToString:targetPlatform] && (objc_msgSend(platformCopy, "isEqualToString:", @"iOS") & 1) == 0 && objc_msgSend(platformCopy, "isEqualToString:", @"macOS"))
  {
    v43 = platformCopy;
    array = [MEMORY[0x1E695DF70] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = modesCopy;
    v13 = modesCopy;
    v14 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (!v14)
    {
      goto LABEL_39;
    }

    v15 = v14;
    v16 = *v61;
    v45 = v13;
    v46 = array;
    v47 = *v61;
    while (1)
    {
      v17 = 0;
      v49 = v15;
      do
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v60 + 1) + 8 * v17);
        v19 = TIGetMacInputSourcesMap();
        v20 = [v19 objectForKey:v18];

        if (!v20)
        {
          if (![v18 hasPrefix:@"com.apple.keylayout."])
          {
            v20 = 0;
            goto LABEL_35;
          }

          v21 = [v18 substringFromIndex:{objc_msgSend(@"com.apple.keylayout.", "length")}];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v22 = languagesCopy;
          v23 = [v22 countByEnumeratingWithState:&v56 objects:v66 count:16];
          if (v23)
          {
            v24 = v23;
            obj = v22;
            v20 = 0;
            v25 = *v57;
LABEL_13:
            v26 = 0;
            v27 = v20;
            while (1)
            {
              if (*v57 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v56 + 1) + 8 * v26);
              v29 = MEMORY[0x1E695DF58];
              supportedInputModeLanguageAndRegions = [(TIInputModeController *)self supportedInputModeLanguageAndRegions];
              v65 = v28;
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
              v32 = [v29 mostPreferredLanguageOf:supportedInputModeLanguageAndRegions withPreferredLanguages:v31 forUsage:2 options:0];

              v20 = GetInputModeWithHardwareLayoutIfSupported(v32, v21);

              v33 = [v20 length];
              if (v33)
              {
                break;
              }

              ++v26;
              v27 = v20;
              if (v24 == v26)
              {
                v24 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
                if (v24)
                {
                  goto LABEL_13;
                }

                break;
              }
            }

            v13 = v45;
            array = v46;
            if (!v20)
            {
LABEL_23:
              supportedInputModeLanguageAndRegions2 = [(TIInputModeController *)self supportedInputModeLanguageAndRegions];
              v35 = [&unk_1EF7CB2F0 arrayByAddingObjectsFromArray:supportedInputModeLanguageAndRegions2];

              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v36 = v35;
              v37 = [v36 countByEnumeratingWithState:&v52 objects:v64 count:16];
              if (v37)
              {
                v38 = v37;
                v20 = 0;
                v39 = *v53;
LABEL_25:
                v40 = 0;
                v41 = v20;
                while (1)
                {
                  if (*v53 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v20 = GetInputModeWithHardwareLayoutIfSupported(*(*(&v52 + 1) + 8 * v40), v21);

                  if ([v20 length])
                  {
                    break;
                  }

                  ++v40;
                  v41 = v20;
                  if (v38 == v40)
                  {
                    v38 = [v36 countByEnumeratingWithState:&v52 objects:v64 count:16];
                    if (v38)
                    {
                      goto LABEL_25;
                    }

                    break;
                  }
                }
              }

              else
              {
                v20 = 0;
              }
            }

            v16 = v47;
            v15 = v49;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

LABEL_35:
        if ([v20 length])
        {
          [array addObject:v20];
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
      if (!v15)
      {
LABEL_39:

        platformCopy = v43;
        modesCopy = v44;
        goto LABEL_41;
      }
    }
  }

  array = modesCopy;
LABEL_41:

  return array;
}

- (id)_inputModeConfiguration
{
  v12[1] = *MEMORY[0x1E69E9840];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];

  if ([preferredLanguages count] && objc_msgSend(localeIdentifier, "length"))
  {
    v5 = +[TIPreferencesController sharedPreferencesController];
    inputModeSelectionSequence = [v5 inputModeSelectionSequence];

    if ([inputModeSelectionSequence count])
    {
      v10[0] = @"version";
      v10[1] = @"platform";
      v11[0] = &unk_1EF7DC2A8;
      v11[1] = @"iOS";
      v10[2] = @"inputModes";
      v10[3] = @"preferredLanguages";
      v11[2] = inputModeSelectionSequence;
      v11[3] = preferredLanguages;
      v10[4] = @"preferredLocale";
      v11[4] = localeIdentifier;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];
      v12[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)inputModesFromArchivedInputModeConfiguration:(id)configuration
{
  v4 = MEMORY[0x1E696ACD0];
  v5 = MEMORY[0x1E695DFD8];
  configurationCopy = configuration;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v15 = 0;
  v11 = [v4 unarchivedObjectOfClasses:v10 fromData:configurationCopy error:&v15];

  v12 = v15;
  if (v11)
  {
    v13 = [(TIInputModeController *)self _inputModesFromInputModeConfiguration:v11];
  }

  else
  {
    NSLog(&cfstr_S_1.isa, "[TIInputModeController inputModesFromArchivedInputModeConfiguration:]", v12);
    v13 = 0;
  }

  return v13;
}

- (id)_archivedInputModeConfigurationFrom:(id)from
{
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:from requiringSecureCoding:1 error:&v7];
  v4 = v7;
  v5 = v4;
  if (!v3)
  {
    NSLog(&cfstr_S_1.isa, "[TIInputModeController _archivedInputModeConfigurationFrom:]", v4);
  }

  return v3;
}

- (id)archivedInputModeConfiguration
{
  _inputModeConfiguration = [(TIInputModeController *)self _inputModeConfiguration];
  v4 = [(TIInputModeController *)self _archivedInputModeConfigurationFrom:_inputModeConfiguration];

  return v4;
}

- (id)suggestedDictationLanguageForDeviceLanguage
{
  v2 = TIGetSuggestedDictationLanguagesForDeviceLanguage();
  firstObject = [v2 firstObject];

  return firstObject;
}

- (BOOL)identifierIsValidSystemInputMode:(id)mode
{
  v4 = TIInputModeGetNormalizedIdentifier(mode);
  if ([v4 isEqualToString:@"dictation"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"intl") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"intl_HWR"))
  {
    v5 = 1;
  }

  else if ([v4 length])
  {
    supportedInputModeIdentifiers = [(TIInputModeController *)self supportedInputModeIdentifiers];
    supportedInputModeLanguageAndRegions = [(TIInputModeController *)self supportedInputModeLanguageAndRegions];
    if ([supportedInputModeIdentifiers containsObject:v4])
    {
      v5 = 1;
    }

    else
    {
      v5 = [supportedInputModeLanguageAndRegions containsObject:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_inputModesForLocale:(id)locale language:(id)language modeFetcher:(id)fetcher
{
  localeCopy = locale;
  languageCopy = language;
  fetcherCopy = fetcher;
  v10 = fetcherCopy;
  v11 = MEMORY[0x1E695E0F0];
  if (!localeCopy || !fetcherCopy)
  {
    goto LABEL_42;
  }

  v12 = [localeCopy rangeOfString:@"@"];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [localeCopy substringToIndex:v12];

    localeCopy = v13;
  }

  if ([languageCopy hasPrefix:@"zh-"] && ((objc_msgSend(localeCopy, "hasPrefix:", @"zh-") & 1) != 0 || objc_msgSend(localeCopy, "hasPrefix:", @"zh_")))
  {
    if (![languageCopy isEqualToString:@"zh-Hant"] || (objc_msgSend(localeCopy, "hasSuffix:", @"TW") & 1) == 0 && (objc_msgSend(localeCopy, "hasSuffix:", @"HK") & 1) == 0 && (objc_msgSend(localeCopy, "hasSuffix:", @"MO") & 1) == 0)
    {
      if (![languageCopy isEqualToString:@"zh-Hans"])
      {
        v14 = 0;
        goto LABEL_25;
      }

      if (([localeCopy hasSuffix:@"CN"] & 1) == 0)
      {
        v14 = [localeCopy hasSuffix:@"SG"];
        goto LABEL_25;
      }
    }

    v14 = 1;
LABEL_25:
    [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:localeCopy];
    localeCopy = v15 = localeCopy;
LABEL_26:

    goto LABEL_27;
  }

  if (languageCopy)
  {
    if (_inputModesForLocale_language_modeFetcher__once != -1)
    {
      dispatch_once(&_inputModesForLocale_language_modeFetcher__once, &__block_literal_global_2430);
    }

    v15 = TIInputModeGetComponentsFromIdentifier(languageCopy);
    v16 = TIInputModeGetComponentsFromIdentifier(localeCopy);
    v17 = *MEMORY[0x1E695D9B0];
    v18 = [v15 objectForKey:*MEMORY[0x1E695D9B0]];
    v19 = [v16 objectForKey:v17];
    if ([v18 isEqualToString:v19])
    {
      v20 = _inputModesForLocale_language_modeFetcher__exceptionListToUseLanguageCode;
      v21 = [languageCopy stringByAppendingString:@"/"];
      v22 = [v21 stringByAppendingString:localeCopy];
      v14 = [v20 containsObject:v22] ^ 1;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_26;
  }

  v14 = 1;
LABEL_27:
  v23 = (v10)[2](v10, localeCopy);
  v11 = v23;
  if (!v14 || ![v23 count])
  {
    v24 = (v10)[2](v10, languageCopy);
    if (![v24 count])
    {
      v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v26 = MEMORY[0x1E695DF58];
      preferredLocalizations = [v25 preferredLocalizations];
      v28 = [preferredLocalizations objectAtIndex:0];
      v29 = [v26 canonicalLanguageIdentifierFromString:v28];
      v30 = (v10)[2](v10, v29);

      v24 = v30;
    }

    if ([v11 count])
    {
      if (![v24 count])
      {
LABEL_39:

        goto LABEL_40;
      }

      v31 = [MEMORY[0x1E695DF70] arrayWithArray:v24];
      v32 = [v31 objectAtIndex:0];
      v33 = [v32 substringToIndex:2];

      if (([v33 isEqualToString:@"en"] & 1) == 0 && (objc_msgSend(v33, "isEqualToString:", @"pt") & 1) == 0)
      {

        v33 = 0;
      }

      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __67__TIInputModeController__inputModesForLocale_language_modeFetcher___block_invoke_2;
      v41 = &unk_1E6F4BF48;
      v42 = v33;
      v34 = v31;
      v43 = v34;
      v35 = v33;
      [v11 enumerateObjectsUsingBlock:&v38];
      v36 = v34;
    }

    else
    {
      v36 = v24;
    }

    v11 = v36;
    goto LABEL_39;
  }

LABEL_40:
  if (![v11 count])
  {

    v11 = &unk_1EF7CB290;
  }

LABEL_42:

  return v11;
}

uint64_t __67__TIInputModeController__inputModesForLocale_language_modeFetcher___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v7 = v3;
  if (!*(a1 + 32) || (v5 = [v3 hasPrefix:?], v4 = v7, (v5 & 1) == 0))
  {
    if (([*(a1 + 40) containsObject:v4] & 1) == 0)
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __67__TIInputModeController__inputModesForLocale_language_modeFetcher___block_invoke()
{
  _inputModesForLocale_language_modeFetcher__exceptionListToUseLanguageCode = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"en-GB/en_US", @"pt-PT/pt_BR", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end