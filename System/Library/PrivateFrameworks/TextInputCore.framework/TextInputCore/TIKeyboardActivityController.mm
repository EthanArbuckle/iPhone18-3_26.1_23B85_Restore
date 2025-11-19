@interface TIKeyboardActivityController
+ (double)defaultKeyboardIdleTimeoutInterval;
+ (double)keyboardIdleTimeoutInterval;
+ (id)sharedController;
+ (id)singletonInstance;
+ (void)setSharedController:(id)a3;
- (BOOL)canGoEarlyClean;
- (BOOL)shouldBecomeClean;
- (BOOL)shouldBecomeDirty;
- (TIKeyboardActivityController)init;
- (id)createMemoryPressureSource;
- (unint64_t)activityState;
- (void)addActivityObserver:(id)a3;
- (void)backgroundActivityAssertionsDidChange;
- (void)dealloc;
- (void)generateMemgraphsIfNeeded;
- (void)handleMemoryStatusPressure:(unint64_t)a3;
- (void)inactivityTimerFired:(id)a3;
- (void)keyboardAssertionsDidChange;
- (void)notifyMemoryPressureLevel:(unint64_t)a3 excessMemoryInBytes:(unint64_t)a4;
- (void)notifyTransitionWithContext:(id)a3;
- (void)releaseInputManagers;
- (void)removeActivityObserver:(id)a3;
- (void)setKeyboardCleanIfNecessary;
- (void)setKeyboardDirtyIfNecessaryWithReason:(id)a3;
- (void)touchInactivityTimer;
- (void)updateActivityState;
@end

@implementation TIKeyboardActivityController

- (void)keyboardAssertionsDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[TIKeyboardAssertionManager sharedAssertionManager];
  v4 = [v3 hasAssertions];

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (v4)
  {
    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v5 = TIOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Invalidating inactivity timer", "-[TIKeyboardActivityController keyboardAssertionsDidChange]"];
        *buf = 138412290;
        v12 = v9;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v6 = [(TIKeyboardActivityController *)self inactivityTimer];
    [v6 invalidate];

    self->_hadRecentActivity = 1;
    [(TIKeyboardActivityController *)self setKeyboardDirtyIfNecessaryWithReason:@"keyboardAssertionsDidChange"];
  }

  else
  {
    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v7 = TIOSLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Setting inactivity timer", "-[TIKeyboardActivityController keyboardAssertionsDidChange]"];
        *buf = 138412290;
        v12 = v10;
        _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(TIKeyboardActivityController *)self touchInactivityTimer];
    [(TIKeyboardActivityController *)self updateActivityState];
    [(TIKeyboardActivityController *)self setKeyboardCleanIfNecessary];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldBecomeDirty
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_isDirty)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_hadRecentActivity || self->_hasBackgroundActivity;
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s result=%d (isDirty=%d, hadRecentActivity=%d, hasBackgroundActivity=%d)", "-[TIKeyboardActivityController shouldBecomeDirty]", v3, self->_isDirty, self->_hadRecentActivity, self->_hasBackgroundActivity];
      *buf = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateActivityState
{
  activityState = self->_activityState;
  v6 = +[TIKeyboardAssertionManager sharedAssertionManager];
  if ([v6 hasAssertions])
  {
    v4 = 1;
  }

  else if (self->_hadRecentActivity)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  self->_activityState = v4;
  if (activityState != v4)
  {
    self->_inactiveMemoryPressureCount = 0;
    v5 = [TIKeyboardActivityContext contextFromState:activityState toState:?];
    [v5 setExcessMemoryInBytes:getExcessMemoryInBytes()];
    [(TIKeyboardActivityController *)self notifyTransitionWithContext:v5];
  }
}

void __58__TIKeyboardActivityController_createMemoryPressureSource__block_invoke(uint64_t a1)
{
  data = dispatch_source_get_data(*(a1 + 32));
  v2 = +[TIKeyboardActivityController sharedController];
  [v2 handleMemoryStatusPressure:data];
}

