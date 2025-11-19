@interface PLTimeManager
+ (id)sharedInstance;
- (PLSQLiteConnection)connection;
- (PLStorageOperator)storageOperator;
- (PLTimeManager)init;
- (double)hourBucketBaseSnapOffsetWithMonotonicTime:(int64_t)a3;
- (double)hourBucketBaseSnapOffsetWithMonotonicTimeNow:(int64_t)a3;
- (double)timeOffsetForTimeReference:(int64_t)a3;
- (double)timeZoneHourBucketShift:(double)a3;
- (id)bucketNSDate:(id)a3 withBucketInterval:(int)a4;
- (id)convertTime:(id)a3 fromTimeReference:(int64_t)a4 toTimeReference:(int64_t)a5;
- (id)currentTimeFromTimeReference:(int64_t)a3 toTimeReference:(int64_t)a4;
- (id)initialMonotonicTime;
- (id)storageQueue;
- (void)getBootSessionUUID;
- (void)initializeTimeOffsets;
- (void)logTimeEntry;
- (void)registerForTimeChangedCallbackWithIdentifier:(id)a3 forTimeReference:(int64_t)a4 usingBlock:(id)a5;
- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)a3 forTimeReference:(int64_t)a4;
@end

@implementation PLTimeManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PLTimeManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __31__PLTimeManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_instance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (id)storageQueue
{
  v2 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

- (PLTimeManager)init
{
  v22[4] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PLTimeManager;
  v2 = [(PLTimeManager *)&v20 init];
  if (v2)
  {
    v3 = +[PLSQLiteConnection sharedSQLiteConnection];
    objc_storeWeak(&v2->_connection, v3);

    v4 = [[PLTimeReference alloc] initWithTimeManager:v2 entryDefinitionKey:@"monotonic" timeReferenceType:0];
    v5 = [[PLTimeReferenceKernel alloc] initWithTimeManager:v2 entryDefinitionKey:@"kernel" timeReferenceType:2];
    v6 = [(PLTimeReferenceDynamic *)[PLTimeReferenceSystem alloc] initWithTimeManager:v2 entryDefinitionKey:@"system" timeReferenceType:1];
    v7 = [[PLTimeReferenceBaseband alloc] initWithTimeManager:v2 entryDefinitionKey:@"baseband" timeReferenceType:3];
    v21[0] = &unk_1F5405A78;
    v21[1] = &unk_1F5405A90;
    v22[0] = v4;
    v22[1] = v5;
    v21[2] = &unk_1F5405AA8;
    v21[3] = &unk_1F5405AC0;
    v22[2] = v6;
    v22[3] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
    timeReferences = v2->_timeReferences;
    v2->_timeReferences = v8;

    v10 = [objc_opt_class() description];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __21__PLTimeManager_init__block_invoke;
    v18[3] = &unk_1E85196C8;
    v11 = v2;
    v19 = v11;
    [(PLTimeReferenceDynamic *)v6 registerForTimeChangedCallbackWithIdentifier:v10 usingBlock:v18];

    v12 = [objc_opt_class() description];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __21__PLTimeManager_init__block_invoke_25;
    v16[3] = &unk_1E85196C8;
    v13 = v11;
    v17 = v13;
    [(PLTimeReferenceDynamic *)v7 registerForTimeChangedCallbackWithIdentifier:v12 usingBlock:v16];

    [(PLTimeManager *)v13 getBootSessionUUID];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __21__PLTimeManager_init__block_invoke(uint64_t a1)
{
  v2 = PLLogTimeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __21__PLTimeManager_init__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(a1 + 32) logTimeEntry];
}

uint64_t __21__PLTimeManager_init__block_invoke_25(uint64_t a1)
{
  v2 = PLLogTimeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __21__PLTimeManager_init__block_invoke_25_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(a1 + 32) logTimeEntry];
}

- (void)getBootSessionUUID
{
  v3 = [(PLTimeManager *)self timeReferences];
  v2 = [v3 objectForKeyedSubscript:&unk_1F5405A90];
  [v2 setRebootOccurred:{+[PLUtilities deviceRebooted](PLUtilities, "deviceRebooted")}];
}

- (void)initializeTimeOffsets
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = PLLogTimeManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(PLTimeManager *)v3 initializeTimeOffsets];
  }

  v4 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"TimeOffset"];
  v5 = +[PowerlogCore sharedCore];
  v6 = [v5 storage];
  v34 = v4;
  v7 = [v6 lastEntriesForKey:v4 count:3 withFilters:0];
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 allObjects];

  v10 = [(PLTimeManager *)self timeReferences];
  v11 = [v10 objectForKeyedSubscript:&unk_1F5405A78];
  [v11 setOffset:0.0];

  v12 = [(PLTimeManager *)self timeReferences];
  v13 = [v12 objectForKeyedSubscript:&unk_1F5405A90];
  [v13 initializeOffsetWithEntries:v9];

  v14 = [(PLTimeManager *)self timeReferences];
  v15 = [v14 objectForKeyedSubscript:&unk_1F5405AA8];
  [v15 initializeOffsetWithEntries:v9];

  v16 = [(PLTimeManager *)self timeReferences];
  v17 = [v16 objectForKeyedSubscript:&unk_1F5405AC0];
  v33 = v9;
  [v17 initializeOffsetWithEntries:v9];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = [(PLTimeManager *)self timeReferences];
  v19 = [v18 allValues];

  v20 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      v23 = 0;
      do
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v39 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          [v24 registerForTimeChangedNotification];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v21);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = [(PLTimeManager *)self timeReferences];
  v26 = [v25 allValues];

  v27 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      v30 = 0;
      do
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v35 + 1) + 8 * v30);
        if (objc_opt_respondsToSelector())
        {
          [v31 registerForDayChangedNotification];
        }

        if (objc_opt_respondsToSelector())
        {
          [v31 registerForTimeZoneChangedNotification];
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v28);
  }

  [(PLTimeManager *)self logTimeEntry];
  v32 = *MEMORY[0x1E69E9840];
}

