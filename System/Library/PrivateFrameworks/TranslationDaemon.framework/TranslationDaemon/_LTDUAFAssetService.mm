@interface _LTDUAFAssetService
+ (BOOL)_ensureAssetDownloadCompletion:(id)a3 progress:(id)a4;
+ (id)_allAssetLocales;
+ (id)_allAssetSpecifiers;
+ (id)_allAssetSpecifiersByLocaleId;
+ (id)_catalog;
+ (id)_configBundleURL;
+ (id)_deferredTimerQueue;
+ (id)_errorFor:(int64_t)a3 message:(id)a4;
+ (id)_queue;
+ (id)_requiredAssetSpecifiers;
+ (id)_subscribedAssetSpecifiers;
+ (id)_subscriptions;
+ (id)assetUsageValuesForAssetType:(unint64_t)a3;
+ (id)pendingDownloadSchedulingAssetsNameToEntry;
+ (id)queryAssetType:(id)a3 filter:(unint64_t)a4 error:(id *)a5;
+ (unint64_t)stateForAsset:(id)a3;
+ (void)_cancelDeferredUnsubscribeTimer;
+ (void)_catalog;
+ (void)_deferredUnsubscribe;
+ (void)_downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)_registerChangeHandler:(id)a3;
+ (void)_registerForAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)_registerOneTimeChangeHandler:(id)a3;
+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)a3;
+ (void)_subscribe:(id)a3 completion:(id)a4;
+ (void)_subscribeWithAssetSpecifiers:(id)a3 completion:(id)a4;
+ (void)_unsubscribe:(id)a3 completion:(id)a4;
+ (void)_unsubscribeWithAssetSpecifiers:(id)a3 completion:(id)a4;
+ (void)_updateDeferredUnsubscribeTimer;
+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)downloadCatalogForAssetType:(id)a3 completion:(id)a4;
+ (void)purgeAsset:(id)a3 completion:(id)a4;
+ (void)queryAssetType:(id)a3 filter:(unint64_t)a4 completion:(id)a5;
@end

@implementation _LTDUAFAssetService

+ (id)_queue
{
  if (_queue_onceToken_2 != -1)
  {
    +[_LTDUAFAssetService _queue];
  }

  v3 = _queue__queue_2;

  return v3;
}

+ (id)_deferredTimerQueue
{
  if (_deferredTimerQueue_onceToken != -1)
  {
    +[_LTDUAFAssetService _deferredTimerQueue];
  }

  v3 = _deferredTimerQueue__queue;

  return v3;
}

+ (id)pendingDownloadSchedulingAssetsNameToEntry
{
  if (pendingDownloadSchedulingAssetsNameToEntry_onceToken_0 != -1)
  {
    +[_LTDUAFAssetService pendingDownloadSchedulingAssetsNameToEntry];
  }

  v3 = pendingDownloadSchedulingAssetsNameToEntry__pendingDownloadSchedulingAssets_0;

  return v3;
}

+ (id)_configBundleURL
{
  v2 = [MEMORY[0x277D779F8] sharedManager];
  v3 = [v2 retrieveAssetSet:@"com.apple.sequoia.asset" usages:&unk_2848681A8];

  v4 = [v3 assets];
  v5 = [v4 objectForKeyedSubscript:@"com.apple.sequoia.asset.config"];
  v6 = [v5 location];

  return v6;
}

+ (id)assetUsageValuesForAssetType:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [_LTDUAFBridge assetUsagesForAssetType:a3];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MEMORY[0x277D779F8] sharedManager];
        v12 = [v11 knownUsagesForAssetSet:@"com.apple.sequoia.asset" usageType:v10];

        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_allAssetLocales
{
  if (_allAssetLocales_onceToken != -1)
  {
    +[_LTDUAFAssetService _allAssetLocales];
  }

  v3 = _allAssetLocales_result;

  return v3;
}

+ (id)_allAssetSpecifiersByLocaleId
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52___LTDUAFAssetService__allAssetSpecifiersByLocaleId__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_allAssetSpecifiersByLocaleId_onceToken != -1)
  {
    dispatch_once(&_allAssetSpecifiersByLocaleId_onceToken, block);
  }

  v2 = _allAssetSpecifiersByLocaleId_result;

  return v2;
}

