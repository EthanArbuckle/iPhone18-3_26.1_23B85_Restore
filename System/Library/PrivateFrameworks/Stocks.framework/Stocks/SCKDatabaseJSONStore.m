@interface SCKDatabaseJSONStore
+ (id)preferredFileURLForSchema:(id)a3 parentDirectoryURL:(id)a4;
- (BOOL)_reloadIfNeededFromFileURL:(id)a3;
- (BOOL)flushToDiskWithTimeout:(double)a3;
- (SCKDatabaseJSONStore)initWithSchema:(id)a3 fileURL:(id)a4 allowedCommands:(id)a5;
- (SCKDatabaseJSONStore)initWithSchema:(id)a3 parentDirectoryURL:(id)a4 allowedCommands:(id)a5;
- (id)_decodeCodableObjectOfClass:(Class)a3 from:(id)a4 error:(id *)a5;
- (id)_decodeCodableObjectOfClasses:(id)a3 from:(id)a4 error:(id *)a5;
- (id)_decodeDate:(id)a3;
- (id)_encodeCodableObject:(id)a3;
- (id)_encodeDate:(id)a3;
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

@implementation SCKDatabaseJSONStore

+ (id)preferredFileURLForSchema:(id)a3 parentDirectoryURL:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
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

- (SCKDatabaseJSONStore)initWithSchema:(id)a3 fileURL:(id)a4 allowedCommands:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v51.receiver = self;
  v51.super_class = SCKDatabaseJSONStore;
  v11 = [(SCKDatabaseJSONStore *)&v51 init];
  v12 = v11;
  if (v11)
  {
    v46 = v9;
    objc_storeStrong(&v11->_storeURL, a4);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    zoneStoresByName = v12->_zoneStoresByName;
    v12->_zoneStoresByName = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    foreignZoneDictsByName = v12->_foreignZoneDictsByName;
    v12->_foreignZoneDictsByName = v15;

    v17 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v12->_observers;
    v12->_observers = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("SCKDatabaseJSONStore.access", v19);
    accessQueue = v12->_accessQueue;
    v12->_accessQueue = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_BACKGROUND, 0);
    v24 = dispatch_queue_create("SCKDatabaseJSONStore.work", v23);
    workQueue = v12->_workQueue;
    v12->_workQueue = v24;

    v26 = [[SCKOperationThrottler alloc] initWithDelegate:v12 updateQueue:v12->_workQueue];
    saveThrottler = v12->_saveThrottler;
    v12->_saveThrottler = v26;

    v28 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:v12];
    fileCoordinator = v12->_fileCoordinator;
    v12->_fileCoordinator = v28;

    objc_storeStrong(&v12->_presentedItemURL, v12->_storeURL);
    v30 = objc_opt_new();
    presentedItemOperationQueue = v12->_presentedItemOperationQueue;
    v12->_presentedItemOperationQueue = v30;

    [(NSOperationQueue *)v12->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
    if ([v10 count])
    {
      [MEMORY[0x277CBEB98] setWithArray:v10];
    }

    else
    {
      [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    }
    v32 = ;
    allowedCommandClasses = v12->_allowedCommandClasses;
    v12->_allowedCommandClasses = v32;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v34 = [v8 zoneSchemas];
    v35 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v47 + 1) + 8 * i);
          v40 = [SCKZoneJSONStore alloc];
          v41 = [v39 zoneName];
          v42 = [(SCKZoneJSONStore *)v40 initWithZoneName:v41 serverRecords:0 lastSyncDate:0 lastDirtyDate:0 serverChangeToken:0 pendingCommands:0];

          v43 = [(SCKDatabaseJSONStore *)v12 zoneStoresByName];
          v44 = [v39 zoneName];
          [v43 setObject:v42 forKeyedSubscript:v44];
        }

        v36 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v36);
    }

    [(SCKDatabaseJSONStore *)v12 _listenForChangesToFileURL:v12->_storeURL];
    v9 = v46;
  }

  return v12;
}

- (SCKDatabaseJSONStore)initWithSchema:(id)a3 parentDirectoryURL:(id)a4 allowedCommands:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() preferredFileURLForSchema:v10 parentDirectoryURL:v9];

  v12 = [(SCKDatabaseJSONStore *)self initWithSchema:v10 fileURL:v11 allowedCommands:v8];
  return v12;
}

