@interface PLOperator
+ (BOOL)fullMode;
+ (BOOL)isDebugEnabled;
+ (BOOL)isDebugEnabledForKey:(id)a3;
+ (BOOL)isEnabled;
+ (id)className;
+ (id)createEntriesForMetrics:(id)a3 withData:(id)a4 withDate:(id)a5;
+ (id)entryDefinitions;
+ (id)entryKeys;
+ (id)operator;
+ (id)storageQueueName;
+ (id)trimConditionsWithEntryKey:(id)a3 withTrimDate:(id)a4 withCount:(id)a5 withStartDateKey:(id)a6;
+ (id)trimConditionsWithEntryKey:(id)a3 withTrimDate:(id)a4 withDuration:(id)a5 withStartDateKey:(id)a6;
+ (void)load;
- (BOOL)defaultBoolForKey:(id)a3;
- (BOOL)isDebugEnabled;
- (BOOL)isDebugEnabledForKey:(id)a3;
- (BOOL)postFilteredNotificationForEntry:(id)a3 withFilteredDefition:(id)a4 withNotificationName:(id)a5;
- (BOOL)shouldWriteEntry:(id)a3 withDebug:(BOOL)a4;
- (NSString)className;
- (NSString)storageQueueName;
- (OS_dispatch_queue)storageQueue;
- (OS_dispatch_queue)workQueue;
- (PLCoreStorage)storage;
- (PLOperator)init;
- (double)defaultDoubleForKey:(id)a3;
- (double)timeIntervalSinceLastLogForEntryKey:(id)a3;
- (id)defaultObjectForKey:(id)a3;
- (id)entryDefinitions;
- (id)entryKeys;
- (id)initForTest;
- (id)tablesToTrimConditionsForTrimDate:(id)a3;
- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4;
- (int64_t)defaultLongForKey:(id)a3;
- (void)dealloc;
- (void)enableBufferFlushTimer:(unint64_t)a3;
- (void)flushBuffer;
- (void)logDMAEntry:(id)a3;
- (void)logEntries:(id)a3 withGroupID:(id)a4;
- (void)logEntry:(id)a3;
- (void)logForSubsystem:(id)a3 category:(id)a4 data:(id)a5 date:(id)a6;
- (void)logFromCFCallback:(id)a3;
- (void)logProportionateAggregateEntry:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5;
- (void)logRequestNotification:(id)a3;
- (void)postEntries:(id)a3;
- (void)postEntries:(id)a3 withGroupID:(id)a4;
- (void)setupFilterRequest:(id)a3;
- (void)subscribeNotificationsForEntries;
- (void)updateEntry:(id)a3 withBlock:(id)a4;
@end

@implementation PLOperator

+ (id)className
{
  if (className_onceToken != -1)
  {
    +[PLOperator className];
  }

  dispatch_semaphore_wait(className__classNamesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v2 = [className__classNames objectForKeyedSubscript:objc_opt_class()];

  if (!v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [className__classNames setObject:v4 forKeyedSubscript:objc_opt_class()];
  }

  v5 = [className__classNames objectForKeyedSubscript:objc_opt_class()];
  dispatch_semaphore_signal(className__classNamesSemaphore);

  return v5;
}

- (OS_dispatch_queue)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (PLCoreStorage)storage
{
  v2 = +[PowerlogCore sharedCore];
  v3 = [v2 storage];

  return v3;
}

+ (id)storageQueueName
{
  if (storageQueueName_onceToken != -1)
  {
    +[PLOperator storageQueueName];
  }

  v3 = storageQueueName__storageQueueNames;
  objc_sync_enter(v3);
  v4 = [storageQueueName__storageQueueNames objectForKeyedSubscript:objc_opt_class()];

  if (!v4)
  {
    v5 = [PLCoreStorage storageQueueNameForClass:a1];
    [storageQueueName__storageQueueNames setObject:v5 forKeyedSubscript:objc_opt_class()];
  }

  v6 = [storageQueueName__storageQueueNames objectForKeyedSubscript:objc_opt_class()];
  objc_sync_exit(v3);

  return v6;
}

- (OS_dispatch_queue)storageQueue
{
  v2 = [(PLOperator *)self storageQueueName];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

- (NSString)storageQueueName
{
  v2 = objc_opt_class();

  return [v2 storageQueueName];
}

- (BOOL)isDebugEnabled
{
  v2 = objc_opt_class();

  return [v2 isDebugEnabled];
}

+ (BOOL)isDebugEnabled
{
  if ([PLDefaults isClassDebugEnabled:objc_opt_class()])
  {
    return 1;
  }

  v3 = objc_opt_class();

  return [PLDefaults isClassDebugEnabled:v3];
}

- (NSString)className
{
  v2 = objc_opt_class();

  return [v2 className];
}

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [PLCoreOperator registerOperator:v3];
  }
}

uint64_t __23__PLOperator_className__block_invoke()
{
  v0 = objc_opt_new();
  v1 = className__classNames;
  className__classNames = v0;

  v2 = dispatch_semaphore_create(1);
  className__classNamesSemaphore = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

uint64_t __30__PLOperator_storageQueueName__block_invoke()
{
  v0 = objc_opt_new();
  storageQueueName__storageQueueNames = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)operator
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (BOOL)isEnabled
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 className];
  v4 = [v2 stringWithFormat:@"%@%@", v3, @"_Enabled"];

  LOBYTE(v3) = [PLDefaults BOOLForKey:v4 ifNotSet:1];
  return v3;
}

+ (BOOL)isDebugEnabledForKey:(id)a3
{
  v3 = a3;
  v4 = [PLDefaults isClassDebugEnabled:objc_opt_class() forKey:v3]|| [PLDefaults isClassDebugEnabled:objc_opt_class() forKey:v3];

  return v4;
}

+ (BOOL)fullMode
{
  v2 = objc_opt_class();

  return [PLDefaults fullModeForClass:v2];
}

+ (id)entryDefinitions
{
  v2 = objc_opt_class();

  return [PLEntryDefinition entryDefinitionsForOperatorClass:v2];
}

+ (id)entryKeys
{
  v2 = objc_opt_class();

  return [PLEntryKey entryKeysForOperatorClass:v2];
}

- (PLOperator)init
{
  v37.receiver = self;
  v37.super_class = PLOperator;
  v2 = [(PLOperator *)&v37 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lastLogDateForEntryKey = v2->_lastLogDateForEntryKey;
    v2->_lastLogDateForEntryKey = v3;

    if (+[PLDefaults debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __18__PLOperator_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (init_defaultOnce_2 != -1)
      {
        dispatch_once(&init_defaultOnce_2, block);
      }

      if (init_classDebugEnabled_2 == 1)
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = [(PLOperator *)v2 className];
        v8 = [v6 stringWithFormat:@"*** Debug enabled for %@ ***", v7];

        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator init]"];
        [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:183];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (+[PLDefaults debugEnabled])
    {
      v13 = objc_opt_class();
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __18__PLOperator_init__block_invoke_39;
      v33 = &unk_1E8519630;
      v34 = @"entryDefinitions";
      v35 = v13;
      if (init_defaultOnce_37 != -1)
      {
        dispatch_once(&init_defaultOnce_37, &v30);
      }

      v14 = init_classDebugEnabled_38;

      if (v14 == 1)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = [objc_opt_class() entryDefinitions];
        v17 = [v15 stringWithFormat:@"%@", v16, v30, v31, v32, v33];

        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator init]"];
        [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:184];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if ([(PLOperator *)v2 isDebugEnabled])
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = [(PLOperator *)v2 className];
      v24 = [v22 stringWithFormat:@"com.apple.powerlogd.%@.log", v23];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, didReceiveLogNotification, v24, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v26 = objc_opt_new();
    [(PLOperator *)v2 setFilterDefinitions:v26];

    v27 = objc_opt_new();
    [(PLOperator *)v2 setFilterDeltaLastEntryIDs:v27];

    v28 = objc_opt_new();
    [(PLOperator *)v2 setBufferedEntries:v28];

    [(PLOperator *)v2 setTriggerBufferFlush:0];
    [(PLOperator *)v2 subscribeNotificationsForEntries];
  }

  return v2;
}

BOOL __18__PLOperator_init__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_2 = result;
  return result;
}

