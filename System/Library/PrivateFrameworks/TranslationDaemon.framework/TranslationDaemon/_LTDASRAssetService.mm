@interface _LTDASRAssetService
+ (BOOL)_supportsGASR;
+ (BOOL)isSupportedTaskHint:(int64_t)hint;
+ (id)_assetTypesForDevice;
+ (id)_availableAssets;
+ (id)_catalog;
+ (id)_requiredAssets;
+ (id)_requiredSFConfigsForAssets:(id)assets;
+ (id)_selectedLTLocalesIdentifiers;
+ (id)_subscribedSFConfigs;
+ (id)_supportedGASRLocaleIdentifiers;
+ (id)_supportedLTLocaleIdentifiers;
+ (id)assetSpecifierForSFConfig:(id)config;
+ (id)deferredUnsubscribeAssets;
+ (id)pathToSFAsset:(id)asset;
+ (id)pendingDownloadSchedulingAssetsNameToEntry;
+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error;
+ (id)queue;
+ (id)supportedLanguagesForTaskHint:(int64_t)hint;
+ (void)_downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)entry;
+ (void)_subscribe:(id)_subscribe progress:(id)progress completion:(id)completion;
+ (void)_unsubscribe:(id)_unsubscribe completion:(id)completion;
+ (void)cancelDeferredUnsubscribeTimer;
+ (void)deferredUnsubscribe;
+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)purgeAsset:(id)asset completion:(id)completion;
+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion;
+ (void)updateDeferredUnsubscribeTimer;
@end

@implementation _LTDASRAssetService

+ (id)deferredUnsubscribeAssets
{
  if (deferredUnsubscribeAssets_onceToken != -1)
  {
    +[_LTDASRAssetService deferredUnsubscribeAssets];
  }

  v3 = deferredUnsubscribeAssets__deferredUnsubscribeAssets;

  return v3;
}

+ (id)pendingDownloadSchedulingAssetsNameToEntry
{
  if (pendingDownloadSchedulingAssetsNameToEntry_onceToken != -1)
  {
    +[_LTDASRAssetService pendingDownloadSchedulingAssetsNameToEntry];
  }

  v3 = pendingDownloadSchedulingAssetsNameToEntry__pendingDownloadSchedulingAssets;

  return v3;
}

+ (id)queue
{
  if (queue_onceToken != -1)
  {
    +[_LTDASRAssetService queue];
  }

  v3 = queue__queue;

  return v3;
}

+ (BOOL)_supportsGASR
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = MEMORY[0x277CDCF20];

    LOBYTE(v2) = [v3 isGeneralASRSupportedOnDevice];
  }

  return v2;
}

+ (BOOL)isSupportedTaskHint:(int64_t)hint
{
  if ((hint - 9) < 2)
  {
    return [self _supportsGASR];
  }

  if (hint == 1)
  {
    return [self _supportsNGASR];
  }

  return 0;
}

+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  queue = [self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56___LTDASRAssetService_queryAssetType_filter_completion___block_invoke;
  v13[3] = &unk_2789B5818;
  selfCopy = self;
  filterCopy = filter;
  v14 = typeCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = typeCopy;
  dispatch_async(queue, v13);
}

