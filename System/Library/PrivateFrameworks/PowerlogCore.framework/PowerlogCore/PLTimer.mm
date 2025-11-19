@interface PLTimer
- (BOOL)timerActive;
- (NSDate)fireDate;
- (PLTimer)initWithFireDate:(id)a3 withInterval:(double)a4 withTolerance:(double)a5 repeats:(BOOL)a6 withUserInfo:(id)a7 withQueue:(id)a8 withBlock:(id)a9;
- (void)arm;
- (void)dealloc;
- (void)fire;
- (void)handleTimerFire;
- (void)invalidate;
- (void)setFireDate:(id)a3;
- (void)setTimerActive:(BOOL)a3;
@end

@implementation PLTimer

- (BOOL)timerActive
{
  v2 = [(PLTimer *)self timer];
  v3 = v2 != 0;

  return v3;
}

- (void)handleTimerFire
{
  v3 = [(PLTimer *)self queue];
  if (v3)
  {
    v4 = v3;
    v5 = [(PLTimer *)self block];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      if (+[PLDefaults debugEnabled])
      {
        v7 = objc_opt_class();
        block = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __26__PLTimer_handleTimerFire__block_invoke;
        v21 = &__block_descriptor_40_e5_v8__0lu32l8;
        v22 = v7;
        if (handleTimerFire_defaultOnce != -1)
        {
          dispatch_once(&handleTimerFire_defaultOnce, &block);
        }

        if (handleTimerFire_classDebugEnabled == 1)
        {
          v8 = MEMORY[0x1E696AEC0];
          v9 = [(PLTimer *)self queue];
          v10 = [v8 stringWithFormat:@"PLTimer::%@::TimerFire", v9, block, v19, v20, v21, v22];

          v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLTimer.m"];
          v12 = [v11 lastPathComponent];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimer handleTimerFire]"];
          [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:146];

          v14 = PLLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v15 = [(PLTimer *)self block];
      v16 = [(PLTimer *)self fireDate];
      v17 = [(PLTimer *)self userInfo];
      (v15)[2](v15, v16, v17);

      objc_autoreleasePoolPop(v6);
    }
  }
}

- (NSDate)fireDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fireDate;
  objc_sync_exit(v2);

  return v3;
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __21__PLTimer_invalidate__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (invalidate_defaultOnce != -1)
    {
      dispatch_once(&invalidate_defaultOnce, &block);
    }

    if (invalidate_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [(PLTimer *)v2 queue];
      v6 = [v4 stringWithFormat:@"PLTimer::%@:: invalidate", v5, block, v14, v15, v16, v17];

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLTimer.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimer invalidate]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:70];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  timer = v2->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v12 = v2->_timer;
    v2->_timer = 0;
  }

  objc_sync_exit(v2);
}

- (void)dealloc
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __18__PLTimer_dealloc__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (dealloc_defaultOnce != -1)
    {
      dispatch_once(&dealloc_defaultOnce, block);
    }

    if (dealloc_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [(PLTimer *)self queue];
      v6 = [v4 stringWithFormat:@"PLTimer::%@::dealloc: self=%@", v5, self];

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLTimer.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimer dealloc]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:57];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(PLTimer *)self setTimerActive:0];
  v11.receiver = self;
  v11.super_class = PLTimer;
  [(PLTimer *)&v11 dealloc];
}

- (PLTimer)initWithFireDate:(id)a3 withInterval:(double)a4 withTolerance:(double)a5 repeats:(BOOL)a6 withUserInfo:(id)a7 withQueue:(id)a8 withBlock:(id)a9
{
  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v20;
  v22 = 0;
  if (v19 && v20)
  {
    v28.receiver = self;
    v28.super_class = PLTimer;
    v23 = [(PLTimer *)&v28 init];
    v24 = v23;
    if (v23)
    {
      objc_storeStrong(&v23->_queue, a8);
      objc_storeStrong(&v24->_fireDate, a3);
      v24->_interval = a4;
      v24->_tolerance = a5;
      v24->_repeats = a6;
      objc_storeStrong(&v24->_userInfo, a7);
      v25 = MEMORY[0x1DA71B0D0](v21);
      block = v24->_block;
      v24->_block = v25;

      [(PLTimer *)v24 setTimerActive:v17 != 0];
    }

    self = v24;
    v22 = self;
  }

  return v22;
}

