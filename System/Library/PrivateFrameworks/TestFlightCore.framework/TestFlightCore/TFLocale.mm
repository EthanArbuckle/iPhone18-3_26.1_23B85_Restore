@interface TFLocale
+ (id)preferredLocaleKeyFromAvailableKeys:(id)a3 primaryLocaleKey:(id)a4;
+ (id)preferredLocalizedDisplayNameFromDisplayNames:(id)a3;
@end

@implementation TFLocale

+ (id)preferredLocaleKeyFromAvailableKeys:(id)a3 primaryLocaleKey:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v7 localeIdentifier];
    if ([v5 containsObject:v8])
    {
      v9 = v8;
    }

    else
    {
      v21 = v8;
      v23 = v6;
      v10 = [v5 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
      v22 = v7;
      v11 = [v7 languageCode];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v18 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v17];
            v19 = [v18 languageCode];

            if ([v19 isEqualToString:v11])
            {
              v9 = v17;

              v7 = v22;
              v6 = v23;
              goto LABEL_18;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v6 = v23;
      if (v23 && [v5 containsObject:v23])
      {
        v9 = v23;
        v7 = v22;
      }

      else
      {
        v9 = @"en_US";
        v7 = v22;
        if (([v5 containsObject:@"en_US"] & 1) == 0)
        {
          v9 = [v12 firstObject];
        }
      }

LABEL_18:

      v8 = v21;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)preferredLocalizedDisplayNameFromDisplayNames:(id)a3
{
  v3 = a3;
  v4 = [v3 localizedNames];
  v5 = [v4 allKeys];

  v6 = [v3 primaryLocale];
  v7 = [TFLocale preferredLocaleKeyFromAvailableKeys:v5 primaryLocaleKey:v6];

  v8 = [v3 localizedNames];

  v9 = [v8 objectForKeyedSubscript:v7];

  return v9;
}

@end