BOOL __18__PLOperator_init__block_invoke_39(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  init_classDebugEnabled_38 = result;
  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = PLOperator;
  [(PLOperator *)&v5 dealloc];
}

- (id)defaultObjectForKey:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PLOperator *)self className];
  v7 = [v5 stringWithFormat:@"%@_%@", v6, v4];

  v8 = [PLDefaults objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [objc_opt_class() defaults];
    v10 = [v11 objectForKeyedSubscript:v4];
  }

  return v10;
}

- (BOOL)defaultBoolForKey:(id)a3
{
  v3 = [(PLOperator *)self defaultObjectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)defaultDoubleForKey:(id)a3
{
  v3 = [(PLOperator *)self defaultObjectForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)defaultLongForKey:(id)a3
{
  v3 = [(PLOperator *)self defaultObjectForKey:a3];
  v4 = [v3 longValue];

  return v4;
}

- (BOOL)isDebugEnabledForKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isDebugEnabledForKey:v3];

  return v4;
}

- (id)initForTest
{
  v3.receiver = self;
  v3.super_class = PLOperator;
  return [(PLOperator *)&v3 init];
}

- (double)timeIntervalSinceLastLogForEntryKey:(id)a3
{
  v4 = a3;
  v5 = self->_lastLogDateForEntryKey;
  objc_sync_enter(v5);
  v6 = [(PLOperator *)self lastLogDateForEntryKey];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [(PLOperator *)self lastLogDateForEntryKey];
    v9 = [v8 objectForKeyedSubscript:v4];
    [v9 timeIntervalSinceMonitonicNow];
    v11 = -v10;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] monotonicDate];
    v9 = [(PLOperator *)self lastLogDateForEntryKey];
    [v9 setObject:v8 forKeyedSubscript:v4];
    v11 = INFINITY;
  }

  objc_sync_exit(v5);
  return v11;
}

- (void)logFromCFCallback:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__PLOperator_logFromCFCallback___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __32__PLOperator_logFromCFCallback___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (+[PLDefaults debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PLOperator_logFromCFCallback___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (ArrayReserved_block_invoke_defaultOnce_1 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_defaultOnce_1, block);
    }

    if (ArrayReserved_block_invoke_classDebugEnabled_1 == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [*(a1 + 32) className];
      v7 = [v5 stringWithFormat:@"%@ got CFCallback %@", v6, *(a1 + 40)];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logFromCFCallback:]_block_invoke"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:306];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [*(a1 + 32) log];
  objc_autoreleasePoolPop(v2);
}

BOOL __32__PLOperator_logFromCFCallback___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_classDebugEnabled_1 = result;
  return result;
}

- (void)flushBuffer
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __25__PLOperator_flushBuffer__block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v3;
    if (flushBuffer_defaultOnce != -1)
    {
      dispatch_once(&flushBuffer_defaultOnce, &block);
    }

    if (flushBuffer_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [(PLOperator *)self bufferedEntries];
      v6 = [v5 count];
      v7 = [v4 stringWithFormat:@"Flushing buffer, queue size %lu", v6, block, v18, v19, v20, v21];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator flushBuffer]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:315];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v12 = [(PLOperator *)self bufferedEntries];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(PLOperator *)self bufferedEntries];
    v15 = objc_opt_new();
    [(PLOperator *)self setBufferedEntries:v15];

    v16 = [(PLOperator *)self storage];
    [v16 writeEntries:v14 withCompletionBlock:&__block_literal_global_65];
  }
}

BOOL __25__PLOperator_flushBuffer__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  flushBuffer_classDebugEnabled = result;
  return result;
}

- (void)enableBufferFlushTimer:(unint64_t)a3
{
  v5 = [(PLOperator *)self triggerBufferFlush];

  if (!v5)
  {
    v6 = [PLTimer alloc];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = a3;
    v9 = [(PLOperator *)self workQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__PLOperator_enableBufferFlushTimer___block_invoke;
    v11[3] = &unk_1E8519A18;
    v11[4] = self;
    v10 = [(PLTimer *)v6 initWithFireDate:v7 withInterval:1 withTolerance:0 repeats:v9 withUserInfo:v11 withQueue:v8 withBlock:0.0];
    [(PLOperator *)self setTriggerBufferFlush:v10];
  }
}

void __37__PLOperator_enableBufferFlushTimer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) flushBuffer];
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLOperator_enableBufferFlushTimer___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (ArrayReserved_block_invoke_2_defaultOnce_0 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_2_defaultOnce_0, block);
    }

    if (ArrayReserved_block_invoke_2_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Timer triggered flush buffer"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator enableBufferFlushTimer:]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:334];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __37__PLOperator_enableBufferFlushTimer___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_2_classDebugEnabled_0 = result;
  return result;
}

- (void)logProportionateAggregateEntry:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = [(PLOperator *)self storage];
    v12 = [v11 storageReady];

    if (!v8 || (v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v13 = [v8 entryKey];
  v14 = [PLUtilities shouldLogForEntryKey:v13];

  if (v14)
  {
    if ([(PLOperator *)self isDebugEnabledForKey:@"logEntry"])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v8];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:v15 fromFile:v17 fromFunction:v18 fromLineNumber:350];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    v20 = [v8 entryDefinition];
    v21 = [PLEntryDefinition isAggregateForEntryDefinition:v20];

    if (v21)
    {
      v22 = self->_lastLogDateForEntryKey;
      objc_sync_enter(v22);
      v23 = [MEMORY[0x1E695DF00] monotonicDate];
      v24 = [(PLOperator *)self lastLogDateForEntryKey];
      v25 = [v8 entryKey];
      [v24 setObject:v23 forKeyedSubscript:v25];

      objc_sync_exit(v22);
      if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
      {
        v26 = [(PLOperator *)self storage];
        [v26 writeProportionateAggregateEntry:v8 withStartDate:v9 withEndDate:v10];
      }
    }
  }

LABEL_15:
}

