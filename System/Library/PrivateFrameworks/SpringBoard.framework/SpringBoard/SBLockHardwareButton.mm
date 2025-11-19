@interface SBLockHardwareButton
- (BOOL)_shouldRunActions;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (SBHomeHardwareButton)homeHardwareButton;
- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 proximitySensorManager:(id)a5 homeHardwareButton:(id)a6 volumeHardwareButton:(id)a7 buttonActions:(id)a8 homeButtonType:(int64_t)a9 createGestures:(BOOL)a10;
- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 proximitySensorManager:(id)a5 homeHardwareButton:(id)a6 volumeHardwareButton:(id)a7 homeButtonType:(int64_t)a8;
- (SBLongPressGestureRecognizer)shutdownGestureRecognizer;
- (SBVolumeHardwareButton)volumeHardwareButton;
- (UIGestureRecognizer)screenshotGestureRecognizer;
- (id)preemptablePressGestureRecognizers;
- (void)_cancelGestureRecognizer:(id)a3;
- (void)_cancelLongPressRecognizer:(id)a3;
- (void)_createGestureRecognizers;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_reconfigureButtonGestureRecognizers;
- (void)_updatePressCountForDownEvent;
- (void)buttonDown:(id)a3;
- (void)cancelHardwareButtonPress;
- (void)cancelLongPress;
- (void)doublePress:(id)a3;
- (void)forceResetSequenceDidBegin;
- (void)longPress:(id)a3;
- (void)provider:(id)a3 didUpdateButtonGestureParameters:(id)a4;
- (void)quadruplePress:(id)a3;
- (void)screenshotRecognizerDidRecognize:(id)a3;
- (void)singlePress:(id)a3;
- (void)terminalLockLongPress:(id)a3;
- (void)triplePress:(id)a3;
@end

@implementation SBLockHardwareButton

- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 proximitySensorManager:(id)a5 homeHardwareButton:(id)a6 volumeHardwareButton:(id)a7 homeButtonType:(int64_t)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[SBLockHardwareButtonActions alloc] initWithHomeButtonType:a8 proximitySensorManager:v16];
  LOBYTE(v22) = 1;
  v20 = [(SBLockHardwareButton *)self initWithScreenshotGestureRecognizer:v18 shutdownGestureRecognizer:v17 proximitySensorManager:v16 homeHardwareButton:v15 volumeHardwareButton:v14 buttonActions:v19 homeButtonType:a8 createGestures:v22];

  return v20;
}

- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 proximitySensorManager:(id)a5 homeHardwareButton:(id)a6 volumeHardwareButton:(id)a7 buttonActions:(id)a8 homeButtonType:(int64_t)a9 createGestures:(BOOL)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = SBLockHardwareButton;
  v20 = [(SBLockHardwareButton *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_lastPressDownTime = -1.79769313e308;
    objc_storeWeak(&v20->_screenshotGestureRecognizer, v15);
    objc_storeWeak(&v21->_shutdownGestureRecognizer, v16);
    objc_storeWeak(&v21->_homeHardwareButton, v17);
    objc_storeWeak(&v21->_volumeHardwareButton, v18);
    v21->_homeButtonType = a9;
    objc_storeStrong(&v21->_buttonActions, a8);
    [(SBHardwareButtonGestureParametersProviderBase *)v21->_buttonActions addHardwareButtonGestureParametersObserver:v21];
    v22 = [(SBLockHardwareButtonActions *)v21->_buttonActions hardwareButtonGestureParameters];
    buttonGestureParameters = v21->_buttonGestureParameters;
    v21->_buttonGestureParameters = v22;

    if (a10)
    {
      [(SBLockHardwareButton *)v21 _createGestureRecognizers];
    }
  }

  return v21;
}

