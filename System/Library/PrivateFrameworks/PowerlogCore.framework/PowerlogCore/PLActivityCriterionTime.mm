@interface PLActivityCriterionTime
+ (double)minTimeInterval;
+ (id)timeCriterionWithInterval:(double)interval;
- (PLActivityCriterionTime)initWithInterval:(double)interval;
- (double)rescheduleDelay;
- (id)description;
- (void)dealloc;
- (void)didCompleteActivity:(id)activity;
- (void)didDisableActivity:(id)activity;
- (void)didEnableActivity:(id)activity;
- (void)didInterruptActivity:(id)activity;
@end

@implementation PLActivityCriterionTime

- (PLActivityCriterionTime)initWithInterval:(double)interval
{
  if (interval <= 0.0)
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLActivityCriterionTime;
    v4 = [(PLActivityCriterion *)&v8 init];
    if (v4)
    {
      [objc_opt_class() minTimeInterval];
      if (intervalCopy <= interval)
      {
        intervalCopy = interval;
      }

      v4->_interval = intervalCopy;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)timeCriterionWithInterval:(double)interval
{
  v3 = [[PLActivityCriterionTime alloc] initWithInterval:interval];

  return v3;
}

+ (double)minTimeInterval
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__PLActivityCriterionTime_minTimeInterval__block_invoke;
  v4[3] = &unk_1E85195E0;
  v5 = @"PLActivityCriterionTime_minTimeInterval";
  v6 = 0x404E000000000000;
  if (minTimeInterval_defaultOnce != -1)
  {
    dispatch_once(&minTimeInterval_defaultOnce, v4);
  }

  v2 = *&minTimeInterval_objectForKey;

  return v2;
}

uint64_t __42__PLActivityCriterionTime_minTimeInterval__block_invoke(uint64_t a1)
{
  result = [PLDefaults doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  minTimeInterval_objectForKey = v2;
  return result;
}

- (void)dealloc
{
  [(PLMonotonicTimer *)self->_timer cancel];
  v3.receiver = self;
  v3.super_class = PLActivityCriterionTime;
  [(PLActivityCriterionTime *)&v3 dealloc];
}

- (void)didEnableActivity:(id)activity
{
  activityCopy = activity;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PLActivityCriterionTime_didEnableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didEnableActivity__defaultOnce_1 != -1)
    {
      dispatch_once(&didEnableActivity__defaultOnce_1, block);
    }

    if (didEnableActivity__classDebugEnabled_1 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionTime::didEnableActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionTime.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionTime didEnableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:49];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v26.receiver = self;
  v26.super_class = PLActivityCriterionTime;
  [(PLActivityCriterion *)&v26 didEnableActivity:activityCopy];
  delegate = [(PLActivityCriterion *)self delegate];
  lastCompletedDate = [delegate lastCompletedDate];
  if (lastCompletedDate)
  {
    delegate2 = [(PLActivityCriterion *)self delegate];
    lastCompletedDate2 = [delegate2 lastCompletedDate];
  }

  else
  {
    lastCompletedDate2 = [MEMORY[0x1E695DF00] distantPast];
  }

  [(PLActivityCriterionTime *)self interval];
  v15 = [lastCompletedDate2 dateByAddingTimeInterval:?];
  if (+[PLDefaults debugEnabled])
  {
    v16 = objc_opt_class();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__PLActivityCriterionTime_didEnableActivity___block_invoke_25;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v16;
    if (didEnableActivity__defaultOnce_23 != -1)
    {
      dispatch_once(&didEnableActivity__defaultOnce_23, v25);
    }

    if (didEnableActivity__classDebugEnabled_24 == 1)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionTime::didEnableActivity:%@ for criterion=%@, lastCompletedDate=%@, fireDate=%@", activityCopy, self, lastCompletedDate2, v15];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionTime.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionTime didEnableActivity:]"];
      [PLCoreStorage logMessage:v17 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:55];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v22 = dispatch_get_global_queue(2, 0);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __45__PLActivityCriterionTime_didEnableActivity___block_invoke_30;
  v24[3] = &unk_1E851AC20;
  v24[4] = self;
  v23 = [PLMonotonicTimer scheduledTimerWithMonotonicFireDate:v15 withInterval:v22 withQueue:v24 withBlock:0.0];
  [(PLActivityCriterionTime *)self setTimer:v23];
}

