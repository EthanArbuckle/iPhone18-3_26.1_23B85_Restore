@interface CACLocaleUtilities
+ (BOOL)isLocaleIdentifier:(id)a3 containedInLocaleIdentifiers:(id)a4;
+ (BOOL)isSameLangaugeFromLocaleIdentifier:(id)a3 secondLocaleIdentifier:(id)a4;
+ (BOOL)isSameLocaleIdentifier:(id)a3 secondLocaleIdentifier:(id)a4;
+ (id)_localizedUIStringForKey:(id)a3 forResource:(id)a4;
+ (id)_localizedUIStringForKey:(id)a3 forResource:(id)a4 locale:(id)a5;
+ (id)componentsFromLocaleIdentifier:(id)a3;
+ (id)displayStringForByteSize:(unint64_t)a3;
+ (id)displayStringForOverlayNumber:(unint64_t)a3;
+ (id)displayStringForTimeRemaining:(double)a3;
+ (id)localizedDisplayStringForLocaleIdentifier:(id)a3;
+ (id)normalizedLocaleIdentifier:(id)a3;
+ (id)recognitionStringForOverlayNumber:(unint64_t)a3;
+ (id)siriLocaleUIStringForKey:(id)a3;
+ (id)systemLocaleIdentifier;
+ (id)systemUILocale;
@end

@implementation CACLocaleUtilities

+ (id)systemUILocale
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = MEMORY[0x277CCA8D8];
  v5 = [v2 localizations];
  v6 = [v4 preferredLocalizationsFromArray:v5 forPreferences:v3];

  v7 = [v6 firstObject];

  return v7;
}

+ (id)siriLocaleUIStringForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 spokenLanguageCode];

  v7 = [a1 _localizedUIStringForKey:v4 forResource:@"Localizable" locale:v6];

  return v7;
}

+ (id)_localizedUIStringForKey:(id)a3 forResource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 systemUILocale];
  v9 = [a1 _localizedUIStringForKey:v7 forResource:v6 locale:v8];

  return v9;
}

+ (id)_localizedUIStringForKey:(id)a3 forResource:(id)a4 locale:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v12 = [v10 localizedStringForKey:v7 value:0 table:v8 localization:v9];
  v13 = v12;
  if (!v12 || (v14 = v12, [v12 isEqual:v7]))
  {
LABEL_6:
    v15 = [CACLocaleUtilities normalizedLocaleIdentifier:v9];
    v14 = [v11 localizedStringForKey:v7 value:0 table:v8 localization:v15];

    if (!v14)
    {
      goto LABEL_8;
    }
  }

  if (![v14 isEqual:v7])
  {
    goto LABEL_14;
  }

LABEL_8:
  v16 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v9];
  v17 = [v16 objectForKey:*MEMORY[0x277CBE6C8]];

  if (v17)
  {
    v18 = [v11 localizedStringForKey:v7 value:0 table:v8 localization:v17];
    v19 = v18;
    if (v18 && ([v18 isEqual:v7] & 1) == 0)
    {

      v14 = v19;
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14)
  {
LABEL_14:
    if (![v14 isEqual:v7])
    {
      goto LABEL_16;
    }
  }

  v20 = [v11 localizedStringForKey:v7 value:&stru_287BD8610 table:v8];

  v14 = v20;
LABEL_16:

  return v14;
}

+ (id)componentsFromLocaleIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (componentsFromLocaleIdentifier__staticLocaleComponentsCacheSetup != -1)
    {
      +[CACLocaleUtilities componentsFromLocaleIdentifier:];
    }

    v4 = sLocaleComponentsCache;
    objc_sync_enter(v4);
    v5 = [sLocaleComponentsCache objectForKey:v3];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v3];
      if (v5)
      {
        [sLocaleComponentsCache setObject:v5 forKey:v3];
      }
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __53__CACLocaleUtilities_componentsFromLocaleIdentifier___block_invoke()
{
  sLocaleComponentsCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)systemLocaleIdentifier
{
  System = CFLocaleGetSystem();
  if (System)
  {
    System = [MEMORY[0x277CCACA8] stringWithString:MEMORY[0x26D6762E0]()];
  }

  return System;
}

