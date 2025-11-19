@interface PPSettings
+ (BOOL)isCloudSyncEnabled;
+ (BOOL)isVoiceAssistantEnabled;
+ (id)cloudSyncDisabledFirstPartyBundleIds;
+ (id)sharedInstance;
+ (void)clearTestSettings;
+ (void)disableBundleIdentifier:(id)a3;
- (BOOL)bundleIdentifierIsEnabledForCloudKit:(id)a3;
- (BOOL)bundleIdentifierIsEnabledForDonation:(id)a3;
- (BOOL)isAppConnectionsLocationsEnabled;
- (BOOL)isAuthorizedToLogLocation;
- (BOOL)queryPlanLoggingEnabled;
- (BOOL)showLocationsFoundInApps;
- (BOOL)trialUseDefaultFiles;
- (PPSettings)init;
- (double)assetMetadataRefreshIntervalSeconds;
- (double)weightMultiplier;
- (id)_donationDisabledBundleIds;
- (id)abGroupOverride;
- (id)assetDefaultBundleOverridePathForAssetIdentifier:(id)a3;
- (id)entitiesBackfilledTimestamp;
- (id)entitiesMappingPreviousTrieSha256;
- (id)trialPathOverrideForNamespaceName:(id)a3 factorName:(id)a4;
- (id)trialPathOverrides;
- (int)registerDisabledBundleIdentifierChangeHandler:(id)a3;
- (int)registerQueryPlanLoggingChangeHandler:(id)a3;
- (uint64_t)_invokeChangeHandlersAsync;
- (void)_purgeRecordsForDisabledBundleIdsAsync;
- (void)_refreshCloudKitDisabledBundleIds;
- (void)_refreshDisabledBundleIds;
- (void)_triggerDelayedBundleIdPurge;
- (void)_triggerDelayedOperationWithCoalescingToken:(void *)a3 operation:;
- (void)_updateAppConnectionsSettings;
- (void)clearAssetMetadataRefreshIntervalSeconds;
- (void)deregisterDisabledBundleIdentifierChangeHandlerWithToken:(int)a3;
- (void)deregisterQueryPlanLoggingChangeHandlerWithToken:(int)a3;
- (void)refreshCloudKitDisabledBundleIdsAsync;
- (void)registerCloudKitDisabledBundleIdRewriteHandler;
- (void)registerDisabledBundleIdPurgeHandler;
- (void)rewriteSyncStateForDisabledBundleIdsAsync;
- (void)setAppConnectionsLocationsEnabled:(BOOL)a3;
- (void)setAssetDefaultBundleOverridePath:(id)a3 assetIdentifier:(id)a4;
- (void)setAssetMetadataRefreshIntervalSeconds:(double)a3;
- (void)setEntitiesBackfilledTimestamp:(id)a3;
- (void)setEntitiesMappingTrieSha256:(id)a3;
- (void)setQueryPlanLoggingEnabled:(BOOL)a3;
- (void)setTrialPathOverrideForNamespaceName:(id)a3 factorName:(id)a4 path:(id)a5;
- (void)triggerDelayedCloudSyncRewrite;
@end

@implementation PPSettings

void __18__PPSettings_init__block_invoke(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPSettings: Suggestions settings changed", v3, 2u);
  }

  [(PPSettings *)*(a1 + 32) _updateAppConnectionsSettings];
}

- (void)_updateAppConnectionsSettings
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = pp_default_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPSettings: reading App Connections settings...", buf, 2u);
    }

    v3 = a1[3];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__PPSettings__updateAppConnectionsSettings__block_invoke;
    v7[3] = &unk_278972568;
    v7[4] = a1;
    [v3 runWithLockAcquired:v7];
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [a1 isAppConnectionsLocationsEnabled];
      *buf = 67109120;
      v9 = v5;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPSettings: appConnectionsLocationsEnabled = %d", buf, 8u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PPSettings__updateAppConnectionsSettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v4[52] = [v2 showLocationsFoundInApps];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)showLocationsFoundInApps
{
  v2 = *MEMORY[0x277D3A650];
  v3 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  LOBYTE(v2) = [v3 containsObject:v2];

  return v2 ^ 1;
}

- (BOOL)isAppConnectionsLocationsEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PPSettings_isAppConnectionsLocationsEnabled__block_invoke;
  v5[3] = &unk_2789725B8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PPSettings_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken4_3395 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken4_3395, block);
  }

  v2 = sharedInstance__pasExprOnceResult_3396;

  return v2;
}

