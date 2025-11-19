@interface PLSQLiteConnection
+ (double)periodicIntegrityCheckInterval;
+ (id)masterTableForTable:(id)a3 andType:(id)a4;
+ (id)sharedSQLiteConnection;
+ (id)tableHasTimestampColumn;
+ (id)tableHasTimestampColumnSem;
+ (id)versionForTable:(id)a3;
+ (void)removeAdditionalFiles:(id)a3;
+ (void)removeDBAtFilePath:(id)a3;
- (BOOL)attachDB:(id)a3 withName:(id)a4;
- (BOOL)checkEmptyMasterTable:(id)a3;
- (BOOL)commonInitProcessWithFilePath:(id)a3 withCacheSize:(int64_t)a4;
- (BOOL)copyDatabase:(id)a3;
- (BOOL)copyDatabaseToPath:(id)a3;
- (BOOL)copyDatabaseToPath:(id)a3 fromDate:(id)a4 toDate:(id)a5 withTableFilters:(id)a6 vacuumDB:(BOOL)a7 withCacheSize:(int64_t)a8;
- (BOOL)copyTable:(id)a3 fromConnection:(id)a4 withDBName:(id)a5 withProperties:(id)a6 andAttach:(BOOL)a7;
- (BOOL)copyTable:(id)a3 fromDBName:(id)a4 withProperties:(id)a5;
- (BOOL)detachDB:(id)a3;
- (BOOL)isIncrementalVacuumEnabled;
- (BOOL)mergeDataFromOtherDBFile:(id)a3;
- (BOOL)openCurrentFile;
- (BOOL)openCurrentFileWithCacheSize:(int64_t)a3 withFlags:(id)a4;
- (BOOL)passesIntegrityCheck;
- (BOOL)tableExistsForTableName:(id)a3;
- (BOOL)tableHasTimestampColumn:(id)a3;
- (BOOL)truncateDB;
- (OS_dispatch_queue)workQueue;
- (PLSQLiteConnection)init;
- (PLSQLiteConnection)initWithFilePath:(id)a3 withCacheSize:(int64_t)a4;
- (PLSQLiteConnection)initWithFilePath:(id)a3 withCacheSize:(int64_t)a4 withFlags:(id)a5;
- (double)schemaVersionForTable:(id)a3;
- (id)cachedStatementForMetadataInsert;
- (id)entriesForKey:(id)a3 withProperties:(id)a4;
- (id)entriesForKey:(id)a3 withQuery:(id)a4;
- (id)getIntegrityCheckCriteria;
- (id)performQuery:(id)a3;
- (id)performQuery:(id)a3 returnValue:(int *)a4 returnResult:(BOOL)a5;
- (id)performStatement:(id)a3;
- (id)sortedSqlFormatedColumnNamesForTableInsert:(id)a3;
- (id)sqlFormatedColumnNamesForTableInsert:(id)a3;
- (id)sqlFormatedColumnNamesForTableSelect:(id)a3 withSystemOffset:(double)a4;
- (id)sqlPropertiesAsString:(id)a3;
- (id)tableInfo:(id)a3;
- (id)versionHashForTable:(id)a3;
- (int)getCacheSpillValue;
- (int)rowCountForTable:(id)a3;
- (int)rowCountForTableName:(id)a3;
- (int64_t)writeEntry:(id)a3;
- (void)beginTransaction;
- (void)buildColumnInsert:(id *)a3 andValueInsert:(id *)a4 forEntry:(id)a5;
- (void)clearTableHasTimestampColumnCache;
- (void)closeConnection;
- (void)createCompositeIndexOnTable:(id)a3 forColumns:(id)a4;
- (void)createIndexOnTable:(id)a3 forColumn:(id)a4;
- (void)createTableName:(id)a3 withColumns:(id)a4;
- (void)dealloc;
- (void)deleteAllEntriesForKey:(id)a3 withFilters:(id)a4;
- (void)deleteArrayEntriesForKey:(id)a3 withRowID:(int64_t)a4;
- (void)deleteDynamicEntriesForKey:(id)a3 withRowID:(int64_t)a4;
- (void)deleteEntryForKey:(id)a3 withRowID:(int64_t)a4;
- (void)displaySchema:(id)a3;
- (void)dropTable:(id)a3;
- (void)dropTables:(id)a3;
- (void)endTransaction;
- (void)enumerateAllTablesWithBlock:(id)a3;
- (void)enumerateTablesWithBlock:(id)a3;
- (void)freeMetadataState;
- (void)fullVacuum;
- (void)hashEntryKeyKeys:(id)a3;
- (void)loadArrayValuesIntoEntry:(id)a3;
- (void)loadDynamicValuesIntoEntry:(id)a3;
- (void)moveDatabaseToPath:(id)a3;
- (void)printDBStatusString;
- (void)removeEmptyOldTables;
- (void)removeIDIndexes;
- (void)removeTableNameFromMergeDB:(id)a3;
- (void)runTrimQuery:(id)a3;
- (void)scheduleIntegrityCheck;
- (void)setAllNullValuesForEntryKey:(id)a3 forKey:(id)a4 toValue:(id)a5 withFilters:(id)a6;
- (void)setSchemaVersion:(double)a3 forTableName:(id)a4;
- (void)setVersionHash:(id)a3 forTableName:(id)a4;
- (void)trimAllTablesFromDate:(id)a3 toDate:(id)a4 withTableFilters:(id)a5;
- (void)trimTable:(id)a3 fromDate:(id)a4 withFilter:(id)a5 withTrimLimit:(int64_t)a6;
- (void)updateEntry:(id)a3;
- (void)vacuum;
- (void)writeArrayEntries:(id)a3;
- (void)writeDynamicEntries:(id)a3;
- (void)writeDynamicEntriesToPPS:(id)a3;
- (void)writeMetadata:(id)a3 forFKID:(id)a4 build:(id)a5 name:(id)a6 version:(double)a7;
@end

@implementation PLSQLiteConnection

- (void)beginTransaction
{
  v3 = [(PLSQLiteConnection *)self transactionLock];
  objc_sync_enter(v3);
  if (![(PLSQLiteConnection *)self isTransactionInProgress])
  {
    v4 = [(PLSQLiteConnection *)self performQuery:@"BEGIN TRANSACTION;"];
  }

  [(PLSQLiteConnection *)self setTransactionInProgress:[(PLSQLiteConnection *)self transactionInProgress]+ 1];
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__PLSQLiteConnection_beginTransaction__block_invoke;
    block[3] = &unk_1E8519630;
    v13 = @"transactions";
    v14 = v5;
    if (beginTransaction_defaultOnce != -1)
    {
      dispatch_once(&beginTransaction_defaultOnce, block);
    }

    v6 = beginTransaction_classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"beginTransaction counter=%d", -[PLSQLiteConnection transactionInProgress](self, "transactionInProgress")];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection beginTransaction]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:1140];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  objc_sync_exit(v3);
}

- (OS_dispatch_queue)workQueue
{
  v2 = [(PLSQLiteConnection *)self cachedClassName];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

+ (id)sharedSQLiteConnection
{
  v2 = +[PowerlogCore sharedCore];
  v3 = [v2 storage];
  v4 = [v3 connection];

  return v4;
}

- (void)endTransaction
{
  v3 = [(PLSQLiteConnection *)self transactionLock];
  objc_sync_enter(v3);
  if ([(PLSQLiteConnection *)self isTransactionInProgress])
  {
    [(PLSQLiteConnection *)self setTransactionInProgress:[(PLSQLiteConnection *)self transactionInProgress]- 1];
    if (![(PLSQLiteConnection *)self isTransactionInProgress])
    {
      v4 = [(PLSQLiteConnection *)self performQuery:@"END TRANSACTION;"];
    }
  }

  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PLSQLiteConnection_endTransaction__block_invoke;
    block[3] = &unk_1E8519630;
    v13 = @"transactions";
    v14 = v5;
    if (endTransaction_defaultOnce != -1)
    {
      dispatch_once(&endTransaction_defaultOnce, block);
    }

    v6 = endTransaction_classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endTransaction counter=%d", -[PLSQLiteConnection transactionInProgress](self, "transactionInProgress")];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection endTransaction]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:1155];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  objc_sync_exit(v3);
}

+ (void)removeAdditionalFiles:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 stringByAppendingString:@"-shm"];
  [v5 removeItemAtPath:v6 error:0];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v4 stringByAppendingString:@"-wal"];

  [v8 removeItemAtPath:v7 error:0];
}

+ (void)removeDBAtFilePath:(id)a3
{
  v3 = a3;
  [PLSQLiteConnection removeAdditionalFiles:v3];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 removeItemAtPath:v3 error:0];
}

+ (id)tableHasTimestampColumn
{
  if (tableHasTimestampColumn_onceToken != -1)
  {
    +[PLSQLiteConnection tableHasTimestampColumn];
  }

  v3 = tableHasTimestampColumn_tableHasTimestampColumn;

  return v3;
}

uint64_t __45__PLSQLiteConnection_tableHasTimestampColumn__block_invoke()
{
  tableHasTimestampColumn_tableHasTimestampColumn = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)tableHasTimestampColumnSem
{
  if (tableHasTimestampColumnSem_onceToken != -1)
  {
    +[PLSQLiteConnection tableHasTimestampColumnSem];
  }

  v3 = tableHasTimestampColumnSem_tableHasTimestampColumnSem;

  return v3;
}

uint64_t __48__PLSQLiteConnection_tableHasTimestampColumnSem__block_invoke()
{
  tableHasTimestampColumnSem_tableHasTimestampColumnSem = dispatch_semaphore_create(1);

  return MEMORY[0x1EEE66BB8]();
}

- (PLSQLiteConnection)init
{
  v3 = +[PLUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  v5 = [(PLSQLiteConnection *)self initWithFilePath:v4];

  return v5;
}

- (BOOL)commonInitProcessWithFilePath:(id)a3 withCacheSize:(int64_t)a4
{
  v7 = a3;
  objc_storeStrong(&self->_filePath, a3);
  v8 = objc_opt_new();
  preparedStatements = self->_preparedStatements;
  self->_preparedStatements = v8;

  v10 = objc_opt_new();
  preparedUpdateStatements = self->_preparedUpdateStatements;
  self->_preparedUpdateStatements = v10;

  v12 = objc_opt_new();
  preparedDynamicStatements = self->_preparedDynamicStatements;
  self->_preparedDynamicStatements = v12;

  self->_transactionInProgress = 0;
  transactionLock = self->_transactionLock;
  self->_transactionLock = @"_-transactionLock-_";

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  cachedClassName = self->_cachedClassName;
  self->_cachedClassName = v16;

  self->_cacheSize = a4;
  v18 = dispatch_semaphore_create(1);
  dbSem = self->_dbSem;
  self->_dbSem = v18;

  v20 = sqlite3_initialize();
  if (!v20)
  {
    v21 = +[PLUtilities containerPath];
    v22 = [v21 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
    if ([v7 isEqualToString:v22])
    {
      v23 = [MEMORY[0x1E696AC08] defaultManager];
      v24 = +[PLUtilities containerPath];
      v25 = [v24 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL"];
      v26 = [v23 fileExistsAtPath:v25];

      if (!v26)
      {
        goto LABEL_7;
      }

      v27 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = +[PLUtilities containerPath];
      v29 = [v28 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
      [v27 removeItemAtPath:v29 error:0];

      v30 = [MEMORY[0x1E696AC08] defaultManager];
      v31 = +[PLUtilities containerPath];
      v32 = [v31 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL"];
      v33 = +[PLUtilities containerPath];
      v34 = [v33 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
      [v30 moveItemAtPath:v32 toPath:v34 error:0];

      v35 = [MEMORY[0x1E696AC08] defaultManager];
      v36 = +[PLUtilities containerPath];
      v37 = [v36 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-wal"];
      [v35 removeItemAtPath:v37 error:0];

      v38 = [MEMORY[0x1E696AC08] defaultManager];
      v39 = +[PLUtilities containerPath];
      v40 = [v39 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL-wal"];
      v41 = +[PLUtilities containerPath];
      v42 = [v41 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-wal"];
      [v38 moveItemAtPath:v40 toPath:v42 error:0];

      v43 = [MEMORY[0x1E696AC08] defaultManager];
      v44 = +[PLUtilities containerPath];
      v45 = [v44 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-shm"];
      [v43 removeItemAtPath:v45 error:0];

      v21 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = +[PLUtilities containerPath];
      v46 = [v22 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL-shm"];
      v47 = +[PLUtilities containerPath];
      v48 = [v47 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-shm"];
      [v21 moveItemAtPath:v46 toPath:v48 error:0];
    }

    goto LABEL_7;
  }

  fprintf(*MEMORY[0x1E69E9848], "failed to initialize library: %d\n", v20);
LABEL_7:

  return v20 == 0;
}

- (PLSQLiteConnection)initWithFilePath:(id)a3 withCacheSize:(int64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = PLSQLiteConnection;
  v7 = [(PLSQLiteConnection *)&v15 init];
  v8 = v7;
  if (v7)
  {
    if (![(PLSQLiteConnection *)v7 commonInitProcessWithFilePath:v6 withCacheSize:a4]|| ![(PLSQLiteConnection *)v8 openCurrentFileWithCacheSize:a4])
    {
      v11 = 0;
      goto LABEL_11;
    }

    v9 = +[PLUtilities containerPath];
    v10 = [v9 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
    if (![v6 isEqualToString:v10] || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
    {
    }

    else
    {
      v13 = +[PLUtilities isPowerexceptionsd];

      if (!v13)
      {
        if ([PLDefaults BOOLForKey:@"RunIntegrityCheck"]&& ![(PLSQLiteConnection *)v8 passesIntegrityCheck])
        {
          v14 = PLLogSQLiteConnection();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [PLSQLiteConnection initWithFilePath:withCacheSize:];
          }

          [PLUtilities exitWithReason:1001 connection:v8];
        }

        [(PLSQLiteConnection *)v8 scheduleIntegrityCheck];
      }
    }

    [(PLSQLiteConnection *)v8 setJournalMode:[PLDefaults BOOLForKey:@"DBModeWAL" ifNotSet:1]^ 1];
  }

  v11 = v8;
LABEL_11:

  return v11;
}

- (PLSQLiteConnection)initWithFilePath:(id)a3 withCacheSize:(int64_t)a4 withFlags:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PLSQLiteConnection;
  v10 = [(PLSQLiteConnection *)&v14 init];
  v11 = v10;
  if (!v10 || [(PLSQLiteConnection *)v10 commonInitProcessWithFilePath:v8 withCacheSize:a4]&& [(PLSQLiteConnection *)v11 openCurrentFileWithCacheSize:a4 withFlags:v9])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getIntegrityCheckCriteria
{
  v2 = [MEMORY[0x1E695DF70] array];
  [objc_opt_class() periodicIntegrityCheckInterval];
  v3 = [PLActivityCriterionTime timeCriterionWithInterval:?];
  [v2 addObject:v3];

  if (![PLPlatform isDisplayClass:0xFFFFFFFFLL])
  {
    v4 = +[PLActivityCriterionEntry displayOffCriterion];
    [v2 addObject:v4];
  }

  if (+[PLUtilities hasBattery])
  {
    v5 = +[PLActivityCriterionEntry pluggedInCriterion];
    [v2 addObject:v5];
  }

  return v2;
}

- (void)scheduleIntegrityCheck
{
  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

void __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getIntegrityCheckCriteria];
  v3 = +[PLActivityScheduler sharedInstance];
  v4 = [PLActivityCriterionTime timeCriterionWithInterval:2592000.0];
  v5 = dispatch_get_global_queue(-2, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_2;
  v6[3] = &unk_1E851AC48;
  v6[4] = *(a1 + 32);
  [v3 scheduleActivityWithIdentifier:@"com.apple.powerlogd.integrity_check" withCriteria:v2 withMustRunCriterion:v4 withQueue:v5 withInterruptBlock:0 withActivityBlock:v6];
}

void __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (kPLCacheSizeForBackupDatabaseConnection_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLCacheSizeForBackupDatabaseConnection_block_invoke_defaultOnce, block);
    }

    if (kPLCacheSizeForBackupDatabaseConnection_block_invoke_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Periodic integrity_check activity running"];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection scheduleIntegrityCheck]_block_invoke_2"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:218];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14 = os_transaction_create();
  v15 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) passesIntegrityCheck] & 1) == 0)
  {
    v16 = PLLogSQLiteConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_2_cold_2();
    }

    [PLUtilities exitWithReason:1001 connection:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v15);
  v17 = dispatch_time(0, 60000000000);
  v18 = +[PLUtilities transactionWorkQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_77;
  v20[3] = &unk_1E85190B8;
  v21 = v14;
  v19 = v14;
  dispatch_after(v17, v18, v20);
}

BOOL __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  kPLCacheSizeForBackupDatabaseConnection_block_invoke_classDebugEnabled = result;
  return result;
}

+ (double)periodicIntegrityCheckInterval
{
  if (periodicIntegrityCheckInterval_onceToken != -1)
  {
    +[PLSQLiteConnection periodicIntegrityCheckInterval];
  }

  return *&periodicIntegrityCheckInterval_periodicIntegrityCheckInterval;
}

uint64_t __52__PLSQLiteConnection_periodicIntegrityCheckInterval__block_invoke()
{
  result = [PLDefaults doubleForKey:@"PLSQLiteConnection_periodicIntegrityCheckInterval" ifNotSet:604800.0];
  periodicIntegrityCheckInterval_periodicIntegrityCheckInterval = v1;
  return result;
}

- (BOOL)isIncrementalVacuumEnabled
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  dbConnection = self->_dbConnection;
  sqlite3_exec_b();
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v11 + 24);
    *buf = 67109120;
    v15 = v6;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Incremental Vacuum is %d", buf, 8u);
  }

  v7 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(v7);

  LOBYTE(v7) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int)getCacheSpillValue
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  dbConnection = self->_dbConnection;
  sqlite3_exec_b();
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v11 + 6);
    *buf = 67109120;
    v15 = v6;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Cache spill is %d", buf, 8u);
  }

  v7 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(v7);

  LODWORD(v7) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  [(PLSQLiteConnection *)self closeConnection];
  v3.receiver = self;
  v3.super_class = PLSQLiteConnection;
  [(PLSQLiteConnection *)&v3 dealloc];
}

- (BOOL)openCurrentFile
{
  v3 = [(PLSQLiteConnection *)self cacheSize];

  return [(PLSQLiteConnection *)self openCurrentFileWithCacheSize:v3];
}

- (BOOL)openCurrentFileWithCacheSize:(int64_t)a3 withFlags:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLSQLiteConnection openCurrentFileWithCacheSize:? withFlags:?];
  }

  if ([v6 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 |= [*(*(&v38 + 1) + 8 * i) intValue];
        }

        v10 = [v8 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 3145734;
  }

  v14 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

  v15 = [(PLSQLiteConnection *)self filePath];
  v16 = sqlite3_open_v2([v15 UTF8String], &self->_dbConnection, v11, 0);
  v42 = v16;

  v17 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(v17);

  v18 = v16 == 0;
  if (v16)
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection openCurrentFileWithCacheSize:withFlags:];
    }

    goto LABEL_18;
  }

  if (v11)
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "done initializing read-only connection";
      v30 = v19;
      v31 = 2;