+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error
{
  _catalog = [self _catalog];
  v7 = _catalog;
  if (filter >= 2)
  {
    if (filter != 2)
    {
      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v8 = [_catalog lt_filterUsingBlock:&__block_literal_global_344];
  }

  else
  {
    v8 = _catalog;
  }

  v9 = v8;
LABEL_7:

  return v9;
}

+ (id)_assetTypesForDevice
{
  array = [MEMORY[0x277CBEB18] array];
  if ([self _supportsGASR])
  {
    [array addObject:@"com.apple.MobileAsset.UAF.Speech.AutomaticSpeechRecognition"];
  }

  if ([self _supportsNGASR])
  {
    [array addObject:@"com.apple.MobileAsset.UAF.Siri.Understanding"];
  }

  return array;
}

+ (id)supportedLanguagesForTaskHint:(int64_t)hint
{
  switch(hint)
  {
    case 11:
      v3 = &unk_284867D80;
      goto LABEL_12;
    case 10:
      v3 = &unk_284867D50;
      if (_LTIsInternalInstall())
      {
        v4 = _LTPreferencesIncludeHiddenCallTranslationLocales();
        v5 = &unk_284867D68;
LABEL_8:
        if (v4)
        {
          v3 = v5;
        }
      }

LABEL_12:
      v6 = [MEMORY[0x277CBEB98] setWithArray:v3];
      goto LABEL_14;
    case 9:
      v3 = &unk_284867D20;
      if (_LTIsInternalInstall())
      {
        v4 = _LTPreferencesIncludeHiddenCallTranslationLocales();
        v5 = &unk_284867D38;
        goto LABEL_8;
      }

      goto LABEL_12;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)_selectedLTLocalesIdentifiers
{
  v2 = _LTPreferencesInstalledLocales();
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  return v3;
}

+ (id)_supportedLTLocaleIdentifiers
{
  v2 = +[_LTDUAFAssetService _allAssetLocales];
  v3 = [v2 _ltCompactMap:&__block_literal_global_403];
  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

+ (id)_supportedGASRLocaleIdentifiers
{
  if ([self _supportsGASR])
  {
    v3 = [_LTDASRAssetService supportedLanguagesForTaskHint:9];
    v4 = [v3 mutableCopy];

    v5 = [self supportedLanguagesForTaskHint:10];
    [v4 unionSet:v5];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

+ (id)_availableAssets
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39___LTDASRAssetService__availableAssets__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_availableAssets_onceToken != -1)
  {
    dispatch_once(&_availableAssets_onceToken, block);
  }

  v2 = _availableAssets_shared;

  return v2;
}

+ (id)_requiredAssets
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _availableAssets = [self _availableAssets];
  _selectedLTLocalesIdentifiers = [self _selectedLTLocalesIdentifiers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [_selectedLTLocalesIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_selectedLTLocalesIdentifiers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [_availableAssets objectForKeyedSubscript:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [_selectedLTLocalesIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)assetSpecifierForSFConfig:(id)config
{
  v3 = MEMORY[0x277CCACA8];
  configCopy = config;
  language = [configCopy language];
  [configCopy assetType];

  v6 = SFEntitledAssetTypeToString();
  v7 = [v3 stringWithFormat:@"ASR-%@_%@", language, v6];

  return v7;
}

+ (id)_requiredSFConfigsForAssets:(id)assets
{
  v36 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = assetsCopy;
  obj = [assetsCopy allValues];
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v30 + 1) + 8 * v6);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        components = [v7 components];
        v9 = [components countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(components);
              }

              v13 = *(*(&v26 + 1) + 8 * i);
              if (v13)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = v13;
                }

                else
                {
                  v14 = 0;
                }
              }

              else
              {
                v14 = 0;
              }

              v15 = v14;

              provider = [v15 provider];
              v17 = [self assetSpecifierForSFConfig:provider];

              provider2 = [v15 provider];

              [dictionary setObject:provider2 forKeyedSubscript:v17];
            }

            v10 = [components countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)_subscribedSFConfigs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CDCEB8] subscriptionsForClientIdentifier:@"com.apple.translationd.asr"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [self assetSpecifierForSFConfig:{v10, v14}];
        [dictionary setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)_catalog
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_DEFAULT, "ASR Asset in the _catalog", buf, 2u);
  }

  v3 = _LTOSLogAssets();
  v4 = os_signpost_id_generate(v3);
  v5 = _LTOSLogAssets();
  v6 = v5;
  v49 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "asrCatalog", "begin", buf, 2u);
  }

  spid = v4;

  os_unfair_lock_lock(&_subscriptionLock);
  _availableAssets = [self _availableAssets];
  v52 = [_availableAssets mutableCopy];

  _requiredAssets = [self _requiredAssets];
  v8 = [self _requiredSFConfigsForAssets:?];
  _subscribedSFConfigs = [self _subscribedSFConfigs];
  v10 = [_subscribedSFConfigs mutableCopy];

  deferredUnsubscribeAssets = [self deferredUnsubscribeAssets];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  allKeys = [v10 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v71;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v71 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v70 + 1) + 8 * i);
        v18 = [v8 objectForKeyedSubscript:{v17, spid}];

        if (!v18)
        {
          v19 = [v10 objectForKeyedSubscript:v17];
          [deferredUnsubscribeAssets setObject:v19 forKeyedSubscript:v17];

          [v10 removeObjectForKey:v17];
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v14);
  }

  v47 = deferredUnsubscribeAssets;
  v48 = v8;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [_requiredAssets allKeys];
  v54 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v54)
  {
    v58 = 0;
    v51 = *v67;
    p_vtable = &OBJC_METACLASS____LTDANEService.vtable;
    do
    {
      v21 = 0;
      do
      {
        if (*v67 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v21;
        v55 = *(*(&v66 + 1) + 8 * v21);
        v22 = [_requiredAssets objectForKeyedSubscript:spid];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v56 = v22;
        components = [v22 components];
        v24 = [components countByEnumeratingWithState:&v62 objects:v76 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v63;
          v59 = *v63;
          v60 = 0;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v63 != v26)
              {
                objc_enumerationMutation(components);
              }

              v28 = *(*(&v62 + 1) + 8 * j);
              if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                provider = [v28 provider];
                v30 = [self assetSpecifierForSFConfig:provider];

                if (v30)
                {
                  v31 = [v10 objectForKeyedSubscript:v30];

                  if (!v31)
                  {
                    provider2 = [v28 provider];
                    [v10 setObject:provider2 forKeyedSubscript:v30];

                    v58 = 1;
                  }

                  v33 = p_vtable;
                  v34 = objc_alloc((p_vtable + 152));
                  assetName = [v28 assetName];
                  v36 = v10;
                  v37 = [v10 objectForKeyedSubscript:v30];
                  v38 = [v34 initWithAssetIdentifier:assetName provider:v37];

                  if (v60)
                  {
                    [(_LTDAssetModel *)v60 addComponentAsset:v38];
                  }

                  else
                  {
                    v60 = [[_LTDAssetModel alloc] initWithProvider:v38];
                  }

                  v10 = v36;
                  p_vtable = v33;
                  v26 = v59;
                }

                else
                {
                  v40 = _LTOSLogAssets();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v75 = v28;
                    _os_log_error_impl(&dword_232E53000, v40, OS_LOG_TYPE_ERROR, "Failed to obtain asset specifier for ASR asset %{public}@", buf, 0xCu);
                  }
                }
              }

              else
              {

                v39 = _LTOSLogAssets();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v75 = v28;
                  _os_log_error_impl(&dword_232E53000, v39, OS_LOG_TYPE_ERROR, "Skipping invalid non-ASR asset %{public}@", buf, 0xCu);
                }
              }
            }

            v25 = [components countByEnumeratingWithState:&v62 objects:v76 count:16];
          }

          while (v25);
        }

        else
        {
          v60 = 0;
        }

        [v52 setObject:v60 forKeyedSubscript:v55];
        v21 = v57 + 1;
      }

      while (v57 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v54);
  }

  else
  {
    v58 = 0;
  }

  if ([v47 count] || (v58 & 1) != 0)
  {
    [self updateDeferredUnsubscribeTimer];
  }

  os_unfair_lock_unlock(&_subscriptionLock);
  v41 = _LTOSLogAssets();
  v42 = v41;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v42, OS_SIGNPOST_INTERVAL_END, spid, "asrCatalog", "end", buf, 2u);
  }

  allValues = [v52 allValues];

  v44 = *MEMORY[0x277D85DE8];

  return allValues;
}

