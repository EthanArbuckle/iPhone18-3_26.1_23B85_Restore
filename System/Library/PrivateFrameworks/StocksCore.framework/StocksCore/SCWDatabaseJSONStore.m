@interface SCWDatabaseJSONStore
+ (id)preferredFileURLForSchema:(id)a3 parentDirectoryURL:(id)a4;
- (BOOL)_reloadIfNeededFromFileURL:(id)a3;
- (BOOL)flushToDiskWithTimeout:(double)a3;
- (SCWDatabaseJSONStore)initWithSchema:(id)a3 fileURL:(id)a4 allowedCommandClasses:(id)a5;
- (SCWDatabaseJSONStore)initWithSchema:(id)a3 parentDirectoryURL:(id)a4 allowedCommandClasses:(id)a5;
- (id)_decodeCodableObjectOfClass:(Class)a3 from:(id)a4 error:(id *)a5;
- (id)_decodeCodableObjectOfClasses:(id)a3 from:(id)a4 error:(id *)a5;
- (id)_encodeCodableObject:(id)a3;
- (id)zoneStoreForSchema:(id)a3;
- (void)_applyCloudBackupEnabledPropertyToStoreURL;
- (void)_listenForChangesToFileURL:(id)a3;
- (void)_loadFromFileURL:(id)a3;
- (void)_saveIfNeededToFileURL:(id)a3;
- (void)_saveToFileURL:(id)a3;
- (void)addObserver:(id)a3;
- (void)operationThrottlerPerformOperation:(id)a3;
- (void)readWithAccessor:(id)a3;
- (void)readZone:(id)a3 withAccessor:(id)a4;
- (void)reloadWithAccessor:(id)a3;
- (void)removeObserver:(id)a3;
- (void)savePresentedItemChangesWithCompletionHandler:(id)a3;
- (void)writeWithAccessor:(id)a3;
- (void)writeZone:(id)a3 withAccessor:(id)a4;
@end

@implementation SCWDatabaseJSONStore

- (void)_applyCloudBackupEnabledPropertyToStoreURL
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = @"disable";
  v5 = 134218498;
  v6 = a1;
  v7 = 2114;
  if (a2)
  {
    v3 = @"enable";
  }

  v8 = v3;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%p failed to %{public}@ cloud backup for JSON database store: %{public}@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)preferredFileURLForSchema:(id)a3 parentDirectoryURL:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [v7 name];
  v9 = [v7 environment];

  v10 = @"sandbox";
  if (v9 == 1)
  {
    v10 = @"production";
  }

  v11 = [v5 stringWithFormat:@"%@-%@-dbstore.json", v8, v10];

  v12 = [v6 URLByAppendingPathComponent:v11];

  return v12;
}

- (SCWDatabaseJSONStore)initWithSchema:(id)a3 fileURL:(id)a4 allowedCommandClasses:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v51.receiver = self;
  v51.super_class = SCWDatabaseJSONStore;
  v12 = [(SCWDatabaseJSONStore *)&v51 init];
  v13 = v12;
  if (v12)
  {
    v46 = v10;
    objc_storeStrong(&v12->_storeURL, a4);
    objc_storeStrong(&v13->_databaseSchema, a3);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zoneStoresByName = v13->_zoneStoresByName;
    v13->_zoneStoresByName = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    foreignZoneDictsByName = v13->_foreignZoneDictsByName;
    v13->_foreignZoneDictsByName = v16;

    v18 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v13->_observers;
    v13->_observers = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("SCWDatabaseJSONStore.access", v20);
    accessQueue = v13->_accessQueue;
    v13->_accessQueue = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_BACKGROUND, 0);
    v25 = dispatch_queue_create("SCWDatabaseJSONStore.work", v24);
    workQueue = v13->_workQueue;
    v13->_workQueue = v25;

    v27 = [[SCWOperationThrottler alloc] initWithDelegate:v13 updateQueue:v13->_workQueue];
    saveThrottler = v13->_saveThrottler;
    v13->_saveThrottler = v27;

    v29 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:v13];
    fileCoordinator = v13->_fileCoordinator;
    v13->_fileCoordinator = v29;

    objc_storeStrong(&v13->_presentedItemURL, v13->_storeURL);
    v31 = objc_opt_new();
    presentedItemOperationQueue = v13->_presentedItemOperationQueue;
    v13->_presentedItemOperationQueue = v31;

    [(NSOperationQueue *)v13->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
    if ([v11 count])
    {
      [MEMORY[0x1E695DFD8] setWithArray:v11];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    }
    v33 = ;
    allowedCommandClasses = v13->_allowedCommandClasses;
    v13->_allowedCommandClasses = v33;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35 = [v9 zoneSchemas];
    v36 = [v35 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v48;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v47 + 1) + 8 * i);
          v41 = [[SCWZoneJSONStore alloc] initWithZoneSchema:v40 serverRecords:0 lastSyncDate:0 lastDirtyDate:0 serverChangeToken:0 pendingCommands:0];
          v42 = [(SCWDatabaseJSONStore *)v13 zoneStoresByName];
          v43 = [v40 zoneName];
          [v42 setObject:v41 forKeyedSubscript:v43];
        }

        v37 = [v35 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v37);
    }

    [(SCWDatabaseJSONStore *)v13 _listenForChangesToFileURL:v13->_storeURL];
    v10 = v46;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v13;
}

