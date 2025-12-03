@interface QLThumbnailAdditionIndex
+ (id)sharedInstance;
+ (void)registerCleanupXPCActivity;
+ (void)setUpCleanupXPCActivitySynchronously:(BOOL)synchronously;
- (BOOL)addThumbnailForURL:(id)l lastHitDate:(id)date size:(unint64_t)size;
- (BOOL)addThumbnailForURL:(id)l size:(unint64_t)size;
- (BOOL)dispatchSyncOnDatabaseQueue:(id)queue;
- (BOOL)hasThumbnailForURL:(id)l updateLastHitDate:(BOOL)date andSize:(unint64_t)size;
- (BOOL)open;
- (BOOL)removeDatabaseAtURL:(id)l error:(id *)error;
- (BOOL)removeThumbnailForURL:(id)l;
- (BOOL)updateFileSize:(unint64_t)size ofThumbnailForURL:(id)l;
- (BOOL)updateLastHitDate:(id)date ofThumbnailForURL:(id)l;
- (QLThumbnailAdditionIndex)init;
- (QLThumbnailAdditionIndex)initWithURL:(id)l;
- (id)allEntries;
- (id)batchOfEntriesStartingAt:(unint64_t)at endingAt:(unint64_t *)endingAt;
- (id)entriesEnumerator;
- (id)initForTesting;
- (id)makeDatabaseAtURL:(id)l error:(id *)error;
- (id)openDatabaseAtURL:(id)l error:(id *)error;
- (id)upgradeDatabaseIfNeeded:(id)needed error:(id *)error;
- (id)volumeRestrictionForMountPoint:(id)point;
- (id)whereClauseForURL:(id)l;
- (int)deviceForHomeDirectory;
- (int64_t)purgeOnMountPoint:(id)point withUrgency:(int)urgency beforeDate:(id)date;
- (int64_t)purgeableSpaceOnMountPoint:(id)point withUrgency:(int)urgency beforeDate:(id)date;
- (void)_cleanUpAfterClose;
- (void)_closeDatabaseOnItsQueue:(id)queue;
- (void)_resetDatabaseOnItsQueue:(id)queue;
- (void)addThumbnailForURLWrapper:(id)wrapper size:(unint64_t)size completion:(id)completion;
- (void)cleanUpBatchOfEntries:(id)entries;
- (void)close;
- (void)enumerateCacheEntriesWithHandler:(id)handler;
- (void)flush;
- (void)logError:(id)error onDB:(id)b statement:(id)statement;
- (void)open;
- (void)performDatabaseMaintenance;
- (void)removeAllAdditions;
- (void)removeEntriesFromDatabase:(id)database;
- (void)removeThumbnailForURL:(id)l completion:(id)completion;
- (void)retrieveAllAdditions:(id)additions;
- (void)setUpDatabase:(id)database;
- (void)updateFileSize:(unint64_t)size ofThumbnailForURL:(id)l completion:(id)completion;
- (void)updateLastHitDate:(id)date ofThumbnailForURL:(id)l completion:(id)completion;
@end

@implementation QLThumbnailAdditionIndex

+ (void)registerCleanupXPCActivity
{
  v2 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__QLThumbnailAdditionIndex_registerCleanupXPCActivity__block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = self;
  xpc_activity_register("com.apple.quicklook.cloudThumbnailDatabaseCleanup", v2, handler);
}

void __54__QLThumbnailAdditionIndex_registerCleanupXPCActivity__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2)
  {
    v3 = [*(a1 + 32) sharedInstance];
    [v3 performDatabaseMaintenance];
  }
}

+ (void)setUpCleanupXPCActivitySynchronously:(BOOL)synchronously
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__QLThumbnailAdditionIndex_setUpCleanupXPCActivitySynchronously___block_invoke;
  v3[3] = &__block_descriptor_41_e5_v8__0l;
  synchronouslyCopy = synchronously;
  v3[4] = self;
  if (setUpCleanupXPCActivitySynchronously__once != -1)
  {
    dispatch_once(&setUpCleanupXPCActivitySynchronously__once, v3);
  }
}

void __65__QLThumbnailAdditionIndex_setUpCleanupXPCActivitySynchronously___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);

    [v2 registerCleanupXPCActivity];
  }

  else
  {
    v3 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__QLThumbnailAdditionIndex_setUpCleanupXPCActivitySynchronously___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__QLThumbnailAdditionIndex_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once_0 != -1)
  {
    dispatch_once(&sharedInstance_once_0, block);
  }

  v2 = sSharedInstance;

  return v2;
}

uint64_t __42__QLThumbnailAdditionIndex_sharedInstance__block_invoke(uint64_t result)
{
  if (!sSharedInstance)
  {
    v1 = result;
    v2 = objc_alloc_init(*(result + 32));
    v3 = sSharedInstance;
    sSharedInstance = v2;

    v4 = *(v1 + 32);

    return [v4 setUpCleanupXPCActivitySynchronously:0];
  }

  return result;
}

- (QLThumbnailAdditionIndex)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = QLThumbnailAdditionIndex;
  v6 = [(QLThumbnailAdditionIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v7->_exitsOnCorruption = 1;
  }

  return v7;
}

- (BOOL)open
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_db)
  {
    v3 = _log_2();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [QLThumbnailAdditionIndex open];
    }
  }

  else
  {
    url = selfCopy->_url;
    v7 = 0;
    v5 = [(QLThumbnailAdditionIndex *)selfCopy openDatabaseAtURL:url error:&v7];
    v3 = v7;
    if (v5)
    {
      objc_storeStrong(&selfCopy->_db, v5);
    }
  }

  objc_sync_exit(selfCopy);
  return 1;
}

- (void)_cleanUpAfterClose
{
  dbWatcher = self->_dbWatcher;
  if (dbWatcher)
  {
    dispatch_source_cancel(dbWatcher);
    v4 = self->_dbWatcher;
    self->_dbWatcher = 0;
  }
}

- (void)_closeDatabaseOnItsQueue:(id)queue
{
  queueCopy = queue;
  v9 = 0;
  v5 = [(PQLConnection *)queueCopy close:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = _log_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex _closeDatabaseOnItsQueue:];
    }
  }

  db = self->_db;
  if (db == queueCopy)
  {
    self->_db = 0;
  }
}