+ (void)_subscribe:(id)_subscribe progress:(id)progress completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  _subscribeCopy = _subscribe;
  progressCopy = progress;
  completionCopy = completion;
  v10 = _LTOSLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    language = [_subscribeCopy language];
    *buf = 138412290;
    v23 = language;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEFAULT, "Actually in subscribe for %@", buf, 0xCu);
  }

  if (_subscribeCopy)
  {
    v13 = MEMORY[0x277CDCEB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54___LTDASRAssetService__subscribe_progress_completion___block_invoke;
    v20[3] = &unk_2789B5880;
    v21 = progressCopy;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2;
    v17[3] = &unk_2789B58A8;
    v18 = _subscribeCopy;
    v19 = completionCopy;
    [v13 fetchAssetWithConfig:v18 clientIdentifier:@"com.apple.translationd.asr" progress:v20 completion:v17];

    v14 = v21;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscribe request with nil SFEntitledAssetConfig"];
    v15 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:v14 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v15);

    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)_unsubscribe:(id)_unsubscribe completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  _unsubscribeCopy = _unsubscribe;
  completionCopy = completion;
  v7 = completionCopy;
  if (_unsubscribeCopy)
  {
    v8 = _LTOSLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      language = [_unsubscribeCopy language];
      *buf = 138543362;
      v19 = language;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "ASR unsubscribe for %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x277CDCEB8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47___LTDASRAssetService__unsubscribe_completion___block_invoke;
    v15[3] = &unk_2789B58D0;
    v16 = _unsubscribeCopy;
    v17 = v7;
    [v11 unsubscribeFromAssetWithConfig:v16 clientIdentifier:@"com.apple.translationd.asr" completion:v15];
  }

  else if (completionCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscribe request with nil SFEntitledAssetConfig"];
    v13 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:v12 userInfo:0];
    (v7)[2](v7, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)entry
{
  v74 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads finished download", buf, 2u);
  }

  os_unfair_lock_lock(&_downloadThrottlingLock);
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
          v70 = assetName;
          _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads successfully finished with deduped entries %@", buf, 0xCu);
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = entryCopy;
        duplicateEntries2 = [entryCopy duplicateEntries];
        v16 = [duplicateEntries2 countByEnumeratingWithState:&v65 objects:v73 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v66;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v66 != v18)
              {
                objc_enumerationMutation(duplicateEntries2);
              }

              v20 = *(*(&v65 + 1) + 8 * i);
              v21 = _LTOSLogAssets();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                asset3 = [v20 asset];
                assetName2 = [asset3 assetName];
                *buf = 138412290;
                v70 = assetName2;
                _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads updating offlineStatus and calling completion on the duplicate entry assets %@", buf, 0xCu);
              }

              asset4 = [v20 asset];
              progress2 = [asset4 progress];
              [progress2 updatePercentComplete:1.0];

              asset5 = [v20 asset];
              progress3 = [asset5 progress];
              [progress3 setOfflineState:2];

              progress4 = [v20 progress];

              if (progress4)
              {
                progress5 = [v20 progress];
                asset6 = [v20 asset];
                (progress5)[2](progress5, asset6);
              }

              completion = [v20 completion];
              completion[2](completion, 0);
            }

            v17 = [duplicateEntries2 countByEnumeratingWithState:&v65 objects:v73 count:16];
          }

          while (v17);
        }

        entryCopy = v64;
        duplicateEntries3 = [v64 duplicateEntries];
        [duplicateEntries3 removeAllObjects];

        self = v63;
      }
    }
  }

  duplicateEntries4 = [entryCopy duplicateEntries];
  v35 = [duplicateEntries4 count];

  if (v35)
  {
    v36 = _LTOSLogAssets();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      asset7 = [entryCopy asset];
      assetName3 = [asset7 assetName];
      *buf = 138412290;
      v70 = assetName3;
      _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads re-enqueue same assets %@", buf, 0xCu);
    }

    duplicateEntries5 = [entryCopy duplicateEntries];
    firstObject = [duplicateEntries5 firstObject];

    duplicateEntries6 = [entryCopy duplicateEntries];
    [duplicateEntries6 removeObjectAtIndex:0];

    duplicateEntries7 = [entryCopy duplicateEntries];
    [firstObject setDuplicateEntries:duplicateEntries7];

    pendingDownloadSchedulingAssetsNameToEntry = [self pendingDownloadSchedulingAssetsNameToEntry];
    asset8 = [firstObject asset];
    assetName4 = [asset8 assetName];
    [pendingDownloadSchedulingAssetsNameToEntry setObject:firstObject forKey:assetName4];

    os_unfair_lock_unlock(&_downloadThrottlingLock);
    options = [firstObject options];
    progress6 = [firstObject progress];
    completion2 = [firstObject completion];
    [self _downloadAsset:firstObject options:options progress:progress6 completion:completion2];
  }

  else
  {
    pendingDownloadSchedulingAssetsNameToEntry2 = [self pendingDownloadSchedulingAssetsNameToEntry];
    asset9 = [entryCopy asset];
    assetName5 = [asset9 assetName];
    [pendingDownloadSchedulingAssetsNameToEntry2 removeObjectForKey:assetName5];

    v53 = _LTOSLogAssets();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v53;
      asset10 = [entryCopy asset];
      assetName6 = [asset10 assetName];
      pendingDownloadSchedulingAssetsNameToEntry3 = [self pendingDownloadSchedulingAssetsNameToEntry];
      v58 = [pendingDownloadSchedulingAssetsNameToEntry3 count];
      *buf = 138412546;
      v70 = assetName6;
      v71 = 2048;
      v72 = v58;
      _os_log_impl(&dword_232E53000, v54, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads finished downloading assets %@ pending assets count %lu", buf, 0x16u);
    }

    pendingDownloadSchedulingAssetsNameToEntry4 = [self pendingDownloadSchedulingAssetsNameToEntry];
    v60 = [pendingDownloadSchedulingAssetsNameToEntry4 count];

    [self updateDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_downloadThrottlingLock);
    if (!v60)
    {
      v61 = _LTOSLogAssets();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v61, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads completed all pending downloads", buf, 2u);
      }

      +[_LTDLanguageAssetService syncInstalledLocalesIfPowerAllows];
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

+ (void)_downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  asset = [assetCopy asset];
  if (!asset || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    asset = 0;
LABEL_6:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR asset service unsupported asset type"];
    v15 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v14 userInfo:0];
    v16 = _LTOSLogAssets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_LTDASRAssetService _downloadAsset:v16 options:? progress:? completion:?];
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
LABEL_9:
      [self _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:assetCopy];

      goto LABEL_10;
    }

    completionCopy[2](completionCopy, v15);
    goto LABEL_9;
  }

  if ([asset managedAssetProvider] != 3)
  {
    goto LABEL_6;
  }

  provider = [asset provider];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke;
  v23[3] = &unk_2789B58F8;
  v24 = asset;
  v25 = progressCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2;
  v17[3] = &unk_2789B5920;
  asset = v24;
  v18 = asset;
  v20 = v25;
  v19 = assetCopy;
  v21 = completionCopy;
  selfCopy = self;
  [self _subscribe:provider progress:v23 completion:v17];

  v14 = v24;