- (void)_createGestureRecognizers
{
  v3 = [[SBPressGestureRecognizer alloc] initWithTarget:self action:sel_buttonDown_];
  buttonDownGestureRecognizer = self->_buttonDownGestureRecognizer;
  self->_buttonDownGestureRecognizer = v3;

  [(SBPressGestureRecognizer *)self->_buttonDownGestureRecognizer setName:@"LockButton-buttonDown"];
  [(SBPressGestureRecognizer *)self->_buttonDownGestureRecognizer setAllowedPressTypes:&unk_28336EB08];
  [(SBPressGestureRecognizer *)self->_buttonDownGestureRecognizer setDelegate:self];
  v5 = +[SBSystemGestureManager mainDisplayManager];
  [v5 addGestureRecognizer:self->_buttonDownGestureRecognizer withType:82];

  v6 = [[SBClickGestureRecognizer alloc] initWithTarget:self action:sel_singlePress_];
  singlePressGestureRecognizer = self->_singlePressGestureRecognizer;
  self->_singlePressGestureRecognizer = v6;

  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer setName:@"LockButton-singlePress"];
  [(SBPressGestureRecognizer *)self->_singlePressGestureRecognizer setAllowedPressTypes:&unk_28336EB20];
  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer addShortcutWithPressTypes:&unk_28336EB38];
  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer addShortcutWithPressTypes:&unk_28336EB50];
  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer setDelegate:self];
  v8 = +[SBSystemGestureManager mainDisplayManager];
  [v8 addGestureRecognizer:self->_singlePressGestureRecognizer withType:83];

  WeakRetained = objc_loadWeakRetained(&self->_screenshotGestureRecognizer);
  [WeakRetained addTarget:self action:sel_screenshotRecognizerDidRecognize_];
  v9 = [[SBLongPressGestureRecognizer alloc] initWithTarget:self action:sel_terminalLockLongPress_];
  terminalLockLongPressGestureRecognizer = self->_terminalLockLongPressGestureRecognizer;
  self->_terminalLockLongPressGestureRecognizer = v9;

  [(SBLongPressGestureRecognizer *)self->_terminalLockLongPressGestureRecognizer setName:@"LockButton-terminalLockLongPress"];
  [(SBPressGestureRecognizer *)self->_terminalLockLongPressGestureRecognizer setAllowedPressTypes:&unk_28336EB68];
  [(SBLongPressGestureRecognizer *)self->_terminalLockLongPressGestureRecognizer setDelegate:self];
  [(SBLongPressGestureRecognizer *)self->_terminalLockLongPressGestureRecognizer setMinimumPressDuration:0.75];
  [(SBClickGestureRecognizer *)self->_terminalLockLongPressGestureRecognizer setMaximumClickFormationDuration:0.75];
  v11 = +[SBSystemGestureManager mainDisplayManager];
  [v11 addGestureRecognizer:self->_terminalLockLongPressGestureRecognizer withType:88];

  v12 = [[SBLongPressGestureRecognizer alloc] initWithTarget:self action:sel_longPress_];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = v12;

  [(SBLongPressGestureRecognizer *)self->_longPressGestureRecognizer setName:@"LockButton-longPress"];
  [(SBPressGestureRecognizer *)self->_longPressGestureRecognizer setAllowedPressTypes:&unk_28336EB80];
  [(SBLongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:self];
  v14 = self->_longPressGestureRecognizer;
  [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters longPressTimeInterval];
  [(SBLongPressGestureRecognizer *)v14 setMinimumPressDuration:?];
  v15 = self->_longPressGestureRecognizer;
  [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters longPressTimeInterval];
  [(SBClickGestureRecognizer *)v15 setMaximumClickFormationDuration:?];
  v16 = +[SBSystemGestureManager mainDisplayManager];
  [v16 addGestureRecognizer:self->_longPressGestureRecognizer withType:84];

  v17 = objc_loadWeakRetained(&self->_shutdownGestureRecognizer);
  if (v17)
  {
    [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters longPressTimeInterval];
    [v17 setMaximumClickFormationDuration:?];
    [(SBLongPressGestureRecognizer *)self->_longPressGestureRecognizer requireGestureRecognizerToFail:v17];
  }

  v18 = [[SBClickGestureRecognizer alloc] initWithTarget:self action:sel_doublePress_];
  doublePressGestureRecognizer = self->_doublePressGestureRecognizer;
  self->_doublePressGestureRecognizer = v18;

  [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer setName:@"LockButton-doublePress"];
  [(SBPressGestureRecognizer *)self->_doublePressGestureRecognizer setAllowedPressTypes:&unk_28336EB98];
  [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer setNumberOfClicksRequired:2];
  [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer setDelegate:self];
  v20 = +[SBSystemGestureManager mainDisplayManager];
  [v20 addGestureRecognizer:self->_doublePressGestureRecognizer withType:85];

  if (self->_homeButtonType == 2)
  {
    v21 = [[SBClickGestureRecognizer alloc] initWithTarget:self action:sel_triplePress_];
    triplePressGestureRecognizer = self->_triplePressGestureRecognizer;
    self->_triplePressGestureRecognizer = v21;

    [(SBClickGestureRecognizer *)self->_triplePressGestureRecognizer setName:@"LockButton-triplePress"];
    [(SBPressGestureRecognizer *)self->_triplePressGestureRecognizer setAllowedPressTypes:&unk_28336EBB0];
    [(SBClickGestureRecognizer *)self->_triplePressGestureRecognizer setNumberOfClicksRequired:3];
    [(SBClickGestureRecognizer *)self->_triplePressGestureRecognizer setDelegate:self];
    v23 = +[SBSystemGestureManager mainDisplayManager];
    [v23 addGestureRecognizer:self->_triplePressGestureRecognizer withType:86];

    v24 = [[SBClickGestureRecognizer alloc] initWithTarget:self action:sel_quadruplePress_];
    quadruplePressGestureRecognizer = self->_quadruplePressGestureRecognizer;
    self->_quadruplePressGestureRecognizer = v24;

    [(SBClickGestureRecognizer *)self->_quadruplePressGestureRecognizer setName:@"LockButton-quadruplePress"];
    [(SBPressGestureRecognizer *)self->_quadruplePressGestureRecognizer setAllowedPressTypes:&unk_28336EBC8];
    [(SBClickGestureRecognizer *)self->_quadruplePressGestureRecognizer setNumberOfClicksRequired:4];
    [(SBClickGestureRecognizer *)self->_quadruplePressGestureRecognizer setDelegate:self];
    v26 = +[SBSystemGestureManager mainDisplayManager];
    [v26 addGestureRecognizer:self->_quadruplePressGestureRecognizer withType:87];
  }

  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer requireGestureRecognizerToFail:self->_longPressGestureRecognizer];
  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer requireGestureRecognizerToFail:self->_terminalLockLongPressGestureRecognizer];
  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer requireGestureRecognizerToFail:WeakRetained];
  if (self->_homeButtonType == 2)
  {
    [(SBLongPressGestureRecognizer *)self->_longPressGestureRecognizer requireGestureRecognizerToFail:WeakRetained];
  }

  [(SBLockHardwareButton *)self _reconfigureButtonGestureRecognizers];
}

