@interface PASAsset2
@end

@implementation PASAsset2

void __28___PASAsset2_clearOverrides__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a2 + 56) = 0;
}

uint64_t __58___PASAsset2_addOverridePath_forResourceWithRelativePath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[7];
    a2[7] = v6;

    v3 = a2[7];
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v3 setObject:v8 forKeyedSubscript:v9];
}

uint64_t __24___PASAsset2_bundlePath__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __52___PASAsset2_overrideDefaultBundleWithBundleAtPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v5 = v6[1];
  v6[1] = v4;

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _loadDefaultBundleVersionWithGuardedData:v6];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong(v6 + 1, *(*(a1 + 40) + 16));
    [*(a1 + 40) _loadDefaultBundleVersionWithGuardedData:v6];
  }
}

uint64_t __70___PASAsset2__purgeObsoleteInstalledAssetsFromCandidates_guardedData___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if (v4 > 6)
  {
    goto LABEL_6;
  }

  if (((1 << v4) & 0x4C) != 0)
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (((1 << v4) & 0x11) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 32);
  v6 = v5[5];
  v7 = 0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
    v9 = [v5 _assetDescription];
    v10 = [v3 attributes];
    v11 = [v10 objectForKeyedSubscript:@"_ContentVersion"];
    v14 = 138412802;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    v18 = 2048;
    v19 = [v3 state];
    _os_log_impl(&dword_1A7F47000, v8, OS_LOG_TYPE_DEFAULT, "Found MAAsset %@ with obsolete version %@, but not removing because state is %ld.", &v14, 0x20u);

LABEL_6:
    v7 = 0;
  }

LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

void __70___PASAsset2__purgeObsoleteInstalledAssetsFromCandidates_guardedData___block_invoke_394(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (a2)
  {
    if (os_log_type_enabled(v3[5], OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = [(os_log_t *)v3 _assetDescription];
      v8 = *(a1 + 40);
      v13 = 138412802;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2048;
      v18 = a2;
      _os_log_error_impl(&dword_1A7F47000, v6, OS_LOG_TYPE_ERROR, "Failed to purge installed MAAsset %@ with obsolete version %@: error %ld", &v13, 0x20u);
    }
  }

  else if (os_log_type_enabled(v3[5], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v4;
    v10 = [(os_log_t *)v3 _assetDescription];
    v11 = *(a1 + 40);
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_1A7F47000, v9, OS_LOG_TYPE_DEFAULT, "Successfully purged installed MAAsset %@ with obsolete version %@.", &v13, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 72);
  v8 = [v5 attributes];
  v9 = [v8 objectForKeyedSubscript:@"_CompatibilityVersion"];
  v10 = [v9 unsignedIntegerValue];

  v11 = *(a1 + 32);
  if (v7 != v10)
  {
    v18 = *(v11 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v25 = v18;
      v26 = [v5 attributes];
      v27 = [v26 objectForKeyedSubscript:@"_ContentVersion"];
      v28 = [v5 attributes];
      v29 = [v28 objectForKeyedSubscript:@"_CompatibilityVersion"];
      v30 = *(*(a1 + 32) + 72);
      *buf = 138412802;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      *&buf[22] = 2048;
      v38 = v30;
      _os_log_debug_impl(&dword_1A7F47000, v25, OS_LOG_TYPE_DEBUG, "Ignoring MAAsset version %@ with compat version %@ (required compat version: %lu)", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v12 = *(v11 + 24);
  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v38) = 0;
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_386;
    v34 = &unk_1E77F2C20;
    v35 = v5;
    v36 = buf;
    [v12 enumerateKeysAndObjectsUsingBlock:&v31];
    v13 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    if (v13)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }
  }

  v14 = [v5 attributes];
  v15 = [v14 objectForKeyedSubscript:@"_ContentVersion"];
  v16 = [v15 intValue];

  if (v16 < 0)
  {
    v21 = *(a1 + 32);
    v22 = v21[5];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v21 _assetDescription];
      *buf = 138412546;
      *&buf[4] = v24;
      *&buf[12] = 1024;
      *&buf[14] = v16;
      _os_log_impl(&dword_1A7F47000, v23, OS_LOG_TYPE_DEFAULT, "Found MAAsset for %@ with invalid version %d", buf, 0x12u);
    }

    goto LABEL_8;
  }

  v17 = 1;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

void __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_2(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v40 = *(v3 + 3);
  v41 = *(v3 + 4);
  v4 = *(v3 + 5);
  *(v3 + 5) = 0;

  v5 = *(v3 + 2);
  *(v3 + 3) = v5;
  *(v3 + 4) = v5;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v44 = a1;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (!v6)
  {
    goto LABEL_34;
  }

  v8 = v6;
  v42 = 0;
  v9 = *v54;
  *&v7 = 138412546;
  v39 = v7;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v54 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v53 + 1) + 8 * i);
      v12 = [v11 attributes];
      v13 = [v12 objectForKeyedSubscript:@"_ContentVersion"];

      if (*(v3 + 2) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        v15 = [v14 compare:v13];

        if (v15 != -1)
        {
          v32 = *(v44 + 40);
          v33 = v32[5];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = v33;
            v35 = [v32 _assetDescription];
            *buf = 138412290;
            v58 = v35;
            _os_log_impl(&dword_1A7F47000, v34, OS_LOG_TYPE_INFO, "Baseline asset for %@ is still current. Not using MobileAsset.", buf, 0xCu);
          }

          goto LABEL_33;
        }
      }

      v48 = MEMORY[0x1E69E9820];
      v49 = 3221225472;
      v50 = __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_390;
      v51 = &unk_1E77F2C90;
      v52 = v11;
      v16 = [v11 state];
      if (v16 <= 6 && ((1 << v16) & 0x64) != 0)
      {
        v18 = [v11 getLocalUrl];
        v19 = *(v44 + 40);
        v20 = v19[5];
        if (!v18)
        {
          if (os_log_type_enabled(v19[5], OS_LOG_TYPE_ERROR))
          {
            v21 = v20;
            v22 = [(os_log_t *)v19 _assetDescription];
            *buf = 138412290;
            v58 = v22;
            _os_log_error_impl(&dword_1A7F47000, v21, OS_LOG_TYPE_ERROR, "MAAsset for %@ is missing localURL", buf, 0xCu);
          }

          goto LABEL_21;
        }

        v27 = v18;
        if (os_log_type_enabled(v19[5], OS_LOG_TYPE_DEFAULT))
        {
          v28 = v20;
          v29 = [(os_log_t *)v19 _assetDescription];
          *buf = v39;
          v58 = v29;
          v59 = 2112;
          v60 = v13;
          _os_log_impl(&dword_1A7F47000, v28, OS_LOG_TYPE_DEFAULT, "Using installed MAAsset for %@, version %@.", buf, 0x16u);
        }

        *(v3 + 3) = [v13 unsignedIntegerValue];
        objc_storeStrong(v3 + 5, v11);
        if ((v42 & 1) == 0)
        {
          v30 = *(v44 + 40);
          v31 = v30[5];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v37 = v31;
            v38 = [v30 _assetDescription];
            *buf = v39;
            v58 = v38;
            v59 = 2112;
            v60 = v13;
            _os_log_debug_impl(&dword_1A7F47000, v37, OS_LOG_TYPE_DEBUG, "Already-installed MAAsset for %@ (version %@) is also the most current known to be available.", buf, 0x16u);
          }

          *(v3 + 4) = [v13 unsignedIntegerValue];
        }

