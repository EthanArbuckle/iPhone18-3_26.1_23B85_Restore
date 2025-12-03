@interface PLArchiveJob
+ (SEL)recoverSelectorForStage:(int64_t)stage;
+ (SEL)runSelectorForStage:(int64_t)stage;
+ (id)storageQueue;
- (PLArchiveJob)initWithManager:(id)manager andArchiveEntry:(id)entry;
- (int64_t)stage;
- (unint64_t)numAttempts;
- (void)recover;
- (void)recoverCompress;
- (void)recoverCopy;
- (void)recoverTrim;
- (void)run;
- (void)setNumAttempts:(unint64_t)attempts;
- (void)setStage:(int64_t)stage;
- (void)stageCompress;
- (void)stageCopy;
- (void)stageRemove;
- (void)stageTrim;
- (void)startWatchdog;
- (void)stopWatchdog;
@end

@implementation PLArchiveJob

- (PLArchiveJob)initWithManager:(id)manager andArchiveEntry:(id)entry
{
  managerCopy = manager;
  entryCopy = entry;
  v12.receiver = self;
  v12.super_class = PLArchiveJob;
  v9 = [(PLArchiveJob *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, manager);
    objc_storeStrong(&v10->_archiveEntry, entry);
    [(PLArchiveJob *)v10 recover];
  }

  return v10;
}

+ (id)storageQueue
{
  v2 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

- (void)setStage:(int64_t)stage
{
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __25__PLArchiveJob_setStage___block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v5;
    if (setStage__defaultOnce != -1)
    {
      dispatch_once(&setStage__defaultOnce, &block);
    }

    if (setStage__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLArchiveJob::setStage: stage=%i", stage, block, v13, v14, v15, v16];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob setStage:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:45];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  [archiveEntry setStage:stage];
}

BOOL __25__PLArchiveJob_setStage___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setStage__classDebugEnabled = result;
  return result;
}

- (int64_t)stage
{
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  stage = [archiveEntry stage];

  return stage;
}

- (void)setNumAttempts:(unint64_t)attempts
{
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __31__PLArchiveJob_setNumAttempts___block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (setNumAttempts__defaultOnce != -1)
    {
      dispatch_once(&setNumAttempts__defaultOnce, &block);
    }

    if (setNumAttempts__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLArchiveJob::setNumAttempts: numAttempts=%i", attempts, block, v15, v16, v17, v18];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob setNumAttempts:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:53];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  [archiveEntry setNumAttempts:attempts];

  if (attempts >= 0xA)
  {
    manager = [(PLArchiveJob *)self manager];
    archiveEntry2 = [(PLArchiveJob *)self archiveEntry];
    [manager handleFailure:1 forArchiveEntry:archiveEntry2];
  }
}

BOOL __31__PLArchiveJob_setNumAttempts___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setNumAttempts__classDebugEnabled = result;
  return result;
}

- (unint64_t)numAttempts
{
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  numAttempts = [archiveEntry numAttempts];

  return numAttempts;
}

- (void)run
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __19__PLArchiveJob_run__block_invoke;
    v25 = &__block_descriptor_40_e5_v8__0lu32l8;
    v26 = v3;
    if (run_defaultOnce != -1)
    {
      dispatch_once(&run_defaultOnce, &block);
    }

    if (run_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      archiveEntry = [(PLArchiveJob *)self archiveEntry];
      name = [archiveEntry name];
      v7 = [v4 stringWithFormat:@"PLArchiveJob::run: archive=%@", name, block, v23, v24, v25, v26];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob run]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:67];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([(PLArchiveJob *)self stage]== -1)
  {
    [(PLArchiveJob *)self setStage:0];
  }

  v12 = +[PLUtilities containerPath];
  v13 = [v12 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  v14 = [PLFileStats fileSizeAtPath:v13];
  archiveEntry2 = [(PLArchiveJob *)self archiveEntry];
  [archiveEntry2 setMainDBSizeAtStart:v14];

  [(PLArchiveJob *)self setNumAttempts:[(PLArchiveJob *)self numAttempts]+ 1];
  [(PLArchiveJob *)self startWatchdog];
  if ([(PLArchiveJob *)self stage]<= 4)
  {
    do
    {
      manager = [(PLArchiveJob *)self manager];
      isInterrupted = [manager isInterrupted];

      if (isInterrupted)
      {
        break;
      }

      v18 = objc_autoreleasePoolPush();
      v19 = [PLArchiveJob runSelectorForStage:[(PLArchiveJob *)self stage]];
      if (v19)
      {
        ([(PLArchiveJob *)self methodForSelector:v19])(self, v19);
      }

      [(PLArchiveJob *)self setStage:[(PLArchiveJob *)self stage]+ 1];
      objc_autoreleasePoolPop(v18);
    }

    while ([(PLArchiveJob *)self stage]< 5);
  }

  [(PLArchiveJob *)self stopWatchdog];
  manager2 = [(PLArchiveJob *)self manager];
  isInterrupted2 = [manager2 isInterrupted];

  if (isInterrupted2)
  {
    [(PLArchiveJob *)self setNumAttempts:[(PLArchiveJob *)self numAttempts]- 1];
  }
}

