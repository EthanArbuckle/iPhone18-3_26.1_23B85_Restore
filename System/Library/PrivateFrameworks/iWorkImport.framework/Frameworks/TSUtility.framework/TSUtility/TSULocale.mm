@interface TSULocale
+ (BOOL)localeIsAutoUpdating:(id)updating;
+ (NSLocale)applicationLocale;
+ (TSULocale)currentLocale;
+ (TSULocale)preferredLocale;
+ (TSULocale)usEnglishLocale;
+ (id)allSupportedTemplatePickerLanguages;
+ (id)allSupportedTier1Languages;
+ (id)allSupportedTier3Languages;
+ (id)canonicalizeLocaleIdentifier:(id)identifier;
+ (id)canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:(id)only;
+ (id)canonicalizeLocaleIdentifierWithLanguageAndScriptOnly:(id)only;
+ (id)canonicalizeLocaleIdentifierWithLanguageOnly:(id)only;
+ (id)canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:(id)only;
+ (id)currencySymbolForCurrencyCode:(id)code;
+ (id)currentLocaleCurrencyCode;
+ (id)deducedScriptForLocale:(id)locale;
+ (id)displayNameForCode:(id)code ofType:(id)type displayStandalone:(BOOL)standalone;
+ (id)displayNameForCurrencyCode:(id)code;
+ (id)formattedForDollarFunction:(const TSUDecimal *)function precision:(int)precision forLocale:(id)locale;
+ (id)localeForLocaleIdentifier:(id)identifier documentLanguageIdentifier:(id)languageIdentifier formattingSymbolsVersion:(id)version;
+ (id)localeIDWithDefaultRegionCode:(id)code;
+ (id)localeIDWithoutDefaultRegionCode:(id)code avoidAmbiguousCases:(BOOL)cases;
+ (id)localeIdentifierWithLanguageVariantAndRegionSubtagRemoved:(id)removed;
+ (id)preferredLanguages;
+ (id)regionSubtagAwareComponentsFromLocaleIdentifier:(id)identifier;
+ (id)sanitizedLocaleIdentifierForIdentifier:(id)identifier;
+ (id)simplifiedDisplayNameForLocaleID:(id)d displayStandalone:(BOOL)standalone;
+ (id)userVisibleCurrencyCodes;
+ (unint64_t)autoupdatingCurrentLocaleChangeCount;
+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)code;
+ (void)initialize;
+ (void)saveLocaleForReuse:(id)reuse;
+ (void)setLocalizedStringBundle:(__CFBundle *)bundle;
- (BOOL)currencyUsesRightToLeftWritingDirection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualViaFormattingAsDouble:(double)double :(double)a4;
- (BOOL)isLanguageCharacterDirectionRightToLeft;
- (BOOL)isLanguageFormulasDirectionRightToLeft;
- (NSArray)shortStandaloneMonthSymbols;
- (NSArray)shortStandaloneWeekdaySymbols;
- (NSArray)standaloneMonthSymbols;
- (NSArray)standaloneWeekdaySymbols;
- (NSString)amString;
- (NSString)arrayColumnSeparator;
- (NSString)cacheKey;
- (NSString)currencyCode;
- (NSString)decimalSeparator;
- (NSString)groupingSeparator;
- (NSString)listSeparator;
- (NSString)minusSign;
- (NSString)numberingSystem;
- (NSString)percentSymbol;
- (NSString)pmString;
- (TSULocale)initWithLocale:(id)locale;
- (TSULocale)initWithLocale:(id)locale documentLanguageIdentifier:(id)identifier useAutoupdating:(BOOL)autoupdating formattingSymbols:(id)symbols;
- (TSULocale)initWithLocale:(id)locale formattingSymbols:(id)symbols;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundle:(__CFBundle *)bundle;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundleWithURL:(id)l;
- (id)checkoutNumberFormatter;
- (id)checkoutScientificNumberFormatter;
- (id)copyWithDocumentLanguageIdentifier:(id)identifier;
- (id)copyWithGregorianCalendar;
- (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)style;
- (id)currencyCodeForCurrencySymbol:(id)symbol;
- (id)currencySymbolForCurrencyCode:(id)code;
- (id)description;
- (id)displayLanguageNameWithStandalone:(BOOL)standalone;
- (id)displayNameForCurrencyCode:(id)code;
- (id)displayNameWithCurrencySymbolForCurrencyCode:(id)code standardizeWhitespace:(BOOL)whitespace;
- (id)languageIdentifierWithLanguageAndRegionOnly;
- (id)localeIdentifierWithCalendarAndNumberingSystem;
- (id)localeIdentifierWithLanguageAndRegionOnly;
- (id)localeIdentifierWithLanguageScriptAndRegionOnly;
- (id)localeSpecificStorageForKey:(id)key;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
- (id)localizedStringWithFormat:(id)format;
- (id)numberFormatterStringFromDouble:(double)double withFormat:(id)format useDecimalPlaces:(BOOL)places minDecimalPlaces:(unsigned __int16)decimalPlaces decimalPlaces:(unsigned __int16)a7 showThousandsSeparator:(BOOL)separator currencyCode:(id)code suppressMinusSign:(BOOL)self0;
- (int64_t)localizedCaseInsensitiveCompare:(id)compare toString:(id)string;
- (int64_t)localizedCompare:(id)compare toString:(id)string;
- (unint64_t)autoupdatingCurrentLocaleChangeCount;
- (unint64_t)groupingSize;
- (unint64_t)hash;
- (void)_initializeNumberFormatterStringFromDoubleCache;
- (void)dealloc;
- (void)performICUDateUsingBlock:(id)block;
- (void)returnNumberFormatter:(id)formatter;
- (void)returnScientificNumberFormatter:(id)formatter;
- (void)setLocaleSpecificStorage:(id)storage forKey:(id)key;
@end

@implementation TSULocale

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    dword_280A63948 = 0;
    __dmb(0xBu);
    v2 = objc_opt_new();
    v3 = qword_280A63928;
    qword_280A63928 = v2;

    v4 = qword_280A63910;
    qword_280A63910 = 0;

    v5 = qword_280A63930;
    qword_280A63930 = &unk_28864B620;

    v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28864B620];
    v7 = qword_280A63938;
    qword_280A63938 = v6;

    v8 = +[TSUStrongReferenceHolder strongReferenceHolder];
    v9 = qword_280A63940;
    qword_280A63940 = v8;

    v10 = sub_2770382CC(&unk_288629A50);
    qword_280A63950 = 0;
  }
}

+ (void)setLocalizedStringBundle:(__CFBundle *)bundle
{
  if (qword_280A65C98)
  {
    CFRelease(qword_280A65C98);
  }

  qword_280A65C98 = bundle;

  CFRetain(bundle);
}

+ (unint64_t)autoupdatingCurrentLocaleChangeCount
{
  os_unfair_lock_lock(&dword_280A63948);
  v2 = qword_280A63950;
  os_unfair_lock_unlock(&dword_280A63948);
  return v2;
}

