@interface VTAssetManager
+ (id)sharedInstance;
- (BOOL)_isReadyToUse;
- (VTAssetManager)init;
- (id)_assetQueryForLanguage:(id)a3 supportPremium:(BOOL)a4;
- (id)_defaultDownloadOptions;
- (id)_filteredAssetsForAssets:(id)a3 language:(id)a4 supportPremium:(BOOL)a5;
- (id)_findLatestInstalledAsset:(id)a3;
- (id)_installedAssetForLanguage:(id)a3 supportPremium:(BOOL)a4;
- (id)_installedAssetWithoutMetaDataForLanguage:(id)a3 supportPremium:(BOOL)a4;
- (id)assetForLanguage:(id)a3;
- (id)installedAssetForLanguage:(id)a3;
- (void)_addKeyValuePairForQuery:(id *)a3;
- (void)_downloadAsset:(id)a3 withComplete:(id)a4;
- (void)_fetchRemoteAssetForLanguage:(id)a3 supportPremium:(BOOL)a4;
- (void)_fetchRemoteMetaData;
- (void)_runAssetQuery:(id)a3 completion:(id)a4;
- (void)_startDownloadingVoiceTriggerAsset:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)_updateFromRemoteToLocalAssets:(id)a3;
@end

@implementation VTAssetManager

- (void)_startDownloadingVoiceTriggerAsset:(id)a3 progress:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    *&buf[4] = "[VTAssetManager _startDownloadingVoiceTriggerAsset:progress:completion:]";
    _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_INFO, "::: %{public}s", buf, 0xCu);
    v11 = VTLogContextFacilityVoiceTrigger;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v8 state];
    *buf = 138543618;
    *&buf[4] = v8;
    v29 = 1026;
    v30 = v13;
    _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_INFO, "Attempting to download asset %{public}@ with asset state : %{public}u", buf, 0x12u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__VTAssetManager__startDownloadingVoiceTriggerAsset_progress_completion___block_invoke;
  v25[3] = &unk_2784ECB78;
  v14 = v9;
  v27 = v14;
  v15 = v8;
  v26 = v15;
  v16 = MEMORY[0x223DF24E0](v25);
  v17 = [v15 state];
  if (v17 <= 6)
  {
    if (((1 << v17) & 0x6C) != 0)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = 4;
      goto LABEL_8;
    }

    if (v17 == 1)
    {
      *buf = 0;
      if ([v15 spaceCheck:buf])
      {
        [v15 attachProgressCallBack:v16];
        v22 = [(VTAssetManager *)self _defaultDownloadOptions];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __73__VTAssetManager__startDownloadingVoiceTriggerAsset_progress_completion___block_invoke_2;
        v23[3] = &unk_2784ECBA0;
        v24 = v10;
        [v15 startDownload:v22 then:v23];

        v20 = 0;
        goto LABEL_13;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = 5;
      goto LABEL_8;
    }

    if (v17 == 4)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = 3;
      goto LABEL_8;
    }
  }

  if (v17)
  {
    v20 = 0;
    goto LABEL_9;
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = 6;
LABEL_8:
  v20 = [v18 errorWithDomain:@"VTAssetManager" code:v19 userInfo:0];
LABEL_9:
  v21 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v21, OS_LOG_TYPE_DEFAULT, "Asset doesn't need downloading, invoking completion", buf, 2u);
  }

  if (v10)
  {
    (*(v10 + 2))(v10, v20);
  }

LABEL_13:
}

void __73__VTAssetManager__startDownloadingVoiceTriggerAsset_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 expectedTimeRemaining];
  if (v3 <= 0.0)
  {
    [*(a1 + 32) attachProgressCallBack:0];
  }

  else
  {
    v4 = [v6 totalWritten];
    if (v4 / [v6 totalExpected] > 0.0)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        (*(v5 + 16))();
      }
    }
  }
}

void __73__VTAssetManager__startDownloadingVoiceTriggerAsset_progress_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VTAssetManager" code:2 userInfo:0];
      (*(v2 + 16))(v2, v5);
    }
  }

  else if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }
}

- (void)_downloadAsset:(id)a3 withComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "::: Start downloading asset", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__VTAssetManager__downloadAsset_withComplete___block_invoke_317;
  v11[3] = &unk_2784ECB50;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(VTAssetManager *)self _startDownloadingVoiceTriggerAsset:v10 progress:&__block_literal_global_316 completion:v11];
}

void __46__VTAssetManager__downloadAsset_withComplete___block_invoke_317(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (v3)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 assetServerUrl];
      v8 = [v3 localizedDescription];
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "::: Error downloading from %{public}@ with error %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v4;
      v11 = [v9 assetServerUrl];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "::: download completed successfully from %{public}@.", &v13, 0xCu);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

