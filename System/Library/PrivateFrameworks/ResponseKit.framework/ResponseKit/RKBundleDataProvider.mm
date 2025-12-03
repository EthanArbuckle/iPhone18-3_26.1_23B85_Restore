@interface RKBundleDataProvider
- (RKBundleDataProvider)initWithAssetPlist:(id)plist;
- (RKBundleDataProvider)initWithBundle:(id)bundle;
- (id)displayStringsForPlatform:(id)platform languageID:(id)d;
- (id)stringsFromTable:(id)table forLanguageIdentifier:(id)identifier;
@end

@implementation RKBundleDataProvider

- (RKBundleDataProvider)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v19.receiver = self;
  v19.super_class = RKBundleDataProvider;
  v6 = [(RKBundleDataProvider *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, bundle);
    v8 = MEMORY[0x277CBEBC0];
    v9 = [bundleCopy pathForResource:@"RKAssetsConstantClasses" ofType:@"plist"];
    v10 = [v8 URLWithString:v9];
    assetPlistURL = v7->_assetPlistURL;
    v7->_assetPlistURL = v10;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displayStringsByPlatformByLanguage = v7->_displayStringsByPlatformByLanguage;
    v7->_displayStringsByPlatformByLanguage = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    polarityMapsByLanguageID = v7->_polarityMapsByLanguageID;
    v7->_polarityMapsByLanguageID = dictionary2;

    v16 = objc_alloc_init(RKAssets);
    assets = v7->_assets;
    v7->_assets = v16;
  }

  return v7;
}

- (RKBundleDataProvider)initWithAssetPlist:(id)plist
{
  plistCopy = plist;
  v18.receiver = self;
  v18.super_class = RKBundleDataProvider;
  v6 = [(RKBundleDataProvider *)&v18 init];
  v7 = v6;
  if (v6)
  {
    bundle = v6->_bundle;
    v6->_bundle = 0;

    objc_storeStrong(&v7->_assetPlistURL, plist);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displayStringsByPlatformByLanguage = v7->_displayStringsByPlatformByLanguage;
    v7->_displayStringsByPlatformByLanguage = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    polarityMapsByLanguageID = v7->_polarityMapsByLanguageID;
    v7->_polarityMapsByLanguageID = dictionary2;

    v13 = [RKAssets alloc];
    path = [plistCopy path];
    v15 = [(RKAssets *)v13 initWithPlistURL:path];
    assets = v7->_assets;
    v7->_assets = v15;
  }

  return v7;
}