- (void)screenshotRecognizerDidRecognize:(id)a3
{
  if ([a3 state] == 3)
  {
    [(SBLockHardwareButton *)self cancelLongPress];
    [(SBLockHardwareButtonActions *)self->_buttonActions performButtonUpPreActions];
    buttonActions = self->_buttonActions;

    [(SBLockHardwareButtonActions *)buttonActions performFinalButtonUpActions];
  }
}

- (void)_reconfigureButtonGestureRecognizers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = SBLogButtonsLock();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buttonGestureParameters = self->_buttonGestureParameters;
    v13 = 138543362;
    v14 = buttonGestureParameters;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "reconfigured lock button: %{public}@", &v13, 0xCu);
  }

  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters longPressTimeInterval];
  [(SBLongPressGestureRecognizer *)longPressGestureRecognizer setMinimumPressDuration:?];
  WeakRetained = objc_loadWeakRetained(&self->_shutdownGestureRecognizer);
  [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters longPressTimeInterval];
  [WeakRetained setMaximumClickFormationDuration:?];

  v7 = [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters maximumPressCount];
  if (self->_configuredMaximumPressCount != v7)
  {
    v8 = v7;
    self->_configuredMaximumPressCount = v7;
    v9 = v7 > 2;
    [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer setEnabled:v7 > 1];
    [(SBClickGestureRecognizer *)self->_triplePressGestureRecognizer setEnabled:v9];
    [(SBClickGestureRecognizer *)self->_quadruplePressGestureRecognizer setEnabled:v9];
    if (v8 < 3)
    {
      [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer removeFailureRequirement:self->_triplePressGestureRecognizer];
    }

    else
    {
      v10 = SBLogButtonsLock();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "triple-click enabled", &v13, 2u);
      }

      [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer requireGestureRecognizerToFail:self->_triplePressGestureRecognizer];
    }
  }

  if (self->_homeButtonType == 2)
  {
    _AXSSideButtonClickSpeed();
    v12 = v11;
    [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer setMaximumBetweenClicksDelay:v11];
    [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer setMaximumBetweenClicksDelay:v12];
    [(SBClickGestureRecognizer *)self->_triplePressGestureRecognizer setMaximumBetweenClicksDelay:v12];
    [(SBClickGestureRecognizer *)self->_quadruplePressGestureRecognizer setMaximumBetweenClicksDelay:v12];
  }
}