LABEL_10:
}

+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  progressCopy = progress;
  os_unfair_lock_lock(&_downloadThrottlingLock);
  v13 = [[_LTDASRAssetModelDownloadEntry alloc] initWithAsset:assetCopy options:options progress:progressCopy completion:completionCopy];

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
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads found existing same entry %@", &v32, 0xCu);
    }

    duplicateEntries = [v16 duplicateEntries];
    [duplicateEntries addObject:v13];

    os_unfair_lock_unlock(&_downloadThrottlingLock);
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
      asset2 = [(_LTDASRAssetModelDownloadEntry *)v13 asset];
      assetName4 = [asset2 assetName];
      v32 = 138412290;
      v33 = assetName4;
      _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads downloads starting first download of %@", &v32, 0xCu);
    }

    [self cancelDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_downloadThrottlingLock);
    options = [(_LTDASRAssetModelDownloadEntry *)v13 options];
    progress = [(_LTDASRAssetModelDownloadEntry *)v13 progress];
    completion = [(_LTDASRAssetModelDownloadEntry *)v13 completion];
    [self _downloadAsset:v13 options:options progress:progress completion:completion];
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)purgeAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = assetCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    if ([v8 managedAssetProvider] == 3)
    {
      provider = [v8 provider];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45___LTDASRAssetService_purgeAsset_completion___block_invoke;
      v14[3] = &unk_2789B58D0;
      v9 = v8;
      v15 = v9;
      v16 = completionCopy;
      [self _unsubscribe:provider completion:v14];

      v11 = v15;
      goto LABEL_9;
    }
  }

  else
  {

    v9 = 0;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR asset service unsupported asset type"];
  v12 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:20 description:v11 userInfo:0];
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[_LTDASRAssetService purgeAsset:completion:];
  }

  (*(completionCopy + 2))(completionCopy, 0, v12);

