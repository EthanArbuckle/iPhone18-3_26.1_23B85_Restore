@interface TRIMAProvider
- (BOOL)_shouldMockMobileAssets;
- (id)_sqliteMADatabase;
- (id)createAutoAssetWithId:(id)a3 decryptionKey:(id)a4 error:(id *)a5;
- (id)downloadAssets:(id)a3 attribution:(id)a4 aggregateProgress:(id)a5 group:(id)a6 completion:(id)a7;
- (id)endAllPreviousLocksOfReasonSync:(id)a3 forClientName:(id)a4 forAssetSelector:(id)a5;
- (id)endAllPreviousLocksOfSelectorSync:(id)a3 forClientName:(id)a4;
- (id)installedAssetsMatchingFullAssetIds:(id)a3;
- (void)cancelActivityForSelector:(id)a3 completion:(id)a4;
- (void)eliminateAllForSelector:(id)a3 completion:(id)a4;
- (void)eliminatePromotedNeverLockedForSelector:(id)a3 completion:(id)a4;
@end

@implementation TRIMAProvider

- (id)endAllPreviousLocksOfReasonSync:(id)a3 forClientName:(id)a4 forAssetSelector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(TRIMAProvider *)self _shouldMockMobileAssets])
  {
    v11 = [(TRIMAProvider *)self _sqliteMADatabase];
    [v11 endAllPreviousLocksOfReasonSync:v8 forAssetSelector:v10];

    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277D289E0] endAllPreviousLocksOfReasonSync:v8 forClientName:v9 forAssetSelector:v10];
  }

  return v12;
}

- (id)endAllPreviousLocksOfSelectorSync:(id)a3 forClientName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(TRIMAProvider *)self _shouldMockMobileAssets])
  {
    v8 = [(TRIMAProvider *)self _sqliteMADatabase];
    [v8 endAllPreviousLocksOfSelectorSync:v6 forClientName:v7];

    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D289E0] endAllPreviousLocksOfSelectorSync:v6 forClientName:v7];
  }

  return v9;
}

- (void)cancelActivityForSelector:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(TRIMAProvider *)self _shouldMockMobileAssets])
  {
    v7 = [(TRIMAProvider *)self _sqliteMADatabase];
    [v7 cancelActivityForSelector:v8 completion:v6];
  }

  else
  {
    [MEMORY[0x277D289E0] cancelActivityForSelector:v8 completion:v6];
  }
}

- (void)eliminateAllForSelector:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(TRIMAProvider *)self _shouldMockMobileAssets])
  {
    v7 = [(TRIMAProvider *)self _sqliteMADatabase];
    [v7 eliminateAllForSelector:v8 completion:v6];
  }

  else
  {
    [MEMORY[0x277D289E0] eliminateAllForSelector:v8 completion:v6];
  }
}

- (void)eliminatePromotedNeverLockedForSelector:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(TRIMAProvider *)self _shouldMockMobileAssets])
  {
    v7 = [(TRIMAProvider *)self _sqliteMADatabase];
    [v7 eliminatePromotedNeverLockedForSelector:v8 completion:v6];
  }

  else
  {
    [MEMORY[0x277D289E0] eliminatePromotedNeverLockedForSelector:v8 completion:v6];
  }
}

- (id)createAutoAssetWithId:(id)a3 decryptionKey:(id)a4 error:(id *)a5
{
  obj = 0;
  v8 = a4;
  v9 = a3;
  v10 = [(TRIMAProvider *)self _shouldMockMobileAssets];
  v11 = off_279DDE118;
  if (!v10)
  {
    v11 = off_279DDDEF0;
  }

  v12 = [objc_alloc(*v11) initWithAssetId:v9 decryptionKey:v8 error:&obj];

  if (a5 && !v12)
  {
    objc_storeStrong(a5, obj);
  }

  return v12;
}