- (SCWDatabaseJSONStore)initWithSchema:(id)a3 parentDirectoryURL:(id)a4 allowedCommandClasses:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() preferredFileURLForSchema:v10 parentDirectoryURL:v9];

  v12 = [(SCWDatabaseJSONStore *)self initWithSchema:v10 fileURL:v11 allowedCommandClasses:v8];
  return v12;
}

- (id)zoneStoreForSchema:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabaseJSONStore *)self zoneStoresByName];
  v6 = [v4 zoneName];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)readWithAccessor:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(SCWDatabaseJSONStore *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke;
  block[3] = &unk_1E85E33A8;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  dispatch_sync(v5, block);

  if ((v17[3] & 1) == 0)
  {
    v7 = [(SCWDatabaseJSONStore *)self fileCoordinator];
    v8 = [(SCWDatabaseJSONStore *)self storeURL];
    v12 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_2;
    v10[3] = &unk_1E85E33F8;
    v10[4] = self;
    v11 = v6;
    [v7 coordinateReadingItemAtURL:v8 options:0 error:&v12 byAccessor:v10];
    v9 = v12;
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) loadedFromDisk];
  if (result)
  {
    v3 = *(a1 + 32);
    result = (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_3;
  block[3] = &unk_1E85E33D0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)writeWithAccessor:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabaseJSONStore *)self fileCoordinator];
  v6 = [(SCWDatabaseJSONStore *)self storeURL];
  v11 = v4;
  v12 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke;
  v10[3] = &unk_1E85E33F8;
  v10[4] = self;
  v7 = v4;
  [v5 coordinateReadingItemAtURL:v6 options:0 error:&v12 byAccessor:v10];
  v8 = v12;

  v9 = [(SCWDatabaseJSONStore *)self saveThrottler];
  [v9 tickle];
}

void __42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke_2;
  block[3] = &unk_1E85E33D0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  result = [*(a1 + 32) havePendingChanges];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHavePendingChanges:1];
    v4 = MEMORY[0x1E696ABF8];
    v5 = *(a1 + 32);

    return [v4 addFilePresenter:v5];
  }

  return result;
}

- (void)reloadWithAccessor:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabaseJSONStore *)self fileCoordinator];
  v6 = [(SCWDatabaseJSONStore *)self storeURL];
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke;
  v9[3] = &unk_1E85E33F8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v5 coordinateReadingItemAtURL:v6 options:0 error:&v11 byAccessor:v9];
  v8 = v11;
}

void __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke_2;
  block[3] = &unk_1E85E33D0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)readZone:(id)a3 withAccessor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__SCWDatabaseJSONStore_readZone_withAccessor___block_invoke;
  v10[3] = &unk_1E85E3420;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(SCWDatabaseJSONStore *)self readWithAccessor:v10];
}