LABEL_9:
}

+ (id)pathToSFAsset:(id)asset
{
  if (asset)
  {
    v4 = [MEMORY[0x277CDCEB8] pathToAssetWithConfig:asset clientIdentifier:@"com.apple.translationd.asr"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)updateDeferredUnsubscribeTimer
{
  [self cancelDeferredUnsubscribeTimer];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(_LTDASRAssetService *)v3];
  }

  queue = [self queue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  v6 = _deferredUnsubscribeTimer;
  _deferredUnsubscribeTimer = v5;

  v7 = _deferredUnsubscribeTimer;
  v8 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53___LTDASRAssetService_updateDeferredUnsubscribeTimer__block_invoke;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = self;
  dispatch_source_set_event_handler(_deferredUnsubscribeTimer, handler);
  dispatch_resume(_deferredUnsubscribeTimer);
}

+ (void)cancelDeferredUnsubscribeTimer
{
  if (_deferredUnsubscribeTimer)
  {
    dispatch_source_cancel(_deferredUnsubscribeTimer);
    v2 = _deferredUnsubscribeTimer;
    _deferredUnsubscribeTimer = 0;
  }
}

+ (void)deferredUnsubscribe
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_subscriptionLock);
  _requiredAssets = [self _requiredAssets];
  v4 = [self _requiredSFConfigsForAssets:_requiredAssets];
  deferredUnsubscribeAssets = [self deferredUnsubscribeAssets];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [deferredUnsubscribeAssets allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = [deferredUnsubscribeAssets objectForKeyedSubscript:v11];
          [self _unsubscribe:v13 completion:0];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [deferredUnsubscribeAssets removeAllObjects];
  [self cancelDeferredUnsubscribeTimer];
  os_unfair_lock_unlock(&_subscriptionLock);

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_downloadAsset:(void *)a1 options:progress:completion:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() asset];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "ASR failed to download asset %{public}@: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)purgeAsset:completion:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  v4 = v0;
  _os_log_error_impl(&dword_232E53000, v1, OS_LOG_TYPE_ERROR, "ASR failed to download asset %{public}@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end