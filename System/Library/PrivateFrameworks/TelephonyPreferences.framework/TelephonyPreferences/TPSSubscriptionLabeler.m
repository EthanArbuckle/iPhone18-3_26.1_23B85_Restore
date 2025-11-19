@interface TPSSubscriptionLabeler
+ (BOOL)_dictionary:(id)a3 containsCollationEquivalentKey:(id)a4;
+ (BOOL)isExclusivelyCJKString:(id)a3 characterSets:(id)a4;
+ (BOOL)isString:(id)a3 exclusivelyInCharacterSet:(USet *)a4;
+ (double)widthOfString:(id)a3 attributes:(id)a4;
+ (id)_groupStringsByCollationEquivalency:(id)a3;
+ (id)_resultWithAllCharacters:(id)a3 string:(id)a4;
+ (id)displayShortLabelStringsForLongFormShortLabels:(id)a3;
+ (id)fontAttributeDictionary;
+ (id)localizedBadgeLabelsForUnlocalizedLabels:(id)a3 languageIdentifiers:(id)a4;
+ (id)localizedBadgeLabelsForUnlocalizedLabels:(id)a3 languageStringOverrides:(id)a4;
+ (id)localizedLabelForLabel:(id)a3 longForm:(BOOL)a4 languageStringOverrides:(id)a5;
+ (id)localizedLabelsForLabels:(id)a3 languageIdentifiers:(id)a4;
+ (id)localizedLabelsForLabels:(id)a3 languageStringOverrides:(id)a4;
+ (id)localizedStringDictionaryForLanguageIdentifiers:(id)a3 selectedLanguage:(id *)a4;
+ (id)standardLabelIdentifiers;
+ (id)stringByShorteningString:(id)a3 maximumWidth:(double)a4 attributes:(id)a5;
+ (id)stringsByAbbreviatingToPrefixesOfStrings:(id)a3;
+ (id)stringsByClippingStrings:(id)a3 toWidthOfString:(id)a4;
+ (id)stringsByNumericallyDisambiguatingStrings:(id)a3;
- (TPSSubscriptionLabeler)initWithLabelStorage:(id)a3;
- (id)cachedLocalizedLabelsForUnlocalizedLabels:(id)a3 languageIdentifiers:(id)a4;
- (void)_validateLabelsForInstalledUnlocalizedLabels:(id)a3 languageIdentifiers:(id)a4;
@end

@implementation TPSSubscriptionLabeler

- (TPSSubscriptionLabeler)initWithLabelStorage:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = TPSSubscriptionLabeler;
  v5 = [(TPSSubscriptionLabeler *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [v4 path];
    v8 = [v6 dictionaryWithContentsOfFile:v7];
    labelDictionary = v5->_labelDictionary;
    v5->_labelDictionary = v8;

    v10 = v5->_labelDictionary;
    if (!v10)
    {
      v11 = objc_opt_new();
      v12 = v5->_labelDictionary;
      v5->_labelDictionary = v11;

      v10 = v5->_labelDictionary;
    }

    v13 = [(NSMutableDictionary *)v10 objectForKey:@"Language"];
    applicableLanguage = v5->_applicableLanguage;
    v5->_applicableLanguage = v13;

    v15 = [(NSMutableDictionary *)v5->_labelDictionary objectForKey:@"UnlocalizedLabels"];
    applicableUnlocalizedLabels = v5->_applicableUnlocalizedLabels;
    v5->_applicableUnlocalizedLabels = v15;

    v17 = [(NSMutableDictionary *)v5->_labelDictionary objectForKey:@"LocalizedLabel"];
    v18 = [(NSMutableDictionary *)v5->_labelDictionary objectForKey:@"ShortLocalizedLabel"];
    v19 = [TPSSubscriptionLabel labelsFromUnlocalizedLabels:v5->_applicableUnlocalizedLabels localizedLongLabels:v17 localizedBadgeLabels:v18];
    cachedResult = v5->_cachedResult;
    v5->_cachedResult = v19;

    v21 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    updatingLocale = v5->_updatingLocale;
    v5->_updatingLocale = v21;

    v23 = dispatch_queue_create("com.apple.telephony.labelstore", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v23;

    v25 = [v4 copy];
    url = v5->_url;
    v5->_url = v25;
  }

  return v5;
}

+ (id)localizedStringDictionaryForLanguageIdentifiers:(id)a3 selectedLanguage:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  if ([v5 count])
  {
    v7 = MEMORY[0x277CCA8D8];
    v8 = [v6 localizations];
    v9 = [v7 preferredLocalizationsFromArray:v8 forPreferences:v5];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__TPSSubscriptionLabeler_localizedStringDictionaryForLanguageIdentifiers_selectedLanguage___block_invoke;
    v12[3] = &unk_2782E3FE8;
    v14 = &v22;
    v13 = v6;
    v15 = &v16;
    [v9 enumerateObjectsUsingBlock:v12];
  }

  if (a4)
  {
    *a4 = v17[5];
  }

  v10 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v10;
}

