@interface SYDStoreBundleMap
+ (id)disabledStoreIdentifiers;
+ (id)sharedInstance;
- (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)a3;
- (BOOL)isStoreIdentifierUsedOnThisDevice:(id)a3;
- (BOOL)shouldSyncStoreWithIdentifier:(id)a3;
- (SYDStoreBundleMap)init;
- (id)bundleIdentifiersForStoreIdentifier:(id)a3;
- (id)generateStoreBundleMap;
- (id)storeIdentifiersForInstalledBundles;
- (void)clearCachedStoreBundleMap;
- (void)dealloc;
- (void)generateStoreBundleMapIfNecessary;
- (void)installedAppsDidChange:(id)a3;
- (void)setCloudSyncUserDefaultEnabled:(BOOL)a3 storeIdentifier:(id)a4;
@end

@implementation SYDStoreBundleMap

- (void)generateStoreBundleMapIfNecessary
{
  v3 = [(SYDStoreBundleMap *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SYDStoreBundleMap *)self cachedStoreBundleMap];

  if (!v4)
  {
    v5 = SYDGetMiscLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SYDStoreBundleMap *)v5 generateStoreBundleMapIfNecessary:v6];
    }

    v13 = [(SYDStoreBundleMap *)self generateStoreBundleMap];
    [(SYDStoreBundleMap *)self setCachedStoreBundleMap:v13];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SYDStoreBundleMap sharedInstance];
  }

  v3 = sharedInstance_helper;

  return v3;
}

+ (id)disabledStoreIdentifiers
{
  if (disabledStoreIdentifiers_onceToken != -1)
  {
    +[SYDStoreBundleMap disabledStoreIdentifiers];
  }

  v3 = disabledStoreIdentifiers_disabledStoreIdentifiers;

  return v3;
}

- (id)storeIdentifiersForInstalledBundles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(SYDStoreBundleMap *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SYDStoreBundleMap_storeIdentifiersForInstalledBundles__block_invoke;
  v6[3] = &unk_279D2F650;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__SYDStoreBundleMap_storeIdentifiersForInstalledBundles__block_invoke(uint64_t a1)
{
  [*(a1 + 32) generateStoreBundleMapIfNecessary];
  v2 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) cachedStoreBundleMap];
  v3 = [v7 allKeys];
  v4 = [v2 setWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __35__SYDStoreBundleMap_sharedInstance__block_invoke()
{
  sharedInstance_helper = objc_alloc_init(SYDStoreBundleMap);

  return MEMORY[0x2821F96F8]();
}

- (SYDStoreBundleMap)init
{
  v9.receiver = self;
  v9.super_class = SYDStoreBundleMap;
  v2 = [(SYDStoreBundleMap *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.kvs.bundle-store-map", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v6 addObserver:v2 selector:sel_installedAppsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

    v7 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v7 addObserver:v2 selector:sel_installedAppsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SYDStoreBundleMap;
  [(SYDStoreBundleMap *)&v4 dealloc];
}

- (BOOL)shouldSyncStoreWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(SYDStoreBundleMap *)self isStoreIdentifierUsedOnThisDevice:v4])
  {
    v5 = +[SYDTCCHelper sharedHelper];
    v6 = [v5 isUbiquityDisabledForStoreIdentifier:v4];

    if (v6)
    {
      v7 = SYDGetConnectionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SYDStoreBundleMap shouldSyncStoreWithIdentifier:];
      }
    }

    else
    {
      if ([(SYDStoreBundleMap *)self isCloudSyncUserDefaultEnabledForStoreIdentifier:v4])
      {
        v8 = 1;
        goto LABEL_8;
      }

      v7 = SYDGetConnectionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SYDStoreBundleMap shouldSyncStoreWithIdentifier:];
      }
    }
  }

  else
  {
    v7 = SYDGetConnectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDStoreBundleMap shouldSyncStoreWithIdentifier:];
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)a3
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v6 = [(SYDStoreBundleMap *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke;
  v9[3] = &unk_279D2F5B0;
  v10 = v5;
  v11 = self;
  v12 = &v14;
  v13 = a2;
  v7 = v5;
  dispatch_sync(v6, v9);

  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return self;
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (![*(a1 + 32) length])
  {
    __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_1(a1);
  }

  v3 = [@"com.apple.kvs.disable-sync" stringByAppendingString:*v2];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:v3];

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_3(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_2(v2, v6, v13, v14, v15, v16, v17, v18);
    }
  }
}

