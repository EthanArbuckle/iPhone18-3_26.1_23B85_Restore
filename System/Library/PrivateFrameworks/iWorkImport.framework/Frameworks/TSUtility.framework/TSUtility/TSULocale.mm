@interface TSULocale
+ (BOOL)localeIsAutoUpdating:(id)a3;
+ (NSLocale)applicationLocale;
+ (TSULocale)currentLocale;
+ (TSULocale)preferredLocale;
+ (TSULocale)usEnglishLocale;
+ (id)allSupportedTemplatePickerLanguages;
+ (id)allSupportedTier1Languages;
+ (id)allSupportedTier3Languages;
+ (id)canonicalizeLocaleIdentifier:(id)a3;
+ (id)canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:(id)a3;
+ (id)canonicalizeLocaleIdentifierWithLanguageAndScriptOnly:(id)a3;
+ (id)canonicalizeLocaleIdentifierWithLanguageOnly:(id)a3;
+ (id)canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:(id)a3;
+ (id)currencySymbolForCurrencyCode:(id)a3;
+ (id)currentLocaleCurrencyCode;
+ (id)deducedScriptForLocale:(id)a3;
+ (id)displayNameForCode:(id)a3 ofType:(id)a4 displayStandalone:(BOOL)a5;
+ (id)displayNameForCurrencyCode:(id)a3;
+ (id)formattedForDollarFunction:(const TSUDecimal *)a3 precision:(int)a4 forLocale:(id)a5;
+ (id)localeForLocaleIdentifier:(id)a3 documentLanguageIdentifier:(id)a4 formattingSymbolsVersion:(id)a5;
+ (id)localeIDWithDefaultRegionCode:(id)a3;
+ (id)localeIDWithoutDefaultRegionCode:(id)a3 avoidAmbiguousCases:(BOOL)a4;
+ (id)localeIdentifierWithLanguageVariantAndRegionSubtagRemoved:(id)a3;
+ (id)preferredLanguages;
+ (id)regionSubtagAwareComponentsFromLocaleIdentifier:(id)a3;
+ (id)sanitizedLocaleIdentifierForIdentifier:(id)a3;
+ (id)simplifiedDisplayNameForLocaleID:(id)a3 displayStandalone:(BOOL)a4;
+ (id)userVisibleCurrencyCodes;
+ (unint64_t)autoupdatingCurrentLocaleChangeCount;
+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)a3;
+ (void)initialize;
+ (void)saveLocaleForReuse:(id)a3;
+ (void)setLocalizedStringBundle:(__CFBundle *)a3;
- (BOOL)currencyUsesRightToLeftWritingDirection;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualViaFormattingAsDouble:(double)a3 :(double)a4;
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
- (TSULocale)initWithLocale:(id)a3;
- (TSULocale)initWithLocale:(id)a3 documentLanguageIdentifier:(id)a4 useAutoupdating:(BOOL)a5 formattingSymbols:(id)a6;
- (TSULocale)initWithLocale:(id)a3 formattingSymbols:(id)a4;
- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5;
- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5 inBundle:(__CFBundle *)a6;
- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5 inBundleWithURL:(id)a6;
- (id)checkoutNumberFormatter;
- (id)checkoutScientificNumberFormatter;
- (id)copyWithDocumentLanguageIdentifier:(id)a3;
- (id)copyWithGregorianCalendar;
- (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)a3;
- (id)currencyCodeForCurrencySymbol:(id)a3;
- (id)currencySymbolForCurrencyCode:(id)a3;
- (id)description;
- (id)displayLanguageNameWithStandalone:(BOOL)a3;
- (id)displayNameForCurrencyCode:(id)a3;
- (id)displayNameWithCurrencySymbolForCurrencyCode:(id)a3 standardizeWhitespace:(BOOL)a4;
- (id)languageIdentifierWithLanguageAndRegionOnly;
- (id)localeIdentifierWithCalendarAndNumberingSystem;
- (id)localeIdentifierWithLanguageAndRegionOnly;
- (id)localeIdentifierWithLanguageScriptAndRegionOnly;
- (id)localeSpecificStorageForKey:(id)a3;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
- (id)localizedStringWithFormat:(id)a3;
- (id)numberFormatterStringFromDouble:(double)a3 withFormat:(id)a4 useDecimalPlaces:(BOOL)a5 minDecimalPlaces:(unsigned __int16)a6 decimalPlaces:(unsigned __int16)a7 showThousandsSeparator:(BOOL)a8 currencyCode:(id)a9 suppressMinusSign:(BOOL)a10;
- (int64_t)localizedCaseInsensitiveCompare:(id)a3 toString:(id)a4;
- (int64_t)localizedCompare:(id)a3 toString:(id)a4;
- (unint64_t)autoupdatingCurrentLocaleChangeCount;
- (unint64_t)groupingSize;
- (unint64_t)hash;
- (void)_initializeNumberFormatterStringFromDoubleCache;
- (void)dealloc;
- (void)performICUDateUsingBlock:(id)a3;
- (void)returnNumberFormatter:(id)a3;
- (void)returnScientificNumberFormatter:(id)a3;
- (void)setLocaleSpecificStorage:(id)a3 forKey:(id)a4;
@end