- (id)_sqliteMADatabase
{
  db = self->_db;
  if (!db)
  {
    if (sqliteMADatabasePaths)
    {
      v5 = sqliteMADatabasePaths;
    }

    else
    {
      v5 = [MEMORY[0x277D737E0] sharedPaths];
    }

    v6 = v5;
    v7 = [v5 trialRootDir];
    v8 = [v7 stringByAppendingPathComponent:@"MASQLiteMock"];

    v9 = [v8 stringByAppendingPathComponent:@"Database"];
    v10 = [[TRISQLiteMADatabase alloc] initWithParentDir:v9];
    if (!v10)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"TRIMAProviding.m" lineNumber:435 description:{@"Expression was unexpectedly nil/false: %@", @"[[TRISQLiteMADatabase alloc] initWithParentDir:parentDir]"}];
    }

    v11 = self->_db;
    self->_db = v10;

    db = self->_db;
  }

  return db;
}

- (BOOL)_shouldMockMobileAssets
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"com.apple.triald.ma.sqliteMock"];

  return v3;
}

- (id)installedAssetsMatchingFullAssetIds:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v6 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__TRIMAProvider_installedAssetsMatchingFullAssetIds___block_invoke;
  v10[3] = &unk_279DE2F40;
  v10[4] = self;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [v4 enumerateObjectsUsingBlock:v10];
  [v7 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_516_1];
  if (v14[3])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  objc_autoreleasePoolPop(v5);

  return v8;
}

