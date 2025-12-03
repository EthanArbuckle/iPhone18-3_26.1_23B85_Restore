@interface PLArchiveManager
+ (id)allArchivePaths;
+ (id)archiveEntriesFinished;
+ (id)archiveEntriesUnfinished;
+ (id)archiveEntriesWithComparisons:(id)comparisons;
+ (id)archiveForDate:(id)date;
+ (id)lastArchivePath;
+ (id)sharedInstance;
+ (id)storageQueue;
+ (id)workQueue;
+ (void)systemTimeChangedByOffset:(double)offset;
- (BOOL)eliglibleToVacuumEPSQLForDate:(id)date;
- (BOOL)isInterrupted;
- (NSDate)lastEPSQLVacuumDate;
- (PLArchiveManager)init;
- (id)getArchivingCriteria;
- (void)cleanup;
- (void)dealloc;
- (void)deprecateTables;
- (void)deprecateTablesBGSQL;
- (void)deprecateTablesEPSQL;
- (void)disable;
- (void)enable;
- (void)handleFailure:(int64_t)failure forArchiveEntry:(id)entry;
- (void)migrate;
- (void)migrateArchive:(id)archive;
- (void)recover;
- (void)registerForArchivingNotificationUsingBlock:(id)block;
- (void)runActivityWithLastCompletedDate:(id)date;
- (void)runArchiveJobs;
- (void)runInitialActivity;
- (void)scheduleArchiveJobs;
- (void)setEnabled:(BOOL)enabled;
- (void)setInterrupted:(BOOL)interrupted;
- (void)setLastEPSQLVacuumDate:(id)date;
- (void)trimBackgroundProcessingLog;
- (void)trimCleanEnergyLog;
- (void)trimExtendedPersistenceLog;
@end

@implementation PLArchiveManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[PLArchiveManager sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __34__PLArchiveManager_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(PLArchiveManager);

  return MEMORY[0x1EEE66BB8]();
}

- (PLArchiveManager)init
{
  v19.receiver = self;
  v19.super_class = PLArchiveManager;
  v2 = [(PLArchiveManager *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 0;
    array = [MEMORY[0x1E695DF70] array];
    archiveJobs = v3->_archiveJobs;
    v3->_archiveJobs = array;

    array2 = [MEMORY[0x1E695DF70] array];
    notificationBlocks = v3->_notificationBlocks;
    v3->_notificationBlocks = array2;

    [PLDefaults doubleForKey:@"PLArchiveManager_interval" ifNotSet:86400.0];
    v3->_interval = v8;
    [PLDefaults doubleForKey:@"PLArchiveManager_mustRunInterval" ifNotSet:259200.0];
    v3->_mustRunInterval = v9;
    [PLDefaults doubleForKey:@"PLArchiveManager_EPSQLVacuumInterval" ifNotSet:2592000.0];
    v3->_EPSQLVacuumInterval = v10;
    [PLDefaults doubleForKey:@"PLArchiveManager_mainDBDuration" ifNotSet:86400.0];
    v3->_PLSQLDBDuration = v11;
    [PLDefaults doubleForKey:@"PLArchiveManager_EPSQLDBDuration" ifNotSet:2592000.0];
    v3->_EPSQLDBDuration = v12;
    [PLDefaults doubleForKey:@"PLArchiveManager_CESQLDBDuration" ifNotSet:604800.0];
    v3->_CESQLDBDuration = v13;
    [PLDefaults doubleForKey:@"PLArchiveManager_BGSQLDBDuration" ifNotSet:2592000.0];
    v3->_BGSQLDBDuration = v14;
    [PLDefaults doubleForKey:@"PLArchiveManager_XCSQLDBDuration" ifNotSet:31449600.0];
    v3->_XCSQLDBDuration = v15;
    [PLDefaults doubleForKey:@"PLArchiveManager_allDBDuration" ifNotSet:604800.0];
    v3->_archiveRetention = v16;
    v3->_monotonicResetOccurred = [PLDefaults longForKey:@"PLExitReasonKey" ifNotSet:-1]== 1006;
    v17 = +[PLTimeManager sharedInstance];
    [v17 registerForTimeChangedCallbackWithIdentifier:@"com.apple.powerlogd.archiver" forTimeReference:1 usingBlock:&__block_literal_global_50];

    [(PLArchiveManager *)v3 runInitialActivity];
  }

  return v3;
}

- (void)dealloc
{
  [(PLArchiveManager *)self disable];
  v3.receiver = self;
  v3.super_class = PLArchiveManager;
  [(PLArchiveManager *)&v3 dealloc];
}

+ (id)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

+ (id)storageQueue
{
  v2 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_enabled == enabledCopy)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_enabled = enabledCopy;
    objc_sync_exit(obj);

    if (enabledCopy)
    {

      [(PLArchiveManager *)obj enable];
    }

    else
    {

      [(PLArchiveManager *)obj disable];
    }
  }
}