- (id)zoneStoreForSchema:(id)a3
{
  v4 = a3;
  v5 = [(SCKDatabaseJSONStore *)self zoneStoresByName];
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
  v5 = [(SCKDatabaseJSONStore *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke;
  block[3] = &unk_279D16480;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  dispatch_sync(v5, block);

  if ((v17[3] & 1) == 0)
  {
    v7 = [(SCKDatabaseJSONStore *)self fileCoordinator];
    v8 = [(SCKDatabaseJSONStore *)self storeURL];
    v12 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke_2;
    v10[3] = &unk_279D164D0;
    v10[4] = self;
    v11 = v6;
    [v7 coordinateReadingItemAtURL:v8 options:0 error:&v12 byAccessor:v10];
    v9 = v12;
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) loadedFromDisk];
  if (result)
  {
    result = (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke_3;
  block[3] = &unk_279D164A8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)writeWithAccessor:(id)a3
{
  v4 = a3;
  v5 = [(SCKDatabaseJSONStore *)self fileCoordinator];
  v6 = [(SCKDatabaseJSONStore *)self storeURL];
  v11 = v4;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SCKDatabaseJSONStore_writeWithAccessor___block_invoke;
  v10[3] = &unk_279D164D0;
  v10[4] = self;
  v7 = v4;
  [v5 coordinateReadingItemAtURL:v6 options:0 error:&v12 byAccessor:v10];
  v8 = v12;

  v9 = [(SCKDatabaseJSONStore *)self saveThrottler];
  [v9 tickle];
}

void __42__SCKDatabaseJSONStore_writeWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SCKDatabaseJSONStore_writeWithAccessor___block_invoke_2;
  block[3] = &unk_279D164A8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __42__SCKDatabaseJSONStore_writeWithAccessor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  result = [*(a1 + 32) havePendingChanges];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHavePendingChanges:1];
    v3 = MEMORY[0x277CCA9E8];
    v4 = *(a1 + 32);

    return [v3 addFilePresenter:v4];
  }

  return result;
}

- (void)reloadWithAccessor:(id)a3
{
  v4 = a3;
  v5 = [(SCKDatabaseJSONStore *)self fileCoordinator];
  v6 = [(SCKDatabaseJSONStore *)self storeURL];
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SCKDatabaseJSONStore_reloadWithAccessor___block_invoke;
  v9[3] = &unk_279D164D0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v5 coordinateReadingItemAtURL:v6 options:0 error:&v11 byAccessor:v9];
  v8 = v11;
}

void __43__SCKDatabaseJSONStore_reloadWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SCKDatabaseJSONStore_reloadWithAccessor___block_invoke_2;
  block[3] = &unk_279D164A8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __43__SCKDatabaseJSONStore_reloadWithAccessor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)readZone:(id)a3 withAccessor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SCKDatabaseJSONStore_readZone_withAccessor___block_invoke;
  v10[3] = &unk_279D164F8;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(SCKDatabaseJSONStore *)self readWithAccessor:v10];
}

void __46__SCKDatabaseJSONStore_readZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)writeZone:(id)a3 withAccessor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SCKDatabaseJSONStore_writeZone_withAccessor___block_invoke;
  v10[3] = &unk_279D164F8;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(SCKDatabaseJSONStore *)self writeWithAccessor:v10];
}

void __47__SCKDatabaseJSONStore_writeZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCKDatabaseJSONStore *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCKDatabaseJSONStore *)self observers];
  [v5 removeObject:v4];
}

- (void)operationThrottlerPerformOperation:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk", &v5, 0xCu);
  }

  v4 = [(SCKDatabaseJSONStore *)self storeURL];
  [(SCKDatabaseJSONStore *)self _saveIfNeededToFileURL:v4];
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk for another reader", &v6, 0xCu);
  }

  v5 = [(SCKDatabaseJSONStore *)self storeURL];
  [(SCKDatabaseJSONStore *)self _saveIfNeededToFileURL:v5];

  v4[2](v4, 0);
}

- (BOOL)flushToDiskWithTimeout:(double)a3
{
  v4 = [(SCKDatabaseJSONStore *)self storeURL];
  [(SCKDatabaseJSONStore *)self _saveIfNeededToFileURL:v4];

  return 1;
}

