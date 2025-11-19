@interface BRCCloudDocsAppsMonitor
+ (id)cloudDocsAppsMonitor;
- (BOOL)hasFetchedInitialApps;
- (BOOL)isApplicationInstalledForContainerID:(id)a3;
- (BRCCloudDocsAppsMonitor)init;
- (id)allApplicationIdentifiers;
- (id)applicationIdentifiersForContainerID:(id)a3;
- (id)containerIDsForApplicationIdentifier:(id)a3;
- (void)_dumpAppIDsByAppLibraryIDToContext:(id)a3;
- (void)_dumpCloudDocsAppLibrariesByAppIDToContext:(id)a3;
- (void)_refetchApps;
- (void)_refetchPendingApps;
- (void)_start;
- (void)_updateMappingsAndNotifyObservers:(id)a3 appIDsByAppLibraryID:(id)a4 markInitialFetch:(BOOL)a5;
- (void)addObserver:(id)a3;
- (void)appListDidUpdateForBundleIDs:(id)a3;
- (void)dumpToContext:(id)a3;
- (void)forceRefetchAppList;
- (void)removeObserver:(id)a3;
@end

@implementation BRCCloudDocsAppsMonitor

- (BOOL)hasFetchedInitialApps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__BRCCloudDocsAppsMonitor_hasFetchedInitialApps__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateMappingsAndNotifyObservers:(id)a3 appIDsByAppLibraryID:(id)a4 markInitialFetch:(BOOL)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke;
  block[3] = &unk_2785044D8;
  block[4] = self;
  v11 = v8;
  v28 = v11;
  v12 = v9;
  v29 = v12;
  v30 = a5;
  dispatch_sync(queue, block);
  callbackQueue = self->_callbackQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke_2;
  v25[3] = &unk_2784FF478;
  v25[4] = self;
  v14 = v12;
  v26 = v14;
  v15 = callbackQueue;
  v16 = v25;
  v17 = objc_autoreleasePoolPush();
  v31 = 0uLL;
  v32 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v31);
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v23 = v31;
    label = dispatch_queue_get_label(v15);
    *buf = 134218498;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v34 = v18;
    _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  v37 = v31;
  v38 = v32;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __dispatch_async_with_logs_block_invoke_21;
  v34 = &unk_2784FF568;
  v20 = v15;
  v35 = v20;
  v21 = v16;
  v36 = v21;
  dispatch_async(v20, buf);

  objc_autoreleasePoolPop(v17);
  v22 = *MEMORY[0x277D85DE8];
}

void __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 48));
  if (*(a1 + 56) == 1)
  {
    *(*(a1 + 32) + 80) = 1;
  }
}

void __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cloudDocsAppsListDidChange:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_refetchApps
{
  dispatch_assert_queue_V2(self->_fetchInstalledAppsQueue);
  memset(v24, 0, sizeof(v24));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor _refetchApps]", 111, 0, v24);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRCCloudDocsAppsMonitor *)v24 _refetchApps];
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.TextInput"];
  [v5 setObject:v7 forKey:@"com.apple.kbd"];

  v8 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.shoebox"];
  [v5 setObject:v8 forKey:@"com.apple.passd"];

  v9 = [MEMORY[0x277CBEB58] setWithObject:@"com.apple.kbd"];
  [v6 setObject:v9 forKey:@"com.apple.TextInput"];

  v10 = [MEMORY[0x277CBEB58] setWithObject:@"com.apple.passd"];
  [v6 setObject:v10 forKey:*MEMORY[0x277CFACE0]];

  v11 = [BRCUserDefaults defaultsForMangledID:0];
  v12 = [v11 bundleIDsExcludedFromAppLibraryExtraction];

  v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __39__BRCCloudDocsAppsMonitor__refetchApps__block_invoke;
  v20 = &unk_278508030;
  v14 = v12;
  v21 = v14;
  v15 = v5;
  v22 = v15;
  v16 = v6;
  v23 = v16;
  [v13 enumerateBundlesOfType:1 block:&v17];

  [(BRCCloudDocsAppsMonitor *)self _updateMappingsAndNotifyObservers:v15 appIDsByAppLibraryID:v16 markInitialFetch:1, v17, v18, v19, v20];
  __brc_leave_section(v24);
}