- (void)logEntry:(id)a3
{
  v75[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v4)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v5 = [(PLOperator *)self storage];
    v6 = [v5 storageReady];

    if (!v4 || (v6 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v7 = [v4 entryKey];
  v8 = [PLUtilities shouldLogForEntryKey:v7];

  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = [(PLOperator *)self isDebugEnabledForKey:@"logEntry"];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
    v12 = [v11 lastPathComponent];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logEntry:]"];
    [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:372];

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v15 = [v4 entryDefinition];
  v16 = [PLEntryDefinition isAggregateForEntryDefinition:v15];

  if (v16)
  {
    v17 = self->_lastLogDateForEntryKey;
    objc_sync_enter(v17);
    v18 = [MEMORY[0x1E695DF00] monotonicDate];
    v19 = [(PLOperator *)self lastLogDateForEntryKey];
    v20 = [v4 entryKey];
    [v19 setObject:v18 forKeyedSubscript:v20];

    objc_sync_exit(v17);
    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v21 = [(PLOperator *)self storage];
      [v21 writeAggregateEntry:v4];
    }

    goto LABEL_41;
  }

  if (![(PLOperator *)self shouldWriteEntry:v4 withDebug:v9])
  {
    goto LABEL_41;
  }

  v22 = self->_lastLogDateForEntryKey;
  objc_sync_enter(v22);
  v23 = [MEMORY[0x1E695DF00] monotonicDate];
  v24 = [(PLOperator *)self lastLogDateForEntryKey];
  v25 = [v4 entryKey];
  [v24 setObject:v23 forKeyedSubscript:v25];

  objc_sync_exit(v22);
  v26 = [v4 entryKey];
  v27 = [PLEntryDefinition definitionForEntryKey:v26];
  v28 = [v27 objectForKeyedSubscript:?];
  v29 = [v28 objectForKeyedSubscript:@"BufferEntries"];
  LODWORD(v25) = [v29 BOOLValue];

  if (v25)
  {
    v72 = [v4 entryKey];
    v30 = [PLEntryDefinition definitionForEntryKey:v72];
    v31 = [v30 objectForKeyedSubscript:@"Configs"];
    v32 = [v31 objectForKeyedSubscript:?];
    if (v32)
    {
      v33 = [v4 entryKey];
      v34 = [PLEntryDefinition definitionForEntryKey:v33];
      v35 = [v34 objectForKeyedSubscript:@"Configs"];
      v36 = [v35 objectForKeyedSubscript:@"BufferFlushInterval"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v37 = [v4 entryKey];
        v38 = [PLEntryDefinition definitionForEntryKey:v37];
        v39 = [v38 objectForKeyedSubscript:@"Configs"];
        v40 = [v39 objectForKeyedSubscript:@"BufferFlushInterval"];
        v41 = [v40 unsignedIntValue];

        v42 = v41;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v42 = 10;
LABEL_25:
    [(PLOperator *)self enableBufferFlushTimer:v42];
    v44 = [(PLOperator *)self bufferedEntries];
    [v44 addObject:v4];

    if (v9)
    {
      v45 = MEMORY[0x1E696AEC0];
      v46 = [(PLOperator *)self bufferedEntries];
      v47 = [v45 stringWithFormat:@"Added entry onto queue, queue size: %lu", objc_msgSend(v46, "count")];

      v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v49 = [v48 lastPathComponent];
      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logEntry:]"];
      [PLCoreStorage logMessage:v47 fromFile:v49 fromFunction:v50 fromLineNumber:400];

      v51 = PLLogCommon();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    v52 = [v4 entryKey];
    v53 = [PLEntryDefinition definitionForEntryKey:v52];
    v54 = [v53 objectForKeyedSubscript:@"Configs"];
    v55 = [v54 objectForKeyedSubscript:?];
    if (v55)
    {
      v56 = [v4 entryKey];
      v57 = [PLEntryDefinition definitionForEntryKey:v56];
      v58 = [v57 objectForKeyedSubscript:@"Configs"];
      v59 = [v58 objectForKeyedSubscript:@"BufferSize"];
      objc_opt_class();
      v71 = objc_opt_isKindOfClass();

      if (v71)
      {
        v60 = [v4 entryKey];
        v61 = [PLEntryDefinition definitionForEntryKey:v60];
        v62 = [v61 objectForKeyedSubscript:@"Configs"];
        v63 = [v62 objectForKeyedSubscript:@"BufferSize"];
        v64 = [v63 unsignedIntValue];

        v65 = v64;
        goto LABEL_34;
      }
    }

    else
    {
    }

    v65 = 10;
LABEL_34:
    v66 = [(PLOperator *)self bufferedEntries];
    v67 = [v66 count] < v65;

    if (!v67)
    {
      [(PLOperator *)self flushBuffer];
    }

    goto LABEL_37;
  }

  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    v75[0] = v4;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    [(PLOperator *)self postEntries:v43];
  }

  else
  {
    v68 = [(PLOperator *)self storage];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __23__PLOperator_logEntry___block_invoke;
    v73[3] = &unk_1E8519100;
    v73[4] = self;
    v74 = v4;
    [v68 writeEntry:v74 withCompletionBlock:v73];
  }

LABEL_37:
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && [v4 hasDMAKeys])
  {
    [(PLOperator *)self logDMAEntry:v4];
  }

LABEL_41:

  v69 = *MEMORY[0x1E69E9840];
}

void __23__PLOperator_logEntry___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 postEntries:v2];

  v3 = *MEMORY[0x1E69E9840];
}

- (void)logEntries:(id)a3 withGroupID:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[PLOperator storage](self, "storage"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 storageReady], v8, v9))
  {
    v36 = v7;
    v37 = v6;
    if ([(PLOperator *)self isDebugEnabledForKey:@"logEntry"]|| [(PLOperator *)self isDebugEnabledForKey:@"logEntries"])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logEntries:withGroupID:]"];
      [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:453];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v6 = v37;
    }

    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v46 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v47;
      v19 = 0x1E8518000uLL;
      v20 = 0x1E8518000uLL;
      v38 = *v47;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v47 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          v23 = [*(v19 + 2256) isAggregateForEntryKey:v22];
          v24 = [*(v20 + 2584) isPowerlogHelperd];
          if (v23)
          {
            if ((v24 & 1) == 0 && ([*(v20 + 2584) isPerfPowerMetricd] & 1) == 0)
            {
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v25 = [v15 objectForKeyedSubscript:v22];
              v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v43;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v43 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v42 + 1) + 8 * j);
                    v31 = [(PLOperator *)self storage];
                    [v31 writeAggregateEntry:v30];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
                }

                while (v27);
              }

              v18 = v38;
              v19 = 0x1E8518000;
              v20 = 0x1E8518000;
            }
          }

          else if (v24 & 1) != 0 || ([*(v20 + 2584) isPerfPowerMetricd])
          {
            v32 = [v15 objectForKeyedSubscript:v22];
            [(PLOperator *)self postEntries:v32];
          }

          else
          {
            v33 = [(PLOperator *)self storage];
            v34 = [v15 objectForKeyedSubscript:v22];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __37__PLOperator_logEntries_withGroupID___block_invoke;
            v39[3] = &unk_1E8519AF8;
            v39[4] = self;
            v40 = v15;
            v41 = v22;
            [v33 writeEntries:v34 withCompletionBlock:v39];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v17);
    }

    v7 = v36;
    [(PLOperator *)self postEntries:v15 withGroupID:v36];
    v6 = v37;
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __37__PLOperator_logEntries_withGroupID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  [v1 postEntries:v2];
}

- (void)updateEntry:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = [(PLOperator *)self storage];
    v8 = [v9 storageReady] ^ 1;

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if ((v8 & 1) == 0)
  {
    if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
    {
      v10 = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__PLOperator_updateEntry_withBlock___block_invoke_3;
      block[3] = &unk_1E8519100;
      v11 = v14;
      v14[0] = v6;
      v14[1] = self;
      dispatch_async(v10, block);
    }

    else
    {
      v12 = [(PLOperator *)self storage];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __36__PLOperator_updateEntry_withBlock___block_invoke;
      v15[3] = &unk_1E851B518;
      v11 = &v17;
      v17 = v7;
      v15[4] = self;
      v16 = v6;
      [v12 updateEntry:v16 withBlock:v15];

      v10 = v16;
    }
  }