- (void)_purgeRecordsForDisabledBundleIdsAsync
{
  if (a1)
  {
    v3 = 0;
    atomic_compare_exchange_strong(_purgeRecordsForDisabledBundleIdsAsync_isInQueue, &v3, 1u);
    if (!v3)
    {
      block[5] = v1;
      block[6] = v2;
      v4 = *(a1 + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__PPSettings__purgeRecordsForDisabledBundleIdsAsync__block_invoke;
      block[3] = &unk_2789790A8;
      block[4] = a1;
      dispatch_async(v4, block);
    }
  }
}

void __52__PPSettings__purgeRecordsForDisabledBundleIdsAsync__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  [(PPSettings *)*(a1 + 32) _refreshDisabledBundleIds];
  v2 = [(PPSettings *)*(a1 + 32) _donationDisabledBundleIds];
  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [v2 count];
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "PPSettings triggering purge of records from %lu disabled bundleIds.", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v30;
    *&v5 = 138412290;
    v24 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v10 = +[PPLocalNamedEntityStore defaultStore];
        v28 = 0;
        v11 = [v10 deleteAllNamedEntitiesFromSourcesWithBundleId:v9 deletedCount:0 error:&v28];
        v12 = v28;

        if ((v11 & 1) == 0)
        {
          v13 = pp_default_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v35 = v12;
            _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPSettings failed to purge named entity records from disabled bundleId: %@", buf, 0xCu);
          }
        }

        v14 = +[PPLocalTopicStore defaultStore];
        v27 = 0;
        v15 = [v14 deleteAllTopicsFromSourcesWithBundleId:v9 deletedCount:0 error:&v27];
        v16 = v27;

        if ((v15 & 1) == 0)
        {
          v17 = pp_default_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v35 = v16;
            _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "PPSettings failed to purge topic records from disabled bundleId: %@", buf, 0xCu);
          }
        }

        v18 = +[PPLocalLocationStore defaultStore];
        v26 = 0;
        v19 = [v18 deleteAllLocationsFromSourcesWithBundleId:v9 deletedCount:0 error:&v26];
        v20 = v26;

        if ((v19 & 1) == 0)
        {
          v21 = pp_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v35 = v20;
            _os_log_error_impl(&dword_23224A000, v21, OS_LOG_TYPE_ERROR, "PPSettings failed to purge location records from disabled bundleId: %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v22 = pp_default_log_handle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPSettings completed disabled bundleId purge.", buf, 2u);
  }

  atomic_store(0, _purgeRecordsForDisabledBundleIdsAsync_isInQueue);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_refreshDisabledBundleIds
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = [v2 objectForKey:@"SiriCanLearnFromAppBlacklist"];
      v4 = v3;
      v5 = MEMORY[0x277CBEBF8];
      if (v3)
      {
        v5 = v3;
      }

      v6 = v5;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v6];
        [v7 addObject:*MEMORY[0x277D3A638]];
        if (!+[PPSettings isVoiceAssistantEnabled])
        {
          v8 = objc_autoreleasePoolPush();
          v9 = pp_default_log_handle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "Portrait access to Siri is disabled.", buf, 2u);
          }

          [v7 addObject:*MEMORY[0x277D3A6A8]];
          objc_autoreleasePoolPop(v8);
        }

        v10 = [v7 mutableCopy];
        v11 = *(a1 + 24);
        v17 = MEMORY[0x277D85DD0];
        v18 = 3221225472;
        v19 = __39__PPSettings__refreshDisabledBundleIds__block_invoke;
        v20 = &unk_278972590;
        v21 = v10;
        v12 = v7;
        v22 = v12;
        v13 = v10;
        [v11 runWithLockAcquired:&v17];
        v14 = pp_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v12 count:v17];
          *buf = 134217984;
          v24 = v15;
          _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSettings loaded %lu disabled bundleIds from prefs", buf, 0xCu);
        }
      }

      else
      {
        v12 = pp_default_log_handle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPSettings found unexpected value type for disabled bundleIds.", buf, 2u);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isVoiceAssistantEnabled
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

void __39__PPSettings__refreshDisabledBundleIds__block_invoke(uint64_t a1, id *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2 + 2;
  v5 = a2[2];
  v6 = a2;
  [v3 minusSet:v5];
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPSettings disabled bundles: %@ newly disabled: %@", &v11, 0x16u);
  }

  objc_storeStrong(v4, *(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_donationDisabledBundleIds
{
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__3300;
    v12 = __Block_byref_object_dispose__3301;
    v13 = 0;
    v2 = *(a1 + 24);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__PPSettings__donationDisabledBundleIds__block_invoke;
    v7[3] = &unk_2789725B8;
    v7[4] = &v8;
    [v2 runWithLockAcquired:v7];
    v3 = v9[5];
    _Block_object_dispose(&v8, 8);

    if (!v3)
    {
      [(PPSettings *)a1 _refreshDisabledBundleIds];
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__3300;
      v12 = __Block_byref_object_dispose__3301;
      v13 = 0;
      v4 = *(a1 + 24);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__PPSettings__donationDisabledBundleIds__block_invoke_2;
      v6[3] = &unk_2789725B8;
      v6[4] = &v8;
      [v4 runWithLockAcquired:v6];
      v3 = v9[5];
      _Block_object_dispose(&v8, 8);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)rewriteSyncStateForDisabledBundleIdsAsync
{
  v4 = 0;
  atomic_compare_exchange_strong(rewriteSyncStateForDisabledBundleIdsAsync_isInQueue, &v4, 1u);
  if (!v4)
  {
    block[7] = v2;
    block[8] = v3;
    [(PPSettings *)self refreshCloudKitDisabledBundleIdsAsync];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PPSettings_rewriteSyncStateForDisabledBundleIdsAsync__block_invoke;
    block[3] = &unk_2789790A8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)refreshCloudKitDisabledBundleIdsAsync
{
  v4 = 0;
  atomic_compare_exchange_strong(refreshCloudKitDisabledBundleIdsAsync_isInQueue, &v4, 1u);
  if (!v4)
  {
    block[5] = v2;
    block[6] = v3;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PPSettings_refreshCloudKitDisabledBundleIdsAsync__block_invoke;
    block[3] = &unk_2789790A8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_refreshCloudKitDisabledBundleIds
{
  v32[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277CBEB58]);
    v3 = +[PPSettings cloudSyncDisabledFirstPartyBundleIds];
    v4 = [v2 initWithSet:v3];

    v5 = *MEMORY[0x277D3A698];
    v6 = *MEMORY[0x277CB89F0];
    v31[0] = *MEMORY[0x277CB8928];
    v31[1] = v6;
    v7 = *MEMORY[0x277D3A668];
    v32[0] = v5;
    v32[1] = v7;
    v31[2] = *MEMORY[0x277CB8A48];
    v32[2] = *MEMORY[0x277D3A6A8];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v9 = objc_opt_new();
    if (!v9)
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPSettings failed to open accountStore", buf, 2u);
      }
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __47__PPSettings__refreshCloudKitDisabledBundleIds__block_invoke;
    v26[3] = &unk_2789726E8;
    v27 = v9;
    v11 = v4;
    v28 = v11;
    v12 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v26];

    v13 = *MEMORY[0x277D6C230];
    v14 = TCCAccessCopyBundleIdentifiersDisabledForService();
    v15 = *MEMORY[0x277D6C190];
    v16 = TCCAccessCopyBundleIdentifiersDisabledForService();
    if (v14)
    {
      [v11 addObjectsFromArray:v14];
      v17 = pp_default_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v14;
        _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "PPSettings TCC disabled for Ubiquity: %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = pp_default_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "PPSettings failed to load bundleIds disabled for Ubiquity.", buf, 2u);
      }
    }

    if (v16)
    {
      [v11 addObjectsFromArray:v16];
      v18 = pp_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v16;
        _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "PPSettings TCC disabled for Liverpool: %@", buf, 0xCu);
      }
    }

    else
    {
      v18 = pp_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "PPSettings failed to load bundleIds disabled for Liverpool.", buf, 2u);
      }
    }

    v19 = *(a1 + 24);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__PPSettings__refreshCloudKitDisabledBundleIds__block_invoke_232;
    v24[3] = &unk_278972568;
    v20 = v11;
    v25 = v20;
    [v19 runWithLockAcquired:v24];
    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v20 count];
      *buf = 134217984;
      v30 = v22;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPSettings loaded %lu disabled bundleIds from CloudKit prefs.", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)cloudSyncDisabledFirstPartyBundleIds
{
  v22[8] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3A658];
  v22[0] = *MEMORY[0x277D3A648];
  v22[1] = v2;
  v3 = *MEMORY[0x277D3A5F0];
  v22[2] = *MEMORY[0x277D3A680];
  v22[3] = v3;
  v4 = *MEMORY[0x277D3A5F8];
  v22[4] = *MEMORY[0x277D3A670];
  v22[5] = v4;
  v5 = *MEMORY[0x277D3A638];
  v22[6] = *MEMORY[0x277D3A690];
  v22[7] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:8];
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    v12 = *MEMORY[0x277D3A6C8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [v12 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
        if (v14)
        {
          [v7 addObjectsFromArray:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

void __47__PPSettings__refreshCloudKitDisabledBundleIds__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accountIdentifiersEnabledForDataclass:v5];
  if (![v7 count])
  {
    [*(a1 + 40) addObject:v6];
  }

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 count];
    v11 = "sync ok";
    v12 = 138412802;
    v13 = v5;
    if (!v10)
    {
      v11 = "sync disable";
    }

    v14 = 2112;
    v15 = v6;
    v16 = 2080;
    v17 = v11;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPSettings checking dataclass %@ --> %@: %s", &v12, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __55__PPSettings_rewriteSyncStateForDisabledBundleIdsAsync__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__3300;
    v15 = __Block_byref_object_dispose__3301;
    v16 = 0;
    v2 = *(v1 + 24);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__PPSettings__cloudKitDisabledBundleIds__block_invoke;
    v11[3] = &unk_2789725B8;
    v11[4] = &buf;
    [v2 runWithLockAcquired:v11];
    v3 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);

    if (!v3)
    {
      [(PPSettings *)v1 _refreshCloudKitDisabledBundleIds];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy__3300;
      v15 = __Block_byref_object_dispose__3301;
      v16 = 0;
      v4 = *(v1 + 24);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__PPSettings__cloudKitDisabledBundleIds__block_invoke_2;
      v10[3] = &unk_2789725B8;
      v10[4] = &buf;
      [v4 runWithLockAcquired:v10];
      v3 = *(*(&buf + 1) + 40);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "CloudKit sync is disabled for %tu bundleIds", &buf, 0xCu);
  }

  v7 = +[PPLocalNamedEntityStore defaultStore];
  [v7 disableSyncForBundleIds:v3];

  v8 = +[PPLocalTopicStore defaultStore];
  [v8 disableSyncForBundleIds:v3];

  atomic_store(0, rewriteSyncStateForDisabledBundleIdsAsync_isInQueue);
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAuthorizedToLogLocation
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/WirelessDiagnostics.bundle"];
  v3 = [MEMORY[0x277CBFC10] authorizationStatusForBundle:v2] == 3;

  return v3;
}