void __39__BRCCloudDocsAppsMonitor__refetchApps__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 bundleIdentifier];
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __39__BRCCloudDocsAppsMonitor__refetchApps__block_invoke_cold_1();
    }

LABEL_4:

    goto LABEL_17;
  }

  v6 = BREntitledContainerIdentifiersForProxy();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
      [v8 setObject:v9 forKey:v5];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v10 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v17 = v4;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [*(a1 + 48) objectForKeyedSubscript:v14];
            if (!v15)
            {
              v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
              [*(a1 + 48) setObject:v15 forKeyedSubscript:v14];
            }

            [v15 addObject:v5];
          }

          v11 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
        v6 = v7;
        v4 = v17;
      }

      else
      {
        v6 = v7;
      }

      goto LABEL_4;
    }
  }

LABEL_17:

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)forceRefetchAppList
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRCCloudDocsAppsMonitor *)v3 forceRefetchAppList];
  }

  refetchPacer = self->_refetchPacer;
  br_pacer_signal();
}

- (void)appListDidUpdateForBundleIDs:(id)a3
{
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor appListDidUpdateForBundleIDs:];
  }

  fetchInstalledAppsQueue = self->_fetchInstalledAppsQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__BRCCloudDocsAppsMonitor_appListDidUpdateForBundleIDs___block_invoke;
  v9[3] = &unk_2784FF478;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(fetchInstalledAppsQueue, v9);
}

