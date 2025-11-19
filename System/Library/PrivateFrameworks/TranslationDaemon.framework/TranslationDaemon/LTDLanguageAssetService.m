@interface LTDLanguageAssetService
@end

@implementation LTDLanguageAssetService

uint64_t __33___LTDLanguageAssetService_queue__block_invoke()
{
  queue__queue_1 = dispatch_queue_create("com.apple.translationd.LanguageAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

void __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2;
  block[3] = &unk_2789B61A8;
  v12 = v6;
  v8 = *(a1 + 32);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = +[_LTDLanguageAssetCache shared];
    v12 = [*(a1 + 40) languageIdentifiers];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [v11 assetForIdentifier:{*(*(&v21 + 1) + 8 * v18), v21}];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [v11 markReadyForFilter:16];
    (*(*(a1 + 48) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __58___LTDLanguageAssetService__selectedAssetsWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = [*(a1 + 40) _selectedIdentifiers];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v2 assetForIdentifier:{*(*(&v13 + 1) + 8 * v9), v13}];
        v11 = [v10 progress];
        [v11 setGreaterThanOrEqualToOfflineState:1];

        [v4 addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v2 markReadyForFilter:32];
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[6] queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2;
  v10[3] = &unk_2789B61F8;
  v11 = v6;
  v14 = a1[5];
  v12 = a1[4];
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = +[_LTDLanguageAssetCache shared];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v13 = *(a1 + 40);
    v14 = [v13 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v55;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v55 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v54 + 1) + 8 * i) _ltLocaleIdentifier];
          v19 = [v11 assetForIdentifier:v18];

          v20 = [v19 ltIdentifier];
          [v12 setObject:v19 forKeyedSubscript:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v15);
    }

    v40 = v11;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = *(a1 + 48);
    v21 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v50 + 1) + 8 * j);
          v26 = [v25 assetType];
          v27 = v26 > 0xA || ((1 << v26) & 0x504) == 0;
          if (!v27 && ([v25 isInstalled] & 1) == 0)
          {
            v28 = [v25 localeIdentifiers];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v29 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v47;
              do
              {
                for (k = 0; k != v30; ++k)
                {
                  if (*v47 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  [v12 setObject:0 forKeyedSubscript:*(*(&v46 + 1) + 8 * k)];
                }

                v30 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
              }

              while (v30);
            }
          }
        }

        v22 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v22);
    }

    v33 = [v12 allValues];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v43;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v42 + 1) + 8 * m) progress];
          [v38 setGreaterThanOrEqualToOfflineState:2];
        }

        v35 = [v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
      }

      while (v35);
    }

    [v40 markReadyForFilter:64];
    (*(*(a1 + 56) + 16))();
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  +[_LTDLanguageAssetService _cacheInstalledLanguages];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_24_cold_1();
    }

    [*(a1 + 80) syncInstalledLocalesIfPowerAllows];
    if (*(a1 + 56))
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    [*(a1 + 32) setRequiredAssets:v5 localeRanks:*(a1 + 40)];
    v8 = *(a1 + 48);
    v9 = *(a1 + 88);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_25;
    v19[3] = &unk_2789B6240;
    v13 = *(a1 + 72);
    v10 = v13;
    v20 = v13;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_30;
    v14[3] = &unk_2789B6268;
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v15 = v11;
    v18 = v12;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    [_LTDAssetService downloadAssets:v5 forLocales:v8 options:v9 progress:v19 completion:v14];
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 40) _applyRequiredProgressUpdate:?] & 1) == 0)
  {
    [_LTDAssetService purgeAsset:v5 completion:&__block_literal_global_28];
  }

  if (*(a1 + 32))
  {
    v3 = +[_LTDLanguageAssetCache shared];
    v4 = [v3 assetsFilteredUsing:0];

    (*(*(a1 + 32) + 16))();
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _LTOSLogAssets();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_2(v7);
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_LTDAssetAnalytics shared];
    [v4 markEventsAsRetriedForLocales:*(a1 + 32)];

    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_30_cold_1();
    }

    [*(a1 + 56) syncInstalledLocalesIfPowerAllows];
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) installationStatus];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke_2_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _LTOSLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "Sync install query selected ended", buf, 2u);
  }

  if (v6)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }

  else if ([v5 count])
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Sync install set assets begin", buf, 2u);
    }

    v10 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_34;
    block[3] = &unk_2789B6300;
    v18 = *(a1 + 40);
    v16 = v5;
    v17 = *(a1 + 32);
    dispatch_async(v10, block);
  }

  else
  {
    v11 = [*(a1 + 40) selectedLocales];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [MEMORY[0x277CCA9B8] ltd_invalidResultError];
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, v13);
    }
  }
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_37;
  v3[3] = &unk_2789B5D20;
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 setAssets:v1 options:8 progress:&__block_literal_global_36_0 completion:v3];
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_2_cold_1(v3);
  }
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEFAULT, "Sync install set assets ended", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke(uint64_t a1)
{
  if (!_syncInstalledLocalesWithRetry_gateID__retryGate || [_syncInstalledLocalesWithRetry_gateID__retryGate isEqual:*(a1 + 32)])
  {
    objc_storeStrong(&_syncInstalledLocalesWithRetry_gateID__retryGate, *(a1 + 32));
    v2 = *(a1 + 40);
    v3 = 10 * v2;
    v4 = dispatch_time(0, 10000000000 * v2);
    v5 = [*(a1 + 48) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    v6 = *(a1 + 48);
    block[4] = *(a1 + 40);
    block[5] = v6;
    block[6] = v3;
    dispatch_after(v4, v5, block);
  }
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = _LTOSLogAssets();
  v4 = v3;
  if (v2 < 10)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = _syncInstalledLocalesWithRetry_gateID__retryGate;
      v8 = v4;
      v9 = [v7 UUIDString];
      *buf = 134218242;
      v15 = v6;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Sync retry attempt %zd:[%{public}@] begin", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38;
    v13[3] = &__block_descriptor_56_e17_v16__0__NSError_8l;
    v10 = a1[5];
    v11 = a1[6];
    v13[4] = a1[4];
    v13[5] = v11;
    v13[6] = v10;
    [v10 _syncInstalledLocalesWithCompletion:v13];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2_cold_1(v4);
    }

    v5 = _syncInstalledLocalesWithRetry_gateID__retryGate;
    _syncInstalledLocalesWithRetry_gateID__retryGate = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _LTOSLogAssets();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38_cold_1(a1, v5, v3);
    }

    [*(a1 + 48) _syncInstalledLocalesWithRetry:*(a1 + 32) + 1 gateID:_syncInstalledLocalesWithRetry_gateID__retryGate];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = _syncInstalledLocalesWithRetry_gateID__retryGate;
      v8 = v5;
      v9 = [v7 UUIDString];
      v12 = 134218242;
      v13 = v6;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Sync retry attempt %zd:[%{public}@] succeeded", &v12, 0x16u);
    }

    v10 = _syncInstalledLocalesWithRetry_gateID__retryGate;
    _syncInstalledLocalesWithRetry_gateID__retryGate = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke(uint64_t a1)
{
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_DEFAULT, "Sync on asset update begin", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke_41;
  v5[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v5[4] = v3;
  return [v3 _syncInstalledLocalesWithCompletion:v5];
}

void __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogAssets();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke_41_cold_1();
    }

    [*(a1 + 32) _syncInstalledLocales];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Sync on asset update succeeded", v6, 2u);
  }
}

