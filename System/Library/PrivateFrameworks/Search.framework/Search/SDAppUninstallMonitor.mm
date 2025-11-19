@interface SDAppUninstallMonitor
+ (BOOL)_writePendingPurgesToDisk:(id)a3;
+ (id)_installedAppsBundleIDsListFilePath;
+ (id)_installedAppsListFromDisk;
+ (id)_pendingPurgesFilePath;
+ (id)_pendingPurgesFromDisk;
+ (id)_trackingInfoDir;
+ (id)applicationsExcludedFromUninstall;
+ (id)sharedInstance;
+ (void)_installedAppsListFromDisk;
+ (void)_pendingPurgesFromDisk;
+ (void)_writeAppsListToDisk:(id)a3;
- (SDAppUninstallMonitor)init;
- (id)_allInstalledApplicationsIdentifiers;
- (id)_deleteAllItemsForBundleID:(id)a3 reason:(int64_t)a4;
- (void)_deleteAllInteractionsForBundleID:(id)a3;
- (void)_deleteAllItemsForBundleIDs:(id)a3 reason:(int64_t)a4 completionBlock:(id)a5;
- (void)_deleteItemsForUninstalledAppsFromIndex;
- (void)_purgeWithProtectionClasses:(id)a3 completion:(id)a4;
- (void)registerHandlerWithEventMonitor:(id)a3;
- (void)unlock;
@end

@implementation SDAppUninstallMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SDAppUninstallMonitor sharedInstance];
  }

  v3 = sSDAppUninstallMonitor;

  return v3;
}

uint64_t __39__SDAppUninstallMonitor_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sSDAppUninstallMonitor;
  sSDAppUninstallMonitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)applicationsExcludedFromUninstall
{
  if (applicationsExcludedFromUninstall_onceToken != -1)
  {
    +[SDAppUninstallMonitor applicationsExcludedFromUninstall];
  }

  v3 = applicationsExcludedFromUninstall_sSet;

  return v3;
}

uint64_t __58__SDAppUninstallMonitor_applicationsExcludedFromUninstall__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F47DBDF8];
  v1 = applicationsExcludedFromUninstall_sSet;
  applicationsExcludedFromUninstall_sSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SDAppUninstallMonitor)init
{
  v12.receiver = self;
  v12.super_class = SDAppUninstallMonitor;
  v2 = [(SDAppUninstallMonitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    startupSemaphore = v2->_startupSemaphore;
    v2->_startupSemaphore = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.searchd.appUninstallMonitor", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_opt_new();
    pcsForPendingPurges = v2->_pcsForPendingPurges;
    v2->_pcsForPendingPurges = v9;
  }

  return v2;
}

- (void)unlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SDAppUninstallMonitor_unlock__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__SDAppUninstallMonitor_unlock__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v2, v3);
  v4 = *(a1 + 32);
  if (*(v4 + 16))
  {
    if (*(v4 + 17) == 1)
    {
      *(v4 + 17) = 0;
LABEL_9:
      [*(a1 + 32) _deleteItemsForUninstalledAppsFromIndex];
      goto LABEL_11;
    }

    if (!*(v4 + 32) && [*(v4 + 40) count])
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v4 + 16) = 1;
    v5 = [MEMORY[0x1E69D3DB0] sharedLockHandler];
    v6 = [v5 migrationComplete];

    *(*(a1 + 32) + 16) = 1;
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "";
      if (v6)
      {
        v8 = " (purge)";
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&dword_1C81BF000, v7, OS_LOG_TYPE_DEFAULT, "### Uninstall monitor unlock%s", &v10, 0xCu);
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerHandlerWithEventMonitor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SDAppUninstallMonitor registerHandlerWithEventMonitor:];
  }

  v5 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke;
  v7[3] = &unk_1E82F9040;
  v7[4] = self;
  v6 = MEMORY[0x1CCA71310](v7);
  [v5 registerHandler:v6 forEventName:@"com.apple.LaunchServices.applicationUnregistered"];
}