- (unint64_t)autoupdatingCurrentLocaleChangeCount
{
  if (self->_isAutoUpdating)
  {
    return +[TSULocale autoupdatingCurrentLocaleChangeCount];
  }

  else
  {
    return 0;
  }
}

+ (id)preferredLanguages
{
  v6[1] = *MEMORY[0x277D85DE8];
  currentLocale = [self currentLocale];
  documentLanguageIdentifier = [currentLocale documentLanguageIdentifier];
  v6[0] = documentLanguageIdentifier;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

+ (TSULocale)currentLocale
{
  v3 = qword_280A63910;
  if (!qword_280A63910)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!qword_280A63910)
    {
      v5 = [TSULocale alloc];
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      tsu_firstPreferredLocalization = [MEMORY[0x277CBEAF8] tsu_firstPreferredLocalization];
      v8 = [(TSULocale *)v5 initWithLocale:currentLocale documentLanguageIdentifier:tsu_firstPreferredLocalization useAutoupdating:1 formattingSymbols:0];
      v9 = qword_280A63910;
      qword_280A63910 = v8;
    }

    objc_sync_exit(selfCopy);

    v3 = qword_280A63910;
  }

  return v3;
}

+ (TSULocale)preferredLocale
{
  v3 = qword_280A63918;
  if (!qword_280A63918)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!qword_280A63918)
    {
      v5 = [TSULocale alloc];
      v6 = TSUPreferredLocale();
      tsu_firstPreferredLocalization = [MEMORY[0x277CBEAF8] tsu_firstPreferredLocalization];
      v8 = [(TSULocale *)v5 initWithLocale:v6 documentLanguageIdentifier:tsu_firstPreferredLocalization useAutoupdating:1 formattingSymbols:0];
      v9 = qword_280A63918;
      qword_280A63918 = v8;
    }

    objc_sync_exit(selfCopy);

    v3 = qword_280A63918;
  }

  return v3;
}

+ (NSLocale)applicationLocale
{
  v2 = +[TSULocale currentLocale];
  locale = [v2 locale];

  return locale;
}

+ (TSULocale)usEnglishLocale
{
  v3 = qword_280A63920;
  if (!qword_280A63920)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!qword_280A63920)
    {
      v5 = [TSULocale alloc];
      v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
      v7 = [(TSULocale *)v5 initWithLocale:v6 documentLanguageIdentifier:@"en" useAutoupdating:0 formattingSymbols:0];
      v8 = qword_280A63920;
      qword_280A63920 = v7;
    }

    objc_sync_exit(selfCopy);

    v3 = qword_280A63920;
  }

  return v3;
}

+ (id)regionSubtagAwareComponentsFromLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:identifierCopy];
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:identifierCopy];
  v6 = [v5 mutableCopy];

  countryCode = [v4 countryCode];
  if (countryCode)
  {
    [v6 setObject:countryCode forKey:*MEMORY[0x277CBE690]];
  }

  v8 = [v6 copy];

  return v8;
}

+ (id)canonicalizeLocaleIdentifier:(id)identifier
{
  v3 = [self regionSubtagAwareComponentsFromLocaleIdentifier:identifier];
  v4 = [v3 mutableCopy];

  v5 = *MEMORY[0x277CBE720];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE720]];
  uppercaseString = [v6 uppercaseString];
  v8 = [uppercaseString isEqualToString:@"POSIX"];

  if (v8)
  {
    [v4 removeObjectForKey:v5];
  }

  v9 = MEMORY[0x277CBEAF8];
  v10 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
  v11 = [v9 canonicalLocaleIdentifierFromString:v10];

  return v11;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageOnly:(id)only
{
  v3 = [self regionSubtagAwareComponentsFromLocaleIdentifier:only];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  return v4;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:(id)only
{
  v3 = [self regionSubtagAwareComponentsFromLocaleIdentifier:only];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v5];
    [dictionary setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x277CBE690];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:v8];
    [dictionary setObject:v10 forKeyedSubscript:v8];
  }

  v11 = MEMORY[0x277CBEAF8];
  v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:dictionary];
  v13 = [v11 canonicalLocaleIdentifierFromString:v12];

  return v13;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageAndScriptOnly:(id)only
{
  v3 = [self regionSubtagAwareComponentsFromLocaleIdentifier:only];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v5];
    [dictionary setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x277CBE6F8];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:v8];
    [dictionary setObject:v10 forKeyedSubscript:v8];
  }

  v11 = MEMORY[0x277CBEAF8];
  v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:dictionary];
  v13 = [v11 canonicalLocaleIdentifierFromString:v12];

  return v13;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:(id)only
{
  v3 = [self regionSubtagAwareComponentsFromLocaleIdentifier:only];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v5];
    [dictionary setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x277CBE690];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:v8];
    [dictionary setObject:v10 forKeyedSubscript:v8];
  }

  v11 = *MEMORY[0x277CBE6F8];
  v12 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];

  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:v11];
    [dictionary setObject:v13 forKeyedSubscript:v11];
  }

  v14 = MEMORY[0x277CBEAF8];
  v15 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:dictionary];
  v16 = [v14 canonicalLocaleIdentifierFromString:v15];

  return v16;
}

+ (id)sanitizedLocaleIdentifierForIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:identifier];
  languageCode = [v3 languageCode];
  if (languageCode && ([MEMORY[0x277CBEAF8] ISOLanguageCodes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", languageCode), v5, v6))
  {
    localeIdentifier = [v3 localeIdentifier];
  }

  else
  {
    localeIdentifier = 0;
  }

  return localeIdentifier;
}

+ (id)deducedScriptForLocale:(id)locale
{
  v22 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v5 = [self regionSubtagAwareComponentsFromLocaleIdentifier:localeCopy];
  v6 = [v5 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [&unk_28864B5D8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    v9 = *MEMORY[0x277CBE6F8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(&unk_28864B5D8);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v6 setObject:v11 forKeyedSubscript:v9];
        v12 = MEMORY[0x277CBEAF8];
        v13 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v6];
        v14 = [v12 canonicalLocaleIdentifierFromString:v13];

        if ([v14 isEqualToString:localeCopy])
        {
          v15 = v11;

          goto LABEL_11;
        }
      }

      v7 = [&unk_28864B5D8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

+ (id)localeIDWithDefaultRegionCode:(id)code
{
  v50[3] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = [self regionSubtagAwareComponentsFromLocaleIdentifier:codeCopy];
  v6 = [v5 mutableCopy];

  v7 = *MEMORY[0x277CBE6C8];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v9 = [v8 isEqualToString:@"zh"];

  v10 = MEMORY[0x277CBE6F8];
  if (v9)
  {
    v11 = *MEMORY[0x277CBE6F8];
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];

    if (!v12)
    {
      v13 = [TSULocale deducedScriptForLocale:codeCopy];
      if ([v13 length])
      {
        [v6 setObject:v13 forKeyedSubscript:v11];
      }
    }

    v14 = *MEMORY[0x277CBE690];
    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

    if (!v15)
    {
      v16 = [v6 objectForKeyedSubscript:v11];
      v17 = [@"Hant" isEqualToString:v16];

      if (v17)
      {
        v18 = @"TW";
      }

      else
      {
        v18 = @"CN";
      }

      [v6 setObject:v18 forKeyedSubscript:v14];
    }
  }

  else
  {
    v19 = [v6 objectForKeyedSubscript:v7];
    if ([v19 isEqualToString:@"ko"])
    {
      v20 = *v10;
      v21 = [v6 objectForKeyedSubscript:*v10];
      v22 = [&unk_28864B5F0 containsObject:v21];

      if (v22)
      {
        [v6 setObject:0 forKeyedSubscript:v20];
      }
    }

    else
    {
    }

    v14 = *MEMORY[0x277CBE690];
    v23 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBEAC0]);
      v25 = SFUMainBundle();
      v26 = [v25 pathForResource:@"LocaleIDData" ofType:@"plist"];
      v27 = [v24 initWithContentsOfFile:v26];

      v28 = [v27 objectForKeyedSubscript:@"DefaultRegionCodes"];
      v29 = [v6 objectForKeyedSubscript:v7];
      v30 = [v28 objectForKeyedSubscript:v29];
      [v6 setObject:v30 forKeyedSubscript:v14];

      v31 = [v6 objectForKeyedSubscript:v14];

      if (!v31)
      {
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v33 = [currentLocale objectForKey:v14];
        [v6 setObject:v33 forKeyedSubscript:v14];
      }
    }
  }

  allKeys = [v6 allKeys];
  v35 = MEMORY[0x277CBEB98];
  v50[0] = v7;
  v50[1] = v14;
  v50[2] = *v10;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
  v37 = [v35 setWithArray:v36];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = allKeys;
  v39 = [v38 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v39)
  {
    v40 = *v46;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v42 = *(*(&v45 + 1) + 8 * i);
        if (([v37 containsObject:{v42, v45}] & 1) == 0)
        {
          [v6 removeObjectForKey:v42];
        }
      }

      v39 = [v38 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v39);
  }

  v43 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v6];

  return v43;
}

+ (id)localeIdentifierWithLanguageVariantAndRegionSubtagRemoved:(id)removed
{
  removedCopy = removed;
  v4 = [TSULocale deducedScriptForLocale:removedCopy];
  v5 = [TSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:removedCopy];
  v6 = [TSULocale regionSubtagAwareComponentsFromLocaleIdentifier:v5];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v9 = [v8 isEqualToString:@"zh"];

  if (v9)
  {
    [v7 setObject:v4 forKeyedSubscript:*MEMORY[0x277CBE6F8]];
  }

  v10 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v7];

  return v10;
}

+ (id)localeIDWithoutDefaultRegionCode:(id)code avoidAmbiguousCases:(BOOL)cases
{
  casesCopy = cases;
  codeCopy = code;
  v7 = [self regionSubtagAwareComponentsFromLocaleIdentifier:codeCopy];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x277CBE6C8];
  if (casesCopy)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
    v11 = [&unk_28864B608 containsObject:v10];

    if (v11)
    {
      v12 = codeCopy;
      goto LABEL_14;
    }
  }

  v13 = [v8 objectForKeyedSubscript:v9];
  v14 = [@"zh" isEqualToString:v13];
  v15 = MEMORY[0x277CBE690];
  if (!v14)
  {
    goto LABEL_9;
  }

  v16 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
  if (([@"Hant" isEqualToString:v16] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  v17 = *v15;
  v18 = [v8 objectForKeyedSubscript:*v15];
  v19 = [@"TW" isEqualToString:v18];

  if (!v19)
  {
LABEL_10:
    v20 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = SFUMainBundle();
    v22 = [v21 pathForResource:@"LocaleIDData" ofType:@"plist"];
    v23 = [v20 initWithContentsOfFile:v22];

    v24 = [v23 objectForKeyedSubscript:@"DefaultRegionCodes"];
    v25 = *v15;
    v26 = [v8 objectForKeyedSubscript:*v15];
    v27 = [v8 objectForKeyedSubscript:v9];
    v28 = [v24 objectForKeyedSubscript:v27];
    v29 = [v26 isEqualToString:v28];

    if (v29)
    {
      [v8 setObject:0 forKeyedSubscript:v25];
    }

    goto LABEL_13;
  }

  [v8 setObject:0 forKeyedSubscript:v17];
LABEL_13:
  v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v8];
LABEL_14:
  v30 = v12;

  return v30;
}

+ (id)simplifiedDisplayNameForLocaleID:(id)d displayStandalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  v5 = [TSULocale localeIDWithDefaultRegionCode:d];
  v6 = [TSULocale localeIDWithoutDefaultRegionCode:v5 avoidAmbiguousCases:1];

  v7 = [TSULocale displayNameForCode:v6 ofType:*MEMORY[0x277CBE6C0] displayStandalone:standaloneCopy];
  v8 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSULocale simplifiedDisplayNameForLocaleID:displayStandalone:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULocale.mm"];
    v11 = +[TSULocale applicationLocale];
    localeIdentifier = [v11 localeIdentifier];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:438 isFatal:0 description:"Nil display name returned for locale ID %@", localeIdentifier];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = &stru_28862C2A0;
  }

  v13 = v8;

  return v8;
}

+ (id)displayNameForCode:(id)code ofType:(id)type displayStandalone:(BOOL)standalone
{
  codeCopy = code;
  typeCopy = type;
  v8 = +[TSULocale applicationLocale];
  v9 = *MEMORY[0x277CBE6C0];
  v10 = *MEMORY[0x277CBE6C8];
  if (*MEMORY[0x277CBE6C0] != typeCopy && v10 != typeCopy && *MEMORY[0x277CBE690] != typeCopy)
  {
    v13 = v9;

    typeCopy = v13;
  }

  if (typeCopy == v10 && [codeCopy containsString:@"-"])
  {
    v14 = v9;

    typeCopy = v14;
  }

  v15 = [v8 displayNameForKey:typeCopy value:codeCopy];

  return v15;
}

+ (id)allSupportedTier1Languages
{
  if (qword_280A63958 != -1)
  {
    sub_277112D94();
  }

  v3 = qword_280A63960;

  return v3;
}

+ (id)allSupportedTier3Languages
{
  if (qword_280A63968 != -1)
  {
    sub_277112DA8();
  }

  v3 = qword_280A63970;

  return v3;
}

+ (id)allSupportedTemplatePickerLanguages
{
  if (qword_280A63978 != -1)
  {
    sub_277112DBC();
  }

  v3 = qword_280A63980;

  return v3;
}

+ (BOOL)localeIsAutoUpdating:(id)updating
{
  updatingCopy = updating;
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v5 = autoupdatingCurrentLocale == updatingCopy;

  return v5;
}

