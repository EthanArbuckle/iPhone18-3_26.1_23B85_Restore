@interface WKWebsiteDataStore(SafariSharedExtras)
+ (id)_dataStoresByAutomationSessionIdentifier;
+ (id)_dataStoresByProfileIdentifier;
+ (id)_safari_dataStoreForProfileWithIdentifier:()SafariSharedExtras createIfNecessary:cacheNewDataStoreInMemory:;
+ (id)safari_allDataTypes;
+ (id)safari_allPersistentDataStores;
+ (id)safari_dataStoreForAutomationSessionWithIdentifier:()SafariSharedExtras;
+ (id)safari_dataStoreWithConfiguration:()SafariSharedExtras;
+ (id)safari_defaultDataStore;
+ (id)safari_defaultDataStoreWithSourceApplicationSecondaryIdentifier:()SafariSharedExtras;
+ (id)safari_nonPersistentDataStore;
+ (id)safari_webViewForDownloadsForProfileWithIdentifier:()SafariSharedExtras;
+ (uint64_t)_newDataStoreForAutomationSessionIdentifier:()SafariSharedExtras;
+ (uint64_t)_newDataStoreForProfileIdentifier:()SafariSharedExtras;
+ (void)safari_clearHSTSSuperCookies;
+ (void)safari_fetchExistingDataStoresForProfilesWithIdentifiers:()SafariSharedExtras completionHandler:;
+ (void)safari_removeDataStoreForProfileWithIdentifier:()SafariSharedExtras completionHandler:;
+ (void)safari_setCommonProperties:()SafariSharedExtras;
- (id)safari_secIdentitiesCache;
- (void)safari_profileIdentifier;
@end

@implementation WKWebsiteDataStore(SafariSharedExtras)

+ (id)safari_defaultDataStore
{
  v1 = safari_defaultDataStore_dataStore;
  if (!safari_defaultDataStore_dataStore)
  {
    v2 = [self safari_defaultDataStoreWithSourceApplicationSecondaryIdentifier:0];
    v3 = safari_defaultDataStore_dataStore;
    safari_defaultDataStore_dataStore = v2;

    v1 = safari_defaultDataStore_dataStore;
  }

  return v1;
}

+ (id)safari_allPersistentDataStores
{
  _dataStoresByProfileIdentifier = [MEMORY[0x1E69853B8] _dataStoresByProfileIdentifier];
  allValues = [_dataStoresByProfileIdentifier allValues];
  safari_defaultDataStore = [MEMORY[0x1E69853B8] safari_defaultDataStore];
  v3 = [allValues arrayByAddingObject:safari_defaultDataStore];

  return v3;
}

+ (id)_dataStoresByProfileIdentifier
{
  v0 = _dataStoresByProfileIdentifier_dataStoresByProfileIdentifier;
  if (!_dataStoresByProfileIdentifier_dataStoresByProfileIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v2 = _dataStoresByProfileIdentifier_dataStoresByProfileIdentifier;
    _dataStoresByProfileIdentifier_dataStoresByProfileIdentifier = dictionary;

    v0 = _dataStoresByProfileIdentifier_dataStoresByProfileIdentifier;
  }

  return v0;
}

- (id)safari_secIdentitiesCache
{
  v2 = objc_getAssociatedObject(self, sel_safari_secIdentitiesCache);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C9060]);
    objc_setAssociatedObject(self, sel_safari_secIdentitiesCache, v4, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__WKWebsiteDataStore_SafariSharedExtras__safari_secIdentitiesCache__block_invoke;
    block[3] = &unk_1E8283080;
    block[4] = self;
    if (safari_secIdentitiesCache_once[0] != -1)
    {
      dispatch_once(safari_secIdentitiesCache_once, block);
    }
  }

  return v4;
}

+ (id)safari_webViewForDownloadsForProfileWithIdentifier:()SafariSharedExtras
{
  v3 = a3;
  v4 = safari_webViewForDownloadsForProfileWithIdentifier__map;
  if (!safari_webViewForDownloadsForProfileWithIdentifier__map)
  {
    v5 = objc_opt_new();
    v6 = safari_webViewForDownloadsForProfileWithIdentifier__map;
    safari_webViewForDownloadsForProfileWithIdentifier__map = v5;

    v4 = safari_webViewForDownloadsForProfileWithIdentifier__map;
  }

  v7 = [v4 objectForKeyedSubscript:v3];
  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = [MEMORY[0x1E69853B8] safari_dataStoreForProfileWithIdentifier:v3];
    [v8 setWebsiteDataStore:v9];

    v10 = objc_alloc(MEMORY[0x1E69853A0]);
    v7 = [v10 initWithFrame:v8 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [safari_webViewForDownloadsForProfileWithIdentifier__map setObject:v7 forKeyedSubscript:v3];
  }

  return v7;
}

