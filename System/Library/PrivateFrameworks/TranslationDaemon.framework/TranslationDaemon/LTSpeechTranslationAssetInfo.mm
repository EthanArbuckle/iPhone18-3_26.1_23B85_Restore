@interface LTSpeechTranslationAssetInfo
@end

@implementation LTSpeechTranslationAssetInfo

void __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_cold_1(a1, a1 + 40);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 5);
  if (*(*(a1[5] + 8) + 40))
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31_cold_1(a1, v2);
    }
  }

  else
  {
    [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:*(*(a1[6] + 8) + 40) assets:*(*(a1[7] + 8) + 40) validateIfNeeded:0];
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1[6] + 8) + 40);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "All asset downloads for language pair %{public}@ completed successfully", &v8, 0xCu);
    }
  }

  result = a1[4];
  if (result)
  {
    result = (*(result + 16))(result, *(*(*v2 + 8) + 40));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_cold_1(a1);
    }
  }

  v6 = *(*(a1 + 48) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  objc_storeStrong(v7, v10);
  dispatch_group_leave(*(a1 + 40));
}

void __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_34(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = _LTOSLogAssets();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_34_cold_1(WeakRetained, a1 + 40);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = WeakRetained[2];
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "All assets purged for language pair %{public}@ finished", &v13, 0xCu);
    }

    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = WeakRetained[1];
      v9 = v7;
      v10 = [v8 assetIdentifierReferenceCountDictionary];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Reference counts after purge %@", &v13, 0xCu);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, *(*(*(a1 + 40) + 8) + 40));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_5(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1(&dword_232E53000, v2, v3, "Failed asset downloads for language pair %{public}@ with error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_5(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1(&dword_232E53000, v2, v3, "Finished downloads; some assets downloads for language pair %{public}@ failed: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1(&dword_232E53000, v2, v3, "error purging asset %{public}@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_34_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1(&dword_232E53000, v4, v5, "Failed to finish purging assets for language pair %{public}@: %@");
  v6 = *MEMORY[0x277D85DE8];
}

@end