+ (id)localeForLocaleIdentifier:(id)identifier documentLanguageIdentifier:(id)languageIdentifier formattingSymbolsVersion:(id)version
{
  identifierCopy = identifier;
  languageIdentifierCopy = languageIdentifier;
  versionCopy = version;
  v10 = 0;
  if (identifierCopy && languageIdentifierCopy)
  {
    versionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@, %@", identifierCopy, languageIdentifierCopy, versionCopy];
    os_unfair_lock_lock(&dword_280A63948);
    v10 = [qword_280A63928 objectForKey:versionCopy];
    os_unfair_lock_unlock(&dword_280A63948);
  }

  return v10;
}

+ (void)saveLocaleForReuse:(id)reuse
{
  reuseCopy = reuse;
  v4 = MEMORY[0x277CCACA8];
  v11 = reuseCopy;
  localeIdentifier = [reuseCopy localeIdentifier];
  documentLanguageIdentifier = [v11 documentLanguageIdentifier];
  formattingSymbols = [v11 formattingSymbols];
  version = [formattingSymbols version];
  v9 = [v4 stringWithFormat:@"%@, %@, %@", localeIdentifier, documentLanguageIdentifier, version];

  os_unfair_lock_lock(&dword_280A63948);
  v10 = [qword_280A63928 objectForKey:v9];

  if (!v10)
  {
    [qword_280A63928 setObject:v11 forKey:v9];
  }

  os_unfair_lock_unlock(&dword_280A63948);
}

- (TSULocale)initWithLocale:(id)locale
{
  localeCopy = locale;
  v5 = [localeCopy objectForKey:*MEMORY[0x277CBE6C8]];
  v6 = [(TSULocale *)self initWithLocale:localeCopy documentLanguageIdentifier:v5 useAutoupdating:0 formattingSymbols:0];

  return v6;
}

- (TSULocale)initWithLocale:(id)locale formattingSymbols:(id)symbols
{
  localeCopy = locale;
  symbolsCopy = symbols;
  v8 = [localeCopy objectForKey:*MEMORY[0x277CBE6C8]];
  v9 = [(TSULocale *)self initWithLocale:localeCopy documentLanguageIdentifier:v8 useAutoupdating:0 formattingSymbols:symbolsCopy];

  return v9;
}

- (TSULocale)initWithLocale:(id)locale documentLanguageIdentifier:(id)identifier useAutoupdating:(BOOL)autoupdating formattingSymbols:(id)symbols
{
  autoupdatingCopy = autoupdating;
  localeCopy = locale;
  identifierCopy = identifier;
  symbolsCopy = symbols;
  v62.receiver = self;
  v62.super_class = TSULocale;
  v13 = [(TSULocale *)&v62 init];
  v14 = v13;
  if (!v13)
  {
    v17 = 0;
    goto LABEL_6;
  }

  if (localeCopy && !identifierCopy)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULocale initWithLocale:documentLanguageIdentifier:useAutoupdating:formattingSymbols:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULocale.mm"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:605 isFatal:0 description:"Nil document language ID or nil locale with non-nil document language ID"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v17 = 0;
    v18 = 0;
    goto LABEL_35;
  }

  v17 = 0;
  if (!localeCopy || !identifierCopy)
  {
LABEL_6:
    v18 = identifierCopy;
    goto LABEL_35;
  }

  if (symbolsCopy)
  {
    numberingSystem = [symbolsCopy numberingSystem];
    if ([numberingSystem isEqualToString:@"arab"])
    {
      languageCode = [localeCopy languageCode];
      v21 = [languageCode isEqualToString:@"en"];

      if (v21)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULocale initWithLocale:documentLanguageIdentifier:useAutoupdating:formattingSymbols:]"];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULocale.mm"];
        [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:613 isFatal:0 description:"Found arab numbering system in English language locale."];

        +[TSUAssertionHandler logBacktraceThrottled];
      }
    }

    else
    {
    }
  }

  v18 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:identifierCopy];

  localeIdentifier = [localeCopy localeIdentifier];
  obj = [TSULocale canonicalizeLocaleIdentifier:localeIdentifier];

  if (symbolsCopy)
  {
    [symbolsCopy version];
  }

  else
  {
    [TSUFormattingSymbols defaultFormattingSymbolsVersionForLocale:localeCopy];
  }
  v58 = ;
  if (autoupdatingCopy || [TSUFormattingSymbols versionIsForACustomizedLocale:v58]|| ([TSULocale localeForLocaleIdentifier:obj documentLanguageIdentifier:v18 formattingSymbolsVersion:v58], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    pthread_mutex_init(&v13->_formattersMutex, 0);
    objc_storeStrong(&v13->_localeIdentifier, obj);
    if (autoupdatingCopy)
    {
      autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    }

    else
    {
      autoupdatingCurrentLocale = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v13->_localeIdentifier];
    }

    locale = v13->_locale;
    v13->_locale = autoupdatingCurrentLocale;

    v13->_isAutoUpdating = autoupdatingCopy;
    v29 = [(NSLocale *)v13->_locale objectForKey:*MEMORY[0x277CBE6C8]];
    languageCode = v13->_languageCode;
    v13->_languageCode = v29;

    objc_storeStrong(&v13->_documentLanguageIdentifier, v18);
    v31 = objc_opt_new();
    numberFormatters = v13->_numberFormatters;
    v13->_numberFormatters = v31;

    v33 = objc_opt_new();
    scientificNumberFormatters = v13->_scientificNumberFormatters;
    v13->_scientificNumberFormatters = v33;

    v35 = symbolsCopy;
    if (!symbolsCopy)
    {
      v35 = [TSUFormattingSymbols defaultFormattingSymbolsForLocale:v13->_locale];
    }

    objc_storeStrong(&v13->_formattingSymbols, v35);
    if (!symbolsCopy)
    {
    }

    [(TSUFormattingSymbols *)v13->_formattingSymbols upgradeIfNecessary:v13, v58];
    v36 = [[TSUDateParserLibrary alloc] initWithLocale:v13];
    dateParserLibrary = v13->_dateParserLibrary;
    v13->_dateParserLibrary = v36;

    v38 = objc_opt_new();
    numberFormatterStringFromDoubleWithFormatLock = v13->_numberFormatterStringFromDoubleWithFormatLock;
    v13->_numberFormatterStringFromDoubleWithFormatLock = v38;

    v40 = objc_opt_new();
    localeSpecificStorageLock = v13->_localeSpecificStorageLock;
    v13->_localeSpecificStorageLock = v40;

    v42 = objc_opt_new();
    localeSpecificStorage = v13->_localeSpecificStorage;
    v13->_localeSpecificStorage = v42;

    v44 = objc_opt_new();
    icuDateBlockUsingLock = v13->_icuDateBlockUsingLock;
    v13->_icuDateBlockUsingLock = v44;

    localeIdentifier2 = [localeCopy localeIdentifier];
    v13->_dateComponentOrdering = sub_27702F6A4(localeIdentifier2);

    v47 = sub_2770303F8(v13->_locale);
    gregorianCalendarLocale = v13->_gregorianCalendarLocale;
    v13->_gregorianCalendarLocale = v47;

    v49 = [(TSULocale *)v13 localizedStringForKey:@"TRUE" value:&stru_28862C2A0 table:@"TSUtility"];
    trueString = v13->_trueString;
    v13->_trueString = v49;

    v51 = [(TSULocale *)v13 localizedStringForKey:@"FALSE" value:&stru_28862C2A0 table:@"TSUtility"];
    falseString = v13->_falseString;
    v13->_falseString = v51;

    v53 = objc_opt_new();
    cachedLocalizedStrings = v13->_cachedLocalizedStrings;
    v13->_cachedLocalizedStrings = v53;

    [(NSCache *)v13->_cachedLocalizedStrings setName:@"Docuemnt-language localized strings cache"];
    TSUNumberOrDateLexer::TSUNumberOrDateLexer(&v61, v13);
    sub_27703B3D4(&v13->_numberOrDateLexer, &v61);

    sub_27703F2E4(&v61._vulgarFractionMap);
    sub_27703F330(&v61._identifiersForStartChar);
    sub_27703F36C(&v61._identifierToClassificationMap);
    TSUIndexSet::~TSUIndexSet(&v61._identStartChars);
    TSUIndexSet::~TSUIndexSet(&v61._additionalIdentChars);
    TSUIndexSet::~TSUIndexSet(&v61._dateSeps);

    if (autoupdatingCopy || (-[TSULocale formattingSymbols](v13, "formattingSymbols"), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 hasUserCustomizations], v55, (v56 & 1) != 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      [TSULocale saveLocaleForReuse:v14];
    }
  }

  else
  {
    v26 = v25;

    v14 = v26;
  }

  v17 = [qword_280A63940 uniqueReferenceForObject:{v14, v58}];
  if (v17 == v14)
  {
    [(TSUPermanentObject *)v14 markAsPermanent];
  }

