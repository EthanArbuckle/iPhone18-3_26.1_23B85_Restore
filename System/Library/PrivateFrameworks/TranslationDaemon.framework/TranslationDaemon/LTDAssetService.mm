@interface LTDAssetService
@end

@implementation LTDAssetService

uint64_t __25___LTDAssetService_queue__block_invoke()
{
  queue__queue_0 = dispatch_queue_create("com.apple.translationd.AssetService", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t __52___LTDAssetService__addSyntheticASREntriesToAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __53___LTDAssetService_queryAssetType_filter_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53___LTDAssetService_queryAssetType_filter_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if ([*(a1 + 48) _assetProviderForAssetType:*(a1 + 32)] == 2)
    {
      [*(a1 + 48) _addSyntheticASREntriesToAssets:v5];
    }

    v8 = [*(a1 + 48) _assetsSortedByVersion:v5];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_2_cold_1(a1, v4);
    }

    v5 = *(*(a1 + 48) + 8);
    v8 = *(v5 + 40);
    v6 = (v5 + 40);
    v7 = v8;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    objc_storeStrong(v6, v9);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_299(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 identifier];
    v6 = v5;
    v7 = *(*(a1[6] + 8) + 40);
    if (!v7)
    {
      v7 = @"successfully";
    }

    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEFAULT, "Download of asset completed %{public}@: %{public}@", &v10, 0x16u);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_310(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (*(a1 + 104))
  {
    v3 = *(a1 + 80) | 0x80;
  }

  else
  {
    v3 = *(a1 + 80);
  }

  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_2;
  v12[3] = &unk_2789B5B98;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = *(a1 + 96);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v15 = *(a1 + 72);
  v17 = *(a1 + 104);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  [v2 downloadAsset:v5 options:v3 progress:v4 completion:v12];
}

void __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 72) + 1;
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = [v6 count];
    v10 = [*(a1 + 48) identifier];
    v16 = 138544130;
    v17 = v7;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Download %{public}@ completed item %zd / %zd: %{public}@", &v16, 0x2Au);
  }

  v11 = [*(a1 + 48) progress];
  v12 = [v11 isCancelled];

  if ((v12 & 1) == 0)
  {
    v13 = *(*(a1 + 64) + 8);
    v14 = v3;
    if (!v3)
    {
      v14 = *(v13 + 40);
    }

    objc_storeStrong((v13 + 40), v14);
  }

  if (*(a1 + 80) == 1)
  {
    dispatch_group_leave(*(a1 + 56));
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_311(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 72) _symlinkPairNamesForLocales:*(a1 + 32)];
  v5 = *(a1 + 40);
  if ((*(a1 + 80) & 1) == 0)
  {
    v6 = [*(a1 + 40) lt_filterUsingBlock:&__block_literal_global_314];

    v5 = v6;
  }

  if (![v5 count])
  {
    v20 = 0;
    goto LABEL_24;
  }

  v28 = [_LTDAssetService configAssetIfAvailableWithError:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v8)
  {

LABEL_21:
    v21 = _LTOSLogAssets();
    v20 = 0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 48);
      *buf = 138543362;
      v34 = v22;
      _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_DEFAULT, "Download %{public}@ symlinks were not modified", buf, 0xCu);
      v20 = 0;
    }

    goto LABEL_23;
  }

  v9 = v8;
  v25 = v4;
  v26 = v3;
  v10 = 0;
  v11 = *v30;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v29 + 1) + 8 * i);
      v14 = [*(a1 + 72) _symlinkAssetsForLocalePair:v13 fromAssets:{v5, v25, v26}];
      if ([v14 count])
      {
        v10 |= [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v13 assets:v14 configAsset:v28 validateIfNeeded:*(a1 + 80)];
      }

      else
      {
        v15 = _LTOSLogAssets();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 48);
          v16 = v15;
          v17 = [v13 canonicalIdentifier];
          *buf = 138543618;
          v34 = v27;
          v35 = 2114;
          v36 = v17;
          _os_log_error_impl(&dword_232E53000, v16, OS_LOG_TYPE_ERROR, "Download %{public}@ complete for %{public}@ but resolved an empty symlink asset list, skipping symlinking", buf, 0x16u);
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  }

  while (v9);

  v4 = v25;
  v3 = v26;
  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

  v18 = _LTOSLogAssets();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 48);
    *buf = 138543362;
    v34 = v19;
    _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "Download %{public}@ symlinks were modified", buf, 0xCu);
  }

  v20 = 1;
LABEL_23:

LABEL_24:
  v23 = *(a1 + 56);
  if (v23)
  {
    (*(v23 + 16))(v23, *(*(*(a1 + 64) + 8) + 40));
  }

  if (v3)
  {
    v3[2](v3, v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_317(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssets();
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) UTF8String];
    v18 = 136315138;
    v19 = v5;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v3, OS_SIGNPOST_INTERVAL_END, v4, "downloadAssets", "%s", &v18, 0xCu);
  }

  v6 = _LTOSLogAssets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = [v7 count];
    v18 = 138543618;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Download %{public}@ complete for %zd assets, running symlink validation", &v18, 0x16u);
  }

  v11 = [*(a1 + 64) cleanupScheduler];
  v12 = objc_opt_respondsToSelector();
  v13 = _LTOSLogAssets();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v15 = *(a1 + 32);
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Download %{public}@ deferring symlink validation to cleanupScheduler: %{public}@", &v18, 0x16u);
    }

    [v11 scheduleAssetCleanupWork:*(a1 + 48)];
  }

  else
  {
    if (v14)
    {
      v16 = *(a1 + 32);
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Download %{public}@ doesn't have a cleanupScheduler, directly doing work to validate symlinks", &v18, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void *__48___LTDAssetService__symlinkPairNamesForLocales___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CE1B38] pairWithIdentifiers:a2];
  if ([v2 isPassthrough])
  {
    v3 = 0;
  }

  else if ([v2 isVariantPair])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t __59___LTDAssetService__symlinkAssetsForLocalePair_fromAssets___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!*(*(*(a1 + 32) + 8) + 40) && (([v4 isMTModel] & 1) != 0 || objc_msgSend(v5, "isPhrasebook")))
  {
    if ([v5 isInstalled])
    {
      v6 = 1;
      goto LABEL_3;
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = 0;
LABEL_3:

  return v6;
}

void __42___LTDAssetService_purgeAsset_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  objc_storeStrong(v6, v9);
  v10 = a3;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __42___LTDAssetService_purgeAsset_completion___block_invoke_2(void *a1)
{
  result = a1[5];
  if (result)
  {
    if (*(*(a1[6] + 8) + 40))
    {
      return (*(result + 16))(result, 0);
    }

    else
    {
      return (*(result + 16))(result, a1[4]);
    }
  }

  return result;
}

uint64_t __44___LTDAssetService_bootstrapWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (!v8)
  {
    v5 = objc_opt_new();
    [v5 removeObsoleteAssets];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x2821F9730]();
}

void __37___LTDAssetService_assetDirectoryURL__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _libraryDirectory];
  v2 = [v1 URLByAppendingPathComponent:@"Translation"];

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __37___LTDAssetService_assetDirectoryURL__block_invoke_cold_1();
    }
  }

  v6 = assetDirectoryURL__assetDirectoryURL;
  assetDirectoryURL__assetDirectoryURL = v2;
}

void __49___LTDAssetService__refreshHotfixWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49___LTDAssetService__refreshHotfixWithCompletion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0, v3);
  }
}

void __46___LTDAssetService_configAssetWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___LTDAssetService_configAssetWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [_LTDAssetService filterConfigAssetFromAssets:a2];
    if (v7)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __46___LTDAssetService_configAssetWithCompletion___block_invoke_341;
      v11[3] = &unk_2789B5D48;
      v8 = *(a1 + 40);
      v13 = *(a1 + 32);
      v12 = v7;
      [v8 _installConfigAsset:v12 completion:v11];

      v9 = v13;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:@"No config asset in result from async catalog request" userInfo:0];
      v10 = _LTOSLogAssets();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __46___LTDAssetService_configAssetWithCompletion___block_invoke_cold_2();
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void __46___LTDAssetService_configAssetWithCompletion___block_invoke_341(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46___LTDAssetService_configAssetWithCompletion___block_invoke_341_cold_1();
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void __51___LTDAssetService__installConfigAsset_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _LTOSLogAssets();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46___LTDAssetService_configAssetWithCompletion___block_invoke_341_cold_1();
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v5;
      v12 = 134217984;
      v13 = [v8 assetVersion];
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Finished downloading config asset version %zd", &v12, 0xCu);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v7 = *(v10 + 16);
      goto LABEL_10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __48___LTDAssetService_catalogAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48___LTDAssetService_catalogAssetsWithCompletion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __50___LTDAssetService_installedAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50___LTDAssetService_installedAssetsWithCompletion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __59___LTDAssetService_assetsForLocales_includeTTS_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      v7 = [*(a1 + 48) _ttsAssetsForLocales:*(a1 + 32)];
      v8 = [v5 arrayByAddingObjectsFromArray:v7];

      v5 = v8;
    }

    v9 = [_LTDAssetService filterConfigAssetFromAssets:v5];
    if (v9)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59___LTDAssetService_assetsForLocales_includeTTS_completion___block_invoke_364;
      v15[3] = &unk_2789B5DE8;
      v10 = *(a1 + 48);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v18 = v11;
      v19 = v12;
      v16 = v5;
      v17 = *(a1 + 32);
      [v10 _installConfigAsset:v9 completion:v15];

      v13 = v18;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:@"No config asset found while resolving assets for locales" userInfo:0];
      v14 = _LTOSLogAssets();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __46___LTDAssetService_configAssetWithCompletion___block_invoke_cold_2();
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

void __59___LTDAssetService_assetsForLocales_includeTTS_completion___block_invoke_364(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[7];
    v7 = a1[4];
    v8 = a1[5];
    v10 = 0;
    v9 = [v6 filterAssets:v7 forLocales:v8 error:&v10];
    v5 = v10;
    (*(a1[6] + 16))();
  }
}

void __53___LTDAssetService_queryAssetType_filter_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Asset async query failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v5, v6, "Download of component asset failed %{public}@: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __37___LTDAssetService_assetDirectoryURL__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create asset directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49___LTDAssetService__refreshHotfixWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Hotfix asset refresh failure %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46___LTDAssetService_configAssetWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Asset catalog read failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46___LTDAssetService_configAssetWithCompletion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Config asset not found: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46___LTDAssetService_configAssetWithCompletion___block_invoke_341_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error downloading config asset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48___LTDAssetService_catalogAssetsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error querying catalog assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50___LTDAssetService_installedAssetsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error querying installed assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end