void __46__VTAssetManager__downloadAsset_withComplete___block_invoke(double a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134349056;
    v4 = a1 * 100.0;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "::: download progress: %{public}3.0f%%", &v3, 0xCu);
  }
}

- (id)_defaultDownloadOptions
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = "[VTAssetManager _defaultDownloadOptions]";
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_INFO, "::: %{public}s", &v5, 0xCu);
  }

  v3 = objc_opt_new();
  [v3 setAllowsCellularAccess:0];
  [v3 setCanUseLocalCacheServer:1];

  return v3;
}

- (BOOL)_isReadyToUse
{
  v2 = +[VTFirstUnlockMonitor sharedInstance];
  v3 = [v2 isFirstUnlocked];

  return v3;
}

- (void)_runAssetQuery:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v16 = "[VTAssetManager _runAssetQuery:completion:]";
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_INFO, "::: %{public}s", buf, 0xCu);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__VTAssetManager__runAssetQuery_completion___block_invoke;
  v12[3] = &unk_2784ECD30;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, v12);
}

void __44__VTAssetManager__runAssetQuery_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136446466;
    v9 = "[VTAssetManager _runAssetQuery:completion:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_INFO, "::: %{public}s; query: %{public}@", buf, 0x16u);
  }

  kdebug_trace();
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__VTAssetManager__runAssetQuery_completion___block_invoke_311;
  v5[3] = &unk_2784ECB08;
  v6 = v4;
  v7 = *(a1 + 40);
  [v6 queryMetaData:v5];
}

void __44__VTAssetManager__runAssetQuery_completion___block_invoke_311(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 || ([*(a1 + 32) results], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v4 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v14 = 134349056;
      v15 = a2;
      _os_log_error_impl(&dword_223A31000, v4, OS_LOG_TYPE_ERROR, "Error running asset query: error %{public}lu, or result is empty", &v14, 0xCu);
      v5 = *(a1 + 40);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *(a1 + 40);
      if (!v5)
      {
        return;
      }
    }

    (*(v5 + 16))(v5, 0);
    return;
  }

  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 results];
    v14 = 134349056;
    v15 = [v11 count];
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "Found %{public}lu assets", &v14, 0xCu);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = [*(a1 + 32) results];
    (*(v12 + 16))(v12, v13);
  }
}

- (id)_assetQueryForLanguage:(id)a3 supportPremium:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v15 = "[VTAssetManager _assetQueryForLanguage:supportPremium:]";
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_INFO, "::: %{public}s", buf, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277D289D0]) initWithType:@"com.apple.MobileAsset.VoiceTriggerAssets"];
  v13 = v7;
  [(VTAssetManager *)self _addKeyValuePairForQuery:&v13];
  v8 = v13;

  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v8 queryParams];
    *buf = 136446466;
    v15 = "[VTAssetManager _assetQueryForLanguage:supportPremium:]";
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_INFO, "::: %{public}s, query: %{public}@", buf, 0x16u);
  }

  return v8;
}

- (id)_filteredAssetsForAssets:(id)a3 language:(id)a4 supportPremium:(BOOL)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    if (a5)
    {
      if (v8)
      {
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = [v14 attributes];
            v16 = [v15 valueForKey:@"Languages"];
            if ([v16 containsObject:v8])
            {
              [v28 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }

      else
      {
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v18 = *(*(&v29 + 1) + 8 * j);
            v19 = [v18 attributes];
            v20 = [v19 valueForKey:@"Languages"];
            [v28 addObject:v18];
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }
    }

    else
    {
      do
      {
        for (k = 0; k != v11; ++k)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(*(&v29 + 1) + 8 * k);
          v23 = [v22 attributes];
          v24 = [v23 valueForKey:@"Languages"];
          v25 = v24;
          if (!v8 || [v24 containsObject:v8])
          {
            v26 = [v23 objectForKey:@"Footprint"];
            if (v26 != @"Premium")
            {
              [v28 addObject:v22];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }
  }

  return v28;
}

- (void)_addKeyValuePairForQuery:(id *)a3
{
  v3 = *MEMORY[0x277D288F0];
  v4 = MEMORY[0x277CCACA8];
  v5 = *a3;
  v6 = [v4 stringWithFormat:@"%d", 13];
  [v5 addKeyValuePair:v3 with:v6];
}

- (id)_findLatestInstalledAsset:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v21;
    *&v4 = 134349056;
    v18 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 state];
        v11 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v25 = v10;
          _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "Asset state : %{public}ld", buf, 0xCu);
        }

        if (v10 <= 6 && ((1 << v10) & 0x6C) != 0)
        {
          if (v6)
          {
            if ([v9 isLatestCompareTo:v6])
            {
              v13 = v9;

              v6 = v13;
            }
          }

          else
          {
            v6 = v9;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v14 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v6 attributes];
    *buf = 138543362;
    v25 = v16;
    _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  return v6;
}