- (BOOL)shouldBecomeClean
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = self->_isDirty && !self->_hadRecentActivity && !self->_hasBackgroundActivity;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s result=%d (isDirty=%d, hadRecentActivity=%d, hasBackgroundActivity=%d)", "-[TIKeyboardActivityController shouldBecomeClean]", v3, self->_isDirty, self->_hadRecentActivity, self->_hasBackgroundActivity];
      *buf = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)canGoEarlyClean
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[TIKeyboardAssertionManager sharedAssertionManager];
  v4 = [v3 hasAssertions];

  if (self->_isDirty && ((self->_hasBackgroundActivity | v4) & 1) == 0)
  {
    ExcessMemoryInBytes = getExcessMemoryInBytes();
    v7 = ExcessMemoryInBytes == 0;
    v5 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s earlycleanbytes=%d (isDirty=%d, hadRecentActivity=%d, hasBackgroundActivity=%d, bytesover=%lu)", "-[TIKeyboardActivityController canGoEarlyClean]", ExcessMemoryInBytes == 0, self->_isDirty, self->_hadRecentActivity, self->_hasBackgroundActivity, ExcessMemoryInBytes];
      *buf = 138412290;
      v13 = v11;
      _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  else
  {
    v5 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s earlyclean=%d (isDirty=%d, hadRecentActivity=%d, hasBackgroundActivity=%d)", "-[TIKeyboardActivityController canGoEarlyClean]", 0, self->_isDirty, self->_hadRecentActivity, self->_hasBackgroundActivity];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)generateMemgraphsIfNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    ExcessMemoryInBytes = getExcessMemoryInBytes();
    if (ExcessMemoryInBytes)
    {
      v5 = ExcessMemoryInBytes;
      v6 = TIKeyboardActivityOSLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s kbd is still over the inactive limit: %lu, likely going down from jetsam", "-[TIKeyboardActivityController generateMemgraphsIfNeeded]", v5];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_error_impl(&dword_22CA55000, v6, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v7 = MEMORY[0x277D85F48];
      v8 = *MEMORY[0x277D85F48];
      corpse_task_port = 0;
      task_generate_corpse(v8, &corpse_task_port);
      v9 = corpse_task_port;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v10 = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
      v17 = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
      if (!getReportMemoryExceptionFromTaskSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v19 = __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke;
        v20 = &unk_278733760;
        v21 = &v14;
        __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(&buf);
        v10 = v15[3];
      }

      _Block_object_dispose(&v14, 8);
      if (!v10)
      {
        dlerror();
        abort_report_np();
      }

      (v10)(v9, 1, 0, 0, 0);
      mach_port_deallocate(*v7, corpse_task_port);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setKeyboardCleanIfNecessary
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardActivityController *)self shouldBecomeClean])
  {
    goto LABEL_2;
  }

  if ([(TIKeyboardActivityController *)self canGoEarlyClean])
  {
    v9 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Keyboard is going early clean.", "-[TIKeyboardActivityController setKeyboardCleanIfNecessary]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
    }

    if (self->_hadRecentActivity)
    {
      v11 = [(TIKeyboardActivityController *)self inactivityTimer];
      v12 = [v11 isValid];

      if (v12)
      {
        v13 = [(TIKeyboardActivityController *)self inactivityTimer];
        [v13 invalidate];

        v14 = TIKeyboardActivityOSLogFacility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Keyboard is going clean in 10 seconds.", "-[TIKeyboardActivityController setKeyboardCleanIfNecessary]"];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
        }

        v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
        v17 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v16 interval:self target:sel_inactivityTimerFired_ selector:0 userInfo:0 repeats:0.0];
        v18 = [MEMORY[0x277CBEB88] currentRunLoop];
        [v18 addTimer:v17 forMode:*MEMORY[0x277CBE640]];

        [(TIKeyboardActivityController *)self setInactivityTimer:v17];
      }

      else
      {
        self->_hadRecentActivity = 0;
      }

      [(TIKeyboardActivityController *)self updateActivityState];
      goto LABEL_7;
    }