void __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_error_impl(&dword_1C81BF000, v11, OS_LOG_TYPE_ERROR, "Error in event monitor for name:%@, userInfo:%@, error:%@", buf, 0x20u);
    }
  }

  else
  {
    v12 = [v9 objectForKeyedSubscript:@"bundleIDs"];
    v13 = [v9 objectForKeyedSubscript:@"isPlaceholder"];
    [v13 BOOLValue];

    v14 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1C81BF000, v14, OS_LOG_TYPE_DEFAULT, "Received a notification for name:%@, userInfo:%@, bundleIDs:%@", buf, 0x20u);
    }

    SPBuildApplications(0);
    v15 = SPTransactionCreate(&unk_1F47DBE10);
    v16 = *(a1 + 32);
    v17 = *(v16 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_123;
    block[3] = &unk_1E82F9018;
    block[4] = v16;
    v21 = v12;
    v22 = v15;
    v18 = v15;
    v11 = v12;
    dispatch_async(v17, block);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_123(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_2;
  v6[3] = &unk_1E82F8FF0;
  v4 = v2;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 _deleteAllItemsForBundleIDs:v4 reason:1 completionBlock:v6];
}

void __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1C81BF000, v4, OS_LOG_TYPE_DEFAULT, "_deleteAllItemsForBundleIDs:%@", &v10, 0xCu);
  }

  v6 = [*(a1 + 40) _allInstalledApplicationsIdentifiers];
  if ([v3 count])
  {
    v7 = [v6 mutableCopy];
    [v7 addObjectsFromArray:v3];

    v6 = v7;
  }

  v8 = *(a1 + 40);
  [objc_opt_class() _writeAppsListToDisk:v6];
  SPTransactionDone(*(a1 + 48));

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_deleteItemsForUninstalledAppsFromIndex
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v3, OS_LOG_TYPE_DEFAULT, "_deleteItemsForUninstalledAppsFromIndex", buf, 2u);
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(SDAppUninstallMonitor *)self _allInstalledApplicationsIdentifiers];
  v6 = [v5 mutableCopy];

  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  if (gSPLogDebugAsDefault)
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&dword_1C81BF000, v8, v9, "installedApps: %@", buf, 0xCu);
  }

  if ([v6 count])
  {
    v10 = [objc_opt_class() _installedAppsBundleIDsListFilePath];
    if ([v4 fileExistsAtPath:v10])
    {
      v11 = [objc_opt_class() _installedAppsListFromDisk];
      v12 = SPLogForSPLogCategoryDefault();
      v13 = v12;
      if (gSPLogDebugAsDefault)
      {
        v14 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v14 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v12, v14))
      {
        *buf = 138412290;
        v31 = v11;
        _os_log_impl(&dword_1C81BF000, v13, v14, "previouslyInstalledApps: %@", buf, 0xCu);
      }

      if (v11)
      {
        v15 = [MEMORY[0x1E695DFA8] setWithArray:v11];
        v16 = [MEMORY[0x1E695DFD8] setWithArray:v6];
        [v15 minusSet:v16];

        v17 = SPLogForSPLogCategoryDefault();
        v18 = v17;
        if (gSPLogDebugAsDefault)
        {
          v19 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v19 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v17, v19))
        {
          *buf = 138412290;
          v31 = v15;
          _os_log_impl(&dword_1C81BF000, v18, v19, "uninstalledApps: %@", buf, 0xCu);
        }

        if ([v15 count])
        {
          v20 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v15 allObjects];
            *buf = 138412290;
            v31 = v21;
            _os_log_impl(&dword_1C81BF000, v20, OS_LOG_TYPE_DEFAULT, "_deleteItemsForUninstalledAppsFromIndex: %@", buf, 0xCu);
          }

          v22 = [v15 allObjects];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __64__SDAppUninstallMonitor__deleteItemsForUninstalledAppsFromIndex__block_invoke;
          v27[3] = &unk_1E82F8CE0;
          v28 = v6;
          v29 = self;
          [(SDAppUninstallMonitor *)self _deleteAllItemsForBundleIDs:v22 reason:2 completionBlock:v27];
        }
      }
    }

    else
    {
      v23 = SPLogForSPLogCategoryDefault();
      v24 = v23;
      if (gSPLogDebugAsDefault)
      {
        v25 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v25 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v23, v25))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&dword_1C81BF000, v24, v25, "Writing %@ to disk for the first time", buf, 0xCu);
      }

      [objc_opt_class() _writeAppsListToDisk:v6];
    }
  }

  else
  {
    v10 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C81BF000, v10, OS_LOG_TYPE_DEFAULT, "Skipping _deleteItemsForUninstalledAppsFromIndex; no installed apps", buf, 2u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __64__SDAppUninstallMonitor__deleteItemsForUninstalledAppsFromIndex__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }

  v3 = *(a1 + 40);
  [objc_opt_class() _writeAppsListToDisk:*(a1 + 32)];
}