void __56__BRCCloudDocsAppsMonitor_appListDidUpdateForBundleIDs___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = [v2 count];
  v7 = [BRCUserDefaults defaultsForMangledID:0];
  v8 = [v7 bundleIDsExcludedFromAppLibraryExtraction];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(a1 + 40);
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

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([v8 containsObject:{v14, v17}] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"com.apple.kbd") & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"com.apple.passd") & 1) == 0)
        {
          [*(*(a1 + 32) + 32) addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if (v6 != [*(*(a1 + 32) + 32) count])
  {
    v15 = *(*(a1 + 32) + 48);
    br_pacer_signal();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_refetchPendingApps
{
  v76 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_fetchInstalledAppsQueue);
  pendingBundleIDsToRefetch = self->_pendingBundleIDsToRefetch;
  if (pendingBundleIDsToRefetch && [(NSMutableSet *)pendingBundleIDsToRefetch count])
  {
    v36 = self;
    v4 = self->_pendingBundleIDsToRefetch;
    memset(v64, 0, sizeof(v64));
    __brc_create_section(0, "[BRCCloudDocsAppsMonitor _refetchPendingApps]", 187, 0, v64);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v72 = 134218498;
      *&v72[4] = v64[0];
      *&v72[12] = 2112;
      *&v72[14] = v4;
      *&v72[22] = 2112;
      v73 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx refetching specific apps: %@%@", v72, 0x20u);
    }

    *v72 = 0;
    *&v72[8] = v72;
    *&v72[16] = 0x3032000000;
    v73 = __Block_byref_object_copy__55;
    v74 = __Block_byref_object_dispose__55;
    v75 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__55;
    v62 = __Block_byref_object_dispose__55;
    v63 = 0;
    queue = v36->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__BRCCloudDocsAppsMonitor__refetchPendingApps__block_invoke;
    block[3] = &unk_2784FFB30;
    block[4] = v36;
    block[5] = v72;
    block[6] = &v58;
    dispatch_sync(queue, block);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v4;
    v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v53 objects:v71 count:16];
    if (v8)
    {
      v9 = 0;
      v38 = *v54;
      do
      {
        v39 = v8;
        for (i = 0; i != v39; ++i)
        {
          if (*v54 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v53 + 1) + 8 * i);
          v52 = 0;
          v12 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:v11 allowPlaceholder:1 error:&v52];
          v40 = v52;
          v41 = v12;
          if (v12)
          {
            v13 = [v12 entitlements];
            v43 = BREntitledContainerIdentifiersForPropertyList();
          }

          else
          {
            v13 = brc_bread_crumbs();
            v14 = brc_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v68 = v11;
              v69 = 2112;
              v70 = v13;
              _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] No bundleRecord found for bundle identifier %@ - treating as uninstalled app%@", buf, 0x16u);
            }

            v43 = 0;
          }

          v15 = [*(*&v72[8] + 40) objectForKeyedSubscript:v11];
          v16 = v43;
          if (v43)
          {
            v16 = [MEMORY[0x277CBEB98] setWithArray:?];
          }

          v42 = v16;
          if (v15 | v16 && ([v15 isEqualToSet:?] & 1) == 0)
          {
            if (v15)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v17 = v15;
              v18 = [v17 countByEnumeratingWithState:&v48 objects:v66 count:16];
              if (v18)
              {
                v19 = *v49;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v49 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v21 = *(*(&v48 + 1) + 8 * j);
                    v22 = [v59[5] objectForKeyedSubscript:v21];
                    [v22 removeObject:v11];
                    if (![v22 count])
                    {
                      [v59[5] removeObjectForKey:v21];
                    }
                  }

                  v18 = [v17 countByEnumeratingWithState:&v48 objects:v66 count:16];
                }

                while (v18);
              }
            }

            v23 = [v42 count];
            v24 = *(*&v72[8] + 40);
            if (v23)
            {
              v25 = MEMORY[0x277CBEB98];
              v26 = [v42 allObjects];
              v27 = [v25 setWithArray:v26];
              [v24 setObject:v27 forKey:v11];

              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v28 = [v42 allObjects];
              v29 = [v28 countByEnumeratingWithState:&v44 objects:v65 count:16];
              if (v29)
              {
                v30 = *v45;
                do
                {
                  for (k = 0; k != v29; ++k)
                  {
                    if (*v45 != v30)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v32 = *(*(&v44 + 1) + 8 * k);
                    v33 = [v59[5] objectForKeyedSubscript:v32];
                    if (!v33)
                    {
                      v33 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
                      [v59[5] setObject:v33 forKeyedSubscript:v32];
                    }

                    [v33 addObject:v11];
                  }

                  v29 = [v28 countByEnumeratingWithState:&v44 objects:v65 count:16];
                }

                while (v29);
              }
            }

            else
            {
              [*(*&v72[8] + 40) removeObjectForKey:v11];
            }

            v9 = 1;
          }
        }

        v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v53 objects:v71 count:16];
      }

      while (v8);

      v34 = v36;
      if (v9)
      {
        [(BRCCloudDocsAppsMonitor *)v36 _updateMappingsAndNotifyObservers:*(*&v72[8] + 40) appIDsByAppLibraryID:v59[5] markInitialFetch:0];
      }
    }

    else
    {

      v34 = v36;
    }

    [(NSMutableSet *)v34->_pendingBundleIDsToRefetch removeAllObjects];
    _Block_object_dispose(&v58, 8);

    _Block_object_dispose(v72, 8);
    __brc_leave_section(v64);
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __46__BRCCloudDocsAppsMonitor__refetchPendingApps__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) mutableCopy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 16) mutableCopy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (void)_start
{
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor _start]", 260, 0, v6);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRCCloudDocsAppsMonitor *)v6 _start];
  }

  v5 = +[BRCSystemResourcesManager manager];
  [v5 addAppListObserver:self];

  [(BRCCloudDocsAppsMonitor *)self forceRefetchAppList];
  __brc_leave_section(v6);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, v7);
}