- (void)forceResetSequenceDidBegin
{
  v3 = SBLogButtonsLock();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Failing long press due to pending force reset sequence", v4, 2u);
  }

  [(SBLockHardwareButton *)self cancelLongPress];
  [(SBLockHardwareButtonActions *)self->_buttonActions performForceResetSequenceBeganActions];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [SBApp restartManager];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 startupTransition];

    if (!v7)
    {
      if ([v6 isPendingExit])
      {
        v8 = SBLogButtonsLock();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        v9 = [(UIGestureRecognizer *)v4 sb_briefDescription];
        v10 = [v6 pendingRestartTransitionRequest];
        *buf = 138543618;
        v32 = v9;
        v33 = 2114;
        v34 = v10;
        v11 = "Preventing lock recognizer (%{public}@) because we are pending a restart: %{public}@";
        goto LABEL_5;
      }

      if (self->_buttonDownGestureRecognizer != v4)
      {
        if (![(SBLockHardwareButton *)self _shouldRunActions])
        {
          v8 = SBLogButtonsLock();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_7;
          }

          v9 = [(UIGestureRecognizer *)v4 sb_briefDescription];
          *buf = 138543362;
          v32 = v9;
          v17 = "Preventing lock recognizer (%{public}@) because hardware button coordinator says nope";
          v18 = v8;
          goto LABEL_40;
        }

        if (self->_singlePressGestureRecognizer == v4)
        {
          buttonActions = self->_buttonActions;
          v30 = 0;
          v15 = [(SBLockHardwareButtonActions *)buttonActions disallowsSinglePressForReason:&v30];
          v16 = v30;
          v8 = v16;
          if (v15)
          {
            v9 = SBLogButtonsLock();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_6;
            }

            *buf = 138543362;
            v32 = v8;
            v17 = "Single press recognizer disallowed for reason: %{public}@";
            goto LABEL_39;
          }
        }

        if (self->_doublePressGestureRecognizer == v4)
        {
          v19 = self->_buttonActions;
          v29 = 0;
          v20 = [(SBLockHardwareButtonActions *)v19 disallowsDoublePressForReason:&v29];
          v21 = v29;
          v8 = v21;
          if (v20)
          {
            v9 = SBLogButtonsLock();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_6;
            }

            *buf = 138543362;
            v32 = v8;
            v17 = "Double press recognizer disallowed for reason: %{public}@";
            goto LABEL_39;
          }
        }

        if (self->_triplePressGestureRecognizer == v4 || self->_quadruplePressGestureRecognizer == v4)
        {
          v22 = self->_buttonActions;
          v28 = 0;
          v23 = [(SBLockHardwareButtonActions *)v22 disallowsTriplePressForReason:&v28];
          v24 = v28;
          v8 = v24;
          if (v23)
          {
            v9 = SBLogButtonsLock();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_6;
            }

            *buf = 138543362;
            v32 = v8;
            v17 = ">= Triple press recognizer disallowed for reason: %{public}@";
            goto LABEL_39;
          }
        }

        if (self->_longPressGestureRecognizer == v4 || self->_terminalLockLongPressGestureRecognizer == v4)
        {
          v25 = self->_buttonActions;
          v27 = 0;
          v26 = [(SBLockHardwareButtonActions *)v25 disallowsLongPressForReason:&v27];
          v8 = v27;
          if (!v26)
          {
            v12 = 1;
            goto LABEL_8;
          }

          v9 = SBLogButtonsLock();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_6;
          }

          *buf = 138543362;
          v32 = v8;
          v17 = "Long press recognizer disallowed for reason: %{public}@";