+ (BOOL)isSameLocaleIdentifier:(id)a3 secondLocaleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [CACLocaleUtilities componentsFromLocaleIdentifier:a3];
  v7 = [CACLocaleUtilities componentsFromLocaleIdentifier:v5];

  v8 = *MEMORY[0x277CBE6C8];
  v9 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [v7 objectForKey:v8];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v6 objectForKey:v8];
  v14 = [v7 objectForKey:v8];
  v15 = [v13 caseInsensitiveCompare:v14];

  if (!v15)
  {
    v17 = *MEMORY[0x277CBE690];
    v10 = [v6 objectForKey:*MEMORY[0x277CBE690]];
    if (!v10)
    {
      v12 = [v7 objectForKey:v17];
      if (!v12)
      {
        v16 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    v18 = [v6 objectForKey:v17];
    if (v18)
    {
      v19 = v18;
      v20 = [v7 objectForKey:v17];
      if (v20)
      {
        v21 = v20;
        v22 = [v6 objectForKey:v17];
        v23 = [v7 objectForKey:v17];
        v16 = [v22 caseInsensitiveCompare:v23] == 0;

        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v16 = 0;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_4:
  v16 = 0;
LABEL_18:

  return v16;
}

+ (BOOL)isSameLangaugeFromLocaleIdentifier:(id)a3 secondLocaleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [CACLocaleUtilities componentsFromLocaleIdentifier:a3];
  v7 = [CACLocaleUtilities componentsFromLocaleIdentifier:v5];

  v8 = *MEMORY[0x277CBE6C8];
  v9 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  if (v9)
  {
    v10 = [v7 objectForKey:v8];
    if (v10)
    {
      v11 = [v6 objectForKey:v8];
      v12 = [v7 objectForKey:v8];
      v13 = [v11 caseInsensitiveCompare:v12] == 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isLocaleIdentifier:(id)a3 containedInLocaleIdentifiers:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([CACLocaleUtilities isSameLocaleIdentifier:v5 secondLocaleIdentifier:*(*(&v11 + 1) + 8 * i), v11])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)normalizedLocaleIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:a3];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  return v4;
}

+ (id)displayStringForByteSize:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = objc_opt_new();
  [v5 setFormatterBehavior:1040];
  [v5 setNumberStyle:1];
  [v5 setMinimumFractionDigits:0];
  if (a3 <= 0x3E7)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 localizedStringForKey:@"ByteSize" value:&stru_287BD8610 table:0];
    v8 = MEMORY[0x277CCABB0];
    v9 = a3;
LABEL_7:
    v10 = [v8 numberWithUnsignedLongLong:v9];
    goto LABEL_8;
  }

  if (a3 <= 0xF423F)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 localizedStringForKey:@"KBSize" value:&stru_287BD8610 table:0];
    v8 = MEMORY[0x277CCABB0];
    v9 = (a3 + 500) / 0x3E8uLL;
    goto LABEL_7;
  }

  if (a3 <= 0x3B9AC9FF)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 localizedStringForKey:@"MBSize" value:&stru_287BD8610 table:0];
    v8 = MEMORY[0x277CCABB0];
    v9 = (a3 + 500000) / 0xF4240uLL;
    goto LABEL_7;
  }

  [v5 setMaximumFractionDigits:1];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 localizedStringForKey:@"GBSize" value:&stru_287BD8610 table:0];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3 / 1000000000.0];
LABEL_8:
  v11 = v10;
  v12 = [v5 stringForObjectValue:v10];
  v13 = [v6 stringWithFormat:v7, v12];

  return v13;
}

+ (id)displayStringForTimeRemaining:(double)a3
{
  if (a3 < 120.0)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingLessThanAMinute" value:&stru_287BD8610 table:0];
LABEL_3:
    v6 = v5;
    goto LABEL_10;
  }

  if (a3 >= 3300.0)
  {
    if (a3 < 7200.0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingAboutAnHour" value:&stru_287BD8610 table:0];
      goto LABEL_3;
    }

    v13 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingNHours" value:&stru_287BD8610 table:0];
    v14 = MEMORY[0x277CCABB8];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:(a3 / 3600.0)];
    v11 = [v14 localizedStringFromNumber:v10 numberStyle:1];
    v12 = [v13 stringWithFormat:v8, v11];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingNMinutes" value:&stru_287BD8610 table:0];
    v9 = MEMORY[0x277CCABB8];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:(a3 / 60.0)];
    v11 = [v9 localizedStringFromNumber:v10 numberStyle:1];
    v12 = [v7 stringWithFormat:v8, v11];
  }

  v6 = v12;

LABEL_10:

  return v6;
}

+ (id)localizedDisplayStringForLocaleIdentifier:(id)a3
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a3;
  v5 = [v3 currentLocale];
  v6 = [v5 localizedStringForLocaleIdentifier:v4];

  return v6;
}

+ (id)displayStringForOverlayNumber:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setNumberStyle:1];
  [v4 setUsesGroupingSeparator:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

+ (id)recognitionStringForOverlayNumber:(unint64_t)a3
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
  [v4 setLocale:v5];

  [v4 setNumberStyle:1];
  [v4 setUsesGroupingSeparator:0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v4 stringFromNumber:v6];

  return v7;
}

@end