- (id)_deleteAllItemsForBundleID:(id)a3 reason:(int64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v5;
    _os_log_impl(&dword_1C81BF000, v6, OS_LOG_TYPE_DEFAULT, "Deleting all items for bundleID:%@", buf, 0xCu);
  }

  v7 = [MEMORY[0x1E69D3DC0] allProtectionClasses];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v8 = objc_alloc_init(MEMORY[0x1E69D3DA8]);
  v9 = [MEMORY[0x1E69D3DC0] sharedInstance];
  [v8 setIndexer:v9];

  [v8 setClientBundleID:v5];
  [v8 setIsInternal:1];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = dispatch_group_create();
        dispatch_group_enter(v15);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke;
        v26[3] = &unk_1E82F9090;
        v16 = v5;
        v17 = v5;
        v27 = v17;
        v28 = v14;
        v29 = v25;
        v18 = v8;
        v30 = v18;
        v31 = v15;
        v19 = v15;
        v20 = v17;
        v5 = v16;
        [v18 deleteAllSearchableItemsWithBundleID:v20 protectionClass:v14 shouldGC:0 deleteAllReason:a4 completionHandler:v26];
        dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v25;
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1C81BF000, v5, OS_LOG_TYPE_DEFAULT, "Deleted all items for bundleID:%@, protectionClass:%@", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3 == 0];
  [*(a1 + 48) setObject:v8 forKeyedSubscript:*(a1 + 40)];

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131;
  v15[3] = &unk_1E82F9068;
  v12 = v10;
  v13 = *(a1 + 40);
  v16 = v12;
  v17 = v13;
  v18 = *(a1 + 64);
  [v9 deleteAllInteractionsWithBundleID:v12 protectionClass:v11 options:0 completionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131_cold_1(a1);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_deleteAllInteractionsForBundleID:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_1C81BF000, v5, OS_LOG_TYPE_DEFAULT, "Deleting all interactions for bundleID:%@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E69D3DC0] allProtectionClasses];
  v7 = objc_alloc_init(MEMORY[0x1E69D3DA8]);
  v8 = [MEMORY[0x1E69D3DC0] sharedInstance];
  [v7 setIndexer:v8];

  [v7 setClientBundleID:v4];
  [v7 setIsInternal:1];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = dispatch_group_create();
        dispatch_group_enter(v14);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __59__SDAppUninstallMonitor__deleteAllInteractionsForBundleID___block_invoke;
        v19[3] = &unk_1E82F9068;
        v15 = v4;
        v20 = v15;
        v21 = v13;
        v22 = v14;
        v16 = v14;
        [v7 deleteAllInteractionsWithBundleID:v15 protectionClass:v13 options:0 completionHandler:v19];
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __59__SDAppUninstallMonitor__deleteAllInteractionsForBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131_cold_1(a1);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_purgeWithProtectionClasses:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v14 = SPLogForSPLogCategoryIndex();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v13;
          _os_log_impl(&dword_1C81BF000, v14, OS_LOG_TYPE_DEFAULT, "Merging the index for dataclass:%@", buf, 0xCu);
        }

        v15 = [MEMORY[0x1E69D3DC0] sharedInstance];
        v33 = v13;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke;
        v26[3] = &unk_1E82F90B8;
        v26[4] = v13;
        v27 = v7;
        v28 = v8;
        [v15 mergeWithProtectionClasses:v16 completionHandler:v26];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v10);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke_138;
  block[3] = &unk_1E82F8F50;
  v24 = v7;
  v25 = v21;
  v18 = v7;
  v19 = v21;
  dispatch_group_notify(v8, queue, block);

  v20 = *MEMORY[0x1E69E9840];
}