@implementation TSULocale

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (void)setLocalizedStringBundle:(__CFBundle *)a3
{
  if (qword_280A65C98)
  {
    CFRelease(qword_280A65C98);
  }

  qword_280A65C98 = a3;

  CFRetain(a3);
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
  v2 = [a1 currentLocale];
  v3 = [v2 documentLanguageIdentifier];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

+ (TSULocale)currentLocale
{
  v3 = qword_280A63910;
  if (!qword_280A63910)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (!qword_280A63910)
    {
      v5 = [TSULocale alloc];
      v6 = [MEMORY[0x277CBEAF8] currentLocale];
      v7 = [MEMORY[0x277CBEAF8] tsu_firstPreferredLocalization];
      v8 = [(TSULocale *)v5 initWithLocale:v6 documentLanguageIdentifier:v7 useAutoupdating:1 formattingSymbols:0];
      v9 = qword_280A63910;
      qword_280A63910 = v8;
    }

    objc_sync_exit(v4);

    v3 = qword_280A63910;
  }

  return v3;
}

+ (TSULocale)preferredLocale
{
  v3 = qword_280A63918;
  if (!qword_280A63918)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (!qword_280A63918)
    {
      v5 = [TSULocale alloc];
      v6 = TSUPreferredLocale();
      v7 = [MEMORY[0x277CBEAF8] tsu_firstPreferredLocalization];
      v8 = [(TSULocale *)v5 initWithLocale:v6 documentLanguageIdentifier:v7 useAutoupdating:1 formattingSymbols:0];
      v9 = qword_280A63918;
      qword_280A63918 = v8;
    }

    objc_sync_exit(v4);

    v3 = qword_280A63918;
  }

  return v3;
}

+ (NSLocale)applicationLocale
{
  v2 = +[TSULocale currentLocale];
  v3 = [v2 locale];

  return v3;
}

+ (TSULocale)usEnglishLocale
{
  v3 = qword_280A63920;
  if (!qword_280A63920)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (!qword_280A63920)
    {
      v5 = [TSULocale alloc];
      v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
      v7 = [(TSULocale *)v5 initWithLocale:v6 documentLanguageIdentifier:@"en" useAutoupdating:0 formattingSymbols:0];
      v8 = qword_280A63920;
      qword_280A63920 = v7;
    }

    objc_sync_exit(v4);

    v3 = qword_280A63920;
  }

  return v3;
}

+ (id)regionSubtagAwareComponentsFromLocaleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v3];
  v6 = [v5 mutableCopy];

  v7 = [v4 countryCode];
  if (v7)
  {
    [v6 setObject:v7 forKey:*MEMORY[0x277CBE690]];
  }

  v8 = [v6 copy];

  return v8;
}

+ (id)canonicalizeLocaleIdentifier:(id)a3
{
  v3 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:a3];
  v4 = [v3 mutableCopy];

  v5 = *MEMORY[0x277CBE720];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE720]];
  v7 = [v6 uppercaseString];
  v8 = [v7 isEqualToString:@"POSIX"];

  if (v8)
  {
    [v4 removeObjectForKey:v5];
  }

  v9 = MEMORY[0x277CBEAF8];
  v10 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
  v11 = [v9 canonicalLocaleIdentifierFromString:v10];

  return v11;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageOnly:(id)a3
{
  v3 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  return v4;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:(id)a3
{
  v3 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:a3];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v5];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x277CBE690];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:v8];
    [v4 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = MEMORY[0x277CBEAF8];
  v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
  v13 = [v11 canonicalLocaleIdentifierFromString:v12];

  return v13;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageAndScriptOnly:(id)a3
{
  v3 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:a3];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v5];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x277CBE6F8];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:v8];
    [v4 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = MEMORY[0x277CBEAF8];
  v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
  v13 = [v11 canonicalLocaleIdentifierFromString:v12];

  return v13;
}