LABEL_30:
      _os_log_impl(&dword_1D8611000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    }
  }

  else
  {
    v22 = [(PLSQLiteConnection *)self filePath];
    [PLUtilities setMobileOwnerForFile:v22];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v23, OS_LOG_TYPE_DEFAULT, "Configure the page cache", buf, 2u);
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA cache_size = %ld", a3];;
    v25 = [(PLSQLiteConnection *)self performQuery:v24 returnValue:&v42 returnResult:0];

    if (v42)
    {
      goto LABEL_27;
    }

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v26, OS_LOG_TYPE_DEFAULT, "Configure the cache_spill", buf, 2u);
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA cache_spill = %ld", 640];;
    v28 = [(PLSQLiteConnection *)self performQuery:v27 returnValue:&v42 returnResult:0];

    if (v42)
    {
      goto LABEL_27;
    }

    v32 = [(PLSQLiteConnection *)self getCacheSpillValue];
    v33 = PLLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v44 = v42;
      v45 = 2080;
      v46 = 0;
      v47 = 1024;
      v48 = v32;
      _os_log_impl(&dword_1D8611000, v33, OS_LOG_TYPE_DEFAULT, "Tuning cache spill for the db retun value %d and error %s val returned from query %d", buf, 0x18u);
    }

    if (!+[PLUtilities SwitchToIncrementalVacuumEnabled]|| [(PLSQLiteConnection *)self isIncrementalVacuumEnabled])
    {
      v18 = 1;
      goto LABEL_19;
    }

    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v34, OS_LOG_TYPE_DEFAULT, "Configure auto_vacuum = 2", buf, 2u);
    }

    v35 = [(PLSQLiteConnection *)self performQuery:@"PRAGMA auto_vacuum = 2;" returnValue:&v42 returnResult:0];
    if (v42)
    {
      goto LABEL_27;
    }

    v36 = PLLogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v36, OS_LOG_TYPE_DEFAULT, "Invoke VACUUM to ensure the transition to incremental_vacuum mode", buf, 2u);
    }

    v37 = [(PLSQLiteConnection *)self performQuery:@"VACUUM;" returnValue:&v42 returnResult:0];
    if (v42)
    {
LABEL_27:
      v18 = 0;
      goto LABEL_19;
    }

    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v44 = v42;
      v45 = 2080;
      v46 = 0;
      v29 = "Executed vacuum on db to switch to incremental vacuum - %d and %s ";
      v30 = v19;
      v31 = 18;
      goto LABEL_30;
    }
  }

LABEL_18:

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)printDBStatusString
{
  pCur = 0;
  pHiwtr = 0;
  sqlite3_db_status(self->_dbConnection, 0, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LookasideSlots.isa, pCur, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 4, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_SuccessfulLook.isa, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 5, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LookasideSizeF.isa, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 6, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LookasideOomFa.isa, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 1, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_PagerHeapUsage.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 7, &pCur, &pHiwtr, 1);
  NSLog(&cfstr_PageCacheHitsD.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 8, &pCur, &pHiwtr, 1);
  NSLog(&cfstr_PageCacheMisse.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 9, &pCur, &pHiwtr, 1);
  NSLog(&cfstr_PageCacheWrite.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 2, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_SchemaHeapUsag.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 3, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_StatementHeapU.isa, pCur);
  sqlite3_status(0, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_MemoryUsedByte.isa, pCur, pHiwtr);
  sqlite3_status(9, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_OutstandingAll.isa, pCur, pHiwtr);
  sqlite3_status(2, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_PcacheOverflow.isa, pCur, pHiwtr);
  sqlite3_status(4, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_ScratchOverflo.isa, pCur, pHiwtr);
  sqlite3_status(5, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LargestAllocat.isa, pHiwtr);
  sqlite3_status(7, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LargestPcacheA.isa, pHiwtr);
  sqlite3_status(8, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LargestScratch.isa, pHiwtr);
}

- (BOOL)tableHasTimestampColumn:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [objc_opt_class() tableHasTimestampColumn];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_signal(v8);

  if (v7)
  {
    LOBYTE(v9) = [v7 BOOLValue];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(PLSQLiteConnection *)self tableInfo:v4];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v23 = v4;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v24 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          v16 = [v15 isEqualToString:@"timestamp"];

          if (v16)
          {
            v9 = 1;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v9 = 0;
LABEL_13:
      v4 = v23;
    }

    else
    {
      v9 = 0;
    }

    v17 = [objc_opt_class() tableHasTimestampColumnSem];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

    v18 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v19 = [objc_opt_class() tableHasTimestampColumn];
    [v19 setObject:v18 forKeyedSubscript:v4];

    v20 = [objc_opt_class() tableHasTimestampColumnSem];
    dispatch_semaphore_signal(v20);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)clearTableHasTimestampColumnCache
{
  v2 = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = [objc_opt_class() tableHasTimestampColumn];
  [v3 removeAllObjects];

  v4 = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_signal(v4);
}

- (int)rowCountForTable:(id)a3
{
  v4 = a3;
  v5 = @"FK_ID";
  if (([v4 containsString:@"_Dynamic"] & 1) == 0 && !objc_msgSend(v4, "containsString:", @"_Array_"))
  {
    v5 = @"ID";
  }

  if ([v4 rangeOfString:@"'"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"SELECT count(%@) AS count FROM '%@';";
  }

  else
  {
    v6 = @"SELECT count(%@) AS count FROM %@;";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v5, v4];
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __39__PLSQLiteConnection_rowCountForTable___block_invoke;
    v23 = &unk_1E8519630;
    v24 = @"mergeDBCount";
    v25 = v8;
    if (rowCountForTable__defaultOnce != -1)
    {
      dispatch_once(&rowCountForTable__defaultOnce, &block);
    }

    v9 = rowCountForTable__classDebugEnabled;

    if (v9 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Counting %@ (%@)", v4, v7, block, v21, v22, v23];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection rowCountForTable:]"];
      [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:444];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = [(PLSQLiteConnection *)self performQuery:v7];
  if ([v15 count] == 1)
  {
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v16 objectForKeyedSubscript:@"count"];
    v18 = [v17 intValue];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

BOOL __39__PLSQLiteConnection_rowCountForTable___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  rowCountForTable__classDebugEnabled = result;
  return result;
}

- (id)sortedSqlFormatedColumnNamesForTableInsert:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM pragma_table_info('%@')", a3];
  v5 = [(PLSQLiteConnection *)self performQuery:v4];

  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v13 = [v6 sortedArrayUsingSelector:sel_compare_];
  if (v13)
  {
    v14 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * j);
          if (([v20 isEqualToString:@"ID"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"FK_ID") & 1) == 0)
          {
            if ([v14 length])
            {
              [v14 appendString:{@", "}];
            }

            [v14 appendFormat:@"%c%@%c", 39, v20, 39];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }

    [v14 appendString:@""]);
    v13 = v23;
  }

  else
  {
    v14 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)sqlFormatedColumnNamesForTableInsert:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PLSQLiteConnection *)self tableInfo:a3];
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"name"];
        v11 = [v10 isEqualToString:@"ID"];

        if ((v11 & 1) == 0)
        {
          if ([v4 length])
          {
            [v4 appendString:{@", "}];
          }

          v12 = [v9 objectForKeyedSubscript:@"name"];
          [v4 appendFormat:@"%c%@%c", 39, v12, 39];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)sqlFormatedColumnNamesForTableSelect:(id)a3 withSystemOffset:(double)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(PLSQLiteConnection *)self tableInfo:a3];
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"name"];
        v13 = [v12 isEqualToString:@"ID"];

        if ((v13 & 1) == 0)
        {
          if ([v6 length])
          {
            [v6 appendString:{@", "}];
          }

          v14 = [v11 objectForKeyedSubscript:@"name"];
          v15 = [v14 isEqualToString:@"timestamp"];

          v16 = [v11 objectForKeyedSubscript:@"name"];
          v17 = v16;
          if (v15)
          {
            [v6 appendFormat:@"%c%@%c - %f", 96, v16, 96, *&a4];
          }

          else
          {
            [v6 appendFormat:@"%c%@%c", 96, v16, 96, v20];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)removeTableNameFromMergeDB:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"DROP TABLE mergeDB.'%@'", v5];
  v7 = [(PLSQLiteConnection *)self performQuery:v6];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM mergeDB.'PLCoreStorage_schemaVersions' WHERE tableName='%@'", v5];;

  v8 = [(PLSQLiteConnection *)self performQuery:v9];
}

- (void)enumerateAllTablesWithBlock:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = a3;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table AND name LIKE PL%% AND name NOT LIKE PLCoreStorage%%;"];
  v20 = v22 = self;
  [(PLSQLiteConnection *)self performQuery:?];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v21 = *v32;
    do
    {
      v7 = 0;
      v24 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 objectForKeyedSubscript:@"name"];
        if (([v10 containsStringInArray:&unk_1F540B890] & 1) == 0)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=\"table\" AND name LIKE \"%@%%\" AND (name LIKE \"%%_Array_%%\" OR name LIKE \"%%_Dynamic\"", v10, v10];
          v11 = [(PLSQLiteConnection *)v22 performQuery:?];
          v12 = objc_opt_new();
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            do
            {
              v17 = 0;
              do
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v27 + 1) + 8 * v17) objectForKeyedSubscript:@"name"];
                [v12 addObject:v18];

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v15);
          }

          v23[2](v23, v10, v12);
          v6 = v21;
          v5 = v24;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (int)rowCountForTableName:(id)a3
{
  v4 = a3;
  if ([v4 rangeOfString:@"'"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"SELECT count(ID) AS count FROM '%@';";
  }

  else
  {
    v5 = @"SELECT count(ID) AS count FROM %@;";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v4];

  v7 = [(PLSQLiteConnection *)self performQuery:v6];
  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:@"count"];
    v10 = [v9 intValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)enumerateTablesWithBlock:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table AND name NOT LIKE PLCoreStorage%% AND name NOT LIKE sqlite%%"];;
  [(PLSQLiteConnection *)self performQuery:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 objectForKeyedSubscript:{@"name", v15}];
        v4[2](v4, v13);

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeDataFromOtherDBFile:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLLogSQLiteConnection();
    if (os_signpost_enabled(v5))
    {
      *buf = 134349056;
      v26 = [PLFileStats fileSizeAtPath:v4];
      _os_signpost_emit_with_name_impl(&dword_1D8611000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MergeDB", " preUnlockDBSize=%{public, signpost.telemetry:number1}lld enableTelemetry=YES ", buf, 0xCu);
    }

    *buf = 0;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ATTACH DATABASE '%@' AS mergeDB", v4];;
    v7 = [(PLSQLiteConnection *)self performQuery:v6 returnValue:buf returnResult:0];
    v8 = *buf;
    v9 = PLLogCommon();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(PLSQLiteConnection *)v4 mergeDataFromOtherDBFile:buf];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "MERGE begins", v24, 2u);
      }

      [(PLSQLiteConnection *)self beginTransaction];
      +[PLUtilities getLastSystemTimeOffset];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247;
      v23[3] = &unk_1E851B048;
      v23[4] = self;
      v23[5] = v13;
      [(PLSQLiteConnection *)self enumerateTablesWithBlock:v23];
      [(PLSQLiteConnection *)self endTransaction];
      *buf = 0;
      v14 = [(PLSQLiteConnection *)self performQuery:@"DETACH DATABASE mergeDB;" returnValue:buf returnResult:0];
      v15 = *buf;
      v16 = PLLogCommon();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection mergeDataFromOtherDBFile:buf];
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_INFO, "MERGE Complete", v24, 2u);
      }
    }

    AnalyticsSendEventLazy();
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_INFO, "MERGE Deleting pre unlock DB", v24, 2u);
    }

    [PLSQLiteConnection removeDBAtFilePath:v4];
    v19 = PLLogSQLiteConnection();
    if (os_signpost_enabled(v19))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D8611000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MergeDB", &unk_1D873724F, v24, 2u);
    }

    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_INFO, "MERGE Deleted the pre unlock db", v24, 2u);
    }

    v12 = *buf == 0;
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection mergeDataFromOtherDBFile:];
    }

    v12 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

