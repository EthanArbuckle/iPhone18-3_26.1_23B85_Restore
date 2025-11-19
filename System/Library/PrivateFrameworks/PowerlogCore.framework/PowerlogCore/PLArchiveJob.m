@interface PLArchiveJob
+ (SEL)recoverSelectorForStage:(int64_t)a3;
+ (SEL)runSelectorForStage:(int64_t)a3;
+ (id)storageQueue;
- (PLArchiveJob)initWithManager:(id)a3 andArchiveEntry:(id)a4;
- (int64_t)stage;
- (unint64_t)numAttempts;
- (void)recover;
- (void)recoverCompress;
- (void)recoverCopy;
- (void)recoverTrim;
- (void)run;
- (void)setNumAttempts:(unint64_t)a3;
- (void)setStage:(int64_t)a3;
- (void)stageCompress;
- (void)stageCopy;
- (void)stageRemove;
- (void)stageTrim;
- (void)startWatchdog;
- (void)stopWatchdog;
@end

@implementation PLArchiveJob

- (PLArchiveJob)initWithManager:(id)a3 andArchiveEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLArchiveJob;
  v9 = [(PLArchiveJob *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, a3);
    objc_storeStrong(&v10->_archiveEntry, a4);
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

- (void)setStage:(int64_t)a3
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
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLArchiveJob::setStage: stage=%i", a3, block, v13, v14, v15, v16];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob setStage:]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:45];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v11 = [(PLArchiveJob *)self archiveEntry];
  [v11 setStage:a3];
}

BOOL __25__PLArchiveJob_setStage___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setStage__classDebugEnabled = result;
  return result;
}

- (int64_t)stage
{
  v2 = [(PLArchiveJob *)self archiveEntry];
  v3 = [v2 stage];

  return v3;
}