- (void)setCloudSyncUserDefaultEnabled:(BOOL)a3 storeIdentifier:(id)a4
{
  v7 = a4;
  v8 = [(SYDStoreBundleMap *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke;
  v10[3] = &unk_279D2F5D8;
  v12 = self;
  v13 = a2;
  v11 = v7;
  v14 = a3;
  v9 = v7;
  dispatch_sync(v8, v10);
}

void __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) length])
  {
    __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke_cold_1(a1);
  }

  v2 = [@"com.apple.kvs.disable-sync" stringByAppendingString:*(a1 + 32)];
  v3 = *(a1 + 56);
  v4 = SYDGetConnectionLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_26C384000, v4, OS_LOG_TYPE_INFO, "Enabling cloud sync for store <(%@)>", &v10, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 removeObjectForKey:v2];
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_26C384000, v4, OS_LOG_TYPE_INFO, "Disabling cloud sync for store <(%@)>", &v10, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 setBool:1 forKey:v2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __45__SYDStoreBundleMap_disabledStoreIdentifiers__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v0 = [v2 copy];
  v1 = disabledStoreIdentifiers_disabledStoreIdentifiers;
  disabledStoreIdentifiers_disabledStoreIdentifiers = v0;
}

- (BOOL)isStoreIdentifierUsedOnThisDevice:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() disabledStoreIdentifiers];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = SYDGetConnectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDStoreBundleMap isStoreIdentifierUsedOnThisDevice:];
    }

    v8 = 0;
  }

  else
  {
    v9 = [(SYDStoreBundleMap *)self storeIdentifiersForInstalledBundles];
    v10 = [v9 containsObject:v4];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v4 hasPrefix:@"com.apple."];
    }
  }

  return v8;
}

- (id)bundleIdentifiersForStoreIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__0;
  v14[3] = __Block_byref_object_dispose__0;
  v15 = 0;
  v5 = [(SYDStoreBundleMap *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SYDStoreBundleMap_bundleIdentifiersForStoreIdentifier___block_invoke;
  block[3] = &unk_279D2F600;
  block[4] = self;
  v12 = &v13;
  v6 = v4;
  v11 = v6;
  dispatch_sync(v5, block);

  if ([*(v14[0] + 40) count])
  {
    v7 = SYDGetMiscLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SYDStoreBundleMap *)v6 bundleIdentifiersForStoreIdentifier:v14];
    }
  }

  else
  {
    v7 = SYDGetMiscLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDStoreBundleMap bundleIdentifiersForStoreIdentifier:];
    }
  }

  v8 = *(v14[0] + 40);
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__SYDStoreBundleMap_bundleIdentifiersForStoreIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) generateStoreBundleMapIfNecessary];
  v5 = [*(a1 + 32) cachedStoreBundleMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)clearCachedStoreBundleMap
{
  v3 = [(SYDStoreBundleMap *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SYDStoreBundleMap_clearCachedStoreBundleMap__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __46__SYDStoreBundleMap_clearCachedStoreBundleMap__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedStoreBundleMap];

  if (v2)
  {
    v3 = SYDGetMiscLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __46__SYDStoreBundleMap_clearCachedStoreBundleMap__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [*(a1 + 32) setCachedStoreBundleMap:0];
  }
}

- (id)generateStoreBundleMap
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(SYDStoreBundleMap *)v2 generateStoreBundleMap:v3];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v12 = 0x277CC1000uLL;
  [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v41 = v63 = 0u;
  v42 = v11;
  v72[0] = v11;
  v72[1] = v41;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v45 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v45)
  {
    v44 = *v61;
    do
    {
      v13 = 0;
      do
      {
        if (*v61 != v44)
        {
          v14 = v13;
          objc_enumerationMutation(obj);
          v13 = v14;
        }

        v46 = v13;
        v15 = *(*(&v60 + 1) + 8 * v13);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v49 = v15;
        v16 = [v49 countByEnumeratingWithState:&v56 objects:v71 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v57;
          v47 = *v57;
          do
          {
            v19 = 0;
            v48 = v17;
            do
            {
              if (*v57 != v18)
              {
                objc_enumerationMutation(v49);
              }

              v20 = *(*(&v56 + 1) + 8 * v19);
              v21 = *(v12 + 3664);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [v20 effectiveBundleIdentifier];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v36 = SYDGetMiscLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v66 = v20;
                    _os_log_debug_impl(&dword_26C384000, v36, OS_LOG_TYPE_DEBUG, "LSBundleRecord did not map to an effectiveBundleIdentifier or contain one: %@", buf, 0xCu);
                  }

                  goto LABEL_39;
                }

                v22 = [v20 bundleIdentifier];
              }

              v23 = v22;
              if (v22)
              {
                v24 = SYDGetMiscLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v66 = v23;
                  _os_log_debug_impl(&dword_26C384000, v24, OS_LOG_TYPE_DEBUG, "Checking if bundle identifier: %@ is entitled for KVS", buf, 0xCu);
                }

                v25 = [objc_alloc(MEMORY[0x277D6B878]) initWithBundleRecord:v20];
                v26 = [v25 storeIdentifiers];
                if ([v26 count])
                {
                  v51 = v19;
                  v27 = SYDGetMiscLog();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                  {
                    v37 = [v26 count];
                    *buf = 134218498;
                    v66 = v37;
                    v67 = 2112;
                    v68 = v23;
                    v69 = 2112;
                    v70 = v26;
                    _os_log_debug_impl(&dword_26C384000, v27, OS_LOG_TYPE_DEBUG, "Found %ld store identifiers for bundle identifier: %@ %@ ", buf, 0x20u);
                  }

                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v50 = v26;
                  v28 = v26;
                  v29 = [v28 countByEnumeratingWithState:&v52 objects:v64 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v53;
                    do
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v53 != v31)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v33 = *(*(&v52 + 1) + 8 * i);
                        v34 = [v10 objectForKeyedSubscript:v33];
                        if (!v34)
                        {
                          v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
                          [v10 setObject:v34 forKeyedSubscript:v33];
                        }

                        [v34 addObject:v23];
                        v35 = [v25 relatedApplicationsForStoreIdentifier:v33];
                        if ([v35 count])
                        {
                          [v34 addObjectsFromArray:v35];
                        }
                      }

                      v30 = [v28 countByEnumeratingWithState:&v52 objects:v64 count:16];
                    }

                    while (v30);
                  }

                  v12 = 0x277CC1000;
                  v18 = v47;
                  v17 = v48;
                  v26 = v50;
                  v19 = v51;
                }

                goto LABEL_41;
              }