- (BOOL)dispatchSyncOnDatabaseQueue:(id)queue
{
  queueCopy = queue;
  v5 = self->_db;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  serialQueue = [(PQLConnection *)v5 serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [(PQLConnection *)v5 serialQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__QLThumbnailAdditionIndex_dispatchSyncOnDatabaseQueue___block_invoke;
    v10[3] = &unk_279ADDC38;
    v11 = v5;
    selfCopy = self;
    v14 = &v15;
    v13 = queueCopy;
    dispatch_sync(serialQueue2, v10);

    v8 = *(v16 + 24);
  }

  else
  {
    queueCopy[2](queueCopy);
    v8 = 1;
  }

  _Block_object_dispose(&v15, 8);

  return v8 & 1;
}

void *__56__QLThumbnailAdditionIndex_dispatchSyncOnDatabaseQueue___block_invoke(void *result)
{
  if (result[4] == *(result[5] + 16))
  {
    return (*(result[6] + 16))();
  }

  *(*(result[7] + 8) + 24) = 0;
  return result;
}

- (void)close
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__QLThumbnailAdditionIndex_close__block_invoke;
  v3[3] = &unk_279ADD0F8;
  v3[4] = self;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v3];
  [(QLThumbnailAdditionIndex *)self _cleanUpAfterClose];
}

void __33__QLThumbnailAdditionIndex_close__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 db];
  [v1 _closeDatabaseOnItsQueue:v2];
}

- (void)flush
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__QLThumbnailAdditionIndex_flush__block_invoke;
  v2[3] = &unk_279ADD0F8;
  v2[4] = self;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v2];
}

void __33__QLThumbnailAdditionIndex_flush__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) db];
  [v1 flush];
}

- (void)setUpDatabase:(id)database
{
  databaseCopy = database;
  [databaseCopy useSerialQueue];
  serialQueue = [databaseCopy serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke;
  block[3] = &unk_279ADD0F8;
  v6 = databaseCopy;
  v23 = v6;
  dispatch_sync(serialQueue, block);

  dbWatcher = self->_dbWatcher;
  if (dbWatcher)
  {
    dispatch_source_cancel(dbWatcher);
    v8 = self->_dbWatcher;
    self->_dbWatcher = 0;
  }

  v9 = [v6 url];
  fileSystemRepresentation = [v9 fileSystemRepresentation];

  LODWORD(v9) = open(fileSystemRepresentation, 32772);
  v11 = dispatch_source_create(MEMORY[0x277D85D48], v9, 1uLL, 0);
  v12 = self->_dbWatcher;
  self->_dbWatcher = v11;

  objc_initWeak(&location, self);
  v13 = self->_dbWatcher;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke_2;
  handler[3] = &unk_279ADDC60;
  objc_copyWeak(&v20, &location);
  v19 = v6;
  v14 = v6;
  dispatch_source_set_event_handler(v13, handler);
  v15 = self->_dbWatcher;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke_2_6;
  v16[3] = &__block_descriptor_36_e5_v8__0l;
  v17 = v9;
  dispatch_source_set_cancel_handler(v15, v16);
  dispatch_resume(self->_dbWatcher);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke_2(uint64_t a1)
{
  v2 = _log_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke_5;
  v4[3] = &unk_279ADDC60;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  [WeakRetained dispatchSyncOnDatabaseQueue:v4];

  objc_destroyWeak(&v6);
}

void __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resetDatabaseOnItsQueue:*(a1 + 32)];
}

- (id)upgradeDatabaseIfNeeded:(id)needed error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v6 = _log_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [QLThumbnailAdditionIndex upgradeDatabaseIfNeeded:error:];
  }

  userVersion = [neededCopy userVersion];
  v29 = userVersion;
  if (userVersion)
  {
    unsignedIntValue = [userVersion unsignedIntValue];
    if (unsignedIntValue <= 2)
    {
      *&v9 = 67109376;
      v28 = v9;
      do
      {
        v19 = _log_2();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = v28;
          if (unsignedIntValue)
          {
            v25 = unsignedIntValue + 1;
          }

          else
          {
            v25 = 0;
          }

          *&buf[4] = unsignedIntValue;
          LOWORD(v37) = 1024;
          *(&v37 + 2) = v25;
          _os_log_debug_impl(&dword_2615D3000, v19, OS_LOG_TYPE_DEBUG, "migrating database from version %d to %d", buf, 0xEu);
        }

        *buf = 0;
        v37 = buf;
        v38 = 0x3032000000;
        v39 = __Block_byref_object_copy__3;
        v40 = __Block_byref_object_dispose__3;
        v41 = 0;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __58__QLThumbnailAdditionIndex_upgradeDatabaseIfNeeded_error___block_invoke;
        v30[3] = &unk_279ADDCA8;
        v31 = unsignedIntValue;
        v30[4] = buf;
        v11 = [neededCopy performWithFlags:10 action:v30];
        if (error)
        {
          v20 = *(v37 + 5);
          if (v20)
          {
            *error = v20;
          }
        }

        userVersion2 = [neededCopy userVersion];
        v22 = unsignedIntValue + 1 == [userVersion2 unsignedIntValue];

        if (!v22)
        {
          v23 = _log_2();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            userVersion3 = [neededCopy userVersion];
            unsignedIntValue2 = [userVersion3 unsignedIntValue];
            *v32 = v28;
            v33 = unsignedIntValue2;
            v34 = 1024;
            v35 = unsignedIntValue + 1;
            _os_log_error_impl(&dword_2615D3000, v23, OS_LOG_TYPE_ERROR, "database is at version %u instead of %d", v32, 0xEu);
          }
        }

        _Block_object_dispose(buf, 8);

        if (unsignedIntValue < 2)
        {
          v24 = v11;
        }

        else
        {
          v24 = 0;
        }

        ++unsignedIntValue;
      }

      while ((v24 & 1) != 0);
    }

    else
    {
      v10 = _log_2();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [QLThumbnailAdditionIndex upgradeDatabaseIfNeeded:error:];
      }

      v11 = 1;
    }

    userVersion4 = [neededCopy userVersion];
    unsignedIntValue3 = [userVersion4 unsignedIntValue];
    v14 = v11 ^ 1;
    if (unsignedIntValue3 > 2)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      [QLThumbnailAdditionIndex upgradeDatabaseIfNeeded:error:];
    }

    if ((v11 & 1) == 0)
    {
      [neededCopy close:0];

      neededCopy = 0;
    }

    neededCopy = neededCopy;
    v15 = neededCopy;
  }

  else
  {
    if (error)
    {
      *error = [neededCopy lastError];
    }

    v16 = _log_2();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex upgradeDatabaseIfNeeded:neededCopy error:?];
    }

    [neededCopy close:0];
    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __58__QLThumbnailAdditionIndex_upgradeDatabaseIfNeeded_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 40);
  v3 = upgradeDatabaseIfNeeded_error__migration_functions[*(a1 + 40)];
  v4 = a1 + 32;
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = (v3)(a2, &obj);
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0)
  {
    v7 = _log_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__QLThumbnailAdditionIndex_upgradeDatabaseIfNeeded_error___block_invoke_cold_1(v2, v4);
    }
  }

  return v6;
}