void __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 BOOLValue];

  v5 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = "YES";
    }

    *buf = 138412546;
    v19 = v7;
    v20 = 2080;
    v21 = v6;
    _os_log_impl(&dword_1C81BF000, v5, OS_LOG_TYPE_DEFAULT, "Finished merging the index for dataclass:%@, merged:%s", buf, 0x16u);
  }

  [*(a1 + 40) setObject:MEMORY[0x1E695E110] forKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v8 = SPLogForSPLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1C81BF000, v8, OS_LOG_TYPE_DEFAULT, "Cleaning up the index for dataclass:%@", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E69D3DC0] sharedInstance];
    v17 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke_136;
    v14[3] = &unk_1E82F90B8;
    v12 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v12;
    v16 = *(a1 + 48);
    [v10 cleanupStringsWithProtectionClasses:v11 completionHandler:v14];
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke_136(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 BOOLValue];

  v5 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = "YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_1C81BF000, v5, OS_LOG_TYPE_DEFAULT, "Finished cleaning up strings for dataclass:%@, done:%s", &v10, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:*(a1 + 32)];

  dispatch_group_leave(*(a1 + 48));
  v9 = *MEMORY[0x1E69E9840];
}

+ (id)_pendingPurgesFilePath
{
  v2 = [@"PendingPurges" stringByAppendingString:@".plist"];
  v3 = [objc_opt_class() _trackingInfoDir];
  v4 = [v3 stringByAppendingPathComponent:v2];

  return v4;
}

+ (id)_pendingPurgesFromDisk
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [a1 _pendingPurgesFilePath];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v5 fileExistsAtPath:v4] & 1) == 0)
  {

    goto LABEL_24;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4];

  if (!v6)
  {
    goto LABEL_24;
  }

  v23 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v23];
  v18 = v23;
  if (!v7)
  {
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _pendingPurgesFromDisk];
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _pendingPurgesFromDisk];
    }

LABEL_12:
    v7 = 0;
  }

  v9 = [MEMORY[0x1E69D3DC0] allProtectionClasses];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 containsObject:v15])
        {
          [v3 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v12);
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)_writePendingPurgesToDisk:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [a1 _trackingInfoDir];
  v7 = [a1 _pendingPurgesFilePath];
  if ([v4 count])
  {
    if ([v5 fileExistsAtPath:v6])
    {
      v8 = 0;
      goto LABEL_6;
    }

    v24 = 0;
    v10 = [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v24];
    v11 = v24;
    v8 = v11;
    if (v10)
    {
LABEL_6:
      v12 = MEMORY[0x1E696AE40];
      v13 = [v4 allObjects];
      v23 = 0;
      v14 = [v12 dataWithPropertyList:v13 format:200 options:0 error:&v23];
      v15 = v23;

      if (v14)
      {
        v22 = v15;
        v16 = [v14 writeToFile:v7 options:1073741825 error:&v22];
        v8 = v22;

        if (v16)
        {
          v9 = 1;
LABEL_22:

          goto LABEL_23;
        }

        v17 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v26 = v14;
          v27 = 2112;
          v28 = v7;
          v29 = 2112;
          v30 = v8;
          _os_log_error_impl(&dword_1C81BF000, v17, OS_LOG_TYPE_ERROR, "Failed writing data %@ to path %@: %@", buf, 0x20u);
        }

        v15 = v8;
      }

      else
      {
        v17 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(SDAppUninstallMonitor *)v15 _writePendingPurgesToDisk:v17];
        }
      }

      v9 = 0;
      v8 = v15;
      goto LABEL_22;
    }

    v18 = [v11 domain];
    if ([v18 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v19 = [v8 code];

      if (v19 == 516)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v14 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _writePendingPurgesToDisk:];
    }

    v9 = 0;
    goto LABEL_22;
  }

  [v5 removeItemAtPath:v7 error:0];
  v9 = 1;