LABEL_39:
          v18 = v9;
LABEL_40:
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
          goto LABEL_6;
        }
      }

      v12 = 1;
      goto LABEL_9;
    }
  }

  v8 = SBLogButtonsLock();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(UIGestureRecognizer *)v4 sb_briefDescription];
    v10 = [v6 startupTransition];
    *buf = 138543618;
    v32 = v9;
    v33 = 2114;
    v34 = v10;
    v11 = "Preventing lock recognizer (%{public}@) because we're in a startup transition: %{public}@";
LABEL_5:
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);

LABEL_6:
  }

LABEL_7:
  v12 = 0;
LABEL_8:

LABEL_9:
  return v12;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_singlePressGestureRecognizer == v6 && self->_doublePressGestureRecognizer == v7)
  {
    buttonActions = self->_buttonActions;
    v15 = 0;
    v12 = [(SBLockHardwareButtonActions *)buttonActions disallowsDoublePressForReason:&v15];
    v9 = !v12;
    if (!v12)
    {
      v13 = SBLogButtonsLock();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Requiring double-press failure for single-press", &v14, 2u);
      }
    }
  }

  else
  {
    v9 = self->_triplePressGestureRecognizer == v6 && self->_quadruplePressGestureRecognizer == v7 && [MEMORY[0x277D495A8] SOSTriggerClickCount] > 3;
  }

  return v9;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  if (self->_singlePressGestureRecognizer == a3)
  {
    [(SBLockHardwareButtonActions *)self->_buttonActions performSinglePressDidFailActions];
  }
}

- (id)preemptablePressGestureRecognizers
{
  v5[2] = *MEMORY[0x277D85DE8];
  doublePressGestureRecognizer = self->_doublePressGestureRecognizer;
  v5[0] = self->_singlePressGestureRecognizer;
  v5[1] = doublePressGestureRecognizer;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)_updatePressCountForDownEvent
{
  BSContinuousMachTimeNow();
  v4 = v3 - self->_lastPressDownTime;
  [(SBClickGestureRecognizer *)self->_singlePressGestureRecognizer maximumBetweenClicksDelay];
  if (v4 <= v5)
  {
    v6 = self->_currentPressCount + 1;
  }

  else
  {
    self->_currentPressCount = 0;
    v6 = 1;
  }

  self->_currentPressCount = v6;
  if (v6 > self->_configuredMaximumPressCount)
  {
    v6 = 1;
  }

  self->_currentPressCount = v6;
  BSContinuousMachTimeNow();
  self->_lastPressDownTime = v7;
}