- (void)logError:(id)error onDB:(id)b statement:(id)statement
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  bCopy = b;
  statementCopy = statement;
  v10 = _log_2();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (statementCopy)
  {
    if (v11)
    {
      v13 = 138412802;
      v14 = statementCopy;
      v15 = 2112;
      v16 = bCopy;
      v17 = 2112;
      v18 = errorCopy;
      _os_log_error_impl(&dword_2615D3000, v10, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error [%@]", &v13, 0x20u);
    }
  }

  else if (v11)
  {
    [QLThumbnailAdditionIndex logError:onDB:statement:];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)makeDatabaseAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = _log_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [QLThumbnailAdditionIndex makeDatabaseAtURL:error:];
  }

  if ([lCopy checkResourceIsReachableAndReturnError:0])
  {
LABEL_7:
    uRLByDeletingLastPathComponent = objc_alloc_init(MEMORY[0x277D82C00]);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __52__QLThumbnailAdditionIndex_makeDatabaseAtURL_error___block_invoke;
    v19[3] = &unk_279ADDCD0;
    v19[4] = self;
    v19[5] = v20;
    [uRLByDeletingLastPathComponent setSqliteErrorHandler:v19];
    [uRLByDeletingLastPathComponent setLabel:@"Quick Look cloud thumbnails cache"];
    if (([uRLByDeletingLastPathComponent openAtURL:lCopy sharedCache:0 error:error] & 1) == 0)
    {
      v12 = _log_2();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex makeDatabaseAtURL:error:];
      }

      goto LABEL_18;
    }

    if ([uRLByDeletingLastPathComponent setupPragmas])
    {
      [uRLByDeletingLastPathComponent setSynchronousMode:1];
      lastError = [uRLByDeletingLastPathComponent lastError];

      if (!lastError)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __52__QLThumbnailAdditionIndex_makeDatabaseAtURL_error___block_invoke_15;
        v18[3] = &unk_279ADDCF8;
        v18[4] = self;
        [uRLByDeletingLastPathComponent setSqliteErrorHandler:v18];
        v17 = _log_2();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [QLThumbnailAdditionIndex makeDatabaseAtURL:error:];
        }

        v14 = uRLByDeletingLastPathComponent;
        goto LABEL_19;
      }

      if (!error)
      {
LABEL_18:
        [uRLByDeletingLastPathComponent close:0];
        v14 = 0;
LABEL_19:
        _Block_object_dispose(v20, 8);
        goto LABEL_20;
      }
    }

    else
    {
      lastError2 = [uRLByDeletingLastPathComponent lastError];

      if (!error || !lastError2)
      {
        goto LABEL_18;
      }
    }

    *error = [uRLByDeletingLastPathComponent lastError];
    goto LABEL_18;
  }

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  if ([uRLByDeletingLastPathComponent checkResourceIsReachableAndReturnError:0] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", uRLByDeletingLastPathComponent, 0, 0, error), v9, (v10))
  {

    goto LABEL_7;
  }

  v16 = _log_2();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [QLThumbnailAdditionIndex makeDatabaseAtURL:error:];
  }

  v14 = 0;
LABEL_20:

  return v14;
}

void __52__QLThumbnailAdditionIndex_makeDatabaseAtURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  [v7 logError:v8 onDB:a2 statement:a3];
  v9 = [v8 code];

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (BOOL)removeDatabaseAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CBEBC0];
  lCopy = l;
  path = [lCopy path];
  v8 = [path stringByAppendingString:@"-wal"];
  v9 = [v5 fileURLWithPath:v8];

  v10 = MEMORY[0x277CBEBC0];
  path2 = [lCopy path];
  v12 = [path2 stringByAppendingString:@"-shm"];
  v13 = [v10 fileURLWithPath:v12];

  v14 = MEMORY[0x277CBEBC0];
  path3 = [lCopy path];
  v16 = [path3 stringByAppendingString:@"-journal"];
  v17 = [v14 fileURLWithPath:v16];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [defaultManager removeItemAtURL:lCopy error:error];

  if (v19)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 removeItemAtURL:v9 error:0];

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtURL:v13 error:0];

    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager4 removeItemAtURL:v17 error:0];
  }

  return v19;
}

- (id)openDatabaseAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v30 = 0;
  v7 = [(QLThumbnailAdditionIndex *)self makeDatabaseAtURL:lCopy error:&v30];
  v8 = v30;
  if (v7)
  {
    goto LABEL_15;
  }

  v9 = _log_2();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [QLThumbnailAdditionIndex openDatabaseAtURL:error:];
  }

  code = [v8 code];
  if (code > 0x1A || ((1 << code) & 0x5000800) == 0)
  {
    goto LABEL_27;
  }

  v12 = _log_2();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [QLThumbnailAdditionIndex openDatabaseAtURL:error:];
  }

  v29 = v8;
  v13 = [(QLThumbnailAdditionIndex *)self removeDatabaseAtURL:lCopy error:&v29];
  v14 = v29;

  if (!v13)
  {
    v15 = _log_2();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex openDatabaseAtURL:error:];
    }
  }

  v28 = v14;
  v7 = [(QLThumbnailAdditionIndex *)self makeDatabaseAtURL:lCopy error:&v28];
  v8 = v28;

  if (v7)
  {
LABEL_15:
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke;
    v25[3] = &unk_279ADDD20;
    objc_copyWeak(&v26, &location);
    [v7 setAutoRollbackHandler:v25];
    v24 = v8;
    v16 = [(QLThumbnailAdditionIndex *)self upgradeDatabaseIfNeeded:v7 error:&v24];
    v17 = v24;

    if (v16)
    {
      v18 = _log_2();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [QLThumbnailAdditionIndex openDatabaseAtURL:error:];
      }

      [(QLThumbnailAdditionIndex *)self setUpDatabase:v16];
      v19 = v16;
    }

    else
    {
      v20 = _log_2();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex openDatabaseAtURL:error:];
      }

      if (error)
      {
        v21 = v17;
        *error = v17;
      }
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_27:
    v17 = v8;
    if (error)
    {
      v23 = v8;
      v16 = 0;
      *error = v8;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

void __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v9 domain];
    v13 = [v12 isEqualToString:*MEMORY[0x277D82C20]];

    if (v13)
    {
      if ([v9 code] == 13)
      {
        v14 = _log_2();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke_cold_2();
        }

        if (v11[32] == 1)
        {
          exit(1);
        }

        goto LABEL_13;
      }

      if ([v9 code] == 11)
      {
        v15 = _log_2();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke_cold_1();
        }

        [v11 _neuterAutoRollbackHandler];
        v16 = [v7 serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke_26;
        block[3] = &unk_279ADD200;
        v18 = v7;
        v19 = v11;
        dispatch_async(v16, block);

        goto LABEL_13;
      }
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Sqlite rollbacked transaction [%@] because of unrecoverable error [%@], aborting.", v8, v9}];
LABEL_13:
  }
}