LABEL_11:
}

void __36__PLOperator_updateEntry_withBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PLOperator_updateEntry_withBlock___block_invoke_2;
  v6[3] = &unk_1E8519100;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, v6);
}

void __36__PLOperator_updateEntry_withBlock___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v8 = @"entry";
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) entryKey];
  v6 = [v4 stringWithFormat:@"%@_update", v5];
  [PLUtilities postNotificationName:v6 object:*(a1 + 40) userInfo:v3];

  v7 = *MEMORY[0x1E69E9840];
}

void __36__PLOperator_updateEntry_withBlock___block_invoke_3(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v8 = @"entry";
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) entryKey];
  v6 = [v4 stringWithFormat:@"%@_update", v5];
  [PLUtilities postNotificationName:v6 object:*(a1 + 40) userInfo:v3];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldWriteEntry:(id)a3 withDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 isErrorEntry] & 1) == 0)
  {
    if (![v6 filterEntryLogging])
    {
      v7 = 1;
      goto LABEL_22;
    }

    v8 = [(PLOperator *)self storage];
    v9 = [v6 entryKey];
    v10 = [v8 lastEntryForKey:v9];

    if (v4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lastEntry=%@", v10];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator shouldWriteEntry:withDebug:]"];
      [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:517];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      if (v10)
      {
        v16 = [v6 compare:v10 options:2];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result=%ld", v16];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator shouldWriteEntry:withDebug:]"];
        [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:520];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        if (!v16)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"skipping logging"];
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator shouldWriteEntry:withDebug:]"];
          [PLCoreStorage logMessage:v22 fromFile:v24 fromFunction:v25 fromLineNumber:522];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          goto LABEL_18;
        }
      }
    }

    else if (v10 && ![v6 compare:v10 options:2])
    {
LABEL_18:
      v27 = [v6 entryKey];
      v28 = [v27 rangeOfString:@"EventBackward"];

      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v33[0] = 0;
        v33[1] = v33;
        v33[2] = 0x3032000000;
        v33[3] = __Block_byref_object_copy__19;
        v33[4] = __Block_byref_object_dispose__19;
        v34 = v6;
        v31[0] = 0;
        v31[1] = v31;
        v31[2] = 0x3032000000;
        v31[3] = __Block_byref_object_copy__19;
        v31[4] = __Block_byref_object_dispose__19;
        v32 = v10;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __41__PLOperator_shouldWriteEntry_withDebug___block_invoke;
        v30[3] = &unk_1E8519198;
        v30[4] = v31;
        v30[5] = v33;
        [(PLOperator *)self updateEntry:v32 withBlock:v30];
        _Block_object_dispose(v31, 8);

        _Block_object_dispose(v33, 8);
      }

      v7 = 0;
      goto LABEL_21;
    }

    v7 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:

  return v7;
}

void __41__PLOperator_shouldWriteEntry_withDebug___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) entryDate];
  [*(*(*(a1 + 32) + 8) + 40) setEntryDate:v2];
}

- (void)postEntries:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(PLOperator *)self workQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__PLOperator_postEntries___block_invoke;
    v7[3] = &unk_1E8519100;
    v8 = v5;
    v9 = self;
    dispatch_async(v6, v7);
  }
}

void __26__PLOperator_postEntries___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = *v28;
    do
    {
      v5 = 0;
      v22 = v4;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v33 = @"entry";
        v34 = v6;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        if (+[PLDefaults debugEnabled])
        {
          v8 = *(a1 + 40);
          v9 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __26__PLOperator_postEntries___block_invoke_2;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v9;
          if (ArrayReserved_block_invoke_3_defaultOnce_0 != -1)
          {
            dispatch_once(&ArrayReserved_block_invoke_3_defaultOnce_0, block);
          }

          if (ArrayReserved_block_invoke_3_classDebugEnabled_0 == 1)
          {
            v10 = v2;
            v11 = MEMORY[0x1E696AEC0];
            v12 = [v6 entryKey];
            v13 = [v11 stringWithFormat:@"posting %@", v12];

            v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
            v15 = [v14 lastPathComponent];
            v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postEntries:]_block_invoke"];
            [PLCoreStorage logMessage:v13 fromFile:v15 fromFunction:v16 fromLineNumber:544];

            v17 = PLLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v32 = v13;
              _os_log_debug_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v2 = v10;
            v4 = v22;
          }
        }

        v18 = [v6 entryKey];
        [PLUtilities postNotificationName:v18 object:*(a1 + 40) userInfo:v7];

        v19 = [*(a1 + 40) filterDefinitions];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __26__PLOperator_postEntries___block_invoke_101;
        v24[3] = &unk_1E8519318;
        v24[4] = *(a1 + 40);
        v24[5] = v6;
        v25 = v7;
        v20 = v7;
        [v19 enumerateKeysAndObjectsUsingBlock:v24];

        ++v5;
      }

      while (v4 != v5);
      v4 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v4);
  }

  v21 = *MEMORY[0x1E69E9840];
}

BOOL __26__PLOperator_postEntries___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_3_classDebugEnabled_0 = result;
  return result;
}

void __26__PLOperator_postEntries___block_invoke_101(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  LODWORD(a3) = [*(a1 + 32) postFilteredNotificationForEntry:*(a1 + 40) withFilteredDefition:a3 withNotificationName:v5];
  v6 = +[PLDefaults debugEnabled];
  if (a3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __26__PLOperator_postEntries___block_invoke_2_102;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (ArrayReserved_block_invoke_4_defaultOnce_0 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_0, block);
      }

      if (ArrayReserved_block_invoke_4_classDebugEnabled_0 == 1)
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = [*(a1 + 40) entryKey];
        v11 = [v9 stringWithFormat:@"posting %@ with NotificationName %@", v10, v5];

        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postEntries:]_block_invoke"];
        [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:551];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    [PLUtilities postNotificationName:v5 object:*(a1 + 32) userInfo:*(a1 + 48)];
  }

  else if (v6)
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __26__PLOperator_postEntries___block_invoke_108;
    v28 = &__block_descriptor_40_e5_v8__0lu32l8;
    v29 = v17;
    if (ArrayReserved_block_invoke_4_defaultOnce_106 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_106, &v25);
    }

    if (ArrayReserved_block_invoke_4_classDebugEnabled_107 == 1)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [*(a1 + 40) entryKey];
      v20 = [v18 stringWithFormat:@"NOT posting %@ with NotificationName %@", v19, v5, v25, v26, v27, v28, v29];

      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postEntries:]_block_invoke_2"];
      [PLCoreStorage logMessage:v20 fromFile:v22 fromFunction:v23 fromLineNumber:554];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __26__PLOperator_postEntries___block_invoke_2_102(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_0 = result;
  return result;
}

BOOL __26__PLOperator_postEntries___block_invoke_108(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_107 = result;
  return result;
}

- (void)postEntries:(id)a3 withGroupID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLOperator *)self storageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PLOperator_postEntries_withGroupID___block_invoke;
  block[3] = &unk_1E8519AF8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __38__PLOperator_postEntries_withGroupID___block_invoke(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PLOperator_postEntries_withGroupID___block_invoke_2;
  block[3] = &unk_1E8519AF8;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, block);
}

