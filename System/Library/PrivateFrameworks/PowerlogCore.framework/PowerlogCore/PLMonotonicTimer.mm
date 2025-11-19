@interface PLMonotonicTimer
+ (BOOL)debugInstance;
+ (id)debugScheduledTimerWithMonotonicFireDate:(id)a3 withInterval:(double)a4 withQueue:(id)a5 withBlock:(id)a6;
+ (id)scheduledTimerWithMonotonicFireDate:(id)a3 withInterval:(double)a4 withQueue:(id)a5 withBlock:(id)a6;
- (PLMonotonicTimer)initWithMonotonicFireDate:(id)a3 withInterval:(double)a4 withQueue:(id)a5 withBlock:(id)a6;
- (id)description;
- (void)_cancel;
- (void)_setMonotonicFireDate:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)fire;
- (void)reschedule;
- (void)schedule;
- (void)setMonotonicFireDate:(id)a3;
- (void)timerFiredForMonotonicFireDate:(id)a3;
@end

@implementation PLMonotonicTimer

void __28__PLMonotonicTimer_schedule__block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained timerFiredForMonotonicFireDate:*(a1 + 32)];
}

- (void)_cancel
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__PLMonotonicTimer__cancel__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (_cancel_defaultOnce != -1)
    {
      dispatch_once(&_cancel_defaultOnce, block);
    }

    if (_cancel_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin for self=%@", self];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer _cancel]"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:173];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v9 = [(PLMonotonicTimer *)self monotonicFireDate];

  if (v9)
  {
    v10 = [(PLMonotonicTimer *)self canceledFireDates];
    v11 = [(PLMonotonicTimer *)self monotonicFireDate];
    [v10 addObject:v11];

    if (+[PLDefaults debugEnabled])
    {
      v12 = objc_opt_class();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __27__PLMonotonicTimer__cancel__block_invoke_42;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v12;
      if (_cancel_defaultOnce_40 != -1)
      {
        dispatch_once(&_cancel_defaultOnce_40, v28);
      }

      if (_cancel_classDebugEnabled_41 == 1)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = [(PLMonotonicTimer *)self canceledFireDates];
        v15 = [v13 stringWithFormat:@"self=%@, canceledFireDates=%@", self, v14];

        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer _cancel]"];
        [PLCoreStorage logMessage:v15 fromFile:v17 fromFunction:v18 fromLineNumber:178];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    monotonicFireDate = self->_monotonicFireDate;
    self->_monotonicFireDate = 0;

    if (+[PLDefaults debugEnabled])
    {
      v21 = objc_opt_class();
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __27__PLMonotonicTimer__cancel__block_invoke_48;
      v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v27[4] = v21;
      if (_cancel_defaultOnce_46 != -1)
      {
        dispatch_once(&_cancel_defaultOnce_46, v27);
      }

      if (_cancel_classDebugEnabled_47 == 1)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end for self=%@", self];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v24 = [v23 lastPathComponent];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer _cancel]"];
        [PLCoreStorage logMessage:v22 fromFile:v24 fromFunction:v25 fromLineNumber:181];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }
}

