@interface PLActivityCriterion
- (PLActivityCriterion)init;
- (PLActivityCriterionDelegate)delegate;
- (void)didCompleteActivity:(id)activity;
- (void)didDisableActivity:(id)activity;
- (void)didEnableActivity:(id)activity;
- (void)didInterruptActivity:(id)activity;
@end

@implementation PLActivityCriterion

- (PLActivityCriterionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PLActivityCriterion)init
{
  v3.receiver = self;
  v3.super_class = PLActivityCriterion;
  result = [(PLActivityCriterion *)&v3 init];
  if (result)
  {
    result->_satisfied = 0;
  }

  return result;
}

- (void)didEnableActivity:(id)activity
{
  activityCopy = activity;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLActivityCriterion_didEnableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didEnableActivity__defaultOnce != -1)
    {
      dispatch_once(&didEnableActivity__defaultOnce, block);
    }

    if (didEnableActivity__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterion::didEnableActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterion.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterion didEnableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:28];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(PLActivityCriterion *)self setDelegate:activityCopy];
}

BOOL __41__PLActivityCriterion_didEnableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didEnableActivity__classDebugEnabled = result;
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
    block[2] = __43__PLActivityCriterion_didCompleteActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didCompleteActivity__defaultOnce != -1)
    {
      dispatch_once(&didCompleteActivity__defaultOnce, block);
    }

    if (didCompleteActivity__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterion::didCompleteActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterion.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterion didCompleteActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:33];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __43__PLActivityCriterion_didCompleteActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didCompleteActivity__classDebugEnabled = result;
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
    block[2] = __44__PLActivityCriterion_didInterruptActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didInterruptActivity__defaultOnce != -1)
    {
      dispatch_once(&didInterruptActivity__defaultOnce, block);
    }

    if (didInterruptActivity__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterion::didInterruptActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterion.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterion didInterruptActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:37];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __44__PLActivityCriterion_didInterruptActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didInterruptActivity__classDebugEnabled = result;
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
    block[2] = __42__PLActivityCriterion_didDisableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didDisableActivity__defaultOnce != -1)
    {
      dispatch_once(&didDisableActivity__defaultOnce, block);
    }

    if (didDisableActivity__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterion::didDisableActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterion.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterion didDisableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:41];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  self->_satisfied = 0;
  [(PLActivityCriterion *)self setDelegate:0];
}

BOOL __42__PLActivityCriterion_didDisableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didDisableActivity__classDebugEnabled = result;
  return result;
}

BOOL __36__PLActivityCriterion_setSatisfied___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setSatisfied__classDebugEnabled = result;
  return result;
}

@end