- (void)setInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_interrupted != interruptedCopy)
  {
    obj->_interrupted = interruptedCopy;
  }

  objc_sync_exit(obj);
}

- (void)runInitialActivity
{
  [(PLArchiveManager *)self recover];
  [(PLArchiveManager *)self migrate];

  [(PLArchiveManager *)self cleanup];
}

- (id)getArchivingCriteria
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [PLActivityCriterionTime timeCriterionWithInterval:self->_interval];
  [array addObject:v4];

  v5 = +[PLActivityCriterionEntry audioOffCriterion];
  [array addObject:v5];

  if (+[PLUtilities hasBattery])
  {
    v6 = +[PLActivityCriterionEntry displayOffCriterion];
    [array addObject:v6];

    v7 = +[PLActivityCriterionEntry pluggedInCriterion];
    [array addObject:v7];
  }

  return array;
}

- (void)enable
{
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    [(PLArchiveManager *)self setInterrupted:0];
    getArchivingCriteria = [(PLArchiveManager *)self getArchivingCriteria];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __26__PLArchiveManager_enable__block_invoke;
    v12[3] = &unk_1E851AC20;
    v12[4] = self;
    v7 = MEMORY[0x1DA71B0D0](v12);
    v8 = +[PLActivityScheduler sharedInstance];
    [(PLArchiveManager *)self mustRunInterval];
    v9 = [PLActivityCriterionTime timeCriterionWithInterval:?];
    v10 = +[PLArchiveManager workQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __26__PLArchiveManager_enable__block_invoke_2;
    v11[3] = &unk_1E851AC48;
    v11[4] = self;
    [v8 scheduleActivityWithIdentifier:@"com.apple.powerlogd.archiver" withCriteria:getArchivingCriteria withMustRunCriterion:v9 withQueue:v10 withInterruptBlock:v7 withActivityBlock:v11];
  }
}

void __26__PLArchiveManager_enable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setInterrupted:0];
  [*(a1 + 32) runActivityWithLastCompletedDate:v4];
}

- (void)disable
{
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    [(PLArchiveManager *)self setInterrupted:0];
    v6 = +[PLActivityScheduler sharedInstance];
    [v6 cancelActivityWithIdentifier:@"com.apple.powerlogd.archiver"];
  }
}

- (void)runActivityWithLastCompletedDate:(id)date
{
  v28 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = PLLogArchiving();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::runActivity", buf, 2u);
  }

  v6 = os_transaction_create();
  v7 = objc_autoreleasePoolPush();
  [(PLArchiveManager *)self deprecateTables];
  [(PLArchiveManager *)self scheduleArchiveJobs];
  [(PLArchiveManager *)self runArchiveJobs];
  [(PLArchiveManager *)self trimCleanEnergyLog];
  [(PLArchiveManager *)self trimExtendedPersistenceLog];
  [(PLArchiveManager *)self trimXcodeOrganizerLog];
  [(PLArchiveManager *)self trimBackgroundProcessingLog];
  [(PLArchiveManager *)self cleanup];
  objc_autoreleasePoolPop(v7);
  v8 = dispatch_time(0, 60000000000);
  v9 = +[PLUtilities transactionWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PLArchiveManager_runActivityWithLastCompletedDate___block_invoke;
  block[3] = &unk_1E85190B8;
  v10 = v6;
  v25 = v10;
  dispatch_after(v8, v9, block);

  if (dateCopy)
  {
    if (![(PLArchiveManager *)self interrupted])
    {
      v11 = PLLogArchiving();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::runArchiveJobs: notifying clients", buf, 2u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      notificationBlocks = [(PLArchiveManager *)self notificationBlocks];
      v13 = [notificationBlocks countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(notificationBlocks);
            }

            v17 = *(*(&v20 + 1) + 8 * v16);
            if (v17)
            {
              (*(v17 + 16))();
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [notificationBlocks countByEnumeratingWithState:&v20 objects:v27 count:16];
        }

        while (v14);
      }
    }

    v18 = PLLogArchiving();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEFAULT, "Cleanly restarting powerlog to reduce memory fragmentation", buf, 2u);
    }

    [PLUtilities exitWithReason:4];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)deprecateTables
{
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    [&unk_1F540B830 enumerateObjectsUsingBlock:&__block_literal_global_499_0];
    [(PLArchiveManager *)self deprecateTablesEPSQL];
    [(PLArchiveManager *)self deprecateTablesXCSQL];

    [(PLArchiveManager *)self deprecateTablesBGSQL];
  }
}