void __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__55;
  v9 = __Block_byref_object_dispose__55;
  v10 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke_2;
  v4[3] = &unk_278502000;
  v4[4] = v2;
  v4[5] = &v5;
  dispatch_sync(v3, v4);
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  if (v6[5])
  {
    [*(a1 + 40) cloudDocsAppsListDidChange:?];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__BRCCloudDocsAppsMonitor_removeObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(callbackQueue, v7);
}

- (id)applicationIdentifiersForContainerID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:]", 290, 0, v17);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v17[0];
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asked appIDs for %@%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__55;
  v20 = __Block_byref_object_dispose__55;
  v21 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__BRCCloudDocsAppsMonitor_applicationIdentifiersForContainerID___block_invoke;
  v14[3] = &unk_278500D08;
  v16 = buf;
  v14[4] = self;
  v8 = v4;
  v15 = v8;
  dispatch_sync(queue, v14);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:?];
  }

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  __brc_leave_section(v17);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __64__BRCCloudDocsAppsMonitor_applicationIdentifiersForContainerID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)containerIDsForApplicationIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor containerIDsForApplicationIdentifier:]", 301, 0, v17);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v17[0];
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asked containerIDs for %@%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__55;
  v20 = __Block_byref_object_dispose__55;
  v21 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__BRCCloudDocsAppsMonitor_containerIDsForApplicationIdentifier___block_invoke;
  v14[3] = &unk_278500D08;
  v16 = buf;
  v14[4] = self;
  v8 = v4;
  v15 = v8;
  dispatch_sync(queue, v14);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:?];
  }

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  __brc_leave_section(v17);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __64__BRCCloudDocsAppsMonitor_containerIDsForApplicationIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)allApplicationIdentifiers
{
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor allApplicationIdentifiers]", 328, 0, v14);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRCCloudDocsAppsMonitor *)v14 allApplicationIdentifiers];
  }

  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__55;
  v12[3] = __Block_byref_object_dispose__55;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BRCCloudDocsAppsMonitor_allApplicationIdentifiers__block_invoke;
  block[3] = &unk_278502000;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(queue, block);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  __brc_leave_section(v14);

  return v8;
}

void __52__BRCCloudDocsAppsMonitor_allApplicationIdentifiers__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isApplicationInstalledForContainerID:(id)a3
{
  v3 = [(BRCCloudDocsAppsMonitor *)self applicationIdentifiersForContainerID:a3];
  v4 = [v3 count] != 0;

  return v4;
}

+ (id)cloudDocsAppsMonitor
{
  if (cloudDocsAppsMonitor_once != -1)
  {
    +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
  }

  v3 = cloudDocsAppsMonitor_gMonitor;

  return v3;
}

uint64_t __47__BRCCloudDocsAppsMonitor_cloudDocsAppsMonitor__block_invoke()
{
  cloudDocsAppsMonitor_gMonitor = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BRCCloudDocsAppsMonitor)init
{
  v33.receiver = self;
  v33.super_class = BRCCloudDocsAppsMonitor;
  v2 = [(BRCCloudDocsAppsMonitor *)&v33 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.bird.apps-monitor", v4);

    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.bird.apps-monitor.fetch-apps", v8);

    fetchInstalledAppsQueue = v2->_fetchInstalledAppsQueue;
    v2->_fetchInstalledAppsQueue = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.bird.apps-monitor.callback", v12);

    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observers = v2->_observers;
    v2->_observers = v15;

    v17 = [BRCUserDefaults defaultsForMangledID:0];
    [v17 appsFetchPacerDelay];
    v18 = v2->_fetchInstalledAppsQueue;
    v19 = br_pacer_create();
    refetchPacer = v2->_refetchPacer;
    v2->_refetchPacer = v19;

    objc_initWeak(&location, v2);
    v21 = v2->_refetchPacer;
    v30[1] = MEMORY[0x277D85DD0];
    v30[2] = 3221225472;
    v30[3] = __31__BRCCloudDocsAppsMonitor_init__block_invoke;
    v30[4] = &unk_2784FF400;
    objc_copyWeak(&v31, &location);
    br_pacer_set_event_handler();
    v22 = v2->_refetchPacer;
    br_pacer_resume();
    v23 = [BRCUserDefaults defaultsForMangledID:0];
    [v23 appsFetchPacerDelay];
    v24 = v2->_fetchInstalledAppsQueue;
    v25 = br_pacer_create();
    incrementalRefetchPacer = v2->_incrementalRefetchPacer;
    v2->_incrementalRefetchPacer = v25;

    v27 = v2->_incrementalRefetchPacer;
    objc_copyWeak(v30, &location);
    br_pacer_set_event_handler();
    v28 = v2->_incrementalRefetchPacer;
    br_pacer_resume();
    [(BRCCloudDocsAppsMonitor *)v2 _start];
    objc_destroyWeak(v30);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__BRCCloudDocsAppsMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refetchApps];
}