void __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_17:
      v9();
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (([*(a1 + 40) _applyRequiredProgressUpdate:v14] & 1) == 0)
          {
            [_LTDAssetService purgeAsset:v14 completion:&__block_literal_global_46];
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v9 = *(v15 + 16);
      goto LABEL_17;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _LTOSLogAssets();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_2(v7);
  }
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = v2;
  if ((_block_invoke_preheating & 1) == 0)
  {
    if ([v2 isReadyForAllFilters])
    {
      if ((_block_invoke_preheating & 1) == 0)
      {
        [*(a1 + 32) _syncInstalledLocales];
      }
    }

    else
    {
      _block_invoke_preheating = 1;
      v4 = _LTOSLogAssets();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Preheat language cache starting", buf, 2u);
      }

      v5 = dispatch_group_create();
      if (([v3 isReadyForFilter:16] & 1) == 0)
      {
        dispatch_group_enter(v5);
        v6 = _LTOSLogAssets();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Preheat language cache for available state", buf, 2u);
        }

        v7 = *(a1 + 32);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_53;
        v24[3] = &unk_2789B63D0;
        v25 = v5;
        [v7 assetsWithOptions:16 completion:v24];
      }

      if (([v3 isReadyForFilter:32] & 1) == 0)
      {
        v8 = _LTOSLogAssets();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Preheat language cache for selected state", buf, 2u);
        }

        dispatch_group_enter(v5);
        v9 = *(a1 + 32);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_54;
        v22[3] = &unk_2789B63D0;
        v23 = v5;
        [v9 assetsWithOptions:32 completion:v22];
      }

      if (([v3 isReadyForFilter:64] & 1) == 0)
      {
        v10 = _LTOSLogAssets();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Preheat language cache for installed state", buf, 2u);
        }

        dispatch_group_enter(v5);
        v11 = *(a1 + 32);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_55;
        v20[3] = &unk_2789B63D0;
        v21 = v5;
        [v11 assetsWithOptions:64 completion:v20];
      }

      v12 = [*(a1 + 32) queue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_56;
      v16[3] = &unk_2789B6368;
      v13 = v3;
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v17 = v13;
      v18 = v14;
      v19 = v15;
      dispatch_group_notify(v5, v12, v16);
    }
  }
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_53(uint64_t a1)
{
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Language cache ready for available state", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_54(uint64_t a1)
{
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Language cache is ready for selected state", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_55(uint64_t a1)
{
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Language cache is ready for installed state", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_56(uint64_t a1)
{
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Preheat language cache completed", v5, 2u);
  }

  _block_invoke_preheating = 0;
  if ([*(a1 + 32) isReadyForAllFilters])
  {
    return [*(a1 + 48) _syncInstalledLocales];
  }

  v4 = *(a1 + 40);
  if (v4 >= 50)
  {
    v4 = 50;
  }

  return [*(a1 + 48) _preheatMissingCacheStatesAfter:v4 + 10];
}

void __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = [[_LTDLanguageAssetCacheObserver alloc] initWithID:*(a1 + 32) taskHint:*(a1 + 56) progress:*(a1 + 72) observations:*(a1 + 40) completion:*(a1 + 48)];
  if (([v2 isReadyForAllFilters] & 1) == 0)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEFAULT, "Cache is not ready, returning immediate data from Defaults", v8, 2u);
    }

    v5 = [*(a1 + 64) _synthesizeInitialObservationsFromDefaults];
    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke_cold_1();
    }

    v7 = [(_LTDLanguageAssetCacheObserver *)v3 observations];
    (v7)[2](v7, v5);
  }

  [v2 addObserver:v3];
  [*(a1 + 64) _preheatMissingCacheStatesAfter:0];
}

