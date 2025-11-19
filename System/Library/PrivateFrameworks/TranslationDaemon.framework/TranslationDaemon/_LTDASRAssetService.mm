@interface _LTDASRAssetService
+ (BOOL)_supportsGASR;
+ (BOOL)isSupportedTaskHint:(int64_t)a3;
+ (id)_assetTypesForDevice;
+ (id)_availableAssets;
+ (id)_catalog;
+ (id)_requiredAssets;
+ (id)_requiredSFConfigsForAssets:(id)a3;
+ (id)_selectedLTLocalesIdentifiers;
+ (id)_subscribedSFConfigs;
+ (id)_supportedGASRLocaleIdentifiers;
+ (id)_supportedLTLocaleIdentifiers;
+ (id)assetSpecifierForSFConfig:(id)a3;
+ (id)deferredUnsubscribeAssets;
+ (id)pathToSFAsset:(id)a3;
+ (id)pendingDownloadSchedulingAssetsNameToEntry;
+ (id)queryAssetType:(id)a3 filter:(unint64_t)a4 error:(id *)a5;
+ (id)queue;
+ (id)supportedLanguagesForTaskHint:(int64_t)a3;
+ (void)_downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)a3;
+ (void)_subscribe:(id)a3 progress:(id)a4 completion:(id)a5;
+ (void)_unsubscribe:(id)a3 completion:(id)a4;
+ (void)cancelDeferredUnsubscribeTimer;
+ (void)deferredUnsubscribe;
+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)purgeAsset:(id)a3 completion:(id)a4;
+ (void)queryAssetType:(id)a3 filter:(unint64_t)a4 completion:(id)a5;
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

+ (BOOL)isSupportedTaskHint:(int64_t)a3
{
  if ((a3 - 9) < 2)
  {
    return [a1 _supportsGASR];
  }

  if (a3 == 1)
  {
    return [a1 _supportsNGASR];
  }

  return 0;
}

+ (void)queryAssetType:(id)a3 filter:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56___LTDASRAssetService_queryAssetType_filter_completion___block_invoke;
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
  if (a4 >= 2)
  {
    if (a4 != 2)
    {
      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v8 = [v6 lt_filterUsingBlock:&__block_literal_global_344];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
LABEL_7:

  return v9;
}

+ (id)_assetTypesForDevice
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([a1 _supportsGASR])
  {
    [v3 addObject:@"com.apple.MobileAsset.UAF.Speech.AutomaticSpeechRecognition"];
  }

  if ([a1 _supportsNGASR])
  {
    [v3 addObject:@"com.apple.MobileAsset.UAF.Siri.Understanding"];
  }

  return v3;
}

+ (id)supportedLanguagesForTaskHint:(int64_t)a3
{
  switch(a3)
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
  if ([a1 _supportsGASR])
  {
    v3 = [_LTDASRAssetService supportedLanguagesForTaskHint:9];
    v4 = [v3 mutableCopy];

    v5 = [a1 supportedLanguagesForTaskHint:10];
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
  block[4] = a1;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [a1 _availableAssets];
  v5 = [a1 _selectedLTLocalesIdentifiers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
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
        v11 = [v4 objectForKeyedSubscript:v10];
        if (v11)
        {
          [v3 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v3 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)assetSpecifierForSFConfig:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 language];
  [v4 assetType];

  v6 = SFEntitledAssetTypeToString();
  v7 = [v3 stringWithFormat:@"ASR-%@_%@", v5, v6];

  return v7;
}

+ (id)_requiredSFConfigsForAssets:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v4;
  obj = [v4 allValues];
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
        v8 = [v7 components];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(v8);
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

              v16 = [v15 provider];
              v17 = [a1 assetSpecifierForSFConfig:v16];

              v18 = [v15 provider];

              [v5 setObject:v18 forKeyedSubscript:v17];
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
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

  return v5;
}

+ (id)_subscribedSFConfigs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CDCEB8] subscriptionsForClientIdentifier:@"com.apple.translationd.asr"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
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
        v11 = [a1 assetSpecifierForSFConfig:{v10, v14}];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
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
  v7 = [a1 _availableAssets];
  v52 = [v7 mutableCopy];

  v53 = [a1 _requiredAssets];
  v8 = [a1 _requiredSFConfigsForAssets:?];
  v9 = [a1 _subscribedSFConfigs];
  v10 = [v9 mutableCopy];

  v11 = [a1 deferredUnsubscribeAssets];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v12 = [v10 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v70 objects:v78 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v70 + 1) + 8 * i);
        v18 = [v8 objectForKeyedSubscript:{v17, spid}];

        if (!v18)
        {
          v19 = [v10 objectForKeyedSubscript:v17];
          [v11 setObject:v19 forKeyedSubscript:v17];

          [v10 removeObjectForKey:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v14);
  }

  v47 = v11;
  v48 = v8;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [v53 allKeys];
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
        v22 = [v53 objectForKeyedSubscript:spid];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v56 = v22;
        v23 = [v22 components];
        v24 = [v23 countByEnumeratingWithState:&v62 objects:v76 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v62 + 1) + 8 * j);
              if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v29 = [v28 provider];
                v30 = [a1 assetSpecifierForSFConfig:v29];

                if (v30)
                {
                  v31 = [v10 objectForKeyedSubscript:v30];

                  if (!v31)
                  {
                    v32 = [v28 provider];
                    [v10 setObject:v32 forKeyedSubscript:v30];

                    v58 = 1;
                  }

                  v33 = p_vtable;
                  v34 = objc_alloc((p_vtable + 152));
                  v35 = [v28 assetName];
                  v36 = v10;
                  v37 = [v10 objectForKeyedSubscript:v30];
                  v38 = [v34 initWithAssetIdentifier:v35 provider:v37];

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

            v25 = [v23 countByEnumeratingWithState:&v62 objects:v76 count:16];
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
    [a1 updateDeferredUnsubscribeTimer];
  }

  os_unfair_lock_unlock(&_subscriptionLock);
  v41 = _LTOSLogAssets();
  v42 = v41;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v42, OS_SIGNPOST_INTERVAL_END, spid, "asrCatalog", "end", buf, 2u);
  }

  v43 = [v52 allValues];

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