BOOL __45__PLActivityCriterionTime_didEnableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didEnableActivity__classDebugEnabled_1 = result;
  return result;
}

BOOL __45__PLActivityCriterionTime_didEnableActivity___block_invoke_25(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didEnableActivity__classDebugEnabled_24 = result;
  return result;
}

uint64_t __45__PLActivityCriterionTime_didEnableActivity___block_invoke_30(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __45__PLActivityCriterionTime_didEnableActivity___block_invoke_2;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_5 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_5, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_5 == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionTime::timer block fired for criterion=%@", *(a1 + 32), block, v11, v12, v13, v14];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionTime.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionTime didEnableActivity:]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:62];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return [*(a1 + 32) setSatisfied:1];
}

BOOL __45__PLActivityCriterionTime_didEnableActivity___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_5 = result;
  return result;
}

- (void)didCompleteActivity:(id)activity
{
  activityCopy = activity;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PLActivityCriterionTime_didCompleteActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didCompleteActivity__defaultOnce_0 != -1)
    {
      dispatch_once(&didCompleteActivity__defaultOnce_0, block);
    }

    if (didCompleteActivity__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionTime::didCompleteActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionTime.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionTime didCompleteActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:68];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14.receiver = self;
  v14.super_class = PLActivityCriterionTime;
  [(PLActivityCriterion *)&v14 didCompleteActivity:activityCopy];
  [(PLActivityCriterion *)self setSatisfied:0];
  v11 = MEMORY[0x1E695DF00];
  [(PLActivityCriterionTime *)self interval];
  v12 = [v11 monotonicDateWithTimeIntervalSinceNow:?];
  timer = [(PLActivityCriterionTime *)self timer];
  [timer setMonotonicFireDate:v12];
}

BOOL __47__PLActivityCriterionTime_didCompleteActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didCompleteActivity__classDebugEnabled_0 = result;
  return result;
}

- (void)didInterruptActivity:(id)activity
{
  activityCopy = activity;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PLActivityCriterionTime_didInterruptActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didInterruptActivity__defaultOnce_0 != -1)
    {
      dispatch_once(&didInterruptActivity__defaultOnce_0, block);
    }

    if (didInterruptActivity__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionTime::didInterruptActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionTime.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionTime didInterruptActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:79];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14.receiver = self;
  v14.super_class = PLActivityCriterionTime;
  [(PLActivityCriterion *)&v14 didInterruptActivity:activityCopy];
  [(PLActivityCriterion *)self setSatisfied:0];
  v11 = MEMORY[0x1E695DF00];
  [(PLActivityCriterionTime *)self rescheduleDelay];
  v12 = [v11 monotonicDateWithTimeIntervalSinceNow:?];
  timer = [(PLActivityCriterionTime *)self timer];
  [timer setMonotonicFireDate:v12];
}

BOOL __48__PLActivityCriterionTime_didInterruptActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didInterruptActivity__classDebugEnabled_0 = result;
  return result;
}

- (void)didDisableActivity:(id)activity
{
  activityCopy = activity;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PLActivityCriterionTime_didDisableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didDisableActivity__defaultOnce_1 != -1)
    {
      dispatch_once(&didDisableActivity__defaultOnce_1, block);
    }

    if (didDisableActivity__classDebugEnabled_1 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionTime::didDisableActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionTime.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionTime didDisableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:90];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PLActivityCriterionTime;
  [(PLActivityCriterion *)&v12 didDisableActivity:activityCopy];
  timer = [(PLActivityCriterionTime *)self timer];
  [timer cancel];

  [(PLActivityCriterionTime *)self setTimer:0];
}

BOOL __46__PLActivityCriterionTime_didDisableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didDisableActivity__classDebugEnabled_1 = result;
  return result;
}

- (double)rescheduleDelay
{
  [(PLActivityCriterionTime *)self interval];
  v3 = v2 / 10.0;
  [objc_opt_class() minTimeInterval];
  if (v3 >= result)
  {
    return v3;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  [(PLActivityCriterionTime *)self interval];
  return [v2 stringWithFormat:@"(interval=%f)", v3];
}

@end