void __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mergeDB.'%@'", v3];
  v6 = [v4 rowCountForTableName:v5];

  if (v6 < 1)
  {
    v21 = *(a1 + 32);
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE mergeDB.'%@'", v3];
    v23 = [v21 performQuery:v22 returnValue:0 returnResult:0];
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v26 = v3;
      *&v26[8] = 1024;
      v27[0] = v6;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_INFO, "MERGE : ****** copying %@ (%d)", buf, 0x12u);
    }

    v8 = [*(a1 + 32) rowCountForTableName:v3];
    v9 = [*(a1 + 32) sqlFormatedColumnNamesForTableInsert:v3];
    v10 = [*(a1 + 32) sqlFormatedColumnNamesForTableSelect:v3 withSystemOffset:*(a1 + 40)];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO '%@'(%@) SELECT %@ FROM mergeDB.'%@'", v3, v9, v10, v3];;
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_1();
    }

    v13 = [*(a1 + 32) performQuery:v11 returnValue:0 returnResult:0];
    v14 = [*(a1 + 32) rowCountForTableName:v3];
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v26 = v8;
      *&v26[4] = 1024;
      *&v26[6] = v14;
      LOWORD(v27[0]) = 1024;
      *(v27 + 2) = v6;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_INFO, "MERGE : startCount=%d endCount=%d rowCount=%d", buf, 0x14u);
    }

    if (v8 + v6 != v14)
    {
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_2();
      }
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE mergeDB.'%@'", v3];
    v19 = [v17 performQuery:v18 returnValue:0 returnResult:0];

    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_3();
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)trimAllTablesFromDate:(id)a3 toDate:(id)a4 withTableFilters:(id)a5
{
  v106 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v66 = a4;
  v72 = a5;
  v9 = 0x1E8518000uLL;
  v75 = v8;
  if (+[PLDefaults debugEnabled])
  {
    v10 = objc_opt_class();
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke;
    v98[3] = &unk_1E8519630;
    v100 = v10;
    v99 = @"trimming";
    if (trimAllTablesFromDate_toDate_withTableFilters__defaultOnce != -1)
    {
      dispatch_once(&trimAllTablesFromDate_toDate_withTableFilters__defaultOnce, v98);
    }

    v11 = trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled;

    if (v11 == 1)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming from %@ to %@", v8, v66];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection trimAllTablesFromDate:toDate:withTableFilters:]"];
      [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:660];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v75;
    }
  }

  if (v8 || v66 || v72)
  {
    v17 = [PLDefaults longForKey:@"trimLimit" ifNotSet:1000];
    v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table AND name NOT LIKE PLCoreStorage%% AND name NOT LIKE sqlite%%"];;
    [(PLSQLiteConnection *)self performQuery:?];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v97 = 0u;
    v18 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (!v18)
    {
      goto LABEL_72;
    }

    v19 = v18;
    v71 = *v95;
    v76 = self;
    v77 = v17;
    while (1)
    {
      v20 = 0;
      v68 = v19;
      do
      {
        if (*v95 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v94 + 1) + 8 * v20);
        context = objc_autoreleasePoolPush();
        if ([*(v9 + 2224) debugEnabled])
        {
          v22 = objc_opt_class();
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_289;
          v91[3] = &unk_1E8519630;
          v92 = @"trimming";
          v93 = v22;
          if (trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_287 != -1)
          {
            dispatch_once(&trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_287, v91);
          }

          v23 = trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_288;

          if (v23 == 1)
          {
            v24 = v20;
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming table %@", v21];
            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v27 = [v26 lastPathComponent];
            v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection trimAllTablesFromDate:toDate:withTableFilters:]"];
            [PLCoreStorage logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:673];

            v29 = PLLogCommon();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v104 = v25;
              _os_log_debug_impl(&dword_1D8611000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = v76;
            v9 = 0x1E8518000uLL;
            v20 = v24;
          }
        }

        v79 = [v21 objectForKeyedSubscript:@"name"];
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v30 = [&unk_1F540B8A8 countByEnumeratingWithState:&v87 objects:v102 count:16];
        if (!v30)
        {
          v73 = 0;
LABEL_40:
          v39 = [MEMORY[0x1E695DF70] array];
          if (v72)
          {
            v40 = [v72 objectForKeyedSubscript:v79];

            if (v40)
            {
              v41 = v39;
              v42 = [v72 objectForKeyedSubscript:v79];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              v44 = [v72 objectForKeyedSubscript:v79];
              if (isKindOfClass)
              {
                v39 = v41;
                [v41 addObjectsFromArray:v44];
                v19 = v68;
                goto LABEL_46;
              }

              objc_opt_class();
              v45 = objc_opt_isKindOfClass();

              v39 = v41;
              v19 = v68;
              if (v45)
              {
                v44 = [v72 objectForKeyedSubscript:v79];
                [v39 addObject:v44];
LABEL_46:
              }
            }
          }

          if (![v39 count])
          {
            v46 = [MEMORY[0x1E695DFB0] null];
            [v39 addObject:v46];
          }

          v37 = v79;
          if ([(PLSQLiteConnection *)self tableHasTimestampColumn:v79])
          {
            v70 = v20;
            if (v66 && ([v79 isEqualToString:@"PLApplicationAgent_EventNone_AllApps"] & 1) == 0)
            {
              v47 = MEMORY[0x1E696AEC0];
              [v66 timeIntervalSince1970];
              v49 = [v47 stringWithFormat:@"DELETE FROM '%@' WHERE ID IN (SELECT ID FROM '%@' WHERE timestamp>%f limit %ld)", v79, v79, v48, v17];;
              [(PLSQLiteConnection *)self runTrimQuery:v49];

              v37 = v79;
            }

            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v69 = v39;
            v78 = v39;
            v50 = [v78 countByEnumeratingWithState:&v83 objects:v101 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v84;
              do
              {
                v53 = 0;
                do
                {
                  if (*v84 != v52)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v54 = *(*(&v83 + 1) + 8 * v53);
                  v55 = objc_autoreleasePoolPush();
                  if ([*(v9 + 2224) debugEnabled])
                  {
                    v56 = objc_opt_class();
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_309;
                    block[3] = &unk_1E8519630;
                    v81 = @"trimming";
                    v82 = v56;
                    if (trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_307 != -1)
                    {
                      dispatch_once(&trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_307, block);
                    }

                    v57 = trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_308;

                    v58 = v57 == 1;
                    v37 = v79;
                    if (v58)
                    {
                      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming filter %@", v54];
                      v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
                      v61 = [v60 lastPathComponent];
                      v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection trimAllTablesFromDate:toDate:withTableFilters:]"];
                      [PLCoreStorage logMessage:v59 fromFile:v61 fromFunction:v62 fromLineNumber:737];

                      v63 = PLLogCommon();
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v104 = v59;
                        _os_log_debug_impl(&dword_1D8611000, v63, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }

                      v8 = v75;
                      self = v76;
                      v9 = 0x1E8518000;
                      v17 = v77;
                      v37 = v79;
                    }
                  }

                  [(PLSQLiteConnection *)self trimTable:v37 fromDate:v8 withFilter:v54 withTrimLimit:v17];
                  objc_autoreleasePoolPop(v55);
                  ++v53;
                }

                while (v51 != v53);
                v51 = [v78 countByEnumeratingWithState:&v83 objects:v101 count:16];
              }

              while (v51);
            }

            v19 = v68;
            v39 = v69;
            v20 = v70;
          }

          goto LABEL_70;
        }

        v31 = v30;
        v32 = v20;
        v33 = 0;
        v34 = *v88;
        while (2)
        {
          v35 = 0;
          v36 = v33;
          do
          {
            if (*v88 != v34)
            {
              objc_enumerationMutation(&unk_1F540B8A8);
            }

            v33 = [objc_opt_class() masterTableForTable:v79 andType:*(*(&v87 + 1) + 8 * v35)];

            if (v33 && [v33 length])
            {
              goto LABEL_33;
            }

            ++v35;
            v36 = v33;
          }

          while (v31 != v35);
          v31 = [&unk_1F540B8A8 countByEnumeratingWithState:&v87 objects:v102 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }

        if (!v33)
        {
          v73 = 0;
LABEL_39:
          v17 = v77;
          v20 = v32;
          goto LABEL_40;
        }

LABEL_33:
        v73 = v33;
        if (![v33 length])
        {
          goto LABEL_39;
        }

        v17 = v77;
        v20 = v32;
        if ([(PLSQLiteConnection *)self checkEmptyMasterTable:v33])
        {
          v37 = v79;
          [(PLSQLiteConnection *)self dropTable:v79];
        }

        else
        {
          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@' WHERE FK_ID < (SELECT MIN(ID) FROM '%@') OR FK_ID > (SELECT MAX(ID) FROM '%@')", v79, v33, v33];;
          [(PLSQLiteConnection *)self runTrimQuery:v38];

          v37 = v79;
        }

LABEL_70:

        objc_autoreleasePoolPop(context);
        ++v20;
      }

      while (v20 != v19);
      v19 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
      if (!v19)
      {
LABEL_72:

        break;
      }
    }
  }

  v64 = *MEMORY[0x1E69E9840];
}

BOOL __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled = result;
  return result;
}

BOOL __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_289(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_288 = result;
  return result;
}

BOOL __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_309(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_308 = result;
  return result;
}

- (void)runTrimQuery:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v56 = 0;
  v5 = [PLSQLStatement alloc];
  v6 = [(PLSQLiteConnection *)self dbConnection];
  v7 = [(PLSQLiteConnection *)self dbSem];
  v8 = [(PLSQLStatement *)v5 initWithSQLQuery:v4 forDatabase:v6 withDBSem:v7 result:&v56];

  v9 = 0x1E8518000uLL;
  v46 = v8;
  if (!v8 && +[PLDefaults debugEnabled])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: query=%@", v4];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
    v12 = [v11 lastPathComponent];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
    [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:750];

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    v8 = 0;
    v9 = 0x1E8518000uLL;
  }

  if (v56 == 11)
  {
    v15 = PLLogSQLiteConnection();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection runTrimQuery:];
    }

    [PLUtilities exitWithReason:1001 connection:self];
  }

  if (+[PLDefaults debugEnabled])
  {
    v16 = objc_opt_class();
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __35__PLSQLiteConnection_runTrimQuery___block_invoke;
    v53[3] = &unk_1E8519630;
    v54 = @"trimming";
    v55 = v16;
    if (runTrimQuery__defaultOnce != -1)
    {
      dispatch_once(&runTrimQuery__defaultOnce, v53);
    }

    v17 = runTrimQuery__classDebugEnabled;

    if (v17 == 1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming query: %@", v4];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
      [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:758];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v46;
      v9 = 0x1E8518000uLL;
    }
  }

  v45 = v4;
  v23 = 0;
  if (v8)
  {
    do
    {
      v24 = objc_autoreleasePoolPush();
      v25 = [(PLSQLiteConnection *)self performStatement:v8];
      v26 = [v25 objectAtIndexedSubscript:0];
      v27 = [v26 objectForKeyedSubscript:@"changes"];
      v28 = [v27 intValue];

      v23 = (v23 + 1);
      if ([*(v9 + 2224) debugEnabled])
      {
        v29 = objc_opt_class();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __35__PLSQLiteConnection_runTrimQuery___block_invoke_325;
        block[3] = &unk_1E8519630;
        v51 = @"trimming";
        v52 = v29;
        if (runTrimQuery__defaultOnce_323 != -1)
        {
          dispatch_once(&runTrimQuery__defaultOnce_323, block);
        }

        v30 = runTrimQuery__classDebugEnabled_324;

        if (v30 == 1)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"run %d changes=%d", v23, v28];
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
          v33 = [v32 lastPathComponent];
          v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
          [PLCoreStorage logMessage:v31 fromFile:v33 fromFunction:v34 fromLineNumber:767];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v58 = v31;
            _os_log_debug_impl(&dword_1D8611000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v8 = v46;
          v9 = 0x1E8518000;
        }
      }

      objc_autoreleasePoolPop(v24);
    }

    while (v28);
  }

  if ([*(v9 + 2224) debugEnabled])
  {
    v36 = objc_opt_class();
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __35__PLSQLiteConnection_runTrimQuery___block_invoke_331;
    v47[3] = &unk_1E8519630;
    v48 = @"trimming";
    v49 = v36;
    if (runTrimQuery__defaultOnce_329 != -1)
    {
      dispatch_once(&runTrimQuery__defaultOnce_329, v47);
    }

    v37 = runTrimQuery__classDebugEnabled_330;

    if (v37 == 1)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"runs=%d", v23];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v40 = [v39 lastPathComponent];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
      [PLCoreStorage logMessage:v38 fromFile:v40 fromFunction:v41 fromLineNumber:770];

      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v46;
    }
  }

  objc_autoreleasePoolPop(context);
  v43 = *MEMORY[0x1E69E9840];
}

BOOL __35__PLSQLiteConnection_runTrimQuery___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  runTrimQuery__classDebugEnabled = result;
  return result;
}

BOOL __35__PLSQLiteConnection_runTrimQuery___block_invoke_325(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  runTrimQuery__classDebugEnabled_324 = result;
  return result;
}

BOOL __35__PLSQLiteConnection_runTrimQuery___block_invoke_331(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  runTrimQuery__classDebugEnabled_330 = result;
  return result;
}

- (void)trimTable:(id)a3 fromDate:(id)a4 withFilter:(id)a5 withTrimLimit:(int64_t)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11 || ([MEMORY[0x1E695DFB0] null], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == v11))
  {
    v13 = MEMORY[0x1E696AEC0];
    if (v10)
    {
      [v10 timeIntervalSince1970];
    }

    else
    {
      v14 = 0;
    }

    [v13 stringWithFormat:@"DELETE FROM '%@' WHERE ID IN (SELECT ID FROM '%@' WHERE (timestamp is NULL OR timestamp<%f) limit %ld);", v16, v16, v14, a6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@' WHERE ID IN (SELECT ID FROM '%@' WHERE (%@) limit %ld);", v16, v16, v11, a6];
  }
  v15 = ;
  [(PLSQLiteConnection *)self runTrimQuery:v15];
}

- (BOOL)checkEmptyMasterTable:(id)a3
{
  v4 = a3;
  if ([v4 rangeOfString:@"PLOLD_"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else if ([(PLSQLiteConnection *)self tableExistsForTableName:v4])
    v6 = {;
    v7 = [(PLSQLiteConnection *)self performQuery:v6];
    if ([v7 count] == 1)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [v8 objectForKeyedSubscript:@"rowCount"];
      v5 = [v9 intValue] == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)masterTableForTable:(id)a3 andType:(id)a4
{
  v5 = a3;
  v6 = [v5 rangeOfString:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [objc_opt_class() versionForTable:v5];
    v10 = v9;
    if (v9 && [v9 length])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@", v10];
    }

    else
    {
      v11 = &stru_1F539D228;
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 substringToIndex:v8];
    v7 = [v12 stringWithFormat:@"%@%@", v13, v11];
  }

  return v7;
}

+ (id)versionForTable:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"PLOLD_"])
  {
    v4 = [v3 tokenizedByString:@"_"];
    v5 = [v4 lastObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeIDIndexes
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v3 = [PLSQLStatement alloc];
  v4 = [(PLSQLiteConnection *)self dbConnection];
  v5 = [(PLSQLiteConnection *)self dbSem];
  v6 = [(PLSQLStatement *)v3 initWithSQLQuery:@"select name from sqlite_master where type='index' and name like 'Index_PL%_ID';" forDatabase:v4 withDBSem:v5 result:&v22];

  if (!v22)
  {
    v17 = v6;
    v7 = [(PLSQLStatement *)v6 perform];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = MEMORY[0x1E696AEC0];
          v13 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          v14 = [v12 stringWithFormat:@"DROP INDEX IF EXISTS '%@'", v13];;
          v15 = [(PLSQLiteConnection *)self performQuery:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v6 = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeEmptyOldTables
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name LIKE PLOLD_%% AND name NOT LIKE PLCoreStorage%%"];;
  v4 = [(PLSQLiteConnection *)self performQuery:?];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v37)
  {
    v36 = *v43;
    v35 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v42 + 1) + 8 * v5);
        v7 = *(v3 + 3776);
        v8 = [v6 objectForKeyedSubscript:@"name"];
        v9 = objc_claimAutoreleasedReturnValue();

        v10 = [(PLSQLiteConnection *)self performQuery:v9];
        if ([v10 count] == 1)
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v11 objectForKeyedSubscript:@"rowCount"];
          v13 = [v12 intValue];

          if (!v13)
          {
            v14 = [v6 objectForKeyedSubscript:@"name"];
            [(PLSQLiteConnection *)self dropTable:v14];
          }

          if (+[PLDefaults debugEnabled])
          {
            v15 = objc_opt_class();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke;
            block[3] = &unk_1E8519630;
            v40 = @"removeEmptyOldTables";
            v41 = v15;
            if (removeEmptyOldTables_defaultOnce != -1)
            {
              dispatch_once(&removeEmptyOldTables_defaultOnce, block);
            }

            v16 = removeEmptyOldTables_classDebugEnabled;

            if (v16 == 1)
            {
              v17 = *(v3 + 3776);
              v18 = [v6 objectForKeyedSubscript:@"name"];
              v19 = [v10 objectAtIndexedSubscript:0];
              [v19 objectForKeyedSubscript:@"rowCount"];
              v21 = v20 = v3;
              v22 = [v17 stringWithFormat:@"oldTable=%@ rowCount=%@", v18, v21];

              v23 = [*(v20 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
              v24 = [v23 lastPathComponent];
              v25 = [*(v20 + 3776) stringWithUTF8String:"-[PLSQLiteConnection removeEmptyOldTables]"];
              [PLCoreStorage logMessage:v22 fromFile:v24 fromFunction:v25 fromLineNumber:864];

              v26 = PLLogCommon();
              if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
LABEL_20:
                v3 = 0x1E696A000;
                v4 = v35;

                goto LABEL_21;
              }

LABEL_23:
              *buf = 138412290;
              v47 = v22;
              _os_log_debug_impl(&dword_1D8611000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              goto LABEL_20;
            }
          }
        }

        else if (+[PLDefaults debugEnabled])
        {
          v27 = objc_opt_class();
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke_379;
          v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v38[4] = v27;
          if (removeEmptyOldTables_defaultOnce_377 != -1)
          {
            dispatch_once(&removeEmptyOldTables_defaultOnce_377, v38);
          }

          if (removeEmptyOldTables_classDebugEnabled_378 == 1)
          {
            v22 = [*(v3 + 3776) stringWithFormat:@"ERROR! wrong results for countQuery: %@ results=%@", v9, v10];
            [*(v3 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v29 = v28 = v3;
            v30 = [v29 lastPathComponent];
            v31 = [*(v28 + 3776) stringWithUTF8String:"-[PLSQLiteConnection removeEmptyOldTables]"];
            [PLCoreStorage logMessage:v22 fromFile:v30 fromFunction:v31 fromLineNumber:866];

            v26 = PLLogCommon();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_20;
            }

            goto LABEL_23;
          }
        }

LABEL_21:

        ++v5;
      }

      while (v37 != v5);
      v32 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
      v37 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x1E69E9840];
}