uint64_t __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke_26(uint64_t a1)
{
  [*(a1 + 32) flush];
  result = [*(a1 + 40) _resetDatabaseOnItsQueue:*(a1 + 32)];
  if (*(*(a1 + 40) + 32) == 1)
  {
    exit(1);
  }

  return result;
}

void __54__QLThumbnailAdditionIndex__neuterAutoRollbackHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = _log_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __54__QLThumbnailAdditionIndex__neuterAutoRollbackHandler__block_invoke_cold_1();
  }
}

- (void)_resetDatabaseOnItsQueue:(id)queue
{
  v19 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _log_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [QLThumbnailAdditionIndex _resetDatabaseOnItsQueue:];
  }

  [queueCopy dbHandle];
  v7 = _sqlite3_db_truncate();
  if (v7)
  {
    v8 = _log_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      url = selfCopy->_url;
      v13 = 138412802;
      v14 = url;
      v15 = 1024;
      v16 = v7;
      v17 = 2080;
      v18 = sqlite3_errmsg([queueCopy dbHandle]);
      _os_log_error_impl(&dword_2615D3000, v8, OS_LOG_TYPE_ERROR, "Failed to truncate database at %@: %d (%s)", &v13, 0x1Cu);
    }
  }

  [(QLThumbnailAdditionIndex *)selfCopy _neuterAutoRollbackHandler];
  [(QLThumbnailAdditionIndex *)selfCopy _closeDatabaseOnItsQueue:queueCopy];
  [(QLThumbnailAdditionIndex *)selfCopy _cleanUpAfterClose];
  v9 = _log_2();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [QLThumbnailAdditionIndex _resetDatabaseOnItsQueue:];
  }

  v10 = [(QLThumbnailAdditionIndex *)selfCopy openDatabaseAtURL:selfCopy->_url error:0];

  if (v10)
  {
    objc_storeStrong(&selfCopy->_db, v10);
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)initForTesting
{
  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"cloudthumbnails.XXXXXX.db"];

  v5 = strdup([v4 fileSystemRepresentation]);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = mkstemps(v5, 3);
  if (v7 < 1)
  {
    free(v6);
LABEL_5:

    v9 = 0;
    goto LABEL_6;
  }

  close(v7);
  v8 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v6 isDirectory:0 relativeToURL:0];
  v9 = [(QLThumbnailAdditionIndex *)self initWithURL:v8];

  v9->_exitsOnCorruption = 0;
  free(v6);
LABEL_6:
  objc_storeStrong(&sSharedInstance, v9);

  return v9;
}

- (QLThumbnailAdditionIndex)init
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = QLTGetDefaultCacheLocation();
  v5 = [v4 stringByAppendingPathComponent:@"cloudthumbnails.db"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  if (([defaultManager fileExistsAtPath:v5] & 1) == 0)
  {
    v7 = [defaultManager URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:0];
    v8 = [v7 URLByAppendingPathComponent:@"Quick Look/cloudthumbnails.db" isDirectory:0];
    [defaultManager moveItemAtURL:v8 toURL:v6 error:0];
  }

  v9 = [(QLThumbnailAdditionIndex *)self initWithURL:v6];

  return v9;
}

- (id)whereClauseForURL:(id)l
{
  v9[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = 0;
  v9[0] = 0;
  v9[1] = 0;
  if ([lCopy qlt_getDocumentIdentifier:&v8] && objc_msgSend(lCopy, "qlt_getVolumeUUID:", v9))
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v9 length:16];
    v5 = [MEMORY[0x277D82C08] formatInjection:{@"docid = %u AND vol_uuid = %@", v8, v4}];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasThumbnailForURL:(id)l updateLastHitDate:(BOOL)date andSize:(unint64_t)size
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!self->_db)
  {
    [(QLThumbnailAdditionIndex *)self open];
    if (!self->_db)
    {
      v11 = _log_2();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex hasThumbnailForURL:updateLastHitDate:andSize:];
      }

      goto LABEL_9;
    }
  }

  v9 = _log_2();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "Looking for thumbnail for URL %@", &buf, 0xCu);
  }

  v10 = [(QLThumbnailAdditionIndex *)self whereClauseForURL:lCopy];
  v11 = v10;
  if (!v10)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__QLThumbnailAdditionIndex_hasThumbnailForURL_updateLastHitDate_andSize___block_invoke;
  v15[3] = &unk_279ADDD90;
  v15[4] = self;
  v11 = v10;
  v16 = v11;
  p_buf = &buf;
  sizeCopy = size;
  dateCopy = date;
  v17 = lCopy;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v15];
  v12 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __73__QLThumbnailAdditionIndex_hasThumbnailForURL_updateLastHitDate_andSize___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) db];
  v4 = [v3 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT COUNT(*) FROM thumbnails WHERE %@", *(v2 + 8)}];

  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v4 intValue] > 0;
    v5 = *(*(a1 + 56) + 8);
    if (*(v5 + 24) == 1 && ((*(a1 + 72) & 1) != 0 || *(a1 + 64)))
    {
      v6 = [*(a1 + 32) db];
      v7 = [v6 serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__QLThumbnailAdditionIndex_hasThumbnailForURL_updateLastHitDate_andSize___block_invoke_2;
      block[3] = &unk_279ADDD68;
      v14 = *(a1 + 72);
      v8 = *(a1 + 32);
      v13 = *(a1 + 64);
      block[4] = v8;
      v11 = *(a1 + 48);
      v12 = *(a1 + 40);
      dispatch_async(v7, block);
    }

    else
    {
      *(v5 + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v9 = _log_2();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __73__QLThumbnailAdditionIndex_hasThumbnailForURL_updateLastHitDate_andSize___block_invoke_cold_1(v2);
    }
  }
}

