@interface NSLocale(WBSNSLocaleExtras)
+ (id)safari_localeIdentifiersForMostWidelyUsedLanguages;
- (__CFString)safari_localeStringInOfflineSearchModelFormat;
- (__CFString)safari_localeStringInWebExtensionFormat;
@end

@implementation NSLocale(WBSNSLocaleExtras)

- (__CFString)safari_localeStringInOfflineSearchModelFormat
{
  v2 = [a1 languageCode];

  if (v2)
  {
    v3 = [a1 countryCode];
    v4 = [v3 length];

    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [a1 languageCode];
      v7 = [a1 countryCode];
      v8 = [v7 lowercaseString];
      v9 = [v5 stringWithFormat:@"%@-%@", v6, v8];
    }

    else
    {
      v9 = [a1 languageCode];
    }
  }

  else
  {
    v9 = &stru_1F3064D08;
  }

  return v9;
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
  v2 = [a1 languageCode];

  if (v2)
  {
    v3 = [a1 countryCode];
    v4 = [v3 length];

    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [a1 languageCode];
      v7 = [a1 countryCode];
      v8 = [v5 stringWithFormat:@"%@-%@", v6, v7];
    }

    else
    {
      v8 = [a1 languageCode];
    }
  }

  else
  {
    v8 = &stru_1F3064D08;
  }

  return v8;
}

@end