BOOL __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  removeEmptyOldTables_classDebugEnabled = result;
  return result;
}

BOOL __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke_379(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  removeEmptyOldTables_classDebugEnabled_378 = result;
  return result;
}

- (void)dropTable:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PLSQLiteConnection_dropTable___block_invoke;
    block[3] = &unk_1E8519630;
    v39 = @"dropTable";
    v40 = v5;
    if (dropTable__defaultOnce != -1)
    {
      dispatch_once(&dropTable__defaultOnce, block);
    }

    v6 = dropTable__classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %lu", v4, objc_msgSend(v4, "rangeOfString:", @"%"];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection dropTable:]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:875];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([v4 rangeOfString:@"%"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = v4;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  }

  else
  {
    v29 = v4;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name LIKE %@ AND name NOT LIKE PLCoreStorage%%", v4];;
    v14 = [(PLSQLiteConnection *)self performQuery:v13];
    v12 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          [v12 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v17);
    }

    v4 = v29;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE '%@'", *(*(&v30 + 1) + 8 * j)];;
        v27 = [(PLSQLiteConnection *)self performQuery:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v23);
  }

  v28 = *MEMORY[0x1E69E9840];
}

BOOL __32__PLSQLiteConnection_dropTable___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  dropTable__classDebugEnabled = result;
  return result;
}

- (void)dropTables:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PLSQLiteConnection *)self dropTable:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)hashEntryKeyKeys:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke;
  v3[3] = &unk_1E851B070;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

void __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"UPDATE '%@' SET ", a2];
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        [v6 appendString:{@", "}];
      }

      v8 = [v5 objectAtIndexedSubscript:v7];
      [v6 appendFormat:@"%@=''", v8];

      ++v7;
    }

    while ([v5 count] > v7);
  }

  [v6 appendString:@";"];
  if (+[PLDefaults debugEnabled])
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke_2;
    block[3] = &unk_1E8519630;
    v19 = @"HashEntryKeys";
    v20 = v10;
    if (kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_defaultOnce, block);
    }

    v11 = kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_classDebugEnabled;

    if (v11 == 1)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hashUpdateQuery=%@", v6];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection hashEntryKeyKeys:]_block_invoke"];
      [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:912];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v17 = [*(a1 + 32) performQuery:v6];
}

BOOL __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (id)performStatement:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = objc_opt_new();
  v5 = [(PLSQLiteConnection *)self workQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PLSQLiteConnection_performStatement___block_invoke;
  v9[3] = &unk_1E85194C8;
  v12 = &v13;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [PLUtilities dispatchSyncIfNotCallerQueue:v5 withBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __39__PLSQLiteConnection_performStatement___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 32) perform];
  [v3 addObjectsFromArray:v4];

  if ([*(a1 + 32) isInsert])
  {
    v5 = [*(a1 + 40) dbSem];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

    v16 = @"insert_rowid";
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_last_insert_rowid(objc_msgSend(*(a1 + 40), "dbConnection"))}];
    v17[0] = v6;
    v7 = MEMORY[0x1E695DF20];
    v8 = v17;
    v9 = &v16;
LABEL_5:
    v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];

    v12 = [*(a1 + 40) dbSem];
    dispatch_semaphore_signal(v12);

    [*(*(*(a1 + 48) + 8) + 40) addObject:v11];
    goto LABEL_6;
  }

  if ([*(a1 + 32) isDelete])
  {
    v10 = [*(a1 + 40) dbSem];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

    v14 = @"changes";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_changes(objc_msgSend(*(a1 + 40), "dbConnection"))}];
    v15 = v6;
    v7 = MEMORY[0x1E695DF20];
    v8 = &v15;
    v9 = &v14;
    goto LABEL_5;
  }

LABEL_6:
  [*(a1 + 32) reset];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)displaySchema:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 appendFormat:@"pragma table_info('%@')", v4];

  v6 = [(PLSQLiteConnection *)self performQuery:v5];
  v7 = +[PLDefaults debugEnabled];
  if (v6)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Table info: %@", v6];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection displaySchema:]"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:990];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fail no query table info query=%@", v5];;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
    v14 = [v13 lastPathComponent];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection displaySchema:]"];
    [PLCoreStorage logMessage:v8 fromFile:v14 fromFunction:v15 fromLineNumber:989];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

LABEL_8:
  }
}

- (id)performQuery:(id)a3
{
  v4 = a3;
  v27 = 0;
  v5 = [PLSQLStatement alloc];
  v6 = [(PLSQLiteConnection *)self dbConnection];
  v7 = [(PLSQLiteConnection *)self dbSem];
  v8 = [(PLSQLStatement *)v5 initWithSQLQuery:v4 forDatabase:v6 withDBSem:v7 result:&v27];

  if (!v8 && +[PLDefaults debugEnabled])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: query=%@", v4];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
    v11 = [v10 lastPathComponent];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection performQuery:]"];
    [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:997];

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  if (v27 == 11)
  {
    v14 = PLLogSQLiteConnection();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection performQuery:];
    }

    [PLUtilities exitWithReason:1001 connection:self];
  }

  v15 = [(PLSQLiteConnection *)self performStatement:v8];
  if (+[PLDefaults debugEnabled])
  {
    v16 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PLSQLiteConnection_performQuery___block_invoke;
    block[3] = &unk_1E8519630;
    v25 = @"query";
    v26 = v16;
    if (performQuery__defaultOnce != -1)
    {
      dispatch_once(&performQuery__defaultOnce, block);
    }

    v17 = performQuery__classDebugEnabled;

    if (v17 == 1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"query=%@\nresult=%@", v4, v15];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection performQuery:]"];
      [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:1007];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return v15;
}

BOOL __35__PLSQLiteConnection_performQuery___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  performQuery__classDebugEnabled = result;
  return result;
}

- (id)performQuery:(id)a3 returnValue:(int *)a4 returnResult:(BOOL)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5)
  {
    v9 = [(PLSQLiteConnection *)self performQuery:v8];
  }

  else
  {
    errmsg = 0;
    v10 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

    v11 = sqlite3_exec(self->_dbConnection, [v8 UTF8String], 0, 0, &errmsg);
    v12 = v11;
    if (a4)
    {
      *a4 = v11;
    }

    if (v11)
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v19 = v8;
        v20 = 1024;
        v21 = v12;
        v22 = 2080;
        v23 = errmsg;
        _os_log_error_impl(&dword_1D8611000, v13, OS_LOG_TYPE_ERROR, "Failed to execute query %@ - %d and %s", buf, 0x1Cu);
      }

      sqlite3_free(errmsg);
    }

    v14 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(v14);

    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)tableExistsForTableName:(id)a3
{
  v3 = [(PLSQLiteConnection *)self tableInfo:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)tableInfo:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma 'main'.table_info('%@')", a3];
  v5 = [(PLSQLiteConnection *)self performQuery:v4];

  return v5;
}

- (void)setSchemaVersion:(double)a3 forTableName:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [v6 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", v7];
  v11 = [(PLSQLiteConnection *)self performQuery:v8];

  if ([v11 count])
  {
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO %@ ('%@', '%@') VALUES ('%@', '%f')", @"PLCoreStorage_schemaVersions", @"tableName", @"schemaVersion", v7, *&a3];
  }
  v9 = ;

  v10 = [(PLSQLiteConnection *)self performQuery:v9];
}

- (double)schemaVersionForTable:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", a3];
  v5 = [(PLSQLiteConnection *)self performQuery:v4];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKey:@"schemaVersion"];
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)setVersionHash:(id)a3 forTableName:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", v7];
  v12 = [(PLSQLiteConnection *)self performQuery:v9];

  if ([v12 count])
  {
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO %@ ('%@', '%@') VALUES ('%@', '%@')", @"PLCoreStorage_schemaVersions", @"tableName", @"schemaVersion", v7, v8];
  }
  v10 = ;

  v11 = [(PLSQLiteConnection *)self performQuery:v10];
}

- (id)versionHashForTable:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", a3];
  v5 = [(PLSQLiteConnection *)self performQuery:v4];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKey:@"schemaVersion"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createTableName:(id)a3 withColumns:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLSQLiteConnection_createTableName_withColumns___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (createTableName_withColumns__defaultOnce != -1)
    {
      dispatch_once(&createTableName_withColumns__defaultOnce, block);
    }

    if (createTableName_withColumns__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating table: %@", v6];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createTableName:withColumns:]"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:1094];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14 = objc_opt_new();
  v32 = v6;
  objc_msgSend(v14, "appendFormat:", @"CREATE TABLE IF NOT EXISTS '%@' ("), v6;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 1;
    v18 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        if ((v17 & 1) == 0)
        {
          [v14 appendString:{@", "}];
        }

        v21 = [v20 objectForKey:@"column-name"];
        v22 = [v20 objectForKey:@"type"];
        [v14 appendFormat:@"'%@' %@", v21, v22];

        v17 = 0;
      }

      v16 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      v17 = 0;
    }

    while (v16);
  }

  [v14 appendString:@";"]);
  if (+[PLDefaults debugEnabled])
  {
    v23 = objc_opt_class();
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50__PLSQLiteConnection_createTableName_withColumns___block_invoke_474;
    v34[3] = &unk_1E8519630;
    v35 = @"sqlCreate";
    v36 = v23;
    if (createTableName_withColumns__defaultOnce_472 != -1)
    {
      dispatch_once(&createTableName_withColumns__defaultOnce_472, v34);
    }

    v24 = createTableName_withColumns__classDebugEnabled_473;

    if (v24 == 1)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlCreate=%@", v14];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createTableName:withColumns:]"];
      [PLCoreStorage logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:1105];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v30 = [(PLSQLiteConnection *)self performQuery:v14];

  v31 = *MEMORY[0x1E69E9840];
}

BOOL __50__PLSQLiteConnection_createTableName_withColumns___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  createTableName_withColumns__classDebugEnabled = result;
  return result;
}

BOOL __50__PLSQLiteConnection_createTableName_withColumns___block_invoke_474(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  createTableName_withColumns__classDebugEnabled_473 = result;
  return result;
}

- (void)createIndexOnTable:(id)a3 forColumn:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PLSQLiteConnection_createIndexOnTable_forColumn___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (createIndexOnTable_forColumn__defaultOnce != -1)
    {
      dispatch_once(&createIndexOnTable_forColumn__defaultOnce, block);
    }

    if (createIndexOnTable_forColumn__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating Index On: %@.%@", v6, v7];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createIndexOnTable:forColumn:]"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:1110];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS \"Index_%@_%@\" ON \"%@\" (\"%@\"", v6, v7, v6, v7];
  v15 = [(PLSQLiteConnection *)self performQuery:v14];
}

BOOL __51__PLSQLiteConnection_createIndexOnTable_forColumn___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  createIndexOnTable_forColumn__classDebugEnabled = result;
  return result;
}

- (void)createCompositeIndexOnTable:(id)a3 forColumns:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PLSQLiteConnection_createCompositeIndexOnTable_forColumns___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (createCompositeIndexOnTable_forColumns__defaultOnce != -1)
    {
      dispatch_once(&createCompositeIndexOnTable_forColumns__defaultOnce, block);
    }

    if (createCompositeIndexOnTable_forColumns__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating Index On: %@.%@", v6, v7];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createCompositeIndexOnTable:forColumns:]"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:1117];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14 = [MEMORY[0x1E696AD60] stringWithFormat:@"Index_%@_", v6];
  v15 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        [v14 appendString:v21];
        [v15 appendFormat:@", %@", v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = MEMORY[0x1E696AEC0];
  v23 = [v15 substringFromIndex:1];
  v24 = [v22 stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", v14, v6, v23];;

  v25 = [(PLSQLiteConnection *)self performQuery:v24];
  v26 = *MEMORY[0x1E69E9840];
}

BOOL __61__PLSQLiteConnection_createCompositeIndexOnTable_forColumns___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  createCompositeIndexOnTable_forColumns__classDebugEnabled = result;
  return result;
}

BOOL __38__PLSQLiteConnection_beginTransaction__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  beginTransaction_classDebugEnabled = result;
  return result;
}

BOOL __36__PLSQLiteConnection_endTransaction__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  endTransaction_classDebugEnabled = result;
  return result;
}

- (void)buildColumnInsert:(id *)a3 andValueInsert:(id *)a4 forEntry:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a5;
  v6 = [v5 isPPSEnabled];
  v29 = [v5 definedKeys];
  v7 = [v29 mutableCopy];
  v32 = v6;
  if (v6)
  {
    v8 = [v5 arrayKeys];
    [v7 addObjectsFromArray:v8];

    v9 = [v5 dynamicKeys];
    [v7 addObjectsFromArray:v9];
  }

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([v5 entryID] >= 1)
  {
    [v10 appendString:{@"ID, "}];
    [v11 appendString:{@"?, "}];
  }

  [v10 appendString:@"timestamp"];
  [v11 appendString:@"?"];
  v12 = [v5 entryDefinition];
  v13 = [PLEntryDefinition isAggregateForEntryDefinition:v12];

  if (v13)
  {
    [v10 appendString:{@", timeInterval"}];
    [v11 appendString:{@", ?"}];
  }

  v14 = [v5 entryDefinition];
  v15 = [PLEntryDefinition overridesEntryDateForEntryDefinition:v14];

  if (v15)
  {
    [v10 appendString:{@", timestampLogged"}];
    [v11 appendString:{@", ?"}];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v30 = *v34;
    v31 = v5;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        if (([v5 formaterForKey:v19] == 0) | v32 & 1 && objc_msgSend(v5, "staticArraySizeForKey:", v19) >= 1)
        {
          v20 = [v5 staticArraySizeForKey:v19];
          if (v20 >= 1)
          {
            v21 = v20;
            v22 = 0;
            do
            {
              if ([v10 length])
              {
                [v10 appendString:{@", "}];
              }

              if ([v11 length])
              {
                [v11 appendString:{@", "}];
              }

              [v10 appendFormat:@"%@_%d", v19, v22];
              [v11 appendFormat:@"?"];
              v22 = (v22 + 1);
            }

            while (v21 != v22);
          }
        }

        else if ([v29 containsObject:v19])
        {
          if ([v10 length])
          {
            [v10 appendString:{@", "}];
          }

          if ([v11 length])
          {
            [v11 appendString:{@", "}];
          }

          [v10 appendFormat:@"%@", v19];
          [v11 appendFormat:@"?"];
        }

        v5 = v31;
      }

      v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
  }

  v23 = v10;
  *a3 = v10;
  v24 = v11;
  *a4 = v11;

  v25 = *MEMORY[0x1E69E9840];
}