BOOL __19__PLArchiveJob_run__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  run_classDebugEnabled = result;
  return result;
}

+ (SEL)runSelectorForStage:(int64_t)stage
{
  if (runSelectorForStage__once != -1)
  {
    +[PLArchiveJob runSelectorForStage:];
  }

  v4 = runSelectorForStage___stageToFunction;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:stage];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = NSSelectorFromString(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __36__PLArchiveJob_runSelectorForStage___block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F5406090;
  v0 = NSStringFromSelector(sel_stageStart);
  v9[0] = v0;
  v8[1] = &unk_1F54060A8;
  v1 = NSStringFromSelector(sel_stageCopy);
  v9[1] = v1;
  v8[2] = &unk_1F54060C0;
  v2 = NSStringFromSelector(sel_stageTrim);
  v9[2] = v2;
  v8[3] = &unk_1F54060D8;
  v3 = NSStringFromSelector(sel_stageCompress);
  v9[3] = v3;
  v8[4] = &unk_1F54060F0;
  v4 = NSStringFromSelector(sel_stageRemove);
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = runSelectorForStage___stageToFunction;
  runSelectorForStage___stageToFunction = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stageCopy
{
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  connection = [storage connection];
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  path = [archiveEntry path];
  [connection copyDatabaseToPath:path];

  v8 = [PLSQLiteConnection alloc];
  archiveEntry2 = [(PLArchiveJob *)self archiveEntry];
  path2 = [archiveEntry2 path];
  v10 = [(PLSQLiteConnection *)v8 initWithFilePath:path2];
  [(PLSQLiteConnection *)v10 closeConnection];
}

- (void)stageTrim
{
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  startDate = [archiveEntry startDate];
  v13 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:startDate];

  v5 = [PLSQLiteConnection alloc];
  archiveEntry2 = [(PLArchiveJob *)self archiveEntry];
  path = [archiveEntry2 path];
  v8 = [(PLSQLiteConnection *)v5 initWithFilePath:path];

  archiveEntry3 = [(PLArchiveJob *)self archiveEntry];
  startDate2 = [archiveEntry3 startDate];
  archiveEntry4 = [(PLArchiveJob *)self archiveEntry];
  endDate = [archiveEntry4 endDate];
  [(PLSQLiteConnection *)v8 trimAllTablesFromDate:startDate2 toDate:endDate withTableFilters:v13];

  [(PLSQLiteConnection *)v8 vacuum];
  [(PLSQLiteConnection *)v8 closeConnection];
}

- (void)stageCompress
{
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  path = [archiveEntry path];
  archiveEntry2 = [(PLArchiveJob *)self archiveEntry];
  compressedPath = [archiveEntry2 compressedPath];
  v7 = [PLUtilities compressWithSource:path withDestination:compressedPath withLevel:4];

  if (v7)
  {
    v8 = +[PLUtilities runningAsUser];
    v9 = [v8 caseInsensitiveCompare:@"root"];

    if (!v9)
    {
      v10 = getpwnam("mobile");
      archiveEntry3 = [(PLArchiveJob *)self archiveEntry];
      compressedPath2 = [archiveEntry3 compressedPath];
      chown([compressedPath2 fileSystemRepresentation], v10->pw_uid, v10->pw_gid);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    archiveEntry4 = [(PLArchiveJob *)self archiveEntry];
    path2 = [archiveEntry4 path];
    [defaultManager removeItemAtPath:path2 error:0];
  }
}

- (void)stageRemove
{
  v3 = +[PLArchiveJob storageQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PLArchiveJob_stageRemove__block_invoke;
  v4[3] = &unk_1E85190B8;
  v4[4] = self;
  [PLUtilities dispatchSyncIfNotCallerQueue:v3 withBlock:v4];
}

void __27__PLArchiveJob_stageRemove__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveEntry];
  v3 = [v2 endDate];
  v9 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:v3];

  v4 = +[PowerlogCore sharedCore];
  v5 = [v4 storage];
  v6 = [v5 connection];
  v7 = [*(a1 + 32) archiveEntry];
  v8 = [v7 endDate];
  [v6 trimAllTablesFromDate:v8 toDate:0 withTableFilters:v9];
}