- (void)deregisterQueryPlanLoggingChangeHandlerWithToken:(int)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__PPSettings_deregisterQueryPlanLoggingChangeHandlerWithToken___block_invoke;
  v4[3] = &__block_descriptor_36_e31_v16__0__PPSettingsGuardedData_8l;
  v5 = a3;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

void __63__PPSettings_deregisterQueryPlanLoggingChangeHandlerWithToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 setObject:0 forKeyedSubscript:v3];
}

- (int)registerQueryPlanLoggingChangeHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PPSettings.m" lineNumber:984 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PPSettings_registerQueryPlanLoggingChangeHandler___block_invoke;
  v10[3] = &unk_278972600;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [(_PASLock *)lock runWithLockAcquired:v10];
  LODWORD(lock) = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  return lock;
}

void __52__PPSettings_registerQueryPlanLoggingChangeHandler___block_invoke(uint64_t a1, _DWORD *a2)
{
  v3 = a2[12];
  a2[12] = v3 + 1;
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = _Block_copy(v4);
  v6 = v5[5];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 40) + 8) + 24)];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)queryPlanLoggingEnabled
{
  v2 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"queryPlanLoggingEnabled"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQueryPlanLoggingEnabled:(BOOL)a3
{
  portraitDefaults = self->_portraitDefaults;
  if (a3)
  {
    [(NSUserDefaults *)portraitDefaults setObject:MEMORY[0x277CBEC38] forKey:@"queryPlanLoggingEnabled"];
  }

  else
  {
    [(NSUserDefaults *)portraitDefaults removeObjectForKey:@"queryPlanLoggingEnabled"];
  }
}

- (id)assetDefaultBundleOverridePathForAssetIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PPSettings.m" lineNumber:923 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"assetDefaultBundleOverridePaths"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 objectForKeyedSubscript:v5];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setTrialPathOverrideForNamespaceName:(id)a3 factorName:(id)a4 path:(id)a5
{
  v25 = a3;
  v9 = a4;
  v10 = a5;
  if (!v25)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PPSettings.m" lineNumber:893 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PPSettings.m" lineNumber:894 description:{@"Invalid parameter not satisfying: %@", @"factorName"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"trialPathOverrides"];
  v12 = v11;
  if (v10 || ([v11 objectForKeyedSubscript:v25], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", v9), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v12 mutableCopy];
    }

    else
    {
      v15 = objc_opt_new();
    }

    v16 = v15;
    v17 = [v12 objectForKeyedSubscript:v25];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 mutableCopy];
    }

    else
    {
      v18 = objc_opt_new();
    }

    v19 = v18;
    [v18 setObject:v10 forKeyedSubscript:v9];
    if ([v19 count])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    [v16 setObject:v20 forKeyedSubscript:v25];
    v21 = [v16 count];
    portraitDefaults = self->_portraitDefaults;
    if (v21)
    {
      [(NSUserDefaults *)portraitDefaults setObject:v16 forKey:@"trialPathOverrides"];
    }

    else
    {
      [(NSUserDefaults *)portraitDefaults removeObjectForKey:@"trialPathOverrides"];
    }
  }
}