void __91__TPSSubscriptionLabeler_localizedStringDictionaryForLanguageIdentifiers_selectedLanguage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) localizedStringsForTable:@"SubscriptionLabel" localization:?];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

+ (id)localizedLabelsForLabels:(id)a3 languageIdentifiers:(id)a4
{
  v6 = a3;
  v7 = [a1 localizedStringDictionaryForLanguageIdentifiers:a4 selectedLanguage:0];
  v8 = [a1 localizedLabelsForLabels:v6 languageStringOverrides:v7];

  return v8;
}

+ (id)localizedLabelsForLabels:(id)a3 languageStringOverrides:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [a1 localizedLabelForLabel:*(*(&v17 + 1) + 8 * i) longForm:1 languageStringOverrides:{v7, v17}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)localizedLabelForLabel:(id)a3 longForm:(BOOL)a4 languageStringOverrides:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = v9;
  if ([v9 hasPrefix:@"_$<"])
  {
    v10 = v9;
    if ([v9 hasSuffix:@">$_"])
    {
      v11 = [v9 substringWithRange:{3, objc_msgSend(v9, "length") - 6}];
      if (v8)
      {
        v12 = [v8 objectForKey:@"_$<SUBSCRIPTION_LABEL_UNKNOWN>$_"];
        v13 = v12;
        v14 = @"untitled";
        if (v12)
        {
          v14 = v12;
        }

        v15 = v14;

        v16 = [v8 objectForKey:v11];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v15;
        }

        v10 = v18;

        if (a4)
        {
          goto LABEL_18;
        }

        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_SHORT", v11];
        v20 = [v8 objectForKey:v19];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v10;
        }

        v23 = v22;
      }

      else
      {
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v19 localizedStringForKey:@"_$<SUBSCRIPTION_LABEL_UNKNOWN>$_" value:@"untitled" table:@"SubscriptionLabel"];

        v10 = [v19 localizedStringForKey:v11 value:v24 table:@"SubscriptionLabel"];

        if (a4)
        {
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_SHORT", v11];
        v23 = [v19 localizedStringForKey:v21 value:v10 table:@"SubscriptionLabel"];
      }

      v25 = v23;

      v10 = v25;
      goto LABEL_17;
    }
  }

LABEL_19:
  if (!a4)
  {
    v26 = [v10 localizedUppercaseString];

    v10 = v26;
  }

  return v10;
}