LABEL_23:

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_deleteAllItemsForBundleIDs:(id)a3 reason:(int64_t)a4 completionBlock:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v7 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v40 = v7;
  if (!v7)
  {
    [SDAppUninstallMonitor _deleteAllItemsForBundleIDs:reason:completionBlock:];
  }

  v47 = self;
  v8 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pcsForPendingPurges = self->_pcsForPendingPurges;
    *buf = 138412546;
    *&buf[4] = v45;
    *&buf[12] = 2112;
    *&buf[14] = pcsForPendingPurges;
    _os_log_impl(&dword_1C81BF000, v8, OS_LOG_TYPE_DEFAULT, "Deleting all the items for bundleIDs:%@, pcs:%@", buf, 0x16u);
  }

  v39 = SPTransactionCreate(&unk_1F47DBE28);
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = [objc_opt_class() applicationsExcludedFromUninstall];
  v46 = objc_opt_new();
  if (v45)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v45];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v12 = v11;
  [v11 minusSet:v10];
  SPRemoveAppsFromDisabledLists(v12);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v13)
  {
    v14 = *v57;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v56 + 1) + 8 * i);
        if ([v45 containsObject:v16])
        {
          v17 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v16;
            _os_log_impl(&dword_1C81BF000, v17, OS_LOG_TYPE_DEFAULT, "Special case bundleID:%@ since it's excluded from uninstall", buf, 0xCu);
          }

          [(SDAppUninstallMonitor *)self _deleteAllInteractionsForBundleID:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v13);
  }

  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v42 = v12;
  v18 = [v42 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v18)
  {
    v19 = *v53;
    v20 = MEMORY[0x1E69E9820];
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v42);
        }

        v22 = *(*(&v52 + 1) + 8 * j);
        v23 = [(SDAppUninstallMonitor *)v47 _deleteAllItemsForBundleID:v22 reason:a4];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v61) = 0;
        v49[0] = v20;
        v49[1] = 3221225472;
        v49[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke;
        v49[3] = &unk_1E82F90E0;
        v50 = v46;
        v51 = buf;
        [v23 enumerateKeysAndObjectsUsingBlock:v49];
        if (*(*&buf[8] + 24) == 1)
        {
          [v41 addObject:v22];
        }

        _Block_object_dispose(buf, 8);
      }

      v18 = [v42 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v18);
  }

  v24 = [v41 count] != 0;
  v25 = v47->_pcsForPendingPurges;
  v47->_hasFailedDeletes = v24;
  [v46 unionSet:v25];
  v26 = [objc_opt_class() _pendingPurgesFromDisk];
  [v46 unionSet:v26];
  objc_storeStrong(&v47->_pcsForPendingPurges, v46);
  v27 = (([v46 isEqualToSet:v26] & 1) != 0 || objc_msgSend(objc_opt_class(), "_writePendingPurgesToDisk:", v46)) && objc_msgSend(v46, "count") != 0;
  v28 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = "NO";
    v30 = v47->_pcsForPendingPurges;
    if (v47->_hasFailedDeletes)
    {
      v31 = "YES";
    }

    else
    {
      v31 = "NO";
    }

    *buf = 138413058;
    if (v27)
    {
      v29 = "YES";
    }

    *&buf[4] = v45;
    *&buf[12] = 2080;
    *&buf[14] = v31;
    *&buf[22] = 2080;
    v61 = v29;
    v62 = 2112;
    v63 = v30;
    _os_log_impl(&dword_1C81BF000, v28, OS_LOG_TYPE_DEFAULT, "Finished deleting all items for bundleIDs:%@, hasFailedDeletes:%s, purge:%s, pcs:%@", buf, 0x2Au);
  }

  if (v27)
  {
    v32 = dispatch_time(0, 10000000000);
    timer = v47->_timer;
    if (timer)
    {
      dispatch_source_set_timer(timer, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v47->_queue);
      v35 = v47->_timer;
      v47->_timer = v34;

      v36 = v47->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_153;
      handler[3] = &unk_1E82F8F28;
      handler[4] = v47;
      dispatch_source_set_event_handler(v36, handler);
      dispatch_source_set_timer(v47->_timer, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v47->_timer);
    }
  }

  v37 = [v41 allObjects];
  (v40)[2](v40, v37);

  SPTransactionDone(v39);
  v38 = *MEMORY[0x1E69E9840];
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_153(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  v3 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v2;
    _os_log_impl(&dword_1C81BF000, v3, OS_LOG_TYPE_DEFAULT, "Purging, pcs:%@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v2 allObjects];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_154;
  v9[3] = &unk_1E82F9130;
  v6 = *(a1 + 32);
  v10 = v2;
  v11 = v6;
  v7 = v2;
  [v4 _purgeWithProtectionClasses:v5 completion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_154(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_2;
  v11[3] = &unk_1E82F9108;
  v12 = *(a1 + 32);
  [a2 enumerateKeysAndObjectsUsingBlock:v11];
  v4 = *(a1 + 40);
  [objc_opt_class() _writePendingPurgesToDisk:*(a1 + 32)];
  objc_storeStrong((*(a1 + 40) + 40), *(a1 + 32));
  v5 = *(*(a1 + 40) + 32);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(a1 + 40);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;
  }

  v8 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1C81BF000, v8, OS_LOG_TYPE_DEFAULT, "Finished purging, pcs:%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) removeObject:v5];
  }
}

+ (id)_trackingInfoDir
{
  if (_trackingInfoDir_onceToken != -1)
  {
    +[SDAppUninstallMonitor _trackingInfoDir];
  }

  v3 = _trackingInfoDir_bundleInfoPath;

  return v3;
}

void __41__SDAppUninstallMonitor__trackingInfoDir__block_invoke()
{
  v2 = SPSpotlightSupportDirectoryPath();
  v0 = [v2 stringByAppendingPathComponent:@"BundleInfo"];
  v1 = _trackingInfoDir_bundleInfoPath;
  _trackingInfoDir_bundleInfoPath = v0;
}

+ (id)_installedAppsBundleIDsListFilePath
{
  v3 = [objc_opt_class() _trackingInfoDir];
  v4 = [a1 _filename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)_installedAppsListFromDisk
{
  v2 = [a1 _installedAppsBundleIDsListFilePath];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v3 fileExistsAtPath:v2] & 1) == 0)
  {

    goto LABEL_10;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v2];

  if (!v4)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v11];
  v6 = v11;
  if (!v5)
  {
    v5 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _installedAppsListFromDisk];
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _installedAppsListFromDisk];
    }