void __38__PLOperator_postEntries_withGroupID___block_invoke_2(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GroupID_%@", a1[4]];
  v4 = a1[5];
  v3 = a1[6];
  v7 = @"group";
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [PLUtilities postNotificationName:v2 object:v4 userInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)postFilteredNotificationForEntry:(id)a3 withFilteredDefition:(id)a4 withNotificationName:(id)a5
{
  v151 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v10 componentsSeparatedByString:@"."];
  v130 = v12;
  if ([v12 count])
  {
    v13 = [v12 firstObject];
    v14 = [v8 entryKey];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v128 = self;
      v16 = [(PLOperator *)self filterDeltaLastEntryIDs];
      v17 = [v16 objectForKeyedSubscript:v10];

      if (!v17)
      {
        v18 = [(PLOperator *)v128 filterDeltaLastEntryIDs];
        [v18 setObject:v8 forKeyedSubscript:v10];
      }

      v129 = v11;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      obj = v9;
      v132 = [obj countByEnumeratingWithState:&v142 objects:v150 count:16];
      v133 = v17;
      v19 = 0;
      if (!v132)
      {
        v20 = 1;
        goto LABEL_77;
      }

      v131 = *v143;
      v20 = 1;
      while (1)
      {
        v21 = 0;
        do
        {
          if (*v143 != v131)
          {
            objc_enumerationMutation(obj);
          }

          v135 = v21;
          v22 = *(*(&v142 + 1) + 8 * v21);
          v23 = [obj objectForKeyedSubscript:v22];
          v24 = [v23 mutableCopy];

          v136 = v24;
          v25 = [v24 objectForKeyedSubscript:&unk_1F540A320];

          if (v25)
          {
            if (!v17)
            {
              goto LABEL_75;
            }

            v26 = [v17 entryDate];
            v27 = [v8 entryDate];
            [v26 timeIntervalSinceDate:v27];
            v29 = fabs(v28);
            v30 = [v24 objectForKeyedSubscript:&unk_1F540A320];
            [v30 doubleValue];
            v32 = v31;

            v17 = v133;
            if (v29 <= v32)
            {
LABEL_75:

              v110 = 0;
              goto LABEL_86;
            }
          }

          if (v19)
          {
            goto LABEL_14;
          }

          v33 = [v24 objectForKeyedSubscript:&unk_1F540A338];

          if (v33)
          {
            if (!v17)
            {
              goto LABEL_75;
            }

            v34 = [v17 entryDate];
            v35 = [v8 entryDate];
            [v34 timeIntervalSinceDate:v35];
            v37 = fabs(v36);
            v38 = [v24 objectForKeyedSubscript:&unk_1F540A338];
            [v38 doubleValue];
            v40 = v39;

            if (v37 >= v40)
            {
              goto LABEL_26;
            }

            v20 = 0;
            v17 = v133;
          }

          v41 = [v24 objectForKeyedSubscript:&unk_1F540A350];

          if (v41)
          {
            if (!v17)
            {
              goto LABEL_75;
            }

            v42 = [v17 objectForKeyedSubscript:v22];
            [v42 doubleValue];
            v44 = v43;
            v45 = [v8 objectForKeyedSubscript:v22];
            [v45 doubleValue];
            v47 = vabdd_f64(v44, v46);
            v48 = [v24 objectForKeyedSubscript:&unk_1F540A350];
            [v48 doubleValue];
            v50 = v49;

            if (v47 >= v50)
            {
LABEL_26:
              v19 = 1;
              goto LABEL_27;
            }

            v20 = 0;
            v17 = v133;
          }

          v51 = [v24 objectForKeyedSubscript:&unk_1F540A368];

          if (v51)
          {
            if (v17)
            {
              v52 = [v17 objectForKeyedSubscript:v22];
              v53 = [v8 objectForKeyedSubscript:v22];
              v19 = [v52 isEqual:v53] ^ 1;

              v20 &= v19;
              goto LABEL_28;
            }

LABEL_14:
            v19 = 1;
            goto LABEL_28;
          }

          if ((v20 & 1) == 0)
          {
            v20 = 0;
            v19 = 0;
            goto LABEL_28;
          }

          v126 = v10;
          v127 = v9;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v54 = v24;
          v55 = [v54 countByEnumeratingWithState:&v138 objects:v149 count:16];
          if (!v55)
          {
            v20 = 1;
            goto LABEL_65;
          }

          v56 = v55;
          v57 = *v139;
          v20 = 1;
          do
          {
            for (i = 0; i != v56; ++i)
            {
              if (*v139 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v138 + 1) + 8 * i);
              v60 = [v59 shortValue];
              if (v60 > 3)
              {
                switch(v60)
                {
                  case 4u:
                    v81 = [v8 objectForKeyedSubscript:v22];
                    [v81 doubleValue];
                    v83 = v82;
                    v84 = [v54 objectForKeyedSubscript:v59];
                    [v84 doubleValue];
                    v86 = v85;

                    if (v83 >= v86)
                    {
                      goto LABEL_56;
                    }

                    break;
                  case 5u:
                    v93 = [v8 objectForKeyedSubscript:v22];
                    [v93 doubleValue];
                    v95 = v94;
                    v96 = [v54 objectForKeyedSubscript:v59];
                    [v96 doubleValue];
                    v98 = v97;

                    if (v95 <= v98)
                    {
                      continue;
                    }

LABEL_56:
                    v20 = 0;
                    continue;
                  case 6u:
                    v69 = [v8 objectForKeyedSubscript:v22];
                    [v69 doubleValue];
                    v71 = v70;
                    v72 = [v54 objectForKeyedSubscript:v59];
                    [v72 doubleValue];
                    v74 = v73;

                    if (v71 == v74)
                    {
                      goto LABEL_56;
                    }

                    break;
                }
              }

              else
              {
                switch(v60)
                {
                  case 1u:
                    v75 = [v8 objectForKeyedSubscript:v22];
                    [v75 doubleValue];
                    v77 = v76;
                    v78 = [v54 objectForKeyedSubscript:v59];
                    [v78 doubleValue];
                    v80 = v79;

                    if (v77 <= v80)
                    {
                      goto LABEL_56;
                    }

                    break;
                  case 2u:
                    v87 = [v8 objectForKeyedSubscript:v22];
                    [v87 doubleValue];
                    v89 = v88;
                    v90 = [v54 objectForKeyedSubscript:v59];
                    [v90 doubleValue];
                    v92 = v91;

                    if (v89 < v92)
                    {
                      goto LABEL_56;
                    }

                    break;
                  case 3u:
                    v61 = [v54 objectForKeyedSubscript:v59];
                    v62 = [v8 objectForKeyedSubscript:v22];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        v64 = [v8 objectForKeyedSubscript:v22];
                        [v64 doubleValue];
                        v66 = v65;
                        [v61 doubleValue];
                        v68 = v67;

                        if (v66 != v68)
                        {
                          v20 = 0;
                        }

                        goto LABEL_59;
                      }
                    }

                    else
                    {
                    }

                    v99 = [v8 objectForKeyedSubscript:v22];
                    v100 = [v99 plCompare:v61] == 0;

                    v20 &= v100;
LABEL_59:

                    continue;
                  default:
                    continue;
                }
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v138 objects:v149 count:16];
          }

          while (v56);
LABEL_65:

          v19 = 0;
          v10 = v126;
          v9 = v127;
LABEL_27:
          v17 = v133;
LABEL_28:

          v21 = v135 + 1;
        }

        while (v135 + 1 != v132);
        v101 = [obj countByEnumeratingWithState:&v142 objects:v150 count:16];
        v132 = v101;
        if (!v101)
        {
LABEL_77:

          if (+[PLDefaults debugEnabled])
          {
            v111 = objc_opt_class();
            v137[0] = MEMORY[0x1E69E9820];
            v137[1] = 3221225472;
            v137[2] = __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke_137;
            v137[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v137[4] = v111;
            if (postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce_135 != -1)
            {
              dispatch_once(&postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce_135, v137);
            }

            if (postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled_136 == 1)
            {
              v112 = MEMORY[0x1E696AEC0];
              v113 = [v8 entryKey];
              v114 = NSStringFromBOOL();
              v115 = NSStringFromBOOL();
              v116 = v10;
              v117 = v115;
              v118 = v116;
              v119 = [v112 stringWithFormat:@"entryKey=%@ notificationName=%@ shouldPost=%@ Post=%@", v113, v116, v114, v115];

              v120 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
              v121 = [v120 lastPathComponent];
              v122 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postFilteredNotificationForEntry:withFilteredDefition:withNotificationName:]"];
              [PLCoreStorage logMessage:v119 fromFile:v121 fromFunction:v122 fromLineNumber:693];

              v123 = PLLogCommon();
              if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }

              v10 = v118;
              v17 = v133;
            }
          }

          if ((v20 | v19))
          {
            obj = [(PLOperator *)v128 filterDeltaLastEntryIDs];
            [obj setObject:v8 forKeyedSubscript:v10];
            v110 = 1;
LABEL_86:
            v11 = v129;
LABEL_87:
          }

          else
          {
            v110 = 0;
            v11 = v129;
          }

          goto LABEL_89;
        }
      }
    }
  }

  if (+[PLDefaults debugEnabled])
  {
    v102 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke;
    block[3] = &unk_1E8519630;
    v147 = @"FilteredNotifications";
    v148 = v102;
    if (postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce != -1)
    {
      dispatch_once(&postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce, block);
    }

    v103 = postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled;

    if (v103 == 1)
    {
      v104 = MEMORY[0x1E696AEC0];
      v105 = [v8 entryKey];
      v106 = [v104 stringWithFormat:@"EntryKey %@ does not match key %@", v105, v10];

      v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v108 = [v107 lastPathComponent];
      v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postFilteredNotificationForEntry:withFilteredDefition:withNotificationName:]"];
      [PLCoreStorage logMessage:v106 fromFile:v108 fromFunction:v109 fromLineNumber:579];

      obj = PLLogCommon();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        v17 = v106;
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        v110 = 0;
      }

      else
      {
        v110 = 0;
        v17 = v106;
      }

      goto LABEL_87;
    }
  }

  v110 = 0;
