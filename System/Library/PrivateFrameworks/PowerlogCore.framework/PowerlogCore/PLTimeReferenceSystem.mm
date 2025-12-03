@interface PLTimeReferenceSystem
- (id)currentTime;
- (void)dealloc;
- (void)registerForClockSetNotification;
- (void)registerForDayChangedNotification;
- (void)registerForTimeChangedNotification;
- (void)registerForTimeZoneChangedNotification;
- (void)timeChangedToMidnightLocalTime;
@end

@implementation PLTimeReferenceSystem

- (void)registerForTimeChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, timeChangedNotificationReceived, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)registerForClockSetNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, clockSetNotificationReceived, @"com.apple.system.clock_set", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)registerForDayChangedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_dayChangedNotificationReceived_ name:*MEMORY[0x1E695D810] object:0];
}

- (void)registerForTimeZoneChangedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_timeZoneChangedNotificationReceived_ name:*MEMORY[0x1E695DA68] object:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v4.receiver = self;
  v4.super_class = PLTimeReferenceSystem;
  [(PLTimeReferenceSystem *)&v4 dealloc];
}

- (id)currentTime
{
  date = [MEMORY[0x1E695DF00] date];
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  [(PLTimeReferenceDynamic *)self setLastQueryTime:monotonicDate];

  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PLTimeReferenceSystem_currentTime__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (currentTime_defaultOnce_1 != -1)
    {
      dispatch_once(&currentTime_defaultOnce_1, block);
    }

    if (currentTime_classDebugEnabled_1 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceSystem::currentTime=%@", date];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceSystem.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceSystem currentTime]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:46];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v6 copyAndPrepareLog];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PLTimeReferenceSystem;
  [(PLTimeReferenceDynamic *)&v12 checkForTimeChangeWithCurrentTime:date];

  return date;
}

BOOL __36__PLTimeReferenceSystem_currentTime__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  currentTime_classDebugEnabled_1 = result;
  return result;
}

- (void)timeChangedToMidnightLocalTime
{
  v14.receiver = self;
  v14.super_class = PLTimeReferenceSystem;
  timeChangeBlocks = [(PLTimeReferenceDynamic *)&v14 timeChangeBlocks];
  objc_sync_enter(timeChangeBlocks);
  v13.receiver = self;
  v13.super_class = PLTimeReferenceSystem;
  timeChangeBlocks2 = [(PLTimeReferenceDynamic *)&v13 timeChangeBlocks];
  v5 = [timeChangeBlocks2 objectForKeyedSubscript:@"PLCoreStorage"];

  if (v5)
  {
    v5[2](v5, 0.0);
  }

  else if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PLTimeReferenceSystem_timeChangedToMidnightLocalTime__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (timeChangedToMidnightLocalTime_defaultOnce != -1)
    {
      dispatch_once(&timeChangedToMidnightLocalTime_defaultOnce, block);
    }

    if (timeChangedToMidnightLocalTime_classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceSystem::timeChangedToMidnightLocalTime: No timeChangeBlock for PLCoreStorage"];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceSystem.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceSystem timeChangedToMidnightLocalTime]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:55];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v7 copyAndPrepareLog];
      }
    }
  }

  objc_sync_exit(timeChangeBlocks);
}

BOOL __55__PLTimeReferenceSystem_timeChangedToMidnightLocalTime__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timeChangedToMidnightLocalTime_classDebugEnabled = result;
  return result;
}

@end