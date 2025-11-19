@interface SBFMachNextMinuteDateProvider
- (SBFMachNextMinuteDateProvider)initWithReferenceView:(id)a3;
- (__n128)setMachTimer:(uint64_t)a1;
- (double)machTimer;
- (id)_nextMinuteDateWithContinuousTime:(unint64_t *)a3 machContinuousTimeForNextMinute:;
- (id)observeMinuteUpdatesWithHandler:(id)a3;
- (id)referenceView;
- (id)setReferenceView:(id *)result;
- (uint64_t)_setupClockSetNotification;
- (uint64_t)_setupMachTimer;
- (uint64_t)_tearDownClockSetNotification;
- (uint64_t)_tearDownMachTimer;
- (uint64_t)_updateTimerEnablement;
- (uint64_t)clockSetNotifyToken;
- (uint64_t)setClockSetNotifyToken:(uint64_t)result;
- (void)_onMachTimer;
- (void)_onNotifyClockSet;
- (void)_updateHandlers;
- (void)dealloc;
- (void)removeMinuteUpdateHandler:(id)a3;
@end

@implementation SBFMachNextMinuteDateProvider

- (SBFMachNextMinuteDateProvider)initWithReferenceView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBFMachNextMinuteDateProvider;
  v5 = [(SBFMachNextMinuteDateProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_referenceView, v4);
  }

  return v6;
}

- (id)observeMinuteUpdatesWithHandler:(id)a3
{
  v4 = a3;
  if (!self->_minuteHandlers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    minuteHandlers = self->_minuteHandlers;
    self->_minuteHandlers = v5;
  }

  v7 = MEMORY[0x1E696AD98];
  ++self->_nextToken;
  v8 = [v7 numberWithUnsignedInteger:?];
  v9 = [v4 copy];
  v10 = MEMORY[0x1BFB4D9B0]();
  [(NSMutableDictionary *)self->_minuteHandlers setObject:v10 forKeyedSubscript:v8];

  [(SBFMachNextMinuteDateProvider *)self _updateTimerEnablement];

  return v8;
}

- (double)machTimer
{
  if (a1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 56);
    *a2 = v2;
    *(a2 + 16) = v3;
    *(a2 + 32) = *(a1 + 72);
  }

  else
  {
    *(a2 + 32) = 0;
    *&v2 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v2;
}

- (void)dealloc
{
  [(SBFMachNextMinuteDateProvider *)self _tearDownMachTimer];
  if (self)
  {
    notify_cancel(self->_clockSetNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = SBFMachNextMinuteDateProvider;
  [(SBFMachNextMinuteDateProvider *)&v3 dealloc];
}

- (uint64_t)_tearDownMachTimer
{
  if (result)
  {
    v2 = result;
    v3 = SBLogStatusBarish();
    if (OUTLINED_FUNCTION_1_4(v3))
    {
      OUTLINED_FUNCTION_0_6(&dword_1BEA11000, v4, v5, "Tear down timer", v6, v7, v8, v9, 0);
    }

    _SBFMachTimerCancel((v2 + 40), 1);
    Main = CFRunLoopGetMain();
    _SBFMachTimerRemoveFromRunLoop(v2 + 40, Main, *MEMORY[0x1E695E8D0]);
    return _SBFMachTimerKill((v2 + 40));
  }

  return result;
}

- (uint64_t)_tearDownClockSetNotification
{
  if (result)
  {
    return notify_cancel(*(result + 20));
  }

  return result;
}

- (id)_nextMinuteDateWithContinuousTime:(unint64_t *)a3 machContinuousTimeForNextMinute:
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained window];
      v8 = [v7 windowScene];
      v9 = [v8 screen];
      v10 = 1.0 / [v9 maximumFramesPerSecond];

      v11 = v10 + v10;
    }

    else
    {
      v11 = 0.0;
    }

    if (!dword_1EBDBBD0C)
    {
      mach_timebase_info(&_MergedGlobals);
      *&qword_1EBDBBD10 = (1000000000 * dword_1EBDBBD0C / _MergedGlobals);
    }

    mach_get_times();
    v12 = v11 + 0 / 1000000000.0 + 0;
    v13 = *&qword_1EBDBBD10 * (60.0 - fmod(v12, 60.0));
    v14 = v12 - *MEMORY[0x1E695E468];
    if (a2)
    {
      *&a2->isa = v14;
    }

    v15 = llround(v13);
    if (a3)
    {
      *a3 = v15;
    }

    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v14];
    v17 = SBLogStatusBarish();
    if (OUTLINED_FUNCTION_1_4(v17))
    {
      *buf = 138544386;
      v20 = v16;
      v21 = 2048;
      v22 = 0;
      v23 = 2048;
      v24 = v12 - v11;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = v15;
      _os_log_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_DEFAULT, "Got date for next minute boundary: %{public}@\n now: %lu seconds: %f correction: %f remaining: %lu", buf, 0x34u);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (uint64_t)_updateTimerEnablement
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = [*(result + 32) count];
  if (result)
  {
    if ((*(v1 + 16) & 1) == 0)
    {
      *(v1 + 16) = 1;
      [(SBFMachNextMinuteDateProvider *)v1 _setupMachTimer];

      return [(SBFMachNextMinuteDateProvider *)v1 _setupClockSetNotification];
    }
  }

  else if ((*(v1 + 16) & 1) == 0)
  {
    return result;
  }

  result = [*(v1 + 32) count];
  if (!result)
  {
    *(v1 + 16) = 0;
    [(SBFMachNextMinuteDateProvider *)v1 _tearDownMachTimer];
    v2 = *(v1 + 20);

    return notify_cancel(v2);
  }

  return result;
}