void __35__PLArchiveManager_deprecateTables__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE '%@'", a2];;
  v2 = +[PowerlogCore sharedCore];
  v3 = [v2 storage];
  v4 = [v3 connection];
  v5 = [v4 performQuery:v6];
}

- (void)deprecateTablesEPSQL
{
  v2 = +[PowerlogCore sharedCore];
  storage = [v2 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v5 = +[PPSCoreStorage sharedSQLStorage];
    ePSQLConnection = [v5 EPSQLConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PLArchiveManager_deprecateTablesEPSQL__block_invoke;
    v8[3] = &unk_1E851AC90;
    v9 = ePSQLConnection;
    v7 = ePSQLConnection;
    [&unk_1F540B848 enumerateObjectsUsingBlock:v8];
  }
}

void __40__PLArchiveManager_deprecateTablesEPSQL__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE '%@'", a2];;
  v3 = [*(a1 + 32) performQuery:v4];
}

- (void)deprecateTablesBGSQL
{
  v2 = +[PowerlogCore sharedCore];
  storage = [v2 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v5 = +[PPSCoreStorage sharedSQLStorage];
    bGSQLConnection = [v5 BGSQLConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PLArchiveManager_deprecateTablesBGSQL__block_invoke;
    v8[3] = &unk_1E851AC90;
    v9 = bGSQLConnection;
    v7 = bGSQLConnection;
    [&unk_1F540B860 enumerateObjectsUsingBlock:v8];
  }
}

void __40__PLArchiveManager_deprecateTablesBGSQL__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE '%@'", a2];;
  v3 = [*(a1 + 32) performQuery:v4];
}

- (BOOL)isInterrupted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  interrupted = selfCopy->_interrupted;
  objc_sync_exit(selfCopy);

  return interrupted;
}

- (void)handleFailure:(int64_t)failure forArchiveEntry:(id)entry
{
  entryCopy = entry;
  v6 = PLLogArchiving();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(PLArchiveManager *)failure handleFailure:entryCopy forArchiveEntry:v6];
  }

  v7 = +[PowerlogCore sharedCore];
  storage = [v7 storage];
  connection = [storage connection];

  if (failure)
  {
    if (failure == 1)
    {
      v10 = 1004;
    }

    else
    {
      v11 = PLLogSQLiteConnection();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLArchiveManager handleFailure:forArchiveEntry:];
      }

      v10 = 1001;
    }
  }

  else
  {
    v10 = 1003;
  }

  [PLUtilities exitWithReason:v10 connection:connection];
}