- (void)_updateFromRemoteToLocalAssets:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = self;
  dispatch_assert_queue_V2(self->_queue);
  p_cache = VTTriggerEventMonitorManager.cache;
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "::: Fetching remote asset", buf, 2u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        if (v11)
        {
          if ([*(*(&v34 + 1) + 8 * i) isLatestCompareTo:v11])
          {
            v15 = v14;

            v11 = v15;
          }
        }

        else
        {
          v11 = v14;
        }

        if ([v14 isVTAssetInstalled])
        {
          if (v10)
          {
            if ([v14 isLatestCompareTo:v10])
            {
              v16 = v14;

              v10 = v16;
            }
          }

          else
          {
            v10 = v14;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        if (v22 != v11 && v22 != v10)
        {
          if ([*(*(&v30 + 1) + 8 * j) isDownloading])
          {
            [v22 cancelDownloadSync];
          }

          else if ([v22 canBePurged])
          {
            v24 = p_cache[145];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              [v22 path];
              v27 = v26 = p_cache;
              *buf = 138543362;
              v39 = v27;
              _os_log_impl(&dword_223A31000, v25, OS_LOG_TYPE_DEFAULT, "::: Purging installed asset : %{public}@", buf, 0xCu);

              p_cache = v26;
            }

            [v22 purgeSync];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v19);
  }

  if (v11 && v11 != v10)
  {
    v28 = p_cache[145];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "::: Request downloading remote asset", buf, 2u);
    }

    [(VTAssetManager *)v29 _downloadAsset:v11 withComplete:&__block_literal_global_303];
  }
}

void __49__VTAssetManager__updateFromRemoteToLocalAssets___block_invoke()
{
  v0 = +[VTAssetMonitor sharedInstance];
  [v0 notifyNewAssetDownloaded];
}

- (void)_fetchRemoteAssetForLanguage:(id)a3 supportPremium:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: Request fetching remote asset", buf, 2u);
  }

  v8 = [(VTAssetManager *)self _assetQueryForLanguage:v6 supportPremium:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__VTAssetManager__fetchRemoteAssetForLanguage_supportPremium___block_invoke;
  v11[3] = &unk_2784ECAE0;
  v11[4] = self;
  v12 = v8;
  v13 = v6;
  v14 = v4;
  v9 = v6;
  v10 = v8;
  [v10 queryMetaData:v11];
}

void __62__VTAssetManager__fetchRemoteAssetForLanguage_supportPremium___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__VTAssetManager__fetchRemoteAssetForLanguage_supportPremium___block_invoke_2;
  block[3] = &unk_2784ECAB8;
  v9 = a2;
  block[4] = v4;
  v7 = v3;
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  dispatch_async(v5, block);
}

void __62__VTAssetManager__fetchRemoteAssetForLanguage_supportPremium___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v9 = 134349056;
      v10 = v1;
      _os_log_error_impl(&dword_223A31000, v2, OS_LOG_TYPE_ERROR, "Failed to finish query with error %{public}lu", &v9, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) results];
    v6 = [v4 _filteredAssetsForAssets:v5 language:*(a1 + 48) supportPremium:*(a1 + 64)];

    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = 134349056;
      v10 = [v6 count];
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "::: found %{public}lu assets", &v9, 0xCu);
    }

    [*(a1 + 32) _updateFromRemoteToLocalAssets:v6];
  }
}

- (void)_fetchRemoteMetaData
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "::: Request Fetching RemoteMetaData", buf, 2u);
  }

  v4 = MEMORY[0x277D289B8];
  v5 = [(VTAssetManager *)self _defaultDownloadOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__VTAssetManager__fetchRemoteMetaData__block_invoke;
  v6[3] = &unk_2784ECA90;
  v6[4] = self;
  [v4 startCatalogDownload:@"com.apple.MobileAsset.VoiceTriggerAssets" options:v5 then:v6];
}

void __38__VTAssetManager__fetchRemoteMetaData__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (a2)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v6 = 134349056;
      v7 = a2;
      _os_log_error_impl(&dword_223A31000, v2, OS_LOG_TYPE_ERROR, "Failed to download meta data with error %{public}lu", &v6, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "Meta data downloaded successfully", &v6, 2u);
    }

    v5 = [*(a1 + 32) _assetQueryForLanguage:0 supportPremium:{+[VTUtilities supportPremiumAssets](VTUtilities, "supportPremiumAssets")}];
    [*(a1 + 32) _runAssetQuery:v5 completion:0];
  }
}

