@interface PLTimeReferenceBaseband
- (PLTimeReferenceBaseband)initWithTimeManager:(id)manager entryDefinitionKey:(id)key timeReferenceType:(int64_t)type;
- (id)currentTime;
- (void)dealloc;
- (void)registerForTimeChangedNotification;
- (void)timeChangedNotificationReceived:(id)received;
@end

@implementation PLTimeReferenceBaseband

void __38__PLTimeReferenceBaseband_currentTime__block_invoke_29(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0.0;
  v5 = 5;
  do
  {
    v6 = +[PLABMClient sharedABMClient];
    v7 = [v6 getBasebandTimeAndLatency];

    if (v7)
    {
      [v7 latency];
      v4 = v4 + v8;
      ++v3;
      v9 = v7;

      v2 = v9;
    }

    --v5;
  }

  while (v5);
  if (v3 > 0)
  {
    v10 = [v2 time];
    v11 = [v10 dateByAddingTimeInterval:-v4 / v3];

    if (+[PLDefaults debugEnabled])
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__PLTimeReferenceBaseband_currentTime__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v13;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce, block);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled == 1)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceBaseband::currentTime - followupCurrentTime=%@", v11];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceBaseband.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceBaseband currentTime]_block_invoke"];
        [PLCoreStorage logMessage:v14 fromFile:v16 fromFunction:v17 fromLineNumber:131];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v19.receiver = *(a1 + 32);
    v19.super_class = PLTimeReferenceBaseband;
    objc_msgSendSuper2(&v19, sel_checkForTimeChangeWithCurrentTime_, v11);
  }

  [*(a1 + 32) setFollowupCurrentTimeRunning:0];
}

- (PLTimeReferenceBaseband)initWithTimeManager:(id)manager entryDefinitionKey:(id)key timeReferenceType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = PLTimeReferenceBaseband;
  v5 = [(PLTimeReferenceDynamic *)&v10 initWithTimeManager:manager entryDefinitionKey:key timeReferenceType:type];
  v6 = v5;
  if (v5)
  {
    v5->_followupCurrentTimeRunning = 0;
    v9.receiver = v5;
    v9.super_class = PLTimeReferenceBaseband;
    [(PLTimeReferenceDynamic *)&v9 setTooFarInFutureDistance:60.0];
    v8.receiver = v6;
    v8.super_class = PLTimeReferenceBaseband;
    [(PLTimeReferenceDynamic *)&v8 setTooFarInPastDistance:3600.0];
  }

  return v6;
}

- (void)registerForTimeChangedNotification
{
  v3 = [PLNSNotificationOperatorComposition alloc];
  v4 = [PLUtilities workQueueForClass:objc_opt_class()];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PLTimeReferenceBaseband_registerForTimeChangedNotification__block_invoke;
  v7[3] = &unk_1E8519090;
  v7[4] = self;
  v5 = [(PLNSNotificationOperatorComposition *)v3 initWithWorkQueue:v4 forNotification:@"BasebandTimeChangeNotification" withBlock:v7];
  basebandTimeNotification = self->_basebandTimeNotification;
  self->_basebandTimeNotification = v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLTimeReferenceBaseband;
  [(PLTimeReferenceBaseband *)&v2 dealloc];
}