+ (id)_allAssetSpecifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___LTDUAFAssetService__allAssetSpecifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_allAssetSpecifiers_onceToken != -1)
  {
    dispatch_once(&_allAssetSpecifiers_onceToken, block);
  }

  v2 = _allAssetSpecifiers_result;

  return v2;
}

+ (id)_requiredAssetSpecifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [a1 _allAssetSpecifiersByLocaleId];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 _selectedLocales];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        [v3 unionSet:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v3 addObject:@"com.apple.sequoia.asset.config"];
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_subscriptions
{
  v2 = [MEMORY[0x277D779F8] sharedManager];
  v3 = [v2 subscriptionsForSubscriber:@"com.apple.translationd.uaf"];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

+ (id)_subscribedAssetSpecifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [a1 _subscriptions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) name];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_catalog
{
  *(&v80[2] + 4) = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "UAF Asset in the _catalog", buf, 2u);
  }

  v4 = _LTOSLogAssets();
  v5 = os_signpost_id_generate(v4);
  v6 = _LTOSLogAssets();
  v7 = v6;
  v53 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "uafCatalog", "begin", buf, 2u);
  }

  spid = v5;

  os_unfair_lock_lock(&_subscriptionLock_0);
  v8 = objc_opt_new();
  v9 = [a1 _allAssetSpecifiers];
  v50 = [v9 mutableCopy];

  v10 = [a1 _requiredAssetSpecifiers];
  v11 = [v10 mutableCopy];

  v12 = [a1 _subscribedAssetSpecifiers];
  v13 = [v12 mutableCopy];

  v14 = [v11 mutableCopy];
  [v14 minusSet:v13];
  if ([v14 count])
  {
    v15 = _LTOSLogAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v80[0] = v14;
      _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_DEFAULT, "Found missing subscriptions for %{public}@", buf, 0xCu);
    }

    v16 = _LTOSLogAssets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v80[0] = v11;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEFAULT, "Updating subscription with %{public}@", buf, 0xCu);
    }

    [a1 _subscribeWithAssetSpecifiers:v11 completion:0];
  }

  v51 = v14;
  v52 = v11;
  v54 = a1;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v13;
  v57 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v57)
  {
    v56 = *v71;
    v17 = *MEMORY[0x277D77A20];
    do
    {
      v18 = 0;
      do
      {
        if (*v71 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v18;
        v19 = [_LTDUAFBridge assetUsagesForAssetSpecifier:*(*(&v70 + 1) + 8 * v18)];
        v20 = [MEMORY[0x277D779F8] sharedManager];
        v60 = v19;
        v21 = [v20 retrieveAssetSet:@"com.apple.sequoia.asset" usages:v19];

        v59 = v21;
        v22 = [v21 assets];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v58 = v22;
        v23 = [v22 allValues];
        v24 = [v23 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v67;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v67 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v66 + 1) + 8 * i);
              v29 = [v28 metadata];
              v30 = [v29 objectForKeyedSubscript:v17];

              if (v30)
              {
                v31 = [v8 objectForKeyedSubscript:v30];

                if (!v31)
                {
                  v32 = [[_LTDUAFAssetModel alloc] initWithProvider:v28];
                  if (v32)
                  {
                    [v8 setObject:v32 forKeyedSubscript:v30];
                  }

                  else
                  {
                    v34 = _LTOSLogAssets();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      *v75 = 138543362;
                      v76 = v28;
                      _os_log_error_impl(&dword_232E53000, v34, OS_LOG_TYPE_ERROR, "Nil asset model created for asset provider: %{public}@", v75, 0xCu);
                    }
                  }
                }
              }

              else
              {
                v33 = _LTOSLogAssets();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  [(_LTDUAFAssetService *)buf _catalog:v33];
                }
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v25);
        }

        v18 = v61 + 1;
      }

      while (v61 + 1 != v57);
      v57 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v57);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = v50;
  v36 = [v35 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v63;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v62 + 1) + 8 * j);
        v41 = [v8 objectForKeyedSubscript:v40];

        if (!v41)
        {
          v42 = [[_LTDUAFAssetModel alloc] initWithAssetSpecifier:v40];
          if (v42)
          {
            [v8 setObject:v42 forKeyedSubscript:v40];
          }

          else
          {
            v43 = _LTOSLogAssets();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *v75 = 138543362;
              v76 = v40;
              _os_log_error_impl(&dword_232E53000, v43, OS_LOG_TYPE_ERROR, "Nil asset model created for asset specifier: %{public}@", v75, 0xCu);
            }
          }
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v37);
  }

  [v54 _updateDeferredUnsubscribeTimer];
  os_unfair_lock_unlock(&_subscriptionLock_0);
  v44 = _LTOSLogAssets();
  v45 = v44;
  if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *v75 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v45, OS_SIGNPOST_INTERVAL_END, spid, "uafCatalog", "end", v75, 2u);
  }

  v46 = [v8 allValues];

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