+ (id)canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:(id)a3
{
  v3 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:a3];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v5];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x277CBE690];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:v8];
    [v4 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = *MEMORY[0x277CBE6F8];
  v12 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];

  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:v11];
    [v4 setObject:v13 forKeyedSubscript:v11];
  }

  v14 = MEMORY[0x277CBEAF8];
  v15 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
  v16 = [v14 canonicalLocaleIdentifierFromString:v15];

  return v16;
}

+ (id)sanitizedLocaleIdentifierForIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:a3];
  v4 = [v3 languageCode];
  if (v4 && ([MEMORY[0x277CBEAF8] ISOLanguageCodes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, v6))
  {
    v7 = [v3 localeIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deducedScriptForLocale:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:v4];
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

        if ([v14 isEqualToString:v4])
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

+ (id)localeIDWithDefaultRegionCode:(id)a3
{
  v50[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:v4];
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
      v13 = [TSULocale deducedScriptForLocale:v4];
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
        v32 = [MEMORY[0x277CBEAF8] currentLocale];
        v33 = [v32 objectForKey:v14];
        [v6 setObject:v33 forKeyedSubscript:v14];
      }
    }
  }

  v34 = [v6 allKeys];
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
  v38 = v34;
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

+ (id)localeIdentifierWithLanguageVariantAndRegionSubtagRemoved:(id)a3
{
  v3 = a3;
  v4 = [TSULocale deducedScriptForLocale:v3];
  v5 = [TSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:v3];
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

+ (id)localeIDWithoutDefaultRegionCode:(id)a3 avoidAmbiguousCases:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 regionSubtagAwareComponentsFromLocaleIdentifier:v6];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x277CBE6C8];
  if (v4)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
    v11 = [&unk_28864B608 containsObject:v10];

    if (v11)
    {
      v12 = v6;
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

+ (id)simplifiedDisplayNameForLocaleID:(id)a3 displayStandalone:(BOOL)a4
{
  v4 = a4;
  v5 = [TSULocale localeIDWithDefaultRegionCode:a3];
  v6 = [TSULocale localeIDWithoutDefaultRegionCode:v5 avoidAmbiguousCases:1];

  v7 = [TSULocale displayNameForCode:v6 ofType:*MEMORY[0x277CBE6C0] displayStandalone:v4];
  v8 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSULocale simplifiedDisplayNameForLocaleID:displayStandalone:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULocale.mm"];
    v11 = +[TSULocale applicationLocale];
    v12 = [v11 localeIdentifier];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:438 isFatal:0 description:"Nil display name returned for locale ID %@", v12];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = &stru_28862C2A0;
  }

  v13 = v8;

  return v8;
}

+ (id)displayNameForCode:(id)a3 ofType:(id)a4 displayStandalone:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  v8 = +[TSULocale applicationLocale];
  v9 = *MEMORY[0x277CBE6C0];
  v10 = *MEMORY[0x277CBE6C8];
  if (*MEMORY[0x277CBE6C0] != v7 && v10 != v7 && *MEMORY[0x277CBE690] != v7)
  {
    v13 = v9;

    v7 = v13;
  }

  if (v7 == v10 && [v6 containsString:@"-"])
  {
    v14 = v9;

    v7 = v14;
  }

  v15 = [v8 displayNameForKey:v7 value:v6];

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

+ (BOOL)localeIsAutoUpdating:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v5 = v4 == v3;

  return v5;
}

+ (id)localeForLocaleIdentifier:(id)a3 documentLanguageIdentifier:(id)a4 formattingSymbolsVersion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@, %@", v7, v8, v9];
    os_unfair_lock_lock(&dword_280A63948);
    v10 = [qword_280A63928 objectForKey:v11];
    os_unfair_lock_unlock(&dword_280A63948);
  }

  return v10;
}

+ (void)saveLocaleForReuse:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v11 = v3;
  v5 = [v3 localeIdentifier];
  v6 = [v11 documentLanguageIdentifier];
  v7 = [v11 formattingSymbols];
  v8 = [v7 version];
  v9 = [v4 stringWithFormat:@"%@, %@, %@", v5, v6, v8];

  os_unfair_lock_lock(&dword_280A63948);
  v10 = [qword_280A63928 objectForKey:v9];

  if (!v10)
  {
    [qword_280A63928 setObject:v11 forKey:v9];
  }

  os_unfair_lock_unlock(&dword_280A63948);
}

