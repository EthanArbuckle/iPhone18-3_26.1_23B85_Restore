@interface LTOfflineAssetManager
@end

@implementation LTOfflineAssetManager

uint64_t __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 description];
  v6 = [v4 description];

  v7 = [v5 compare:v6];
  return v7;
}

id __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke_9(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v11 = 0;
  v6 = [v3 _speechTranslationAssetInfoForLocalePair:a2 installedAssets:v2 catalogAssets:v4 offlineConfig:v5 error:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = _LTOSLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke_9_cold_1();
    }
  }

  v9 = [v6 availabilityInfo];

  return v9;
}

void __49___LTOfflineAssetManager_deleteAsset_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Asset purge finished", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

void __50___LTOfflineAssetManager__removeOldAssetDirectory__block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  if ((_removeOldAssetDirectory_removed & 1) == 0)
  {
    v0 = [MEMORY[0x277CCAA00] defaultManager];
    v1 = +[_LTDAssetService assetDirectoryURL];
    v20 = 0;
    v2 = [_LTDConfigurationService assetConfigurationWithError:&v20];
    v3 = v20;
    if (v3)
    {
      v4 = v3;
      v5 = _LTOSLogAssets();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineAssetManager removeObsoleteAssets];
      }
    }

    else
    {
      v6 = [v2 assetDirectoryNames];
      if ([v6 count] < 2 || objc_msgSend(v6, "count") == 1)
      {
        v4 = 0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        *&v7 = 138412290;
        v17 = v7;
        do
        {
          v10 = [v6 objectAtIndexedSubscript:{v9, v17}];
          v11 = [v1 URLByAppendingPathComponent:v10];
          v19 = 0;
          v12 = [v11 path];
          v13 = [v0 fileExistsAtPath:v12 isDirectory:&v19];

          if (v13 && v19 == 1)
          {
            v14 = [v11 path];
            v18 = v8;
            [v0 removeItemAtPath:v14 error:&v18];
            v4 = v18;

            if (v4)
            {
              v15 = _LTOSLogAssets();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = v17;
                v22 = v4;
                _os_log_error_impl(&dword_232E53000, v15, OS_LOG_TYPE_ERROR, "Failed to remove old asset directory %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v4 = v8;
          }

          ++v9;
          v8 = v4;
        }

        while (v9 < [v6 count] - 1);
      }

      _removeOldAssetDirectory_removed = 1;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3;
  v6[3] = &unk_2789B6B60;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_cold_1(v2);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *v2);
  }

  return result;
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26;
  block[3] = &unk_2789B6E20;
  v9 = v3;
  v7 = *(a1 + 32);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26_cold_1(v2);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = _LTOSLogAssets();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "All assets purged successfully", v7, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*v2 + 8) + 40));
  }

  return result;
}

void __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_cold_1();
    }

    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_28;
    v7[3] = &unk_2789B54E0;
    v8 = *(a1 + 32);
    [v5 deleteAsset:v6 completion:v7];
    (*(*(a1 + 56) + 16))();
  }
}

void __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_28_cold_1();
    }
  }
}