void __46__SCWDatabaseJSONStore_readZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)writeZone:(id)a3 withAccessor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SCWDatabaseJSONStore_writeZone_withAccessor___block_invoke;
  v10[3] = &unk_1E85E3420;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(SCWDatabaseJSONStore *)self writeWithAccessor:v10];
}

void __47__SCWDatabaseJSONStore_writeZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabaseJSONStore *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabaseJSONStore *)self observers];
  [v5 removeObject:v4];
}

- (void)operationThrottlerPerformOperation:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk", &v6, 0xCu);
  }

  v4 = [(SCWDatabaseJSONStore *)self storeURL];
  [(SCWDatabaseJSONStore *)self _saveIfNeededToFileURL:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk for another reader", &v7, 0xCu);
  }

  v5 = [(SCWDatabaseJSONStore *)self storeURL];
  [(SCWDatabaseJSONStore *)self _saveIfNeededToFileURL:v5];

  v4[2](v4, 0);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)flushToDiskWithTimeout:(double)a3
{
  v4 = [(SCWDatabaseJSONStore *)self storeURL];
  [(SCWDatabaseJSONStore *)self _saveIfNeededToFileURL:v4];

  return 1;
}

- (void)_saveToFileURL:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v60 = objc_opt_new();
  v4 = [MEMORY[0x1E695DF70] array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v5 = [(SCWDatabaseJSONStore *)self foreignZoneDictsByName];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v78;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v78 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 addObject:*(*(&v77 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v8);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v11 = [(SCWDatabaseJSONStore *)self zoneStoresByName];
  v12 = [v11 allValues];

  obj = v12;
  v61 = [v12 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v61)
  {
    v58 = *v74;
    v59 = v4;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v74 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v73 + 1) + 8 * j);
        v15 = [MEMORY[0x1E695DF70] array];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v16 = [v14 serverRecords];
        v17 = [v16 countByEnumeratingWithState:&v69 objects:v82 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v70;
          do
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v70 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:*(*(&v69 + 1) + 8 * k)];
              [v15 addObject:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v69 objects:v82 count:16];
          }

          while (v18);
        }

        v22 = [MEMORY[0x1E695DF70] array];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v23 = [v14 pendingCommands];
        v24 = [v23 countByEnumeratingWithState:&v65 objects:v81 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v66;
          do
          {
            for (m = 0; m != v25; ++m)
            {
              if (*v66 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:*(*(&v65 + 1) + 8 * m)];
              [v22 addObject:v28];
            }

            v25 = [v23 countByEnumeratingWithState:&v65 objects:v81 count:16];
          }

          while (v25);
        }

        v29 = [MEMORY[0x1E695DF90] dictionary];
        v30 = [v14 zoneSchema];
        v31 = [v30 zoneName];
        [v29 setObject:v31 forKeyedSubscript:@"name"];

        [v29 setObject:v15 forKeyedSubscript:@"serverRecords"];
        [v29 setObject:v22 forKeyedSubscript:@"pendingCommands"];
        v32 = [v14 lastSyncDate];
        v33 = [v60 stringFromDate:v32];
        [v29 setObject:v33 forKeyedSubscript:@"lastSyncDate"];

        v34 = [v14 lastDirtyDate];
        v35 = [v60 stringFromDate:v34];
        [v29 setObject:v35 forKeyedSubscript:@"lastDirtyDate"];

        v36 = [v14 serverChangeToken];
        v37 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:v36];
        [v29 setObject:v37 forKeyedSubscript:@"serverChangeToken"];

        v38 = MEMORY[0x1E696AD98];
        v39 = [v14 zoneSchema];
        v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "version")}];
        [v29 setObject:v40 forKeyedSubscript:@"schemaVersion"];

        v4 = v59;
        [v59 addObject:v29];
      }

      v61 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v61);
  }

  v41 = [MEMORY[0x1E695DF90] dictionary];
  v42 = [(SCWDatabaseJSONStore *)self lastSyncDate];
  v43 = [v60 stringFromDate:v42];
  [v41 setObject:v43 forKeyedSubscript:@"lastSyncDate"];

  v44 = [(SCWDatabaseJSONStore *)self lastDirtyDate];
  v45 = [v60 stringFromDate:v44];
  [v41 setObject:v45 forKeyedSubscript:@"lastDirtyDate"];

  v46 = [(SCWDatabaseJSONStore *)self serverChangeToken];
  v47 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:v46];
  [v41 setObject:v47 forKeyedSubscript:@"serverChangeToken"];

  [v41 setObject:v4 forKeyedSubscript:@"zones"];
  v48 = [MEMORY[0x1E695DF90] dictionary];
  [v48 setObject:v41 forKeyedSubscript:@"database"];
  v64 = 0;
  v49 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v48 options:0 error:&v64];
  v50 = v64;
  if (v49)
  {
    v51 = v4;
    v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v49 encoding:4];
    v63 = v50;
    v53 = [v52 writeToURL:v56 atomically:1 encoding:4 error:&v63];
    v54 = v63;

    if (v53)
    {
      value = arc4random_uniform(0xFFFFFFFE) + 1;
      setxattr([v56 fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
      [(SCWDatabaseJSONStore *)self setLastKnownStoreChangeTag:value];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SCWDatabaseJSONStore _saveToFileURL:];
    }

    v4 = v51;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SCWDatabaseJSONStore _saveToFileURL:];
    }

    v54 = v50;
  }

  [(SCWDatabaseJSONStore *)self _applyCloudBackupEnabledPropertyToStoreURL];
  ++self->_diskWriteCount;

  v55 = *MEMORY[0x1E69E9840];
}