LABEL_33:
        goto LABEL_34;
      }

      if ((v42 & 1) == 0)
      {
        *(v3 + 4) = [v13 unsignedIntegerValue];
        if (v41 != [v13 unsignedIntegerValue])
        {
          v23 = [*(v44 + 40) _assetDescription];
          v24 = *(v44 + 40);
          v25 = *(v24 + 40);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v39;
            v58 = v23;
            v59 = 2112;
            v60 = v13;
            _os_log_impl(&dword_1A7F47000, v25, OS_LOG_TYPE_DEFAULT, "New MAAsset for %@ available (version %@), requesting download.", buf, 0x16u);
            v24 = *(v44 + 40);
          }

          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_392;
          v45[3] = &unk_1E77F2CB8;
          v45[4] = v24;
          v46 = v23;
          v47 = v13;
          v26 = v23;
          [v11 startDownload:v45];
        }
      }

      v42 = 1;
LABEL_21:
    }

    v8 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_34:

  if (*(v3 + 48) == 1)
  {
    [*(v44 + 40) _purgeObsoleteInstalledAssetsFromCandidates:*(v44 + 32) guardedData:v3];
    *(v3 + 48) = 0;
  }

  *(*(*(v44 + 48) + 8) + 24) = *(v3 + 3) != v40;

  v36 = *MEMORY[0x1E69E9840];
}

void __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_392(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1[4] + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v6 = a1[6];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_1A7F47000, v4, OS_LOG_TYPE_DEFAULT, "MAAsset download for %@ (version %@) completed with result: %ld", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_388(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 attributes];
  v7 = [v6 objectForKeyedSubscript:@"_ContentVersion"];
  v8 = [v4 attributes];
  v9 = [v8 objectForKeyedSubscript:@"_ContentVersion"];
  v10 = [v7 compare:v9];

  if (!v10)
  {
    v11 = [v4 state] == 2;
    v12 = [v5 state] == 2;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v10 = [v13 compare:v14];
  }

  return v10;
}