LABEL_35:
  return v17;
}

- (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)style
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  v6 = [TSUDecimalFormatter createHarmonizedDecimalFormatterOfStyle:style locale:self formattingSymbols:formattingSymbols];

  return v6;
}

- (id)languageIdentifierWithLanguageAndRegionOnly
{
  v2 = MEMORY[0x277CBEAF8];
  localeIdentifier = [(TSULocale *)self localeIdentifier];
  v4 = [v2 canonicalLanguageIdentifierFromString:localeIdentifier];

  v5 = [v4 componentsSeparatedByString:@"@"];
  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

- (id)localeIdentifierWithLanguageAndRegionOnly
{
  localeIdentifier = [(TSULocale *)self localeIdentifier];
  v3 = [TSULocale canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:localeIdentifier];

  return v3;
}

- (id)localeIdentifierWithLanguageScriptAndRegionOnly
{
  localeIdentifier = [(TSULocale *)self localeIdentifier];
  v3 = [TSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:localeIdentifier];

  return v3;
}

- (id)localeIdentifierWithCalendarAndNumberingSystem
{
  localeIdentifier = [(TSULocale *)self localeIdentifier];
  v4 = [TSULocale regionSubtagAwareComponentsFromLocaleIdentifier:localeIdentifier];
  v5 = [v4 mutableCopy];

  formattingSymbols = [(TSULocale *)self formattingSymbols];
  calendar = [formattingSymbols calendar];
  v8 = calendar;
  if (calendar)
  {
    v9 = calendar;
  }

  else
  {
    v9 = *MEMORY[0x277CBE5C0];
  }

  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CBEE88]];

  formattingSymbols2 = [(TSULocale *)self formattingSymbols];
  numberingSystem = [formattingSymbols2 numberingSystem];
  v12 = numberingSystem;
  if (numberingSystem)
  {
    v13 = numberingSystem;
  }

  else
  {
    v13 = @"latn";
  }

  [v5 setObject:v13 forKeyedSubscript:@"numbers"];

  v14 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v5];

  return v14;
}

- (id)copyWithDocumentLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [TSULocale alloc];
  locale = [(TSULocale *)self locale];
  isAutoUpdating = [(TSULocale *)self isAutoUpdating];
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  v9 = [(TSULocale *)v5 initWithLocale:locale documentLanguageIdentifier:identifierCopy useAutoupdating:isAutoUpdating formattingSymbols:formattingSymbols];

  return v9;
}

- (id)copyWithGregorianCalendar
{
  locale = [(TSULocale *)self locale];
  calendarIdentifier = [locale calendarIdentifier];
  v4 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  if (v4)
  {

    return self;
  }

  else
  {
    v6 = [TSULocale alloc];
    gregorianCalendarLocale = [(TSULocale *)self gregorianCalendarLocale];
    v8 = [(TSULocale *)v6 initWithLocale:gregorianCalendarLocale];

    return v8;
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_formattersMutex);
  v3.receiver = self;
  v3.super_class = TSULocale;
  [(TSULocale *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, equalCopy);
    if (v6 && (-[TSULocale localeIdentifier](self, "localeIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v6 localeIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) != 0) && (v10 = -[TSULocale isAutoUpdating](self, "isAutoUpdating"), v10 == objc_msgSend(v6, "isAutoUpdating")))
    {
      formattingSymbols = [(TSULocale *)self formattingSymbols];

      if (formattingSymbols)
      {
        formattingSymbols2 = [(TSULocale *)self formattingSymbols];
        formattingSymbols3 = [v6 formattingSymbols];
        v11 = [formattingSymbols2 isEqual:formattingSymbols3];
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(TSUHasher);
  localeIdentifier = [(TSULocale *)self localeIdentifier];
  [(TSUHasher *)v3 addObject:localeIdentifier];

  formattingSymbols = [(TSULocale *)self formattingSymbols];
  version = [formattingSymbols version];
  [(TSUHasher *)v3 addObject:version];

  hashValue = [(TSUHasher *)v3 hashValue];
  return hashValue;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_isAutoUpdating)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  return [v3 stringWithFormat:@"<%@: %p>: for %@ language %@ autoupdating: %@", v4, self, self->_localeIdentifier, self->_documentLanguageIdentifier, v5];
}

- (id)displayLanguageNameWithStandalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [(NSLocale *)self->_locale objectForKey:*MEMORY[0x277CBE6C8]];
  if ([v6 isEqualToString:@"zh"] && ((-[NSLocale objectForKey:](self->_locale, "objectForKey:", *MEMORY[0x277CBE6F8]), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (+[TSULocale deducedScriptForLocale:](TSULocale, "deducedScriptForLocale:", self->_localeIdentifier), (v7 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v7];
    v9 = [TSULocale displayNameForCode:v8 ofType:*MEMORY[0x277CBE6C0] displayStandalone:standaloneCopy];
  }

  else
  {
    v9 = [TSULocale displayNameForCode:v6 ofType:v5 displayStandalone:standaloneCopy];
  }

  return v9;
}

- (NSString)cacheKey
{
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_cacheKey)
    {
      if ([(TSULocale *)selfCopy isAutoUpdating])
      {
        localeIdentifier = self->_cacheKey;
        self->_cacheKey = @"NSAutoLocale";
      }

      else
      {
        v6 = MEMORY[0x277CCACA8];
        localeIdentifier = [(TSULocale *)selfCopy localeIdentifier];
        formattingSymbols = [(TSULocale *)selfCopy formattingSymbols];
        v8 = [v6 stringWithFormat:@"CFLocale:%@-%lu", localeIdentifier, objc_msgSend(formattingSymbols, "hash")];
        v9 = self->_cacheKey;
        self->_cacheKey = v8;
      }
    }

    objc_sync_exit(selfCopy);

    cacheKey = self->_cacheKey;
  }

  return cacheKey;
}

- (NSString)numberingSystem
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  numberingSystem = [formattingSymbols numberingSystem];

  return numberingSystem;
}

- (NSString)decimalSeparator
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  decimalSeparator = [formattingSymbols decimalSeparator];

  return decimalSeparator;
}

- (NSString)groupingSeparator
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  groupingSeparator = [formattingSymbols groupingSeparator];

  return groupingSeparator;
}

- (NSString)minusSign
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  minusSign = [formattingSymbols minusSign];

  return minusSign;
}

- (NSString)listSeparator
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  listSeparator = [formattingSymbols listSeparator];

  return listSeparator;
}