- (void)_saveIfNeededToFileURL:(id)a3
{
  v4 = [(SCWDatabaseJSONStore *)self fileCoordinator];
  v5 = [(SCWDatabaseJSONStore *)self storeURL];
  v7[4] = self;
  v8 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke;
  v7[3] = &unk_1E85E3470;
  [v4 coordinateWritingItemAtURL:v5 options:4 error:&v8 byAccessor:v7];
  v6 = v8;
}

void __47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke_2;
  v6[3] = &unk_1E85E3448;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
}

uint64_t __47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) havePendingChanges];
  if (result)
  {
    [*(a1 + 32) _saveToFileURL:*(a1 + 40)];
    [*(a1 + 32) setHavePendingChanges:0];
    v3 = MEMORY[0x1E696ABF8];
    v4 = *(a1 + 32);

    return [v3 removeFilePresenter:v4];
  }

  return result;
}

- (void)_loadFromFileURL:(id)a3
{
  v115 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v79 = [MEMORY[0x1E695DF90] dictionary];
  v73 = objc_opt_new();
  v69 = v4;
  v70 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v4 encoding:4 error:0];
  if (v70)
  {
    v5 = [v70 dataUsingEncoding:4];
    v102 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v102];
    v7 = v102;
    v8 = v7;
    if (v6)
    {
      v81 = v7;
      v83 = v5;
      v9 = [v6 objectForKeyedSubscript:@"database"];
      v10 = [v9 objectForKeyedSubscript:@"lastSyncDate"];
      v11 = [v73 dateFromString:v10];
      lastSyncDate = self->_lastSyncDate;
      self->_lastSyncDate = v11;

      v13 = [v9 objectForKeyedSubscript:@"lastDirtyDate"];
      v14 = [v73 dateFromString:v13];
      lastDirtyDate = self->_lastDirtyDate;
      self->_lastDirtyDate = v14;

      v16 = objc_opt_class();
      v17 = [v9 objectForKeyedSubscript:@"serverChangeToken"];
      v18 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClass:v16 from:v17 error:0];
      serverChangeToken = self->_serverChangeToken;
      self->_serverChangeToken = v18;

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v20 = [v9 objectForKeyedSubscript:@"zones"];
      v21 = [v20 countByEnumeratingWithState:&v98 objects:v114 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v99;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v99 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v98 + 1) + 8 * i);
            v26 = [v25 objectForKeyedSubscript:@"name"];
            [v79 setObject:v25 forKeyedSubscript:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v98 objects:v114 count:16];
        }

        while (v22);
      }

      v8 = v81;
      v5 = v83;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SCWDatabaseJSONStore _loadFromFileURL:];
    }
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [v79 allKeys];
  v75 = [obj countByEnumeratingWithState:&v94 objects:v113 count:16];
  if (v75)
  {
    v74 = *v95;
    v27 = 0x1E695D000uLL;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v95 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v94 + 1) + 8 * j);
        v30 = [v79 objectForKeyedSubscript:v29];
        v31 = [(SCWDatabaseJSONStore *)self zoneStoresByName];
        v82 = v29;
        v32 = [v31 objectForKeyedSubscript:v29];

        if (v32)
        {
          v78 = j;
          v33 = [*(v27 + 3952) array];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v80 = v30;
          v34 = [v30 objectForKeyedSubscript:@"serverRecords"];
          v35 = [v34 countByEnumeratingWithState:&v90 objects:v112 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v91;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v91 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v90 + 1) + 8 * k);
                v40 = objc_opt_class();
                v89 = 0;
                v41 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClass:v40 from:v39 error:&v89];
                v42 = v89;
                if (v41)
                {
                  [v33 addObject:v41];
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v104 = self;
                  v105 = 2114;
                  v106 = v42;
                  _os_log_error_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%p failed to decode server record with error: %{public}@", buf, 0x16u);
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v90 objects:v112 count:16];
            }

            while (v36);
          }

          v43 = [*(v27 + 3952) array];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v44 = [v80 objectForKeyedSubscript:@"pendingCommands"];
          v45 = [v44 countByEnumeratingWithState:&v85 objects:v111 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v86;
            do
            {
              for (m = 0; m != v46; ++m)
              {
                if (*v86 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v85 + 1) + 8 * m);
                v50 = [(SCWDatabaseJSONStore *)self allowedCommandClasses];
                v84 = 0;
                v51 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClasses:v50 from:v49 error:&v84];
                v52 = v84;

                if (v51)
                {
                  [v43 addObject:v51];
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v104 = self;
                  v105 = 2114;
                  v106 = v52;
                  _os_log_error_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%p failed to decode command with error: %{public}@", buf, 0x16u);
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v85 objects:v111 count:16];
            }

            while (v46);
          }

          v53 = [v80 objectForKeyedSubscript:@"lastSyncDate"];
          v77 = [v73 dateFromString:v53];

          v54 = [v80 objectForKeyedSubscript:@"lastDirtyDate"];
          v55 = [v73 dateFromString:v54];

          v56 = objc_opt_class();
          v57 = [v80 objectForKeyedSubscript:@"serverChangeToken"];
          v58 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClass:v56 from:v57 error:0];

          v59 = [v80 objectForKeyedSubscript:@"schemaVersion"];
          v60 = [(SCWDatabaseJSONStore *)self databaseSchema];
          v61 = [v60 schemaForZoneName:v82];

          v62 = [v61 version];
          v76 = v59;
          if (v62 <= [v59 unsignedIntegerValue])
          {
            v65 = v77;
            j = v78;
          }

          else
          {
            j = v78;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v63 = [v61 zoneName];
              v71 = [v59 unsignedIntegerValue];
              v64 = [v61 version];
              *buf = 134218754;
              v104 = self;
              v105 = 2114;
              v106 = v63;
              v107 = 2048;
              v108 = v71;
              v109 = 2048;
              v110 = v64;
              _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p discarding sync state for zone %{public}@ due to version mismatch, persisted=%lu, current=%lu", buf, 0x2Au);
            }

            v55 = 0;
            v58 = 0;
            v65 = 0;
          }

          v66 = [[SCWZoneJSONStore alloc] initWithZoneSchema:v61 serverRecords:v33 lastSyncDate:v65 lastDirtyDate:v55 serverChangeToken:v58 pendingCommands:v43];
          v67 = [(SCWDatabaseJSONStore *)self zoneStoresByName];
          [v67 setObject:v66 forKeyedSubscript:v82];

          v27 = 0x1E695D000;
          v30 = v80;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v104 = self;
            v105 = 2114;
            v106 = v82;
            _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p preserving unknown zone %{public}@", buf, 0x16u);
          }

          v33 = [(SCWDatabaseJSONStore *)self foreignZoneDictsByName];
          [v33 setObject:v30 forKeyedSubscript:v82];
        }
      }

      v75 = [obj countByEnumeratingWithState:&v94 objects:v113 count:16];
    }

    while (v75);
  }

  ++self->_diskReadCount;
  v68 = *MEMORY[0x1E69E9840];
}