+ (void)_subscribe:(id)a3 progress:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _LTOSLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v7 language];
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEFAULT, "Actually in subscribe for %@", buf, 0xCu);
  }

  if (v7)
  {
    v13 = MEMORY[0x277CDCEB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54___LTDASRAssetService__subscribe_progress_completion___block_invoke;
    v20[3] = &unk_2789B5880;
    v21 = v8;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2;
    v17[3] = &unk_2789B58A8;
    v18 = v7;
    v19 = v9;
    [v13 fetchAssetWithConfig:v18 clientIdentifier:@"com.apple.translationd.asr" progress:v20 completion:v17];

    v14 = v21;
LABEL_7:

    goto LABEL_8;
  }

  if (v9)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscribe request with nil SFEntitledAssetConfig"];
    v15 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:v14 userInfo:0];
    (*(v9 + 2))(v9, v15);

    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)_unsubscribe:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = _LTOSLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v5 language];
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "ASR unsubscribe for %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x277CDCEB8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47___LTDASRAssetService__unsubscribe_completion___block_invoke;
    v15[3] = &unk_2789B58D0;
    v16 = v5;
    v17 = v7;
    [v11 unsubscribeFromAssetWithConfig:v16 clientIdentifier:@"com.apple.translationd.asr" completion:v15];
  }

  else if (v6)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscribe request with nil SFEntitledAssetConfig"];
    v13 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:v12 userInfo:0];
    (v7)[2](v7, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads finished download", buf, 2u);
  }

  os_unfair_lock_lock(&_downloadThrottlingLock);
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
          v70 = v14;
          _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads successfully finished with deduped entries %@", buf, 0xCu);
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = v4;
        v15 = [v4 duplicateEntries];
        v16 = [v15 countByEnumeratingWithState:&v65 objects:v73 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v65 + 1) + 8 * i);
              v21 = _LTOSLogAssets();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                v23 = [v20 asset];
                v24 = [v23 assetName];
                *buf = 138412290;
                v70 = v24;
                _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads updating offlineStatus and calling completion on the duplicate entry assets %@", buf, 0xCu);
              }

              v25 = [v20 asset];
              v26 = [v25 progress];
              [v26 updatePercentComplete:1.0];

              v27 = [v20 asset];
              v28 = [v27 progress];
              [v28 setOfflineState:2];

              v29 = [v20 progress];

              if (v29)
              {
                v30 = [v20 progress];
                v31 = [v20 asset];
                (v30)[2](v30, v31);
              }

              v32 = [v20 completion];
              v32[2](v32, 0);
            }

            v17 = [v15 countByEnumeratingWithState:&v65 objects:v73 count:16];
          }

          while (v17);
        }

        v4 = v64;
        v33 = [v64 duplicateEntries];
        [v33 removeAllObjects];

        a1 = v63;
      }
    }
  }

  v34 = [v4 duplicateEntries];
  v35 = [v34 count];

  if (v35)
  {
    v36 = _LTOSLogAssets();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v38 = [v4 asset];
      v39 = [v38 assetName];
      *buf = 138412290;
      v70 = v39;
      _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads re-enqueue same assets %@", buf, 0xCu);
    }

    v40 = [v4 duplicateEntries];
    v41 = [v40 firstObject];

    v42 = [v4 duplicateEntries];
    [v42 removeObjectAtIndex:0];

    v43 = [v4 duplicateEntries];
    [v41 setDuplicateEntries:v43];

    v44 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
    v45 = [v41 asset];
    v46 = [v45 assetName];
    [v44 setObject:v41 forKey:v46];

    os_unfair_lock_unlock(&_downloadThrottlingLock);
    v47 = [v41 options];
    v48 = [v41 progress];
    v49 = [v41 completion];
    [a1 _downloadAsset:v41 options:v47 progress:v48 completion:v49];
  }

  else
  {
    v50 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
    v51 = [v4 asset];
    v52 = [v51 assetName];
    [v50 removeObjectForKey:v52];

    v53 = _LTOSLogAssets();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v53;
      v55 = [v4 asset];
      v56 = [v55 assetName];
      v57 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
      v58 = [v57 count];
      *buf = 138412546;
      v70 = v56;
      v71 = 2048;
      v72 = v58;
      _os_log_impl(&dword_232E53000, v54, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads finished downloading assets %@ pending assets count %lu", buf, 0x16u);
    }

    v59 = [a1 pendingDownloadSchedulingAssetsNameToEntry];
    v60 = [v59 count];

    [a1 updateDeferredUnsubscribeTimer];
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

+ (void)_downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 asset];
  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v12 = 0;
