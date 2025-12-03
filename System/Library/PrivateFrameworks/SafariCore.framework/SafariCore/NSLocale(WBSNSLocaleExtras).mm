@interface NSLocale(WBSNSLocaleExtras)
+ (id)safari_localeIdentifiersForMostWidelyUsedLanguages;
- (__CFString)safari_localeStringInOfflineSearchModelFormat;
- (__CFString)safari_localeStringInWebExtensionFormat;
@end

@implementation NSLocale(WBSNSLocaleExtras)

- (__CFString)safari_localeStringInOfflineSearchModelFormat
{
  languageCode = [self languageCode];

  if (languageCode)
  {
    countryCode = [self countryCode];
    v4 = [countryCode length];

    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      languageCode2 = [self languageCode];
      countryCode2 = [self countryCode];
      lowercaseString = [countryCode2 lowercaseString];
      languageCode3 = [v5 stringWithFormat:@"%@-%@", languageCode2, lowercaseString];
    }

    else
    {
      languageCode3 = [self languageCode];
    }
  }

  else
  {
    languageCode3 = &stru_1F3064D08;
  }

  return languageCode3;
}

+ (id)safari_localeIdentifiersForMostWidelyUsedLanguages
{
  if (safari_localeIdentifiersForMostWidelyUsedLanguages_onceToken != -1)
  {
    +[NSLocale(WBSNSLocaleExtras) safari_localeIdentifiersForMostWidelyUsedLanguages];
  }

  v1 = safari_localeIdentifiersForMostWidelyUsedLanguages_identifiers;

  return v1;
}

- (__CFString)safari_localeStringInWebExtensionFormat
{
  languageCode = [self languageCode];

  if (languageCode)
  {
    countryCode = [self countryCode];
    v4 = [countryCode length];

    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      languageCode2 = [self languageCode];
      countryCode2 = [self countryCode];
      languageCode3 = [v5 stringWithFormat:@"%@-%@", languageCode2, countryCode2];
    }

    else
    {
      languageCode3 = [self languageCode];
    }
  }

  else
  {
    languageCode3 = &stru_1F3064D08;
  }

  return languageCode3;
}

@end