LABEL_16:
    v5 = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _sanitizePlistData(v5, v10);
  v8 = [v10 allObjects];

LABEL_11:

  return v8;
}

+ (void)_writeAppsListToDisk:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SPLogForSPLogCategoryDefault();
  v6 = v5;
  if (gSPLogDebugAsDefault)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_1C81BF000, v6, v7, "Will write %@ to disk", buf, 0xCu);
  }

  v8 = [a1 _trackingInfoDir];
  v9 = [a1 _installedAppsBundleIDsListFilePath];
  v27 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v27];
  v11 = v27;
  if (v10)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v12 fileExistsAtPath:v8];

    if (v13)
    {
      goto LABEL_10;
    }

    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = v11;
    v15 = [v14 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v26];
    v16 = v26;

    if (v15)
    {
LABEL_9:
      v11 = v16;
LABEL_10:
      v17 = v11;
      v25 = v11;
      v18 = [v10 writeToFile:v9 options:1 error:&v25];
      v11 = v25;

      v19 = SPLogForSPLogCategoryDefault();
      v20 = v19;
      if (v18)
      {
        if (gSPLogDebugAsDefault)
        {
          v21 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v21 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v19, v21))
        {
          *buf = 138412290;
          v29 = v4;
          _os_log_impl(&dword_1C81BF000, v20, v21, "Succesfully wrote %@ to disk", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v29 = v10;
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        v33 = v11;
        _os_log_error_impl(&dword_1C81BF000, v20, OS_LOG_TYPE_ERROR, "Error writing data %@ to path %@: %@", buf, 0x20u);
      }

      goto LABEL_27;
    }

    v22 = [v16 domain];
    if ([v22 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v23 = [v16 code];

      if (v23 == 516)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v20 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _writeAppsListToDisk:];
    }

    v11 = v16;
  }

  else
  {
    v20 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(SDAppUninstallMonitor *)v11 _writeAppsListToDisk:v20];
    }
  }

LABEL_27:

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_allInstalledApplicationsIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1C81BF000, v3, OS_LOG_TYPE_DEFAULT, "_allInstalledApplicationsIdentifiers", &v14, 2u);
  }

  v4 = SPFastApplicationsGet();
  v5 = MEMORY[0x1E695DFD8];
  v6 = [v4 allKeys];
  v7 = [v5 setWithArray:v6];
  allAppSet = self->_allAppSet;
  self->_allAppSet = v7;

  v9 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_allAppSet;
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_1C81BF000, v9, OS_LOG_TYPE_DEFAULT, "_allInstalledApplicationsIdentifiers: %@", &v14, 0xCu);
  }

  v11 = [(NSSet *)self->_allAppSet allObjects];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_pendingPurgesFromDisk
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_writePendingPurgesToDisk:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_writePendingPurgesToDisk:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = @"PendingPurges";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1C81BF000, a2, OS_LOG_TYPE_ERROR, "Failed serializing %@ property list, error:%@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_installedAppsListFromDisk
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_writeAppsListToDisk:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_writeAppsListToDisk:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C81BF000, a2, OS_LOG_TYPE_ERROR, "Error serializing installedAppsBundleIDs property list: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end