- (void)scheduleArchiveJobs
{
  v4 = [OUTLINED_FUNCTION_3_3(self a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_4_0(&dword_1D8611000, v5, v6, "PLArchiveManager::scheduleArchiveJobs: scheduled archiveEntry=%@");
}

- (void)runArchiveJobs
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__PLArchiveManager_runArchiveJobs__block_invoke()
{
  v2 = +[PowerlogCore sharedCore];
  v0 = [v2 storage];
  v1 = [v0 connection];
  [v1 vacuum];
}

- (void)trimCleanEnergyLog
{
  v2 = PLLogArchiving();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "PLArchiveManager deleting CESQL", v11, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[PPSFileUtilities containerPath];
  v5 = [v4 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v6 = [v5 stringByAppendingString:@"CleanEnergy/"];
  v7 = [defaultManager fileExistsAtPath:v6];

  if (v7)
  {
    v8 = +[PPSFileUtilities containerPath];
    v9 = [v8 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
    v10 = [v9 stringByAppendingString:@"CleanEnergy/"];
    [defaultManager removeItemAtPath:v10 error:0];
  }
}

- (void)trimExtendedPersistenceLog
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = PLLogArchiving();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimEPSQL: start", buf, 2u);
  }

  if ([(PLArchiveManager *)self isInterrupted])
  {
    monotonicDate = PLLogArchiving();
    if (os_log_type_enabled(monotonicDate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, monotonicDate, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimEPSQL: interrupted", buf, 2u);
    }
  }

  else
  {
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    [(PLArchiveManager *)self EPSQLDBDuration];
    v6 = [monotonicDate dateByAddingTimeInterval:-v5];
    v7 = PLLogArchiving();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimEPSQL: trimDate=%@", buf, 0xCu);
    }

    v8 = +[PPSCoreStorage sharedSQLStorage];
    v9 = +[PLArchiveJob storageQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__PLArchiveManager_trimExtendedPersistenceLog__block_invoke;
    v17[3] = &unk_1E8519100;
    v10 = v8;
    v18 = v10;
    v11 = v6;
    v19 = v11;
    [PLUtilities dispatchSyncIfNotCallerQueue:v9 withBlock:v17];

    if ([(PLArchiveManager *)self eliglibleToVacuumEPSQLForDate:monotonicDate]&& ![(PLArchiveManager *)self isInterrupted])
    {
      v12 = PLLogArchiving();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimEPSQL: vacuum", buf, 2u);
      }

      v13 = +[PLArchiveManager storageQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __46__PLArchiveManager_trimExtendedPersistenceLog__block_invoke_546;
      v15[3] = &unk_1E85190B8;
      v16 = v10;
      [PLUtilities dispatchSyncIfNotCallerQueue:v13 withBlock:v15];

      [(PLArchiveManager *)self setLastEPSQLVacuumDate:monotonicDate];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __46__PLArchiveManager_trimExtendedPersistenceLog__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() trimConditionsForEPSQLWithTrimDate:*(a1 + 40)];
  v3 = [*(a1 + 32) EPSQLConnection];
  [v3 trimAllTablesFromDate:*(a1 + 40) toDate:0 withTableFilters:v4];
}

void __46__PLArchiveManager_trimExtendedPersistenceLog__block_invoke_546(uint64_t a1)
{
  v1 = [*(a1 + 32) EPSQLConnection];
  [v1 vacuum];
}

- (void)trimBackgroundProcessingLog
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = PLLogArchiving();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimBGSQL: start", buf, 2u);
  }

  if ([(PLArchiveManager *)self isInterrupted])
  {
    monotonicDate = PLLogArchiving();
    if (os_log_type_enabled(monotonicDate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, monotonicDate, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimBGSQL: interrupted", buf, 2u);
    }
  }

  else
  {
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    [(PLArchiveManager *)self BGSQLDBDuration];
    v6 = [monotonicDate dateByAddingTimeInterval:-v5];
    v7 = PLLogArchiving();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimBGSQL: trimDate=%@", buf, 0xCu);
    }

    v8 = +[PPSCoreStorage sharedSQLStorage];
    v9 = +[PLArchiveJob storageQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__PLArchiveManager_trimBackgroundProcessingLog__block_invoke;
    v18[3] = &unk_1E8519100;
    v10 = v8;
    v19 = v10;
    v20 = v6;
    v11 = v6;
    [PLUtilities dispatchSyncIfNotCallerQueue:v9 withBlock:v18];

    v12 = PLLogArchiving();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::trimBGSQL: vacuum", buf, 2u);
    }

    v13 = +[PLArchiveManager storageQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__PLArchiveManager_trimBackgroundProcessingLog__block_invoke_547;
    v16[3] = &unk_1E85190B8;
    v17 = v10;
    v14 = v10;
    [PLUtilities dispatchSyncIfNotCallerQueue:v13 withBlock:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __47__PLArchiveManager_trimBackgroundProcessingLog__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() trimConditionsForBGSQLWithTrimDate:*(a1 + 40)];
  v3 = [*(a1 + 32) BGSQLConnection];
  [v3 trimAllTablesFromDate:*(a1 + 40) toDate:0 withTableFilters:v4];
}

void __47__PLArchiveManager_trimBackgroundProcessingLog__block_invoke_547(uint64_t a1)
{
  v1 = [*(a1 + 32) BGSQLConnection];
  [v1 vacuum];
}

- (BOOL)eliglibleToVacuumEPSQLForDate:(id)date
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  lastEPSQLVacuumDate = [(PLArchiveManager *)self lastEPSQLVacuumDate];
  if (!lastEPSQLVacuumDate)
  {
    v6 = PLLogArchiving();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLArchiveManager eliglibleToVacuumEPSQLForDate:];
    }

    goto LABEL_7;
  }

  if ([(PLArchiveManager *)self monotonicResetOccurred])
  {
    v6 = PLLogArchiving();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dateCopy;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_INFO, "PLArchiveManager::trimEPSQL: Restarting after monotonic reset %@", &v14, 0xCu);
    }

LABEL_7:

    [(PLArchiveManager *)self setLastEPSQLVacuumDate:dateCopy];
    goto LABEL_8;
  }

  [dateCopy timeIntervalSinceDate:lastEPSQLVacuumDate];
  v11 = v10;
  [(PLArchiveManager *)self EPSQLVacuumInterval];
  if (v11 >= v12)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLArchiveManager eliglibleToVacuumEPSQLForDate:];
  }