- (id)cachedLocalizedLabelsForUnlocalizedLabels:(id)a3 languageIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__TPSSubscriptionLabeler_cachedLocalizedLabelsForUnlocalizedLabels_languageIdentifiers___block_invoke;
  v13[3] = &unk_2782E4010;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(accessQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __88__TPSSubscriptionLabeler_cachedLocalizedLabelsForUnlocalizedLabels_languageIdentifiers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _validateLabelsForInstalledUnlocalizedLabels:*(a1 + 40) languageIdentifiers:*(a1 + 48)];
  v2 = [*(a1 + 32) cachedResult];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_validateLabelsForInstalledUnlocalizedLabels:(id)a3 languageIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v8 = [objc_opt_class() localizedStringDictionaryForLanguageIdentifiers:v7 selectedLanguage:&v28];

  v9 = v28;
  if (!v8)
  {
    v10 = [(TPSSubscriptionLabeler *)self updatingLocale];
    v11 = [v10 languageCode];

    v9 = v11;
  }

  v12 = [(TPSSubscriptionLabeler *)self applicableLanguage];
  v13 = [v9 isEqualToString:v12];

  v14 = [(TPSSubscriptionLabeler *)self applicableUnlocalizedLabels];
  v15 = [v6 isEqual:v14];

  if (!v13 || (v15 & 1) == 0)
  {
    v16 = [objc_opt_class() localizedBadgeLabelsForUnlocalizedLabels:v6 languageStringOverrides:v8];
    v17 = [objc_opt_class() localizedLabelsForLabels:v6 languageStringOverrides:v8];
    v18 = [v17 copy];
    v19 = [(TPSSubscriptionLabeler *)self labelDictionary];
    [v19 setObject:v6 forKey:@"UnlocalizedLabels"];

    v20 = [(TPSSubscriptionLabeler *)self labelDictionary];
    [v20 setObject:v9 forKey:@"Language"];

    v21 = [(TPSSubscriptionLabeler *)self labelDictionary];
    [v21 setObject:v18 forKey:@"LocalizedLabel"];

    v22 = [(TPSSubscriptionLabeler *)self labelDictionary];
    [v22 setObject:v16 forKey:@"ShortLocalizedLabel"];

    v23 = MEMORY[0x277CCAC58];
    v24 = [(TPSSubscriptionLabeler *)self labelDictionary];
    v25 = [v23 dataWithPropertyList:v24 format:200 options:0 error:0];

    v26 = [(TPSSubscriptionLabeler *)self url];
    [v25 writeToURL:v26 atomically:1];

    [(TPSSubscriptionLabeler *)self setApplicableLanguage:v9];
    [(TPSSubscriptionLabeler *)self setApplicableUnlocalizedLabels:v6];
    v27 = [TPSSubscriptionLabel labelsFromUnlocalizedLabels:v6 localizedLongLabels:v18 localizedBadgeLabels:v16];
    [(TPSSubscriptionLabeler *)self setCachedResult:v27];
  }
}

+ (id)localizedBadgeLabelsForUnlocalizedLabels:(id)a3 languageStringOverrides:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [objc_opt_class() localizedLabelForLabel:*(*(&v18 + 1) + 8 * i) longForm:0 languageStringOverrides:{v7, v18}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [a1 displayShortLabelStringsForLongFormShortLabels:v8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)localizedBadgeLabelsForUnlocalizedLabels:(id)a3 languageIdentifiers:(id)a4
{
  v6 = a3;
  v7 = [a1 localizedStringDictionaryForLanguageIdentifiers:a4 selectedLanguage:0];
  v8 = [a1 localizedBadgeLabelsForUnlocalizedLabels:v6 languageStringOverrides:v7];

  return v8;
}

+ (id)displayShortLabelStringsForLongFormShortLabels:(id)a3
{
  v4 = [a1 stringsByAbbreviatingToPrefixesOfStrings:a3];
  v5 = [a1 stringsByClippingStrings:v4 toWidthOfString:@"𣍊𣍊𣍊"];

  v6 = [a1 stringsByNumericallyDisambiguatingStrings:v5];

  return v6;
}

+ (id)stringsByAbbreviatingToPrefixesOfStrings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TPSSubscriptionLabelerCharacterSets);
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__TPSSubscriptionLabeler_stringsByAbbreviatingToPrefixesOfStrings___block_invoke;
  v13[3] = &unk_2782E4060;
  v17 = a1;
  v14 = v5;
  v15 = v4;
  v7 = v6;
  v16 = v7;
  v8 = v4;
  v9 = v5;
  [v8 enumerateObjectsUsingBlock:v13];
  v10 = v16;
  v11 = v7;

  return v7;
}

void __67__TPSSubscriptionLabeler_stringsByAbbreviatingToPrefixesOfStrings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v6 = 0;
  if (([*(a1 + 56) isExclusivelyCJKString:v5 characterSets:*(a1 + 32)] & 1) == 0)
  {
    do
    {
      v7 = v29[3];
      if (v7 >= [v5 length])
      {
        break;
      }

      v8 = [v5 rangeOfComposedCharacterSequenceAtIndex:v29[3]];
      v10 = v9;
      v11 = [v5 substringToIndex:v8 + v9];
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v12 = *(a1 + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __67__TPSSubscriptionLabeler_stringsByAbbreviatingToPrefixesOfStrings___block_invoke_2;
      v17[3] = &unk_2782E4038;
      v21 = a3;
      v13 = v11;
      v18 = v13;
      v19 = &v24;
      v20 = &v28;
      v22 = v8;
      v23 = v10;
      [v12 enumerateObjectsUsingBlock:v17];
      v14 = *(v25 + 24);
      if ((v14 & 1) == 0)
      {
        v15 = v13;

        v6 = v15;
      }

      _Block_object_dispose(&v24, 8);
    }

    while ((v14 & 1) != 0);
  }

  if (v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v5;
  }

  [*(a1 + 48) addObject:v16];

  _Block_object_dispose(&v28, 8);
}

