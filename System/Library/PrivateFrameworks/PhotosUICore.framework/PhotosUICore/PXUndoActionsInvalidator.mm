@interface PXUndoActionsInvalidator
- (PXUndoActionsInvalidator)initWithUndoManager:(id)a3 privacyController:(id)a4;
- (void)beginObservingSystemEventsForAutomaticInvalidation;
- (void)clearUndoClearingTimer;
- (void)clearUndoStack;
- (void)dealloc;
- (void)invalidateUndoTimerIfNeeded;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)startUndoClearingTimer;
- (void)stopObservingSystemEventsForAutomaticInvalidation;
- (void)undoClearingTimerFired;
@end

@implementation PXUndoActionsInvalidator

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && ApplicationStateObservationContext_211642 == a5)
  {
    px_dispatch_on_main_queue();
  }
}

void __57__PXUndoActionsInvalidator_observable_didChange_context___block_invoke(uint64_t a1)
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  v2 = +[PXApplicationState sharedState];
  v3 = [v2 visibilityState];

  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = PXApplicationVisibilityStateDescription(v3);
    *buf = 138412290;
    *v14 = v5;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "[UndoActionsInvalidator] Application visibility state is: %@", buf, 0xCu);
  }

  v6 = (v3 == 1) ^ [*(a1 + 32) applicationIsActive];
  v7 = PLUIGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) applicationIsActive];
      *buf = 67109376;
      v14[0] = v9;
      LOWORD(v14[1]) = 1024;
      *(&v14[1] + 2) = v3 == 1;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "[UndoActionsInvalidator] Application changed from being active/visible: %{BOOL}d to %{BOOL}d", buf, 0xEu);
    }

    [*(a1 + 32) setApplicationIsActive:v3 == 1];
    v10 = *(a1 + 32);
    if (v3 == 1)
    {
      if ([v10 isObservingApplicationState])
      {
        v11 = dispatch_time(0, 500000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __57__PXUndoActionsInvalidator_observable_didChange_context___block_invoke_193;
        block[3] = &unk_1E774C648;
        block[4] = *(a1 + 32);
        dispatch_after(v11, MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {
      [v10 startUndoClearingTimer];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v14[0] = v3 == 1;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "[UndoActionsInvalidator] Skipping visibilityState update because whether the application is active/visible (%{BOOL}d) has not changed.", buf, 8u);
    }
  }
}

void __57__PXUndoActionsInvalidator_observable_didChange_context___block_invoke_193(uint64_t a1)
{
  v2 = +[PXApplicationState sharedState];
  v3 = [v2 visibilityState];

  if (v3 == 1)
  {
    v4 = *(a1 + 32);

    [v4 invalidateUndoTimerIfNeeded];
  }
}

- (void)clearUndoStack
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[UndoActionsInvalidator] Clearing undo stack", v5, 2u);
  }

  v4 = [(PXUndoActionsInvalidator *)self undoManager];
  [v4 removeAllActions];
}

- (void)invalidateUndoTimerIfNeeded
{
  if (![(PXUndoActionsInvalidator *)self timerDidClearUndoStack])
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[UndoActionsInvalidator] Timer not fired yet, clearing timer.", v4, 2u);
    }

    [(PXUndoActionsInvalidator *)self clearUndoClearingTimer];
  }
}

- (void)undoClearingTimerFired
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[UndoActionsInvalidator] Undo clearing timer did fire.", v9, 2u);
  }

  v4 = [(PXUndoActionsInvalidator *)self privacyController];

  if (v4)
  {
    v5 = [(PXUndoActionsInvalidator *)self privacyController];
    v6 = [v5 isContentPrivacyEnabled];
  }

  else
  {
    v6 = 1;
  }

  v7 = +[PXApplicationSettings sharedInstance];
  v8 = [v7 shouldClearUndoStackAutomatically];

  if (v6 && v8)
  {
    [(PXUndoActionsInvalidator *)self setTimerDidClearUndoStack:1];
    [(PXUndoActionsInvalidator *)self clearUndoStack];
  }

  [(PXUndoActionsInvalidator *)self clearUndoClearingTimer];
}

- (void)startUndoClearingTimer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[UndoActionsInvalidator] Starting undo timer", &v12, 2u);
  }

  v4 = [(PXUndoActionsInvalidator *)self undoClearingTimer];
  v5 = [v4 isValid];

  if (v5)
  {
    [(PXUndoActionsInvalidator *)self clearUndoClearingTimer];
  }

  [(PXUndoActionsInvalidator *)self setTimerDidClearUndoStack:0];
  v6 = +[PXApplicationSettings sharedInstance];
  [v6 backgroundThresholdDurationForUndoActionsInvalidation];
  v8 = v7;

  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = v8;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "[UndoActionsInvalidator] Max backgrounding threshold set for %.0f seconds", &v12, 0xCu);
  }

  v10 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_undoClearingTimerFired selector:0 userInfo:0 repeats:v8];
  [(PXUndoActionsInvalidator *)self setUndoClearingTimer:v10];

  v11 = [(PXUndoActionsInvalidator *)self undoClearingTimer];
  [v11 setTolerance:0.0];
}

- (void)clearUndoClearingTimer
{
  v3 = [(PXUndoActionsInvalidator *)self undoClearingTimer];
  [v3 invalidate];

  [(PXUndoActionsInvalidator *)self setUndoClearingTimer:0];
}

- (void)stopObservingSystemEventsForAutomaticInvalidation
{
  if ([(PXUndoActionsInvalidator *)self isObservingApplicationState])
  {
    v3 = +[PXApplicationState sharedState];
    [v3 unregisterChangeObserver:self context:ApplicationStateObservationContext_211642];

    [(PXUndoActionsInvalidator *)self setObservingApplicationState:0];
  }
}

- (void)beginObservingSystemEventsForAutomaticInvalidation
{
  if (![(PXUndoActionsInvalidator *)self isObservingApplicationState])
  {
    v3 = +[PXApplicationState sharedState];
    [v3 registerChangeObserver:self context:ApplicationStateObservationContext_211642];

    v4 = +[PXApplicationState sharedState];
    -[PXUndoActionsInvalidator setApplicationIsActive:](self, "setApplicationIsActive:", [v4 visibilityState] == 1);

    [(PXUndoActionsInvalidator *)self setObservingApplicationState:1];
  }
}

- (void)dealloc
{
  [(PXUndoActionsInvalidator *)self stopObservingSystemEventsForAutomaticInvalidation];
  v3.receiver = self;
  v3.super_class = PXUndoActionsInvalidator;
  [(PXUndoActionsInvalidator *)&v3 dealloc];
}

- (PXUndoActionsInvalidator)initWithUndoManager:(id)a3 privacyController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PXUndoActionsInvalidator;
  v9 = [(PXUndoActionsInvalidator *)&v13 init];
  if (v9)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "[UndoActionsInvalidator] Initializing", v12, 2u);
    }

    objc_storeStrong(&v9->_undoManager, a3);
    objc_storeStrong(&v9->_privacyController, a4);
  }

  return v9;
}

@end