- (NSString)arrayColumnSeparator
{
  listSeparator = [(TSULocale *)self listSeparator];
  if ([(NSString *)listSeparator isEqualToString:@", "])
  {
    v3 = listSeparator;
  }

  else
  {
    v3 = @".";
  }

  v4 = v3;

  return v3;
}

- (NSString)percentSymbol
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  percentSymbol = [formattingSymbols percentSymbol];

  return percentSymbol;
}

- (unint64_t)groupingSize
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  groupingSize = [formattingSymbols groupingSize];

  return groupingSize;
}

- (NSString)currencyCode
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  currencyCode = [formattingSymbols currencyCode];

  return currencyCode;
}

- (NSArray)standaloneMonthSymbols
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  standaloneMonths = [formattingSymbols standaloneMonths];

  return standaloneMonths;
}

- (NSArray)standaloneWeekdaySymbols
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  standaloneWeekdays = [formattingSymbols standaloneWeekdays];

  return standaloneWeekdays;
}

- (NSArray)shortStandaloneMonthSymbols
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  standaloneShortMonths = [formattingSymbols standaloneShortMonths];

  return standaloneShortMonths;
}

- (NSArray)shortStandaloneWeekdaySymbols
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  standaloneShortWeekdays = [formattingSymbols standaloneShortWeekdays];

  return standaloneShortWeekdays;
}

- (NSString)amString
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  amSymbol = [formattingSymbols amSymbol];

  return amSymbol;
}

- (NSString)pmString
{
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  pmSymbol = [formattingSymbols pmSymbol];

  return pmSymbol;
}

- (id)currencySymbolForCurrencyCode:(id)code
{
  codeCopy = code;
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  v6 = [formattingSymbols currencySymbolForCurrencyCode:codeCopy];

  return v6;
}

- (id)displayNameWithCurrencySymbolForCurrencyCode:(id)code standardizeWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  codeCopy = code;
  v7 = [TSULocale displayNameForCurrencyCode:codeCopy];
  v8 = [(TSULocale *)self currencySymbolForCurrencyCode:codeCopy];
  if (v7)
  {
    if (whitespaceCopy)
    {
      whitespaceCharacterSet = [MEMORY[0x277CCAB50] whitespaceCharacterSet];
      [whitespaceCharacterSet addCharactersInString:@" "];
      v10 = [v7 tsu_stringByReplacingInstancesOfCharactersInSet:whitespaceCharacterSet withString:@" "];

      v7 = v10;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v7, v8];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v8];
  }

  return v11;
}

- (id)currencyCodeForCurrencySymbol:(id)symbol
{
  symbolCopy = symbol;
  formattingSymbols = [(TSULocale *)self formattingSymbols];
  v6 = [formattingSymbols currencyCodeForCurrencySymbol:symbolCopy];

  return v6;
}

- (id)displayNameForCurrencyCode:(id)code
{
  v3 = [(NSLocale *)self->_locale displayNameForKey:*MEMORY[0x277CBE698] value:code];

  return v3;
}

+ (id)currencySymbolForCurrencyCode:(id)code
{
  codeCopy = code;
  v4 = +[TSULocale currentLocale];
  v5 = [v4 currencySymbolForCurrencyCode:codeCopy];

  return v5;
}

+ (id)displayNameForCurrencyCode:(id)code
{
  codeCopy = code;
  v4 = +[TSULocale currentLocale];
  v5 = [v4 displayNameForCurrencyCode:codeCopy];

  return v5;
}

+ (id)currentLocaleCurrencyCode
{
  v2 = +[TSULocale currentLocale];
  currencyCode = [v2 currencyCode];

  return currencyCode;
}

+ (id)userVisibleCurrencyCodes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SFTDefaultsShowCompleteCurrencyList"];

  if (v3)
  {
    v4 = CFLocaleCopyCommonISOCurrencyCodes();
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"AUD", @"CAD", @"HKD", @"SGD", @"TWD", @"USD", @"EUR", @"CHF", @"SEK", @"DKK", @"NOK", @"MXN", @"GBP", @"BRL", @"INR", @"KRW", @"JPY", @"CNY", @"IDR", @"RUB", @"TRY", @"THB", @"PLN", @"ZAR", @"ARS", @"SAR", @"AED", @"EGP", @"HRK", @"CZK", @"ILS", @"HUF", @"RON", @"UAH", @"VND", @"MYR", 0}];
    v5 = +[TSULocale currentLocale];
    currencyCode = [v5 currencyCode];

    if (([v4 containsObject:currencyCode] & 1) == 0)
    {
      [v4 insertObject:currencyCode atIndex:0];
    }
  }

  return v4;
}

+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)code
{
  codeCopy = code;
  defaultFractionDigits = 0;
  v7 = 0.0;
  if (CFNumberFormatterGetDecimalInfoForCurrencyCode(codeCopy, &defaultFractionDigits, &v7))
  {
    LODWORD(v4) = defaultFractionDigits & ~(defaultFractionDigits >> 31);
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSULocale defaultDecimalPlacesForCurrencyCode:]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULocale.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:996 isFatal:0 description:"Couldn't get decimal info for a currency code."];

    +[TSUAssertionHandler logBacktraceThrottled];
    LOWORD(v4) = 0;
  }

  return v4;
}

- (BOOL)isLanguageCharacterDirectionRightToLeft
{
  v2 = MEMORY[0x277CBEAF8];
  languageCode = [(TSULocale *)self languageCode];
  v4 = [v2 characterDirectionForLanguage:languageCode];

  return v4 == 2;
}