LABEL_89:

  objc_autoreleasePoolPop(v11);
  v124 = *MEMORY[0x1E69E9840];
  return v110;
}

BOOL __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled = result;
  return result;
}

BOOL __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke_137(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled_136 = result;
  return result;
}

- (id)entryDefinitions
{
  v2 = objc_opt_class();

  return [v2 entryDefinitions];
}

- (id)entryKeys
{
  v2 = objc_opt_class();

  return [v2 entryKeys];
}

- (void)subscribeNotificationsForEntries
{
  v47 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = [(PLOperator *)self entryKeys];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    v8 = 0x1E8518000uLL;
    v32 = *v41;
    v31 = v4;
    do
    {
      v9 = 0;
      v33 = v6;
      do
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        if ([*(v8 + 2256) isOnDemandQueryableForEntryKey:v10])
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requesting.%@", v10];
          if (+[PLDefaults debugEnabled])
          {
            v12 = objc_opt_class();
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __46__PLOperator_subscribeNotificationsForEntries__block_invoke;
            v37[3] = &unk_1E8519630;
            v38 = @"notifications";
            v39 = v12;
            if (subscribeNotificationsForEntries_defaultOnce != -1)
            {
              dispatch_once(&subscribeNotificationsForEntries_defaultOnce, v37);
            }

            v13 = subscribeNotificationsForEntries_classDebugEnabled;

            if (v13 == 1)
            {
              v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signing up for notification %@", v11];
              v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
              v16 = [v15 lastPathComponent];
              v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator subscribeNotificationsForEntries]"];
              [PLCoreStorage logMessage:v14 fromFile:v16 fromFunction:v17 fromLineNumber:718];

              v18 = PLLogCommon();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v45 = v14;
                _os_log_debug_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v4 = v31;
              v7 = v32;
              v6 = v33;
              v8 = 0x1E8518000;
            }
          }

          v19 = [MEMORY[0x1E696AD88] defaultCenter];
          [v19 addObserver:self selector:sel_logRequestNotification_ name:v11 object:0];
        }

        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requestingFilter.%@", v10];
        if (+[PLDefaults debugEnabled])
        {
          v21 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __46__PLOperator_subscribeNotificationsForEntries__block_invoke_157;
          block[3] = &unk_1E8519630;
          v35 = @"notifications";
          v36 = v21;
          if (subscribeNotificationsForEntries_defaultOnce_155 != -1)
          {
            dispatch_once(&subscribeNotificationsForEntries_defaultOnce_155, block);
          }

          v22 = subscribeNotificationsForEntries_classDebugEnabled_156;

          if (v22 == 1)
          {
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signing up for notification %@", v20];
            v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
            v25 = [v24 lastPathComponent];
            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator subscribeNotificationsForEntries]"];
            [PLCoreStorage logMessage:v23 fromFile:v25 fromFunction:v26 fromLineNumber:723];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v45 = v23;
              _os_log_debug_impl(&dword_1D8611000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v7 = v32;
            v6 = v33;
            v8 = 0x1E8518000;
          }
        }

        v28 = [MEMORY[0x1E696AD88] defaultCenter];
        [v28 addObserver:self selector:sel_setupFilterRequest_ name:v20 object:0];

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
  v29 = *MEMORY[0x1E69E9840];
}

BOOL __46__PLOperator_subscribeNotificationsForEntries__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  subscribeNotificationsForEntries_classDebugEnabled = result;
  return result;
}

BOOL __46__PLOperator_subscribeNotificationsForEntries__block_invoke_157(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  subscribeNotificationsForEntries_classDebugEnabled_156 = result;
  return result;
}

- (void)logRequestNotification:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PLOperator_logRequestNotification___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __37__PLOperator_logRequestNotification___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (+[PLDefaults debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLOperator_logRequestNotification___block_invoke_2;
    block[3] = &unk_1E8519630;
    v24 = @"notifications";
    v25 = v4;
    if (ArrayReserved_block_invoke_5_defaultOnce_0 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_5_defaultOnce_0, block);
    }

    v5 = ArrayReserved_block_invoke_5_classDebugEnabled_0;

    if (v5 == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [*(a1 + 40) name];
      v8 = [v6 stringWithFormat:@"notification=%@", v7];

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logRequestNotification:]_block_invoke"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:732];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v13 = [*(a1 + 40) name];
  v14 = [v13 stringByReplacingOccurrencesOfString:@"requesting." withString:&stru_1F539D228];

  v15 = [PLEntryDefinition logSelectorStringForEnteryKey:v14];
  v16 = NSSelectorFromString(v15);

  v17 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) performSelector:v16];
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Does not respond to entryKey=%@", v14];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
    v20 = [v19 lastPathComponent];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logRequestNotification:]_block_invoke"];
    [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:741];

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  objc_autoreleasePoolPop(v2);
}

BOOL __37__PLOperator_logRequestNotification___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_5_classDebugEnabled_0 = result;
  return result;
}