void __31__BRCCloudDocsAppsMonitor_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refetchPendingApps];
}

- (void)dumpToContext:(id)a3
{
  v4 = a3;
  [v4 writeLineWithFormat:@"apps monitor"];
  [v4 writeLineWithFormat:@"-----------------------------------------------------"];
  [v4 pushIndentation];
  [(BRCCloudDocsAppsMonitor *)self _dumpCloudDocsAppLibrariesByAppIDToContext:v4];
  [v4 writeLineWithFormat:&stru_2837504F0];
  [(BRCCloudDocsAppsMonitor *)self _dumpAppIDsByAppLibraryIDToContext:v4];
  [v4 popIndentation];
  [v4 writeLineWithFormat:&stru_2837504F0];
}

- (void)_dumpCloudDocsAppLibrariesByAppIDToContext:(id)a3
{
  v4 = a3;
  [v4 writeLineWithFormat:@"app library IDs by App ID"];
  [v4 writeLineWithFormat:@"======================="];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke(uint64_t a1)
{
  if (fp_shouldObfuscateFilenames())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(*(a1 + 40) + 8), "count")}];
    v3 = *(*(a1 + 40) + 8);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_2;
    v8 = &unk_278508058;
    v9 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:&v5];
    [*(a1 + 32) writeLineWithFormat:@"%@", v4, v5, v6, v7, v8];
  }

  else
  {
    [*(a1 + 32) writeLineWithFormat:@"%@", *(*(a1 + 40) + 8)];
  }
}

void __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 fp_obfuscatedDotSeparatedComponents];
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_3;
  v9[3] = &unk_278501EF8;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fp_obfuscatedDotSeparatedComponents];
  [v2 addObject:v3];
}

- (void)_dumpAppIDsByAppLibraryIDToContext:(id)a3
{
  v4 = a3;
  [v4 writeLineWithFormat:@"app IDs by app library IDs"];
  [v4 writeLineWithFormat:@"======================="];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke(uint64_t a1)
{
  if (fp_shouldObfuscateFilenames())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(*(a1 + 40) + 16), "count")}];
    v3 = *(*(a1 + 40) + 16);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_2;
    v8 = &unk_278508058;
    v9 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:&v5];
    [*(a1 + 32) writeLineWithFormat:@"%@", v4, v5, v6, v7, v8];
  }

  else
  {
    [*(a1 + 32) writeLineWithFormat:@"%@", *(*(a1 + 40) + 16)];
  }
}

void __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 fp_obfuscatedDotSeparatedComponents];
  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_3;
  v11[3] = &unk_278501EF8;
  v12 = v9;
  v10 = v9;
  [v7 enumerateObjectsUsingBlock:v11];

  [*(a1 + 32) setObject:v10 forKeyedSubscript:v8];
  *a4 = 0;
}

void __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 fp_obfuscatedDotSeparatedComponents];
  [v4 addObject:v5];

  *a3 = 0;
}

@end