+ (void)queryAssetType:(id)a3 filter:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56___LTDUAFAssetService_queryAssetType_filter_completion___block_invoke;
  v13[3] = &unk_2789B5818;
  v16 = a1;
  v17 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

+ (id)queryAssetType:(id)a3 filter:(unint64_t)a4 error:(id *)a5
{
  v6 = [a1 _catalog];
  v7 = v6;
  if (a4 > 2)
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = [v6 _ltCompactMap:*(&off_2789B6A18 + a4)];
  }

  return v8;
}

+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  os_unfair_lock_lock(&_downloadThrottlingLock_0);
  v13 = [[_LTDAssetModelDownloadEntry alloc] initWithAsset:v10 options:a4 progress:v12 completion:v11];

  v14 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
  v15 = [v10 assetName];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = _LTOSLogAssets();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 asset];
      v20 = [v19 assetName];
      v32 = 138412290;
      v33 = v20;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads found existing same entry %@", &v32, 0xCu);
    }

    v21 = [v16 duplicateEntries];
    [v21 addObject:v13];

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
  }

  else
  {
    v22 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
    v23 = [v10 assetName];
    [v22 setObject:v13 forKey:v23];

    v24 = _LTOSLogAssets();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = [(_LTDAssetModelDownloadEntry *)v13 asset];
      v27 = [v26 assetName];
      v32 = 138412290;
      v33 = v27;
      _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads downloads starting first download of %@", &v32, 0xCu);
    }

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
    os_unfair_lock_lock(&_subscriptionLock_0);
    [a1 _cancelDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_subscriptionLock_0);
    v28 = [(_LTDAssetModelDownloadEntry *)v13 options];
    v29 = [(_LTDAssetModelDownloadEntry *)v13 progress];
    v30 = [(_LTDAssetModelDownloadEntry *)v13 completion];
    [a1 _downloadAsset:v13 options:v28 progress:v29 completion:v30];
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads finished download", buf, 2u);
  }

  os_unfair_lock_lock(&_downloadThrottlingLock_0);
  if (v4)
  {
    v6 = [v4 asset];
    v7 = [v6 progress];
    v8 = [v7 offlineState];

    if (v8 == 2)
    {
      v9 = [v4 duplicateEntries];
      v10 = [v9 count];

      if (v10)
      {
        v11 = _LTOSLogAssets();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = [v4 asset];
          v14 = [v13 assetName];
          *buf = 138412290;
          v62 = v14;
          _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads successfully finished with deduped entries %@", buf, 0xCu);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = v4;
        v15 = [v4 duplicateEntries];
        v16 = [v15 countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v58;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v58 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v57 + 1) + 8 * i);
              v21 = _LTOSLogAssets();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                v23 = [v20 asset];
                v24 = [v23 assetName];
                *buf = 138412290;
                v62 = v24;
                _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads updating offlineStatus and calling completion on the duplicate entry assets %@", buf, 0xCu);
              }

              v25 = [v20 completion];
              v25[2](v25, 0);
            }

            v17 = [v15 countByEnumeratingWithState:&v57 objects:v65 count:16];
          }

          while (v17);
        }

        v4 = v56;
        v26 = [v56 duplicateEntries];
        [v26 removeAllObjects];

        a1 = v55;
      }
    }
  }

  v27 = [v4 duplicateEntries];
  v28 = [v27 count];

  if (v28)
  {
    v29 = _LTOSLogAssets();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = [v4 asset];
      v32 = [v31 assetName];
      *buf = 138412290;
      v62 = v32;
      _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads re-enqueue same assets %@", buf, 0xCu);
    }

    v33 = [v4 duplicateEntries];
    v34 = [v33 firstObject];

    v35 = [v4 duplicateEntries];
    [v35 removeObjectAtIndex:0];

    v36 = [v4 duplicateEntries];
    [v34 setDuplicateEntries:v36];

    v37 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
    v38 = [v34 asset];
    v39 = [v38 assetName];
    [v37 setObject:v34 forKey:v39];

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
    v40 = [v34 options];
    v41 = [v34 progress];
    v42 = [v34 completion];
    [a1 _downloadAsset:v34 options:v40 progress:v41 completion:v42];
  }

  else
  {
    v43 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
    v44 = [v4 asset];
    v45 = [v44 assetName];
    [v43 removeObjectForKey:v45];

    v46 = _LTOSLogAssets();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
      v48 = [v4 asset];
      v49 = [v48 assetName];
      v50 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
      v51 = [v50 count];
      *buf = 138412546;
      v62 = v49;
      v63 = 2048;
      v64 = v51;
      _os_log_impl(&dword_232E53000, v47, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads finished downloading assets %@ pending assets count %lu", buf, 0x16u);
    }

    v52 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
    v53 = [v52 count];

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
    os_unfair_lock_lock(&_subscriptionLock_0);
    [a1 _updateDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_subscriptionLock_0);
    if (!v53)
    {
      +[_LTDLanguageAssetService syncInstalledLocalesIfPowerAllows];
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

+ (void)_downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 asset];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v15 = [a1 _errorFor:15 message:{@"Asset model is not a UAF asset model, abort download"}];
    v16 = _LTOSLogAssets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_LTDUAFAssetService _downloadAsset:options:progress:completion:];
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    else if (!v12)
    {
LABEL_8:
      [a1 _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:v10];
      goto LABEL_9;
    }

    v12[2](v12, v15);
    goto LABEL_8;
  }

  v14 = [v10 asset];

  if (!v14)
  {
    goto LABEL_5;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke;
  v22[3] = &unk_2789B6930;
  v23 = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke_2;
  v17[3] = &unk_2789B6958;
  v18 = v14;
  v20 = v12;
  v21 = a1;
  v19 = v10;
  v15 = v14;
  [a1 _registerForAsset:v15 options:a4 progress:v22 completion:v17];

LABEL_9:
}