- (BOOL)isLanguageFormulasDirectionRightToLeft
{
  selfCopy = self;
  isLanguageCharacterDirectionRightToLeft = [(TSULocale *)self isLanguageCharacterDirectionRightToLeft];
  languageCode = [(TSULocale *)selfCopy languageCode];
  v5 = [languageCode isEqualToString:@"he"];

  languageCode2 = [(TSULocale *)selfCopy languageCode];
  LOBYTE(selfCopy) = [languageCode2 isEqualToString:@"ar"];

  return isLanguageCharacterDirectionRightToLeft & ((v5 | selfCopy) ^ 1);
}

- (id)checkoutNumberFormatter
{
  pthread_mutex_lock(&self->_formattersMutex);
  if ([(NSMutableArray *)self->_numberFormatters count])
  {
    lastObject = [(NSMutableArray *)self->_numberFormatters lastObject];
    [(NSMutableArray *)self->_numberFormatters removeLastObject];
  }

  else
  {
    lastObject = 0;
  }

  pthread_mutex_unlock(&self->_formattersMutex);
  if (!lastObject)
  {
    v4 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:0];
    [v4 setFormat:@"0"];
    lastObject = v4;
    [v4 setMinFractionDigits:0 maxFractionDigits:0x7FFFFFFFLL];
  }

  return lastObject;
}

- (void)returnNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (formatterCopy)
  {
    pthread_mutex_lock(&self->_formattersMutex);
    [(NSMutableArray *)self->_numberFormatters addObject:formatterCopy];
    pthread_mutex_unlock(&self->_formattersMutex);
  }
}

- (BOOL)isEqualViaFormattingAsDouble:(double)double :(double)a4
{
  if (double == a4)
  {
    return 1;
  }

  doubleCopy = double;
  if (double == 0.0)
  {
    double = a4;
  }

  if (fabs((doubleCopy - a4) / double) > 0.00000999999975)
  {
    return 0;
  }

  checkoutNumberFormatter = [(TSULocale *)self checkoutNumberFormatter];
  v9 = [checkoutNumberFormatter createStringWithValue:doubleCopy];
  v10 = [checkoutNumberFormatter createStringWithValue:a4];
  [(TSULocale *)self returnNumberFormatter:checkoutNumberFormatter];
  v4 = [v9 isEqualToString:v10];

  return v4;
}

- (id)checkoutScientificNumberFormatter
{
  pthread_mutex_lock(&self->_formattersMutex);
  if ([(NSMutableArray *)self->_scientificNumberFormatters count])
  {
    lastObject = [(NSMutableArray *)self->_scientificNumberFormatters lastObject];
    [(NSMutableArray *)self->_scientificNumberFormatters removeLastObject];
  }

  else
  {
    lastObject = 0;
  }

  pthread_mutex_unlock(&self->_formattersMutex);
  if (!lastObject)
  {
    v4 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:4];
    [v4 setFormat:@"0E+0"];
    lastObject = v4;
    [v4 setMinFractionDigits:0 maxFractionDigits:0x7FFFFFFFLL];
  }

  return lastObject;
}

- (void)returnScientificNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (formatterCopy)
  {
    pthread_mutex_lock(&self->_formattersMutex);
    [(NSMutableArray *)self->_scientificNumberFormatters addObject:formatterCopy];
    pthread_mutex_unlock(&self->_formattersMutex);
  }
}

- (void)_initializeNumberFormatterStringFromDoubleCache
{
  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock lock];
  if (!self->_noMinusSignCurrencyFormatter)
  {
    v3 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:0];
    noMinusSignCurrencyFormatter = self->_noMinusSignCurrencyFormatter;
    self->_noMinusSignCurrencyFormatter = v3;

    [(TSUDecimalFormatter *)self->_noMinusSignCurrencyFormatter setRoundingMode:6];
    [(TSUDecimalFormatter *)self->_noMinusSignCurrencyFormatter setMinIntegerDigits:1];
  }

  if (!self->_currencyFormatter)
  {
    v5 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:0];
    currencyFormatter = self->_currencyFormatter;
    self->_currencyFormatter = v5;

    [(TSUDecimalFormatter *)self->_currencyFormatter setRoundingMode:6];
    [(TSUDecimalFormatter *)self->_currencyFormatter setMinIntegerDigits:1];
  }

  if (!self->_noMinusSignPlainFormatter)
  {
    v7 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:0];
    noMinusSignPlainFormatter = self->_noMinusSignPlainFormatter;
    self->_noMinusSignPlainFormatter = v7;

    [(TSUDecimalFormatter *)self->_noMinusSignPlainFormatter setRoundingMode:6];
    [(TSUDecimalFormatter *)self->_noMinusSignPlainFormatter setMinIntegerDigits:1];
  }

  if (!self->_plainFormatter)
  {
    v9 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:0];
    plainFormatter = self->_plainFormatter;
    self->_plainFormatter = v9;

    [(TSUDecimalFormatter *)self->_plainFormatter setRoundingMode:6];
    [(TSUDecimalFormatter *)self->_plainFormatter setMinIntegerDigits:1];
  }

  numberFormatterStringFromDoubleWithFormatLock = self->_numberFormatterStringFromDoubleWithFormatLock;

  [(NSLock *)numberFormatterStringFromDoubleWithFormatLock unlock];
}

- (id)numberFormatterStringFromDouble:(double)double withFormat:(id)format useDecimalPlaces:(BOOL)places minDecimalPlaces:(unsigned __int16)decimalPlaces decimalPlaces:(unsigned __int16)a7 showThousandsSeparator:(BOOL)separator currencyCode:(id)code suppressMinusSign:(BOOL)self0
{
  separatorCopy = separator;
  v12 = a7;
  decimalPlacesCopy = decimalPlaces;
  placesCopy = places;
  formatCopy = format;
  codeCopy = code;
  if (!self->_plainFormatter)
  {
    [(TSULocale *)self _initializeNumberFormatterStringFromDoubleCache];
  }

  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock lock];
  if (codeCopy && [codeCopy length])
  {
    v17 = &OBJC_IVAR___TSULocale__currencyFormatter;
    if (sign)
    {
      v17 = &OBJC_IVAR___TSULocale__noMinusSignCurrencyFormatter;
      v18 = &OBJC_IVAR___TSULocale__activeNoMinusSignCurrencyCode;
    }

    else
    {
      v18 = &OBJC_IVAR___TSULocale__activeCurrencyCode;
    }

    v19 = *(&self->super.super.isa + *v17);
    v20 = *(&self->super.super.isa + *v18);
    if (([codeCopy isEqualToString:v20] & 1) == 0)
    {
      [(TSUDecimalFormatter *)v19 harmonizedSetCurrency:codeCopy locale:self];
      v21 = [codeCopy copy];

      v20 = v21;
    }
  }

  else
  {
    if (sign)
    {
      noMinusSignPlainFormatter = self->_noMinusSignPlainFormatter;
    }

    else
    {
      noMinusSignPlainFormatter = self->_plainFormatter;
    }

    v19 = noMinusSignPlainFormatter;
    v20 = 0;
  }

  [(TSUDecimalFormatter *)v19 setFormat:formatCopy];
  if (placesCopy)
  {
    if (v12 == 65534)
    {
      v23 = 0;
    }

    else
    {
      v23 = decimalPlacesCopy;
    }

    if (v12 == 65534)
    {
      v24 = 0x7FFFFFFFLL;
    }

    else
    {
      v24 = v12;
    }

    [(TSUDecimalFormatter *)v19 setMinFractionDigits:v23 maxFractionDigits:v24];
  }

  if (sign)
  {
    [(TSUDecimalFormatter *)v19 setMinusSign:&stru_28862C2A0];
  }

  [(TSUDecimalFormatter *)v19 setUseGroupingSeparator:separatorCopy];
  if (separatorCopy && ![(TSUDecimalFormatter *)v19 groupingSize])
  {
    formattingSymbols = [(TSULocale *)self formattingSymbols];
    -[TSUDecimalFormatter setGroupingSize:](v19, "setGroupingSize:", [formattingSymbols groupingSize]);
  }

  v26 = [(TSUDecimalFormatter *)v19 createStringWithValue:double];

  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock unlock];

  return v26;
}

