@interface LTDASRAssetService
@end

@implementation LTDASRAssetService

uint64_t __48___LTDASRAssetService_deferredUnsubscribeAssets__block_invoke()
{
  deferredUnsubscribeAssets__deferredUnsubscribeAssets = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

uint64_t __65___LTDASRAssetService_pendingDownloadSchedulingAssetsNameToEntry__block_invoke()
{
  pendingDownloadSchedulingAssetsNameToEntry__pendingDownloadSchedulingAssets = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

uint64_t __28___LTDASRAssetService_queue__block_invoke()
{
  queue__queue = dispatch_queue_create("com.apple.translationd.ASRAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

void __56___LTDASRAssetService_queryAssetType_filter_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v7 = 0;
  v5 = [v3 queryAssetType:v2 filter:v4 error:&v7];
  v6 = v7;
  (*(a1[5] + 16))();
}

void __39___LTDASRAssetService__availableAssets__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v29 = [*(a1 + 32) _supportsNGASR];
  if ([*(a1 + 32) _supportsGASR])
  {
    v3 = [*(a1 + 32) _supportedLTLocaleIdentifiers];
    v28 = [*(a1 + 32) _supportedGASRLocaleIdentifiers];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v3;
    v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v30)
    {
      v26 = v2;
      v27 = *v37;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v36 + 1) + 8 * i);
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR-%@", v5];
          v7 = [MEMORY[0x277CBEB18] array];
          if (v29)
          {
            v8 = objc_alloc(MEMORY[0x277CDCE88]);
            v9 = _LTLocaleIdentifierMappedForASR();
            v10 = [v8 initWithLanguage:v9 assetType:3];

            if (v10)
            {
              v11 = [[_LTDASRAssetModel alloc] initWithAssetIdentifier:v6 provider:v10];
              [v7 addObject:v11];
            }
          }

          if ([v28 containsObject:v5])
          {
            v12 = objc_alloc(MEMORY[0x277CDCE88]);
            v13 = _LTLocaleIdentifierMappedForASR();
            v14 = [v12 initWithLanguage:v13 assetType:7];

            if (v14)
            {
              v15 = [[_LTDASRAssetModel alloc] initWithAssetIdentifier:v6 provider:v14];
              [v7 addObject:v15];
            }
          }

          if ([v7 count])
          {
            v31 = v6;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v16 = v7;
            v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = 0;
              v20 = *v33;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v33 != v20)
                  {
                    objc_enumerationMutation(v16);
                  }

                  if (v19)
                  {
                    [(_LTDAssetModel *)v19 addComponentAsset:*(*(&v32 + 1) + 8 * j)];
                  }

                  else
                  {
                    v19 = [[_LTDAssetModel alloc] initWithProvider:*(*(&v32 + 1) + 8 * j)];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v18);
            }

            else
            {
              v19 = 0;
            }

            v2 = v26;
            [v26 setObject:v19 forKeyedSubscript:v5];

            v6 = v31;
          }
        }

        v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v30);
    }

    v22 = [v2 copy];
    v23 = _availableAssets_shared;
    _availableAssets_shared = v22;
  }

  else
  {
    objc_storeStrong(&_availableAssets_shared, v2);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __54___LTDASRAssetService__subscribe_progress_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2_cold_1(a1, v7);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

void __47___LTDASRAssetService__unsubscribe_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47___LTDASRAssetService__unsubscribe_completion___block_invoke_cold_1(a1, v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = a2 / 100.0;
  if (v2 < 1.0)
  {
    v3 = result;
    v4 = [*(result + 32) progress];
    [v4 updatePercentComplete:v2];

    result = *(v3 + 40);
    if (result)
    {
      v5 = *(v3 + 32);
      v6 = *(result + 16);

      return v6();
    }
  }

  return result;
}

void __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _LTOSLogAssets();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2_cold_1(a1, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 assetName];
      v9 = [*(a1 + 32) getLocalFileUrl];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "ASR Asset download completed name %@, location %@", &v14, 0x16u);
    }

    v10 = [*(a1 + 32) progress];
    [v10 setOfflineState:2];

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, *(a1 + 32));
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v3);
  }

  [*(a1 + 64) _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:*(a1 + 40)];

  v13 = *MEMORY[0x277D85DE8];
}

void __45___LTDASRAssetService_purgeAsset_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) progress];
  [v3 setOfflineState:0];

  if (!v5)
  {
    v4 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __53___LTDASRAssetService_updateDeferredUnsubscribeTimer__block_invoke(uint64_t a1)
{
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_DEFAULT, "ASR assets purging timer fired", v4, 2u);
  }

  return [*(a1 + 32) deferredUnsubscribe];
}

void __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_2() language];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v6, v7, "ASR subscribe for %{public}@ failure: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __47___LTDASRAssetService__unsubscribe_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_2() language];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v6, v7, "ASR unsubscribe for %{public}@ failure: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_2() asset];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v6, v7, "ASR failed to complete asset download %{public}@: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end