- (TSULocale)initWithLocale:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x277CBE6C8]];
  v6 = [(TSULocale *)self initWithLocale:v4 documentLanguageIdentifier:v5 useAutoupdating:0 formattingSymbols:0];

  return v6;
}

- (TSULocale)initWithLocale:(id)a3 formattingSymbols:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  v9 = [(TSULocale *)self initWithLocale:v6 documentLanguageIdentifier:v8 useAutoupdating:0 formattingSymbols:v7];

  return v9;
}

- (TSULocale)initWithLocale:(id)a3 documentLanguageIdentifier:(id)a4 useAutoupdating:(BOOL)a5 formattingSymbols:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v62.receiver = self;
  v62.super_class = TSULocale;
  v13 = [(TSULocale *)&v62 init];
  v14 = v13;
  if (!v13)
  {
    v17 = 0;
    goto LABEL_6;
  }

  if (v10 && !v11)
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
  if (!v10 || !v11)
  {
LABEL_6:
    v18 = v11;
    goto LABEL_35;
  }

  if (v12)
  {
    v19 = [v12 numberingSystem];
    if ([v19 isEqualToString:@"arab"])
    {
      v20 = [v10 languageCode];
      v21 = [v20 isEqualToString:@"en"];

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

  v18 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v11];

  v24 = [v10 localeIdentifier];
  obj = [TSULocale canonicalizeLocaleIdentifier:v24];

  if (v12)
  {
    [v12 version];
  }

  else
  {
    [TSUFormattingSymbols defaultFormattingSymbolsVersionForLocale:v10];
  }
  v58 = ;
  if (v7 || [TSUFormattingSymbols versionIsForACustomizedLocale:v58]|| ([TSULocale localeForLocaleIdentifier:obj documentLanguageIdentifier:v18 formattingSymbolsVersion:v58], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    pthread_mutex_init(&v13->_formattersMutex, 0);
    objc_storeStrong(&v13->_localeIdentifier, obj);
    if (v7)
    {
      v27 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v13->_localeIdentifier];
    }

    locale = v13->_locale;
    v13->_locale = v27;

    v13->_isAutoUpdating = v7;
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

    v35 = v12;
    if (!v12)
    {
      v35 = [TSUFormattingSymbols defaultFormattingSymbolsForLocale:v13->_locale];
    }

    objc_storeStrong(&v13->_formattingSymbols, v35);
    if (!v12)
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

    v46 = [v10 localeIdentifier];
    v13->_dateComponentOrdering = sub_27702F6A4(v46);

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

    if (v7 || (-[TSULocale formattingSymbols](v13, "formattingSymbols"), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 hasUserCustomizations], v55, (v56 & 1) != 0))
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

- (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)a3
{
  v5 = [(TSULocale *)self formattingSymbols];
  v6 = [TSUDecimalFormatter createHarmonizedDecimalFormatterOfStyle:a3 locale:self formattingSymbols:v5];

  return v6;
}

- (id)languageIdentifierWithLanguageAndRegionOnly
{
  v2 = MEMORY[0x277CBEAF8];
  v3 = [(TSULocale *)self localeIdentifier];
  v4 = [v2 canonicalLanguageIdentifierFromString:v3];

  v5 = [v4 componentsSeparatedByString:@"@"];
  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

- (id)localeIdentifierWithLanguageAndRegionOnly
{
  v2 = [(TSULocale *)self localeIdentifier];
  v3 = [TSULocale canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:v2];

  return v3;
}

- (id)localeIdentifierWithLanguageScriptAndRegionOnly
{
  v2 = [(TSULocale *)self localeIdentifier];
  v3 = [TSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:v2];

  return v3;
}

- (id)localeIdentifierWithCalendarAndNumberingSystem
{
  v3 = [(TSULocale *)self localeIdentifier];
  v4 = [TSULocale regionSubtagAwareComponentsFromLocaleIdentifier:v3];
  v5 = [v4 mutableCopy];

  v6 = [(TSULocale *)self formattingSymbols];
  v7 = [v6 calendar];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *MEMORY[0x277CBE5C0];
  }

  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CBEE88]];

  v10 = [(TSULocale *)self formattingSymbols];
  v11 = [v10 numberingSystem];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"latn";
  }

  [v5 setObject:v13 forKeyedSubscript:@"numbers"];

  v14 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v5];

  return v14;
}

