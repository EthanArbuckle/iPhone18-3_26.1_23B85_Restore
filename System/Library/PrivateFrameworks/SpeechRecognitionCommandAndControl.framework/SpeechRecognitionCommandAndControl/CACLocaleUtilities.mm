@interface CACLocaleUtilities
+ (BOOL)isLocaleIdentifier:(id)identifier containedInLocaleIdentifiers:(id)identifiers;
+ (BOOL)isSameLangaugeFromLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier;
+ (BOOL)isSameLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier;
+ (id)_localizedUIStringForKey:(id)key forResource:(id)resource;
+ (id)_localizedUIStringForKey:(id)key forResource:(id)resource locale:(id)locale;
+ (id)componentsFromLocaleIdentifier:(id)identifier;
+ (id)displayStringForByteSize:(unint64_t)size;
+ (id)displayStringForOverlayNumber:(unint64_t)number;
+ (id)displayStringForTimeRemaining:(double)remaining;
+ (id)localizedDisplayStringForLocaleIdentifier:(id)identifier;
+ (id)normalizedLocaleIdentifier:(id)identifier;
+ (id)recognitionStringForOverlayNumber:(unint64_t)number;
+ (id)siriLocaleUIStringForKey:(id)key;
+ (id)systemLocaleIdentifier;
+ (id)systemUILocale;
@end

@implementation CACLocaleUtilities

+ (id)systemUILocale
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = MEMORY[0x277CCA8D8];
  localizations = [v2 localizations];
  v6 = [v4 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

  firstObject = [v6 firstObject];

  return firstObject;
}

+ (id)siriLocaleUIStringForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_new();
  spokenLanguageCode = [v5 spokenLanguageCode];

  v7 = [self _localizedUIStringForKey:keyCopy forResource:@"Localizable" locale:spokenLanguageCode];

  return v7;
}

+ (id)_localizedUIStringForKey:(id)key forResource:(id)resource
{
  resourceCopy = resource;
  keyCopy = key;
  systemUILocale = [self systemUILocale];
  v9 = [self _localizedUIStringForKey:keyCopy forResource:resourceCopy locale:systemUILocale];

  return v9;
}

+ (id)_localizedUIStringForKey:(id)key forResource:(id)resource locale:(id)locale
{
  keyCopy = key;
  resourceCopy = resource;
  localeCopy = locale;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  if (!localeCopy)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v12 = [v10 localizedStringForKey:keyCopy value:0 table:resourceCopy localization:localeCopy];
  v13 = v12;
  if (!v12 || (v14 = v12, [v12 isEqual:keyCopy]))
  {
LABEL_6:
    v15 = [CACLocaleUtilities normalizedLocaleIdentifier:localeCopy];
    v14 = [v11 localizedStringForKey:keyCopy value:0 table:resourceCopy localization:v15];

    if (!v14)
    {
      goto LABEL_8;
    }
  }

  if (![v14 isEqual:keyCopy])
  {
    goto LABEL_14;
  }

LABEL_8:
  v16 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:localeCopy];
  v17 = [v16 objectForKey:*MEMORY[0x277CBE6C8]];

  if (v17)
  {
    v18 = [v11 localizedStringForKey:keyCopy value:0 table:resourceCopy localization:v17];
    v19 = v18;
    if (v18 && ([v18 isEqual:keyCopy] & 1) == 0)
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
    if (![v14 isEqual:keyCopy])
    {
      goto LABEL_16;
    }
  }

  v20 = [v11 localizedStringForKey:keyCopy value:&stru_287BD8610 table:resourceCopy];

  v14 = v20;
LABEL_16:

  return v14;
}

