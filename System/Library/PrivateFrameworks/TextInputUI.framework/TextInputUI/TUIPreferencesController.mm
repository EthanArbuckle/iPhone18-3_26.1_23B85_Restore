@interface TUIPreferencesController
+ (id)sharedPreferencesController;
- (id)suggestedDictationModesForKeyboardLanguages:(id)languages;
@end

@implementation TUIPreferencesController

- (id)suggestedDictationModesForKeyboardLanguages:(id)languages
{
  v92 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  array = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DFA8] set];
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v56 = [mEMORY[0x1E69DCBF0] updateEnabledDictationLanguages:0];

  mEMORY[0x1E69D95B8] = [MEMORY[0x1E69D95B8] sharedInputModeController];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = languagesCopy;
  v60 = mEMORY[0x1E69D95B8];
  v63 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v63)
  {
    v59 = *v79;
    do
    {
      for (i = 0; i != v63; i = i + 1)
      {
        if (*v79 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v78 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [mEMORY[0x1E69D95B8] defaultDictationLanguagesForKeyboardLanguage:v10];
        }

        else
        {
          v11 = 0;
        }

        if ([v11 count])
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v74 objects:v90 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v75;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v75 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [v4 setObject:v10 forKey:*(*(&v74 + 1) + 8 * j)];
              }

              v14 = [v12 countByEnumeratingWithState:&v74 objects:v90 count:16];
            }

            while (v14);
          }

          [orderedSet addObjectsFromArray:v12];
        }

        else
        {
          [orderedSet addObject:v10];
        }

        if ([v11 count])
        {
          v17 = v11;
        }

        else
        {
          v89 = v10;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v70 objects:v88 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v71;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v71 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = MEMORY[0x193AE8240](*(*(&v70 + 1) + 8 * k));
              if ([array containsObject:v23])
              {
                v24 = v6;
              }

              else
              {
                v24 = array;
              }

              [v24 addObject:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v70 objects:v88 count:16];
          }

          while (v20);
        }

        mEMORY[0x1E69D95B8] = v60;
      }

      v63 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v63);
  }

  [orderedSet array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v62 = v69 = 0u;
  v25 = [v62 countByEnumeratingWithState:&v66 objects:v87 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v67;
    v54 = *v67;
    do
    {
      v28 = 0;
      v55 = v26;
      do
      {
        if (*v67 != v27)
        {
          objc_enumerationMutation(v62);
        }

        v29 = *(*(&v66 + 1) + 8 * v28);
        v83 = 0;
        v84 = &v83;
        v85 = 0x2050000000;
        v30 = getAFDictationConnectionClass_softClass;
        v86 = getAFDictationConnectionClass_softClass;
        if (!getAFDictationConnectionClass_softClass)
        {
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __getAFDictationConnectionClass_block_invoke;
          v82[3] = &unk_1E72D8058;
          v82[4] = &v83;
          __getAFDictationConnectionClass_block_invoke(v82);
          v30 = v84[3];
        }

        v31 = v30;
        _Block_object_dispose(&v83, 8);
        v65 = 0;
        v32 = [v30 dictationIsSupportedForLanguageCode:v29 error:&v65];
        v33 = v65;
        if (v32)
        {
          v64 = v33;
          v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v35 = [v34 localizedStringForKey:v29 value:&stru_1F03BA8F8 table:@"Dictation"];

          if ([v35 length])
          {
            v36 = [v4 objectForKey:v29];
            v37 = v36;
            if (!v36)
            {
              v36 = v29;
            }

            v38 = MEMORY[0x193AE8240](v36);
            if ([v6 containsObject:v38])
            {

              goto LABEL_48;
            }

            v39 = MEMORY[0x193AE8240](v29);
            v40 = [v6 containsObject:v39];

            if (v40)
            {
LABEL_48:
              v41 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v29];
              countryCode = [v41 countryCode];

              if ([countryCode length])
              {
                v43 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
                v44 = [v29 stringByAppendingString:@"_long"];
                v53 = [v43 localizedStringForKey:v44 value:&stru_1F03BA8F8 table:@"Dictation"];

                v45 = MEMORY[0x1E696AEC0];
                currentLocale = [MEMORY[0x1E695DF58] currentLocale];
                v47 = [currentLocale localizedStringForCountryCode:countryCode];
                v52 = [v45 localizedStringWithFormat:v53, v47];

                v35 = v52;
              }

              v27 = v54;
            }

            else
            {
              v27 = v54;
            }

            v26 = v55;
          }

          if (![v35 length] || objc_msgSend(v35, "hasPrefix:", v29))
          {
            v48 = TUIKeyboardDisplayNameFromIdentifierForContext(v29, 3);

            v35 = v48;
          }

          v49 = objc_alloc_init(TUISuggestedInputMode);
          [(TUISuggestedInputMode *)v49 setDisplayName:v35];
          [(TUISuggestedInputMode *)v49 setIdentifier:v29];
          v50 = [v56 objectForKey:v29];
          -[TUISuggestedInputMode setEnabled:](v49, "setEnabled:", [v50 BOOLValue]);

          [v57 addObject:v49];
          v33 = v64;
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = [v62 countByEnumeratingWithState:&v66 objects:v87 count:16];
    }

    while (v26);
  }

  return v57;
}

+ (id)sharedPreferencesController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__TUIPreferencesController_sharedPreferencesController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPreferencesController_token != -1)
  {
    dispatch_once(&sharedPreferencesController_token, block);
  }

  v2 = sharedPreferencesController_sharedPreferencesController;

  return v2;
}

uint64_t __55__TUIPreferencesController_sharedPreferencesController__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedPreferencesController_sharedPreferencesController;
  sharedPreferencesController_sharedPreferencesController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end