- (id)trialPathOverrideForNamespaceName:(id)a3 factorName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PPSettings.m" lineNumber:882 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"PPSettings.m" lineNumber:883 description:{@"Invalid parameter not satisfying: %@", @"factorName"}];

LABEL_3:
  v10 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"trialPathOverrides"];
  v11 = [v10 objectForKeyedSubscript:v7];

  return v11;
}

- (BOOL)trialUseDefaultFiles
{
  v2 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"trialUseDefaultFiles"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)trialPathOverrides
{
  v2 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"trialPathOverrides"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (void)setAssetDefaultBundleOverridePath:(id)a3 assetIdentifier:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PPSettings.m" lineNumber:846 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v8 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"assetDefaultBundleOverridePaths"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  [v9 setObject:v14 forKeyedSubscript:v7];
  v11 = [v10 count];
  portraitDefaults = self->_portraitDefaults;
  if (v11)
  {
    [(NSUserDefaults *)portraitDefaults setObject:v10 forKey:@"assetDefaultBundleOverridePaths"];
  }

  else
  {
    [(NSUserDefaults *)portraitDefaults removeObjectForKey:@"assetDefaultBundleOverridePaths"];
  }
}

- (double)assetMetadataRefreshIntervalSeconds
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(NSUserDefaults *)self->_portraitDefaults objectForKey:@"assetMetadataUpdateIntervalSeconds"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      [v2 doubleValue];
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Using asset metadata update interval override: %f sec", &v10, 0xCu);
    }

    [v2 doubleValue];
    v6 = v5;
  }

  else
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = 2;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "Asset metadata update interval is unset, using default value of %tu days.", &v10, 0xCu);
    }

    v6 = 172800.0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)clearAssetMetadataRefreshIntervalSeconds
{
  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Clearing asset metadata update interval.", v4, 2u);
  }

  [(NSUserDefaults *)self->_portraitDefaults removeObjectForKey:@"assetMetadataUpdateIntervalSeconds"];
}

- (void)setAssetMetadataRefreshIntervalSeconds:(double)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 >= 1.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "Setting asset metadata update interval to: %f sec", &v9, 0xCu);
  }

  portraitDefaults = self->_portraitDefaults;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [(NSUserDefaults *)portraitDefaults setObject:v7 forKey:@"assetMetadataUpdateIntervalSeconds"];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)abGroupOverride
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3300;
  v10 = __Block_byref_object_dispose__3301;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__PPSettings_abGroupOverride__block_invoke;
  v5[3] = &unk_2789725B8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)bundleIdentifierIsEnabledForCloudKit:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D425A0] waitForSemaphore:self->_initializationComplete timeoutSeconds:5.0] == 1)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "timed out waiting on PPSettings initialization", buf, 2u);
    }

    goto LABEL_5;
  }

  dispatch_semaphore_signal(self->_initializationComplete);
  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3300;
  v19 = __Block_byref_object_dispose__3301;
  v20 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__PPSettings_bundleIdentifierIsEnabledForCloudKit___block_invoke;
  v14[3] = &unk_2789725B8;
  v14[4] = buf;
  [(_PASLock *)lock runWithLockAcquired:v14];
  v5 = *(v16 + 5);
  _Block_object_dispose(buf, 8);

  if (([v5 containsObject:v4]& 1) != 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_10;
  }

  v8 = [*MEMORY[0x277D3A6C8] objectForKeyedSubscript:v4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__PPSettings_bundleIdentifierIsEnabledForCloudKit___block_invoke_2;
  v12[3] = &unk_278972710;
  v5 = v5;
  v13 = v5;
  v7 = [v10 indexOfObjectPassingTest:v12] == 0x7FFFFFFFFFFFFFFFLL;

LABEL_10:
  return v7;
}

- (BOOL)bundleIdentifierIsEnabledForDonation:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D425A0] waitForSemaphore:self->_initializationComplete timeoutSeconds:5.0] == 1)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "timed out waiting on PPSettings initialization", buf, 2u);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    dispatch_semaphore_signal(self->_initializationComplete);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__3300;
    v20 = __Block_byref_object_dispose__3301;
    v21 = 0;
    lock = self->_lock;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__PPSettings_bundleIdentifierIsEnabledForDonation___block_invoke;
    v17[3] = &unk_2789725B8;
    v17[4] = buf;
    [(_PASLock *)lock runWithLockAcquired:v17];
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    if (([v5 containsObject:v4]& 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v8 = [*MEMORY[0x277D3A6C8] objectForKeyedSubscript:v4];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = MEMORY[0x277CBEBF8];
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__PPSettings_bundleIdentifierIsEnabledForDonation___block_invoke_2;
      v15[3] = &unk_278972710;
      v16 = v5;
      v6 = [v10 indexOfObjectPassingTest:v15] == 0x7FFFFFFFFFFFFFFFLL;
    }

    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = @"Blocking";
      if (v6)
      {
        v14 = @"Admitting";
      }

      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "PPSettings: %@ content from bundleIdentifier: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)entitiesMappingPreviousTrieSha256
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3300;
  v10 = __Block_byref_object_dispose__3301;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PPSettings_entitiesMappingPreviousTrieSha256__block_invoke;
  v5[3] = &unk_2789725B8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)entitiesBackfilledTimestamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3300;
  v10 = __Block_byref_object_dispose__3301;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPSettings_entitiesBackfilledTimestamp__block_invoke;
  v5[3] = &unk_2789725B8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (double)weightMultiplier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__PPSettings_weightMultiplier__block_invoke;
  v5[3] = &unk_2789725B8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __30__PPSettings_weightMultiplier__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)triggerDelayedCloudSyncRewrite
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__PPSettings_triggerDelayedCloudSyncRewrite__block_invoke;
  v2[3] = &unk_2789790A8;
  v2[4] = self;
  [(PPSettings *)self _triggerDelayedOperationWithCoalescingToken:v2 operation:?];
}

