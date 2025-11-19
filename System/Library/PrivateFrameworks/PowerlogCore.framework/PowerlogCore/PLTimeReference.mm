@interface PLTimeReference
- (PLTimeReference)initWithTimeManager:(id)a3 entryDefinitionKey:(id)a4 timeReferenceType:(int64_t)a5;
- (double)computeHourBucketOffset;
- (double)getHourBucketOffset;
- (id)addTimeOffsetToMonotonicTime:(id)a3;
- (id)currentTime;
- (id)removeTimeOffsetFromReferenceTime:(id)a3;
- (void)initializeOffsetWithEntries:(id)a3;
- (void)registerForDayChangedNotification;
- (void)registerForTimeZoneChangedNotification;
- (void)setOffset:(double)a3;
- (void)writeOffsetToDefaults;
@end

@implementation PLTimeReference

- (double)getHourBucketOffset
{
  objc_sync_enter(@"__hourBucketOffsetSync__");
  if (self->_hourBucketOffset == 3.40282347e38)
  {
    v10 = objc_opt_class();
    v11 = [(PLTimeReference *)self entryDefinitionKey];
    v12 = [v10 hourBucketOffsetKeyFromEntryDefinitionKey:v11];
    v13 = [PLDefaults objectForKey:v12];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (+[PLDefaults debugEnabled])
      {
        v14 = objc_opt_class();
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __38__PLTimeReference_getHourBucketOffset__block_invoke_23;
        v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v25[4] = v14;
        if (getHourBucketOffset_defaultOnce_21 != -1)
        {
          dispatch_once(&getHourBucketOffset_defaultOnce_21, v25);
        }

        if (getHourBucketOffset_classDebugEnabled_22 == 1)
        {
          v15 = MEMORY[0x1E696AEC0];
          [v13 doubleValue];
          v17 = [v15 stringWithFormat:@"HourBucketOffset: Offset value from defaults :%f", v16];
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReference.m"];
          v19 = [v18 lastPathComponent];
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReference getHourBucketOffset]"];
          [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:86];

          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [v13 doubleValue];
      hourBucketOffset = v22;
      self->_hourBucketOffset = v22;
    }

    else
    {
      [(PLTimeReference *)self computeHourBucketOffset];
      hourBucketOffset = v23;
    }
  }

  else
  {
    if (+[PLDefaults debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__PLTimeReference_getHourBucketOffset__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (getHourBucketOffset_defaultOnce != -1)
      {
        dispatch_once(&getHourBucketOffset_defaultOnce, block);
      }

      if (getHourBucketOffset_classDebugEnabled == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HourBucketOffset: Precomputed offset value: %f", *&self->_hourBucketOffset];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReference.m"];
        v6 = [v5 lastPathComponent];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReference getHourBucketOffset]"];
        [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:79];

        v8 = PLLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    hourBucketOffset = self->_hourBucketOffset;
  }

  objc_sync_exit(@"__hourBucketOffsetSync__");
  return hourBucketOffset;
}

- (PLTimeReference)initWithTimeManager:(id)a3 entryDefinitionKey:(id)a4 timeReferenceType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PLTimeReference;
  v11 = [(PLTimeReference *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timeManager, a3);
    v12->_timeReferenceType = a5;
    objc_storeStrong(&v12->_entryDefinitionKey, a4);
    v12->_offset = 3.40282347e38;
    v12->_hourBucketOffset = 3.40282347e38;
  }

  return v12;
}

- (void)initializeOffsetWithEntries:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (v4 && [v4 count])
  {
    v5 = [v15 lastObject];
    v6 = [(PLTimeReference *)self entryDefinitionKey];
    v7 = [v5 objectForKeyedSubscript:v6];
    [v7 doubleValue];
    self->_offset = v8;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [(PLTimeReference *)self entryDefinitionKey];
    v11 = [v9 defaultsKeyFromEntryDefinitionKey:v10];
    v5 = [PLDefaults objectForKey:v11];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 doubleValue];
        self->_offset = v12;
        goto LABEL_9;
      }
    }

    v6 = [(PLTimeReference *)self currentTime];
    v7 = [(PLTimeReference *)self timeManager];
    v13 = [v7 initialMonotonicTime];
    [v6 timeIntervalSinceDate:v13];
    self->_offset = v14;
  }

LABEL_9:
  [(PLTimeReference *)self writeOffsetToDefaults];
}

- (void)setOffset:(double)a3
{
  if (self->_offset != a3)
  {
    self->_offset = a3;
    [(PLTimeReference *)self writeOffsetToDefaults];
  }
}