+ (id)safari_allDataTypes
{
  allWebsiteDataTypes = [MEMORY[0x1E69853B8] allWebsiteDataTypes];
  v1 = [allWebsiteDataTypes mutableCopy];

  [v1 addObject:*MEMORY[0x1E6985500]];
  [v1 addObject:*MEMORY[0x1E69854F8]];
  [v1 addObject:*MEMORY[0x1E6985508]];
  [v1 addObject:*MEMORY[0x1E69854F0]];
  [v1 addObject:*MEMORY[0x1E69854E0]];
  [v1 addObject:*MEMORY[0x1E69854E8]];

  return v1;
}

+ (void)safari_clearHSTSSuperCookies
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v0 = _CFNetworkCopyHSTSPolicies();
  v1 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        if (([v5 hasSuffix:@"ctoid.net"] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @"ar1d.net"))
        {
          v6 = [v0 objectForKeyedSubscript:v5];
          v7 = [v6 objectForKeyedSubscript:@"_kCFNetworkHSTSPreloaded"];
          if (([v7 BOOLValue] & 1) == 0)
          {
            v8 = MEMORY[0x1E695DFF8];
            v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@/", v5];
            v10 = [v8 URLWithString:v9];

            _CFNetworkResetHSTS();
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }
}

+ (void)safari_setCommonProperties:()SafariSharedExtras
{
  v3 = a3;
  [v3 setFastServerTrustEvaluationEnabled:1];
  [v3 setNetworkCacheSpeculativeValidationEnabled:1];
  [v3 setIsDeclarativeWebPushEnabled:{objc_msgSend(MEMORY[0x1E6985338], "safari_wkFeatureEnabled:", @"DeclarativeWebPush"}];
}

+ (id)_safari_dataStoreForProfileWithIdentifier:()SafariSharedExtras createIfNecessary:cacheNewDataStoreInMemory:
{
  v7 = a3;
  if ([*MEMORY[0x1E69C8B58] isEqualToString:v7])
  {
    safari_defaultDataStore = [MEMORY[0x1E69853B8] safari_defaultDataStore];
  }

  else
  {
    _dataStoresByProfileIdentifier = [MEMORY[0x1E69853B8] _dataStoresByProfileIdentifier];
    v10 = [_dataStoresByProfileIdentifier objectForKeyedSubscript:v7];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = a4 == 0;
    }

    if (!v11)
    {
      v10 = [MEMORY[0x1E69853B8] _newDataStoreForProfileIdentifier:v7];
      if (a5)
      {
        _dataStoresByProfileIdentifier2 = [MEMORY[0x1E69853B8] _dataStoresByProfileIdentifier];
        [_dataStoresByProfileIdentifier2 setObject:v10 forKeyedSubscript:v7];
      }
    }

    safari_defaultDataStore = v10;
  }

  return safari_defaultDataStore;
}

+ (void)safari_removeDataStoreForProfileWithIdentifier:()SafariSharedExtras completionHandler:
{
  v5 = MEMORY[0x1E69853B8];
  v6 = a4;
  v7 = a3;
  _dataStoresByProfileIdentifier = [v5 _dataStoresByProfileIdentifier];
  [_dataStoresByProfileIdentifier setObject:0 forKeyedSubscript:v7];

  v9 = MEMORY[0x1E69853B8];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];

  [v9 _removeDataStoreWithIdentifier:v10 completionHandler:v6];
}

+ (void)safari_fetchExistingDataStoresForProfilesWithIdentifiers:()SafariSharedExtras completionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 containsObject:*MEMORY[0x1E69C8B58]];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __117__WKWebsiteDataStore_SafariSharedExtras__safari_fetchExistingDataStoresForProfilesWithIdentifiers_completionHandler___block_invoke;
  v11[3] = &unk_1E8289AE0;
  v15 = v8;
  v13 = v7;
  selfCopy = self;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [self _fetchAllIdentifiers:v11];
}