LABEL_8:
  v7 = 0;
LABEL_9:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)cleanup
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v6 = PLLogArchiving();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::cleanup: start", buf, 2u);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = +[PLUtilities containerPath];
    v9 = [v8 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
    v40 = [defaultManager contentsOfDirectoryAtPath:v9 error:0];

    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = +[PLArchiveManager archiveEntriesFinished];
    v11 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v51;
      v38 = monotonicDate;
      selfCopy = self;
      v37 = *v51;
      do
      {
        v14 = 0;
        v41 = v12;
        do
        {
          if (*v51 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v50 + 1) + 8 * v14);
          startDate = [v15 startDate];
          [monotonicDate timeIntervalSinceDate:startDate];
          v18 = v17;
          [(PLArchiveManager *)self archiveRetention];
          v20 = v19;

          if (v18 > v20)
          {
            v45 = v14;
            v21 = PLLogArchiving();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              uuid = [v15 uuid];
              *buf = 138412290;
              v56 = uuid;
              _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::cleanup: removing archiveEntry=%@", buf, 0xCu);
            }

            v23 = MEMORY[0x1E696AE18];
            v44 = v15;
            uuid2 = [v15 uuid];
            v25 = [v23 predicateWithFormat:@"SELF CONTAINS %@", uuid2];

            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v43 = v25;
            v26 = [v40 filteredArrayUsingPredicate:v25];
            v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v47;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v47 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v46 + 1) + 8 * i);
                  v32 = +[PLUtilities containerPath];
                  v33 = [v32 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
                  v34 = [v33 stringByAppendingPathComponent:v31];
                  [defaultManager removeItemAtPath:v34 error:0];
                }

                v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
              }

              while (v28);
            }

            monotonicDate = v38;
            [v44 setRemovedDate:v38];

            self = selfCopy;
            v13 = v37;
            v12 = v41;
            v14 = v45;
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v12);
    }

    v35 = PLLogArchiving();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v35, OS_LOG_TYPE_DEFAULT, "PLArchiveManager::cleanup: done", buf, 2u);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)recover
{
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v6 = +[PLArchiveManager workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__PLArchiveManager_recover__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

void __27__PLArchiveManager_recover__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = PLLogArchiving();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __27__PLArchiveManager_recover__block_invoke_cold_1();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = +[PLArchiveManager archiveEntriesUnfinished];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = PLLogArchiving();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __27__PLArchiveManager_recover__block_invoke_cold_2(v18, v7);
        }

        v9 = [*(a1 + 32) archiveJobs];
        objc_sync_enter(v9);
        v10 = [*(a1 + 32) archiveJobs];
        v11 = [[PLArchiveJob alloc] initWithManager:*(a1 + 32) andArchiveEntry:v7];
        [v10 addObject:v11];

        objc_sync_exit(v9);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = PLLogArchiving();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __27__PLArchiveManager_recover__block_invoke_cold_3();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)migrateArchive:(id)archive
{
  v57[1] = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  v4 = [PLUtilities extractDateStringAndUUIDStringFromFilePath:archiveCopy];
  v5 = v4;
  if (!v4 || [v4 count] != 2)
  {
    archiveCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid archivePath=%@", archiveCopy];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveManager.m"];
    lastPathComponent = [v20 lastPathComponent];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveManager migrateArchive:]"];
    [PLCoreStorage logMessage:archiveCopy fromFile:lastPathComponent fromFunction:v22 fromLineNumber:864];

    v19 = PLLogCommon();
    if (os_log_type_enabled(&v19->super.super, OS_LOG_TYPE_DEBUG))
    {
      [PLArchiveManager migrateArchive:];
    }

    goto LABEL_34;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = +[PLUtilities containerPath];
  v8 = [v7 stringByAppendingString:@"Library/BatteryLife/Archives/powerlog_metadata_%@_%@.txt"];
  firstObject = [v5 firstObject];
  lastObject = [v5 lastObject];
  archiveCopy = [v6 stringWithFormat:v8, firstObject, lastObject];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v8) = [defaultManager fileExistsAtPath:archiveCopy];

  if (v8)
  {
    if (+[PLDefaults debugEnabled])
    {
      v13 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__PLArchiveManager_migrateArchive___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v13;
      if (migrateArchive__defaultOnce != -1)
      {
        dispatch_once(&migrateArchive__defaultOnce, block);
      }

      if (migrateArchive__classDebugEnabled == 1)
      {
        archiveCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLArchiveManager::migrateArchive: archive with metadata:%@", archiveCopy];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveManager.m"];
        lastPathComponent2 = [v15 lastPathComponent];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveManager migrateArchive:]"];
        [PLCoreStorage logMessage:archiveCopy2 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:873];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLArchiveManager migrateArchive:];
        }
      }
    }

    v19 = [[PLArchiveEntry alloc] initWithMetadata:archiveCopy];
    goto LABEL_33;
  }

  v23 = [PLValueComparison alloc];
  lastObject2 = [v5 lastObject];
  v25 = [(PLValueComparison *)v23 initWithKey:@"UUID" withValue:lastObject2 withComparisonOperation:0];

  v57[0] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  v27 = [PLArchiveManager archiveEntriesWithComparisons:v26];

  if (v27 && [v27 count])
  {

    v19 = 0;
    goto LABEL_34;
  }

  v54 = v25;
  v53 = v27;
  if (+[PLDefaults debugEnabled])
  {
    v28 = objc_opt_class();
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __35__PLArchiveManager_migrateArchive___block_invoke_568;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v28;
    if (migrateArchive__defaultOnce_566 != -1)
    {
      dispatch_once(&migrateArchive__defaultOnce_566, v55);
    }

    if (migrateArchive__classDebugEnabled_567 == 1)
    {
      archiveCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLArchiveManager::migrateArchive: archive without metadata:%@", archiveCopy];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveManager.m"];
      lastPathComponent3 = [v30 lastPathComponent];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveManager migrateArchive:]"];
      [PLCoreStorage logMessage:archiveCopy3 fromFile:lastPathComponent3 fromFunction:v32 fromLineNumber:887];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [PLArchiveManager migrateArchive:];
      }
    }
  }

  firstObject2 = [v5 firstObject];
  v35 = [firstObject2 length];
  v36 = [@"yyyy-MM-dd" length];

  if (v35 >= v36)
  {
    defaultDateFormatter = [MEMORY[0x1E695DF00] defaultDateFormatter];
    firstObject3 = [v5 firstObject];
    v48 = [firstObject3 substringToIndex:{objc_msgSend(@"yyyy-MM-dd", "length")}];
    v37 = [defaultDateFormatter dateFromString:v48];

    v49 = [v37 dateByAddingTimeInterval:86400.0];
    v38 = v49;
    if (v37 && v49)
    {
      v50 = [PLArchiveEntry alloc];
      convertFromSystemToMonotonic = [v37 convertFromSystemToMonotonic];
      convertFromSystemToMonotonic2 = [v38 convertFromSystemToMonotonic];
      lastObject3 = [v5 lastObject];
      v19 = [(PLArchiveEntry *)v50 initWithStartDate:convertFromSystemToMonotonic endDate:convertFromSystemToMonotonic2 andUUID:lastObject3];

      v45 = v53;
      v44 = 1;
      goto LABEL_32;
    }
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  convertFromSystemToMonotonic = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid startDate=%@, endDate=%@", v37, v38];
  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveManager.m"];
  lastPathComponent4 = [v40 lastPathComponent];
  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveManager migrateArchive:]"];
  [PLCoreStorage logMessage:convertFromSystemToMonotonic fromFile:lastPathComponent4 fromFunction:v42 fromLineNumber:896];

  convertFromSystemToMonotonic2 = PLLogCommon();
  if (os_log_type_enabled(convertFromSystemToMonotonic2, OS_LOG_TYPE_DEBUG))
  {
    [PLArchiveManager migrateArchive:];
  }

  v44 = 0;
  v19 = 0;
  v45 = v53;