void __73__QLThumbnailAdditionIndex_hasThumbnailForURL_updateLastHitDate_andSize___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = MEMORY[0x277D82C08];
    v3 = [MEMORY[0x277CBEAA8] date];
    v7 = [v2 formatInjection:{@", last_hit_date = %@", v3}];
  }

  else
  {
    v7 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }

  if (*(a1 + 56))
  {
    [MEMORY[0x277D82C08] formatInjection:{@", size=%llu", *(a1 + 56)}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }
  v4 = ;
  v5 = [*(a1 + 32) db];
  v6 = [*(a1 + 40) path];
  [v5 execute:{@"UPDATE thumbnails SET last_seen_path=%@ %@ %@ WHERE %@", v6, v7, v4, *(a1 + 48)}];
}

- (BOOL)updateFileSize:(unint64_t)size ofThumbnailForURL:(id)l
{
  lCopy = l;
  if (!self->_db)
  {
    [(QLThumbnailAdditionIndex *)self open];
    if (!self->_db)
    {
      v9 = _log_2();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex hasThumbnailForURL:updateLastHitDate:andSize:];
      }

      goto LABEL_9;
    }
  }

  v7 = _log_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [QLThumbnailAdditionIndex updateFileSize:ofThumbnailForURL:];
  }

  v8 = [(QLThumbnailAdditionIndex *)self whereClauseForURL:lCopy];
  v9 = v8;
  if (!v8)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__QLThumbnailAdditionIndex_updateFileSize_ofThumbnailForURL___block_invoke;
  v12[3] = &unk_279ADDDB8;
  v14 = &v16;
  sizeCopy = size;
  v12[4] = self;
  v9 = v8;
  v13 = v9;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v12];
  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
LABEL_10:

  return v10 & 1;
}

void __61__QLThumbnailAdditionIndex_updateFileSize_ofThumbnailForURL___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) db];
  v2 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = [v3 execute:{@"UPDATE thumbnails SET size=%llu WHERE %@", v2, *(a1 + 40)}];
}

- (BOOL)updateLastHitDate:(id)date ofThumbnailForURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lCopy = l;
  if (!self->_db)
  {
    [(QLThumbnailAdditionIndex *)self open];
    if (!self->_db)
    {
      v9 = _log_2();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex hasThumbnailForURL:updateLastHitDate:andSize:];
      }

      goto LABEL_9;
    }
  }

  v8 = _log_2();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_2615D3000, v8, OS_LOG_TYPE_INFO, "Updating file size for thumbnail for URL %@", &buf, 0xCu);
  }

  v9 = [(QLThumbnailAdditionIndex *)self whereClauseForURL:lCopy];
  if (!v9)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__QLThumbnailAdditionIndex_updateLastHitDate_ofThumbnailForURL___block_invoke;
  v13[3] = &unk_279ADDDE0;
  p_buf = &buf;
  v13[4] = self;
  v14 = dateCopy;
  v9 = v9;
  v15 = v9;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v13];
  v10 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __64__QLThumbnailAdditionIndex_updateLastHitDate_ofThumbnailForURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  *(*(*(a1 + 56) + 8) + 24) = [v2 execute:{@"UPDATE thumbnails SET last_hit_date=%@ WHERE %@", *(a1 + 40), *(a1 + 48)}];

  v6 = [*(a1 + 32) db];
  v3 = [v6 changes];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 24);
  if (v3 != 1)
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
}

- (BOOL)removeThumbnailForURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!self->_db)
  {
    [(QLThumbnailAdditionIndex *)self open];
    if (!self->_db)
    {
      v7 = _log_2();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex hasThumbnailForURL:updateLastHitDate:andSize:];
      }

      goto LABEL_9;
    }
  }

  v5 = _log_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_2615D3000, v5, OS_LOG_TYPE_INFO, "Removing thumbnail for URL %@", &buf, 0xCu);
  }

  v6 = [(QLThumbnailAdditionIndex *)self whereClauseForURL:lCopy];
  v7 = v6;
  if (!v6)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__QLThumbnailAdditionIndex_removeThumbnailForURL___block_invoke;
  v11[3] = &unk_279ADDE08;
  p_buf = &buf;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v11];
  v8 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __50__QLThumbnailAdditionIndex_removeThumbnailForURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  *(*(*(a1 + 48) + 8) + 24) = [v2 execute:{@"DELETE FROM thumbnails WHERE %@", *(a1 + 40)}];
}

- (BOOL)addThumbnailForURL:(id)l lastHitDate:(id)date size:(unint64_t)size
{
  v31[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  dateCopy = date;
  if (self->_db || ([(QLThumbnailAdditionIndex *)self open], self->_db))
  {
    v10 = _log_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = lCopy;
      _os_log_impl(&dword_2615D3000, v10, OS_LOG_TYPE_INFO, "Adding thumbnail for URL %@", &buf, 0xCu);
    }

    v29 = 0;
    v31[0] = 0;
    v31[1] = 0;
    if ([lCopy qlt_getDocumentIdentifier:&v29])
    {
      if ([lCopy qlt_getVolumeUUID:v31])
      {
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v31 length:16 freeWhenDone:0];
        memset(&buf, 0, sizeof(buf));
        v12 = lCopy;
        stat([lCopy fileSystemRepresentation], &buf);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __64__QLThumbnailAdditionIndex_addThumbnailForURL_lastHitDate_size___block_invoke;
        v18[3] = &unk_279ADDE30;
        v22 = &v25;
        v18[4] = self;
        v24 = v29;
        v13 = v11;
        v19 = v13;
        v20 = dateCopy;
        v21 = lCopy;
        sizeCopy = size;
        [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v18];
        v14 = *(v26 + 24);

        _Block_object_dispose(&v25, 8);
LABEL_13:

        goto LABEL_14;
      }

      v13 = _log_2();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex addThumbnailForURL:lastHitDate:size:];
      }
    }

    else
    {
      v13 = _log_2();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAdditionIndex addThumbnailForURL:lastHitDate:size:];
      }
    }

    v14 = 0;
    goto LABEL_13;
  }

  v17 = _log_2();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [QLThumbnailAdditionIndex hasThumbnailForURL:updateLastHitDate:andSize:];
  }

  v14 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void __64__QLThumbnailAdditionIndex_addThumbnailForURL_lastHitDate_size___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) db];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v5 = [*(a1 + 56) path];
  *(*(*(a1 + 64) + 8) + 24) = [v6 execute:{@"INSERT OR REPLACE INTO thumbnails(docid, vol_uuid, last_hit_date, last_seen_path, size) VALUES (%u, %@, %@, %@, %llu)", v4, v2, v3, v5, *(a1 + 72)}];
}

- (BOOL)addThumbnailForURL:(id)l size:(unint64_t)size
{
  v6 = MEMORY[0x277CBEAA8];
  lCopy = l;
  date = [v6 date];
  LOBYTE(size) = [(QLThumbnailAdditionIndex *)self addThumbnailForURL:lCopy lastHitDate:date size:size];

  return size;
}