- (id)copyWithDocumentLanguageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [TSULocale alloc];
  v6 = [(TSULocale *)self locale];
  v7 = [(TSULocale *)self isAutoUpdating];
  v8 = [(TSULocale *)self formattingSymbols];
  v9 = [(TSULocale *)v5 initWithLocale:v6 documentLanguageIdentifier:v4 useAutoupdating:v7 formattingSymbols:v8];

  return v9;
}

- (id)copyWithGregorianCalendar
{
  v2 = [(TSULocale *)self locale];
  v3 = [v2 calendarIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBE5C0]];

  if (v4)
  {

    return self;
  }

  else
  {
    v6 = [TSULocale alloc];
    v7 = [(TSULocale *)self gregorianCalendarLocale];
    v8 = [(TSULocale *)v6 initWithLocale:v7];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, v4);
    if (v6 && (-[TSULocale localeIdentifier](self, "localeIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v6 localeIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) != 0) && (v10 = -[TSULocale isAutoUpdating](self, "isAutoUpdating"), v10 == objc_msgSend(v6, "isAutoUpdating")))
    {
      v13 = [(TSULocale *)self formattingSymbols];

      if (v13)
      {
        v14 = [(TSULocale *)self formattingSymbols];
        v15 = [v6 formattingSymbols];
        v11 = [v14 isEqual:v15];
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
  v4 = [(TSULocale *)self localeIdentifier];
  [(TSUHasher *)v3 addObject:v4];

  v5 = [(TSULocale *)self formattingSymbols];
  v6 = [v5 version];
  [(TSUHasher *)v3 addObject:v6];

  v7 = [(TSUHasher *)v3 hashValue];
  return v7;
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

- (id)displayLanguageNameWithStandalone:(BOOL)a3
{
  v3 = a3;
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [(NSLocale *)self->_locale objectForKey:*MEMORY[0x277CBE6C8]];
  if ([v6 isEqualToString:@"zh"] && ((-[NSLocale objectForKey:](self->_locale, "objectForKey:", *MEMORY[0x277CBE6F8]), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (+[TSULocale deducedScriptForLocale:](TSULocale, "deducedScriptForLocale:", self->_localeIdentifier), (v7 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v7];
    v9 = [TSULocale displayNameForCode:v8 ofType:*MEMORY[0x277CBE6C0] displayStandalone:v3];
  }

  else
  {
    v9 = [TSULocale displayNameForCode:v6 ofType:v5 displayStandalone:v3];
  }

  return v9;
}

- (NSString)cacheKey
{
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_cacheKey)
    {
      if ([(TSULocale *)v4 isAutoUpdating])
      {
        v5 = self->_cacheKey;
        self->_cacheKey = @"NSAutoLocale";
      }

      else
      {
        v6 = MEMORY[0x277CCACA8];
        v5 = [(TSULocale *)v4 localeIdentifier];
        v7 = [(TSULocale *)v4 formattingSymbols];
        v8 = [v6 stringWithFormat:@"CFLocale:%@-%lu", v5, objc_msgSend(v7, "hash")];
        v9 = self->_cacheKey;
        self->_cacheKey = v8;
      }
    }

    objc_sync_exit(v4);

    cacheKey = self->_cacheKey;
  }

  return cacheKey;
}

- (NSString)numberingSystem
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 numberingSystem];

  return v3;
}

- (NSString)decimalSeparator
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 decimalSeparator];

  return v3;
}

- (NSString)groupingSeparator
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 groupingSeparator];

  return v3;
}

- (NSString)minusSign
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 minusSign];

  return v3;
}

- (NSString)listSeparator
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 listSeparator];

  return v3;
}

- (NSString)arrayColumnSeparator
{
  v2 = [(TSULocale *)self listSeparator];
  if ([(NSString *)v2 isEqualToString:@", "])
  {
    v3 = v2;
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
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 percentSymbol];

  return v3;
}

- (unint64_t)groupingSize
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 groupingSize];

  return v3;
}

- (NSString)currencyCode
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 currencyCode];

  return v3;
}

- (NSArray)standaloneMonthSymbols
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 standaloneMonths];

  return v3;
}