- (void)recover
{
  v3 = [PLArchiveJob recoverSelectorForStage:[(PLArchiveJob *)self stage]];
  if (v3)
  {
    v4 = v3;
    if (+[PLDefaults debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __23__PLArchiveJob_recover__block_invoke;
      v16 = &__block_descriptor_40_e5_v8__0lu32l8;
      v17 = v5;
      if (recover_defaultOnce != -1)
      {
        dispatch_once(&recover_defaultOnce, &block);
      }

      if (recover_classDebugEnabled == 1)
      {
        v6 = MEMORY[0x1E696AEC0];
        stage = [(PLArchiveJob *)self stage];
        v8 = [v6 stringWithFormat:@"PLArchiveManager::recover for stage=%i", stage, block, v14, v15, v16, v17];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
        lastPathComponent = [v9 lastPathComponent];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob recover]"];
        [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:177];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    ([(PLArchiveJob *)self methodForSelector:v4])(self, v4);
  }
}

BOOL __23__PLArchiveJob_recover__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  recover_classDebugEnabled = result;
  return result;
}

+ (SEL)recoverSelectorForStage:(int64_t)stage
{
  if (recoverSelectorForStage__once != -1)
  {
    +[PLArchiveJob recoverSelectorForStage:];
  }

  v4 = recoverSelectorForStage___stageToFunction;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:stage];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = NSSelectorFromString(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __40__PLArchiveJob_recoverSelectorForStage___block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F54060A8;
  v0 = NSStringFromSelector(sel_recoverCopy);
  v7[0] = v0;
  v6[1] = &unk_1F54060C0;
  v1 = NSStringFromSelector(sel_recoverTrim);
  v7[1] = v1;
  v6[2] = &unk_1F54060D8;
  v2 = NSStringFromSelector(sel_recoverCompress);
  v7[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = recoverSelectorForStage___stageToFunction;
  recoverSelectorForStage___stageToFunction = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)recoverCopy
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  path = [archiveEntry path];
  [defaultManager removeItemAtPath:path error:0];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry2 = [(PLArchiveJob *)self archiveEntry];
  path2 = [archiveEntry2 path];
  v9 = [path2 stringByAppendingString:@"-shm"];
  [defaultManager2 removeItemAtPath:v9 error:0];

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry3 = [(PLArchiveJob *)self archiveEntry];
  path3 = [archiveEntry3 path];
  v13 = [path3 stringByAppendingString:@"-wal"];
  [defaultManager3 removeItemAtPath:v13 error:0];

  defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry4 = [(PLArchiveJob *)self archiveEntry];
  path4 = [archiveEntry4 path];
  v16 = [path4 stringByAppendingString:@"-journal"];
  [defaultManager4 removeItemAtPath:v16 error:0];
}

- (void)recoverTrim
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  path = [archiveEntry path];
  v6 = [path stringByAppendingString:@"-shm"];
  [defaultManager removeItemAtPath:v6 error:0];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry2 = [(PLArchiveJob *)self archiveEntry];
  path2 = [archiveEntry2 path];
  v10 = [path2 stringByAppendingString:@"-wal"];
  [defaultManager2 removeItemAtPath:v10 error:0];

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry3 = [(PLArchiveJob *)self archiveEntry];
  path3 = [archiveEntry3 path];
  v13 = [path3 stringByAppendingString:@"-journal"];
  [defaultManager3 removeItemAtPath:v13 error:0];
}

- (void)recoverCompress
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  archiveEntry = [(PLArchiveJob *)self archiveEntry];
  compressedPath = [archiveEntry compressedPath];
  [defaultManager removeItemAtPath:compressedPath error:0];
}

- (void)startWatchdog
{
  v3 = [PLTimer alloc];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__PLArchiveJob_startWatchdog__block_invoke;
  v7[3] = &unk_1E8519A18;
  v7[4] = self;
  v6 = [(PLTimer *)v3 initWithFireDate:v4 withInterval:0 withTolerance:0 repeats:v5 withUserInfo:v7 withQueue:0.0 withBlock:0.0];
  [(PLArchiveJob *)self setWatchdog:v6];
}

void __29__PLArchiveJob_startWatchdog__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) manager];
  v2 = [*(a1 + 32) archiveEntry];
  [v3 handleFailure:0 forArchiveEntry:v2];
}

- (void)stopWatchdog
{
  watchdog = [(PLArchiveJob *)self watchdog];
  [watchdog setTimerActive:0];

  watchdog2 = [(PLArchiveJob *)self watchdog];
  [watchdog2 invalidate];

  [(PLArchiveJob *)self setWatchdog:0];
}

@end