- (BOOL)_shouldRunActions
{
  hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
  v3 = [(SBLockHardwareButton *)self hardwareButtonIdentifier];
  LOBYTE(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:v3];

  return hardwareButtonCoordinator;
}

- (void)buttonDown:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    v18 = [v4 state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Lock button down: state=%d", &v17, 8u);
  }

  v6 = [(SBLockHardwareButton *)self _shouldRunActions];
  v7 = [v4 state];
  if ((v7 - 3) >= 3)
  {
    if (v7 == 1)
    {
      [(SBLockHardwareButton *)self _updatePressCountForDownEvent];
      v9 = SBLogButtonsLock();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        currentPressCount = self->_currentPressCount;
        v17 = 67109120;
        v18 = currentPressCount;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "press count:%d", &v17, 8u);
      }

      if (!self->_buttonActiveAssertion)
      {
        hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
        v12 = [(SBLockHardwareButton *)self hardwareButtonIdentifier];
        v13 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:v12 dropletHintIdentifier:2];
        buttonActiveAssertion = self->_buttonActiveAssertion;
        self->_buttonActiveAssertion = v13;
      }

      if (v6)
      {
        v15 = self->_currentPressCount;
        if (v15 == 1)
        {
          [(SBLockHardwareButtonActions *)self->_buttonActions performInitialButtonDownActions];
          v15 = self->_currentPressCount;
        }

        if (v15 == 2)
        {
          [(SBLockHardwareButtonActions *)self->_buttonActions performSecondButtonDownActions];
        }

        WeakRetained = objc_loadWeakRetained(&self->_homeHardwareButton);
        [WeakRetained cancelLongPress];
      }
    }
  }

  else
  {
    [(BSInvalidatable *)self->_buttonActiveAssertion invalidate];
    v8 = self->_buttonActiveAssertion;
    self->_buttonActiveAssertion = 0;

    if (v6)
    {
      if (self->_currentPressCount == 1)
      {
        [(SBLockHardwareButtonActions *)self->_buttonActions performInitialButtonUpActions];
      }

      [(SBLockHardwareButtonActions *)self->_buttonActions performButtonUpPreActions];
    }
  }
}

- (void)singlePress:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [v4 state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Lock button single press: state=%d", v8, 8u);
  }

  if ([v4 state] == 3 && -[SBLockHardwareButton _shouldRunActions](self, "_shouldRunActions"))
  {
    v6 = SBLogButtonsLock();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Lock button single press recognized.", v8, 2u);
    }

    if ([(SBLockHardwareButtonActions *)self->_buttonActions performButtonUpPreActions])
    {
      [(SBLockHardwareButtonActions *)self->_buttonActions performSinglePressAction];
    }

    else
    {
      v7 = SBLogButtonsLock();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Lock button single tap action handled with result: single tap pre-actions handled it.", v8, 2u);
      }
    }
  }
}

- (void)terminalLockLongPress:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 state];
    [v4 minimumPressDuration];
    v9[0] = 67109376;
    v9[1] = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "TerminalLock button long press: state=%d, duration: %f", v9, 0x12u);
  }

  if ([v4 state] == 1)
  {
    v8 = SBLogButtonsLock();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "TerminalLock button long press recognized.", v9, 2u);
    }

    [(SBLockHardwareButtonActions *)self->_buttonActions performTerminalLockLongPressActions];
  }

  if ([v4 state] == 3)
  {
    [(SBLockHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
  }
}

- (void)longPress:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 state];
    [v4 minimumPressDuration];
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Lock button long press: state=%d, duration: %f", v10, 0x12u);
  }

  if ([(SBLockHardwareButton *)self _shouldRunActions])
  {
    if ([v4 state] == 1)
    {
      v8 = SBLogButtonsLock();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Lock button long press recognized.", v10, 2u);
      }

      [(SBLockHardwareButtonActions *)self->_buttonActions performLongPressActions];
      WeakRetained = objc_loadWeakRetained(&self->_homeHardwareButton);
      [WeakRetained cancelLongPress];
    }

    if ([v4 state] == 3)
    {
      [(SBLockHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
    }
  }
}