- (void)_saveToFileURL:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v6 = [(SCKDatabaseJSONStore *)self foreignZoneDictsByName];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v73;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v73 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 addObject:*(*(&v72 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v9);
  }

  v52 = v4;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v12 = [(SCKDatabaseJSONStore *)self zoneStoresByName];
  v13 = [v12 allValues];

  obj = v13;
  v56 = [v13 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v56)
  {
    v54 = *v69;
    v55 = v5;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v69 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v68 + 1) + 8 * j);
        v16 = [MEMORY[0x277CBEB18] array];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v17 = [v15 serverRecords];
        v18 = [v17 countByEnumeratingWithState:&v64 objects:v77 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v65;
          do
          {
            for (k = 0; k != v19; ++k)
            {
              if (*v65 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:*(*(&v64 + 1) + 8 * k)];
              [v16 addObject:v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v64 objects:v77 count:16];
          }

          while (v19);
        }

        v23 = [MEMORY[0x277CBEB18] array];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v24 = [v15 pendingCommands];
        v25 = [v24 countByEnumeratingWithState:&v60 objects:v76 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v61;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v61 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:*(*(&v60 + 1) + 8 * m)];
              [v23 addObject:v29];
            }

            v26 = [v24 countByEnumeratingWithState:&v60 objects:v76 count:16];
          }

          while (v26);
        }

        v30 = [MEMORY[0x277CBEB38] dictionary];
        v31 = [v15 zoneName];
        [v30 setObject:v31 forKeyedSubscript:@"name"];

        [v30 setObject:v16 forKeyedSubscript:@"serverRecords"];
        [v30 setObject:v23 forKeyedSubscript:@"pendingCommands"];
        v32 = [v15 lastSyncDate];
        v33 = [(SCKDatabaseJSONStore *)self _encodeDate:v32];
        [v30 setObject:v33 forKeyedSubscript:@"lastSyncDate"];

        v34 = [v15 lastDirtyDate];
        v35 = [(SCKDatabaseJSONStore *)self _encodeDate:v34];
        [v30 setObject:v35 forKeyedSubscript:@"lastDirtyDate"];

        v36 = [v15 serverChangeToken];
        v37 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:v36];
        [v30 setObject:v37 forKeyedSubscript:@"serverChangeToken"];

        v5 = v55;
        [v55 addObject:v30];
      }

      v56 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v56);
  }

  v38 = [MEMORY[0x277CBEB38] dictionary];
  v39 = [(SCKDatabaseJSONStore *)self lastSyncDate];
  v40 = [(SCKDatabaseJSONStore *)self _encodeDate:v39];
  [v38 setObject:v40 forKeyedSubscript:@"lastSyncDate"];

  v41 = [(SCKDatabaseJSONStore *)self lastDirtyDate];
  v42 = [(SCKDatabaseJSONStore *)self _encodeDate:v41];
  [v38 setObject:v42 forKeyedSubscript:@"lastDirtyDate"];

  v43 = [(SCKDatabaseJSONStore *)self serverChangeToken];
  v44 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:v43];
  [v38 setObject:v44 forKeyedSubscript:@"serverChangeToken"];

  [v38 setObject:v5 forKeyedSubscript:@"zones"];
  v45 = [MEMORY[0x277CBEB38] dictionary];
  [v45 setObject:v38 forKeyedSubscript:@"database"];
  v59 = 0;
  v46 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v45 options:0 error:&v59];
  v47 = v59;
  if (v46)
  {
    v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v46 encoding:4];
    v58 = v47;
    v49 = v52;
    v50 = [v48 writeToURL:v52 atomically:1 encoding:4 error:&v58];
    v51 = v58;

    if (v50)
    {
      value = arc4random_uniform(0xFFFFFFFE) + 1;
      setxattr([v52 fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
      [(SCKDatabaseJSONStore *)self setLastKnownStoreChangeTag:value];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SCKDatabaseJSONStore _saveToFileURL:];
    }
  }

  else
  {
    v49 = v52;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SCKDatabaseJSONStore _saveToFileURL:];
    }

    v51 = v47;
  }

  [(SCKDatabaseJSONStore *)self _applyCloudBackupEnabledPropertyToStoreURL];
  ++self->_diskWriteCount;
}

- (void)_applyCloudBackupEnabledPropertyToStoreURL
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = @"disable";
  v4 = 134218498;
  v5 = a1;
  v6 = 2114;
  if (a2)
  {
    v3 = @"enable";
  }

  v7 = v3;
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%p failed to %{public}@ cloud backup for JSON database store: %{public}@", &v4, 0x20u);
}

- (void)_saveIfNeededToFileURL:(id)a3
{
  v4 = [(SCKDatabaseJSONStore *)self fileCoordinator];
  v5 = [(SCKDatabaseJSONStore *)self storeURL];
  v7[4] = self;
  v8 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SCKDatabaseJSONStore__saveIfNeededToFileURL___block_invoke;
  v7[3] = &unk_279D16548;
  [v4 coordinateWritingItemAtURL:v5 options:4 error:&v8 byAccessor:v7];
  v6 = v8;
}

