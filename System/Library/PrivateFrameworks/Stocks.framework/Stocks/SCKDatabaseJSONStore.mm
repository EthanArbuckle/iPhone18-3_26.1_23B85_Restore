@interface SCKDatabaseJSONStore
+ (id)preferredFileURLForSchema:(id)schema parentDirectoryURL:(id)l;
- (BOOL)_reloadIfNeededFromFileURL:(id)l;
- (BOOL)flushToDiskWithTimeout:(double)timeout;
- (SCKDatabaseJSONStore)initWithSchema:(id)schema fileURL:(id)l allowedCommands:(id)commands;
- (SCKDatabaseJSONStore)initWithSchema:(id)schema parentDirectoryURL:(id)l allowedCommands:(id)commands;
- (id)_decodeCodableObjectOfClass:(Class)class from:(id)from error:(id *)error;
- (id)_decodeCodableObjectOfClasses:(id)classes from:(id)from error:(id *)error;
- (id)_decodeDate:(id)date;
- (id)_encodeCodableObject:(id)object;
- (id)_encodeDate:(id)date;
- (id)zoneStoreForSchema:(id)schema;
- (void)_applyCloudBackupEnabledPropertyToStoreURL;
- (void)_listenForChangesToFileURL:(id)l;
- (void)_loadFromFileURL:(id)l;
- (void)_saveIfNeededToFileURL:(id)l;
- (void)_saveToFileURL:(id)l;
- (void)addObserver:(id)observer;
- (void)operationThrottlerPerformOperation:(id)operation;
- (void)readWithAccessor:(id)accessor;
- (void)readZone:(id)zone withAccessor:(id)accessor;
- (void)reloadWithAccessor:(id)accessor;
- (void)removeObserver:(id)observer;
- (void)savePresentedItemChangesWithCompletionHandler:(id)handler;
- (void)writeWithAccessor:(id)accessor;
- (void)writeZone:(id)zone withAccessor:(id)accessor;
@end

@implementation SCKDatabaseJSONStore

+ (id)preferredFileURLForSchema:(id)schema parentDirectoryURL:(id)l
{
  v5 = MEMORY[0x277CCACA8];
  lCopy = l;
  schemaCopy = schema;
  name = [schemaCopy name];
  environment = [schemaCopy environment];

  v10 = @"sandbox";
  if (environment == 1)
  {
    v10 = @"production";
  }

  v11 = [v5 stringWithFormat:@"%@-%@-dbstore.json", name, v10];

  v12 = [lCopy URLByAppendingPathComponent:v11];

  return v12;
}

- (SCKDatabaseJSONStore)initWithSchema:(id)schema fileURL:(id)l allowedCommands:(id)commands
{
  v53 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  lCopy = l;
  commandsCopy = commands;
  v51.receiver = self;
  v51.super_class = SCKDatabaseJSONStore;
  v11 = [(SCKDatabaseJSONStore *)&v51 init];
  v12 = v11;
  if (v11)
  {
    v46 = lCopy;
    objc_storeStrong(&v11->_storeURL, l);
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
    if ([commandsCopy count])
    {
      [MEMORY[0x277CBEB98] setWithArray:commandsCopy];
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
    zoneSchemas = [schemaCopy zoneSchemas];
    v35 = [zoneSchemas countByEnumeratingWithState:&v47 objects:v52 count:16];
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
            objc_enumerationMutation(zoneSchemas);
          }

          v39 = *(*(&v47 + 1) + 8 * i);
          v40 = [SCKZoneJSONStore alloc];
          zoneName = [v39 zoneName];
          v42 = [(SCKZoneJSONStore *)v40 initWithZoneName:zoneName serverRecords:0 lastSyncDate:0 lastDirtyDate:0 serverChangeToken:0 pendingCommands:0];

          zoneStoresByName = [(SCKDatabaseJSONStore *)v12 zoneStoresByName];
          zoneName2 = [v39 zoneName];
          [zoneStoresByName setObject:v42 forKeyedSubscript:zoneName2];
        }

        v36 = [zoneSchemas countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v36);
    }

    [(SCKDatabaseJSONStore *)v12 _listenForChangesToFileURL:v12->_storeURL];
    lCopy = v46;
  }

  return v12;
}

- (SCKDatabaseJSONStore)initWithSchema:(id)schema parentDirectoryURL:(id)l allowedCommands:(id)commands
{
  commandsCopy = commands;
  lCopy = l;
  schemaCopy = schema;
  v11 = [objc_opt_class() preferredFileURLForSchema:schemaCopy parentDirectoryURL:lCopy];

  v12 = [(SCKDatabaseJSONStore *)self initWithSchema:schemaCopy fileURL:v11 allowedCommands:commandsCopy];
  return v12;
}