+ (uint64_t)_newDataStoreForProfileIdentifier:()SafariSharedExtras
{
  v3 = MEMORY[0x1E6985430];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];

  v7 = [v5 initWithIdentifier:v6];
  [MEMORY[0x1E69853B8] safari_setCommonProperties:v7];
  v8 = [objc_alloc(MEMORY[0x1E69853B8]) _initWithConfiguration:v7];

  return v8;
}

+ (id)_dataStoresByAutomationSessionIdentifier
{
  v0 = _dataStoresByAutomationSessionIdentifier__dataStoresByAutomationSessionIdentifier;
  if (!_dataStoresByAutomationSessionIdentifier__dataStoresByAutomationSessionIdentifier)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v2 = _dataStoresByAutomationSessionIdentifier__dataStoresByAutomationSessionIdentifier;
    _dataStoresByAutomationSessionIdentifier__dataStoresByAutomationSessionIdentifier = strongToWeakObjectsMapTable;

    v0 = _dataStoresByAutomationSessionIdentifier__dataStoresByAutomationSessionIdentifier;
  }

  return v0;
}

+ (uint64_t)_newDataStoreForAutomationSessionIdentifier:()SafariSharedExtras
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = NSTemporaryDirectory();
  v13[0] = v5;
  v13[1] = @"SafariAutomation";
  v13[2] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v7 = [v3 pathWithComponents:v6];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:1];
  v9 = [objc_alloc(MEMORY[0x1E6985430]) initWithDirectory:v8];
  [MEMORY[0x1E69853B8] safari_setCommonProperties:v9];
  v10 = objc_alloc(MEMORY[0x1E69853B8]);

  v11 = [v10 _initWithConfiguration:v9];
  return v11;
}

+ (id)safari_dataStoreForAutomationSessionWithIdentifier:()SafariSharedExtras
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(MEMORY[0x1E6985430], "instancesRespondToSelector:", sel_initWithDirectory_) & 1) != 0)
  {
    _dataStoresByAutomationSessionIdentifier = [MEMORY[0x1E69853B8] _dataStoresByAutomationSessionIdentifier];
    v6 = [_dataStoresByAutomationSessionIdentifier objectForKey:v4];

    if (!v6)
    {
      v6 = [MEMORY[0x1E69853B8] _newDataStoreForAutomationSessionIdentifier:v4];
      _dataStoresByAutomationSessionIdentifier2 = [MEMORY[0x1E69853B8] _dataStoresByAutomationSessionIdentifier];
      [_dataStoresByAutomationSessionIdentifier2 setObject:v6 forKey:v4];
    }

    safari_nonPersistentDataStore = v6;
  }

  else
  {
    safari_nonPersistentDataStore = [self safari_nonPersistentDataStore];
  }

  return safari_nonPersistentDataStore;
}

+ (id)safari_nonPersistentDataStore
{
  initNonPersistentConfiguration = [objc_alloc(MEMORY[0x1E6985430]) initNonPersistentConfiguration];
  [MEMORY[0x1E69853B8] safari_setCommonProperties:initNonPersistentConfiguration];
  v1 = [objc_alloc(MEMORY[0x1E69853B8]) _initWithConfiguration:initNonPersistentConfiguration];

  return v1;
}

+ (id)safari_defaultDataStoreWithSourceApplicationSecondaryIdentifier:()SafariSharedExtras
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E6985430]);
  [MEMORY[0x1E69853B8] safari_setCommonProperties:v4];
  if ([MEMORY[0x1E69C8880] isWAPEnabled])
  {
    [v4 setWebPushMachServiceName:@"com.apple.webkit.webpushd.service"];
  }

  if (v3)
  {
    [v4 setSourceApplicationSecondaryIdentifier:v3];
  }

  v5 = [objc_alloc(MEMORY[0x1E69853B8]) _initWithConfiguration:v4];

  return v5;
}

+ (id)safari_dataStoreWithConfiguration:()SafariSharedExtras
{
  v3 = MEMORY[0x1E69853B8];
  v4 = a3;
  [v3 safari_setCommonProperties:v4];
  v5 = [objc_alloc(MEMORY[0x1E69853B8]) _initWithConfiguration:v4];

  return v5;
}

- (void)safari_profileIdentifier
{
  _configuration = [self _configuration];
  identifier = [_configuration identifier];
  uUIDString = [identifier UUIDString];
  v4 = uUIDString;
  if (uUIDString)
  {
    v5 = uUIDString;
  }

  else
  {
    v5 = *MEMORY[0x1E69C8B58];
  }

  v6 = v5;

  return v5;
}

@end