void __47__SCKDatabaseJSONStore__saveIfNeededToFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SCKDatabaseJSONStore__saveIfNeededToFileURL___block_invoke_2;
  v6[3] = &unk_279D16520;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
}

uint64_t __47__SCKDatabaseJSONStore__saveIfNeededToFileURL___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) havePendingChanges];
  if (result)
  {
    [*(a1 + 32) _saveToFileURL:*(a1 + 40)];
    [*(a1 + 32) setHavePendingChanges:0];
    v3 = MEMORY[0x277CCA9E8];
    v4 = *(a1 + 32);

    return [v3 removeFilePresenter:v4];
  }

  return result;
}

- (void)_loadFromFileURL:(id)a3
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v69 = [MEMORY[0x277CBEB38] dictionary];
  v62 = v4;
  v63 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v4 encoding:4 error:0];
  if (v63)
  {
    v5 = [v63 dataUsingEncoding:4];
    v91 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v91];
    v7 = v91;
    v8 = v7;
    if (v6)
    {
      v70 = v7;
      v72 = v5;
      v9 = [v6 objectForKeyedSubscript:@"database"];
      v10 = [v9 objectForKeyedSubscript:@"lastSyncDate"];
      v11 = [(SCKDatabaseJSONStore *)self _decodeDate:v10];
      lastSyncDate = self->_lastSyncDate;
      self->_lastSyncDate = v11;

      v13 = [v9 objectForKeyedSubscript:@"lastDirtyDate"];
      v14 = [(SCKDatabaseJSONStore *)self _decodeDate:v13];
      lastDirtyDate = self->_lastDirtyDate;
      self->_lastDirtyDate = v14;

      v16 = objc_opt_class();
      v17 = [v9 objectForKeyedSubscript:@"serverChangeToken"];
      v18 = [(SCKDatabaseJSONStore *)self _decodeCodableObjectOfClass:v16 from:v17 error:0];
      serverChangeToken = self->_serverChangeToken;
      self->_serverChangeToken = v18;

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v20 = [v9 objectForKeyedSubscript:@"zones"];
      v21 = [v20 countByEnumeratingWithState:&v87 objects:v99 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v88;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v88 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v87 + 1) + 8 * i);
            v26 = [v25 objectForKeyedSubscript:@"name"];
            [v69 setObject:v25 forKeyedSubscript:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v87 objects:v99 count:16];
        }

        while (v22);
      }

      v8 = v70;
      v5 = v72;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SCKDatabaseJSONStore _loadFromFileURL:];
    }
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [v69 allKeys];
  v66 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
  if (v66)
  {
    v27 = 0x277CBE000uLL;
    v65 = *v84;
    do
    {
      for (j = 0; j != v66; ++j)
      {
        if (*v84 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v83 + 1) + 8 * j);
        v30 = [v69 objectForKeyedSubscript:v29];
        v31 = [(SCKDatabaseJSONStore *)self zoneStoresByName];
        v32 = [v31 objectForKeyedSubscript:v29];

        if (v32)
        {
          v67 = v29;
          v68 = j;
          v33 = [*(v27 + 2840) array];
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v71 = v30;
          v34 = [v30 objectForKeyedSubscript:@"serverRecords"];
          v35 = [v34 countByEnumeratingWithState:&v79 objects:v93 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v80;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v80 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v79 + 1) + 8 * k);
                v40 = objc_opt_class();
                v78 = 0;
                v41 = [(SCKDatabaseJSONStore *)self _decodeCodableObjectOfClass:v40 from:v39 error:&v78];
                v42 = v78;
                if (v41)
                {
                  [v33 addObject:v41];
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v95 = self;
                  v96 = 2114;
                  v97 = v42;
                  _os_log_error_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%p failed to decode server record with error: %{public}@", buf, 0x16u);
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v79 objects:v93 count:16];
            }

            while (v36);
          }

          v43 = [*(v27 + 2840) array];
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v44 = [v71 objectForKeyedSubscript:@"pendingCommands"];
          v45 = [v44 countByEnumeratingWithState:&v74 objects:v92 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v75;
            do
            {
              for (m = 0; m != v46; ++m)
              {
                if (*v75 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v74 + 1) + 8 * m);
                v50 = [(SCKDatabaseJSONStore *)self allowedCommandClasses];
                v73 = 0;
                v51 = [(SCKDatabaseJSONStore *)self _decodeCodableObjectOfClasses:v50 from:v49 error:&v73];
                v52 = v73;

                if (v51)
                {
                  [v43 addObject:v51];
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v95 = self;
                  v96 = 2114;
                  v97 = v52;
                  _os_log_error_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%p failed to decode command with error: %{public}@", buf, 0x16u);
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v74 objects:v92 count:16];
            }

            while (v46);
          }

          v30 = v71;
          v53 = [v71 objectForKeyedSubscript:@"lastSyncDate"];
          v54 = [(SCKDatabaseJSONStore *)self _decodeDate:v53];

          v55 = [v71 objectForKeyedSubscript:@"lastDirtyDate"];
          v56 = [(SCKDatabaseJSONStore *)self _decodeDate:v55];

          v57 = objc_opt_class();
          v58 = [v71 objectForKeyedSubscript:@"serverChangeToken"];
          v59 = [(SCKDatabaseJSONStore *)self _decodeCodableObjectOfClass:v57 from:v58 error:0];

          v60 = [[SCKZoneJSONStore alloc] initWithZoneName:v67 serverRecords:v33 lastSyncDate:v54 lastDirtyDate:v56 serverChangeToken:v59 pendingCommands:v43];
          v61 = [(SCKDatabaseJSONStore *)self zoneStoresByName];
          [v61 setObject:v60 forKeyedSubscript:v67];

          v27 = 0x277CBE000;
          j = v68;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v95 = self;
            v96 = 2114;
            v97 = v29;
            _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%p preserving unknown zone %{public}@", buf, 0x16u);
          }

          v33 = [(SCKDatabaseJSONStore *)self foreignZoneDictsByName];
          [v33 setObject:v30 forKeyedSubscript:v29];
        }
      }

      v66 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
    }

    while (v66);
  }

  ++self->_diskReadCount;
}