+ (void)purgeAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (!v9)
  {
    v12 = [a1 _errorFor:21 message:{@"Asset model is not a UAF asset mode, abort purge"}];
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_LTDUAFAssetService purgeAsset:completion:];
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else if (!v7)
    {
      goto LABEL_9;
    }

    v7[2](v7, 0, v12);
    goto LABEL_9;
  }

  v11 = [v9 assetName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45___LTDUAFAssetService_purgeAsset_completion___block_invoke;
  v14[3] = &unk_2789B58D0;
  v15 = v10;
  v16 = v7;
  [a1 _unsubscribe:v11 completion:v14];

  v12 = v15;
LABEL_9:
}

+ (void)downloadCatalogForAssetType:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 1, 0);
  }
}

+ (unint64_t)stateForAsset:(id)a3
{
  v3 = MEMORY[0x277D779F8];
  v4 = a3;
  v5 = [v3 sharedManager];
  v6 = [v4 assetName];

  v7 = [v5 downloadStatusForSubscriber:@"com.apple.translationd.uaf" subscriptionName:v6];
  if (v7 > 7)
  {
    return 1;
  }

  else
  {
    return qword_233005C70[v7];
  }
}

+ (void)_subscribe:(id)a3 completion:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [_LTDUAFBridge assetUsagesForAssetSpecifier:v6];
  v9 = v8;
  if (v8)
  {
    v23 = @"com.apple.sequoia.asset";
    v24[0] = v8;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v24;
    v12 = &v23;
  }

  else
  {
    v21 = @"com.apple.sequoia.asset";
    v22 = MEMORY[0x277CBEC10];
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v22;
    v12 = &v21;
  }

  v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v14 = [objc_alloc(MEMORY[0x277D77A08]) initWithName:v6 assetSets:v13 usageAliases:0 expires:0];
  if (!v14)
  {
    v15 = [a1 _errorFor:15 message:@"Asset subscription for UAF asset model failed"];
    v18 = _LTOSLogAssets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[_LTDUAFAssetService _subscribe:completion:];
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else if (!v7)
    {
      goto LABEL_9;
    }

    v7[2](v7, v15);
    goto LABEL_9;
  }

  v15 = [MEMORY[0x277D779F8] sharedManager];
  v20 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v17 = [a1 _queue];
  [v15 subscribe:@"com.apple.translationd.uaf" subscriptions:v16 queue:v17 completion:v7];