- (id)initialMonotonicTime
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PLTimeManager_initialMonotonicTime__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  if (initialMonotonicTime_onceToken != -1)
  {
    dispatch_once(&initialMonotonicTime_onceToken, block);
  }

  return initialMonotonicTime_initialMonotonicTime;
}

void __37__PLTimeManager_initialMonotonicTime__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = initialMonotonicTime_initialMonotonicTime;
  initialMonotonicTime_initialMonotonicTime = v2;

  if (+[PLDefaults debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __37__PLTimeManager_initialMonotonicTime__block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v5;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeManager::initialMonotonicTime=%@", initialMonotonicTime_initialMonotonicTime, block, v12, v13, v14, v15];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager initialMonotonicTime]_block_invoke"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:160];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __37__PLTimeManager_initialMonotonicTime__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 = result;
  return result;
}

- (double)timeOffsetForTimeReference:(int64_t)a3
{
  v4 = [(PLTimeManager *)self timeReferences];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v6 offset];
  v8 = v7;

  return v8;
}

- (id)currentTimeFromTimeReference:(int64_t)a3 toTimeReference:(int64_t)a4
{
  v7 = [(PLTimeManager *)self timeReferences];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 currentTime];
  v11 = [(PLTimeManager *)self convertTime:v10 fromTimeReference:a3 toTimeReference:a4];

  return v11;
}

- (id)convertTime:(id)a3 fromTimeReference:(int64_t)a4 toTimeReference:(int64_t)a5
{
  v8 = a3;
  v9 = [(PLTimeManager *)self timeReferences];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [(PLTimeManager *)self timeReferences];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [v14 removeTimeOffsetFromReferenceTime:v8];

  v16 = [v11 addTimeOffsetToMonotonicTime:v15];

  return v16;
}

- (void)registerForTimeChangedCallbackWithIdentifier:(id)a3 forTimeReference:(int64_t)a4 usingBlock:(id)a5
{
  v16 = a3;
  v8 = a5;
  v9 = [(PLTimeManager *)self timeReferences];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(PLTimeManager *)self timeReferences];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v15 = [v13 objectForKeyedSubscript:v14];
    [v15 registerForTimeChangedCallbackWithIdentifier:v16 usingBlock:v8];
  }
}

- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)a3 forTimeReference:(int64_t)a4
{
  v13 = a3;
  v6 = [(PLTimeManager *)self timeReferences];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(PLTimeManager *)self timeReferences];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v12 = [v10 objectForKeyedSubscript:v11];
    [v12 unregisterForTimeChangedCallbackWithIdentifier:v13];
  }
}

- (id)bucketNSDate:(id)a3 withBucketInterval:(int)a4
{
  v5 = MEMORY[0x1E695DF00];
  [a3 timeIntervalSince1970];
  v7 = (v6 / a4 * a4);

  return [v5 dateWithTimeIntervalSince1970:v7];
}

- (double)hourBucketBaseSnapOffsetWithMonotonicTimeNow:(int64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v5 = [MEMORY[0x1E695DF00] monotonicDate];
  v6 = [(PLTimeManager *)self convertTime:v5 fromTimeReference:0 toTimeReference:a3];
  v7 = [(PLTimeManager *)self bucketNSDate:v6 withBucketInterval:3600];
  v8 = [(PLTimeManager *)self bucketNSDate:v5 withBucketInterval:3600];
  v9 = [(PLTimeManager *)self convertTime:v8 fromTimeReference:0 toTimeReference:a3];
  [v9 timeIntervalSinceDate:v7];
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 3600.0;
  }

  if (a3 == 1)
  {
    [(PLTimeManager *)self timeZoneHourBucketShift:v11];
    v11 = v12;
  }

  return v11;
}

- (double)timeZoneHourBucketShift:(double)a3
{
  v4 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v5 = [v4 secondsFromGMT];
  HIDWORD(v6) = -2023406815 * v5 + 9544368;
  LODWORD(v6) = HIDWORD(v6);
  if ((v6 >> 4) >= 0x123457)
  {
    v7 = 1800.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLTimeManager_timeZoneHourBucketShift___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (timeZoneHourBucketShift__defaultOnce != -1)
    {
      dispatch_once(&timeZoneHourBucketShift__defaultOnce, block);
    }

    if (timeZoneHourBucketShift__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"OffsetComputation: secondsFromGMT: %ld timeZoneDelta: %f", v5, *&v7];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager timeZoneHourBucketShift:]"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:246];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14 = -v7;
  if (v7 >= a3)
  {
    v14 = v7;
  }

  v15 = v14 + a3;

  return v15;
}

BOOL __41__PLTimeManager_timeZoneHourBucketShift___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timeZoneHourBucketShift__classDebugEnabled = result;
  return result;
}

- (double)hourBucketBaseSnapOffsetWithMonotonicTime:(int64_t)a3
{
  v4 = [(PLTimeManager *)self timeReferences];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v6 getHourBucketOffset];
  v8 = v7;

  return v8;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled = result;
  return result;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_56(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_55 = result;
  return result;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_62(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_61 = result;
  return result;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_68(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_67 = result;
  return result;
}

- (void)logTimeEntry
{
  v22 = *MEMORY[0x1E69E9840];
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") || +[PLUtilities shouldLogPreUnlockTelemetry])
  {
    v3 = PLLogTimeManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "Do not log to time offset table in pre unlock or in helperd case", buf, 2u);
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(PLTimeManager *)self timeReferences];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 timeReferenceType])
          {
            v11 = MEMORY[0x1E696AD98];
            [v10 offset];
            v12 = [v11 numberWithDouble:?];
            v13 = [v10 entryDefinitionKey];
            [v3 setObject:v12 forKeyedSubscript:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [(PLTimeManager *)self storageOperator];
    [v14 logEventForwardTimeOffset:v3];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (PLStorageOperator)storageOperator
{
  WeakRetained = objc_loadWeakRetained(&self->_storageOperator);

  return WeakRetained;
}

- (PLSQLiteConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

void __21__PLTimeManager_init__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1D8611000, a1, a3, "PLTimeManager::system time changed: delta=%f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void __21__PLTimeManager_init__block_invoke_25_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1D8611000, a1, a3, "PLTimeManager::baseband time changed: delta=%f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end