- (id)entriesEnumerator
{
  db = self->_db;
  if (db || ([(QLThumbnailAdditionIndex *)self open], (db = self->_db) != 0))
  {
    v4 = [(PQLConnection *)db fetch:@"SELECT docid, vol_uuid, last_hit_date, last_seen_path, size FROM thumbnails"];
    v5 = [v4 enumerateObjectsOfClass:objc_opt_class()];
  }

  else
  {
    v7 = _log_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex hasThumbnailForURL:updateLastHitDate:andSize:];
    }

    v5 = 0;
  }

  return v5;
}

- (void)enumerateCacheEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__QLThumbnailAdditionIndex_enumerateCacheEntriesWithHandler___block_invoke;
  v6[3] = &unk_279ADD550;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v6];
}

void __61__QLThumbnailAdditionIndex_enumerateCacheEntriesWithHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) entriesEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)allEntries
{
  if (self->_db || ([(QLThumbnailAdditionIndex *)self open], self->_db))
  {
    array = [MEMORY[0x277CBEB18] array];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__QLThumbnailAdditionIndex_allEntries__block_invoke;
    v9[3] = &unk_279ADD200;
    v9[4] = self;
    v4 = array;
    v10 = v4;
    [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v9];
    v5 = v10;
    v6 = v4;

    v7 = v6;
  }

  else
  {
    v6 = _log_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex hasThumbnailForURL:updateLastHitDate:andSize:];
    }

    v7 = 0;
  }

  return v7;
}

void __38__QLThumbnailAdditionIndex_allEntries__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) entriesEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addObject:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)batchOfEntriesStartingAt:(unint64_t)at endingAt:(unint64_t *)endingAt
{
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:50];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__QLThumbnailAdditionIndex_batchOfEntriesStartingAt_endingAt___block_invoke;
  v12[3] = &unk_279ADDE58;
  v12[4] = self;
  atCopy = at;
  v8 = v7;
  v13 = v8;
  endingAtCopy = endingAt;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __62__QLThumbnailAdditionIndex_batchOfEntriesStartingAt_endingAt___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) db];
  v4 = [v3 fetch:{@"SELECT docid, vol_uuid, last_hit_date, last_seen_path, size FROM thumbnails WHERE rowid >= %lu ORDER BY rowid LIMIT %lu", *(v2 + 16), 50}];
  v5 = [v4 enumerateObjectsOfClass:objc_opt_class()];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 40) addObject:*(*(&v17 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if (*(a1 + 56))
  {
    v11 = [*(a1 + 32) db];
    v12 = [v11 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT MAX(rowid) FROM (SELECT rowid FROM thumbnails WHERE rowid    >= %lu ORDER BY rowid LIMIT %lu)", *(a1 + 48), 50, v17}];

    if (v12 && [v12 unsignedIntegerValue] >= *(a1 + 48))
    {
      v15 = [v12 unsignedIntegerValue];
    }

    else if ([*(a1 + 40) count])
    {
      v13 = _log_2();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __62__QLThumbnailAdditionIndex_batchOfEntriesStartingAt_endingAt___block_invoke_cold_1(v2);
      }

      v14 = *(a1 + 48);
      v15 = v14 + [*(a1 + 40) count] - 1;
    }

    else
    {
      v15 = *(a1 + 48);
    }

    **(a1 + 56) = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAllAdditions
{
  v27 = *MEMORY[0x277D85DE8];
  allEntries = [(QLThumbnailAdditionIndex *)self allEntries];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [allEntries countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(allEntries);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = MEMORY[0x277CDAAC0];
        lastSeenURL = [v8 lastSeenURL];
        v17 = 0;
        v11 = [v9 removeAdditionsOnURL:lastSeenURL error:&v17];
        v12 = v17;

        if ((v11 & 1) == 0)
        {
          v13 = _log_2();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            lastSeenURL2 = [v8 lastSeenURL];
            *buf = v16;
            v23 = lastSeenURL2;
            v24 = 2112;
            v25 = v12;
            _os_log_error_impl(&dword_2615D3000, v13, OS_LOG_TYPE_ERROR, "Could not remove addition on %@: %@", buf, 0x16u);
          }
        }
      }

      v5 = [allEntries countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int)deviceForHomeDirectory
{
  v2 = NSHomeDirectory();
  memset(&v7, 0, sizeof(v7));
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = stat([defaultManager fileSystemRepresentationWithPath:v2], &v7);

  if (v4)
  {
    st_dev = -1;
  }

  else
  {
    st_dev = v7.st_dev;
  }

  return st_dev;
}

- (void)removeEntriesFromDatabase:(id)database
{
  v19 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [databaseCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(databaseCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        db = self->_db;
        documentID = [v9 documentID];
        vol_uuid = [v9 vol_uuid];
        [(PQLConnection *)db execute:@"DELETE FROM thumbnails WHERE docid = %llu AND vol_uuid = %@", documentID, vol_uuid];
      }

      v6 = [databaseCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpBatchOfEntries:(id)entries
{
  v64 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = _log_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v60 = [entriesCopy count];
    _os_log_impl(&dword_2615D3000, v5, OS_LOG_TYPE_INFO, "[db maintenance] updating %llu entries", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = entriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v46;
    v12 = 0x277CBE000uLL;
    *&v9 = 134219010;
    v35 = v9;
    v39 = array;
    do
    {
      v13 = 0;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v45 + 1) + 8 * v13);
        deviceForHomeDirectory = [(QLThumbnailAdditionIndex *)self deviceForHomeDirectory];
        if ((deviceForHomeDirectory & 0x80000000) == 0)
        {
          v16 = deviceForHomeDirectory;
          [v14 documentID];
          v17 = GSLibraryResolveDocumentId2();
          if (v17)
          {
            v44.val[0] = v16;
            v44.val[1] = 0;
            if (fsgetpath(buf, 0x400uLL, &v44, v17) < 1)
            {
              goto LABEL_33;
            }

            v18 = [*(v12 + 3008) fileURLWithFileSystemRepresentation:buf isDirectory:0 relativeToURL:0];
            if ([v18 br_isInCloudDocsPrivateStorages])
            {
              v19 = _log_2();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                [(QLThumbnailAdditionIndex *)v57 cleanUpBatchOfEntries:v14, &v58, v19];
              }

              [array addObject:v14];
              goto LABEL_32;
            }

            memset(&v43, 0, sizeof(v43));
            if (stat(buf, &v43))
            {
              v21 = _log_2();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v22 = *__error();
                *v49 = 67109378;
                *v50 = v22;
                *&v50[4] = 2080;
                *&v50[6] = buf;
                _os_log_error_impl(&dword_2615D3000, v21, OS_LOG_TYPE_ERROR, "Hit error %{errno}d trying to stat %s", v49, 0x12u);
              }

              goto LABEL_31;
            }

            v21 = [*(v12 + 3008) fileURLWithFileSystemRepresentation:buf isDirectory:(v43.st_mode & 0xF000) == 0x4000 relativeToURL:0];
            lastSeenURL = [v14 lastSeenURL];
            if ([v21 isEqual:lastSeenURL])
            {
              v24 = [v14 size];

              if (!v24)
              {
LABEL_27:
                v25 = [MEMORY[0x277CDAAC0] sizeOfAdditionsPresentOnURL:v21];
                v26 = _log_2();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  documentID = [v14 documentID];
                  lastSeenURL2 = [v14 lastSeenURL];
                  v28 = [v14 size];
                  *v49 = v35;
                  *v50 = documentID;
                  *&v50[8] = 2112;
                  *&v50[10] = lastSeenURL2;
                  v51 = 2112;
                  v52 = v21;
                  v53 = 2048;
                  v54 = v28;
                  v55 = 2048;
                  v56 = v25;
                  _os_log_debug_impl(&dword_2615D3000, v26, OS_LOG_TYPE_DEBUG, "Updating url of docid %llu from %@ to %@ and size from %lld to %lld", v49, 0x34u);
                }

                [v14 setLastSeenURL:v21];
                [v14 setSize:v25];
                [array2 addObject:v14];
              }

              array = v39;
LABEL_31:

              v12 = 0x277CBE000;
LABEL_32:

              goto LABEL_33;
            }

            goto LABEL_27;
          }

          if (*__error() == 2 || *__error() == 70)
          {
            v20 = _log_2();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              lastSeenURL3 = [v14 lastSeenURL];
              *buf = 138412546;
              v60 = v14;
              v61 = 2112;
              v62 = lastSeenURL3;
              _os_log_error_impl(&dword_2615D3000, v20, OS_LOG_TYPE_ERROR, "Should delete %@ (lastSeenURL: %@)", buf, 0x16u);

              array = v39;
            }

            [array addObject:v14];
          }
        }

LABEL_33:
        ++v13;
      }

      while (v10 != v13);
      v10 = [v7 countByEnumeratingWithState:&v45 objects:v63 count:16];
    }

    while (v10);
  }

  v29 = _log_2();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [array count];
    v31 = [array2 count];
    *buf = 134218240;
    v60 = v30;
    v61 = 2048;
    v62 = v31;
    _os_log_impl(&dword_2615D3000, v29, OS_LOG_TYPE_INFO, "[db maintenance] %llu entries to delete, %llu entries to update", buf, 0x16u);
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __50__QLThumbnailAdditionIndex_cleanUpBatchOfEntries___block_invoke;
  v40[3] = &unk_279ADD2A0;
  v40[4] = self;
  v41 = array;
  v42 = array2;
  v32 = array2;
  v33 = array;
  [(QLThumbnailAdditionIndex *)self dispatchSyncOnDatabaseQueue:v40];

  v34 = *MEMORY[0x277D85DE8];
}