- (void)setupFilterRequest:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PLOperator_setupFilterRequest___block_invoke;
  v7[3] = &unk_1E8519100;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __33__PLOperator_setupFilterRequest___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) name];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"requestingFilter." withString:&stru_1F539D228];

  v5 = [*(a1 + 32) userInfo];
  v6 = [PLEntryDefinition notificationNameForEntryKey:v4 withFilterDefintion:v5];

  v7 = [*(a1 + 40) filterDefinitions];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = [*(a1 + 32) userInfo];
    v10 = [*(a1 + 40) filterDefinitions];
    [v10 setObject:v9 forKeyedSubscript:v6];

    if (+[PLDefaults debugEnabled])
    {
      v11 = *(a1 + 40);
      v12 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__PLOperator_setupFilterRequest___block_invoke_2;
      block[3] = &unk_1E8519630;
      v20 = @"notifications";
      v21 = v12;
      if (ArrayReserved_block_invoke_6_defaultOnce_0 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_6_defaultOnce_0, block);
      }

      v13 = ArrayReserved_block_invoke_6_classDebugEnabled_0;

      if (v13 == 1)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"added requestingFilter %@", v6];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator setupFilterRequest:]_block_invoke"];
        [PLCoreStorage logMessage:v14 fromFile:v16 fromFunction:v17 fromLineNumber:755];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

BOOL __33__PLOperator_setupFilterRequest___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_6_classDebugEnabled_0 = result;
  return result;
}

+ (id)trimConditionsWithEntryKey:(id)a3 withTrimDate:(id)a4 withDuration:(id)a5 withStartDateKey:(id)a6
{
  v8 = a4;
  v9 = a6;
  if (a5)
  {
    [a5 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 1209600.0;
  }

  v12 = MEMORY[0x1E696AEC0];
  [v8 timeIntervalSince1970];
  v14 = v13;
  v15 = [MEMORY[0x1E695DF00] monotonicDate];
  v16 = [v15 dateByAddingTimeInterval:-v11];
  [v16 timeIntervalSince1970];
  v18 = v17;

  if (v14 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = [v12 stringWithFormat:@"(%@ is NULL OR %@<%f)", v9, v9, *&v19];

  return v20;
}

+ (id)trimConditionsWithEntryKey:(id)a3 withTrimDate:(id)a4 withCount:(id)a5 withStartDateKey:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (a5)
  {
    v12 = [a5 integerValue];
  }

  else
  {
    v12 = 200;
  }

  v13 = MEMORY[0x1E696AEC0];
  [v10 timeIntervalSince1970];
  v15 = [v13 stringWithFormat:@"(%@ is NULL OR %@<%f) AND ID<=(SELECT (max(ID)-%i) from %@)", v11, v11, v14, v12, v9];

  return v15;
}

- (id)tablesToTrimConditionsForTrimDate:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49 = [MEMORY[0x1E695DF90] dictionary];
  v51 = v4;
  [v4 timeIntervalSince1970];
  v6 = v5;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v48 = self;
  v7 = [PLEntryKey entryKeysForOperator:self];
  v8 = [v7 copy];

  obj = v8;
  v53 = [v8 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v53)
  {
    v52 = *v56;
    v9 = @"TrimConditionsTemplate";
    do
    {
      v10 = 0;
      do
      {
        if (*v56 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * v10);
        v12 = [PLEntryKey PLEntryKeyForEntryKey:v11];
        v13 = [PLEntryDefinition definitionForEntryKey:v11];
        v14 = [v13 objectForKeyedSubscript:@"Configs"];
        v15 = [v14 objectForKeyedSubscript:v9];

        v54 = v11;
        v16 = v12;
        if (v15)
        {
          v17 = [v13 objectForKeyedSubscript:@"Configs"];
          v18 = [v17 objectForKeyedSubscript:v9];
          v19 = [v18 integerValue];

          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v9;
        v22 = [v13 objectForKeyedSubscript:@"Keys"];
        v23 = [v22 allKeys];

        v24 = @"StartDate";
        if (([v23 containsObject:@"StartDate"] & 1) == 0)
        {
          if ([v23 containsObject:@"StartOffset"])
          {
            v24 = @"(timestamp + StartOffset/1000.0)";
          }

          else
          {
            v24 = @"timestamp";
          }
        }

        v25 = @"EndDate";
        if (([v23 containsObject:@"EndDate"] & 1) == 0)
        {
          if ([v23 containsObject:@"EndOffset"])
          {
            v25 = @"(timestamp + EndOffset/1000.0)";
          }

          else
          {
            v25 = @"timestampEnd";
          }
        }

        if (v20 > 1)
        {
          v9 = v21;
          if (v20 != 2)
          {
            v26 = v54;
            if (v20 != 0x7FFF)
            {
              goto LABEL_35;
            }

            v30 = [(PLOperator *)v48 trimConditionsForEntryKey:v54 forTrimDate:v51];
LABEL_24:
            v31 = v30;
            if (v30)
            {
              goto LABEL_34;
            }

            goto LABEL_35;
          }

          v27 = [v13 objectForKeyedSubscript:@"Configs"];
          v28 = [v27 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
          v26 = v54;
          v29 = [PLOperator trimConditionsWithEntryKey:v54 withTrimDate:v51 withCount:v28 withStartDateKey:v24];
          goto LABEL_29;
        }

        if (v20)
        {
          v9 = v21;
          v26 = v54;
          if (v20 != 1)
          {
            goto LABEL_35;
          }

          v27 = [v13 objectForKeyedSubscript:@"Configs"];
          v28 = [v27 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
          v29 = [PLOperator trimConditionsWithEntryKey:v54 withTrimDate:v51 withDuration:v28 withStartDateKey:v24];
LABEL_29:
          v31 = v29;

          if (v31)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        v32 = [v16 entryType];
        v33 = [v32 isEqualToString:@"EventInterval"];

        if (v33)
        {
          v34 = [MEMORY[0x1E695DF00] monotonicDate];
          v35 = [v34 dateByAddingTimeInterval:1209600.0];

          [v35 timeIntervalSince1970];
          v37 = v36;
          v38 = MEMORY[0x1E696AEC0];
          v39 = +[PLUtilities deviceBootTime];
          [v39 timeIntervalSince1970];
          v31 = [v38 stringWithFormat:@"(%@<%f) OR ((%@ is NULL OR %@<%f OR %@<%f) AND (%@ is NULL OR %@<%f))", v25, v6, v24, v24, v40, v24, v37, v25, v25, v6];

          v9 = v21;
          goto LABEL_33;
        }

        v41 = [v16 entryType];
        v42 = [v41 isEqualToString:@"EventForward"];

        v9 = v21;
        if (v42)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is NULL OR %@<(SELECT max(%@) FROM '%@' WHERE %@<%f)", v24, v24, v24, v16, v24, v6];
LABEL_33:
          v26 = v54;
          if (!v31)
          {
            goto LABEL_35;
          }

LABEL_34:
          [v49 setObject:v31 forKeyedSubscript:v26];

          goto LABEL_35;
        }

        v43 = [v16 entryType];
        v44 = [v43 isEqualToString:@"Aggregate"];

        v26 = v54;
        if (v44)
        {
          v30 = [PLOperator trimConditionsWithEntryKey:v54 withTrimDate:v51 withDuration:&unk_1F540B640 withStartDateKey:v24];
          goto LABEL_24;
        }

LABEL_35:

        ++v10;
      }

      while (v53 != v10);
      v45 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      v53 = v45;
    }

    while (v45);
  }

  v46 = *MEMORY[0x1E69E9840];

  return v49;
}

- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4
{
  if ([PLDefaults debugEnabled:a3])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLOperator::trimConditionsForEntryKey:trimDate: WARNING: derived class must implement if they specify PLEDTrimConditionsTemplateCustom in an entryDefinition"];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
    v6 = [v5 lastPathComponent];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator trimConditionsForEntryKey:forTrimDate:]"];
    [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:872];

    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  return 0;
}

- (void)logForSubsystem:(id)a3 category:(id)a4 data:(id)a5 date:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [MEMORY[0x1E69BDC20] getMetadataByNameForSubsystem:v10 category:v11];
    if (v14)
    {
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [MEMORY[0x1E695DF00] monotonicDate];
      }

      v16 = v15;
      v17 = [PLOperator createEntriesForMetrics:v14 withData:v12 withDate:v15];
      v18 = PPSLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v33 = v10;
        v34 = 2112;
        v35 = v11;
        v36 = 2048;
        v37 = [v17 count];
        _os_log_debug_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEBUG, "[Log] Number of entries for subsystem/category: %@/%@ : %lu", buf, 0x20u);
      }

      v26 = v10;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = v17;
      v19 = [v17 allValues];
      v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [(PLOperator *)self logEntry:*(*(&v27 + 1) + 8 * i)];
          }

          v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v21);
      }

      v10 = v26;
    }

    else
    {
      v16 = PPSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PLOperator logForSubsystem:category:data:date:];
      }
    }
  }

  else
  {
    v14 = PPSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PLOperator logForSubsystem:category:data:date:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)logDMAEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 dictionary];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 entryKey];
  v8 = [v6 stringWithFormat:@"com.apple.perfpowerservices.dma.%@", v7];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLOperator logDMAEntry:];
  }

  v10 = [v3 entryDefinition];
  v11 = [PLEntryDefinition keyConfigsForEntryDefinition:v10];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __26__PLOperator_logDMAEntry___block_invoke;
  v23[3] = &unk_1E851ADE0;
  v12 = v5;
  v24 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v23];

  if ([v3 hasDynamicKeys])
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLOperator logDMAEntry:];
    }

    v14 = [v3 DMAKeys];
    v15 = [v12 dictionaryWithValuesForKeys:v14];
    v16 = [v15 mutableCopy];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __26__PLOperator_logDMAEntry___block_invoke_225;
    v20[3] = &unk_1E8519948;
    v21 = v16;
    v22 = v8;
    v17 = v16;
    [v12 enumerateKeysAndObjectsUsingBlock:v20];
  }

  else
  {
    v18 = v12;
    v19 = v3;
    AnalyticsSendEventLazy();

    v17 = v18;
  }
}

