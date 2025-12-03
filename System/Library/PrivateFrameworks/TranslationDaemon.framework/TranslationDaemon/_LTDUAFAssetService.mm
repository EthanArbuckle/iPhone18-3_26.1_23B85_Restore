@interface _LTDUAFAssetService
+ (BOOL)_ensureAssetDownloadCompletion:(id)completion progress:(id)progress;
+ (id)_allAssetLocales;
+ (id)_allAssetSpecifiers;
+ (id)_allAssetSpecifiersByLocaleId;
+ (id)_catalog;
+ (id)_configBundleURL;
+ (id)_deferredTimerQueue;
+ (id)_errorFor:(int64_t)for message:(id)message;
+ (id)_queue;
+ (id)_requiredAssetSpecifiers;
+ (id)_subscribedAssetSpecifiers;
+ (id)_subscriptions;
+ (id)assetUsageValuesForAssetType:(unint64_t)type;
+ (id)pendingDownloadSchedulingAssetsNameToEntry;
+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error;
+ (unint64_t)stateForAsset:(id)asset;
+ (void)_cancelDeferredUnsubscribeTimer;
+ (void)_catalog;
+ (void)_deferredUnsubscribe;
+ (void)_downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)_registerChangeHandler:(id)handler;
+ (void)_registerForAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)_registerOneTimeChangeHandler:(id)handler;
+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)entry;
+ (void)_subscribe:(id)_subscribe completion:(id)completion;
+ (void)_subscribeWithAssetSpecifiers:(id)specifiers completion:(id)completion;
+ (void)_unsubscribe:(id)_unsubscribe completion:(id)completion;
+ (void)_unsubscribeWithAssetSpecifiers:(id)specifiers completion:(id)completion;
+ (void)_updateDeferredUnsubscribeTimer;
+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)downloadCatalogForAssetType:(id)type completion:(id)completion;
+ (void)purgeAsset:(id)asset completion:(id)completion;
+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion;
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
  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  v3 = [mEMORY[0x277D779F8] retrieveAssetSet:@"com.apple.sequoia.asset" usages:&unk_2848681A8];

  assets = [v3 assets];
  v5 = [assets objectForKeyedSubscript:@"com.apple.sequoia.asset.config"];
  location = [v5 location];

  return location;
}

+ (id)assetUsageValuesForAssetType:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [_LTDUAFBridge assetUsagesForAssetType:type];
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
        mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
        v12 = [mEMORY[0x277D779F8] knownUsagesForAssetSet:@"com.apple.sequoia.asset" usageType:v10];

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
  block[4] = self;
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
  block[4] = self;
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
  _allAssetSpecifiersByLocaleId = [self _allAssetSpecifiersByLocaleId];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _selectedLocales = [self _selectedLocales];
  v6 = [_selectedLocales countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_selectedLocales);
        }

        v10 = [_allAssetSpecifiersByLocaleId objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        [v3 unionSet:v10];
      }

      v7 = [_selectedLocales countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v3 addObject:@"com.apple.sequoia.asset.config"];
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_subscriptions
{
  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  v3 = [mEMORY[0x277D779F8] subscriptionsForSubscriber:@"com.apple.translationd.uaf"];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

+ (id)_subscribedAssetSpecifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  _subscriptions = [self _subscriptions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [_subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_subscriptions);
        }

        name = [*(*(&v12 + 1) + 8 * i) name];
        [v3 addObject:name];
      }

      v6 = [_subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  _allAssetSpecifiers = [self _allAssetSpecifiers];
  v50 = [_allAssetSpecifiers mutableCopy];

  _requiredAssetSpecifiers = [self _requiredAssetSpecifiers];
  v11 = [_requiredAssetSpecifiers mutableCopy];

  _subscribedAssetSpecifiers = [self _subscribedAssetSpecifiers];
  v13 = [_subscribedAssetSpecifiers mutableCopy];

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

    [self _subscribeWithAssetSpecifiers:v11 completion:0];
  }

  v51 = v14;
  v52 = v11;
  selfCopy = self;
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
        mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
        v60 = v19;
        v21 = [mEMORY[0x277D779F8] retrieveAssetSet:@"com.apple.sequoia.asset" usages:v19];

        v59 = v21;
        assets = [v21 assets];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v58 = assets;
        allValues = [assets allValues];
        v24 = [allValues countByEnumeratingWithState:&v66 objects:v77 count:16];
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
                objc_enumerationMutation(allValues);
              }

              v28 = *(*(&v66 + 1) + 8 * i);
              metadata = [v28 metadata];
              v30 = [metadata objectForKeyedSubscript:v17];

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

            v25 = [allValues countByEnumeratingWithState:&v66 objects:v77 count:16];
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

  [selfCopy _updateDeferredUnsubscribeTimer];
  os_unfair_lock_unlock(&_subscriptionLock_0);
  v44 = _LTOSLogAssets();
  v45 = v44;
  if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *v75 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v45, OS_SIGNPOST_INTERVAL_END, spid, "uafCatalog", "end", v75, 2u);
  }

  allValues2 = [v8 allValues];

  v47 = *MEMORY[0x277D85DE8];

  return allValues2;
}