LABEL_2:
    v3 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Keyboard is becoming clean.", "-[TIKeyboardActivityController setKeyboardCleanIfNecessary]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
    }

    self->_isDirty = 0;
    [(TIKeyboardActivityController *)self updateActivityState];
    objc_initWeak(&location, self);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__7580;
    v28 = __Block_byref_object_dispose__7581;
    v29 = [(TIKeyboardActivityController *)self isDirtyTransaction];
    v5 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Setting a block to release the dirty transaction: %p", "-[TIKeyboardActivityController setKeyboardCleanIfNecessary]", *(*(&buf + 1) + 40)];
      *v23 = 138412290;
      v24 = v6;
      _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEFAULT, "%@", v23, 0xCu);
    }

    [(TIKeyboardActivityController *)self setIsDirtyTransaction:0];
    v7 = dispatch_time(0, 15000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__TIKeyboardActivityController_setKeyboardCleanIfNecessary__block_invoke;
    block[3] = &unk_2787308B8;
    objc_copyWeak(&v21, &location);
    block[4] = &buf;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v21);
    _Block_object_dispose(&buf, 8);

    objc_destroyWeak(&location);
LABEL_7:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v19 = *MEMORY[0x277D85DE8];

  [(TIKeyboardActivityController *)self updateActivityState];
}

void __59__TIKeyboardActivityController_setKeyboardCleanIfNecessary__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained generateMemgraphsIfNeeded];
  v3 = TIKeyboardActivityOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [WeakRetained isDirtyTransaction];
    v7 = [v4 stringWithFormat:@"%s Keyboard is releasing the placeholder transaction %p, current: %p", "-[TIKeyboardActivityController setKeyboardCleanIfNecessary]_block_invoke", v5, v6];
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setKeyboardDirtyIfNecessaryWithReason:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TIKeyboardActivityController *)self shouldBecomeDirty])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v5 = TIOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Keyboard is becoming dirty.", "-[TIKeyboardActivityController setKeyboardDirtyIfNecessaryWithReason:]"];
        *buf = 138412290;
        v11 = v9;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s", "com.apple.TextInput.kbd.isDirty", objc_msgSend(v4, "UTF8String")];
    [v6 UTF8String];
    v7 = os_transaction_create();
    [(TIKeyboardActivityController *)self setIsDirtyTransaction:v7];

    self->_isDirty = 1;
    [(TIKeyboardActivityController *)self updateActivityState];
  }

  else
  {
    [(TIKeyboardActivityController *)self updateActivityState];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)inactivityTimerFired:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel)
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Keyboard inactivity timer fired.", "-[TIKeyboardActivityController inactivityTimerFired:]"];
      *buf = 138412290;
      v8 = v6;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  self->_hadRecentActivity = 0;
  [(TIKeyboardActivityController *)self setKeyboardCleanIfNecessary];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)touchInactivityTimer
{
  v3 = [(TIKeyboardActivityController *)self inactivityTimer];
  v4 = [v3 isValid];

  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAA8];
    +[TIKeyboardActivityController keyboardIdleTimeoutInterval];
    v8 = [v5 dateWithTimeIntervalSinceNow:?];
    v6 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v8 interval:self target:sel_inactivityTimerFired_ selector:0 userInfo:0 repeats:0.0];
    v7 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x277CBE640]];

    [(TIKeyboardActivityController *)self setInactivityTimer:v6];
  }
}

- (void)backgroundActivityAssertionsDidChange
{
  v3 = +[TIKeyboardAssertionManager sharedAssertionManager];
  self->_hasBackgroundActivity = [v3 hasBackgroundActivityAssertions];

  if (self->_hasBackgroundActivity)
  {

    [(TIKeyboardActivityController *)self setKeyboardDirtyIfNecessaryWithReason:@"backgroundActivityAssertionsDidChange"];
  }

  else
  {

    [(TIKeyboardActivityController *)self setKeyboardCleanIfNecessary];
  }
}