LABEL_39:
              v23 = SYDGetMiscLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v66 = v20;
                _os_log_debug_impl(&dword_26C384000, v23, OS_LOG_TYPE_DEBUG, "No bundle identifier found using LSBundleRecord for: %@", buf, 0xCu);
              }

LABEL_41:

              ++v19;
            }

            while (v19 != v17);
            v17 = [v49 countByEnumeratingWithState:&v56 objects:v71 count:16];
          }

          while (v17);
        }

        v13 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v45);
  }

  v38 = SYDGetMiscLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v66 = v10;
    _os_log_impl(&dword_26C384000, v38, OS_LOG_TYPE_INFO, "Generated new store bundle mapping: %@", buf, 0xCu);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)installedAppsDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SYDStoreBundleMap *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke(uint64_t a1)
{
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(a1 + 40) setCachedStoreBundleMap:0];
}

- (void)shouldSyncStoreWithIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Not syncing store that isn't used on this device: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)shouldSyncStoreWithIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Not syncing store that is disabled via NSUserDefaults: <(%@)>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)shouldSyncStoreWithIdentifier:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Not syncing TCC-disabled store %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"SYDStoreBundleMap.m" lineNumber:82 description:@"storeIdentifier must not be empty"];
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_26C384000, a2, a3, "Checking cloud sync status for store <(%@)> Status is enabled.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_26C384000, a2, a3, "Checking cloud sync status for store <(%@)> Status is disabled.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"SYDStoreBundleMap.m" lineNumber:98 description:@"storeIdentifier must not be empty"];
}

- (void)isStoreIdentifierUsedOnThisDevice:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Explicitly disabling store %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)bundleIdentifiersForStoreIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_26C384000, v4, OS_LOG_TYPE_DEBUG, "Found bundle identifiers for store %@: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)bundleIdentifiersForStoreIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "No bundle identifiers for store %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_0(&dword_26C384000, a2, a3, "Installed apps changed. Clearing cached store bundle map. Notification=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end