+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  _queue = [self _queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56___LTDUAFAssetService_queryAssetType_filter_completion___block_invoke;
  v13[3] = &unk_2789B5818;
  selfCopy = self;
  filterCopy = filter;
  v14 = typeCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = typeCopy;
  dispatch_async(_queue, v13);
}

+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error
{
  _catalog = [self _catalog];
  v7 = _catalog;
  if (filter > 2)
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = [_catalog _ltCompactMap:*(&off_2789B6A18 + filter)];
  }

  return v8;
}

+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  progressCopy = progress;
  os_unfair_lock_lock(&_downloadThrottlingLock_0);
  v13 = [[_LTDAssetModelDownloadEntry alloc] initWithAsset:assetCopy options:options progress:progressCopy completion:completionCopy];

  pendingDownloadSchedulingAssetsNameToEntry = [self pendingDownloadSchedulingAssetsNameToEntry];
  assetName = [assetCopy assetName];
  v16 = [pendingDownloadSchedulingAssetsNameToEntry objectForKeyedSubscript:assetName];

  if (v16)
  {
    v17 = _LTOSLogAssets();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      asset = [v16 asset];
      assetName2 = [asset assetName];
      v32 = 138412290;
      v33 = assetName2;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads found existing same entry %@", &v32, 0xCu);
    }

    duplicateEntries = [v16 duplicateEntries];
    [duplicateEntries addObject:v13];

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
  }

  else
  {
    pendingDownloadSchedulingAssetsNameToEntry2 = [self pendingDownloadSchedulingAssetsNameToEntry];
    assetName3 = [assetCopy assetName];
    [pendingDownloadSchedulingAssetsNameToEntry2 setObject:v13 forKey:assetName3];

    v24 = _LTOSLogAssets();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      asset2 = [(_LTDAssetModelDownloadEntry *)v13 asset];
      assetName4 = [asset2 assetName];
      v32 = 138412290;
      v33 = assetName4;
      _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads downloads starting first download of %@", &v32, 0xCu);
    }

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
    os_unfair_lock_lock(&_subscriptionLock_0);
    [self _cancelDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_subscriptionLock_0);
    options = [(_LTDAssetModelDownloadEntry *)v13 options];
    progress = [(_LTDAssetModelDownloadEntry *)v13 progress];
    completion = [(_LTDAssetModelDownloadEntry *)v13 completion];
    [self _downloadAsset:v13 options:options progress:progress completion:completion];
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)entry
{
  v66 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads finished download", buf, 2u);
  }

  os_unfair_lock_lock(&_downloadThrottlingLock_0);
  if (entryCopy)
  {
    asset = [entryCopy asset];
    progress = [asset progress];
    offlineState = [progress offlineState];

    if (offlineState == 2)
    {
      duplicateEntries = [entryCopy duplicateEntries];
      v10 = [duplicateEntries count];

      if (v10)
      {
        v11 = _LTOSLogAssets();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          asset2 = [entryCopy asset];
          assetName = [asset2 assetName];
          *buf = 138412290;
          v62 = assetName;
          _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads successfully finished with deduped entries %@", buf, 0xCu);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = entryCopy;
        duplicateEntries2 = [entryCopy duplicateEntries];
        v16 = [duplicateEntries2 countByEnumeratingWithState:&v57 objects:v65 count:16];
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
                objc_enumerationMutation(duplicateEntries2);
              }

              v20 = *(*(&v57 + 1) + 8 * i);
              v21 = _LTOSLogAssets();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                asset3 = [v20 asset];
                assetName2 = [asset3 assetName];
                *buf = 138412290;
                v62 = assetName2;
                _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads updating offlineStatus and calling completion on the duplicate entry assets %@", buf, 0xCu);
              }

              completion = [v20 completion];
              completion[2](completion, 0);
            }

            v17 = [duplicateEntries2 countByEnumeratingWithState:&v57 objects:v65 count:16];
          }

          while (v17);
        }

        entryCopy = v56;
        duplicateEntries3 = [v56 duplicateEntries];
        [duplicateEntries3 removeAllObjects];

        self = v55;
      }
    }
  }

  duplicateEntries4 = [entryCopy duplicateEntries];
  v28 = [duplicateEntries4 count];

  if (v28)
  {
    v29 = _LTOSLogAssets();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      asset4 = [entryCopy asset];
      assetName3 = [asset4 assetName];
      *buf = 138412290;
      v62 = assetName3;
      _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads re-enqueue same assets %@", buf, 0xCu);
    }

    duplicateEntries5 = [entryCopy duplicateEntries];
    firstObject = [duplicateEntries5 firstObject];

    duplicateEntries6 = [entryCopy duplicateEntries];
    [duplicateEntries6 removeObjectAtIndex:0];

    duplicateEntries7 = [entryCopy duplicateEntries];
    [firstObject setDuplicateEntries:duplicateEntries7];

    pendingDownloadSchedulingAssetsNameToEntry = [self pendingDownloadSchedulingAssetsNameToEntry];
    asset5 = [firstObject asset];
    assetName4 = [asset5 assetName];
    [pendingDownloadSchedulingAssetsNameToEntry setObject:firstObject forKey:assetName4];

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
    options = [firstObject options];
    progress2 = [firstObject progress];
    completion2 = [firstObject completion];
    [self _downloadAsset:firstObject options:options progress:progress2 completion:completion2];
  }

  else
  {
    pendingDownloadSchedulingAssetsNameToEntry2 = [self pendingDownloadSchedulingAssetsNameToEntry];
    asset6 = [entryCopy asset];
    assetName5 = [asset6 assetName];
    [pendingDownloadSchedulingAssetsNameToEntry2 removeObjectForKey:assetName5];

    v46 = _LTOSLogAssets();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
      asset7 = [entryCopy asset];
      assetName6 = [asset7 assetName];
      pendingDownloadSchedulingAssetsNameToEntry3 = [self pendingDownloadSchedulingAssetsNameToEntry];
      v51 = [pendingDownloadSchedulingAssetsNameToEntry3 count];
      *buf = 138412546;
      v62 = assetName6;
      v63 = 2048;
      v64 = v51;
      _os_log_impl(&dword_232E53000, v47, OS_LOG_TYPE_DEFAULT, "UAF Asset downloads finished downloading assets %@ pending assets count %lu", buf, 0x16u);
    }

    pendingDownloadSchedulingAssetsNameToEntry4 = [self pendingDownloadSchedulingAssetsNameToEntry];
    v53 = [pendingDownloadSchedulingAssetsNameToEntry4 count];

    os_unfair_lock_unlock(&_downloadThrottlingLock_0);
    os_unfair_lock_lock(&_subscriptionLock_0);
    [self _updateDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_subscriptionLock_0);
    if (!v53)
    {
      +[_LTDLanguageAssetService syncInstalledLocalesIfPowerAllows];
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

+ (void)_downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  asset = [assetCopy asset];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v15 = [self _errorFor:15 message:{@"Asset model is not a UAF asset model, abort download"}];
    v16 = _LTOSLogAssets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_LTDUAFAssetService _downloadAsset:options:progress:completion:];
      if (!completionCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!completionCopy)
    {
LABEL_8:
      [self _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:assetCopy];
      goto LABEL_9;
    }

    completionCopy[2](completionCopy, v15);
    goto LABEL_8;
  }

  asset2 = [assetCopy asset];

  if (!asset2)
  {
    goto LABEL_5;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke;
  v22[3] = &unk_2789B6930;
  v23 = progressCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke_2;
  v17[3] = &unk_2789B6958;
  v18 = asset2;
  v20 = completionCopy;
  selfCopy = self;
  v19 = assetCopy;
  v15 = asset2;
  [self _registerForAsset:v15 options:options progress:v22 completion:v17];

LABEL_9:
}