void __26__PLOperator_logDMAEntry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"ProcessName"];

  if (v6)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = [v8 objectForKeyedSubscript:v5];
    v10 = [PLUtilities bundleIDFromProcessName:v9];

    if (v10)
    {
      v11 = *v7;
      v12 = v10;
    }

    else
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __26__PLOperator_logDMAEntry___block_invoke_cold_1(v7, v5, v13);
      }

      v11 = *v7;
      v12 = @"unknown";
    }

    [v11 setObject:v12 forKeyedSubscript:v5];
  }
}

void __26__PLOperator_logDMAEntry___block_invoke_225(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setValuesForKeysWithDictionary:v5];
    [*(a1 + 32) setObject:v6 forKey:@"value"];
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }
}

id __26__PLOperator_logDMAEntry___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];
  v2 = [PLUtilities sanitizeCAPayload:v1];

  return v2;
}

id __26__PLOperator_logDMAEntry___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) DMAKeys];
  v3 = [v1 dictionaryWithValuesForKeys:v2];
  v4 = [PLUtilities sanitizeCAPayload:v3];

  return v4;
}

+ (id)createEntriesForMetrics:(id)a3 withData:(id)a4 withDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__19;
  v32[3] = __Block_byref_object_dispose__19;
  v33 = 0;
  v10 = objc_opt_new();
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke;
  v26 = &unk_1E851B540;
  v11 = v7;
  v27 = v11;
  v30 = &v31;
  v12 = v10;
  v28 = v12;
  v13 = v9;
  v29 = v13;
  [v8 enumerateKeysAndObjectsUsingBlock:&v23];
  if (*(v32[0] + 40))
  {
    v14 = [v12 objectForKey:{v23, v24, v25, v26, v27, v28}];

    if (!v14)
    {
      v15 = [PLEntry alloc];
      v16 = [(PLEntry *)v15 initWithEntryKey:*(v32[0] + 40) withDate:v13];
      [v12 setObject:v16 forKeyedSubscript:*(v32[0] + 40)];
    }

    v17 = [v8 objectForKeyedSubscript:@"__PPSKVPairs__"];
    v18 = [v12 objectForKeyedSubscript:*(v32[0] + 40)];
    [v18 setObject:v17 forKeyedSubscript:@"__PPSKVPairs__"];

    v19 = PPSLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLOperator createEntriesForMetrics:v32 withData:? withDate:?];
    }
  }

  v20 = v29;
  v21 = v12;

  _Block_object_dispose(&v31, 8);

  return v21;
}

void __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 isEqualToString:@"__PPSKVPairs__"])
    {
      v7 = [v6 firstObject];
      v8 = v7;
      if (!v7)
      {
LABEL_24:

        goto LABEL_25;
      }

      v9 = [v7 allKeys];
      v10 = [v9 firstObject];
      v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
      v12 = [PPSEntryKey entryKeyForMetric:v11];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
      if (v8)
      {
        if (+[PLUtilities OverrideAllowlistEnabled])
        {
          if (![PPSCoreUtilities shouldLogMetric:v8])
          {
            goto LABEL_24;
          }
        }

        else if (![PPSCoreUtilities isValidModeForMetric:v8]|| ![PPSCoreUtilities isAllowedMetric:v8])
        {
          goto LABEL_24;
        }

        v9 = [PPSEntryKey entryKeyForMetric:v8];
        if (v9)
        {
          v16 = [*(a1 + 40) objectForKeyedSubscript:v9];

          if (!v16)
          {
            v17 = [[PLEntry alloc] initWithEntryKey:v9 withDate:*(a1 + 48)];
            [*(a1 + 40) setObject:v17 forKeyedSubscript:v9];
          }

          v18 = [*(a1 + 40) objectForKeyedSubscript:v9];
          [v18 setObject:v6 forKeyedSubscript:v5];
        }

        else
        {
          v18 = PPSLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_2();
          }
        }
      }

      else
      {
        v9 = PPSLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_3();
        }
      }
    }

    goto LABEL_24;
  }

  v15 = PPSLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_1(v5, v15);
  }

LABEL_25:
}

- (void)logForSubsystem:category:data:date:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "[Log] Metadata not found for subsystem/category: %@/%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)logForSubsystem:category:data:date:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "[Log] Nil payload for subsystem/category: %@/%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)logDMAEntry:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "Processing DMA data: '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)logDMAEntry:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "DMA data '%@' has dynamic keys", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __26__PLOperator_logDMAEntry___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [*a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "Failed to translate process name '%@' to bundle ID for DMA!", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)createEntriesForMetrics:(uint64_t)a1 withData:withDate:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 40);
  v4 = 138412546;
  v5 = v1;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEBUG, "Adding to %@ entries array %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = objc_opt_class();
  v3 = v8;
  _os_log_fault_impl(&dword_1D8611000, a2, OS_LOG_TYPE_FAULT, "Metric name: %@ is not String class %@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

void __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "No entryKey for metric: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "No metadata for metric: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end