void __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_386(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 attributes];
  v11 = [v10 objectForKeyedSubscript:v9];

  LOBYTE(v9) = [v8 isEqual:v11];
  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __68___PASAsset2_filesystemPathsForAssetDataRelativePaths_assetVersion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0;
  v4 = [*(a1 + 32) _maFilesystemPathsForAssetDataRelativePaths:*(a1 + 40) guardedData:v3 isMissingData:&v21 assetVersion:*(a1 + 56)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40) || v21 == 1)
  {
    v7 = [*(a1 + 32) _defaultBundleFilesystemPathsForAssetDataRelativePaths:*(a1 + 40) guardedData:v3 assetVersion:*(a1 + 56)];
    v8 = v7;
    if (v21 == 1)
    {
      v9 = *(a1 + 32);
      v10 = v9[5];
      if (!v7)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v10;
          v18 = [v9 _assetDescription];
          *buf = 138412290;
          v23 = v18;
          _os_log_impl(&dword_1A7F47000, v17, OS_LOG_TYPE_DEFAULT, "MAAsset for %@ was missing data, and no default bundle was available for fallback!", buf, 0xCu);
        }

        goto LABEL_11;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v19 = v10;
        v20 = [v9 _assetDescription];
        *buf = 138412290;
        v23 = v20;
        _os_log_fault_impl(&dword_1A7F47000, v19, OS_LOG_TYPE_FAULT, "Using default bundle fallback for %@ due to missing MAAsset data.", buf, 0xCu);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }

    else if (!v7)
    {
LABEL_11:

      goto LABEL_12;
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    goto LABEL_11;
  }

LABEL_12:
  if (v3[7])
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (v11)
    {
      v12 = [v11 mutableCopy];
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;
    [v12 addEntriesFromDictionary:v3[7]];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __31___PASAsset2__assetDescription__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 description];
  [v3 addObject:v4];
}

uint64_t __45___PASAsset2_downloadMetadataWithCompletion___block_invoke(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = *(v3 + 40);
  if (a2)
  {
    if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
    {
      v10 = a1[5];
      v11 = 138412546;
      v12 = v10;
      v13 = 2048;
      v14 = a2;
      _os_log_error_impl(&dword_1A7F47000, v4, OS_LOG_TYPE_ERROR, "Failed to download catalog for asset type %@: error %td", &v11, 0x16u);
    }

    result = a1[6];
    if (result)
    {
      v7 = *(result + 16);
LABEL_10:
      result = v7();
    }
  }

  else
  {
    if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1A7F47000, v4, OS_LOG_TYPE_INFO, "Completed download of catalog for asset type %@.", &v11, 0xCu);
    }

    result = a1[6];
    if (result)
    {
      v7 = *(result + 16);
      goto LABEL_10;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __180___PASAsset2__initWithAssetTypeIdentifier_defaultBundlePath_compatibilityVersion_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 _loadDefaultBundleVersionWithGuardedData:v4];
  v3 = v4[2];
  v4[3] = v3;
  v4[4] = v3;
}

void __180___PASAsset2__initWithAssetTypeIdentifier_defaultBundlePath_compatibilityVersion_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = [v2 _assetDescription];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A7F47000, v4, OS_LOG_TYPE_INFO, "Received new asset installation notification: %@", &v7, 0xCu);
    }

    [v2 _updateAssetMetadata];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __180___PASAsset2__initWithAssetTypeIdentifier_defaultBundlePath_compatibilityVersion_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke_354(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = [v2 _assetDescription];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A7F47000, v4, OS_LOG_TYPE_INFO, "Received asset metadata update notification: %@", &v7, 0xCu);
    }

    [v2 _updateAssetMetadata];
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __162___PASAsset2_initWithAssetTypeDescriptorPath_defaultBundlePath_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  BYTE1(v5) = *(a1 + 72);
  LOBYTE(v5) = 0;
  v3 = [v2 _initWithAssetTypeIdentifier:@"com.apple.MobileAsset.ProactiveSupport.BrokenAssetTypeDescriptor" defaultBundlePath:*(a1 + 40) compatibilityVersion:0x7FFFFFFFFFFFFFFFLL matchingKeysAndValues:*(a1 + 48) notificationQueue:*(a1 + 56) logHandle:*(a1 + 64) enableAssetUpdates:v5 purgeObsoleteInstalledAssets:?];

  return v3;
}

@end