+ (id)componentsFromLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (componentsFromLocaleIdentifier__staticLocaleComponentsCacheSetup != -1)
    {
      +[CACLocaleUtilities componentsFromLocaleIdentifier:];
    }

    v4 = sLocaleComponentsCache;
    objc_sync_enter(v4);
    v5 = [sLocaleComponentsCache objectForKey:identifierCopy];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:identifierCopy];
      if (v5)
      {
        [sLocaleComponentsCache setObject:v5 forKey:identifierCopy];
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

+ (BOOL)isSameLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier
{
  localeIdentifierCopy = localeIdentifier;
  v6 = [CACLocaleUtilities componentsFromLocaleIdentifier:identifier];
  v7 = [CACLocaleUtilities componentsFromLocaleIdentifier:localeIdentifierCopy];

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

+ (BOOL)isSameLangaugeFromLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier
{
  localeIdentifierCopy = localeIdentifier;
  v6 = [CACLocaleUtilities componentsFromLocaleIdentifier:identifier];
  v7 = [CACLocaleUtilities componentsFromLocaleIdentifier:localeIdentifierCopy];

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

+ (BOOL)isLocaleIdentifier:(id)identifier containedInLocaleIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  identifiersCopy = identifiers;
  v7 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        if ([CACLocaleUtilities isSameLocaleIdentifier:identifierCopy secondLocaleIdentifier:*(*(&v11 + 1) + 8 * i), v11])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (id)normalizedLocaleIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:identifier];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  return v4;
}

+ (id)displayStringForByteSize:(unint64_t)size
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = objc_opt_new();
  [v5 setFormatterBehavior:1040];
  [v5 setNumberStyle:1];
  [v5 setMinimumFractionDigits:0];
  if (size <= 0x3E7)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 localizedStringForKey:@"ByteSize" value:&stru_287BD8610 table:0];
    v8 = MEMORY[0x277CCABB0];
    sizeCopy = size;
LABEL_7:
    v10 = [v8 numberWithUnsignedLongLong:sizeCopy];
    goto LABEL_8;
  }

  if (size <= 0xF423F)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 localizedStringForKey:@"KBSize" value:&stru_287BD8610 table:0];
    v8 = MEMORY[0x277CCABB0];
    sizeCopy = (size + 500) / 0x3E8uLL;
    goto LABEL_7;
  }

  if (size <= 0x3B9AC9FF)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 localizedStringForKey:@"MBSize" value:&stru_287BD8610 table:0];
    v8 = MEMORY[0x277CCABB0];
    sizeCopy = (size + 500000) / 0xF4240uLL;
    goto LABEL_7;
  }

  [v5 setMaximumFractionDigits:1];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 localizedStringForKey:@"GBSize" value:&stru_287BD8610 table:0];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:size / 1000000000.0];
LABEL_8:
  v11 = v10;
  v12 = [v5 stringForObjectValue:v10];
  v13 = [v6 stringWithFormat:v7, v12];

  return v13;
}

+ (id)displayStringForTimeRemaining:(double)remaining
{
  if (remaining < 120.0)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingLessThanAMinute" value:&stru_287BD8610 table:0];
LABEL_3:
    v6 = v5;
    goto LABEL_10;
  }

  if (remaining >= 3300.0)
  {
    if (remaining < 7200.0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingAboutAnHour" value:&stru_287BD8610 table:0];
      goto LABEL_3;
    }

    v13 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingNHours" value:&stru_287BD8610 table:0];
    v14 = MEMORY[0x277CCABB8];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:(remaining / 3600.0)];
    v11 = [v14 localizedStringFromNumber:v10 numberStyle:1];
    v12 = [v13 stringWithFormat:v8, v11];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v4 localizedStringForKey:@"DownloadingProgressTimeRemainingNMinutes" value:&stru_287BD8610 table:0];
    v9 = MEMORY[0x277CCABB8];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:(remaining / 60.0)];
    v11 = [v9 localizedStringFromNumber:v10 numberStyle:1];
    v12 = [v7 stringWithFormat:v8, v11];
  }

  v6 = v12;

LABEL_10:

  return v6;
}

+ (id)localizedDisplayStringForLocaleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CBEAF8];
  identifierCopy = identifier;
  currentLocale = [v3 currentLocale];
  v6 = [currentLocale localizedStringForLocaleIdentifier:identifierCopy];

  return v6;
}

+ (id)displayStringForOverlayNumber:(unint64_t)number
{
  v4 = objc_opt_new();
  [v4 setNumberStyle:1];
  [v4 setUsesGroupingSeparator:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:number];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

+ (id)recognitionStringForOverlayNumber:(unint64_t)number
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
  [v4 setLocale:v5];

  [v4 setNumberStyle:1];
  [v4 setUsesGroupingSeparator:0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:number];
  v7 = [v4 stringFromNumber:v6];

  return v7;
}

@end