- (NSArray)standaloneWeekdaySymbols
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 standaloneWeekdays];

  return v3;
}

- (NSArray)shortStandaloneMonthSymbols
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 standaloneShortMonths];

  return v3;
}

- (NSArray)shortStandaloneWeekdaySymbols
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 standaloneShortWeekdays];

  return v3;
}

- (NSString)amString
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 amSymbol];

  return v3;
}

- (NSString)pmString
{
  v2 = [(TSULocale *)self formattingSymbols];
  v3 = [v2 pmSymbol];

  return v3;
}

- (id)currencySymbolForCurrencyCode:(id)a3
{
  v4 = a3;
  v5 = [(TSULocale *)self formattingSymbols];
  v6 = [v5 currencySymbolForCurrencyCode:v4];

  return v6;
}

- (id)displayNameWithCurrencySymbolForCurrencyCode:(id)a3 standardizeWhitespace:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [TSULocale displayNameForCurrencyCode:v6];
  v8 = [(TSULocale *)self currencySymbolForCurrencyCode:v6];
  if (v7)
  {
    if (v4)
    {
      v9 = [MEMORY[0x277CCAB50] whitespaceCharacterSet];
      [v9 addCharactersInString:@" "];
      v10 = [v7 tsu_stringByReplacingInstancesOfCharactersInSet:v9 withString:@" "];

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

- (id)currencyCodeForCurrencySymbol:(id)a3
{
  v4 = a3;
  v5 = [(TSULocale *)self formattingSymbols];
  v6 = [v5 currencyCodeForCurrencySymbol:v4];

  return v6;
}

- (id)displayNameForCurrencyCode:(id)a3
{
  v3 = [(NSLocale *)self->_locale displayNameForKey:*MEMORY[0x277CBE698] value:a3];

  return v3;
}

+ (id)currencySymbolForCurrencyCode:(id)a3
{
  v3 = a3;
  v4 = +[TSULocale currentLocale];
  v5 = [v4 currencySymbolForCurrencyCode:v3];

  return v5;
}

+ (id)displayNameForCurrencyCode:(id)a3
{
  v3 = a3;
  v4 = +[TSULocale currentLocale];
  v5 = [v4 displayNameForCurrencyCode:v3];

  return v5;
}

+ (id)currentLocaleCurrencyCode
{
  v2 = +[TSULocale currentLocale];
  v3 = [v2 currencyCode];

  return v3;
}

+ (id)userVisibleCurrencyCodes
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SFTDefaultsShowCompleteCurrencyList"];

  if (v3)
  {
    v4 = CFLocaleCopyCommonISOCurrencyCodes();
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"AUD", @"CAD", @"HKD", @"SGD", @"TWD", @"USD", @"EUR", @"CHF", @"SEK", @"DKK", @"NOK", @"MXN", @"GBP", @"BRL", @"INR", @"KRW", @"JPY", @"CNY", @"IDR", @"RUB", @"TRY", @"THB", @"PLN", @"ZAR", @"ARS", @"SAR", @"AED", @"EGP", @"HRK", @"CZK", @"ILS", @"HUF", @"RON", @"UAH", @"VND", @"MYR", 0}];
    v5 = +[TSULocale currentLocale];
    v6 = [v5 currencyCode];

    if (([v4 containsObject:v6] & 1) == 0)
    {
      [v4 insertObject:v6 atIndex:0];
    }
  }

  return v4;
}

+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)a3
{
  v3 = a3;
  defaultFractionDigits = 0;
  v7 = 0.0;
  if (CFNumberFormatterGetDecimalInfoForCurrencyCode(v3, &defaultFractionDigits, &v7))
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
  v3 = [(TSULocale *)self languageCode];
  v4 = [v2 characterDirectionForLanguage:v3];

  return v4 == 2;
}

- (BOOL)isLanguageFormulasDirectionRightToLeft
{
  v2 = self;
  v3 = [(TSULocale *)self isLanguageCharacterDirectionRightToLeft];
  v4 = [(TSULocale *)v2 languageCode];
  v5 = [v4 isEqualToString:@"he"];

  v6 = [(TSULocale *)v2 languageCode];
  LOBYTE(v2) = [v6 isEqualToString:@"ar"];

  return v3 & ((v5 | v2) ^ 1);
}