- (void)doublePress:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [v4 state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "double press: state:%d", v7, 8u);
  }

  if (-[SBLockHardwareButton _shouldRunActions](self, "_shouldRunActions") && [v4 state] == 3)
  {
    v6 = SBLogButtonsLock();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "double press recognized", v7, 2u);
    }

    [(SBLockHardwareButtonActions *)self->_buttonActions performDoublePressActions];
  }
}

- (void)triplePress:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [v4 state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "triple press: state:%d", v7, 8u);
  }

  if (-[SBLockHardwareButton _shouldRunActions](self, "_shouldRunActions") && [v4 state] == 3)
  {
    v6 = SBLogButtonsLock();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "triple press recognized", v7, 2u);
    }

    [(SBLockHardwareButtonActions *)self->_buttonActions performTriplePressActions];
  }
}

- (void)quadruplePress:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = SBLogButtonsLock();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [v3 state];
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "quadruple press: state:%d", v5, 8u);
  }
}

- (void)_cancelLongPressRecognizer:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 state] <= 2)
  {
    v4 = SBLogButtonsLock();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 name];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ canceled", &v6, 0xCu);
    }

    [v3 setEnabled:0];
    [v3 setEnabled:1];
  }
}

- (void)cancelLongPress
{
  [(SBLockHardwareButton *)self _cancelLongPressRecognizer:self->_longPressGestureRecognizer];
  [(SBLockHardwareButton *)self _cancelLongPressRecognizer:self->_terminalLockLongPressGestureRecognizer];
  buttonActions = self->_buttonActions;

  [(SBLockHardwareButtonActions *)buttonActions performLongPressCancelledActions];
}

- (void)provider:(id)a3 didUpdateButtonGestureParameters:(id)a4
{
  v7 = a4;
  if (self->_buttonActions == a3)
  {
    v8 = v7;
    objc_storeStrong(&self->_buttonGestureParameters, a4);
    [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:self->_buttonGestureParameters];
    [(SBLockHardwareButton *)self _reconfigureButtonGestureRecognizers];
    v7 = v8;
  }
}

- (void)_cancelGestureRecognizer:(id)a3
{
  v3 = a3;
  if ([v3 isEnabled])
  {
    [v3 setEnabled:0];
    [v3 setEnabled:1];
  }
}

- (void)cancelHardwareButtonPress
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshotGestureRecognizer);
  [(SBLockHardwareButton *)self _cancelGestureRecognizer:WeakRetained];

  [(SBLockHardwareButton *)self _cancelGestureRecognizer:self->_singlePressGestureRecognizer];
  [(SBLockHardwareButton *)self _cancelGestureRecognizer:self->_doublePressGestureRecognizer];
  [(SBLockHardwareButton *)self _cancelGestureRecognizer:self->_triplePressGestureRecognizer];
  [(SBLockHardwareButton *)self _cancelGestureRecognizer:self->_quadruplePressGestureRecognizer];

  [(SBLockHardwareButton *)self cancelLongPress];
}

- (UIGestureRecognizer)screenshotGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshotGestureRecognizer);

  return WeakRetained;
}

- (SBLongPressGestureRecognizer)shutdownGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_shutdownGestureRecognizer);

  return WeakRetained;
}

- (SBHomeHardwareButton)homeHardwareButton
{
  WeakRetained = objc_loadWeakRetained(&self->_homeHardwareButton);

  return WeakRetained;
}

- (SBVolumeHardwareButton)volumeHardwareButton
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeHardwareButton);

  return WeakRetained;
}

@end