LABEL_32:

  if (v44)
  {
LABEL_33:
    [(PLArchiveEntry *)v19 setStage:5];
  }

LABEL_34:

  v52 = *MEMORY[0x1E69E9840];
}

BOOL __35__PLArchiveManager_migrateArchive___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  migrateArchive__classDebugEnabled = result;
  return result;
}

BOOL __35__PLArchiveManager_migrateArchive___block_invoke_568(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  migrateArchive__classDebugEnabled_567 = result;
  return result;
}

- (void)migrate
{
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v6 = +[PLArchiveManager workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__PLArchiveManager_migrate__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

void __27__PLArchiveManager_migrate__block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = PLLogArchiving();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __27__PLArchiveManager_migrate__block_invoke_cold_1();
  }

  v37 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[PLUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
  v5 = [v2 contentsOfDirectoryAtPath:v4 error:0];

  v6 = [v5 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = +[PLUtilities containerPath];
        v12 = [v11 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
        v13 = [v12 stringByAppendingString:v10];

        if (([v10 hasSuffix:@".PLSQL"] & 1) != 0 || (objc_msgSend(@".PLSQL", "stringByAppendingString:", @".gz"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v10, "hasSuffix:", v14), v14, v15))
        {
          [*(a1 + 32) migrateArchive:v13];
        }

        else
        {
          [v37 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v37;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v52 count:16];
  v18 = 0x1E696A000;
  if (v17)
  {
    v19 = v17;
    v20 = v41;
    v21 = *v43;
    v22 = 0x1E8518000uLL;
    v38 = *v43;
    do
    {
      v23 = 0;
      do
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v42 + 1) + 8 * v23);
        if ([*(v22 + 2224) debugEnabled])
        {
          v25 = *(a1 + 32);
          v26 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v41[0] = __27__PLArchiveManager_migrate__block_invoke_584;
          v41[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v41[2] = v26;
          if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_4 != -1)
          {
            dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_4, block);
          }

          if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_4 == 1)
          {
            v27 = v20;
            v28 = v16;
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLArchiveManager::migrate: removing filepath:%@", v24];
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveManager.m"];
            v31 = [v30 lastPathComponent];
            v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveManager migrate]_block_invoke_2"];
            [PLCoreStorage logMessage:v29 fromFile:v31 fromFunction:v32 fromLineNumber:929];

            v33 = PLLogCommon();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v51 = v29;
              _os_log_debug_impl(&dword_1D8611000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v18 = 0x1E696A000uLL;
            v16 = v28;
            v20 = v27;
            v21 = v38;
            v22 = 0x1E8518000;
          }
        }

        v34 = [*(v18 + 3080) defaultManager];
        [v34 removeItemAtPath:v24 error:0];

        ++v23;
      }

      while (v19 != v23);
      v19 = [v16 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v19);
  }

  v35 = PLLogArchiving();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    __27__PLArchiveManager_migrate__block_invoke_cold_2();
  }

  v36 = *MEMORY[0x1E69E9840];
}