- (void)_triggerDelayedOperationWithCoalescingToken:(void *)a3 operation:
{
  v5 = a3;
  if (a1)
  {
    if (_triggerDelayedOperationWithCoalescingToken_operation___pasOnceToken33 != -1)
    {
      dispatch_once(&_triggerDelayedOperationWithCoalescingToken_operation___pasOnceToken33, &__block_literal_global_225);
    }

    v6 = _triggerDelayedOperationWithCoalescingToken_operation___pasExprOnceResult;
    atomic_fetch_add(a2, 1u);
    v7 = MEMORY[0x277D425A0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__PPSettings__triggerDelayedOperationWithCoalescingToken_operation___block_invoke_2;
    v9[3] = &unk_278975E68;
    v11 = a2;
    v10 = v5;
    v8 = v6;
    [v7 runAsyncOnQueue:v8 afterDelaySeconds:v9 block:180.0];
  }
}

uint64_t __68__PPSettings__triggerDelayedOperationWithCoalescingToken_operation___block_invoke_2(uint64_t result)
{
  if (atomic_fetch_add(*(result + 40), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __68__PPSettings__triggerDelayedOperationWithCoalescingToken_operation___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.suggestions.ppsettings.delayed-operation-queue" qosClass:9];
  v2 = _triggerDelayedOperationWithCoalescingToken_operation___pasExprOnceResult;
  _triggerDelayedOperationWithCoalescingToken_operation___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)registerDisabledBundleIdPurgeHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke;
  block[3] = &unk_2789790A8;
  block[4] = self;
  if (registerDisabledBundleIdPurgeHandler_onceToken != -1)
  {
    dispatch_once(&registerDisabledBundleIdPurgeHandler_onceToken, block);
  }
}

void __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [(PPSettings *)*(a1 + 32) _purgeRecordsForDisabledBundleIdsAsync];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_2;
  block[3] = &unk_2789790A8;
  block[4] = v2;
  dispatch_async(v3, block);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_3;
  aBlock[3] = &unk_2789790A8;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_2_221;
    v18[3] = &unk_278977560;
    v8 = v4;
    v18[4] = *(a1 + 32);
    v19 = v8;
    v9 = [PPKVOObserver observerWithName:@"purgeObserver" object:v7 key:@"SiriCanLearnFromAppBlacklist" handler:v18];
    v10 = registerDisabledBundleIdPurgeHandler__purgeObserver;
    registerDisabledBundleIdPurgeHandler__purgeObserver = v9;

    v6 = *(a1 + 32);
  }

  out_token = 0;
  v11 = *(v6 + 32);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_3_222;
  handler[3] = &unk_2789726C0;
  v12 = v5;
  handler[4] = *(a1 + 32);
  v16 = v12;
  if (notify_register_dispatch("kAFPreferencesDidChangeDarwinNotification", &out_token, v11, handler))
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "kAFPreferencesDidChangeDarwinNotification";
      _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPSettings failed to associate bundleId purge handler with notification %s .", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_2(uint64_t a1)
{
  registerDisabledBundleIdPurgeHandler_prevDisabledBundleIds = [(PPSettings *)*(a1 + 32) _donationDisabledBundleIds];

  return MEMORY[0x2821F96F8]();
}

void __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_4;
  block[3] = &unk_2789790A8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_2_221(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  [(PPSettings *)v2 _triggerDelayedBundleIdPurge];
}

void __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_3_222(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  [(PPSettings *)v2 _triggerDelayedBundleIdPurge];
}

- (void)_triggerDelayedBundleIdPurge
{
  if (a1)
  {
    v1[0] = MEMORY[0x277D85DD0];
    v1[1] = 3221225472;
    v1[2] = __42__PPSettings__triggerDelayedBundleIdPurge__block_invoke;
    v1[3] = &unk_2789790A8;
    v1[4] = a1;
    [(PPSettings *)a1 _triggerDelayedOperationWithCoalescingToken:v1 operation:?];
  }
}

void __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [(PPSettings *)*(a1 + 32) _refreshDisabledBundleIds];
  v2 = [(PPSettings *)*(a1 + 32) _donationDisabledBundleIds];
  v3 = [v2 mutableCopy];
  [v3 minusSet:registerDisabledBundleIdPurgeHandler_prevDisabledBundleIds];
  objc_storeStrong(&registerDisabledBundleIdPurgeHandler_prevDisabledBundleIds, v2);
  if ([v3 count])
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = [v3 count];
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSettings invalidating client caches due to %lu newly disabled bundleId(s).", &v6, 0xCu);
    }

    [(PPSettings *)*(a1 + 32) _invokeChangeHandlersAsync];
    dispatch_async(*(*(a1 + 32) + 32), &__block_literal_global_217);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_invokeChangeHandlersAsync
{
  if (result)
  {
    v1 = *(result + 24);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __40__PPSettings__invokeChangeHandlersAsync__block_invoke;
    v2[3] = &unk_278972568;
    v2[4] = result;
    return [v1 runWithLockAcquired:v2];
  }

  return result;
}