LABEL_6:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR asset service unsupported asset type"];
    v15 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v14 userInfo:0];
    v16 = _LTOSLogAssets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_LTDASRAssetService _downloadAsset:v16 options:? progress:? completion:?];
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else if (!v11)
    {
LABEL_9:
      [a1 _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:v9];

      goto LABEL_10;
    }

    v11[2](v11, v15);
    goto LABEL_9;
  }

  if ([v12 managedAssetProvider] != 3)
  {
    goto LABEL_6;
  }

  v13 = [v12 provider];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke;
  v23[3] = &unk_2789B58F8;
  v24 = v12;
  v25 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2;
  v17[3] = &unk_2789B5920;
  v12 = v24;
  v18 = v12;
  v20 = v25;
  v19 = v9;
  v21 = v11;
  v22 = a1;
  [a1 _subscribe:v13 progress:v23 completion:v17];

  v14 = v24;
LABEL_10:
}

+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  os_unfair_lock_lock(&_downloadThrottlingLock);
  v13 = [[_LTDASRAssetModelDownloadEntry alloc] initWithAsset:v10 options:a4 progress:v12 completion:v11];

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
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads found existing same entry %@", &v32, 0xCu);
    }

    v21 = [v16 duplicateEntries];
    [v21 addObject:v13];

    os_unfair_lock_unlock(&_downloadThrottlingLock);
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
      v26 = [(_LTDASRAssetModelDownloadEntry *)v13 asset];
      v27 = [v26 assetName];
      v32 = 138412290;
      v33 = v27;
      _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads downloads starting first download of %@", &v32, 0xCu);
    }

    [a1 cancelDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_downloadThrottlingLock);
    v28 = [(_LTDASRAssetModelDownloadEntry *)v13 options];
    v29 = [(_LTDASRAssetModelDownloadEntry *)v13 progress];
    v30 = [(_LTDASRAssetModelDownloadEntry *)v13 completion];
    [a1 _downloadAsset:v13 options:v28 progress:v29 completion:v30];
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)purgeAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    if ([v8 managedAssetProvider] == 3)
    {
      v10 = [v8 provider];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45___LTDASRAssetService_purgeAsset_completion___block_invoke;
      v14[3] = &unk_2789B58D0;
      v9 = v8;
      v15 = v9;
      v16 = v7;
      [a1 _unsubscribe:v10 completion:v14];

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

  (*(v7 + 2))(v7, 0, v12);

LABEL_9:
}

+ (id)pathToSFAsset:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CDCEB8] pathToAssetWithConfig:a3 clientIdentifier:@"com.apple.translationd.asr"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)updateDeferredUnsubscribeTimer
{
  [a1 cancelDeferredUnsubscribeTimer];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(_LTDASRAssetService *)v3];
  }

  v4 = [a1 queue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  v6 = _deferredUnsubscribeTimer;
  _deferredUnsubscribeTimer = v5;

  v7 = _deferredUnsubscribeTimer;
  v8 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53___LTDASRAssetService_updateDeferredUnsubscribeTimer__block_invoke;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = a1;
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
  v3 = [a1 _requiredAssets];
  v4 = [a1 _requiredSFConfigsForAssets:v3];
  v5 = [a1 deferredUnsubscribeAssets];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = [v5 objectForKeyedSubscript:v11];
          [a1 _unsubscribe:v13 completion:0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v5 removeAllObjects];
  [a1 cancelDeferredUnsubscribeTimer];
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