void __67__TPSSubscriptionLabeler_stringsByAbbreviatingToPrefixesOfStrings___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a1[7] != a3)
  {
    v9 = v7;
    v8 = [v7 rangeOfString:a1[4] options:137] == 0x7FFFFFFFFFFFFFFFLL;
    v7 = v9;
    if (!v8)
    {
      *(*(a1[5] + 8) + 24) = 1;
      *a4 = 1;
      *(*(a1[6] + 8) + 24) = a1[9] + a1[8];
    }
  }
}

+ (id)stringsByClippingStrings:(id)a3 toWidthOfString:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([v8 count])
  {
    v10 = [a1 fontAttributeDictionary];
    [a1 widthOfString:v7 attributes:v10];
    v12 = v11;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67__TPSSubscriptionLabeler_stringsByClippingStrings_toWidthOfString___block_invoke;
    v28[3] = &unk_2782E4088;
    v31 = a1;
    v13 = v10;
    v32 = v12;
    v29 = v13;
    v30 = &v33;
    [v8 enumerateObjectsUsingBlock:v28];
    v9 = v8;
    if (*(v34 + 24) == 1)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = v8;
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v37 count:16];
      if (v15)
      {
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            v19 = [v18 rangeOfComposedCharacterSequenceAtIndex:{0, v24}];
            v21 = [v18 substringToIndex:v19 + v20];
            [v9 addObject:v21];
          }

          v15 = [v14 countByEnumeratingWithState:&v24 objects:v37 count:16];
        }

        while (v15);
      }
    }

    _Block_object_dispose(&v33, 8);
  }

  CTFontRemoveFromCaches();

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __67__TPSSubscriptionLabeler_stringsByClippingStrings_toWidthOfString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 48) widthOfString:a2 attributes:*(a1 + 32)];
  if (v7 > *(a1 + 56))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)fontAttributeDictionary
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = CTFontDescriptorCreateForUIType();
  v3 = v2;
  if (v2)
  {
    v4 = CTFontCreateWithFontDescriptor(v2, 0.0, 0);
    CFRelease(v3);
    if (v4)
    {
      v7 = *MEMORY[0x277CC4838];
      v8[0] = v4;
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (double)widthOfString:(id)a3 attributes:(id)a4
{
  v5 = MEMORY[0x277CCA898];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithString:v7 attributes:v6];

  v9 = CTLineCreateWithAttributedString(v8);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v9, 0);
  width = BoundsWithOptions.size.width;
  CFRelease(v9);

  return width;
}

+ (id)stringByShorteningString:(id)a3 maximumWidth:(double)a4 attributes:(id)a5
{
  v8 = a3;
  [a1 widthOfString:v8 attributes:a5];
  v9 = v8;
  if (v10 > a4)
  {
    v11 = [v8 rangeOfComposedCharacterSequenceAtIndex:0];
    v9 = [v8 substringToIndex:v11 + v12];
  }

  return v9;
}