- (id)zoneStoreForSchema:(id)schema
{
  schemaCopy = schema;
  zoneStoresByName = [(SCKDatabaseJSONStore *)self zoneStoresByName];
  zoneName = [schemaCopy zoneName];

  v7 = [zoneStoresByName objectForKeyedSubscript:zoneName];

  return v7;
}

- (void)readWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  accessQueue = [(SCKDatabaseJSONStore *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke;
  block[3] = &unk_279D16480;
  block[4] = self;
  v6 = accessorCopy;
  v14 = v6;
  v15 = &v16;
  dispatch_sync(accessQueue, block);

  if ((v17[3] & 1) == 0)
  {
    fileCoordinator = [(SCKDatabaseJSONStore *)self fileCoordinator];
    storeURL = [(SCKDatabaseJSONStore *)self storeURL];
    v12 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SCKDatabaseJSONStore_readWithAccessor___block_invoke_2;
    v10[3] = &unk_279D164D0;
    v10[4] = self;
    v11 = v6;
    [fileCoordinator coordinateReadingItemAtURL:storeURL options:0 error:&v12 byAccessor:v10];
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

- (void)writeWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  fileCoordinator = [(SCKDatabaseJSONStore *)self fileCoordinator];
  storeURL = [(SCKDatabaseJSONStore *)self storeURL];
  v11 = accessorCopy;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SCKDatabaseJSONStore_writeWithAccessor___block_invoke;
  v10[3] = &unk_279D164D0;
  v10[4] = self;
  v7 = accessorCopy;
  [fileCoordinator coordinateReadingItemAtURL:storeURL options:0 error:&v12 byAccessor:v10];
  v8 = v12;

  saveThrottler = [(SCKDatabaseJSONStore *)self saveThrottler];
  [saveThrottler tickle];
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

- (void)reloadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  fileCoordinator = [(SCKDatabaseJSONStore *)self fileCoordinator];
  storeURL = [(SCKDatabaseJSONStore *)self storeURL];
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SCKDatabaseJSONStore_reloadWithAccessor___block_invoke;
  v9[3] = &unk_279D164D0;
  v9[4] = self;
  v10 = accessorCopy;
  v7 = accessorCopy;
  [fileCoordinator coordinateReadingItemAtURL:storeURL options:0 error:&v11 byAccessor:v9];
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

- (void)readZone:(id)zone withAccessor:(id)accessor
{
  zoneCopy = zone;
  accessorCopy = accessor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SCKDatabaseJSONStore_readZone_withAccessor___block_invoke;
  v10[3] = &unk_279D164F8;
  v11 = zoneCopy;
  v12 = accessorCopy;
  v10[4] = self;
  v8 = zoneCopy;
  v9 = accessorCopy;
  [(SCKDatabaseJSONStore *)self readWithAccessor:v10];
}

void __46__SCKDatabaseJSONStore_readZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)writeZone:(id)zone withAccessor:(id)accessor
{
  zoneCopy = zone;
  accessorCopy = accessor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SCKDatabaseJSONStore_writeZone_withAccessor___block_invoke;
  v10[3] = &unk_279D164F8;
  v11 = zoneCopy;
  v12 = accessorCopy;
  v10[4] = self;
  v8 = zoneCopy;
  v9 = accessorCopy;
  [(SCKDatabaseJSONStore *)self writeWithAccessor:v10];
}

void __47__SCKDatabaseJSONStore_writeZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SCKDatabaseJSONStore *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SCKDatabaseJSONStore *)self observers];
  [observers removeObject:observerCopy];
}

- (void)operationThrottlerPerformOperation:(id)operation
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk", &v5, 0xCu);
  }

  storeURL = [(SCKDatabaseJSONStore *)self storeURL];
  [(SCKDatabaseJSONStore *)self _saveIfNeededToFileURL:storeURL];
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk for another reader", &v6, 0xCu);
  }

  storeURL = [(SCKDatabaseJSONStore *)self storeURL];
  [(SCKDatabaseJSONStore *)self _saveIfNeededToFileURL:storeURL];

  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)flushToDiskWithTimeout:(double)timeout
{
  storeURL = [(SCKDatabaseJSONStore *)self storeURL];
  [(SCKDatabaseJSONStore *)self _saveIfNeededToFileURL:storeURL];

  return 1;
}