BOOL __67__PLSQLiteConnection_bindEntry_toPreparedStatement_atBindPosition___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bindEntry_toPreparedStatement_atBindPosition__classDebugEnabled = result;
  return result;
}

- (int64_t)writeEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 entryKey];
  v6 = [PLEntryDefinition cacheSQLPrepareStatementForEntryKey:v5];

  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [(PLSQLiteConnection *)self preparedStatements];
  objc_sync_enter(v7);
  v8 = [(PLSQLiteConnection *)self preparedStatements];
  v9 = [v4 entryKey];
  v10 = [v8 objectForKeyedSubscript:v9];

  objc_sync_exit(v7);
  if (!v10)
  {
LABEL_3:
    v11 = objc_opt_new();
    v12 = [v4 entryKey];
    [v11 appendFormat:@"INSERT INTO %@ ", v12];

    v63 = 0;
    v64[0] = 0;
    [(PLSQLiteConnection *)self buildColumnInsert:v64 andValueInsert:&v63 forEntry:v4];
    v13 = v64[0];
    v14 = v63;
    [v11 appendFormat:@" (%@) VALUES (%@);", v13, v14];
    v62 = 0;
    v15 = [PLSQLStatement alloc];
    v16 = [(PLSQLiteConnection *)self dbConnection];
    v17 = [(PLSQLiteConnection *)self dbSem];
    v10 = [(PLSQLStatement *)v15 initWithSQLQuery:v11 forDatabase:v16 withDBSem:v17 result:&v62];

    if (!v10 && +[PLDefaults debugEnabled])
    {
      v55 = v13;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", v4];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeEntry:]"];
      [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:1347];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v23 = MEMORY[0x1E696AEC0];
      v24 = [v4 entryKey];
      v25 = [v23 stringWithFormat:@"%@", v24];
      [(PLSQLiteConnection *)self displaySchema:v25];

      v13 = v55;
    }

    if (v62 == 11)
    {
      v26 = PLLogSQLiteConnection();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection writeEntry:];
      }

      [PLUtilities exitWithReason:1001 connection:self];
    }

    if (v10 != 0 && v6)
    {
      v27 = [(PLSQLiteConnection *)self preparedStatements];
      objc_sync_enter(v27);
      v28 = [(PLSQLiteConnection *)self preparedStatements];
      v29 = [v4 entryKey];
      [v28 setObject:v10 forKeyedSubscript:v29];

      objc_sync_exit(v27);
    }
  }

  [(PLSQLiteConnection *)self bindEntry:v4 toPreparedStatement:v10 atBindPosition:1];
  v30 = [(PLSQLiteConnection *)self performStatement:v10];
  if (+[PLDefaults debugEnabled])
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = [v4 entryKey];
    v33 = [v31 stringWithFormat:@"writeEntry_%@", v32];

    v34 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__PLSQLiteConnection_writeEntry___block_invoke;
    block[3] = &unk_1E8519630;
    v60 = @"writeEntry";
    v61 = v34;
    if (writeEntry__defaultOnce_0 != -1)
    {
      dispatch_once(&writeEntry__defaultOnce_0, block);
    }

    v35 = writeEntry__classDebugEnabled_0;

    if (v35)
    {
      goto LABEL_22;
    }

    v36 = objc_opt_class();
    v37 = v33;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __33__PLSQLiteConnection_writeEntry___block_invoke_2;
    v56[3] = &unk_1E8519630;
    v57 = v37;
    v58 = v36;
    if (writeEntry__defaultOnce_570 != -1)
    {
      dispatch_once(&writeEntry__defaultOnce_570, v56);
    }

    v38 = writeEntry__classDebugEnabled_571;

    if (v38 == 1)
    {
LABEL_22:
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insert_rowid=%@\nentry=%@\nstatement=%@", v30, v4, v10];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v41 = [v40 lastPathComponent];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeEntry:]"];
      [PLCoreStorage logMessage:v39 fromFile:v41 fromFunction:v42 fromLineNumber:1370];

      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([v30 count])
  {
    v44 = [v30 objectAtIndexedSubscript:0];
    v45 = [v44 objectForKeyedSubscript:@"insert_rowid"];
    v46 = [v45 longLongValue];

    if (v46 != [v4 entryID] && objc_msgSend(v4, "entryID") != 0x8000000000000000)
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = [v4 entryKey];
      v49 = [v47 stringWithFormat:@"future mismatch! entryKey=%@ entryID=%lld insertID=%lld entry_addr=%p entry=%@", v48, objc_msgSend(v4, "entryID"), v46, v4, v4];

      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v51 = [v50 lastPathComponent];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeEntry:]"];
      [PLCoreStorage logMessage:v49 fromFile:v51 fromFunction:v52 fromLineNumber:1376];

      v53 = PLLogCommon();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    [v4 setEntryID:v46];
    if ([v4 hasDynamicKeys])
    {
      [(PLSQLiteConnection *)self writeDynamicEntries:v4];
    }

    if ([v4 hasArrayKeys])
    {
      [(PLSQLiteConnection *)self writeArrayEntries:v4];
    }

    [v4 setExistsInDB:1];
  }

  else
  {
    v46 = -1;
  }

  return v46;
}

BOOL __33__PLSQLiteConnection_writeEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeEntry__classDebugEnabled_0 = result;
  return result;
}

BOOL __33__PLSQLiteConnection_writeEntry___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeEntry__classDebugEnabled_571 = result;
  return result;
}

- (void)writeDynamicEntriesToPPS:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 entryKey];
  v6 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:v5];

  v7 = [v4 dynamicKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

  v67 = v8;
  if ([v8 count])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v4 entryKey];
    v11 = [v9 stringWithFormat:@"%@_Dynamic", v10];

    v64 = v11;
    v63 = [(PLSQLiteConnection *)self sortedSqlFormatedColumnNamesForTableInsert:v11];
    v12 = objc_opt_new();
    v13 = [v6 allKeys];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        if (v15)
        {
          [v12 appendString:{@", "}];
        }

        [v12 appendString:@"?"];
        ++v15;
        v16 = [v6 allKeys];
        v17 = v12;
        v18 = [v16 count];

        v19 = v18 > v15;
        v12 = v17;
      }

      while (v19);
    }

    [v12 appendString:@""]);
    v20 = objc_opt_new();
    objc_msgSend(v20, "appendFormat:", @"INSERT INTO %@ ('FK_ID',"), v64;
    [v20 appendString:v63];
    [v20 appendString:@" VALUES "];
    v21 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"(?, %@"), v12;
    v22 = [v4 objectForKeyedSubscript:@"__PPSKVPairs__"];
    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection writeDynamicEntriesToPPS:];
    }

    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection writeDynamicEntriesToPPS:v22];
    }

    if ([v22 count])
    {
      v25 = 0;
      do
      {
        if (v25)
        {
          [v20 appendString:{@", "}];
        }

        [v20 appendString:v21];
        ++v25;
      }

      while ([v22 count] > v25);
    }

    v66 = v22;
    [v20 appendString:@";"];
    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection writeDynamicEntriesToPPS:];
    }

    v74 = 0;
    v27 = [PLSQLStatement alloc];
    v28 = [(PLSQLiteConnection *)self dbConnection];
    v29 = [(PLSQLiteConnection *)self dbSem];
    v30 = [(PLSQLStatement *)v27 initWithSQLQuery:v20 forDatabase:v28 withDBSem:v29 result:&v74];

    v69 = v30;
    if (v30)
    {
      v31 = v66;
      if (v74 == 11)
      {
        v32 = PLLogSQLiteConnection();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection writeDynamicEntriesToPPS:];
        }

        [PLUtilities exitWithReason:1001 connection:self];
      }

      v60 = v21;
      v61 = v12;
      v62 = self;
      [(PLSQLiteConnection *)self beginTransaction];
      if ([v66 count])
      {
        v33 = 0;
        v34 = 1;
        v65 = v4;
        do
        {
          v35 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "entryID")}];
          [v69 bindValue:v35 withFormater:5 atPosition:v34];

          v34 = (v34 + 1);
          v68 = v33;
          v36 = [v31 objectAtIndexedSubscript:v33];
          v37 = v67;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v38 = [v37 countByEnumeratingWithState:&v70 objects:v75 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v71;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                v42 = v6;
                if (*v71 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v43 = *(*(&v70 + 1) + 8 * i);
                v44 = [v36 objectForKeyedSubscript:v43];
                v45 = v43;
                v6 = v42;
                [v69 bindValue:v44 withFormater:+[PLEntry dataFormatForMetric:auxiliaryMetrics:](PLEntry atPosition:{"dataFormatForMetric:auxiliaryMetrics:", v45, v42), v34}];
                v34 = (v34 + 1);
              }

              v39 = [v37 countByEnumeratingWithState:&v70 objects:v75 count:16];
            }

            while (v39);
          }

          v33 = v68 + 1;
          v31 = v66;
          v4 = v65;
        }

        while ([v66 count] > (v68 + 1));
      }

      v46 = [(PLSQLiteConnection *)v62 performStatement:v69];
      v47 = v46;
      if ((!v46 || ![v46 count]) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
      {
        v48 = v6;
        v49 = MEMORY[0x1E696AEC0];
        v50 = [v4 entryKey];
        v51 = [v49 stringWithFormat:@"Empty insert ID: Error while inserting dynamic entry for %@", v50];

        v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        v53 = [v52 lastPathComponent];
        v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntriesToPPS:]"];
        [PLCoreStorage logMessage:v51 fromFile:v53 fromFunction:v54 fromLineNumber:1473];

        v55 = PLLogCommon();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v6 = v48;
        v31 = v66;
      }

      [(PLSQLiteConnection *)v62 endTransaction];
      v12 = v61;
      v21 = v60;
    }

    else
    {
      v56 = PLLogCommon();
      v31 = v66;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection writeDynamicEntriesToPPS:];
      }

      v57 = MEMORY[0x1E696AEC0];
      v47 = [v4 entryKey];
      v58 = [v57 stringWithFormat:@"%@_%@", v47, @"Dynamic"];
      [(PLSQLiteConnection *)self displaySchema:v58];
    }
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)writeDynamicEntries:(id)a3
{
  v118 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 isPPSEnabled])
  {
    v95 = self;
    v98 = v4;
    v5 = [v4 entryKey];
    v6 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:v5];

    v101 = [v98 dynamicKeys];
    if (![v101 count])
    {

LABEL_76:
      v4 = v98;
      goto LABEL_77;
    }

    v7 = [(PLSQLiteConnection *)self preparedDynamicStatements];
    objc_sync_enter(v7);
    v8 = [(PLSQLiteConnection *)self preparedDynamicStatements];
    v9 = [v98 entryKey];
    v10 = [v8 objectForKeyedSubscript:v9];

    objc_sync_exit(v7);
    if (v10)
    {
      v99 = v10;
      v11 = [v6 objectForKeyedSubscript:@"key"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v6 objectForKeyedSubscript:@"key"];
        v14 = [v13 allKeys];
        obj = [v14 sortedArrayUsingSelector:sel_compare_];

        v15 = [obj count] + 3;
      }

      else
      {
        obj = 0;
        v15 = 4;
      }

      v28 = v98;
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_46;
      }

      v29 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__PLSQLiteConnection_writeDynamicEntries___block_invoke_629;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v29;
      if (writeDynamicEntries__defaultOnce_627 != -1)
      {
        dispatch_once(&writeDynamicEntries__defaultOnce_627, block);
      }

      if (writeDynamicEntries__classDebugEnabled_628 != 1)
      {
        goto LABEL_46;
      }

      v30 = MEMORY[0x1E696AEC0];
      v31 = [v98 entryKey];
      v16 = [v30 stringWithFormat:@"Retrieving dynamic statement for %@, bindposition count = %u", v31, v15];

      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v33 = [v32 lastPathComponent];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
      [PLCoreStorage logMessage:v16 fromFile:v33 fromFunction:v34 fromLineNumber:1556];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_45:

      v28 = v98;
LABEL_46:
      v56 = [v28 entryKey];
      v100 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:v56];

      [(PLSQLiteConnection *)v95 beginTransaction];
      if ([v101 count])
      {
        v57 = 0;
        do
        {
          v58 = [v101 objectAtIndexedSubscript:v57];
          v96 = [v98 objectForKeyedSubscript:v58];

          v59 = [v98 entryKey];
          v60 = [v101 objectAtIndexedSubscript:v57];
          v61 = [PLUtilities shouldLogForEntryKey:v59 withKey:v60 andValue:v96];

          if (v61)
          {
            v62 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v98, "entryID")}];
            [(PLSQLStatement *)v99 bindValue:v62 withFormater:5 atPosition:1];

            v63 = [v100 objectForKeyedSubscript:@"value"];
            v64 = [v63 objectForKeyedSubscript:@"Type"];
            -[PLSQLStatement bindValue:withFormater:atPosition:](v99, "bindValue:withFormater:atPosition:", v96, [v64 shortValue], 2);

            v65 = [v100 objectForKeyedSubscript:@"unit"];

            if (v65)
            {
              v66 = [v100 objectForKeyedSubscript:@"unit"];
              v67 = [v66 objectForKeyedSubscript:@"Unit"];
              v68 = [v100 objectForKeyedSubscript:@"unit"];
              v69 = [v68 objectForKeyedSubscript:@"Type"];
              -[PLSQLStatement bindValue:withFormater:atPosition:](v99, "bindValue:withFormater:atPosition:", v67, [v69 shortValue], 3);

              v70 = 4;
            }

            else
            {
              v70 = 3;
            }

            v71 = [v100 objectForKeyedSubscript:@"key"];
            objc_opt_class();
            v72 = objc_opt_isKindOfClass();

            if (v72)
            {
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v73 = obj;
              v74 = [v73 countByEnumeratingWithState:&v102 objects:v116 count:16];
              if (v74)
              {
                v75 = *v103;
                do
                {
                  for (i = 0; i != v74; ++i)
                  {
                    if (*v103 != v75)
                    {
                      objc_enumerationMutation(v73);
                    }

                    v77 = *(*(&v102 + 1) + 8 * i);
                    v78 = [v101 objectAtIndexedSubscript:v57];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v79 = [v78 objectForKeyedSubscript:v77];

                      v80 = [v98 entryKey];
                      v81 = [PLUtilities logModeForEntryKey:v80 withKey:v77 andValue:v79];

                      if (v81 == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v78 = [v79 lastPathComponent];
                      }

                      else
                      {
                        v78 = v79;
                      }
                    }

                    v82 = [v100 objectForKeyedSubscript:@"key"];
                    v83 = [v82 objectForKeyedSubscript:v77];
                    v84 = [v83 objectForKeyedSubscript:@"Type"];
                    -[PLSQLStatement bindValue:withFormater:atPosition:](v99, "bindValue:withFormater:atPosition:", v78, [v84 shortValue], v70);

                    v70 = (v70 + 1);
                  }

                  v74 = [v73 countByEnumeratingWithState:&v102 objects:v116 count:16];
                }

                while (v74);
              }
            }

            else
            {
              v73 = [v101 objectAtIndexedSubscript:v57];
              [(PLSQLStatement *)v99 bindValue:v73 withFormater:1 atPosition:v70];
            }

            v85 = [(PLSQLiteConnection *)v95 performStatement:v99];
            v86 = v85;
            if ((!v85 || ![v85 count]) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
            {
              v87 = MEMORY[0x1E696AEC0];
              v88 = [v98 entryKey];
              v89 = [v87 stringWithFormat:@"Empty insert ID: Error while inserting dynamic entry for %@", v88];

              v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
              v91 = [v90 lastPathComponent];
              v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
              [PLCoreStorage logMessage:v89 fromFile:v91 fromFunction:v92 fromLineNumber:1601];

              v93 = PLLogCommon();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v115 = v89;
                _os_log_debug_impl(&dword_1D8611000, v93, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          ++v57;
        }

        while ([v101 count] > v57);
      }

      [(PLSQLiteConnection *)v95 endTransaction];

      goto LABEL_76;
    }

    v16 = objc_opt_new();
    v17 = [v98 entryKey];
    objc_msgSend(v16, "appendFormat:", @"INSERT INTO %@_%@ (FK_ID, value"), v17, CFSTR("Dynamic");

    v18 = objc_opt_new();
    -[NSObject appendString:](v18, "appendString:", @"(?, ?");
    v19 = [v6 objectForKeyedSubscript:@"unit"];

    if (v19)
    {
      [v16 appendString:{@", unit"}];
      [v18 appendString:@", ?"];
    }

    v20 = [v6 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v22 = [v6 objectForKeyedSubscript:@"key"];
      v23 = [v22 allKeys];
      v24 = [v23 sortedArrayUsingSelector:sel_compare_];

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      obj = v24;
      v25 = [obj countByEnumeratingWithState:&v110 objects:v117 count:16];
      if (v25)
      {
        v26 = *v111;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v111 != v26)
            {
              objc_enumerationMutation(obj);
            }

            [v16 appendFormat:@", %@", *(*(&v110 + 1) + 8 * j)];
            [v18 appendString:@", ?"];
          }

          v25 = [obj countByEnumeratingWithState:&v110 objects:v117 count:16];
        }

        while (v25);
      }
    }

    else
    {
      [v16 appendString:{@", key"}];
      [v18 appendString:@", ?"];
      obj = 0;
    }

    [v18 appendString:@""]);
    [v16 appendString:@" VALUES "]);
    [v16 appendString:v18];
    [v16 appendString:@";"];
    *buf = 0;
    v35 = [PLSQLStatement alloc];
    v36 = [(PLSQLiteConnection *)v95 dbConnection];
    v37 = [(PLSQLiteConnection *)v95 dbSem];
    v99 = [(PLSQLStatement *)v35 initWithSQLQuery:v16 forDatabase:v36 withDBSem:v37 result:buf];

    if (v99)
    {
      v38 = [(PLSQLiteConnection *)v95 preparedDynamicStatements];
      objc_sync_enter(v38);
      v39 = [(PLSQLiteConnection *)v95 preparedDynamicStatements];
      v40 = [v98 entryKey];
      [v39 setObject:v99 forKeyedSubscript:v40];

      objc_sync_exit(v38);
    }

    else
    {
      if (!+[PLDefaults debugEnabled])
      {
LABEL_34:
        if (+[PLDefaults debugEnabled])
        {
          v48 = objc_opt_class();
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __42__PLSQLiteConnection_writeDynamicEntries___block_invoke;
          v107[3] = &unk_1E8519630;
          v108 = @"writeDynamic";
          v109 = v48;
          if (writeDynamicEntries__defaultOnce != -1)
          {
            dispatch_once(&writeDynamicEntries__defaultOnce, v107);
          }

          v49 = writeDynamicEntries__classDebugEnabled;

          if (v49)
          {
            v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writeDynamic=%@", v16];
            v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v52 = [v51 lastPathComponent];
            v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
            [PLCoreStorage logMessage:v50 fromFile:v52 fromFunction:v53 fromLineNumber:1541];

            v54 = PLLogCommon();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }
        }

        if (*buf == 11)
        {
          v55 = PLLogSQLiteConnection();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [PLSQLiteConnection writeDynamicEntries:];
          }

          [PLUtilities exitWithReason:1001 connection:v95];
        }

        goto LABEL_45;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", v98];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v43 = [v42 lastPathComponent];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
      [PLCoreStorage logMessage:v41 fromFile:v43 fromFunction:v44 fromLineNumber:1533];

      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v46 = MEMORY[0x1E696AEC0];
      v38 = [v98 entryKey];
      v47 = [v46 stringWithFormat:@"%@_%@", v38, @"Dynamic"];
      [(PLSQLiteConnection *)v95 displaySchema:v47];
    }

    goto LABEL_34;
  }

  [(PLSQLiteConnection *)self writeDynamicEntriesToPPS:v4];