+ (id)stringsByNumericallyDisambiguatingStrings:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v33 + 1) + 8 * i) mutableCopy];
        [v4 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  v9 = [a1 _groupStringsByCollationEquivalency:v4];
  [v9 allKeys];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v10 = v30 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [v9 objectForKey:*(*(&v29 + 1) + 8 * j)];
        if ([v14 count] >= 2)
        {
          v27[0] = 0;
          v27[1] = v27;
          v27[2] = 0x2020000000;
          v28 = 1;
          v15 = [v14 firstObject];
          v16 = [v15 rangeOfCharacterFromSet:v19 options:12] != 0x7FFFFFFFFFFFFFFFLL;

          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __68__TPSSubscriptionLabeler_stringsByNumericallyDisambiguatingStrings___block_invoke;
          v22[3] = &unk_2782E40B0;
          v26 = v16;
          v24 = v27;
          v25 = a1;
          v23 = v9;
          [v14 enumerateObjectsUsingBlock:v22];

          _Block_object_dispose(v27, 8);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

void __68__TPSSubscriptionLabeler_stringsByNumericallyDisambiguatingStrings___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = 0;
  do
  {
    v4 = v3;
    if (*(a1 + 56))
    {
      v5 = @" %d";
    }

    else
    {
      v5 = @"%d";
    }

    v3 = [v6 stringByAppendingFormat:v5, *(*(*(a1 + 40) + 8) + 24)];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  while (([*(a1 + 48) _dictionary:*(a1 + 32) containsCollationEquivalentKey:v3] & 1) != 0);
  [v6 setString:v3];
  [*(a1 + 32) setObject:v3 forKey:v3];
}

+ (BOOL)_dictionary:(id)a3 containsCollationEquivalentKey:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v13 + 1) + 8 * i) compare:v6 options:{385, v13}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_groupStringsByCollationEquivalency:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 mutableCopy];
  while ([v5 count])
  {
    v6 = objc_opt_new();
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__3;
    v17 = __Block_byref_object_dispose__3;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__TPSSubscriptionLabeler__groupStringsByCollationEquivalency___block_invoke;
    v10[3] = &unk_2782E40D8;
    v12 = &v13;
    v7 = v6;
    v11 = v7;
    [v5 enumerateObjectsUsingBlock:v10];
    v8 = [v5 objectsAtIndexes:v7];
    [v5 removeObjectsAtIndexes:v7];
    [v4 setObject:v8 forKey:v14[5]];

    _Block_object_dispose(&v13, 8);
  }

  return v4;
}

void __62__TPSSubscriptionLabeler__groupStringsByCollationEquivalency___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(*(a1 + 40) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  v11 = v6;
  if (v10)
  {
    if ([v9 compare:v6 options:385])
    {
      goto LABEL_6;
    }
  }

  else
  {
    objc_storeStrong(v8, a2);
  }

  [*(a1 + 32) addIndex:a3];
LABEL_6:
}

+ (id)standardLabelIdentifiers
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"_$<SUBSCRIPTION_LABEL_PRIMARY>$_";
  v5[1] = @"_$<SUBSCRIPTION_LABEL_SECONDARY>$_";
  v5[2] = @"_$<SUBSCRIPTION_LABEL_PERSONAL>$_";
  v5[3] = @"_$<SUBSCRIPTION_LABEL_BUSINESS>$_";
  v5[4] = @"_$<SUBSCRIPTION_LABEL_TRAVEL>$_";
  v5[5] = @"_$<SUBSCRIPTION_LABEL_DATA>$_";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)isExclusivelyCJKString:(id)a3 characterSets:(id)a4
{
  v6 = a3;
  LOBYTE(a4) = [a1 isString:v6 exclusivelyInCharacterSet:{objc_msgSend(a4, "CJK")}];

  return a4;
}

+ (BOOL)isString:(id)a3 exclusivelyInCharacterSet:(USet *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = objc_opt_class();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__TPSSubscriptionLabeler_isString_exclusivelyInCharacterSet___block_invoke;
    v10[3] = &__block_descriptor_40_e13__24__0r_S8Q16l;
    v10[4] = a4;
    v7 = [v6 _resultWithAllCharacters:v10 string:v5];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id __61__TPSSubscriptionLabeler_isString_exclusivelyInCharacterSet___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithChar:uset_containsAllCodePoints()];
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  return v4;
}

+ (id)_resultWithAllCharacters:(id)a3 string:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [(__CFString *)v6 length];
  if (![(__CFString *)v6 length])
  {
    goto LABEL_9;
  }

  CharactersPtr = CFStringGetCharactersPtr(v6);
  if (!CharactersPtr)
  {
    if (v7 <= 0xFE)
    {
      [(__CFString *)v6 getCharacters:v18 range:0, v7];
      v18[v7] = 0;
      v10 = v5[2];
      v9 = v18;
      goto LABEL_6;
    }

    v13 = malloc_type_malloc(2 * v7 + 2, 0x1000040BDFB0063uLL);
    if (v13)
    {
      v14 = v13;
      [(__CFString *)v6 getCharacters:v13 range:0, v7];
      v14[v7] = 0;
      v15 = (v5[2])(v5, v14, v7);
      free(v14);
      goto LABEL_11;
    }

LABEL_9:
    v10 = v5[2];
    v11 = v5;
    v9 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v9 = CharactersPtr;
  v10 = v5[2];
LABEL_6:
  v11 = v5;
  v12 = v7;
LABEL_10:
  v15 = v10(v11, v9, v12);
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end