- (void)_saveToFileURL:(id)l
{
  v80 = *MEMORY[0x277D85DE8];
  lCopy = l;
  array = [MEMORY[0x277CBEB18] array];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  foreignZoneDictsByName = [(SCKDatabaseJSONStore *)self foreignZoneDictsByName];
  allValues = [foreignZoneDictsByName allValues];

  v8 = [allValues countByEnumeratingWithState:&v72 objects:v79 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [array addObject:*(*(&v72 + 1) + 8 * i)];
      }

      v9 = [allValues countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v9);
  }

  v52 = lCopy;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  zoneStoresByName = [(SCKDatabaseJSONStore *)self zoneStoresByName];
  allValues2 = [zoneStoresByName allValues];

  obj = allValues2;
  v56 = [allValues2 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v56)
  {
    v54 = *v69;
    v55 = array;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v69 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v68 + 1) + 8 * j);
        array2 = [MEMORY[0x277CBEB18] array];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        serverRecords = [v15 serverRecords];
        v18 = [serverRecords countByEnumeratingWithState:&v64 objects:v77 count:16];
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
                objc_enumerationMutation(serverRecords);
              }

              v22 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:*(*(&v64 + 1) + 8 * k)];
              [array2 addObject:v22];
            }

            v19 = [serverRecords countByEnumeratingWithState:&v64 objects:v77 count:16];
          }

          while (v19);
        }

        array3 = [MEMORY[0x277CBEB18] array];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        pendingCommands = [v15 pendingCommands];
        v25 = [pendingCommands countByEnumeratingWithState:&v60 objects:v76 count:16];
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
                objc_enumerationMutation(pendingCommands);
              }

              v29 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:*(*(&v60 + 1) + 8 * m)];
              [array3 addObject:v29];
            }

            v26 = [pendingCommands countByEnumeratingWithState:&v60 objects:v76 count:16];
          }

          while (v26);
        }

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        zoneName = [v15 zoneName];
        [dictionary setObject:zoneName forKeyedSubscript:@"name"];

        [dictionary setObject:array2 forKeyedSubscript:@"serverRecords"];
        [dictionary setObject:array3 forKeyedSubscript:@"pendingCommands"];
        lastSyncDate = [v15 lastSyncDate];
        v33 = [(SCKDatabaseJSONStore *)self _encodeDate:lastSyncDate];
        [dictionary setObject:v33 forKeyedSubscript:@"lastSyncDate"];

        lastDirtyDate = [v15 lastDirtyDate];
        v35 = [(SCKDatabaseJSONStore *)self _encodeDate:lastDirtyDate];
        [dictionary setObject:v35 forKeyedSubscript:@"lastDirtyDate"];

        serverChangeToken = [v15 serverChangeToken];
        v37 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:serverChangeToken];
        [dictionary setObject:v37 forKeyedSubscript:@"serverChangeToken"];

        array = v55;
        [v55 addObject:dictionary];
      }

      v56 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v56);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  lastSyncDate2 = [(SCKDatabaseJSONStore *)self lastSyncDate];
  v40 = [(SCKDatabaseJSONStore *)self _encodeDate:lastSyncDate2];
  [dictionary2 setObject:v40 forKeyedSubscript:@"lastSyncDate"];

  lastDirtyDate2 = [(SCKDatabaseJSONStore *)self lastDirtyDate];
  v42 = [(SCKDatabaseJSONStore *)self _encodeDate:lastDirtyDate2];
  [dictionary2 setObject:v42 forKeyedSubscript:@"lastDirtyDate"];

  serverChangeToken2 = [(SCKDatabaseJSONStore *)self serverChangeToken];
  v44 = [(SCKDatabaseJSONStore *)self _encodeCodableObject:serverChangeToken2];
  [dictionary2 setObject:v44 forKeyedSubscript:@"serverChangeToken"];

  [dictionary2 setObject:array forKeyedSubscript:@"zones"];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary3 setObject:dictionary2 forKeyedSubscript:@"database"];
  v59 = 0;
  v46 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary3 options:0 error:&v59];
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
  selfCopy = self;
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