- (id)_installedAssetWithoutMetaDataForLanguage:(id)a3 supportPremium:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(VTAssetManager *)self _assetQueryForLanguage:v6 supportPremium:v4];
  [v7 returnTypes:2];
  v8 = [v7 queryMetaDataSync];
  v9 = [v7 results];
  v10 = [(VTAssetManager *)self _filteredAssetsForAssets:v9 language:v6 supportPremium:v4];

  v11 = VTLogContextFacilityVoiceTrigger;
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v7;
      v17 = 2050;
      v18 = v8;
      _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "Error running asset-query : %{public}@, error: %{public}lu", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v15 = 134349312;
    v16 = [v10 count];
    v17 = 2050;
    v18 = v8;
    _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "::: found %{public}lu assets with error %{public}lu", &v15, 0x16u);
  }

  v13 = [(VTAssetManager *)self _findLatestInstalledAsset:v10];

  return v13;
}

- (id)_installedAssetForLanguage:(id)a3 supportPremium:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(VTAssetManager *)self _assetQueryForLanguage:v6 supportPremium:v4];
  v8 = [v7 queryMetaDataSync];
  v9 = [v7 results];
  v10 = [(VTAssetManager *)self _filteredAssetsForAssets:v9 language:v6 supportPremium:v4];

  v11 = VTLogContextFacilityVoiceTrigger;
  if (v8 == 2)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "::: Meta data not available, query again with returnType MAUnionOfCatalogInstalled", &v15, 2u);
    }

    v13 = [(VTAssetManager *)self _installedAssetWithoutMetaDataForLanguage:v6 supportPremium:v4];
  }

  else if (v8)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v7;
      v17 = 2050;
      v18 = v8;
      _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "Error running asset-query : %{public}@, error: %{public}lu", &v15, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v15 = 134349056;
      v16 = [v10 count];
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "::: found %{public}lu assets", &v15, 0xCu);
    }

    v13 = [(VTAssetManager *)self _findLatestInstalledAsset:v10];
  }

  return v13;
}

- (id)installedAssetForLanguage:(id)a3
{
  v4 = a3;
  if ([(VTAssetManager *)self _isReadyToUse])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__4556;
    v15 = __Block_byref_object_dispose__4557;
    v16 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__VTAssetManager_installedAssetForLanguage___block_invoke;
    block[3] = &unk_2784ECA68;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(queue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __44__VTAssetManager_installedAssetForLanguage___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _installedAssetForLanguage:*(a1 + 40) supportPremium:{+[VTUtilities supportPremiumAssets](VTUtilities, "supportPremiumAssets")}];

  return MEMORY[0x2821F96F8]();
}

- (id)assetForLanguage:(id)a3
{
  v4 = a3;
  if ([(VTAssetManager *)self _isReadyToUse])
  {
    v5 = [(VTAssetManager *)self installedAssetForLanguage:v4];
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__VTAssetManager_assetForLanguage___block_invoke;
    v8[3] = &unk_2784ED118;
    v8[4] = self;
    v9 = v4;
    dispatch_async(queue, v8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __35__VTAssetManager_assetForLanguage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[VTUtilities supportPremiumAssets];

  return [v1 _fetchRemoteAssetForLanguage:v2 supportPremium:v3];
}

- (VTAssetManager)init
{
  v13.receiver = self;
  v13.super_class = VTAssetManager;
  v2 = [(VTAssetManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Serial VTAsset queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(VTAssetManagerEnablePolicy);
    enablePolicy = v2->_enablePolicy;
    v2->_enablePolicy = &v5->super;

    if ([(VTPolicy *)v2->_enablePolicy isEnabled])
    {
      v7 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "VTAssetManagerEnablePolicy is already enabled, fetching remote meta data now", buf, 2u);
      }

      [(VTAssetManager *)v2 _fetchRemoteMetaData];
    }

    else
    {
      objc_initWeak(buf, v2);
      v8 = v2->_enablePolicy;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __22__VTAssetManager_init__block_invoke;
      v10[3] = &unk_2784ED050;
      objc_copyWeak(&v11, buf);
      [(VTPolicy *)v8 setCallback:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }

    _MAMigrateAssets();
    _MACleanV1Repository();
  }

  return v2;
}

void __22__VTAssetManager_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = WeakRetained;
    [WeakRetained _fetchRemoteMetaData];
    WeakRetained = v4;
  }
}

+ (id)sharedInstance
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = "+[VTAssetManager sharedInstance]";
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_INFO, "::: %{public}s", &v5, 0xCu);
  }

  if (sharedInstance_onceToken_4564 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4564, &__block_literal_global_4565);
  }

  v3 = sharedInstance_sSharedAssetManager;

  return v3;
}

uint64_t __32__VTAssetManager_sharedInstance__block_invoke()
{
  sharedInstance_sSharedAssetManager = objc_alloc_init(VTAssetManager);

  return MEMORY[0x2821F96F8]();
}

@end