+ (void)purgeAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = assetCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (!v9)
  {
    v12 = [self _errorFor:21 message:{@"Asset model is not a UAF asset mode, abort purge"}];
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_LTDUAFAssetService purgeAsset:completion:];
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_9;
    }

    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_9;
  }

  assetName = [v9 assetName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45___LTDUAFAssetService_purgeAsset_completion___block_invoke;
  v14[3] = &unk_2789B58D0;
  v15 = v10;
  v16 = completionCopy;
  [self _unsubscribe:assetName completion:v14];

  v12 = v15;
LABEL_9:
}

+ (void)downloadCatalogForAssetType:(id)type completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

+ (unint64_t)stateForAsset:(id)asset
{
  v3 = MEMORY[0x277D779F8];
  assetCopy = asset;
  sharedManager = [v3 sharedManager];
  assetName = [assetCopy assetName];

  v7 = [sharedManager downloadStatusForSubscriber:@"com.apple.translationd.uaf" subscriptionName:assetName];
  if (v7 > 7)
  {
    return 1;
  }

  else
  {
    return qword_233005C70[v7];
  }
}

+ (void)_subscribe:(id)_subscribe completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  _subscribeCopy = _subscribe;
  completionCopy = completion;
  v8 = [_LTDUAFBridge assetUsagesForAssetSpecifier:_subscribeCopy];
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
  v14 = [objc_alloc(MEMORY[0x277D77A08]) initWithName:_subscribeCopy assetSets:v13 usageAliases:0 expires:0];
  if (!v14)
  {
    mEMORY[0x277D779F8] = [self _errorFor:15 message:@"Asset subscription for UAF asset model failed"];
    v18 = _LTOSLogAssets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[_LTDUAFAssetService _subscribe:completion:];
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_9;
    }

    completionCopy[2](completionCopy, mEMORY[0x277D779F8]);
    goto LABEL_9;
  }

  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  v20 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  _queue = [self _queue];
  [mEMORY[0x277D779F8] subscribe:@"com.apple.translationd.uaf" subscriptions:v16 queue:_queue completion:completionCopy];