- (void)schedule
{
  v3 = [(PLMonotonicTimer *)self monotonicFireDate];

  if (v3)
  {
    if (+[PLDefaults debugEnabled])
    {
      v4 = objc_opt_class();
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __28__PLMonotonicTimer_schedule__block_invoke;
      v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v36[4] = v4;
      if (schedule_defaultOnce != -1)
      {
        dispatch_once(&schedule_defaultOnce, v36);
      }

      if (schedule_classDebugEnabled == 1)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin for self=%@", self];
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer schedule]"];
        [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:152];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v10 = [MEMORY[0x1E695DF00] monotonicDate];
    v11 = [(PLMonotonicTimer *)self monotonicFireDate];
    v12 = [v11 copy];

    [v12 timeIntervalSinceDate:v10];
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    if (+[PLDefaults debugEnabled])
    {
      v15 = objc_opt_class();
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __28__PLMonotonicTimer_schedule__block_invoke_30;
      v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v35[4] = v15;
      if (schedule_defaultOnce_28 != -1)
      {
        dispatch_once(&schedule_defaultOnce_28, v35);
      }

      if (schedule_classDebugEnabled_29 == 1)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"self=%@, now=%@, timeInterval=%f", self, v10, *&v14];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer schedule]"];
        [PLCoreStorage logMessage:v16 fromFile:v18 fromFunction:v19 fromLineNumber:161];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    objc_initWeak(&location, self);
    v21 = dispatch_walltime(0, (v14 * 1000000000.0));
    v22 = [PLUtilities workQueueForClass:objc_opt_class()];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__PLMonotonicTimer_schedule__block_invoke_34;
    block[3] = &unk_1E8519D18;
    objc_copyWeak(&v33, &location);
    v23 = v12;
    v32 = v23;
    dispatch_after(v21, v22, block);

    if (+[PLDefaults debugEnabled])
    {
      v24 = objc_opt_class();
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __28__PLMonotonicTimer_schedule__block_invoke_2;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v24;
      if (schedule_defaultOnce_35 != -1)
      {
        dispatch_once(&schedule_defaultOnce_35, v30);
      }

      if (schedule_classDebugEnabled_36 == 1)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end for self=%@", self];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v27 = [v26 lastPathComponent];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer schedule]"];
        [PLCoreStorage logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:168];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

- (PLMonotonicTimer)initWithMonotonicFireDate:(id)a3 withInterval:(double)a4 withQueue:(id)a5 withBlock:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (a4 < 0.0 || v12 == 0 || v13 == 0)
  {
    v17 = 0;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = PLMonotonicTimer;
    v18 = [(PLMonotonicTimer *)&v30 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_monotonicFireDate, a3);
      v19->_interval = a4;
      objc_storeStrong(&v19->_queue, a5);
      v20 = [v14 copy];
      block = v19->_block;
      v19->_block = v20;

      v22 = [MEMORY[0x1E695DFA8] set];
      canceledFireDates = v19->_canceledFireDates;
      v19->_canceledFireDates = v22;

      objc_initWeak(&location, v19);
      v24 = +[PLTimeManager sharedInstance];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLMonotonicTimer_%p", v19];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __79__PLMonotonicTimer_initWithMonotonicFireDate_withInterval_withQueue_withBlock___block_invoke;
      v27[3] = &unk_1E8519CF0;
      objc_copyWeak(&v28, &location);
      [v24 registerForTimeChangedCallbackWithIdentifier:v25 forTimeReference:1 usingBlock:v27];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    self = v19;
    v17 = self;
  }

  return v17;
}

void __79__PLMonotonicTimer_initWithMonotonicFireDate_withInterval_withQueue_withBlock___block_invoke(uint64_t a1)
{
  v2 = [PLUtilities workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PLMonotonicTimer_initWithMonotonicFireDate_withInterval_withQueue_withBlock___block_invoke_2;
  block[3] = &unk_1E8519CC8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_sync(v2, block);

  objc_destroyWeak(&v4);
}

void __79__PLMonotonicTimer_initWithMonotonicFireDate_withInterval_withQueue_withBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reschedule];
}

+ (id)scheduledTimerWithMonotonicFireDate:(id)a3 withInterval:(double)a4 withQueue:(id)a5 withBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a1 debugInstance])
  {
    v13 = 0;
  }

  else
  {
    v14 = [[PLMonotonicTimer alloc] initWithMonotonicFireDate:v10 withInterval:v11 withQueue:v12 withBlock:a4];
    v15 = [PLUtilities workQueueForClass:objc_opt_class()];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PLMonotonicTimer_scheduledTimerWithMonotonicFireDate_withInterval_withQueue_withBlock___block_invoke;
    block[3] = &unk_1E85190B8;
    v13 = v14;
    v18 = v13;
    dispatch_sync(v15, block);
  }

  return v13;
}