- (id)stringsFromTable:(id)table forLanguageIdentifier:(id)identifier
{
  v31[1] = *MEMORY[0x277D85DE8];
  tableCopy = table;
  identifierCopy = identifier;
  v7 = +[RKAssets localizedStrings];
  v8 = identifierCopy;
  v9 = MEMORY[0x277CCA8D8];
  v31[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v11 = [v9 preferredLocalizationsFromArray:&unk_2874E7108 forPreferences:v10];
  firstObject = [v11 firstObject];
  v13 = [&unk_2874E70F0 containsObject:firstObject];

  firstObject2 = v8;
  if (v13)
  {
    v15 = MEMORY[0x277CCA8D8];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v17 = [v15 preferredLocalizationsFromArray:&unk_2874E7120 forPreferences:preferredLanguages];
    firstObject2 = [v17 firstObject];

    if ([(__CFString *)firstObject2 isEqualToString:@"yue"])
    {

      firstObject2 = @"zh_HK";
    }
  }

  v18 = @"zh_CN";
  if (([(__CFString *)firstObject2 hasPrefix:@"zh-Hans"]& 1) == 0 && ![(__CFString *)firstObject2 hasPrefix:@"zh_Hans"])
  {
    v18 = firstObject2;
  }

  v19 = v18;

  v20 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v19];
  v21 = [v20 objectForKey:*MEMORY[0x277CBE6C8]];
  v22 = [v21 isEqualToString:@"ko"];

  if (v22)
  {

    v19 = @"ko";
  }

  v23 = [v7 objectForKeyedSubscript:v19];
  v24 = [tableCopy stringByAppendingString:@".strings"];
  v25 = [v23 objectForKeyedSubscript:v24];

  if (!v25)
  {
    v26 = [(__CFString *)v19 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v27 = [v7 objectForKeyedSubscript:v26];
    v28 = [tableCopy stringByAppendingString:@".strings"];
    v25 = [v27 objectForKeyedSubscript:v28];

    v19 = v26;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)displayStringsForPlatform:(id)platform languageID:(id)d
{
  platformCopy = platform;
  v7 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:d];
  displayStringsByPlatformByLanguage = [(RKBundleDataProvider *)self displayStringsByPlatformByLanguage];
  v9 = [displayStringsByPlatformByLanguage objectForKeyedSubscript:platformCopy];

  if (!v9)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displayStringsByPlatformByLanguage2 = [(RKBundleDataProvider *)self displayStringsByPlatformByLanguage];
    [displayStringsByPlatformByLanguage2 setObject:dictionary forKeyedSubscript:platformCopy];
  }

  displayStringsByPlatformByLanguage3 = [(RKBundleDataProvider *)self displayStringsByPlatformByLanguage];
  v13 = [displayStringsByPlatformByLanguage3 objectForKeyedSubscript:platformCopy];
  v14 = [v13 objectForKeyedSubscript:v7];

  if (!v14)
  {
    v15 = [(RKBundleDataProvider *)self stringsFromTable:platformCopy forLanguageIdentifier:v7];
    v16 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v7];
    if (([v7 isEqualToString:v16] & 1) != 0 || objc_msgSend(v15, "count"))
    {
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != ''"];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      displayStringsByPlatformByLanguage4 = [(RKBundleDataProvider *)self displayStringsByPlatformByLanguage];
      v20 = [displayStringsByPlatformByLanguage4 objectForKeyedSubscript:platformCopy];
      [v20 setObject:dictionary2 forKeyedSubscript:v7];

      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __61__RKBundleDataProvider_displayStringsForPlatform_languageID___block_invoke;
      v31 = &unk_279B10B48;
      v32 = v17;
      selfCopy = self;
      v34 = platformCopy;
      v35 = v7;
      v21 = v17;
      [v15 enumerateKeysAndObjectsUsingBlock:&v28];
    }

    else
    {
      v21 = [(RKBundleDataProvider *)self displayStringsForPlatform:platformCopy languageID:v16];
      displayStringsByPlatformByLanguage5 = [(RKBundleDataProvider *)self displayStringsByPlatformByLanguage];
      v27 = [displayStringsByPlatformByLanguage5 objectForKeyedSubscript:platformCopy];
      [v27 setObject:v21 forKeyedSubscript:v7];
    }
  }

  v22 = [(RKBundleDataProvider *)self displayStringsByPlatformByLanguage:v28];
  v23 = [v22 objectForKeyedSubscript:platformCopy];
  v24 = [v23 objectForKeyedSubscript:v7];

  return v24;
}

void __61__RKBundleDataProvider_displayStringsForPlatform_languageID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = a2;
  v8 = [v5 array];
  v9 = [v6 componentsSeparatedByString:@"/"];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__RKBundleDataProvider_displayStringsForPlatform_languageID___block_invoke_2;
  v17 = &unk_279B0FEA8;
  v18 = *(a1 + 32);
  v19 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:&v14];

  v11 = [*(a1 + 40) displayStringsByPlatformByLanguage];
  v12 = [v11 objectForKeyedSubscript:*(a1 + 48)];
  v13 = [v12 objectForKeyedSubscript:*(a1 + 56)];
  [v13 setObject:v10 forKeyedSubscript:v7];
}

void __61__RKBundleDataProvider_displayStringsForPlatform_languageID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a2;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 filteredArrayUsingPredicate:*(a1 + 32)];
  v8 = [v7 componentsJoinedByString:@" "];

  [*(a1 + 40) addObject:v8];
}

@end