- (double)computeHourBucketOffset
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __42__PLTimeReference_computeHourBucketOffset__block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v3;
    if (computeHourBucketOffset_defaultOnce != -1)
    {
      dispatch_once(&computeHourBucketOffset_defaultOnce, &block);
    }

    if (computeHourBucketOffset_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HourBucketOffset: Computing new offset for timeReference:%ld", self->_timeReferenceType, block, v19, v20, v21, v22];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReference.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReference computeHourBucketOffset]"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:65];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  objc_sync_enter(@"__hourBucketOffsetSync__");
  v9 = [(PLTimeReference *)self timeManager];
  [v9 hourBucketBaseSnapOffsetWithMonotonicTimeNow:self->_timeReferenceType];
  self->_hourBucketOffset = v10;

  v11 = MEMORY[0x1E696AD98];
  [(PLTimeReference *)self hourBucketOffset];
  v12 = [v11 numberWithDouble:?];
  v13 = objc_opt_class();
  v14 = [(PLTimeReference *)self entryDefinitionKey];
  v15 = [v13 hourBucketOffsetKeyFromEntryDefinitionKey:v14];
  [PLDefaults setObject:v12 forKey:v15 saveToDisk:1];

  hourBucketOffset = self->_hourBucketOffset;
  objc_sync_exit(@"__hourBucketOffsetSync__");
  return hourBucketOffset;
}

BOOL __42__PLTimeReference_computeHourBucketOffset__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  computeHourBucketOffset_classDebugEnabled = result;
  return result;
}

BOOL __38__PLTimeReference_getHourBucketOffset__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getHourBucketOffset_classDebugEnabled = result;
  return result;
}

BOOL __38__PLTimeReference_getHourBucketOffset__block_invoke_23(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getHourBucketOffset_classDebugEnabled_22 = result;
  return result;
}

- (id)currentTime
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__PLTimeReference_currentTime__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (currentTime_defaultOnce_0 != -1)
    {
      dispatch_once(&currentTime_defaultOnce_0, block);
    }

    if (currentTime_classDebugEnabled_0 == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReference::currentTime WARNING: inherited class must implement"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReference.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReference currentTime]"];
      [PLCoreStorage logMessage:v3 fromFile:v5 fromFunction:v6 fromLineNumber:98];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return 0;
}

BOOL __30__PLTimeReference_currentTime__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  currentTime_classDebugEnabled_0 = result;
  return result;
}

- (id)addTimeOffsetToMonotonicTime:(id)a3
{
  v4 = a3;
  [(PLTimeReference *)self offset];
  if (v5 == 3.40282347e38)
  {
    [MEMORY[0x1E695DF00] date];
  }

  else
  {
    [(PLTimeReference *)self offset];
    [v4 dateByAddingTimeInterval:?];
  }
  v6 = ;

  return v6;
}

- (id)removeTimeOffsetFromReferenceTime:(id)a3
{
  v4 = a3;
  [(PLTimeReference *)self offset];
  if (v5 == 3.40282347e38)
  {
    [MEMORY[0x1E695DF00] date];
  }

  else
  {
    [(PLTimeReference *)self offset];
    [v4 dateByAddingTimeInterval:-v6];
  }
  v7 = ;

  return v7;
}

- (void)writeOffsetToDefaults
{
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3 = MEMORY[0x1E696AD98];
    [(PLTimeReference *)self offset];
    v4 = [v3 numberWithDouble:?];
    v5 = objc_opt_class();
    v6 = [(PLTimeReference *)self entryDefinitionKey];
    v7 = [v5 defaultsKeyFromEntryDefinitionKey:v6];
    [PLDefaults setObject:v4 forKey:v7 saveToDisk:1];

    v8 = MEMORY[0x1E696AD98];
    v12 = [(PLTimeReference *)self timeManager];
    v9 = [v12 currentTimeFromTimeReference:2 toTimeReference:0];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    v11 = [objc_opt_class() defaultsKeyFromEntryDefinitionKey:@"monotonic"];
    [PLDefaults setObject:v10 forKey:v11 saveToDisk:1];
  }
}

- (void)registerForDayChangedNotification
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PLTimeReference_registerForDayChangedNotification__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (registerForDayChangedNotification_defaultOnce != -1)
    {
      dispatch_once(&registerForDayChangedNotification_defaultOnce, block);
    }

    if (registerForDayChangedNotification_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReference::registerForDayChangedNotification WARNING: inherited class must implement"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReference.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReference registerForDayChangedNotification]"];
      [PLCoreStorage logMessage:v3 fromFile:v5 fromFunction:v6 fromLineNumber:135];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __52__PLTimeReference_registerForDayChangedNotification__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForDayChangedNotification_classDebugEnabled = result;
  return result;
}

- (void)registerForTimeZoneChangedNotification
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PLTimeReference_registerForTimeZoneChangedNotification__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (registerForTimeZoneChangedNotification_defaultOnce != -1)
    {
      dispatch_once(&registerForTimeZoneChangedNotification_defaultOnce, block);
    }

    if (registerForTimeZoneChangedNotification_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReference::registerForDayChangedNotification WARNING: inherited class must implement"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReference.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReference registerForTimeZoneChangedNotification]"];
      [PLCoreStorage logMessage:v3 fromFile:v5 fromFunction:v6 fromLineNumber:138];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __57__PLTimeReference_registerForTimeZoneChangedNotification__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForTimeZoneChangedNotification_classDebugEnabled = result;
  return result;
}

@end