+ (id)debugScheduledTimerWithMonotonicFireDate:(id)a3 withInterval:(double)a4 withQueue:(id)a5 withBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a1 debugInstance])
  {
    v13 = [[PLMonotonicTimer alloc] initWithMonotonicFireDate:v10 withInterval:v11 withQueue:v12 withBlock:a4];
    v14 = [PLUtilities workQueueForClass:objc_opt_class()];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PLMonotonicTimer_debugScheduledTimerWithMonotonicFireDate_withInterval_withQueue_withBlock___block_invoke;
    block[3] = &unk_1E85190B8;
    v15 = v13;
    v18 = v15;
    dispatch_sync(v14, block);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  v3 = +[PLTimeManager sharedInstance];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLMonotonicTimer_%p", self];
  [v3 unregisterForTimeChangedCallbackWithIdentifier:v4 forTimeReference:1];

  v5.receiver = self;
  v5.super_class = PLMonotonicTimer;
  [(PLMonotonicTimer *)&v5 dealloc];
}

- (void)setMonotonicFireDate:(id)a3
{
  v4 = a3;
  v5 = [PLUtilities workQueueForClass:objc_opt_class()];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PLMonotonicTimer_setMonotonicFireDate___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)fire
{
  v3 = [PLUtilities workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__PLMonotonicTimer_fire__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __24__PLMonotonicTimer_fire__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setMonotonicFireDate:0];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF00] monotonicDate];
  [v2 timerFiredForMonotonicFireDate:v3];
}

- (void)cancel
{
  v3 = [PLUtilities workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__PLMonotonicTimer_cancel__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)description
{
  v2 = [(PLMonotonicTimer *)self monotonicFireDate];
  v3 = [v2 description];

  return v3;
}

+ (BOOL)debugInstance
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PLMonotonicTimer_debugInstance__block_invoke;
  v4[3] = &unk_1E85199A8;
  v5 = @"PLMonotonicTimerDebugInstance_Enabled";
  v6 = 0;
  if (debugInstance_defaultOnce != -1)
  {
    dispatch_once(&debugInstance_defaultOnce, v4);
  }

  v2 = debugInstance_objectForKey;

  return v2;
}

BOOL __33__PLMonotonicTimer_debugInstance__block_invoke(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  debugInstance_objectForKey = result;
  return result;
}

- (void)_setMonotonicFireDate:(id)a3
{
  v5 = a3;
  monotonicFireDate = self->_monotonicFireDate;
  if (v5 | monotonicFireDate && (!v5 || !monotonicFireDate || ![(NSDate *)monotonicFireDate isEqualToDate:v5]))
  {
    [(PLMonotonicTimer *)self _cancel];
    objc_storeStrong(&self->_monotonicFireDate, a3);
    [(PLMonotonicTimer *)self schedule];
  }

  MEMORY[0x1EEE66BB8]();
}

BOOL __28__PLMonotonicTimer_schedule__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  schedule_classDebugEnabled = result;
  return result;
}

BOOL __28__PLMonotonicTimer_schedule__block_invoke_30(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  schedule_classDebugEnabled_29 = result;
  return result;
}

BOOL __28__PLMonotonicTimer_schedule__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  schedule_classDebugEnabled_36 = result;
  return result;
}

BOOL __27__PLMonotonicTimer__cancel__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  _cancel_classDebugEnabled = result;
  return result;
}

BOOL __27__PLMonotonicTimer__cancel__block_invoke_42(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  _cancel_classDebugEnabled_41 = result;
  return result;
}

BOOL __27__PLMonotonicTimer__cancel__block_invoke_48(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  _cancel_classDebugEnabled_47 = result;
  return result;
}