- (id)checkoutNumberFormatter
{
  pthread_mutex_lock(&self->_formattersMutex);
  if ([(NSMutableArray *)self->_numberFormatters count])
  {
    v3 = [(NSMutableArray *)self->_numberFormatters lastObject];
    [(NSMutableArray *)self->_numberFormatters removeLastObject];
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&self->_formattersMutex);
  if (!v3)
  {
    v4 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:0];
    [v4 setFormat:@"0"];
    v3 = v4;
    [v4 setMinFractionDigits:0 maxFractionDigits:0x7FFFFFFFLL];
  }

  return v3;
}

- (void)returnNumberFormatter:(id)a3
{
  v4 = a3;
  if (v4)
  {
    pthread_mutex_lock(&self->_formattersMutex);
    [(NSMutableArray *)self->_numberFormatters addObject:v4];
    pthread_mutex_unlock(&self->_formattersMutex);
  }
}

- (BOOL)isEqualViaFormattingAsDouble:(double)a3 :(double)a4
{
  if (a3 == a4)
  {
    return 1;
  }

  v6 = a3;
  if (a3 == 0.0)
  {
    a3 = a4;
  }

  if (fabs((v6 - a4) / a3) > 0.00000999999975)
  {
    return 0;
  }

  v8 = [(TSULocale *)self checkoutNumberFormatter];
  v9 = [v8 createStringWithValue:v6];
  v10 = [v8 createStringWithValue:a4];
  [(TSULocale *)self returnNumberFormatter:v8];
  v4 = [v9 isEqualToString:v10];

  return v4;
}

- (id)checkoutScientificNumberFormatter
{
  pthread_mutex_lock(&self->_formattersMutex);
  if ([(NSMutableArray *)self->_scientificNumberFormatters count])
  {
    v3 = [(NSMutableArray *)self->_scientificNumberFormatters lastObject];
    [(NSMutableArray *)self->_scientificNumberFormatters removeLastObject];
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&self->_formattersMutex);
  if (!v3)
  {
    v4 = [(TSULocale *)self createHarmonizedDecimalFormatterOfStyle:4];
    [v4 setFormat:@"0E+0"];
    v3 = v4;
    [v4 setMinFractionDigits:0 maxFractionDigits:0x7FFFFFFFLL];
  }

  return v3;
}

- (void)returnScientificNumberFormatter:(id)a3
{
  v4 = a3;
  if (v4)
  {
    pthread_mutex_lock(&self->_formattersMutex);
    [(NSMutableArray *)self->_scientificNumberFormatters addObject:v4];
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

- (id)numberFormatterStringFromDouble:(double)a3 withFormat:(id)a4 useDecimalPlaces:(BOOL)a5 minDecimalPlaces:(unsigned __int16)a6 decimalPlaces:(unsigned __int16)a7 showThousandsSeparator:(BOOL)a8 currencyCode:(id)a9 suppressMinusSign:(BOOL)a10
{
  v11 = a8;
  v12 = a7;
  v28 = a6;
  v13 = a5;
  v29 = a4;
  v16 = a9;
  if (!self->_plainFormatter)
  {
    [(TSULocale *)self _initializeNumberFormatterStringFromDoubleCache];
  }

  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock lock];
  if (v16 && [v16 length])
  {
    v17 = &OBJC_IVAR___TSULocale__currencyFormatter;
    if (a10)
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
    if (([v16 isEqualToString:v20] & 1) == 0)
    {
      [(TSUDecimalFormatter *)v19 harmonizedSetCurrency:v16 locale:self];
      v21 = [v16 copy];

      v20 = v21;
    }
  }

  else
  {
    if (a10)
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

  [(TSUDecimalFormatter *)v19 setFormat:v29];
  if (v13)
  {
    if (v12 == 65534)
    {
      v23 = 0;
    }

    else
    {
      v23 = v28;
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

  if (a10)
  {
    [(TSUDecimalFormatter *)v19 setMinusSign:&stru_28862C2A0];
  }

  [(TSUDecimalFormatter *)v19 setUseGroupingSeparator:v11];
  if (v11 && ![(TSUDecimalFormatter *)v19 groupingSize])
  {
    v25 = [(TSULocale *)self formattingSymbols];
    -[TSUDecimalFormatter setGroupingSize:](v19, "setGroupingSize:", [v25 groupingSize]);
  }

  v26 = [(TSUDecimalFormatter *)v19 createStringWithValue:a3];

  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock unlock];

  return v26;
}

- (void)performICUDateUsingBlock:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_icuDateBlockUsingLock lock];
  v4[2]();
  [(NSRecursiveLock *)self->_icuDateBlockUsingLock unlock];
}

- (id)localeSpecificStorageForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSLock *)self->_localeSpecificStorageLock lock];
    v5 = [(NSMutableDictionary *)self->_localeSpecificStorage objectForKey:v4];
    [(NSLock *)self->_localeSpecificStorageLock unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLocaleSpecificStorage:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    [(NSLock *)self->_localeSpecificStorageLock lock];
    localeSpecificStorage = self->_localeSpecificStorage;
    if (v8)
    {
      [(NSMutableDictionary *)localeSpecificStorage setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)localeSpecificStorage removeObjectForKey:v6];
    }

    [(NSLock *)self->_localeSpecificStorageLock unlock];
  }
}