- (BOOL)_reloadIfNeededFromFileURL:(id)a3
{
  v4 = a3;
  if ([v4 checkResourceIsReachableAndReturnError:0])
  {
    value = 0;
    getxattr([v4 fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
    v5 = value;
    v6 = [(SCWDatabaseJSONStore *)self lastKnownStoreChangeTag];
    v7 = v5 == v6;
    v8 = v5 != v6;
    if (!v7)
    {
      [(SCWDatabaseJSONStore *)self _loadFromFileURL:v4];
      [(SCWDatabaseJSONStore *)self setLastKnownStoreChangeTag:value];
    }
  }

  else
  {
    v8 = 0;
  }

  [(SCWDatabaseJSONStore *)self setLoadedFromDisk:1];

  return v8;
}

- (void)_listenForChangesToFileURL:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  v6 = [v5 stringByDeletingLastPathComponent];
  v7 = open([v6 fileSystemRepresentation], 0x8000);

  v8 = [(SCWDatabaseJSONStore *)self workQueue];
  v9 = dispatch_source_create(MEMORY[0x1E69E9728], v7, 0xEuLL, v8);
  [(SCWDatabaseJSONStore *)self setChangeListenerSource:v9];

  v10 = [(SCWDatabaseJSONStore *)self changeListenerSource];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke;
  handler[3] = &unk_1E85E3448;
  handler[4] = self;
  v17 = v4;
  v11 = v4;
  dispatch_source_set_event_handler(v10, handler);

  v12 = [(SCWDatabaseJSONStore *)self changeListenerSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke_60;
  v14[3] = &__block_descriptor_36_e5_v8__0l;
  v15 = v7;
  dispatch_source_set_cancel_handler(v12, v14);

  v13 = [(SCWDatabaseJSONStore *)self changeListenerSource];
  dispatch_resume(v13);
}

void __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v2 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke_2;
  block[3] = &unk_1E85E3498;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v16 = v3;
  v17 = v4;
  v18 = &v19;
  dispatch_sync(v2, block);

  if (*(v20 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 134217984;
      v25 = v5;
      _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p JSON store will notify of external changes from another writer", buf, 0xCu);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [*(a1 + 32) observers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v23 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v9++) storeCoordinatorDiscoveredExternalChanges:*(a1 + 32)];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v23 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(&v19, 8);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke_2(uint64_t a1)
{
  value = 0;
  getxattr([*(a1 + 32) fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
  v2 = value;
  result = [*(a1 + 40) lastKnownStoreChangeTag];
  *(*(*(a1 + 48) + 8) + 24) = v2 != result;
  return result;
}

- (id)_encodeCodableObject:(id)a3
{
  v3 = &stru_1F5693E68;
  if (a3)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
    v5 = [v4 base64EncodedStringWithOptions:0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_1F5693E68;
    }

    v3 = v7;
  }

  return v3;
}

- (id)_decodeCodableObjectOfClass:(Class)a3 from:(id)a4 error:(id *)a5
{
  v7 = a4;
  if ([v7 length])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a3 fromData:v8 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_decodeCodableObjectOfClasses:(id)a3 from:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 length])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:v9 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_saveToFileURL:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v0, "%p failed to write database JSON to disk with error: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_saveToFileURL:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v0, "%p failed to generate database JSON with error: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadFromFileURL:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v0, "%p failed to decode database JSON with error: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

@end