LABEL_77:

  v94 = *MEMORY[0x1E69E9840];
}

BOOL __42__PLSQLiteConnection_writeDynamicEntries___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeDynamicEntries__classDebugEnabled = result;
  return result;
}

BOOL __42__PLSQLiteConnection_writeDynamicEntries___block_invoke_629(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  writeDynamicEntries__classDebugEnabled_628 = result;
  return result;
}

- (void)writeArrayEntries:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 entryKey];
  v52 = [PLEntryDefinition arrayKeyConfigsForEntryKey:v4];

  v5 = [v3 arrayKeys];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0x1E8518000uLL;
    v60 = *v68;
    v53 = v5;
    do
    {
      v9 = 0;
      v54 = v7;
      do
      {
        if (*v68 != v60)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v67 + 1) + 8 * v9);
        v11 = [v3 objectForKeyedSubscript:v10];
        v12 = *(v8 + 2584);
        v13 = [v3 entryKey];
        LODWORD(v12) = [v12 shouldLogForEntryKey:v13 withKey:v10 andValue:v11];

        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v11 count])
            {
              v57 = v11;
              v14 = v11;
              if ([v3 isPPSEnabled])
              {
                v15 = [PLEntry dataFormatForMetric:v10 auxiliaryMetrics:v52];
                v16 = v10;
              }

              else
              {
                v17 = [v3 definitionForKey:v10];
                v18 = [v17 objectForKeyedSubscript:@"TypeArrayValue"];
                v15 = [v18 shortValue];

                v16 = @"value";
              }

              v19 = MEMORY[0x1E696AD60];
              v20 = [v3 entryKey];
              v21 = [v19 stringWithFormat:@"INSERT INTO %@_Array_%@ (FK_ID, %@) VALUES ", v20, v10, v16];

              if (v15 <= 1)
              {
                v22 = 1;
              }

              else
              {
                v22 = v15;
              }

              v55 = v22;
              if ([v14 count])
              {
                v23 = 0;
                do
                {
                  if (v23)
                  {
                    [v21 appendString:{@", "}];
                  }

                  [v21 appendString:{@"(?, ?)"}];
                  ++v23;
                }

                while ([v14 count] > v23);
              }

              v66 = 0;
              v24 = [PLSQLStatement alloc];
              v25 = [(PLSQLiteConnection *)self dbConnection];
              v26 = [(PLSQLiteConnection *)self dbSem];
              v27 = [(PLSQLStatement *)v24 initWithSQLQuery:v21 forDatabase:v25 withDBSem:v26 result:&v66];

              v58 = v16;
              if (!v27 && +[PLDefaults debugEnabled])
              {
                v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", v3];
                v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
                v30 = [v29 lastPathComponent];
                v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeArrayEntries:]"];
                [PLCoreStorage logMessage:v28 fromFile:v30 fromFunction:v31 fromLineNumber:1651];

                v32 = PLLogCommon();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v72 = v28;
                  _os_log_debug_impl(&dword_1D8611000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v33 = MEMORY[0x1E696AEC0];
                v34 = [v3 entryKey];
                v35 = [v33 stringWithFormat:@"%@_Array_%@", v34, v10];
                [(PLSQLiteConnection *)self displaySchema:v35];
              }

              if (v66 == 11)
              {
                v36 = PLLogSQLiteConnection();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  [(PLSQLiteConnection *)&v64 writeArrayEntries:v65, v36];
                }

                [PLUtilities exitWithReason:1001 connection:self];
              }

              if ([v14 count])
              {
                v37 = 0;
                v38 = 1;
                do
                {
                  v39 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "entryID")}];
                  [(PLSQLStatement *)v27 bindValue:v39 withFormater:5 atPosition:v38];

                  v40 = [v14 objectAtIndexedSubscript:v37];
                  [(PLSQLStatement *)v27 bindValue:v40 withFormater:v55 atPosition:(v38 + 1)];

                  ++v37;
                  v38 = (v38 + 2);
                }

                while ([v14 count] > v37);
              }

              v41 = +[PLDefaults debugEnabled];
              v43 = v58;
              v42 = self;
              v7 = v54;
              v8 = 0x1E8518000;
              if (v41)
              {
                v44 = objc_opt_class();
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __40__PLSQLiteConnection_writeArrayEntries___block_invoke;
                block[3] = &unk_1E8519630;
                v62 = @"writeArray";
                v63 = v44;
                if (writeArrayEntries__defaultOnce != -1)
                {
                  dispatch_once(&writeArrayEntries__defaultOnce, block);
                }

                v45 = writeArrayEntries__classDebugEnabled;

                v42 = self;
                if (v45 == 1)
                {
                  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlArrayInsert=%@", v21];
                  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
                  v47 = [v46 lastPathComponent];
                  v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeArrayEntries:]"];
                  [PLCoreStorage logMessage:v56 fromFile:v47 fromFunction:v48 fromLineNumber:1670];

                  v49 = PLLogCommon();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v72 = v56;
                    _os_log_debug_impl(&dword_1D8611000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v43 = v58;
                  v42 = self;
                  v7 = v54;
                  v8 = 0x1E8518000;
                }
              }

              v50 = [(PLSQLiteConnection *)v42 performStatement:v27];

              v5 = v53;
              v11 = v57;
            }
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v7);
  }

  v51 = *MEMORY[0x1E69E9840];
}

BOOL __40__PLSQLiteConnection_writeArrayEntries___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeArrayEntries__classDebugEnabled = result;
  return result;
}

- (void)updateEntry:(id)a3
{
  v101 = *MEMORY[0x1E69E9840];
  v89 = a3;
  v3 = [v89 definedKeys];
  if ([v3 count])
  {
    v4 = [v89 entryKey];
    v5 = [PLEntryDefinition cacheSQLPrepareStatementForEntryKey:v4];

    v87 = v5;
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = [(PLSQLiteConnection *)self preparedUpdateStatements];
    objc_sync_enter(v6);
    v7 = [(PLSQLiteConnection *)self preparedUpdateStatements];
    v8 = [v89 entryKey];
    v9 = [v7 objectForKeyedSubscript:v8];

    objc_sync_exit(v6);
    if (v9)
    {
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_42;
      }

      v10 = objc_opt_class();
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __34__PLSQLiteConnection_updateEntry___block_invoke_668;
      v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v92[4] = v10;
      if (updateEntry__defaultOnce_666 != -1)
      {
        dispatch_once(&updateEntry__defaultOnce_666, v92);
      }

      if (updateEntry__classDebugEnabled_667 != 1)
      {
        goto LABEL_42;
      }

      v11 = MEMORY[0x1E696AEC0];
      v12 = [v89 entryKey];
      v13 = [v11 stringWithFormat:@"Reusing cached updated statement for %@", v12];

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
      [PLCoreStorage logMessage:v13 fromFile:v15 fromFunction:v16 fromLineNumber:1736];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    else
    {
LABEL_11:
      v18 = MEMORY[0x1E696AD60];
      v19 = [v89 entryKey];
      v13 = [v18 stringWithFormat:@"UPDATE '%@' SET ", v19];

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v20 = v3;
      v21 = [v20 countByEnumeratingWithState:&v94 objects:v100 count:16];
      if (v21)
      {
        v22 = *v95;
        v23 = 1;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v95 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v94 + 1) + 8 * i);
            if ((v23 & 1) == 0)
            {
              [v13 appendString:{@", "}];
            }

            [v13 appendFormat:@"%@=?", v25];
            v23 = 0;
          }

          v21 = [v20 countByEnumeratingWithState:&v94 objects:v100 count:16];
          v23 = 0;
        }

        while (v21);

        [v13 appendString:{@", "}];
      }

      else
      {
      }

      [v13 appendString:@"timestamp=?"];
      [v13 appendString:@" WHERE ID == ?"];
      *buf = 0;
      v26 = [PLSQLStatement alloc];
      v27 = [(PLSQLiteConnection *)self dbConnection];
      v28 = [(PLSQLiteConnection *)self dbSem];
      v9 = [(PLSQLStatement *)v26 initWithSQLQuery:v13 forDatabase:v27 withDBSem:v28 result:buf];

      if (!v9 && +[PLDefaults debugEnabled])
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", v89];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        v31 = [v30 lastPathComponent];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
        [PLCoreStorage logMessage:v29 fromFile:v31 fromFunction:v32 fromLineNumber:1713];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v34 = [v89 entryKey];
        [(PLSQLiteConnection *)self displaySchema:v34];
      }

      if (*buf == 11)
      {
        v35 = PLLogSQLiteConnection();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection updateEntry:];
        }

        [PLUtilities exitWithReason:1001 connection:self];
      }

      if (!v9)
      {
        v79 = MEMORY[0x1E696AEC0];
        v80 = [v89 entryKey];
        v81 = [v79 stringWithFormat:@"ERROR: prepared update statement failed for %@", v80];

        v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        v83 = [v82 lastPathComponent];
        v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
        [PLCoreStorage logMessage:v81 fromFile:v83 fromFunction:v84 fromLineNumber:1732];

        v85 = PLLogCommon();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v9 = 0;
LABEL_74:

        goto LABEL_75;
      }

      if (v87)
      {
        if (+[PLDefaults debugEnabled])
        {
          v36 = objc_opt_class();
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __34__PLSQLiteConnection_updateEntry___block_invoke;
          v93[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v93[4] = v36;
          if (updateEntry__defaultOnce != -1)
          {
            dispatch_once(&updateEntry__defaultOnce, v93);
          }

          if (updateEntry__classDebugEnabled == 1)
          {
            v37 = MEMORY[0x1E696AEC0];
            v38 = [v89 entryKey];
            v39 = [v37 stringWithFormat:@"Caching update statement for %@", v38];

            v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v41 = [v40 lastPathComponent];
            v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
            [PLCoreStorage logMessage:v39 fromFile:v41 fromFunction:v42 fromLineNumber:1726];

            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }
        }

        v44 = [(PLSQLiteConnection *)self preparedUpdateStatements];
        objc_sync_enter(v44);
        v45 = [(PLSQLiteConnection *)self preparedUpdateStatements];
        v46 = [v89 entryKey];
        [v45 setObject:v9 forKeyedSubscript:v46];

        objc_sync_exit(v44);
      }
    }

LABEL_42:
    if ([v3 count])
    {
      v47 = 0;
      while (1)
      {
        v48 = [v3 objectAtIndexedSubscript:v47];
        v49 = [v89 objectForKeyedSubscript:v48];

        v50 = [v3 objectAtIndexedSubscript:v47];
        v51 = [v89 formaterForKey:v50];

        v52 = [v89 entryKey];
        v53 = [v3 objectAtIndexedSubscript:v47];
        v54 = [PLUtilities logModeForEntryKey:v52 withKey:v53 andValue:v49];

        if (v54)
        {
          if (v54 == 1)
          {
            if (!+[PLDefaults debugEnabled])
            {
              goto LABEL_64;
            }

            v56 = objc_opt_class();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __34__PLSQLiteConnection_updateEntry___block_invoke_674;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v56;
            if (updateEntry__defaultOnce_672 != -1)
            {
              dispatch_once(&updateEntry__defaultOnce_672, block);
            }

            if (updateEntry__classDebugEnabled_673 != 1)
            {
              goto LABEL_64;
            }

            v57 = MEMORY[0x1E696AEC0];
            v58 = [v89 entryKey];
            v59 = [v3 objectAtIndexedSubscript:v47];
            v60 = [v57 stringWithFormat:@"Allowlist denied: entry = %@ key = %@ value = %@ withFormatter = %hd", v58, v59, v49, v51];

            v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v62 = [v61 lastPathComponent];
            v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
            [PLCoreStorage logMessage:v60 fromFile:v62 fromFunction:v63 fromLineNumber:1756];

            v64 = PLLogCommon();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v99 = v60;
              _os_log_debug_impl(&dword_1D8611000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

LABEL_63:

            goto LABEL_64;
          }

          if (v54 != 3)
          {
            if (!+[PLDefaults debugEnabled])
            {
              goto LABEL_64;
            }

            v65 = objc_opt_class();
            v90[0] = MEMORY[0x1E69E9820];
            v90[1] = 3221225472;
            v90[2] = __34__PLSQLiteConnection_updateEntry___block_invoke_680;
            v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v90[4] = v65;
            if (updateEntry__defaultOnce_678 != -1)
            {
              dispatch_once(&updateEntry__defaultOnce_678, v90);
            }

            if (updateEntry__classDebugEnabled_679 != 1)
            {
              goto LABEL_64;
            }

            v66 = MEMORY[0x1E696AEC0];
            v67 = [v89 entryKey];
            v68 = [v3 objectAtIndexedSubscript:v47];
            v60 = [v66 stringWithFormat:@"Allowlist denied error case: entry = %@ key = %@ value = %@ withFormatter = %hd", v67, v68, v49, v51];

            v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v70 = [v69 lastPathComponent];
            v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
            [PLCoreStorage logMessage:v60 fromFile:v70 fromFunction:v71 fromLineNumber:1759];

            v64 = PLLogCommon();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v99 = v60;
              _os_log_debug_impl(&dword_1D8611000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = [v49 lastPathComponent];

            v49 = v55;
          }
        }

        [(PLSQLStatement *)v9 bindValue:v49 withFormater:v51 atPosition:(v47 + 1)];
LABEL_64:

        if ([v3 count] <= ++v47)
        {
          goto LABEL_67;
        }
      }
    }

    LODWORD(v47) = 0;
LABEL_67:
    v72 = MEMORY[0x1E696AD98];
    v73 = [v89 entryDate];
    [v73 timeIntervalSince1970];
    v74 = [v72 numberWithDouble:?];
    [(PLSQLStatement *)v9 bindValue:v74 withFormater:6 atPosition:(v47 + 1)];

    v75 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v89, "entryID")}];
    [(PLSQLStatement *)v9 bindValue:v75 withFormater:5 atPosition:(v47 + 2)];

    v76 = [(PLSQLiteConnection *)self performStatement:v9];
    if ([v89 hasArrayKeys])
    {
      v77 = [v89 entryKey];
      -[PLSQLiteConnection deleteArrayEntriesForKey:withRowID:](self, "deleteArrayEntriesForKey:withRowID:", v77, [v89 entryID]);

      [(PLSQLiteConnection *)self writeArrayEntries:v89];
    }

    if ([v89 hasDynamicKeys])
    {
      v78 = [v89 entryKey];
      -[PLSQLiteConnection deleteDynamicEntriesForKey:withRowID:](self, "deleteDynamicEntriesForKey:withRowID:", v78, [v89 entryID]);

      [(PLSQLiteConnection *)self writeDynamicEntries:v89];
    }

    goto LABEL_74;
  }

