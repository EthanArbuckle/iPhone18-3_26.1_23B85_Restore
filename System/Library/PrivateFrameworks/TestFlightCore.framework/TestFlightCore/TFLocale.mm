@interface TFLocale
+ (id)preferredLocaleKeyFromAvailableKeys:(id)keys primaryLocaleKey:(id)key;
+ (id)preferredLocalizedDisplayNameFromDisplayNames:(id)names;
@end

@implementation TFLocale

+ (id)preferredLocaleKeyFromAvailableKeys:(id)keys primaryLocaleKey:(id)key
{
  v29 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  keyCopy = key;
  if (keysCopy && [keysCopy count])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    if ([keysCopy containsObject:localeIdentifier])
    {
      firstObject = localeIdentifier;
    }

    else
    {
      v21 = localeIdentifier;
      v23 = keyCopy;
      v10 = [keysCopy sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
      v22 = currentLocale;
      languageCode = [currentLocale languageCode];
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
            languageCode2 = [v18 languageCode];

            if ([languageCode2 isEqualToString:languageCode])
            {
              firstObject = v17;

              currentLocale = v22;
              keyCopy = v23;
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

      keyCopy = v23;
      if (v23 && [keysCopy containsObject:v23])
      {
        firstObject = v23;
        currentLocale = v22;
      }

      else
      {
        firstObject = @"en_US";
        currentLocale = v22;
        if (([keysCopy containsObject:@"en_US"] & 1) == 0)
        {
          firstObject = [v12 firstObject];
        }
      }

LABEL_18:

      localeIdentifier = v21;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)preferredLocalizedDisplayNameFromDisplayNames:(id)names
{
  namesCopy = names;
  localizedNames = [namesCopy localizedNames];
  allKeys = [localizedNames allKeys];

  primaryLocale = [namesCopy primaryLocale];
  v7 = [TFLocale preferredLocaleKeyFromAvailableKeys:allKeys primaryLocaleKey:primaryLocale];

  localizedNames2 = [namesCopy localizedNames];

  v9 = [localizedNames2 objectForKeyedSubscript:v7];

  return v9;
}

@end