void __50__QLThumbnailAdditionIndex_cleanUpBatchOfEntries___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeEntriesFromDatabase:*(a1 + 40)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v7 = [*(a1 + 32) db];
        v8 = [v6 lastSeenURL];
        v9 = [v8 path];
        [v7 execute:{@"UPDATE THUMBNAILS SET last_seen_path=%@, size=%lld WHERE docid=%llu", v9, objc_msgSend(v6, "size"), objc_msgSend(v6, "documentID")}];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performDatabaseMaintenance
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateFileSize:(unint64_t)size ofThumbnailForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v8 = [(QLThumbnailAdditionIndex *)self updateFileSize:size ofThumbnailForURL:l];
  v9 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v8);
    v9 = completionCopy;
  }
}

- (void)updateLastHitDate:(id)date ofThumbnailForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v8 = [(QLThumbnailAdditionIndex *)self updateLastHitDate:date ofThumbnailForURL:l];
  v9 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v8);
    v9 = completionCopy;
  }
}

- (void)removeThumbnailForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v6 = [(QLThumbnailAdditionIndex *)self removeThumbnailForURL:l];
  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v6);
    v7 = completionCopy;
  }
}

- (void)addThumbnailForURLWrapper:(id)wrapper size:(unint64_t)size completion:(id)completion
{
  wrapperCopy = wrapper;
  completionCopy = completion;
  v10 = [wrapperCopy url];
  startAccessingSecurityScopedResource = [v10 startAccessingSecurityScopedResource];
  if ((startAccessingSecurityScopedResource & 1) == 0)
  {
    v12 = _log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex hasThumbnailForURLWrapper:wrapperCopy updateLastHitDate:? andSize:? completion:?];
    }
  }

  v13 = [(QLThumbnailAdditionIndex *)self addThumbnailForURL:v10 size:size];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13);
  }

  if (startAccessingSecurityScopedResource)
  {
    [v10 stopAccessingSecurityScopedResource];
  }
}

- (void)retrieveAllAdditions:(id)additions
{
  if (additions)
  {
    additionsCopy = additions;
    allEntries = [(QLThumbnailAdditionIndex *)self allEntries];
    (*(additions + 2))(additionsCopy, allEntries);
  }
}

- (id)volumeRestrictionForMountPoint:(id)point
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v7[1] = 0;
  v3 = 0;
  if ([point qlt_getVolumeUUID:v7])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v7 length:16];
    v3 = [MEMORY[0x277D82C08] formatInjection:{@"AND vol_uuid = %@", v4}];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)purgeableSpaceOnMountPoint:(id)point withUrgency:(int)urgency beforeDate:(id)date
{
  pointCopy = point;
  dateCopy = date;
  if (self->_db || ([(QLThumbnailAdditionIndex *)self open], self->_db))
  {
    v9 = [(QLThumbnailAdditionIndex *)self volumeRestrictionForMountPoint:pointCopy];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    serialQueue = [(PQLConnection *)self->_db serialQueue];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __91__QLThumbnailAdditionIndex_CacheDelete__purgeableSpaceOnMountPoint_withUrgency_beforeDate___block_invoke;
    v17 = &unk_279ADDDE0;
    v21 = &v22;
    selfCopy = self;
    v19 = dateCopy;
    v11 = v9;
    v20 = v11;
    dispatch_sync(serialQueue, &v14);

    longLongValue = [v23[5] longLongValue];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v11 = _log_2();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex(CacheDelete) purgeableSpaceOnMountPoint:v11 withUrgency:? beforeDate:?];
    }

    longLongValue = 0;
  }

  return longLongValue;
}