LABEL_75:

  v86 = *MEMORY[0x1E69E9840];
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled = result;
  return result;
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke_668(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled_667 = result;
  return result;
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke_674(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled_673 = result;
  return result;
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke_680(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled_679 = result;
  return result;
}

- (void)deleteEntryForKey:(id)a3 withRowID:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@' WHERE ID=%lld", v6, a4];;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLSQLiteConnection_deleteEntryForKey_withRowID___block_invoke;
    block[3] = &unk_1E8519630;
    v18 = @"delete";
    v19 = v8;
    if (deleteEntryForKey_withRowID__defaultOnce != -1)
    {
      dispatch_once(&deleteEntryForKey_withRowID__defaultOnce, block);
    }

    v9 = deleteEntryForKey_withRowID__classDebugEnabled;

    if (v9 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v7];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteEntryForKey:withRowID:]"];
      [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:1783];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = [(PLSQLiteConnection *)self performQuery:v7];
  v16 = [PLEntryDefinition definitionForEntryKey:v6];
  if ([PLEntryDefinition hasArrayKeysForEntryDefinition:v16])
  {
    [(PLSQLiteConnection *)self deleteArrayEntriesForKey:v6 withRowID:a4];
  }

  if ([PLEntryDefinition hasDynamicKeysForEntryDefinition:v16])
  {
    [(PLSQLiteConnection *)self deleteDynamicEntriesForKey:v6 withRowID:a4];
  }
}

BOOL __50__PLSQLiteConnection_deleteEntryForKey_withRowID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteEntryForKey_withRowID__classDebugEnabled = result;
  return result;
}

- (void)deleteDynamicEntriesForKey:(id)a3 withRowID:(int64_t)a4
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@_%@' WHERE FK_ID=%lld", a3, @"Dynamic", a4];;
  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PLSQLiteConnection_deleteDynamicEntriesForKey_withRowID___block_invoke;
    block[3] = &unk_1E8519630;
    v15 = @"delete";
    v16 = v6;
    if (deleteDynamicEntriesForKey_withRowID__defaultOnce != -1)
    {
      dispatch_once(&deleteDynamicEntriesForKey_withRowID__defaultOnce, block);
    }

    v7 = deleteDynamicEntriesForKey_withRowID__classDebugEnabled;

    if (v7 == 1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v5];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteDynamicEntriesForKey:withRowID:]"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:1799];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v13 = [(PLSQLiteConnection *)self performQuery:v5];
}

BOOL __59__PLSQLiteConnection_deleteDynamicEntriesForKey_withRowID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteDynamicEntriesForKey_withRowID__classDebugEnabled = result;
  return result;
}

- (void)deleteArrayEntriesForKey:(id)a3 withRowID:(int64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [PLEntryDefinition definitionForEntryKey:v6];
  v8 = [PLEntryDefinition arrayKeysForEntryDefinition:v7];

  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = *v30;
    v23 = v8;
    v24 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@_Array_%@' WHERE FK_ID=%lld", v6, *(*(&v29 + 1) + 8 * v11), a4];;
        if (+[PLDefaults debugEnabled])
        {
          v13 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __57__PLSQLiteConnection_deleteArrayEntriesForKey_withRowID___block_invoke;
          block[3] = &unk_1E8519630;
          v27 = @"delete";
          v28 = v13;
          if (deleteArrayEntriesForKey_withRowID__defaultOnce != -1)
          {
            dispatch_once(&deleteArrayEntriesForKey_withRowID__defaultOnce, block);
          }

          v14 = deleteArrayEntriesForKey_withRowID__classDebugEnabled;

          if (v14 == 1)
          {
            v15 = a4;
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v12];
            v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v18 = [v17 lastPathComponent];
            v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteArrayEntriesForKey:withRowID:]"];
            [PLCoreStorage logMessage:v16 fromFile:v18 fromFunction:v19 fromLineNumber:1807];

            v20 = PLLogCommon();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v34 = v16;
              _os_log_debug_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            a4 = v15;
            v8 = v23;
            v6 = v24;
          }
        }

        v21 = [(PLSQLiteConnection *)self performQuery:v12];

        ++v11;
      }

      while (v10 != v11);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x1E69E9840];
}

BOOL __57__PLSQLiteConnection_deleteArrayEntriesForKey_withRowID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteArrayEntriesForKey_withRowID__classDebugEnabled = result;
  return result;
}

- (void)deleteAllEntriesForKey:(id)a3 withFilters:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"DELETE FROM '%@'", a3];
  if (v6)
  {
    v8 = [v6 componentsJoinedByString:@" AND "];
    [v7 appendFormat:@"WHERE %@ ", v8];
  }

  [v7 appendString:@";"];
  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PLSQLiteConnection_deleteAllEntriesForKey_withFilters___block_invoke;
    block[3] = &unk_1E8519630;
    v18 = @"delete";
    v19 = v9;
    if (deleteAllEntriesForKey_withFilters__defaultOnce != -1)
    {
      dispatch_once(&deleteAllEntriesForKey_withFilters__defaultOnce, block);
    }

    v10 = deleteAllEntriesForKey_withFilters__classDebugEnabled;

    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v7];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteAllEntriesForKey:withFilters:]"];
      [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:1819];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v16 = [(PLSQLiteConnection *)self performQuery:v7];
}

BOOL __57__PLSQLiteConnection_deleteAllEntriesForKey_withFilters___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteAllEntriesForKey_withFilters__classDebugEnabled = result;
  return result;
}

- (void)setAllNullValuesForEntryKey:(id)a3 forKey:(id)a4 toValue:(id)a5 withFilters:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [MEMORY[0x1E696AD60] stringWithFormat:@"UPDATE %@ SET %@ = %@ WHERE %@ IS NULL", a3, a4, a5, a4];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 appendFormat:@" AND %@", *(*(&v19 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = [(PLSQLiteConnection *)self performQuery:v11];
  v18 = *MEMORY[0x1E69E9840];
}

- (id)entriesForKey:(id)a3 withProperties:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v63 = a3;
  v5 = a4;
  context = objc_autoreleasePoolPush();
  v67 = objc_opt_new();
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT * "];
  v7 = [v5 objectForKeyedSubscript:@"select"];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 objectForKeyedSubscript:@"select"];
    v10 = [v9 count];

    if (v10)
    {
      [v6 appendString:{@", "}];
      v11 = [v5 objectForKeyedSubscript:@"select"];
      v12 = [v11 componentsJoinedByString:{@", "}];
      [v6 appendString:v12];
    }
  }

  v13 = v63;
  [v6 appendFormat:@" FROM '%@' ", v63];
  v14 = [v5 objectForKeyedSubscript:@"where"];
  if (v14)
  {
    v15 = v14;
    v16 = [v5 objectForKeyedSubscript:@"where"];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [v5 objectForKeyedSubscript:@"where"];
      v19 = [v18 componentsJoinedByString:@" AND "];
      [v6 appendFormat:@"WHERE %@ ", v19];
    }
  }

  v20 = [v5 objectForKeyedSubscript:@"order by"];
  v65 = v6;
  if (v20)
  {
    v21 = v20;
    v22 = [v5 objectForKeyedSubscript:@"order by"];
    v23 = [MEMORY[0x1E695DFB0] null];

    if (v22 != v23)
    {
      [v6 appendString:@"ORDER BY "];
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v24 = [v5 objectForKeyedSubscript:@"order by"];
      v25 = [v24 allKeys];

      obj = v25;
      v26 = [v25 countByEnumeratingWithState:&v78 objects:v83 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 1;
        v29 = *v79;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v79 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v78 + 1) + 8 * i);
            if ((v28 & 1) == 0)
            {
              [v65 appendString:{@", "}];
            }

            v32 = [v5 objectForKeyedSubscript:@"order by"];
            v33 = [v32 objectForKeyedSubscript:v31];
            if ([v33 BOOLValue])
            {
              v34 = @"DESC";
            }

            else
            {
              v34 = @"ASC";
            }

            [v65 appendFormat:@"%@ %@", v31, v34, context];

            v28 = 0;
          }

          v27 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
          v28 = 0;
        }

        while (v27);
      }

      v6 = v65;
      [v65 appendString:@" "];
      v13 = v63;
    }
  }

  v35 = [v5 objectForKeyedSubscript:@"limit"];

  if (v35)
  {
    v36 = [v5 objectForKeyedSubscript:@"limit"];
    [v6 appendFormat:@"LIMIT %@ ", v36];
  }

  [v6 appendString:@";"];
  if (+[PLDefaults debugEnabled])
  {
    v37 = objc_opt_class();
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke;
    v75[3] = &unk_1E8519630;
    v76 = @"entryQuery";
    v77 = v37;
    if (entriesForKey_withProperties__defaultOnce != -1)
    {
      dispatch_once(&entriesForKey_withProperties__defaultOnce, v75);
    }

    v38 = entriesForKey_withProperties__classDebugEnabled;

    if (v38 == 1)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlQuery=%@", v6];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v41 = [v40 lastPathComponent];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection entriesForKey:withProperties:]"];
      [PLCoreStorage logMessage:v39 fromFile:v41 fromFunction:v42 fromLineNumber:1868];

      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v6 = v65;
    }
  }

  v44 = [(PLSQLiteConnection *)self performQuery:v6];
  v45 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke_758;
  block[3] = &unk_1E8519630;
  v73 = @"entryQuery";
  v74 = v45;
  if (entriesForKey_withProperties__defaultOnce_756 != -1)
  {
    dispatch_once(&entriesForKey_withProperties__defaultOnce_756, block);
  }

  v46 = entriesForKey_withProperties__classDebugEnabled_757;

  if (v46 == 1)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"!!! sqlQuery=%@, results=%@", v6, v44];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
    v49 = [v48 lastPathComponent];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection entriesForKey:withProperties:]"];
    [PLCoreStorage logMessage:v47 fromFile:v49 fromFunction:v50 fromLineNumber:1871];

    v51 = PLLogCommon();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v52 = v44;
  v53 = [v52 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v69;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v69 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [PLEntry entryWithEntryKey:v13 withData:*(*(&v68 + 1) + 8 * j)];
        [v57 setExistsInDB:1];
        [v67 addObject:v57];
        if ([v57 hasDynamicKeys])
        {
          v58 = [v5 objectForKeyedSubscript:@"loadDynamic"];

          if (v58)
          {
            [(PLSQLiteConnection *)self loadDynamicValuesIntoEntry:v57];
          }
        }

        if ([v57 hasArrayKeys])
        {
          v59 = [v5 objectForKeyedSubscript:@"loadDynamic"];

          if (v59)
          {
            [(PLSQLiteConnection *)self loadArrayValuesIntoEntry:v57];
          }
        }
      }

      v54 = [v52 countByEnumeratingWithState:&v68 objects:v82 count:16];
    }

    while (v54);
  }

  objc_autoreleasePoolPop(context);
  v60 = *MEMORY[0x1E69E9840];

  return v67;
}

BOOL __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  entriesForKey_withProperties__classDebugEnabled = result;
  return result;
}

BOOL __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke_758(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  entriesForKey_withProperties__classDebugEnabled_757 = result;
  return result;
}

- (id)entriesForKey:(id)a3 withQuery:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v9 = [(PLSQLiteConnection *)self performQuery:v7];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [PLEntry entryWithEntryKey:v6 withData:*(*(&v18 + 1) + 8 * i)];
        [v14 setExistsInDB:1];
        [v8 addObject:v14];
        if ([v14 hasDynamicKeys])
        {
          [(PLSQLiteConnection *)self loadDynamicValuesIntoEntry:v14];
        }

        if ([v14 hasArrayKeys])
        {
          [(PLSQLiteConnection *)self loadArrayValuesIntoEntry:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)loadDynamicValuesIntoEntry:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasDynamicKeys])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 entryKey];
    v7 = [v5 stringWithFormat:@"SELECT * FROM '%@_%@' WHERE FK_ID==%lld", v6, @"Dynamic", objc_msgSend(v4, "entryID")];

    v30 = v7;
    v8 = [(PLSQLiteConnection *)self performQuery:v7];
    v9 = [v4 entryKey];
    v10 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:v9];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v8;
    v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v34)
    {
      v11 = *v40;
      v12 = 0x1E695D000uLL;
      v31 = *v40;
      v32 = v10;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v10 objectForKeyedSubscript:@"key"];
          v16 = *(v12 + 3872);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v18 = [v10 objectForKeyedSubscript:@"key"];
            v19 = [v18 allKeys];
            v20 = [v19 sortedArrayUsingSelector:sel_compare_];

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v36;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v36 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = [v14 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * j)];
                  v27 = [v14 objectForKeyedSubscript:@"value"];
                  [v4 setObject:v27 forKeyedSubscript:v26];
                }

                v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v23);
              v28 = v21;
              v11 = v31;
              v10 = v32;
            }

            else
            {
              v28 = v21;
            }

            v12 = 0x1E695D000;
          }

          else
          {
            v28 = [v14 objectForKeyedSubscript:@"Key"];
            v21 = [v14 objectForKeyedSubscript:@"value"];
            [v4 setObject:v21 forKeyedSubscript:v28];
          }
        }

        v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v34);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)loadArrayValuesIntoEntry:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasArrayKeys])
  {
    [v3 arrayKeys];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v23)
    {
      v20 = *v29;
      v21 = v3;
      do
      {
        v4 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v28 + 1) + 8 * v4);
          v6 = MEMORY[0x1E696AEC0];
          v7 = [v3 entryKey];
          v8 = [v6 stringWithFormat:@"SELECT value FROM '%@_Array_%@' WHERE FK_ID==%lld", v7, v5, objc_msgSend(v3, "entryID")];

          v9 = [(PLSQLiteConnection *)self performQuery:v8];
          v10 = objc_opt_new();
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              v15 = 0;
              do
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v24 + 1) + 8 * v15) objectForKeyedSubscript:@"value"];
                [v10 addObject:v16];

                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }

          if ([v10 count])
          {
            v17 = v10;
          }

          else
          {
            v17 = 0;
          }

          v3 = v21;
          [v21 setObject:v17 forKeyedSubscript:v5];

          ++v4;
        }

        while (v4 != v23);
        v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)moveDatabaseToPath:(id)a3
{
  v4 = a3;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v5 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

    if ([(PLSQLiteConnection *)self dbConnection])
    {
      [(PLSQLiteConnection *)self copyDatabase:v4];
      dbConnection = self->_dbConnection;
      if (_sqlite3_db_truncate())
      {
        v7 = PLLogCommon();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [PLSQLiteConnection moveDatabaseToPath:];
        }
      }
    }

    v8 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(v8);
  }
}