- (void)performICUDateUsingBlock:(id)block
{
  blockCopy = block;
  [(NSRecursiveLock *)self->_icuDateBlockUsingLock lock];
  blockCopy[2]();
  [(NSRecursiveLock *)self->_icuDateBlockUsingLock unlock];
}

- (id)localeSpecificStorageForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    [(NSLock *)self->_localeSpecificStorageLock lock];
    v5 = [(NSMutableDictionary *)self->_localeSpecificStorage objectForKey:keyCopy];
    [(NSLock *)self->_localeSpecificStorageLock unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLocaleSpecificStorage:(id)storage forKey:(id)key
{
  storageCopy = storage;
  keyCopy = key;
  if (keyCopy)
  {
    [(NSLock *)self->_localeSpecificStorageLock lock];
    localeSpecificStorage = self->_localeSpecificStorage;
    if (storageCopy)
    {
      [(NSMutableDictionary *)localeSpecificStorage setObject:storageCopy forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)localeSpecificStorage removeObjectForKey:keyCopy];
    }

    [(NSLock *)self->_localeSpecificStorageLock unlock];
  }
}

- (id)localizedStringWithFormat:(id)format
{
  formatCopy = format;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  locale = [(TSULocale *)self locale];
  v7 = [v5 initWithFormat:formatCopy locale:locale arguments:&v10];

  return v7;
}

- (int64_t)localizedCompare:(id)compare toString:(id)string
{
  compareCopy = compare;
  stringCopy = string;
  v8 = [compareCopy length];
  locale = [(TSULocale *)self locale];
  v10 = [compareCopy compare:stringCopy options:0 range:0 locale:{v8, locale}];

  return v10;
}

- (int64_t)localizedCaseInsensitiveCompare:(id)compare toString:(id)string
{
  compareCopy = compare;
  stringCopy = string;
  v8 = [compareCopy length];
  locale = [(TSULocale *)self locale];
  v10 = [compareCopy compare:stringCopy options:1 range:0 locale:{v8, locale}];

  return v10;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_280A65C98)
  {
    v8 = objc_opt_class();
    [v8 setLocalizedStringBundle:CFBundleGetMainBundle()];
    v9 = CFBundleCopyBundleURL(qword_280A65C98);
    CFRelease(v9);
  }

  objc_sync_exit(selfCopy);

  return keyCopy;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory
{
  v5 = [(TSULocale *)self URLForResource:resource withExtension:extension subdirectory:subdirectory inBundle:qword_280A65C98];

  return v5;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundleWithURL:(id)l
{
  resourceCopy = resource;
  extensionCopy = extension;
  subdirectoryCopy = subdirectory;
  v13 = CFBundleCreate(*MEMORY[0x277CBECE8], l);
  v14 = [(TSULocale *)self URLForResource:resourceCopy withExtension:extensionCopy subdirectory:subdirectoryCopy inBundle:v13];
  CFRelease(v13);

  return v14;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundle:(__CFBundle *)bundle
{
  v20[1] = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  extensionCopy = extension;
  subdirectoryCopy = subdirectory;
  v13 = CFBundleCopyBundleLocalizations(bundle);
  localeIdentifierWithLanguageScriptAndRegionOnly = [(TSULocale *)self localeIdentifierWithLanguageScriptAndRegionOnly];
  v20[0] = localeIdentifierWithLanguageScriptAndRegionOnly;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v16 = CFBundleCopyLocalizationsForPreferences(v13, v15);
  ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
  v18 = CFBundleCopyResourceURLForLocalization(bundle, resourceCopy, extensionCopy, subdirectoryCopy, ValueAtIndex);
  CFRelease(v13);
  CFRelease(v16);

  return v18;
}

- (BOOL)currencyUsesRightToLeftWritingDirection
{
  languageCode = [(TSULocale *)self languageCode];
  v4 = [languageCode isEqualToString:@"ar"];

  if (!v4)
  {
    return 0;
  }

  formattingSymbols = [(TSULocale *)self formattingSymbols];
  version = [formattingSymbols version];
  v7 = [version stringByReplacingOccurrencesOfString:@"*" withString:&stru_28862C2A0];

  if ([v7 integerValue] <= 1799)
  {
    numberingSystem = [(TSULocale *)self numberingSystem];
    v8 = [numberingSystem hasPrefix:@"arab"];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)formattedForDollarFunction:(const TSUDecimal *)function precision:(int)precision forLocale:(id)locale
{
  localeCopy = locale;
  os_unfair_lock_lock(&unk_280A63988);
  v9 = qword_280A63998;
  if (qword_280A63998)
  {
    v10 = qword_280A63990 == localeCopy;
  }

  else
  {
    v10 = 0;
  }

  if (v10 || (objc_storeStrong(&qword_280A63990, locale), v11 = objc_alloc_init(MEMORY[0x277CCABB8]), v12 = qword_280A63998, qword_280A63998 = v11, v12, [qword_280A63998 setNumberStyle:10], objc_msgSend(qword_280A63990, "locale"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(qword_280A63998, "setLocale:", v13), v13, objc_msgSend(qword_280A63998, "setRoundingMode:", 6), objc_msgSend(localeCopy, "currencyCode"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(qword_280A63998, "setCurrencyCode:", v14), v14, objc_msgSend(qword_280A63998, "setMinimumIntegerDigits:", 1), objc_msgSend(qword_280A63998, "setUsesGroupingSeparator:", 1), (v9 = qword_280A63998) != 0))
  {
    [v9 setMinimumFractionDigits:precision];
    [qword_280A63998 setMaximumFractionDigits:precision];
    v15 = qword_280A63998;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:TSUDecimal::doubleValue(function)];
    v17 = [v15 stringFromNumber:v16];
  }

  else
  {
    v17 = 0;
  }

  os_unfair_lock_unlock(&unk_280A63988);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = &stru_28862C2A0;
  }

  v19 = v18;

  return v18;
}

@end