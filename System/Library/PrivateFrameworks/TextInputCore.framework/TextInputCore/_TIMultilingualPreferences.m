@interface _TIMultilingualPreferences
+ (id)inputModesForIdentifiers:(id)a3;
- (NSArray)preferredAdditionalInputModes;
- (NSArray)userEnabledInputModes;
- (NSArray)userPreferredLanguages;
- (TIInputMode)preferredSecondaryInputMode;
@end

@implementation _TIMultilingualPreferences

- (NSArray)userPreferredLanguages
{
  v2 = MEMORY[0x277CBEAF8];
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [v2 languagesByAddingRelatedLanguagesToLanguages:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (NSArray)userEnabledInputModes
{
  v2 = [MEMORY[0x277D6F380] sharedInputModeController];
  v3 = [v2 enabledInputModeIdentifiers];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [_TIMultilingualPreferences inputModesForIdentifiers:v4];

  return v5;
}

- (NSArray)preferredAdditionalInputModes
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [v3 valueForPreferenceKey:*MEMORY[0x277D6F798]];
  v5 = [v4 stringValue];

  v6 = [v5 componentsSeparatedByString:{@", "}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
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

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v11 && ([*(*(&v15 + 1) + 8 * i) isEqualToString:@"auto"] & 1) == 0)
        {
          v12 = [TIInputMode inputModeWithIdentifier:v11];
          [v2 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

- (TIInputMode)preferredSecondaryInputMode
{
  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:*MEMORY[0x277D6F930]];
  v4 = [v3 stringValue];

  if (v4 && ([v4 isEqualToString:@"auto"] & 1) == 0)
  {
    v5 = [TIInputMode inputModeWithIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)inputModesForIdentifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [TIInputMode inputModeWithIdentifier:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end