- (void)releaseInputManagers
{
  ExcessMemoryInBytes = getExcessMemoryInBytes();

  [(TIKeyboardActivityController *)self notifyMemoryPressureLevel:3 excessMemoryInBytes:ExcessMemoryInBytes];
}

- (unint64_t)activityState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__TIKeyboardActivityController_activityState__block_invoke;
  aBlock[3] = &unk_278733648;
  aBlock[4] = self;
  aBlock[5] = &v7;
  v2 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    v5 = v2;
    TIDispatchSync();
  }

  v3 = v8[3];

  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)handleMemoryStatusPressure:(unint64_t)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = +[TIKeyboardActivityController sharedController];
  if ([v5 activityState] != 3)
  {
    v13 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Keyboard is not in hibernating state, ignoring", "-[TIKeyboardActivityController handleMemoryStatusPressure:]"];
      *buf = 138412290;
      v17 = v14;
LABEL_13:
      _os_log_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

LABEL_14:

    goto LABEL_15;
  }

  if ((v3 & 6) == 0)
  {
    goto LABEL_15;
  }

  ++self->_inactiveMemoryPressureCount;
  v6 = TIKeyboardActivityOSLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Received inactive memory pressure warning (count=%ld)", "-[TIKeyboardActivityController handleMemoryStatusPressure:]", self->_inactiveMemoryPressureCount];
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = self->_inactiveMemoryPressureCount - 1;
  if (v8 >= 3)
  {
    v13 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Too many inactive memory pressure warnings -- Ignoring", "-[TIKeyboardActivityController handleMemoryStatusPressure:]"];
      *buf = 138412290;
      v17 = v14;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = qword_22CC8A430[v8];
  ExcessMemoryInBytes = getExcessMemoryInBytes();
  v11 = TIKeyboardActivityOSLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Notifying memory pressure level %lu", "-[TIKeyboardActivityController handleMemoryStatusPressure:]", v9];
    *buf = 138412290;
    v17 = v12;
    _os_log_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [(TIKeyboardActivityController *)self notifyMemoryPressureLevel:v9 excessMemoryInBytes:ExcessMemoryInBytes];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)createMemoryPressureSource
{
  v2 = dispatch_source_create(MEMORY[0x277D85D18], 0, 6uLL, MEMORY[0x277D85CD0]);
  v3 = v2;
  if (v2)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __58__TIKeyboardActivityController_createMemoryPressureSource__block_invoke;
    handler[3] = &unk_278733308;
    v4 = v2;
    v7 = v4;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(v4);
  }

  return v3;
}

- (void)notifyMemoryPressureLevel:(unint64_t)a3 excessMemoryInBytes:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = TIKeyboardActivityOSLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Notifying observers of memory pressure level %u (above the limit by %u bytes)", "-[TIKeyboardActivityController notifyMemoryPressureLevel:excessMemoryInBytes:]", a3, a4];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7580;
  v26 = __Block_byref_object_dispose__7581;
  v27 = os_transaction_create();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(TIKeyboardActivityController *)self observers];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 handleMemoryPressureLevel:a3 excessMemoryInBytes:a4];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__TIKeyboardActivityController_notifyMemoryPressureLevel_excessMemoryInBytes___block_invoke;
  block[3] = &unk_278733760;
  block[4] = &buf;
  dispatch_after(v15, MEMORY[0x277D85CD0], block);
  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __78__TIKeyboardActivityController_notifyMemoryPressureLevel_excessMemoryInBytes___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)notifyTransitionWithContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TIKeyboardActivityOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Notifying observers of activity state transition from %u to %u", "-[TIKeyboardActivityController notifyTransitionWithContext:]", objc_msgSend(v4, "fromState"), objc_msgSend(v4, "toState")];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(TIKeyboardActivityController *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) keyboardActivityDidTransition:v4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeActivityObserver:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"%s Removing observer <%@: %p>", "-[TIKeyboardActivityController removeActivityObserver:]", v4, v11];
      *buf = 138412290;
      v16 = v12;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__TIKeyboardActivityController_removeActivityObserver___block_invoke;
  aBlock[3] = &unk_278733738;
  aBlock[4] = self;
  v6 = v4;
  v14 = v6;
  v7 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    TIDispatchSync();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __55__TIKeyboardActivityController_removeActivityObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addActivityObserver:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"%s Adding observer <%@: %p>", "-[TIKeyboardActivityController addActivityObserver:]", v4, v11];
      *buf = 138412290;
      v16 = v12;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__TIKeyboardActivityController_addActivityObserver___block_invoke;
  aBlock[3] = &unk_278733738;
  aBlock[4] = self;
  v6 = v4;
  v14 = v6;
  v7 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    TIDispatchSync();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__TIKeyboardActivityController_addActivityObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)dealloc
{
  [(NSTimer *)self->_inactivityTimer invalidate];
  v3 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = TIKeyboardActivityController;
  [(TIKeyboardActivityController *)&v4 dealloc];
}