- (void)removeMinuteUpdateHandler:(id)a3
{
  [(NSMutableDictionary *)self->_minuteHandlers removeObjectForKey:a3];

  [(SBFMachNextMinuteDateProvider *)self _updateTimerEnablement];
}

- (uint64_t)_setupMachTimer
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    _SBFMachTimerInit(result + 40, machTimerCallback, result, 0);
    Main = CFRunLoopGetMain();
    _SBFMachTimerAddToRunLoop(v2 + 40, Main, *MEMORY[0x1E695E8D0]);
    v6 = 0;
    v4 = [(SBFMachNextMinuteDateProvider *)v2 _nextMinuteDateWithContinuousTime:&v6 machContinuousTimeForNextMinute:?];
    v5 = SBLogStatusBarish();
    if (OUTLINED_FUNCTION_1_4(v5))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_1BEA11000, v1, OS_LOG_TYPE_DEFAULT, "Arming timer for %lu", buf, 0xCu);
    }

    return _SBFMachTimerArm((v2 + 40));
  }

  return result;
}

- (uint64_t)_setupClockSetNotification
{
  if (result)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__SBFMachNextMinuteDateProvider__setupClockSetNotification__block_invoke;
    handler[3] = &unk_1E80801D8;
    handler[4] = result;
    return notify_register_dispatch("com.apple.system.clock_set", (result + 20), MEMORY[0x1E69E96A0], handler);
  }

  return result;
}

- (void)_updateHandlers
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = 0;
    v2 = [(SBFMachNextMinuteDateProvider *)a1 _nextMinuteDateWithContinuousTime:&v8 machContinuousTimeForNextMinute:?];
    v3 = SBLogStatusBarish();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v2;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Re-arming timer at %@ for %lu", buf, 0x16u);
    }

    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__SBFMachNextMinuteDateProvider__updateHandlers__block_invoke;
    v6[3] = &unk_1E807F560;
    v7 = v2;
    v5 = v2;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
    _SBFMachTimerArm((a1 + 40));
  }
}

- (void)_onMachTimer
{
  v4 = SBLogStatusBarish();
  if (OUTLINED_FUNCTION_1_4(v4))
  {
    OUTLINED_FUNCTION_0_6(&dword_1BEA11000, v5, v6, "Handle mach timer callback", v7, v8, v9, v10, 0);
  }

  [(SBFMachNextMinuteDateProvider *)self _updateHandlers];
}

- (void)_onNotifyClockSet
{
  if (a1)
  {
    v3 = SBLogStatusBarish();
    if (OUTLINED_FUNCTION_1_4(v3))
    {
      OUTLINED_FUNCTION_0_6(&dword_1BEA11000, v4, v5, "Handle clock change notification", v6, v7, v8, v9, 0);
    }

    [(SBFMachNextMinuteDateProvider *)a1 _updateHandlers];
  }
}

- (id)referenceView
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setReferenceView:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

- (__n128)setMachTimer:(uint64_t)a1
{
  if (a1)
  {
    result = *a2;
    v3 = *(a2 + 16);
    *(a1 + 72) = *(a2 + 32);
    *(a1 + 56) = v3;
    *(a1 + 40) = result;
  }

  return result;
}

- (uint64_t)clockSetNotifyToken
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

- (uint64_t)setClockSetNotifyToken:(uint64_t)result
{
  if (result)
  {
    *(result + 20) = a2;
  }

  return result;
}

@end