BOOL __27__PLArchiveManager_migrate__block_invoke_584(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_4 = result;
  return result;
}

+ (void)systemTimeChangedByOffset:(double)offset
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = +[PowerlogCore sharedCore];
  storage = [v4 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v7 = PLLogArchiving();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[PLArchiveManager systemTimeChangedByOffset:];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = +[PLArchiveManager archiveEntriesFinished];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          [v13 systemTimeOffset];
          [v13 setSystemTimeOffset:v14 + offset];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v15 = PLLogArchiving();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[PLArchiveManager systemTimeChangedByOffset:];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)lastArchivePath
{
  archiveEntriesFinished = [self archiveEntriesFinished];
  v3 = archiveEntriesFinished;
  if (archiveEntriesFinished && [archiveEntriesFinished count])
  {
    lastObject = [v3 lastObject];
    compressedPath = [lastObject compressedPath];
  }

  else
  {
    compressedPath = 0;
  }

  return compressedPath;
}

+ (id)allArchivePaths
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  archiveEntriesFinished = [self archiveEntriesFinished];
  v5 = [archiveEntriesFinished countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(archiveEntriesFinished);
        }

        compressedPath = [*(*(&v12 + 1) + 8 * i) compressedPath];
        [array addObject:compressedPath];
      }

      v6 = [archiveEntriesFinished countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)archiveEntriesUnfinished
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [[PLValueComparison alloc] initWithKey:@"Stage" withValue:&unk_1F5406180 withComparisonOperation:4];
  v3 = [[PLValueComparison alloc] initWithKey:@"RemovedDate" withValue:&unk_1F5406198 withComparisonOperation:0];
  v8[0] = v2;
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [PLArchiveManager archiveEntriesWithComparisons:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)archiveEntriesFinished
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [[PLValueComparison alloc] initWithKey:@"Stage" withValue:&unk_1F5406180 withComparisonOperation:0];
  v3 = [[PLValueComparison alloc] initWithKey:@"RemovedDate" withValue:&unk_1F5406198 withComparisonOperation:0];
  v8[0] = v2;
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [PLArchiveManager archiveEntriesWithComparisons:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)archiveForDate:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[PLArchiveManager archiveEntriesFinished];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x1E696AB80]);
        startDate = [v8 startDate];
        endDate = [v8 endDate];
        v12 = [v9 initWithStartDate:startDate endDate:endDate];

        if ([v12 containsDate:dateCopy])
        {
          v5 = v8;

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)archiveEntriesWithComparisons:(id)comparisons
{
  comparisonsCopy = comparisons;
  v4 = +[PowerlogCore sharedCore];
  storage = [v4 storage];
  v6 = +[PLArchiveEntry entryKey];
  v7 = [storage entriesForKey:v6 withComparisons:comparisonsCopy];

  return v7;
}