- (TIKeyboardActivityController)init
{
  v10.receiver = self;
  v10.super_class = TIKeyboardActivityController;
  v2 = [(TIKeyboardActivityController *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [(TIKeyboardActivityController *)v2 createMemoryPressureSource];
    memoryPressureSource = v2->_memoryPressureSource;
    v2->_memoryPressureSource = v5;

    v2->_activityState = 0;
    v7 = +[TIKeyboardAssertionManager sharedAssertionManager];
    [v7 setDelegate:v2];
    isDirtyTransaction = v2->_isDirtyTransaction;
    v2->_isDirtyTransaction = 0;

    [(TIKeyboardActivityController *)v2 updateActivityState];
  }

  return v2;
}

+ (double)defaultKeyboardIdleTimeoutInterval
{
  if (defaultKeyboardIdleTimeoutInterval_onceToken != -1)
  {
    dispatch_once(&defaultKeyboardIdleTimeoutInterval_onceToken, &__block_literal_global_61);
  }

  return *&defaultKeyboardIdleTimeoutInterval_defaultIdleTimeout;
}

void __66__TIKeyboardActivityController_defaultKeyboardIdleTimeoutInterval__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  defaultKeyboardIdleTimeoutInterval_defaultIdleTimeout = 0x4064A00000000000;
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"idleTimeout", @"com.apple.keyboard", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v1 = AppIntegerValue;
      if ((AppIntegerValue & 0x8000000000000000) == 0)
      {
        *&defaultKeyboardIdleTimeoutInterval_defaultIdleTimeout = AppIntegerValue;
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v2 = TIOSLogFacility();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
          {
            v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Setting keyboard idle timeout to %ld seconds", "+[TIKeyboardActivityController defaultKeyboardIdleTimeoutInterval]_block_invoke", v1];
            *buf = 138412290;
            v7 = v4;
            _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (double)keyboardIdleTimeoutInterval
{
  if (__hasTestingIdleTimeout)
  {
    return *&__testingIdleTimeout;
  }

  +[TIKeyboardActivityController defaultKeyboardIdleTimeoutInterval];
  return result;
}

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_7679 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_7679, &__block_literal_global_7680);
  }

  v3 = singletonInstance_singletonInstance_7681;

  return v3;
}

uint64_t __49__TIKeyboardActivityController_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TIKeyboardActivityController);
  v1 = singletonInstance_singletonInstance_7681;
  singletonInstance_singletonInstance_7681 = v0;

  return atexit_b(&__block_literal_global_24);
}

void __49__TIKeyboardActivityController_singletonInstance__block_invoke_2()
{
  v0 = +[TIKeyboardActivityController sharedController];
  [v0 atexitHandler];
}

+ (id)sharedController
{
  if (__testingInstance_7683)
  {
    v2 = __testingInstance_7683;
  }

  else
  {
    v2 = +[TIKeyboardActivityController singletonInstance];
  }

  return v2;
}

+ (void)setSharedController:(id)a3
{
  v4 = a3;
  if (__testingInstance_7683 != v4)
  {
    v5 = v4;
    objc_storeStrong(&__testingInstance_7683, a3);
    v4 = v5;
  }
}

@end