- (void)timerFiredForMonotonicFireDate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] monotonicDate];
  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v6;
    if (timerFiredForMonotonicFireDate__defaultOnce != -1)
    {
      dispatch_once(&timerFiredForMonotonicFireDate__defaultOnce, v52);
    }

    if (timerFiredForMonotonicFireDate__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"self=%@, now=%@, monotonicFireDate=%@", self, v5, v4];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer timerFiredForMonotonicFireDate:]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:187];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v12 = [(PLMonotonicTimer *)self canceledFireDates];
  v13 = [v12 containsObject:v4];

  if (v13)
  {
    v14 = [(PLMonotonicTimer *)self canceledFireDates];
    [v14 removeObject:v4];

    if (+[PLDefaults debugEnabled])
    {
      v15 = objc_opt_class();
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_54;
      v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v51[4] = v15;
      if (timerFiredForMonotonicFireDate__defaultOnce_52 != -1)
      {
        dispatch_once(&timerFiredForMonotonicFireDate__defaultOnce_52, v51);
      }

      if (timerFiredForMonotonicFireDate__classDebugEnabled_53 == 1)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = [(PLMonotonicTimer *)self canceledFireDates];
        v18 = [v16 stringWithFormat:@"canceled for self=%@ with canceledFireDates=%@", self, v17];

        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer timerFiredForMonotonicFireDate:]"];
        [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:192];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

LABEL_22:
      }
    }
  }

  else
  {
    [v5 timeIntervalSinceDate:v4];
    if (v23 >= 0.0)
    {
      monotonicFireDate = self->_monotonicFireDate;
      self->_monotonicFireDate = 0;

      v29 = [(PLMonotonicTimer *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_64;
      block[3] = &unk_1E8519100;
      block[4] = self;
      v49 = v5;
      dispatch_async(v29, block);

      [(PLMonotonicTimer *)self interval];
      if (v30 > 0.0)
      {
        if (+[PLDefaults debugEnabled])
        {
          v31 = objc_opt_class();
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_77;
          v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v47[4] = v31;
          if (timerFiredForMonotonicFireDate__defaultOnce_75 != -1)
          {
            dispatch_once(&timerFiredForMonotonicFireDate__defaultOnce_75, v47);
          }

          if (timerFiredForMonotonicFireDate__classDebugEnabled_76 == 1)
          {
            v32 = MEMORY[0x1E696AEC0];
            [(PLMonotonicTimer *)self interval];
            v34 = [v32 stringWithFormat:@"rescheduling periodic timer with interval=%f", v33];
            v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
            v36 = [v35 lastPathComponent];
            v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer timerFiredForMonotonicFireDate:]"];
            [PLCoreStorage logMessage:v34 fromFile:v36 fromFunction:v37 fromLineNumber:213];

            v38 = PLLogCommon();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }
        }

        [(PLMonotonicTimer *)self interval];
        v39 = [v4 dateByAddingTimeInterval:?];
        [(PLMonotonicTimer *)self _setMonotonicFireDate:v39];
      }

      if (+[PLDefaults debugEnabled])
      {
        v40 = objc_opt_class();
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_83;
        v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v46[4] = v40;
        if (timerFiredForMonotonicFireDate__defaultOnce_81 != -1)
        {
          dispatch_once(&timerFiredForMonotonicFireDate__defaultOnce_81, v46);
        }

        if (timerFiredForMonotonicFireDate__classDebugEnabled_82 == 1)
        {
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end"];
          v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
          v43 = [v42 lastPathComponent];
          v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer timerFiredForMonotonicFireDate:]"];
          [PLCoreStorage logMessage:v41 fromFile:v43 fromFunction:v44 fromLineNumber:216];

          v45 = PLLogCommon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }
    }

    else if (+[PLDefaults debugEnabled])
    {
      v24 = objc_opt_class();
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_60;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v24;
      if (timerFiredForMonotonicFireDate__defaultOnce_58 != -1)
      {
        dispatch_once(&timerFiredForMonotonicFireDate__defaultOnce_58, v50);
      }

      if (timerFiredForMonotonicFireDate__classDebugEnabled_59 == 1)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"time mismatch for self=%@", self];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer timerFiredForMonotonicFireDate:]"];
        [PLCoreStorage logMessage:v18 fromFile:v26 fromFunction:v27 fromLineNumber:198];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_22;
      }
    }
  }
}

