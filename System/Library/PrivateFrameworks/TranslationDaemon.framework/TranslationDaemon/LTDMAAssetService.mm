@interface LTDMAAssetService
@end

@implementation LTDMAAssetService

uint64_t __28___LTDMAAssetService__queue__block_invoke()
{
  _queue__queue_0 = dispatch_queue_create("com.apple.translationd.MAAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

void __55___LTDMAAssetService_queryAssetType_filter_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:*(a1 + 32)];
  [v2 setDoNotBlockOnNetworkStatus:1];
  [v2 returnTypes:{objc_msgSend(*(a1 + 48), "_returnTypeForFilter:", *(a1 + 56))}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___LTDMAAssetService_queryAssetType_filter_completion___block_invoke_2;
  v6[3] = &unk_2789B6560;
  v5 = *(a1 + 40);
  v3 = v5;
  v8 = v5;
  v7 = v2;
  v4 = v2;
  [v4 queryMetaData:v6];
}

void __55___LTDMAAssetService_queryAssetType_filter_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 48) _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___LTDMAAssetService_queryAssetType_filter_completion___block_invoke_3;
  block[3] = &unk_2789B6538;
  v10 = a2;
  v6 = *(a1 + 40);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 32);
  dispatch_async(v4, block);
}

void __55___LTDMAAssetService_queryAssetType_filter_completion___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 48) _errorFromQueryResult:*(a1 + 56)];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = [*(a1 + 32) results];
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[_LTDMAAssetModel alloc] initWithProvider:*(*(&v16 + 1) + 8 * i)];
          v11 = [[_LTDAssetModel alloc] initWithProvider:v10];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }

    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v4 count];
      *buf = 134217984;
      v21 = v14;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Asset query async found %zu assets", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();

    v2 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D289C0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_2;
  v6[3] = &unk_2789B6588;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v1 startCatalogDownload:v2 options:v3 then:v6];
}

void __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_3;
  block[3] = &unk_2789B5E50;
  v9 = a2;
  v6 = *(a1 + 32);
  v5 = v6;
  v8 = v6;
  dispatch_async(v4, block);
}

void __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) _errorFromDownloadResult:*(a1 + 48)];
  v3 = _LTOSLogAssets();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_3_cold_1(v2, v4);
    }

    if ([v2 code] == 22)
    {
      v5 = _LTOSLogAssets();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_3_cold_2(v5);
      }

      if (_LTIsInternalInstall())
      {
        v6 = _LTOSLogAssets();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_3_cold_3(v6);
        }
      }
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_16:
      v8();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Asset catalog finished downloading", v10, 2u);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v8 = *(v9 + 16);
      goto LABEL_16;
    }
  }
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[6] _queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_2;
  v8[3] = &unk_2789B65B0;
  v9 = v3;
  v10 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isStalled])
  {
    v2 = _LTOSLogAssets();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v15 = 138543362;
      v16 = v3;
      _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "MobileAsset downloading asset stalled: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    v4 = (a1 + 40);
    v5 = [*(a1 + 40) progress];
    v6 = [v5 updateTotalUnitCount:objc_msgSend(*(a1 + 32) completedUnitCount:{"totalExpected"), objc_msgSend(*(a1 + 32), "totalWritten")}];

    if (v6)
    {
      v7 = _LTOSLogAssets();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_2_cold_1((a1 + 40));
      }

      v8 = *(a1 + 48);
      if (v8)
      {
        (*(v8 + 16))(v8, *v4);
        v9 = [*v4 progress];
        v10 = [v9 isCancelled];

        if (v10)
        {
          v11 = _LTOSLogAssets();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = *v4;
            v15 = 138543362;
            v16 = v12;
            _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Cancelling download for %{public}@", &v15, 0xCu);
          }

          v13 = [*(a1 + 40) provider];
          [v13 cancelDownloadSync];

          [*(a1 + 56) purgeAsset:*(a1 + 40) completion:0];
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_338(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_2_339;
  v4[3] = &unk_2789B6628;
  v8 = *(a1 + 64);
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 startDownload:v3 then:v4];
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_2_339(id *a1, uint64_t a2)
{
  v4 = [a1[7] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_3;
  block[3] = &unk_2789B6600;
  v13 = a2;
  v5 = a1[7];
  v6 = a1[4];
  v7 = a1[5];
  *&v8 = a1[6];
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(v4, block);
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 56) _errorFromDownloadResult:*(a1 + 64)];
  if (v2)
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_3_cold_1(a1);
    }

    v4 = [*(a1 + 32) progress];
    [v4 cancel];

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);
LABEL_15:
      v6();
    }
  }

  else
  {
    v7 = (a1 + 32);
    v8 = [*(a1 + 32) progress];
    v9 = [v8 isFinished];

    if ((v9 & 1) == 0)
    {
      v10 = _LTOSLogAssets();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_3_cold_2((a1 + 32));
      }

      v11 = [*(a1 + 32) progress];
      [v11 setOfflineState:2];

      v12 = *(a1 + 48);
      if (v12)
      {
        (*(v12 + 16))(v12, *v7);
      }
    }

    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *v7;
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "MobileAsset completed downloading asset %{public}@", &v17, 0xCu);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v6 = *(v15 + 16);
      goto LABEL_15;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __44___LTDMAAssetService_purgeAsset_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44___LTDMAAssetService_purgeAsset_completion___block_invoke_2;
  v3[3] = &unk_2789B6678;
  v6 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 purge:v3];
}

void __44___LTDMAAssetService_purgeAsset_completion___block_invoke_2(id *a1, uint64_t a2)
{
  v4 = [a1[6] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___LTDMAAssetService_purgeAsset_completion___block_invoke_3;
  block[3] = &unk_2789B6300;
  v8 = a2;
  v6 = a1[4];
  v7 = a1[5];
  dispatch_async(v4, block);
}

void __44___LTDMAAssetService_purgeAsset_completion___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 == 3 || v2 == 0)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "MobileAsset finished purging asset %{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) progress];
    [v6 setOfflineState:0];

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, *(a1 + 32), 0);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed asset purge: %zd", v2];
    v9 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:20 description:v8 userInfo:0];
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44___LTDMAAssetService_purgeAsset_completion___block_invoke_3_cold_1(a1);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Error when downloading asset catalog: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_232E53000, v2, OS_LOG_TYPE_DEBUG, "MobileAsset download asset progressed: %{public}@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_232E53000, v2, v3, "MobileAsset failed to download asset %{public}@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_3_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_232E53000, v2, OS_LOG_TYPE_DEBUG, "MobileAsset forcing progress update for asset %{public}@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __44___LTDMAAssetService_purgeAsset_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_232E53000, v2, v3, "MobileAsset failed to purge asset %{public}@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end