- (id)currentTime
{
  if (+[PLPlatform hasBaseband])
  {
    v3 = +[PLABMClient sharedABMClient];
    getBasebandTimeAndLatency = [v3 getBasebandTimeAndLatency];

    v5 = objc_opt_class();
    objc_sync_enter(v5);
    if ([(PLTimeReferenceBaseband *)self followupCurrentTimeRunning])
    {
      objc_sync_exit(v5);
    }

    else
    {
      [(PLTimeReferenceBaseband *)self setFollowupCurrentTimeRunning:1];
      monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
      [(PLTimeReferenceDynamic *)self setLastQueryTime:monotonicDate];

      objc_sync_exit(v5);
      v5 = [PLUtilities workQueueForClass:objc_opt_class()];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__PLTimeReferenceBaseband_currentTime__block_invoke_29;
      block[3] = &unk_1E85190B8;
      block[4] = self;
      dispatch_async(v5, block);
    }

    if (getBasebandTimeAndLatency)
    {
      time = [getBasebandTimeAndLatency time];
      [getBasebandTimeAndLatency latency];
      v12 = [time dateByAddingTimeInterval:-v15];

      if (+[PLDefaults debugEnabled])
      {
        v16 = objc_opt_class();
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __38__PLTimeReferenceBaseband_currentTime__block_invoke_37;
        v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v24[4] = v16;
        if (currentTime_defaultOnce_35 != -1)
        {
          dispatch_once(&currentTime_defaultOnce_35, v24);
        }

        if (currentTime_classDebugEnabled_36 == 1)
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceBaseband::currentTime=%@", v12];
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceBaseband.m"];
          lastPathComponent = [v18 lastPathComponent];
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceBaseband currentTime]"];
          [PLCoreStorage logMessage:v17 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:141];

          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v23.receiver = self;
      v23.super_class = PLTimeReferenceBaseband;
      [(PLTimeReferenceDynamic *)&v23 checkForTimeChangeWithCurrentTime:v12];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (+[PLDefaults debugEnabled])
    {
      v6 = objc_opt_class();
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __38__PLTimeReferenceBaseband_currentTime__block_invoke;
      v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v26[4] = v6;
      if (currentTime_defaultOnce != -1)
      {
        dispatch_once(&currentTime_defaultOnce, v26);
      }

      if (currentTime_classDebugEnabled == 1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceBaseband::currentTime: This device doesn't have a baseband. Getting system time instead"];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceBaseband.m"];
        lastPathComponent2 = [v8 lastPathComponent];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceBaseband currentTime]"];
        [PLCoreStorage logMessage:v7 fromFile:lastPathComponent2 fromFunction:v10 fromLineNumber:96];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    getBasebandTimeAndLatency = [(PLTimeReference *)self timeManager];
    v12 = [getBasebandTimeAndLatency currentTimeFromTimeReference:1 toTimeReference:1];
  }

  return v12;
}

BOOL __38__PLTimeReferenceBaseband_currentTime__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  currentTime_classDebugEnabled = result;
  return result;
}

BOOL __38__PLTimeReferenceBaseband_currentTime__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled = result;
  return result;
}

BOOL __38__PLTimeReferenceBaseband_currentTime__block_invoke_37(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  currentTime_classDebugEnabled_36 = result;
  return result;
}

- (void)timeChangedNotificationReceived:(id)received
{
  v4 = MEMORY[0x1E695DF10];
  receivedCopy = received;
  v6 = objc_alloc_init(v4);
  v7 = [receivedCopy objectForKeyedSubscript:@"year"];
  [v6 setYear:{objc_msgSend(v7, "integerValue")}];

  v8 = [receivedCopy objectForKeyedSubscript:@"month"];
  [v6 setMonth:{objc_msgSend(v8, "integerValue")}];

  v9 = [receivedCopy objectForKeyedSubscript:@"day"];
  [v6 setDay:{objc_msgSend(v9, "integerValue")}];

  v10 = [receivedCopy objectForKeyedSubscript:@"hour"];
  [v6 setHour:{objc_msgSend(v10, "integerValue")}];

  v11 = [receivedCopy objectForKeyedSubscript:@"minute"];
  [v6 setMinute:{objc_msgSend(v11, "integerValue")}];

  v12 = [receivedCopy objectForKeyedSubscript:@"second"];

  [v6 setSecond:{objc_msgSend(v12, "integerValue")}];
  v13 = objc_alloc(MEMORY[0x1E695DEE8]);
  v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x1E695D928]];
  v15 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v14 setTimeZone:v15];

  v16 = [v14 dateFromComponents:v6];
  if (+[PLDefaults debugEnabled])
  {
    v17 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PLTimeReferenceBaseband_timeChangedNotificationReceived___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v17;
    if (timeChangedNotificationReceived__defaultOnce != -1)
    {
      dispatch_once(&timeChangedNotificationReceived__defaultOnce, block);
    }

    if (timeChangedNotificationReceived__classDebugEnabled == 1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceBaseband::timeChangedNotificationReceived currentTime=%@", v16];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceBaseband.m"];
      lastPathComponent = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceBaseband timeChangedNotificationReceived:]"];
      [PLCoreStorage logMessage:v18 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:164];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = PLTimeReferenceBaseband;
  [(PLTimeReferenceDynamic *)&v23 checkForTimeChangeWithCurrentTime:v16];
}

BOOL __59__PLTimeReferenceBaseband_timeChangedNotificationReceived___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timeChangedNotificationReceived__classDebugEnabled = result;
  return result;
}

@end