BOOL __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timerFiredForMonotonicFireDate__classDebugEnabled = result;
  return result;
}

BOOL __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_54(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timerFiredForMonotonicFireDate__classDebugEnabled_53 = result;
  return result;
}

BOOL __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_60(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timerFiredForMonotonicFireDate__classDebugEnabled_59 = result;
  return result;
}

void __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_64(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_1 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_1, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_1 == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"run block begin"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer timerFiredForMonotonicFireDate:]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:206];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v9 = [*(a1 + 32) block];
  v9[2](v9, *(a1 + 40));

  if (+[PLDefaults debugEnabled])
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_70;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v11;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_68 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_68, &v17);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_69 == 1)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"run block end", v17, v18, v19, v20, v21];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer timerFiredForMonotonicFireDate:]_block_invoke_2"];
      [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:208];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_1 = result;
  return result;
}

BOOL __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_70(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_69 = result;
  return result;
}

BOOL __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_77(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timerFiredForMonotonicFireDate__classDebugEnabled_76 = result;
  return result;
}

BOOL __51__PLMonotonicTimer_timerFiredForMonotonicFireDate___block_invoke_83(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timerFiredForMonotonicFireDate__classDebugEnabled_82 = result;
  return result;
}

- (void)reschedule
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__PLMonotonicTimer_reschedule__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (reschedule_defaultOnce != -1)
    {
      dispatch_once(&reschedule_defaultOnce, block);
    }

    if (reschedule_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin for self=%@", self];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer reschedule]"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:222];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v9 = [(PLMonotonicTimer *)self monotonicFireDate];
  [(PLMonotonicTimer *)self _setMonotonicFireDate:0];
  v10 = [(PLMonotonicTimer *)self canceledFireDates];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = [(PLMonotonicTimer *)self canceledFireDates];
    [v12 removeObject:v9];

    if (+[PLDefaults debugEnabled])
    {
      v13 = objc_opt_class();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __30__PLMonotonicTimer_reschedule__block_invoke_89;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v13;
      if (reschedule_defaultOnce_87 != -1)
      {
        dispatch_once(&reschedule_defaultOnce_87, v28);
      }

      if (reschedule_classDebugEnabled_88 == 1)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = [(PLMonotonicTimer *)self canceledFireDates];
        v16 = [v14 stringWithFormat:@"self=%@, self.canceledFireDates=%@", self, v15];

        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer reschedule]"];
        [PLCoreStorage logMessage:v16 fromFile:v18 fromFunction:v19 fromLineNumber:231];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }

  [(PLMonotonicTimer *)self _setMonotonicFireDate:v9];
  if (+[PLDefaults debugEnabled])
  {
    v21 = objc_opt_class();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __30__PLMonotonicTimer_reschedule__block_invoke_95;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v21;
    if (reschedule_defaultOnce_93 != -1)
    {
      dispatch_once(&reschedule_defaultOnce_93, v27);
    }

    if (reschedule_classDebugEnabled_94 == 1)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end for self=%@", self];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLMonotonicTimer.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLMonotonicTimer reschedule]"];
      [PLCoreStorage logMessage:v22 fromFile:v24 fromFunction:v25 fromLineNumber:235];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __30__PLMonotonicTimer_reschedule__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  reschedule_classDebugEnabled = result;
  return result;
}

BOOL __30__PLMonotonicTimer_reschedule__block_invoke_89(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  reschedule_classDebugEnabled_88 = result;
  return result;
}

BOOL __30__PLMonotonicTimer_reschedule__block_invoke_95(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  reschedule_classDebugEnabled_94 = result;
  return result;
}

@end