LABEL_9:
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)_subscribeWithAssetSpecifiers:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [_LTDUAFBridge assetUsagesForAssetSpecifier:v11];
        v13 = v12;
        if (v12)
        {
          v35 = @"com.apple.sequoia.asset";
          v36 = v12;
          v14 = MEMORY[0x277CBEAC0];
          v15 = &v36;
          v16 = &v35;
        }

        else
        {
          v33 = @"com.apple.sequoia.asset";
          v34 = MEMORY[0x277CBEC10];
          v14 = MEMORY[0x277CBEAC0];
          v15 = &v34;
          v16 = &v33;
        }

        v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
        v18 = [objc_alloc(MEMORY[0x277D77A08]) initWithName:v11 assetSets:v17 usageAliases:0 expires:0];
        if (!v18)
        {
          v23 = [a1 _errorFor:15 message:@"Asset subscription for UAF asset model failed"];
          v24 = _LTOSLogAssets();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            +[_LTDUAFAssetService _subscribe:completion:];
          }

          v22 = v27;
          v20 = obj;
          if (v27)
          {
            (*(v27 + 2))(v27, v23);
          }

          v21 = obj;
          goto LABEL_18;
        }

        v19 = v18;
        [v6 addObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = obj;

  v21 = [MEMORY[0x277D779F8] sharedManager];
  v13 = [a1 _queue];
  v22 = v27;
  [v21 subscribe:@"com.apple.translationd.uaf" subscriptions:v6 queue:v13 completion:v27];
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)_unsubscribe:(id)a3 completion:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D779F8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedManager];
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = [a1 _queue];
  [v9 unsubscribe:@"com.apple.translationd.uaf" subscriptionNames:v10 queue:v11 completion:v7];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_unsubscribeWithAssetSpecifiers:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277D779F8];
  v7 = a4;
  v8 = a3;
  v10 = [v6 sharedManager];
  v9 = [a1 _queue];
  [v10 unsubscribe:@"com.apple.translationd.uaf" subscriptionNames:v8 queue:v9 completion:v7];
}

+ (id)_errorFor:(int64_t)a3 message:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"LTTranslationDaemonErrorDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)_registerChangeHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D779F8] sharedManager];
  v6 = [a1 _queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___LTDUAFAssetService__registerChangeHandler___block_invoke;
  v9[3] = &unk_2789B5418;
  v10 = v4;
  v7 = v4;
  v8 = [v5 observeAssetSet:@"com.apple.sequoia.asset" queue:v6 handler:v9];
}

+ (void)_registerOneTimeChangeHandler:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v5 = [MEMORY[0x277D779F8] sharedManager];
  v6 = [a1 _queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53___LTDUAFAssetService__registerOneTimeChangeHandler___block_invoke;
  v10[3] = &unk_2789B6980;
  v11 = v4;
  v12 = &v13;
  v7 = v4;
  v8 = [v5 observeAssetSet:@"com.apple.sequoia.asset" queue:v6 handler:v10];
  v9 = v14[5];
  v14[5] = v8;

  _Block_object_dispose(&v13, 8);
}