- (void)registerForArchivingNotificationUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = PLLogArchiving();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLArchiveManager registerForArchivingNotificationUsingBlock:];
    }

    v6 = +[PLArchiveManager workQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__PLArchiveManager_registerForArchivingNotificationUsingBlock___block_invoke;
    v7[3] = &unk_1E8519400;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async_and_wait(v6, v7);
  }
}

void __63__PLArchiveManager_registerForArchivingNotificationUsingBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) notificationBlocks];
  v2 = MEMORY[0x1DA71B0D0](*(a1 + 40));
  [v3 addObject:v2];
}

- (NSDate)lastEPSQLVacuumDate
{
  [PLDefaults doubleForKey:@"LastEPSQLVacuumDate"];
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  }

  return v3;
}

- (void)setLastEPSQLVacuumDate:(id)date
{
  if (date)
  {
    [date timeIntervalSince1970];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [PLDefaults setObject:v4 forKey:@"LastEPSQLVacuumDate" saveToDisk:1];
  }

  else
  {
    [PLDefaults setObject:0 forKey:@"LastEPSQLVacuumDate" saveToDisk:1];
  }

  self->_monotonicResetOccurred = 0;
}

- (void)handleFailure:(NSObject *)a3 forArchiveEntry:.cold.1(int a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 name];
  v7[0] = 67109378;
  v7[1] = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "PLArchiveManager::handleFailure:forArchive: failureType=%i, archiveEntry=%@", v7, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)eliglibleToVacuumEPSQLForDate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)eliglibleToVacuumEPSQLForDate:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__PLArchiveManager_recover__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__PLArchiveManager_recover__block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_3(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_4_0(&dword_1D8611000, v5, v6, "PLArchiveManager::recover unfinishedArchiveEntry=%@");
}

void __27__PLArchiveManager_recover__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)migrateArchive:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__PLArchiveManager_migrate__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__PLArchiveManager_migrate__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)systemTimeChangedByOffset:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)systemTimeChangedByOffset:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerForArchivingNotificationUsingBlock:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end