void __91__QLThumbnailAdditionIndex_CacheDelete__purgeableSpaceOnMountPoint_withUrgency_beforeDate___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) db];
  v2 = [v5 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT SUM(size) FROM thumbnails WHERE last_hit_date < %@ %@", *(a1 + 40), *(a1 + 48)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)purgeOnMountPoint:(id)point withUrgency:(int)urgency beforeDate:(id)date
{
  v56 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  dateCopy = date;
  v9 = _log_2();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "#CacheDelete asked us to purge", buf, 2u);
  }

  if (self->_db || ([(QLThumbnailAdditionIndex *)self open], self->_db))
  {
    sPurgeCancelled = 0;
    v50 = 0;
    v10 = 0;
    if ([pointCopy qlt_getDeviceIdentifier:&v50] && (v50 & 0x80000000) == 0)
    {
      v36 = pointCopy;
      v11 = [(QLThumbnailAdditionIndex *)self volumeRestrictionForMountPoint:pointCopy];
      array = [MEMORY[0x277CBEB18] array];
      serialQueue = [(PQLConnection *)self->_db serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__QLThumbnailAdditionIndex_CacheDelete__purgeOnMountPoint_withUrgency_beforeDate___block_invoke;
      block[3] = &unk_279ADDEA8;
      selfCopy = self;
      v35 = dateCopy;
      block[4] = self;
      v46 = dateCopy;
      v33 = v11;
      v47 = v33;
      v49 = v50;
      v14 = array;
      v48 = v14;
      dispatch_sync(serialQueue, block);

      v15 = _log_2();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 count];
        *buf = 134217984;
        v52 = v16;
        _os_log_impl(&dword_2615D3000, v15, OS_LOG_TYPE_INFO, "#CacheDelete removing %lu thumbnails", buf, 0xCu);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v14;
      v17 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v17)
      {
        v18 = v17;
        v10 = 0;
        v19 = *v42;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v42 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v41 + 1) + 8 * i);
            v22 = objc_autoreleasePoolPush();
            v23 = MEMORY[0x277CDAAC0];
            lastSeenURL = [v21 lastSeenURL];
            v40 = 0;
            LODWORD(v23) = [v23 _removeAdditionsOnURLDirectly:lastSeenURL error:&v40];
            v25 = v40;

            if (v23)
            {
              v10 += [v21 size];
            }

            else
            {
              v26 = _log_2();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                lastSeenURL2 = [v21 lastSeenURL];
                *buf = 138412546;
                v52 = lastSeenURL2;
                v53 = 2112;
                v54 = v25;
                _os_log_error_impl(&dword_2615D3000, v26, OS_LOG_TYPE_ERROR, "#CacheDelete Not removing addition on %@; encountered error %@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v22);
          }

          v18 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
        }

        while (v18);
      }

      else
      {
        v10 = 0;
      }

      serialQueue2 = [(PQLConnection *)selfCopy->_db serialQueue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __82__QLThumbnailAdditionIndex_CacheDelete__purgeOnMountPoint_withUrgency_beforeDate___block_invoke_14;
      v38[3] = &unk_279ADD200;
      v38[4] = selfCopy;
      v39 = obj;
      v29 = obj;
      dispatch_sync(serialQueue2, v38);

      dateCopy = v35;
      pointCopy = v36;
    }
  }

  else
  {
    v30 = _log_2();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAdditionIndex(CacheDelete) purgeableSpaceOnMountPoint:v30 withUrgency:? beforeDate:?];
    }

    v10 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

void __82__QLThumbnailAdditionIndex_CacheDelete__purgeOnMountPoint_withUrgency_beforeDate___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) db];
  v3 = [v2 fetch:{@"SELECT docid, vol_uuid, last_hit_date, last_seen_path, size FROM thumbnails WHERE last_hit_date < %@ %@", *(a1 + 40), *(a1 + 48)}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = v3;
  v4 = [v3 enumerateObjectsOfClass:objc_opt_class()];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (sPurgeCancelled)
      {
        break;
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      [v9 documentID];
      v10 = *(a1 + 64);
      v11 = GSLibraryResolveDocumentId2();
      if (v11)
      {
        v18.val[0] = *(a1 + 64);
        v18.val[1] = 0;
        if (fsgetpath(v23, 0x400uLL, &v18, v11) >= 1)
        {
          v12 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v23 isDirectory:0 relativeToURL:0];
          [v9 setLastSeenURL:v12];

          if (![v9 size])
          {
            v13 = objc_alloc(MEMORY[0x277CDAAC0]);
            v14 = [v9 lastSeenURL];
            v15 = [v13 initWithAdditionsPresentOnURL:v14 error:0];

            [v9 setSize:{objc_msgSend(v15, "additionSize")}];
          }

          [*(a1 + 56) addObject:v9];
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)open
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_closeDatabaseOnItsQueue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__QLThumbnailAdditionIndex_setUpDatabase___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)upgradeDatabaseIfNeeded:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)upgradeDatabaseIfNeeded:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)upgradeDatabaseIfNeeded:(void *)a1 error:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastError];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __58__QLThumbnailAdditionIndex_upgradeDatabaseIfNeeded_error___block_invoke_cold_1(int *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logError:onDB:statement:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeDatabaseAtURL:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeDatabaseAtURL:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)makeDatabaseAtURL:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)makeDatabaseAtURL:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openDatabaseAtURL:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openDatabaseAtURL:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)openDatabaseAtURL:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openDatabaseAtURL:error:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)openDatabaseAtURL:error:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__QLThumbnailAdditionIndex_openDatabaseAtURL_error___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__QLThumbnailAdditionIndex__neuterAutoRollbackHandler__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resetDatabaseOnItsQueue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resetDatabaseOnItsQueue:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)hasThumbnailForURL:updateLastHitDate:andSize:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__QLThumbnailAdditionIndex_hasThumbnailForURL_updateLastHitDate_andSize___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 db];
  v2 = [v1 lastError];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateFileSize:ofThumbnailForURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addThumbnailForURL:lastHitDate:size:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addThumbnailForURL:lastHitDate:size:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__QLThumbnailAdditionIndex_batchOfEntriesStartingAt_endingAt___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 db];
  v2 = [v1 lastError];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpBatchOfEntries:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 lastSeenURL];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_2615D3000, a4, OS_LOG_TYPE_DEBUG, "Removing thumbnail tracking for %@ because it's in the Cloud Docs private storage", a1, 0xCu);
}

- (void)hasThumbnailForURLWrapper:(void *)a1 updateLastHitDate:andSize:completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 url];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end