LABEL_9:
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)_subscribeWithAssetSpecifiers:(id)specifiers completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = specifiersCopy;
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
        _queue = v12;
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
          v23 = [self _errorFor:15 message:@"Asset subscription for UAF asset model failed"];
          v24 = _LTOSLogAssets();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            +[_LTDUAFAssetService _subscribe:completion:];
          }

          v22 = completionCopy;
          v20 = obj;
          if (completionCopy)
          {
            (*(completionCopy + 2))(completionCopy, v23);
          }

          mEMORY[0x277D779F8] = obj;
          goto LABEL_18;
        }

        v19 = v18;
        [array addObject:v18];
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

  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  _queue = [self _queue];
  v22 = completionCopy;
  [mEMORY[0x277D779F8] subscribe:@"com.apple.translationd.uaf" subscriptions:array queue:_queue completion:completionCopy];
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)_unsubscribe:(id)_unsubscribe completion:(id)completion
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D779F8];
  completionCopy = completion;
  _unsubscribeCopy = _unsubscribe;
  sharedManager = [v6 sharedManager];
  v13[0] = _unsubscribeCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  _queue = [self _queue];
  [sharedManager unsubscribe:@"com.apple.translationd.uaf" subscriptionNames:v10 queue:_queue completion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_unsubscribeWithAssetSpecifiers:(id)specifiers completion:(id)completion
{
  v6 = MEMORY[0x277D779F8];
  completionCopy = completion;
  specifiersCopy = specifiers;
  sharedManager = [v6 sharedManager];
  _queue = [self _queue];
  [sharedManager unsubscribe:@"com.apple.translationd.uaf" subscriptionNames:specifiersCopy queue:_queue completion:completionCopy];
}

+ (id)_errorFor:(int64_t)for message:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"LTTranslationDaemonErrorDomain" code:for userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)_registerChangeHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  _queue = [self _queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___LTDUAFAssetService__registerChangeHandler___block_invoke;
  v9[3] = &unk_2789B5418;
  v10 = handlerCopy;
  v7 = handlerCopy;
  v8 = [mEMORY[0x277D779F8] observeAssetSet:@"com.apple.sequoia.asset" queue:_queue handler:v9];
}