void __50__PPSettings_registerDisabledBundleIdPurgeHandler__block_invoke_215()
{
  PPPostNotification("com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated");
  PPPostNotification("com.apple.proactive.PersonalizationPortrait.topicsInvalidated");

  PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
}

uint64_t __40__PPSettings__invokeChangeHandlersAsync__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__PPSettings__invokeChangeHandlersAsync__block_invoke_2;
  v4[3] = &unk_278972648;
  v4[4] = *(a1 + 32);
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)registerCloudKitDisabledBundleIdRewriteHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke;
  block[3] = &unk_2789790A8;
  block[4] = self;
  if (registerCloudKitDisabledBundleIdRewriteHandler_onceToken != -1)
  {
    dispatch_once(&registerCloudKitDisabledBundleIdRewriteHandler_onceToken, block);
  }
}

void __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) rewriteSyncStateForDisabledBundleIdsAsync];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke_2;
  aBlock[3] = &unk_2789790A8;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.suggestions.pp.disabled-bundleid-update-notification" qosClass:9];
  out_token = 0;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke_3;
  handler[3] = &unk_278972670;
  v4 = v2;
  v19 = v4;
  if (notify_register_dispatch("com.apple.tcc.access.changed", &out_token, v3, handler))
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "com.apple.tcc.access.changed";
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPSettings failed to register for notification: %s", buf, 0xCu);
    }
  }

  if (kPPCanLearnFromAppKey_block_invoke__pasOnceToken24 != -1)
  {
    dispatch_once(&kPPCanLearnFromAppKey_block_invoke__pasOnceToken24, &__block_literal_global_211);
  }

  v6 = kPPCanLearnFromAppKey_block_invoke__pasExprOnceResult;
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277CB8DB8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke_2_213;
  v14[3] = &unk_278972698;
  v15 = v6;
  v16 = v3;
  v17 = v4;
  v9 = v4;
  v10 = v3;
  v11 = v6;
  v12 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) refreshCloudKitDisabledBundleIdsAsync];
  v2 = *(a1 + 32);

  return [v2 triggerDelayedCloudSyncRewrite];
}

void __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke_2_213(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CB8C90]];
  LODWORD(v3) = [v3 containsObject:v5];

  if (v3)
  {
    v6 = a1[5];
    v7 = a1[6];

    dispatch_async(v6, v7);
  }
}

void __60__PPSettings_registerCloudKitDisabledBundleIdRewriteHandler__block_invoke_209()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [v2 initWithObjects:{*MEMORY[0x277CB8CD0], *MEMORY[0x277CB8BA0], 0}];
  objc_autoreleasePoolPop(v1);
  v4 = kPPCanLearnFromAppKey_block_invoke__pasExprOnceResult;
  kPPCanLearnFromAppKey_block_invoke__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

- (void)deregisterDisabledBundleIdentifierChangeHandlerWithToken:(int)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__PPSettings_deregisterDisabledBundleIdentifierChangeHandlerWithToken___block_invoke;
  v4[3] = &__block_descriptor_36_e31_v16__0__PPSettingsGuardedData_8l;
  v5 = a3;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

void __71__PPSettings_deregisterDisabledBundleIdentifierChangeHandlerWithToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 setObject:0 forKeyedSubscript:v3];
}

- (int)registerDisabledBundleIdentifierChangeHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PPSettings_registerDisabledBundleIdentifierChangeHandler___block_invoke;
  v8[3] = &unk_278972600;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LODWORD(lock) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __60__PPSettings_registerDisabledBundleIdentifierChangeHandler___block_invoke(uint64_t a1, _DWORD *a2)
{
  v3 = a2[12];
  a2[12] = v3 + 1;
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = _Block_copy(v4);
  v6 = v5[4];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 40) + 8) + 24)];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (void)setEntitiesMappingTrieSha256:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PPSettings_setEntitiesMappingTrieSha256___block_invoke;
  v7[3] = &unk_278972568;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
  [(NSUserDefaults *)self->_portraitDefaults setObject:v6 forKey:@"entityMappingTrieSha256"];
}

- (void)setEntitiesBackfilledTimestamp:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PPSettings_setEntitiesBackfilledTimestamp___block_invoke;
  v7[3] = &unk_278972568;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
  [(NSUserDefaults *)self->_portraitDefaults setObject:v6 forKey:@"entityBackfillTimestamp"];
}

- (void)setAppConnectionsLocationsEnabled:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PPSettings_setAppConnectionsLocationsEnabled___block_invoke;
  v4[3] = &__block_descriptor_33_e31_v16__0__PPSettingsGuardedData_8l;
  v5 = a3;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