BOOL __18__PLTimer_dealloc__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  dealloc_classDebugEnabled = result;
  return result;
}

- (void)fire
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__PLTimer_fire__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_async(queue, block);
}

BOOL __21__PLTimer_invalidate__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  invalidate_classDebugEnabled = result;
  return result;
}

- (void)arm
{
  if (!self->_fireDate)
  {
    [(PLTimer *)self setTimerActive:1];
  }
}

- (void)setTimerActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLTimer *)self queue];
  if (v3)
  {
    v6 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v7 = __26__PLTimer_setTimerActive___block_invoke;
  }

  else
  {
    v6 = &v8;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v7 = __26__PLTimer_setTimerActive___block_invoke_23;
  }

  v6[2] = v7;
  v6[3] = &unk_1E85190B8;
  v6[4] = self;
  [PLUtilities dispatchSyncIfNotCallerQueue:v5 withBlock:v8, v9];
}

void __26__PLTimer_setTimerActive___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) invalidate];
  v3 = [*(a1 + 32) queue];
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, v3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(a1 + 32) + 16) timeIntervalSinceNow];
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7 * 1000000000.0;
  if (v8 > 9.22337204e18)
  {
    v8 = 9.22337204e18;
  }

  v9 = *(a1 + 32);
  v10 = (*(v9 + 48) * 1000000000.0);
  v11 = *(v9 + 40);
  v12 = dispatch_time(0, v8);
  v13 = *(a1 + 32);
  if (v10)
  {
    if (*(v13 + 8))
    {
      v14 = v10;
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = -1;
  }

  dispatch_source_set_timer(v11, v12, v14, (*(v13 + 56) * 1000000000.0));
  v15 = *(a1 + 32);
  v16 = *(v15 + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __26__PLTimer_setTimerActive___block_invoke_2;
  handler[3] = &unk_1E85190B8;
  handler[4] = v15;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_activate(*(*(a1 + 32) + 40));
  if (+[PLDefaults debugEnabled])
  {
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __26__PLTimer_setTimerActive___block_invoke_3;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v18;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_2 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_2, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_2 == 1)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [*(a1 + 32) queue];
      v21 = [*(a1 + 32) fireDate];
      v22 = [v19 stringWithFormat:@"PLTimer::%@::setTimerActive: created timer with fireDate=%@", v20, v21, block, v28, v29, v30, v31];

      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLTimer.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimer setTimerActive:]_block_invoke"];
      [PLCoreStorage logMessage:v22 fromFile:v24 fromFunction:v25 fromLineNumber:116];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  objc_sync_exit(v2);
}

void __26__PLTimer_setTimerActive___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) handleTimerFire];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      dispatch_source_cancel(v3);
    }
  }

  objc_sync_exit(obj);
}

BOOL __26__PLTimer_setTimerActive___block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_2 = result;
  return result;
}

void __26__PLTimer_setTimerActive___block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __26__PLTimer_setTimerActive___block_invoke_2_24;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [*(a1 + 32) queue];
      v6 = [v4 stringWithFormat:@"PLTimer::%@::setTimerActive: invalidate", v5, block, v12, v13, v14, v15];

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLTimer.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimer setTimerActive:]_block_invoke"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:122];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __26__PLTimer_setTimerActive___block_invoke_2_24(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (void)setFireDate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  fireDate = v5->_fireDate;
  v5->_fireDate = v4;

  objc_sync_exit(v5);

  [(PLTimer *)v5 setTimerActive:1];
}

BOOL __26__PLTimer_handleTimerFire__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handleTimerFire_classDebugEnabled = result;
  return result;
}

@end