+ (BOOL)_ensureAssetDownloadCompletion:(id)a3 progress:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 assetName];
  v8 = [_LTDUAFBridge assetUsagesForAssetSpecifier:v7];

  v9 = [MEMORY[0x277D779F8] sharedManager];
  v10 = [v9 retrieveAssetSet:@"com.apple.sequoia.asset" usages:v8];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [v10 assets];
  v12 = [v11 allValues];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = v10;
    v33 = v8;
    v34 = v6;
    v15 = *v37;
    v16 = *MEMORY[0x277D77A20];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v18 metadata];
        v20 = [v19 objectForKeyedSubscript:v16];
        v21 = [v5 assetName];
        v22 = [v20 isEqualToString:v21];

        if (v22)
        {
          v24 = _LTOSLogAssets();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [v18 name];
            v27 = [v18 location];
            *buf = 138412546;
            v41 = v26;
            v42 = 2112;
            v43 = v27;
            _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEFAULT, "UAF asset download completed name %@, location %@", buf, 0x16u);
          }

          v28 = [v18 location];

          v23 = v28 != 0;
          v10 = v32;
          if (v28)
          {
            v29 = [v5 progress];
            [v29 setOfflineState:2];
          }

          v6 = v34;
          v34[2](v34, v5);
          v8 = v33;
          goto LABEL_16;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v23 = 0;
    v8 = v33;
    v6 = v34;
    v10 = v32;
  }

  else
  {
    v23 = 0;
  }

LABEL_16:

  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (void)_registerForAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v8 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v10 assetName];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_DEFAULT, "UAF asset registration for %{public}@", &buf, 0xCu);
  }

  v16 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6;
  v39 = __Block_byref_object_dispose__6;
  v40 = 0;
  if (v8)
  {
    v35 = *MEMORY[0x277D77A40];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  }

  v17 = [MEMORY[0x277D779F8] sharedManager];
  v18 = [v10 assetName];
  v19 = [a1 _queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke;
  v30[3] = &unk_2789B69A8;
  v31 = v10;
  v32 = v11;
  p_buf = &buf;
  v34 = a1;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_400;
  v24[3] = &unk_2789B69F8;
  v28 = &buf;
  v20 = v12;
  v26 = v20;
  v29 = a1;
  v21 = v31;
  v25 = v21;
  v22 = v32;
  v27 = v22;
  [v17 updateAssetsForSubscriber:@"com.apple.translationd.uaf" subscriptionName:v18 policies:v16 queue:v19 detailedProgress:v30 completion:v24];

  _Block_object_dispose(&buf, 8);
  v23 = *MEMORY[0x277D85DE8];
}

+ (void)_updateDeferredUnsubscribeTimer
{
  [a1 _cancelDeferredUnsubscribeTimer];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(_LTDUAFAssetService *)v3];
  }

  v4 = [a1 _deferredTimerQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  v6 = _deferredUnsubscribeTimer_0;
  _deferredUnsubscribeTimer_0 = v5;

  v7 = _deferredUnsubscribeTimer_0;
  v8 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54___LTDUAFAssetService__updateDeferredUnsubscribeTimer__block_invoke;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = a1;
  dispatch_source_set_event_handler(_deferredUnsubscribeTimer_0, handler);
  dispatch_resume(_deferredUnsubscribeTimer_0);
}

+ (void)_cancelDeferredUnsubscribeTimer
{
  if (_deferredUnsubscribeTimer_0)
  {
    dispatch_source_cancel(_deferredUnsubscribeTimer_0);
    v2 = _deferredUnsubscribeTimer_0;
    _deferredUnsubscribeTimer_0 = 0;
  }
}

+ (void)_deferredUnsubscribe
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_subscriptionLock_0);
  v3 = [a1 _subscribedAssetSpecifiers];
  v4 = [v3 mutableCopy];

  v5 = [a1 _requiredAssetSpecifiers];
  v6 = [v5 mutableCopy];

  v7 = [v4 mutableCopy];
  [v7 minusSet:v6];
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 allObjects];
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Remove orphaned MT subscription for %@", &v13, 0xCu);
  }

  v11 = [v7 allObjects];
  [a1 _unsubscribeWithAssetSpecifiers:v11 completion:0];

  [a1 _cancelDeferredUnsubscribeTimer];
  os_unfair_lock_unlock(&_subscriptionLock_0);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_catalog
{
  v7 = a2;
  v8 = [a3 name];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_232E53000, v7, OS_LOG_TYPE_ERROR, "No asset specifier found for subscribed asset: %{public}@", a1, 0xCu);
}

+ (void)_downloadAsset:options:progress:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Asset download failed with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)purgeAsset:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Asset purge failed with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_subscribe:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Asset download for UAF asset %@ failed with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end