- (PPSettings)init
{
  v77 = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = PPSettings;
  v2 = [(PPSettings *)&v73 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = *(v3 + 16);
    *(v3 + 16) = v4;

    v6 = objc_opt_new();
    v7 = *(v3 + 32);
    *(v3 + 32) = v6;

    v8 = objc_opt_new();
    v9 = *(v3 + 40);
    *(v3 + 40) = v8;

    *(v3 + 48) = 1;
    v10 = *(v3 + 56);
    *(v3 + 56) = 0;

    v11 = *(v3 + 64);
    *(v3 + 64) = 0;

    v12 = *(v3 + 72);
    *(v3 + 72) = 0;

    v13 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v13;

    v15 = dispatch_semaphore_create(0);
    initializationComplete = v2->_initializationComplete;
    v2->_initializationComplete = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.proactive.portrait.PPSettings", v17);
    queue = v2->_queue;
    v2->_queue = v18;

    [(PPSettings *)v2 _updateAppConnectionsSettings];
    out_token = 0;
    v20 = v2->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __18__PPSettings_init__block_invoke;
    handler[3] = &unk_278972520;
    v21 = v2;
    v71 = v21;
    v22 = notify_register_dispatch("com.apple.suggestions.settingsChanged", &out_token, v20, handler);
    if (v22)
    {
      v23 = pp_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "com.apple.suggestions.settingsChanged";
        v75 = 1024;
        v76 = v22;
        _os_log_error_impl(&dword_23224A000, v23, OS_LOG_TYPE_ERROR, "failed to register for notification for %s: status code %d", location, 0x12u);
      }
    }

    v24 = 0x277CBE000uLL;
    v25 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.PersonalizationPortrait"];
    portraitDefaults = v21->_portraitDefaults;
    v21->_portraitDefaults = v25;

    if (v21->_portraitDefaults)
    {
      objc_initWeak(location, v21);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __18__PPSettings_init__block_invoke_159;
      aBlock[3] = &unk_2789797B8;
      objc_copyWeak(&v69, location);
      v27 = _Block_copy(aBlock);
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __18__PPSettings_init__block_invoke_164;
      v66[3] = &unk_2789797B8;
      objc_copyWeak(&v67, location);
      v28 = _Block_copy(v66);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __18__PPSettings_init__block_invoke_166;
      v64[3] = &unk_2789797B8;
      objc_copyWeak(&v65, location);
      v29 = _Block_copy(v64);
      v27[2](v27);
      v28[2](v28);
      v30 = [(NSUserDefaults *)v21->_portraitDefaults objectForKey:@"entityBackfillTimestamp"];
      v31 = [(NSUserDefaults *)v21->_portraitDefaults objectForKey:@"entityMappingTrieSha256"];
      v32 = v2->_lock;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __18__PPSettings_init__block_invoke_2_167;
      v61[3] = &unk_278972590;
      v33 = v30;
      v62 = v33;
      v34 = v31;
      v63 = v34;
      [(_PASLock *)v32 runWithLockAcquired:v61];

      v24 = 0x277CBE000;
      v35 = [PPKVOObserver observerWithName:@"weightObserver" object:v21->_portraitDefaults key:@"weightMultiplier" handler:v27];
      weightKVOObserver = v21->_weightKVOObserver;
      v21->_weightKVOObserver = v35;

      v37 = [PPKVOObserver observerWithName:@"abGroupObserver" object:v21->_portraitDefaults key:@"abGroupOverride" handler:v28];
      abGroupKVObserver = v21->_abGroupKVObserver;
      v21->_abGroupKVObserver = v37;

      v39 = [PPKVOObserver observerWithName:@"queryPlanLoggingObserver" object:v21->_portraitDefaults key:@"queryPlanLoggingEnabled" handler:v29];
      queryPlanLoggingKVOObserver = v21->_queryPlanLoggingKVOObserver;
      v21->_queryPlanLoggingKVOObserver = v39;

      objc_destroyWeak(&v65);
      objc_destroyWeak(&v67);

      objc_destroyWeak(&v69);
      objc_destroyWeak(location);
    }

    else
    {
      v41 = pp_default_log_handle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *location = 138412290;
        *&location[4] = @"com.apple.proactive.PersonalizationPortrait";
        _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "Failed to get NSUserDefaults for suite %@.", location, 0xCu);
      }
    }

    v42 = [objc_alloc(*(v24 + 3024)) initWithSuiteName:@"com.apple.suggestions"];
    canLearnFromAppDefaults = v21->_canLearnFromAppDefaults;
    v21->_canLearnFromAppDefaults = v42;

    if (v21->_canLearnFromAppDefaults)
    {
      objc_initWeak(location, v21);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __18__PPSettings_init__block_invoke_178;
      v58[3] = &unk_2789791D8;
      v44 = v21;
      v59 = v44;
      objc_copyWeak(&v60, location);
      v45 = _Block_copy(v58);
      v46 = [PPKVOObserver observerWithName:@"canLearnFromAppKVOObserver" object:v21->_canLearnFromAppDefaults key:@"SiriCanLearnFromAppBlacklist" handler:v45];
      canLearnFromAppKVOObserver = v44->_canLearnFromAppKVOObserver;
      v44->_canLearnFromAppKVOObserver = v46;

      v48 = v2->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __18__PPSettings_init__block_invoke_4;
      block[3] = &unk_2789790A8;
      v57 = v44;
      dispatch_async(v48, block);

      objc_destroyWeak(&v60);
      objc_destroyWeak(location);
    }

    else
    {
      v49 = pp_default_log_handle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *location = 138412290;
        *&location[4] = @"com.apple.suggestions";
        _os_log_error_impl(&dword_23224A000, v49, OS_LOG_TYPE_ERROR, "PPSettings failed to get NSUserDefaults for suite %@.", location, 0xCu);
      }
    }

    out_token = 0;
    v50 = v2->_queue;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __18__PPSettings_init__block_invoke_187;
    v54[3] = &unk_278972520;
    v55 = v21;
    if (notify_register_dispatch("kAFPreferencesDidChangeDarwinNotification", &out_token, v50, v54))
    {
      v51 = pp_default_log_handle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *location = 136315138;
        *&location[4] = "kAFPreferencesDidChangeDarwinNotification";
        _os_log_error_impl(&dword_23224A000, v51, OS_LOG_TYPE_ERROR, "PPSettings failed to register notification handler for %s .", location, 0xCu);
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
  return v2;
}