- (void)_saveIfNeededToFileURL:(id)l
{
  fileCoordinator = [(SCKDatabaseJSONStore *)self fileCoordinator];
  storeURL = [(SCKDatabaseJSONStore *)self storeURL];
  v7[4] = self;
  v8 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SCKDatabaseJSONStore__saveIfNeededToFileURL___block_invoke;
  v7[3] = &unk_279D16548;
  [fileCoordinator coordinateWritingItemAtURL:storeURL options:4 error:&v8 byAccessor:v7];
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

- (void)_loadFromFileURL:(id)l
{
  v100 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62 = lCopy;
  v63 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:lCopy encoding:4 error:0];
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
            [dictionary setObject:v25 forKeyedSubscript:v26];
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
  obj = [dictionary allKeys];
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
        v30 = [dictionary objectForKeyedSubscript:v29];
        zoneStoresByName = [(SCKDatabaseJSONStore *)self zoneStoresByName];
        v32 = [zoneStoresByName objectForKeyedSubscript:v29];

        if (v32)
        {
          v67 = v29;
          v68 = j;
          array = [*(v27 + 2840) array];
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
                  [array addObject:v41];
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  selfCopy3 = self;
                  v96 = 2114;
                  v97 = v42;
                  _os_log_error_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%p failed to decode server record with error: %{public}@", buf, 0x16u);
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v79 objects:v93 count:16];
            }

            while (v36);
          }

          array2 = [*(v27 + 2840) array];
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
                allowedCommandClasses = [(SCKDatabaseJSONStore *)self allowedCommandClasses];
                v73 = 0;
                v51 = [(SCKDatabaseJSONStore *)self _decodeCodableObjectOfClasses:allowedCommandClasses from:v49 error:&v73];
                v52 = v73;

                if (v51)
                {
                  [array2 addObject:v51];
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  selfCopy3 = self;
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

          v60 = [[SCKZoneJSONStore alloc] initWithZoneName:v67 serverRecords:array lastSyncDate:v54 lastDirtyDate:v56 serverChangeToken:v59 pendingCommands:array2];
          zoneStoresByName2 = [(SCKDatabaseJSONStore *)self zoneStoresByName];
          [zoneStoresByName2 setObject:v60 forKeyedSubscript:v67];

          v27 = 0x277CBE000;
          j = v68;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy3 = self;
            v96 = 2114;
            v97 = v29;
            _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%p preserving unknown zone %{public}@", buf, 0x16u);
          }

          array = [(SCKDatabaseJSONStore *)self foreignZoneDictsByName];
          [array setObject:v30 forKeyedSubscript:v29];
        }
      }

      v66 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
    }

    while (v66);
  }

  ++self->_diskReadCount;
}

- (BOOL)_reloadIfNeededFromFileURL:(id)l
{
  lCopy = l;
  if ([lCopy checkResourceIsReachableAndReturnError:0])
  {
    value = 0;
    getxattr([lCopy fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
    v5 = value;
    lastKnownStoreChangeTag = [(SCKDatabaseJSONStore *)self lastKnownStoreChangeTag];
    v7 = v5 == lastKnownStoreChangeTag;
    v8 = v5 != lastKnownStoreChangeTag;
    if (!v7)
    {
      [(SCKDatabaseJSONStore *)self _loadFromFileURL:lCopy];
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

- (void)_listenForChangesToFileURL:(id)l
{
  lCopy = l;
  path = [lCopy path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v7 = open([stringByDeletingLastPathComponent fileSystemRepresentation], 0x8000);

  workQueue = [(SCKDatabaseJSONStore *)self workQueue];
  v9 = dispatch_source_create(MEMORY[0x277D85D48], v7, 0xEuLL, workQueue);
  [(SCKDatabaseJSONStore *)self setChangeListenerSource:v9];

  changeListenerSource = [(SCKDatabaseJSONStore *)self changeListenerSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__SCKDatabaseJSONStore__listenForChangesToFileURL___block_invoke;
  handler[3] = &unk_279D16520;
  handler[4] = self;
  v17 = lCopy;
  v11 = lCopy;
  dispatch_source_set_event_handler(changeListenerSource, handler);

  changeListenerSource2 = [(SCKDatabaseJSONStore *)self changeListenerSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__SCKDatabaseJSONStore__listenForChangesToFileURL___block_invoke_56;
  v14[3] = &__block_descriptor_36_e5_v8__0l;
  v15 = v7;
  dispatch_source_set_cancel_handler(changeListenerSource2, v14);

  changeListenerSource3 = [(SCKDatabaseJSONStore *)self changeListenerSource];
  dispatch_resume(changeListenerSource3);
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

- (id)_encodeCodableObject:(id)object
{
  v3 = &stru_287C73C90;
  if (object)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v9];
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

- (id)_decodeCodableObjectOfClass:(Class)class from:(id)from error:(id *)error
{
  fromCopy = from;
  if ([fromCopy length])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:fromCopy options:0];
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:class fromData:v8 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_decodeCodableObjectOfClasses:(id)classes from:(id)from error:(id *)error
{
  classesCopy = classes;
  fromCopy = from;
  if ([fromCopy length])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:fromCopy options:0];
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:classesCopy fromData:v9 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_encodeDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [v4 stringFromDate:dateCopy];

  return v5;
}

- (id)_decodeDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [v4 dateFromString:dateCopy];

  return v5;
}

@end