void __53__TRIMAProvider_installedAssetsMatchingFullAssetIds___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v23 = 0;
  v6 = [*(a1 + 32) createAutoAssetWithId:v5 decryptionKey:0 error:&v23];
  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setLockAcrossTermination:0];
    [v7 setUnlockAfterUsageSecs:-2];
    v21 = 0;
    v22 = 0;
    v8 = [v6 lockContentSync:@"test asset presence" withUsagePolicy:v7 withTimeout:0 lockedAssetSelector:&v22 newerInProgress:0 error:&v21];
    v9 = v22;
    v20 = v21;
    if (v8 && v9)
    {
      v10 = [v9 assetVersion];
      v11 = v10 == 0;

      if (v11)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v25 = v9;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "lockContent returned asset selector with missing version: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v12 = objc_alloc(MEMORY[0x277D73740]);
        v13 = [v9 assetType];
        v14 = [v9 assetSpecifier];
        v15 = [v9 assetVersion];
        v16 = [v12 initWithType:v13 specifier:v14 version:v15];

        v17 = *(a1 + 40);
        objc_sync_enter(v17);
        [*(a1 + 40) setObject:v6 forKeyedSubscript:v16];
        objc_sync_exit(v17);
      }
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v25 = v6;
        v26 = 2114;
        v27 = v20;
        _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "MAAutoAsset %{public}@ not found when checking for presence: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v18 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v23;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to init autoAsset %@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)downloadAssets:(id)a3 attribution:(id)a4 aggregateProgress:(id)a5 group:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 1;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke;
  v63[3] = &unk_279DE2F88;
  v63[4] = self;
  v19 = v17;
  v66 = v19;
  v20 = v14;
  v64 = v20;
  v67 = &v68;
  v21 = v18;
  v65 = v21;
  [v13 enumerateKeysAndObjectsUsingBlock:v63];
  if (v69[3])
  {
    v38 = v15;
    v22 = objc_opt_new();
    v23 = [v20 networkOptions];
    v24 = [v23 discretionaryBehavior];

    if (!v24)
    {
      [v22 setUserInitiated:1];
    }

    v37 = v22;
    v25 = objc_alloc_init(TRICancelableMAOperation);
    if (v16)
    {
      dispatch_group_enter(v16);
    }

    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v26 = [v20 networkOptions];
    v27 = [v26 activity];

    if (v27)
    {
      v28 = [v20 networkOptions];
      v29 = [v28 activity];
      v50 = MEMORY[0x277D85DD0];
      v51 = 3221225472;
      v52 = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_520;
      v53 = &unk_279DE2FD8;
      v54 = v25;
      v58 = &v59;
      v57 = v19;
      v55 = v20;
      v56 = v16;
      v60[3] = xpc_activity_add_eligibility_changed_handler();
    }

    v36 = v13;
    v30 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.MADownloadQueue" qosClass:qos_class_self()];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_524;
    block[3] = &unk_279DE30A0;
    v40 = v21;
    v31 = v25;
    v41 = v31;
    v42 = v37;
    v49 = a2;
    v43 = self;
    v44 = v38;
    v48 = &v59;
    v47 = v19;
    v45 = v20;
    v46 = v16;
    v32 = v37;
    dispatch_async(v30, block);
    v33 = v46;
    v34 = v31;

    v15 = v38;
    _Block_object_dispose(&v59, 8);
    v13 = v36;
  }

  else
  {
    v34 = 0;
  }

  _Block_object_dispose(&v68, 8);

  return v34;
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 namespaceNameForEncryptionKey];

  if (v9)
  {
    v10 = [v8 namespaceNameForEncryptionKey];
    v9 = [TRINamespaceKeyLocator keyDataForNamespace:v10 asymmetric:1];
  }

  v16 = 0;
  v11 = [*(a1 + 32) createAutoAssetWithId:v7 decryptionKey:v9 error:&v16];
  if (v11)
  {
    [*(a1 + 48) addObject:v11];
  }

  else
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v16;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to instantiate MAAutoAsset: %{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 56);
    v14 = [TRIMAProvider fetchRetryDateFromAttribution:*(a1 + 40) isDeferral:0];
    (*(v13 + 16))(v13, 3, 0, v14, v16);

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_520(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = MEMORY[0x277D85DD0];
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = v5[1];
  v13[1] = 3221225472;
  v13[2] = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_2;
  v13[3] = &unk_279DE2FB0;
  v14 = v3;
  v17 = v4;
  v7 = v5;
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v8;
  *&v11 = v7;
  *(&v11 + 1) = v9;
  v15 = v11;
  v16 = v10;
  v12 = v3;
  [v6 runWithLockAcquired:v13];
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3[9] == 1)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Asked to defer but the deferral handler has already been removed", &v12, 2u);
    }
  }

  else if (xpc_activity_should_defer(*(a1 + 32)))
  {
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      xpc_activity_remove_eligibility_changed_handler();
    }

    v3[9] = 1;
    v5 = *(a1 + 32);
    v6 = xpc_activity_copy_identifier();
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = v6;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling operation due to deferral of XPC activity: %{public}s", &v12, 0xCu);
    }

    free(v6);
    [*(a1 + 40) cancel];
    v3[8] = 1;
    v8 = *(a1 + 64);
    v9 = [TRIMAProvider fetchRetryDateFromAttribution:*(a1 + 48) isDeferral:1];
    (*(v8 + 16))(v8, 1, 1, v9, 0);

    v10 = *(a1 + 56);
    if (v10)
    {
      dispatch_group_leave(v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_524(uint64_t a1)
{
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__34;
  v23[4] = __Block_byref_object_dispose__34;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_525;
  v17[3] = &unk_279DE3050;
  v2 = (a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v22 = *(a1 + 104);
  *&v6 = v5;
  *(&v6 + 1) = *v2;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v18 = v7;
  v19 = v6;
  v20 = *(a1 + 64);
  v21 = v23;
  [v3 enumerateObjectsUsingBlock:v17];
  v8 = *(a1 + 40);
  v9 = v8[1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_536;
  v10[3] = &unk_279DE3078;
  v15 = *(a1 + 96);
  v16 = v23;
  v11 = v8;
  v14 = *(a1 + 88);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  [v9 runWithLockAcquired:v10];

  _Block_object_dispose(v23, 8);
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_525(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_2_526;
  v38[3] = &unk_279DDEE68;
  v40 = a3;
  v39 = *(a1 + 32);
  v8 = MEMORY[0x2743948D0](v38);
  if ([*(a1 + 40) isCanceled])
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Download thread terminated due to delayed handling of task teardown.", &buf, 2u);
    }

    v8[2](v8);
    *a4 = 1;
  }

  else
  {
    v10 = dispatch_semaphore_create(0);
    [*(a1 + 40) addSemaphore:v10];
    [*(a1 + 40) setCurrentAsset:v7];
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 assetSelector];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Requesting download/lock of MAAutoAsset: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__34;
    v48 = __Block_byref_object_dispose__34;
    v49 = 0;
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_528;
    v35[3] = &unk_279DE3000;
    v15 = *(a1 + 64);
    v37 = *(a1 + 80);
    v35[4] = v13;
    v36 = v15;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_533;
    v31 = &unk_279DE3028;
    v16 = *(a1 + 72);
    p_buf = &buf;
    v34 = v16;
    v17 = v10;
    v32 = v17;
    [v7 lockContent:@"transiently required by Trial" withUsagePolicy:v14 withTimeout:-1 reportingProgress:v35 completion:&v28];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if (*(*(&buf + 1) + 40))
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 assetSelector];
        v20 = *(*(&buf + 1) + 40);
        *v41 = 138543618;
        v42 = v19;
        v43 = 2114;
        v44 = v20;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Successfully locked MAAutoAsset: %{public}@ at path: %{public}@", v41, 0x16u);
      }
    }

    else
    {
      v21 = [*(a1 + 40) isCanceled];
      v22 = TRILogCategory_Server();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v23)
        {
          v24 = [v7 assetSelector];
          *v41 = 138543362;
          v42 = v24;
          _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Failed to lock MAAutoAsset: %{public}@: Download operation was cancelled.", v41, 0xCu);
        }
      }

      else if (v23)
      {
        v26 = [v7 assetSelector];
        v27 = *(*(*(a1 + 72) + 8) + 40);
        *v41 = 138543618;
        v42 = v26;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Failed to lock MAAutoAsset: %{public}@: %{public}@", v41, 0x16u);
      }

      v8[2](v8);
      *a4 = 1;
    }

    _Block_object_dispose(&buf, 8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_2_526(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v4 = [v3 endLockUsageSync:@"transiently required by Trial"];

      ++v2;
    }

    while (v2 < *(a1 + 40));
  }
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_528(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D73740]);
  v5 = [v3 assetSelector];
  v6 = [v5 assetType];
  v7 = [v3 assetSelector];
  v8 = [v7 assetSpecifier];
  v9 = [v3 assetSelector];
  v10 = [v9 assetVersion];

  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIMAProviding.m" lineNumber:613 description:{@"Expression was unexpectedly nil/false: %@", @"status.assetSelector.assetVersion"}];
  }

  v11 = [v4 initWithType:v6 specifier:v8 version:v10];

  v12 = [v3 downloadProgress];
  v13 = [v12 totalWrittenBytes];
  v14 = [v3 downloadProgress];
  v15 = v13 / [v14 totalExpectedBytes];

  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = v15;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Reporting progress: %f for assetId: %{public}@", buf, 0x16u);
  }

  [*(a1 + 40) setFractionCompleted:v11 forMAAsset:v15];
  v17 = *MEMORY[0x277D85DE8];
}

void __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_533(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  v9 = a6;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v15 = v8;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v14 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __79__TRIMAProvider_downloadAssets_attribution_aggregateProgress_group_completion___block_invoke_536(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((v3[8] & 1) == 0)
  {
    v10 = v3;
    if ((v3[9] & 1) == 0)
    {
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        xpc_activity_remove_eligibility_changed_handler();
        v4 = v10;
      }

      v4[9] = 1;
    }

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v5 = 1;
    }

    else if ([*(a1 + 32) isCanceled])
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    v6 = *(a1 + 56);
    v7 = [TRIMAProvider fetchRetryDateFromAttribution:*(a1 + 40) isDeferral:0];
    (*(v6 + 16))(v6, v5, 0, v7, *(*(*(a1 + 72) + 8) + 40));

    v8 = *(a1 + 48);
    if (v8)
    {
      dispatch_group_leave(v8);
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end