+ (void)_registerOneTimeChangeHandler:(id)handler
{
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  _queue = [self _queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53___LTDUAFAssetService__registerOneTimeChangeHandler___block_invoke;
  v10[3] = &unk_2789B6980;
  v11 = handlerCopy;
  v12 = &v13;
  v7 = handlerCopy;
  v8 = [mEMORY[0x277D779F8] observeAssetSet:@"com.apple.sequoia.asset" queue:_queue handler:v10];
  v9 = v14[5];
  v14[5] = v8;

  _Block_object_dispose(&v13, 8);
}

+ (BOOL)_ensureAssetDownloadCompletion:(id)completion progress:(id)progress
{
  v45 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  progressCopy = progress;
  assetName = [completionCopy assetName];
  v8 = [_LTDUAFBridge assetUsagesForAssetSpecifier:assetName];

  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  v10 = [mEMORY[0x277D779F8] retrieveAssetSet:@"com.apple.sequoia.asset" usages:v8];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  assets = [v10 assets];
  allValues = [assets allValues];

  obj = allValues;
  v13 = [allValues countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = v10;
    v33 = v8;
    v34 = progressCopy;
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
        metadata = [v18 metadata];
        v20 = [metadata objectForKeyedSubscript:v16];
        assetName2 = [completionCopy assetName];
        v22 = [v20 isEqualToString:assetName2];

        if (v22)
        {
          v24 = _LTOSLogAssets();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            name = [v18 name];
            location = [v18 location];
            *buf = 138412546;
            v41 = name;
            v42 = 2112;
            v43 = location;
            _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEFAULT, "UAF asset download completed name %@, location %@", buf, 0x16u);
          }

          location2 = [v18 location];

          v23 = location2 != 0;
          v10 = v32;
          if (location2)
          {
            progress = [completionCopy progress];
            [progress setOfflineState:2];
          }

          progressCopy = v34;
          v34[2](v34, completionCopy);
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
    progressCopy = v34;
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

+ (void)_registerForAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  optionsCopy = options;
  v41 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    assetName = [assetCopy assetName];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = assetName;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_DEFAULT, "UAF asset registration for %{public}@", &buf, 0xCu);
  }

  v16 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6;
  v39 = __Block_byref_object_dispose__6;
  v40 = 0;
  if (optionsCopy)
  {
    v35 = *MEMORY[0x277D77A40];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  }

  mEMORY[0x277D779F8] = [MEMORY[0x277D779F8] sharedManager];
  assetName2 = [assetCopy assetName];
  _queue = [self _queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke;
  v30[3] = &unk_2789B69A8;
  v31 = assetCopy;
  v32 = progressCopy;
  p_buf = &buf;
  selfCopy = self;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_400;
  v24[3] = &unk_2789B69F8;
  v28 = &buf;
  v20 = completionCopy;
  v26 = v20;
  selfCopy2 = self;
  v21 = v31;
  v25 = v21;
  v22 = v32;
  v27 = v22;
  [mEMORY[0x277D779F8] updateAssetsForSubscriber:@"com.apple.translationd.uaf" subscriptionName:assetName2 policies:v16 queue:_queue detailedProgress:v30 completion:v24];

  _Block_object_dispose(&buf, 8);
  v23 = *MEMORY[0x277D85DE8];
}

+ (void)_updateDeferredUnsubscribeTimer
{
  [self _cancelDeferredUnsubscribeTimer];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(_LTDUAFAssetService *)v3];
  }

  _deferredTimerQueue = [self _deferredTimerQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, _deferredTimerQueue);
  v6 = _deferredUnsubscribeTimer_0;
  _deferredUnsubscribeTimer_0 = v5;

  v7 = _deferredUnsubscribeTimer_0;
  v8 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54___LTDUAFAssetService__updateDeferredUnsubscribeTimer__block_invoke;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = self;
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
  _subscribedAssetSpecifiers = [self _subscribedAssetSpecifiers];
  v4 = [_subscribedAssetSpecifiers mutableCopy];

  _requiredAssetSpecifiers = [self _requiredAssetSpecifiers];
  v6 = [_requiredAssetSpecifiers mutableCopy];

  v7 = [v4 mutableCopy];
  [v7 minusSet:v6];
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    allObjects = [v7 allObjects];
    v13 = 138412290;
    v14 = allObjects;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Remove orphaned MT subscription for %@", &v13, 0xCu);
  }

  allObjects2 = [v7 allObjects];
  [self _unsubscribeWithAssetSpecifiers:allObjects2 completion:0];

  [self _cancelDeferredUnsubscribeTimer];
  os_unfair_lock_unlock(&_subscriptionLock_0);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_catalog
{
  v7 = a2;
  name = [a3 name];
  *self = 138543362;
  *a4 = name;
  _os_log_error_impl(&dword_232E53000, v7, OS_LOG_TYPE_ERROR, "No asset specifier found for subscribed asset: %{public}@", self, 0xCu);
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