void __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "----------------------------- Determine pairs to update ------------------------------------ ", buf, 2u);
  }

  v66 = 0;
  v3 = [_LTDConfigurationService offlineConfigurationWithError:&v66];
  v4 = v66;
  if (v4)
  {
    v5 = v4;
    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager updateAllAssets:];
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = [v3 languagePairs];
    v44 = [MEMORY[0x277CBEB18] array];
    v45 = [MEMORY[0x277CBEB18] array];
    v41 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) debugDumpAssets:*(a1 + 40)];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v63;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v13 = v10;
          if (*v63 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [MEMORY[0x277CE1B38] pairWithIdentifiers:*(*(&v62 + 1) + 8 * i)];
          v16 = *(a1 + 40);
          v15 = *(a1 + 48);
          v17 = *(a1 + 32);
          v61 = v10;
          v18 = [v17 _speechTranslationAssetInfoForLocalePair:v14 installedAssets:v15 catalogAssets:v16 offlineConfig:v3 error:&v61];
          v10 = v61;

          v19 = [v18 availabilityInfo];
          [v45 addObject:v14];
          if ([v19 needsUpdate])
          {
            [v44 addObject:v14];
          }

          if ([*(a1 + 56) containsObject:v14] && objc_msgSend(v19, "pairState") != 2)
          {
            [v44 addObject:v14];
            [v41 addObject:v18];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v20 = _LTOSLogAssets();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "----------------------------- Assets to download ------------------------------------ ", buf, 2u);
    }

    v40 = v10;
    v21 = dispatch_group_create();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v22 = *(a1 + 48);
    v23 = [v22 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v58;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v57 + 1) + 8 * j);
          if (([v27 isConfig] & 1) == 0)
          {
            [*(a1 + 32) _updateAsset:v27 catalogAssets:*(a1 + 40) downloadGroup:v21 completion:&__block_literal_global_32];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v24);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v41;
    v28 = [v42 countByEnumeratingWithState:&v53 objects:v68 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v54;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v54 != v30)
          {
            objc_enumerationMutation(v42);
          }

          v32 = *(*(&v53 + 1) + 8 * k);
          dispatch_group_enter(v21);
          v33 = _queue;
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2_33;
          v51[3] = &unk_2789B54E0;
          v52 = v21;
          [v32 downloadAssetsUserInitiated:0 queue:v33 completion:v51];
        }

        v29 = [v42 countByEnumeratingWithState:&v53 objects:v68 count:16];
      }

      while (v29);
    }

    v34 = _queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke_34;
    block[3] = &unk_2789B6EE0;
    v47 = v44;
    v48 = v45;
    v49 = *(a1 + 32);
    v39 = *(a1 + 64);
    v35 = v39;
    v50 = v39;
    v36 = v45;
    v37 = v44;
    dispatch_group_notify(v21, v34, block);

    v5 = v40;
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2_33(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2_33_cold_1();
    }
  }
}

void __42___LTOfflineAssetManager_updateAllAssets___block_invoke_34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Config asset updated", v6, 2u);
    }

    v4 = *(a1 + 40);

    v2 = v4;
  }

  [*(a1 + 48) updateAssetSymLinksForLocalePairs:v2];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __86___LTOfflineAssetManager__downloadPassthroughAssetForLocale_userInitiated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86___LTOfflineAssetManager__downloadPassthroughAssetForLocale_userInitiated_completion___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5 && ([v5 isInstalled] & 1) != 0)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v28 = 0;
      v12 = [v10 _speechTranslationAssetInfoForLocalePair:v11 error:&v28];
      v7 = v28;
      if (!v7)
      {
        v13 = *(a1 + 56);
        v14 = _queue;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_47;
        v26[3] = &unk_2789B58D0;
        v26[4] = *(a1 + 32);
        v27 = *(a1 + 48);
        [v12 downloadAssetsUserInitiated:v13 queue:v14 completion:v26];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v15 = *(a1 + 32);
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CE1C58];
      v29[0] = *MEMORY[0x277CCA450];
      v18 = [v12 localizedStringForKey:@"CONFIGURATION_ASSET_MISSING_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
      v30[0] = v18;
      v29[1] = *MEMORY[0x277CCA470];
      v19 = MEMORY[0x277CCACA8];
      v20 = [v12 localizedStringForKey:@"CONFIGURATION_ASSET_MISSING_ERROR_DESCRIPTION_REASON" value:&stru_284834138 table:0];
      v21 = [v19 stringWithFormat:v20];
      v30[1] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      v7 = [v16 errorWithDomain:v17 code:5 userInfo:v22];

      v23 = _LTOSLogAssets();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_cold_1();
      }
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      (*(v24 + 16))(v24, v7);
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_cold_1();
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }

LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

void __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 assetIdentifierReferenceCountDictionary];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Reference counts after download %@", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke_9_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error creating speechTranslationAssetInfo: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Failed to delete hotfix file when trying to purge all assets: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Failed to delete hotfix when purging assets: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v3, v4, "At least one asset failed to purge: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error downloading asset update %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_28_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error deleting asset during asset update %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2_33_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error downloading assets during update: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __86___LTOfflineAssetManager__downloadPassthroughAssetForLocale_userInitiated_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_232E53000, v2, v3, "Failed to download asset for ASR-only download of pair %{public}@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error downloading offline assets %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end