- (BOOL)_reloadIfNeededFromFileURL:(id)a3
{
  v4 = a3;
  if ([v4 checkResourceIsReachableAndReturnError:0])
  {
    value = 0;
    getxattr([v4 fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
    v5 = value;
    v6 = [(SCKDatabaseJSONStore *)self lastKnownStoreChangeTag];
    v7 = v5 == v6;
    v8 = v5 != v6;
    if (!v7)
    {
      [(SCKDatabaseJSONStore *)self _loadFromFileURL:v4];
      [(SCKDatabaseJSONStore *)self setLastKnownStoreChangeTag:value];
    }
  }

  else
  {
    v8 = 0;
  }

  [(SCKDatabaseJSONStore *)self setLoadedFromDisk:1];

  return v8;
}

- (void)_listenForChangesToFileURL:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  v6 = [v5 stringByDeletingLastPathComponent];
  v7 = open([v6 fileSystemRepresentation], 0x8000);

  v8 = [(SCKDatabaseJSONStore *)self workQueue];
  v9 = dispatch_source_create(MEMORY[0x277D85D48], v7, 0xEuLL, v8);
  [(SCKDatabaseJSONStore *)self setChangeListenerSource:v9];

  v10 = [(SCKDatabaseJSONStore *)self changeListenerSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__SCKDatabaseJSONStore__listenForChangesToFileURL___block_invoke;
  handler[3] = &unk_279D16520;
  handler[4] = self;
  v17 = v4;
  v11 = v4;
  dispatch_source_set_event_handler(v10, handler);

  v12 = [(SCKDatabaseJSONStore *)self changeListenerSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__SCKDatabaseJSONStore__listenForChangesToFileURL___block_invoke_56;
  v14[3] = &__block_descriptor_36_e5_v8__0l;
  v15 = v7;
  dispatch_source_set_cancel_handler(v12, v14);

  v13 = [(SCKDatabaseJSONStore *)self changeListenerSource];
  dispatch_resume(v13);
}

void __51__SCKDatabaseJSONStore__listenForChangesToFileURL___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SCKDatabaseJSONStore__listenForChangesToFileURL___block_invoke_2;
  block[3] = &unk_279D16570;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v15 = v3;
  v16 = v4;
  v17 = &v18;
  dispatch_sync(v2, block);

  if (*(v19 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 134217984;
      v24 = v5;
      _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%p JSON store will notify of external changes from another writer", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [*(a1 + 32) observers];
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v22 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * v9++) storeCoordinatorDiscoveredExternalChanges:*(a1 + 32)];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v22 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __51__SCKDatabaseJSONStore__listenForChangesToFileURL___block_invoke_2(uint64_t a1)
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
  v3 = &stru_287C73C90;
  if (a3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
    v5 = [v4 base64EncodedStringWithOptions:0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_287C73C90;
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
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v7 options:0];
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v8 error:a5];
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
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v9 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_encodeDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 stringFromDate:v3];

  return v5;
}

- (id)_decodeDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 dateFromString:v3];

  return v5;
}

@end