- (id)localizedStringWithFormat:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [(TSULocale *)self locale];
  v7 = [v5 initWithFormat:v4 locale:v6 arguments:&v10];

  return v7;
}

- (int64_t)localizedCompare:(id)a3 toString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = [(TSULocale *)self locale];
  v10 = [v6 compare:v7 options:0 range:0 locale:{v8, v9}];

  return v10;
}

- (int64_t)localizedCaseInsensitiveCompare:(id)a3 toString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = [(TSULocale *)self locale];
  v10 = [v6 compare:v7 options:1 range:0 locale:{v8, v9}];

  return v10;
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (!qword_280A65C98)
  {
    v8 = objc_opt_class();
    [v8 setLocalizedStringBundle:CFBundleGetMainBundle()];
    v9 = CFBundleCopyBundleURL(qword_280A65C98);
    CFRelease(v9);
  }

  objc_sync_exit(v7);

  return v6;
}

- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5
{
  v5 = [(TSULocale *)self URLForResource:a3 withExtension:a4 subdirectory:a5 inBundle:qword_280A65C98];

  return v5;
}

- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5 inBundleWithURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = CFBundleCreate(*MEMORY[0x277CBECE8], a6);
  v14 = [(TSULocale *)self URLForResource:v10 withExtension:v11 subdirectory:v12 inBundle:v13];
  CFRelease(v13);

  return v14;
}

- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5 inBundle:(__CFBundle *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = CFBundleCopyBundleLocalizations(a6);
  v14 = [(TSULocale *)self localeIdentifierWithLanguageScriptAndRegionOnly];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v16 = CFBundleCopyLocalizationsForPreferences(v13, v15);
  ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
  v18 = CFBundleCopyResourceURLForLocalization(a6, v10, v11, v12, ValueAtIndex);
  CFRelease(v13);
  CFRelease(v16);

  return v18;
}

- (BOOL)currencyUsesRightToLeftWritingDirection
{
  v3 = [(TSULocale *)self languageCode];
  v4 = [v3 isEqualToString:@"ar"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(TSULocale *)self formattingSymbols];
  v6 = [v5 version];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"*" withString:&stru_28862C2A0];

  if ([v7 integerValue] <= 1799)
  {
    v9 = [(TSULocale *)self numberingSystem];
    v8 = [v9 hasPrefix:@"arab"];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)formattedForDollarFunction:(const TSUDecimal *)a3 precision:(int)a4 forLocale:(id)a5
{
  v8 = a5;
  os_unfair_lock_lock(&unk_280A63988);
  v9 = qword_280A63998;
  if (qword_280A63998)
  {
    v10 = qword_280A63990 == v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10 || (objc_storeStrong(&qword_280A63990, a5), v11 = objc_alloc_init(MEMORY[0x277CCABB8]), v12 = qword_280A63998, qword_280A63998 = v11, v12, [qword_280A63998 setNumberStyle:10], objc_msgSend(qword_280A63990, "locale"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(qword_280A63998, "setLocale:", v13), v13, objc_msgSend(qword_280A63998, "setRoundingMode:", 6), objc_msgSend(v8, "currencyCode"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(qword_280A63998, "setCurrencyCode:", v14), v14, objc_msgSend(qword_280A63998, "setMinimumIntegerDigits:", 1), objc_msgSend(qword_280A63998, "setUsesGroupingSeparator:", 1), (v9 = qword_280A63998) != 0))
  {
    [v9 setMinimumFractionDigits:a4];
    [qword_280A63998 setMaximumFractionDigits:a4];
    v15 = qword_280A63998;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:TSUDecimal::doubleValue(a3)];
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