- (void)setNumAttempts:(unint64_t)a3
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
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLArchiveJob::setNumAttempts: numAttempts=%i", a3, block, v15, v16, v17, v18];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob setNumAttempts:]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:53];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v11 = [(PLArchiveJob *)self archiveEntry];
  [v11 setNumAttempts:a3];

  if (a3 >= 0xA)
  {
    v12 = [(PLArchiveJob *)self manager];
    v13 = [(PLArchiveJob *)self archiveEntry];
    [v12 handleFailure:1 forArchiveEntry:v13];
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
  v2 = [(PLArchiveJob *)self archiveEntry];
  v3 = [v2 numAttempts];

  return v3;
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
      v5 = [(PLArchiveJob *)self archiveEntry];
      v6 = [v5 name];
      v7 = [v4 stringWithFormat:@"PLArchiveJob::run: archive=%@", v6, block, v23, v24, v25, v26];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob run]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:67];

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
  v15 = [(PLArchiveJob *)self archiveEntry];
  [v15 setMainDBSizeAtStart:v14];

  [(PLArchiveJob *)self setNumAttempts:[(PLArchiveJob *)self numAttempts]+ 1];
  [(PLArchiveJob *)self startWatchdog];
  if ([(PLArchiveJob *)self stage]<= 4)
  {
    do
    {
      v16 = [(PLArchiveJob *)self manager];
      v17 = [v16 isInterrupted];

      if (v17)
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
  v20 = [(PLArchiveJob *)self manager];
  v21 = [v20 isInterrupted];

  if (v21)
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

+ (SEL)runSelectorForStage:(int64_t)a3
{
  if (runSelectorForStage__once != -1)
  {
    +[PLArchiveJob runSelectorForStage:];
  }

  v4 = runSelectorForStage___stageToFunction;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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
  v4 = [v3 storage];
  v5 = [v4 connection];
  v6 = [(PLArchiveJob *)self archiveEntry];
  v7 = [v6 path];
  [v5 copyDatabaseToPath:v7];

  v8 = [PLSQLiteConnection alloc];
  v11 = [(PLArchiveJob *)self archiveEntry];
  v9 = [v11 path];
  v10 = [(PLSQLiteConnection *)v8 initWithFilePath:v9];
  [(PLSQLiteConnection *)v10 closeConnection];
}

- (void)stageTrim
{
  v3 = [(PLArchiveJob *)self archiveEntry];
  v4 = [v3 startDate];
  v13 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:v4];

  v5 = [PLSQLiteConnection alloc];
  v6 = [(PLArchiveJob *)self archiveEntry];
  v7 = [v6 path];
  v8 = [(PLSQLiteConnection *)v5 initWithFilePath:v7];

  v9 = [(PLArchiveJob *)self archiveEntry];
  v10 = [v9 startDate];
  v11 = [(PLArchiveJob *)self archiveEntry];
  v12 = [v11 endDate];
  [(PLSQLiteConnection *)v8 trimAllTablesFromDate:v10 toDate:v12 withTableFilters:v13];

  [(PLSQLiteConnection *)v8 vacuum];
  [(PLSQLiteConnection *)v8 closeConnection];
}

- (void)stageCompress
{
  v3 = [(PLArchiveJob *)self archiveEntry];
  v4 = [v3 path];
  v5 = [(PLArchiveJob *)self archiveEntry];
  v6 = [v5 compressedPath];
  v7 = [PLUtilities compressWithSource:v4 withDestination:v6 withLevel:4];

  if (v7)
  {
    v8 = +[PLUtilities runningAsUser];
    v9 = [v8 caseInsensitiveCompare:@"root"];

    if (!v9)
    {
      v10 = getpwnam("mobile");
      v11 = [(PLArchiveJob *)self archiveEntry];
      v12 = [v11 compressedPath];
      chown([v12 fileSystemRepresentation], v10->pw_uid, v10->pw_gid);
    }

    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [(PLArchiveJob *)self archiveEntry];
    v14 = [v13 path];
    [v15 removeItemAtPath:v14 error:0];
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
        v7 = [(PLArchiveJob *)self stage];
        v8 = [v6 stringWithFormat:@"PLArchiveManager::recover for stage=%i", v7, block, v14, v15, v16, v17];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLArchiveJob.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLArchiveJob recover]"];
        [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:177];

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

+ (SEL)recoverSelectorForStage:(int64_t)a3
{
  if (recoverSelectorForStage__once != -1)
  {
    +[PLArchiveJob recoverSelectorForStage:];
  }

  v4 = recoverSelectorForStage___stageToFunction;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLArchiveJob *)self archiveEntry];
  v5 = [v4 path];
  [v3 removeItemAtPath:v5 error:0];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [(PLArchiveJob *)self archiveEntry];
  v8 = [v7 path];
  v9 = [v8 stringByAppendingString:@"-shm"];
  [v6 removeItemAtPath:v9 error:0];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [(PLArchiveJob *)self archiveEntry];
  v12 = [v11 path];
  v13 = [v12 stringByAppendingString:@"-wal"];
  [v10 removeItemAtPath:v13 error:0];

  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [(PLArchiveJob *)self archiveEntry];
  v15 = [v14 path];
  v16 = [v15 stringByAppendingString:@"-journal"];
  [v17 removeItemAtPath:v16 error:0];
}

- (void)recoverTrim
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLArchiveJob *)self archiveEntry];
  v5 = [v4 path];
  v6 = [v5 stringByAppendingString:@"-shm"];
  [v3 removeItemAtPath:v6 error:0];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(PLArchiveJob *)self archiveEntry];
  v9 = [v8 path];
  v10 = [v9 stringByAppendingString:@"-wal"];
  [v7 removeItemAtPath:v10 error:0];

  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [(PLArchiveJob *)self archiveEntry];
  v12 = [v11 path];
  v13 = [v12 stringByAppendingString:@"-journal"];
  [v14 removeItemAtPath:v13 error:0];
}

- (void)recoverCompress
{
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [(PLArchiveJob *)self archiveEntry];
  v4 = [v3 compressedPath];
  [v5 removeItemAtPath:v4 error:0];
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
  v3 = [(PLArchiveJob *)self watchdog];
  [v3 setTimerActive:0];

  v4 = [(PLArchiveJob *)self watchdog];
  [v4 invalidate];

  [(PLArchiveJob *)self setWatchdog:0];
}

@end