- (BOOL)truncateDB
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    return 0;
  }

  v3 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  if (![(PLSQLiteConnection *)self dbConnection])
  {
    v9 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(v9);

    return 0;
  }

  dbConnection = self->_dbConnection;
  v5 = _sqlite3_db_truncate();
  v6 = v5 == 0;
  if (v5)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [PLSQLiteConnection moveDatabaseToPath:];
    }
  }

  v8 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(v8);

  return v6;
}

- (void)closeConnection
{
  v3 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  if ([(PLSQLiteConnection *)self dbConnection])
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Closing dbConnection!", buf, 2u);
    }

    sqlite3_close([(PLSQLiteConnection *)self dbConnection]);
    [(PLSQLiteConnection *)self setDbConnection:0];
    v5 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(v5);
  }

  else
  {
    v6 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(v6);
  }
}

- (void)vacuum
{
  if ([PLDefaults BOOLForKey:@"Vacuum" ifNotSet:1])
  {
    v3 = [(PLSQLiteConnection *)self transactionLock];
    objc_sync_enter(v3);
    if (+[PLDefaults debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__PLSQLiteConnection_vacuum__block_invoke;
      block[3] = &unk_1E8519630;
      v16 = @"Vacuum";
      v17 = v4;
      if (vacuum_defaultOnce != -1)
      {
        dispatch_once(&vacuum_defaultOnce, block);
      }

      v5 = vacuum_classDebugEnabled;

      if (v5 == 1)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Vacuum!"];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection vacuum]"];
        [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:2009];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if ([(PLSQLiteConnection *)self isTransactionInProgress])
    {
      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "Vacuuming whilst in a critical data section!", v14, 2u);
      }
    }

    if ([(PLSQLiteConnection *)self isIncrementalVacuumEnabled])
    {
      v12 = @"PRAGMA incremental_vacuum;";
    }

    else
    {
      v12 = @"VACUUM;";
    }

    v13 = [(PLSQLiteConnection *)self performQuery:v12];
    objc_sync_exit(v3);
  }
}

BOOL __28__PLSQLiteConnection_vacuum__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  vacuum_classDebugEnabled = result;
  return result;
}

- (void)fullVacuum
{
  obj = [(PLSQLiteConnection *)self transactionLock];
  objc_sync_enter(obj);
  v3 = [(PLSQLiteConnection *)self performQuery:@"VACUUM;"];
  objc_sync_exit(obj);
}

- (BOOL)passesIntegrityCheck
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = [(PLSQLiteConnection *)self filePath];
  [v4 UTF8String];
  v5 = _sqlite3_integrity_check();

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Integrity check result: %d", v10, 8u);
  }

  v7 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(v7);

  result = v5 == 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __37__PLSQLiteConnection_setJournalMode___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  setJournalMode__classDebugEnabled = result;
  return result;
}

- (BOOL)copyDatabase:(id)a3
{
  v5 = a3;
  [a3 UTF8String];
  dbConnection = self->_dbConnection;
  v7 = _sqlite3_db_copy();
  if (v7)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyDatabase:];
    }
  }

  return v7 == 0;
}

- (BOOL)copyDatabaseToPath:(id)a3
{
  v4 = a3;
  v5 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  LOBYTE(v5) = [(PLSQLiteConnection *)self copyDatabase:v4];
  v6 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(v6);

  return v5;
}

- (BOOL)copyDatabaseToPath:(id)a3 fromDate:(id)a4 toDate:(id)a5 withTableFilters:(id)a6 vacuumDB:(BOOL)a7 withCacheSize:(int64_t)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = objc_autoreleasePoolPush();
  v19 = [(PLSQLiteConnection *)self copyDatabaseToPath:v14];
  if (v19)
  {
    v20 = [[PLSQLiteConnection alloc] initWithFilePath:v14 withCacheSize:a8];
    v21 = v20;
    if (v15 | v16)
    {
      [(PLSQLiteConnection *)v20 trimAllTablesFromDate:v15 toDate:v16 withTableFilters:v17];
    }

    if (v9)
    {
      [(PLSQLiteConnection *)v21 vacuum];
    }

    [(PLSQLiteConnection *)v21 closeConnection];
  }

  objc_autoreleasePoolPop(v18);

  return v19;
}

- (id)cachedStatementForMetadataInsert
{
  if (!self->_metadataStmtCreated)
  {
    v12 = 0;
    v3 = [PLSQLStatement alloc];
    v4 = [(PLSQLiteConnection *)self dbConnection];
    v5 = [(PLSQLiteConnection *)self dbSem];
    v6 = [(PLSQLStatement *)v3 initWithSQLQuery:@"INSERT INTO PLCoreStorage_Metadata_Dynamic (FK_ID forDatabase:build withDBSem:name result:version, metadata) VALUES (?, ?, ?, ?, ?)", v4, v5, &v12];
    metadataStmt = self->_metadataStmt;
    self->_metadataStmt = v6;

    if (v12)
    {
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection cachedStatementForMetadataInsert];
      }

      v9 = self->_metadataStmt;
      self->_metadataStmt = 0;
    }

    self->_metadataStmtCreated = 1;
  }

  v10 = self->_metadataStmt;

  return v10;
}

- (void)writeMetadata:(id)a3 forFKID:(id)a4 build:(id)a5 name:(id)a6 version:(double)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(PLSQLiteConnection *)self cachedStatementForMetadataInsert];
  v16 = v15;
  if (v15)
  {
    [v15 bindValue:v12 withFormater:5 atPosition:1];
    [v16 bindValue:v13 withFormater:1 atPosition:2];
    [v16 bindValue:v14 withFormater:1 atPosition:3];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
    [v16 bindValue:v17 withFormater:6 atPosition:4];

    [v16 bindValue:v19 withFormater:8 atPosition:5];
    v18 = [(PLSQLiteConnection *)self performStatement:v16];
  }
}

- (void)freeMetadataState
{
  metadataStmt = self->_metadataStmt;
  self->_metadataStmt = 0;

  self->_metadataStmtCreated = 0;
}

- (BOOL)attachDB:(id)a3 withName:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ATTACH DATABASE '%@' AS '%@'", a3, v6];;
  v8 = [(PLSQLiteConnection *)self performQuery:v7 returnValue:&v13 returnResult:0];

  v9 = sqlConnectionHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 1024;
    v17 = v13;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "attach DB ('%@') return value '%d'", buf, 0x12u);
  }

  v10 = v13 == 0;
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)detachDB:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DETACH DATABASE '%@'", v4];;
  v6 = [(PLSQLiteConnection *)self performQuery:v5 returnValue:&v11 returnResult:0];

  v7 = sqlConnectionHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v4;
    v14 = 1024;
    v15 = v11;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "detach DB ('%@') return value '%d'", buf, 0x12u);
  }

  v8 = v11 == 0;
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)copyTable:(id)a3 fromConnection:(id)a4 withDBName:(id)a5 withProperties:(id)a6 andAttach:(BOOL)a7
{
  v7 = a7;
  v27 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(PLSQLiteConnection *)self tableExistsForTableName:v12])
  {
    v16 = sqlConnectionHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = v12;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "table (%@) already exists", &v23, 0xCu);
    }

LABEL_20:
    v19 = 0;
LABEL_21:

    goto LABEL_22;
  }

  if (([v13 tableExistsForTableName:v12] & 1) == 0)
  {
    v16 = sqlConnectionHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = [v13 filePath];
      v23 = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "table ('%@') does not exist in source database (%@)", &v23, 0x16u);
    }

    goto LABEL_20;
  }

  if (!v7)
  {
    if ([(PLSQLiteConnection *)self copyTable:v12 fromDBName:v14 withProperties:v15])
    {
      goto LABEL_15;
    }

LABEL_16:
    v16 = sqlConnectionHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyTable:fromConnection:withDBName:withProperties:andAttach:];
    }

    goto LABEL_20;
  }

  v17 = [v13 filePath];
  v18 = [(PLSQLiteConnection *)self attachDB:v17 withName:v14];

  if (!v18)
  {
    v16 = sqlConnectionHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyTable:v13 fromConnection:? withDBName:? withProperties:? andAttach:?];
    }

    goto LABEL_20;
  }

  if (![(PLSQLiteConnection *)self copyTable:v12 fromDBName:v14 withProperties:v15])
  {
    goto LABEL_16;
  }

  if (![(PLSQLiteConnection *)self detachDB:v14])
  {
    v16 = sqlConnectionHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyTable:v14 fromConnection:v13 withDBName:? withProperties:? andAttach:?];
    }

    v19 = 1;
    goto LABEL_21;
  }

LABEL_15:
  v19 = 1;
LABEL_22:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)copyTable:(id)a3 fromDBName:(id)a4 withProperties:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(PLSQLiteConnection *)self beginTransaction];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM '%@'.sqlite_schema WHERE name = '%@'", v9, v8];
  v12 = [(PLSQLiteConnection *)self performQuery:v11];

  if (v12)
  {
    v13 = [v12 firstObject];
    v14 = [v13 objectForKeyedSubscript:@"sql"];

    v15 = sqlConnectionHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v55 = v8;
      v56 = 2112;
      v57 = v14;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "creating table %@ with schema query '%@'", buf, 0x16u);
    }

    v53 = 0;
    v16 = [(PLSQLiteConnection *)self performQuery:v14 returnValue:&v53 returnResult:0];
    v17 = v53;
    v18 = sqlConnectionHandle();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection copyTable:v14 fromDBName:&v53 withProperties:?];
      }

      v20 = 0;
      goto LABEL_29;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v55 = v8;
      v56 = 2112;
      v57 = v10;
      _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_INFO, "copying entries to %@ with properties %@", buf, 0x16u);
    }

    v19 = [(PLSQLiteConnection *)self sqlFormatedColumnNamesForTableInsert:v8];
    v21 = [(PLSQLiteConnection *)self sqlFormatedColumnNamesForTableSelect:v8 withSystemOffset:0.0];
    v22 = MEMORY[0x1E696AEC0];
    v52 = v10;
    v23 = [(PLSQLiteConnection *)self sqlPropertiesAsString:v10];
    v51 = v21;
    v24 = [v22 stringWithFormat:@"SELECT %@ FROM '%@'.'%@' %@", v21, v9, v8, v23];

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO '%@' (%@) %@", v8, v19, v24];
    v26 = sqlConnectionHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection copyTable:fromDBName:withProperties:];
    }

    v27 = [(PLSQLiteConnection *)self performQuery:v25 returnValue:&v53 returnResult:0];
    if (v53)
    {
      v28 = sqlConnectionHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection copyTable:v25 fromDBName:&v53 withProperties:?];
      }

      [(PLSQLiteConnection *)self endTransaction];
LABEL_19:
      v20 = 0;
LABEL_28:

      v10 = v52;
LABEL_29:

      goto LABEL_30;
    }

    v29 = [v52 objectForKeyedSubscript:@"uuid"];

    if (v29)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = [(PLSQLiteConnection *)self sqlPropertiesAsString:v52];
      v32 = [v30 stringWithFormat:@"SELECT IFNULL(MIN(ID), -1) as startID, IFNULL(MAX(ID), -1) as endID FROM '%@'.'%@' %@", v9, v8, v31];

      v33 = v32;
      v34 = sqlConnectionHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [PLSQLiteConnection copyTable:fromDBName:withProperties:];
      }

      v35 = [(PLSQLiteConnection *)self performQuery:v33];
      if (!v35)
      {
        v44 = sqlConnectionHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection copyTable:fromDBName:withProperties:];
        }

        goto LABEL_19;
      }

      v48 = v24;
      v50 = v33;
      v36 = v35;
      v37 = [v35 firstObject];
      v38 = [v37 objectForKeyedSubscript:@"startID"];
      v47 = [v38 intValue];

      v49 = v36;
      v39 = [v36 firstObject];
      v40 = [v39 objectForKeyedSubscript:@"endID"];
      v46 = [v40 intValue];

      v41 = PLLogSubmission();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v45 = [v52 objectForKeyedSubscript:@"uuid"];
        *buf = 138413058;
        v55 = v45;
        v56 = 2112;
        v57 = v8;
        v58 = 1024;
        v59 = v47;
        v60 = 1024;
        v61 = v46;
        _os_log_debug_impl(&dword_1D8611000, v41, OS_LOG_TYPE_DEBUG, "Copy Session UUID = %@, table = '%@', startID = %d, endID = %d", buf, 0x22u);
      }

      v24 = v48;
    }

    [(PLSQLiteConnection *)self endTransaction];
    v20 = 1;
    goto LABEL_28;
  }

  v14 = sqlConnectionHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [PLSQLiteConnection copyTable:fromDBName:withProperties:];
  }

  v20 = 0;
LABEL_30:

  v42 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)sqlPropertiesAsString:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 objectForKeyedSubscript:@"WHERE"];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"WHERE"];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v3 objectForKeyedSubscript:@"WHERE"];
      v10 = [v9 componentsJoinedByString:@" AND "];
      [v4 appendFormat:@"%@ %@ ", @"WHERE", v10];
    }
  }

  v11 = [v3 objectForKeyedSubscript:@"ORDER BY"];
  if (v11)
  {
    v12 = v11;
    v13 = [v3 objectForKeyedSubscript:@"ORDER BY"];
    v14 = [MEMORY[0x1E695DFB0] null];

    if (v13 != v14)
    {
      [v4 appendFormat:@"%@ ", @"ORDER BY"];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v15 = v3;
      v16 = [v3 objectForKeyedSubscript:@"ORDER BY"];
      v17 = [v16 allKeys];

      v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 1;
        v21 = *v33;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v32 + 1) + 8 * i);
            if ((v20 & 1) == 0)
            {
              [v4 appendString:{@", "}];
            }

            v24 = [v15 objectForKeyedSubscript:@"ORDER BY"];
            v25 = [v24 objectForKeyedSubscript:v23];
            v26 = [v25 BOOLValue];
            v27 = @"ASC";
            if (v26)
            {
              v27 = @"DESC";
            }

            [v4 appendFormat:@"%@ %@", v23, v27];

            v20 = 0;
          }

          v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
          v20 = 0;
        }

        while (v19);
      }

      [v4 appendString:@" "];
      v3 = v15;
    }
  }

  v28 = [v3 objectForKeyedSubscript:@"LIMIT"];

  if (v28)
  {
    v29 = [v3 objectForKeyedSubscript:@"LIMIT"];
    [v4 appendFormat:@"%@ %@ ", @"LIMIT", v29];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)openCurrentFileWithCacheSize:(void *)a1 withFlags:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 filePath];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)openCurrentFileWithCacheSize:withFlags:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12(v1);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)mergeDataFromOtherDBFile:(uint64_t)a1 .cold.1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)mergeDataFromOtherDBFile:(int *)a1 .cold.2(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "SQL query to be executed is %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "MERGE : Done merging table %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeDynamicEntriesToPPS:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "DynamicEntry %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeDynamicEntriesToPPS:(void *)a1 .cold.2(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeDynamicEntriesToPPS:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "writeDynamic=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeDynamicEntriesToPPS:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeArrayEntries:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "writeArrayEntries: corrupt DB", buf, 2u);
}

- (void)moveDatabaseToPath:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12(v1);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)copyDatabase:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12(v1);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:(void *)a1 fromConnection:withDBName:withProperties:andAttach:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 filePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:fromConnection:withDBName:withProperties:andAttach:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:(uint64_t)a1 fromConnection:(void *)a2 withDBName:withProperties:andAttach:.cold.3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 filePath];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:(uint64_t)a1 fromDBName:(unsigned int *)a2 withProperties:.cold.1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:fromDBName:withProperties:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "performing '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:(uint64_t)a1 fromDBName:(unsigned int *)a2 withProperties:.cold.3(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:fromDBName:withProperties:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "performing debug query '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:fromDBName:withProperties:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyTable:fromDBName:withProperties:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end