void __18__PPSettings_init__block_invoke_159(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(WeakRetained + 1) objectForKey:@"weightMultiplier"];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v3 doubleValue];
      v5 = v4;
    }

    else
    {
      v6 = pp_default_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v12 = @"weightMultiplier";
        v13 = 2112;
        v14 = @"com.apple.proactive.PersonalizationPortrait";
        _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Did not find numeric value for key %@ in NSUserDefaults domain %@.", buf, 0x16u);
      }

      v5 = 1.0;
    }

    v7 = v2[3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __18__PPSettings_init__block_invoke_161;
    v10[3] = &__block_descriptor_40_e31_v16__0__PPSettingsGuardedData_8l;
    *&v10[4] = v5;
    [v7 runWithLockAcquired:v10];
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v12 = *&v5;
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "Selected new weight multiplier: %g", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __18__PPSettings_init__block_invoke_164(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(WeakRetained + 1) objectForKey:@"abGroupOverride"];
    v4 = v2[3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __18__PPSettings_init__block_invoke_2;
    v8[3] = &unk_278972568;
    v5 = v3;
    v9 = v5;
    [v4 runWithLockAcquired:v8];
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.abGroupOverrideChanged");
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Detected new abGroupOverride: %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __18__PPSettings_init__block_invoke_166(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__3300;
    v17 = __Block_byref_object_dispose__3301;
    v18 = 0;
    v1 = WeakRetained[3];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__PPSettings__updateQueryPlanLogging__block_invoke;
    v12[3] = &unk_2789725B8;
    v12[4] = &v13;
    [v1 runWithLockAcquired:v12];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = v14[5];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v19 count:16];
    if (v3)
    {
      v4 = *v9;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v2);
          }

          (*(*(*(&v8 + 1) + 8 * i) + 16))();
        }

        v3 = [v2 countByEnumeratingWithState:&v8 objects:v19 count:16];
      }

      while (v3);
    }

    _Block_object_dispose(&v13, 8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __18__PPSettings_init__block_invoke_2_167(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 7, *(a1 + 32));
  v4 = a2;
  objc_storeStrong(v4 + 8, *(a1 + 40));
}

void __18__PPSettings_init__block_invoke_178(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__PPSettings_init__block_invoke_2_179;
  block[3] = &unk_2789797B8;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

intptr_t __18__PPSettings_init__block_invoke_4(uint64_t a1)
{
  [(PPSettings *)*(a1 + 32) _refreshDisabledBundleIds];
  v2 = *(*(a1 + 32) + 40);

  return dispatch_semaphore_signal(v2);
}

void __18__PPSettings_init__block_invoke_187(uint64_t a1)
{
  [(PPSettings *)*(a1 + 32) _refreshDisabledBundleIds];
  if (!+[PPSettings isCloudSyncEnabled])
  {
    if (*(a1 + 32))
    {
      v2 = 0;
      atomic_compare_exchange_strong(_handleCloudStorageDeletedByUser_isInQueue, &v2, 1u);
      if (!v2)
      {
        if (_handleCloudStorageDeletedByUser__pasOnceToken15 != -1)
        {
          dispatch_once(&_handleCloudStorageDeletedByUser__pasOnceToken15, &__block_literal_global_193);
        }

        v3 = _handleCloudStorageDeletedByUser__pasExprOnceResult;

        dispatch_async(v3, &__block_literal_global_197);
      }
    }
  }
}

void __46__PPSettings__handleCloudStorageDeletedByUser__block_invoke_2()
{
  v0 = pp_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v0, OS_LOG_TYPE_DEFAULT, "PPSettings: clearing remote records from database because user triggered Siri cloud storage deletion", v5, 2u);
  }

  v1 = +[PPLocalNamedEntityStore defaultStore];
  v2 = [v1 storage];
  [v2 clearRemoteRecordsMissingFromDuetWithShouldContinueBlock:&__block_literal_global_202];

  v3 = +[PPLocalTopicStore defaultStore];
  v4 = [v3 storage];
  [v4 clearRemoteRecordsMissingFromDuetWithShouldContinueBlock:&__block_literal_global_206];

  atomic_store(0, _handleCloudStorageDeletedByUser_isInQueue);
}

void __46__PPSettings__handleCloudStorageDeletedByUser__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPSettings-DKEventDeletionProcessing" qosClass:9];
  v2 = _handleCloudStorageDeletedByUser__pasExprOnceResult;
  _handleCloudStorageDeletedByUser__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __18__PPSettings_init__block_invoke_2_179(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PPSettings *)WeakRetained _refreshDisabledBundleIds];
    [(PPSettings *)v2 _invokeChangeHandlersAsync];
    dispatch_async(v2[4], &__block_literal_global_3377);
    WeakRetained = v2;
  }
}

void __18__PPSettings_init__block_invoke_3()
{
  PPPostNotification("com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated");
  PPPostNotification("com.apple.proactive.PersonalizationPortrait.topicsInvalidated");

  PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
}

void __37__PPSettings__updateQueryPlanLogging__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v7[5] allValues];
  objc_autoreleasePoolPop(v3);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

double __18__PPSettings_init__block_invoke_161(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  *(a2 + 8) = result;
  return result;
}

+ (void)clearTestSettings
{
  v2 = +[PPSettings sharedInstance];
  if (v2)
  {
    v3 = v2;
    [v2[2] removeObjectForKey:@"SiriCanLearnFromAppBlacklist"];
    dispatch_sync(v3[4], &__block_literal_global_261);
    v2 = v3;
  }
}

+ (void)disableBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[PPSettings sharedInstance];
  v5 = v3;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3300;
    v16 = __Block_byref_object_dispose__3301;
    v17 = 0;
    v6 = *(v4 + 24);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__PPSettings__disableBundleIdentifier___block_invoke;
    v11[3] = &unk_2789725B8;
    v11[4] = &v12;
    [v6 runWithLockAcquired:v11];
    v7 = v13[5];
    _Block_object_dispose(&v12, 8);

    v8 = [v7 allObjects];
    v9 = [v8 mutableCopy];

    [v9 addObject:v5];
    [*(v4 + 16) setObject:v9 forKey:@"SiriCanLearnFromAppBlacklist"];
  }

  v10 = +[PPSettings sharedInstance];
  [(PPSettings *)v10 _refreshDisabledBundleIds];
}

void __28__PPSettings_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_3396;
  sharedInstance__pasExprOnceResult_3396 = v4;

  objc_autoreleasePoolPop(v2);
}

+ (BOOL)isCloudSyncEnabled
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 cloudSyncEnabled];

  return v3;
}

@end