void __56___LTDLanguageAssetService_cancelLanguageStatusSession___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetCache shared];
  [v2 removeObserverForID:*(a1 + 32)];
}

void __53___LTDLanguageAssetService_addLanguages_useCellular___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = +[_LTDAssetAnalytics shared];
        v9 = [v8 getEventWithNSLocale:v7];

        v10 = [v9 didRetry];
        if (a2)
        {
          v11 = 3;
        }

        else
        {
          v11 = v10;
        }

        v12 = [v7 _ltLocaleIdentifier];
        [v9 stopTimerWithOutcome:v11 hasClientReportedError:a2 != 0 localeIdentifier:v12];

        v13 = +[_LTDAssetAnalytics shared];
        [v13 sendEventToAnalytics:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __44___LTDLanguageAssetService_removeLanguages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedLocales];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 32) _resetSymlinkDirectory];
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = _LTOSLogAssets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Removal of symlink folder aborted due to locale selections prior to dequeue", v7, 2u);
  }

  if (v3)
  {
LABEL_5:
    v3[2](v3, v5 == 0);
  }

LABEL_6:
}

id __73___LTDLanguageAssetService__languageModelsForLocales_initialState_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 _ltLocaleIdentifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v3 state:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Language asset service available assets read error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Language asset service installed assets read error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_24_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Language asset service dependency resolution failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_2() identifier];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Purge of unused asset %{public}@ failed %@, expected if multiple downloads are in progress", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "Purged unused asset %{public}@ completed", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_30_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Language asset service install request completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Language asset service install received a language manager error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() count];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v3, v4, "Sync install set assets progress count: %zd", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() UUIDString];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v4, v5, "Sync retry attempt [%{public}@] retries exhausted", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = _syncInstalledLocalesWithRetry_gateID__retryGate;
  v7 = a2;
  v8 = [v6 UUIDString];
  v9 = *(a1 + 40);
  v11 = 134218754;
  v12 = v5;
  v13 = 2114;
  v14 = v8;
  v15 = 2048;
  v16 = v9;
  v17 = 2112;
  v18 = a3;
  _os_log_error_impl(&dword_232E53000, v7, OS_LOG_TYPE_ERROR, "Sync retry attempt %zd:[%{public}@] in %zd secs for failure: %@", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

void __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke_41_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Sync on asset update failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read installed assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end