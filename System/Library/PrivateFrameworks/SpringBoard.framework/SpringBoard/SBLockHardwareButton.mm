@interface SBLockHardwareButton
- (BOOL)_shouldRunActions;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (SBHomeHardwareButton)homeHardwareButton;
- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer shutdownGestureRecognizer:(id)gestureRecognizer proximitySensorManager:(id)manager homeHardwareButton:(id)button volumeHardwareButton:(id)hardwareButton buttonActions:(id)actions homeButtonType:(int64_t)type createGestures:(BOOL)self0;
- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer shutdownGestureRecognizer:(id)gestureRecognizer proximitySensorManager:(id)manager homeHardwareButton:(id)button volumeHardwareButton:(id)hardwareButton homeButtonType:(int64_t)type;
- (SBLongPressGestureRecognizer)shutdownGestureRecognizer;
- (SBVolumeHardwareButton)volumeHardwareButton;
- (UIGestureRecognizer)screenshotGestureRecognizer;
- (id)preemptablePressGestureRecognizers;
- (void)_cancelGestureRecognizer:(id)recognizer;
- (void)_cancelLongPressRecognizer:(id)recognizer;
- (void)_createGestureRecognizers;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_reconfigureButtonGestureRecognizers;
- (void)_updatePressCountForDownEvent;
- (void)buttonDown:(id)down;
- (void)cancelHardwareButtonPress;
- (void)cancelLongPress;
- (void)doublePress:(id)press;
- (void)forceResetSequenceDidBegin;
- (void)longPress:(id)press;
- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters;
- (void)quadruplePress:(id)press;
- (void)screenshotRecognizerDidRecognize:(id)recognize;
- (void)singlePress:(id)press;
- (void)terminalLockLongPress:(id)press;
- (void)triplePress:(id)press;
@end

@implementation SBLockHardwareButton

- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer shutdownGestureRecognizer:(id)gestureRecognizer proximitySensorManager:(id)manager homeHardwareButton:(id)button volumeHardwareButton:(id)hardwareButton homeButtonType:(int64_t)type
{
  hardwareButtonCopy = hardwareButton;
  buttonCopy = button;
  managerCopy = manager;
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  v19 = [[SBLockHardwareButtonActions alloc] initWithHomeButtonType:type proximitySensorManager:managerCopy];
  LOBYTE(v22) = 1;
  v20 = [(SBLockHardwareButton *)self initWithScreenshotGestureRecognizer:recognizerCopy shutdownGestureRecognizer:gestureRecognizerCopy proximitySensorManager:managerCopy homeHardwareButton:buttonCopy volumeHardwareButton:hardwareButtonCopy buttonActions:v19 homeButtonType:type createGestures:v22];

  return v20;
}

- (SBLockHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer shutdownGestureRecognizer:(id)gestureRecognizer proximitySensorManager:(id)manager homeHardwareButton:(id)button volumeHardwareButton:(id)hardwareButton buttonActions:(id)actions homeButtonType:(int64_t)type createGestures:(BOOL)self0
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  buttonCopy = button;
  hardwareButtonCopy = hardwareButton;
  actionsCopy = actions;
  v25.receiver = self;
  v25.super_class = SBLockHardwareButton;
  v20 = [(SBLockHardwareButton *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_lastPressDownTime = -1.79769313e308;
    objc_storeWeak(&v20->_screenshotGestureRecognizer, recognizerCopy);
    objc_storeWeak(&v21->_shutdownGestureRecognizer, gestureRecognizerCopy);
    objc_storeWeak(&v21->_homeHardwareButton, buttonCopy);
    objc_storeWeak(&v21->_volumeHardwareButton, hardwareButtonCopy);
    v21->_homeButtonType = type;
    objc_storeStrong(&v21->_buttonActions, actions);
    [(SBHardwareButtonGestureParametersProviderBase *)v21->_buttonActions addHardwareButtonGestureParametersObserver:v21];
    hardwareButtonGestureParameters = [(SBLockHardwareButtonActions *)v21->_buttonActions hardwareButtonGestureParameters];
    buttonGestureParameters = v21->_buttonGestureParameters;
    v21->_buttonGestureParameters = hardwareButtonGestureParameters;

    if (gestures)
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

- (void)screenshotRecognizerDidRecognize:(id)recognize
{
  if ([recognize state] == 3)
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

  maximumPressCount = [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters maximumPressCount];
  if (self->_configuredMaximumPressCount != maximumPressCount)
  {
    v8 = maximumPressCount;
    self->_configuredMaximumPressCount = maximumPressCount;
    v9 = maximumPressCount > 2;
    [(SBClickGestureRecognizer *)self->_doublePressGestureRecognizer setEnabled:maximumPressCount > 1];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v35 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  restartManager = [SBApp restartManager];
  v6 = restartManager;
  if (restartManager)
  {
    startupTransition = [restartManager startupTransition];

    if (!startupTransition)
    {
      if ([v6 isPendingExit])
      {
        v8 = SBLogButtonsLock();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        sb_briefDescription = [(UIGestureRecognizer *)beginCopy sb_briefDescription];
        pendingRestartTransitionRequest = [v6 pendingRestartTransitionRequest];
        *buf = 138543618;
        v32 = sb_briefDescription;
        v33 = 2114;
        v34 = pendingRestartTransitionRequest;
        v11 = "Preventing lock recognizer (%{public}@) because we are pending a restart: %{public}@";
        goto LABEL_5;
      }

      if (self->_buttonDownGestureRecognizer != beginCopy)
      {
        if (![(SBLockHardwareButton *)self _shouldRunActions])
        {
          v8 = SBLogButtonsLock();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_7;
          }

          sb_briefDescription = [(UIGestureRecognizer *)beginCopy sb_briefDescription];
          *buf = 138543362;
          v32 = sb_briefDescription;
          v17 = "Preventing lock recognizer (%{public}@) because hardware button coordinator says nope";
          v18 = v8;
          goto LABEL_40;
        }

        if (self->_singlePressGestureRecognizer == beginCopy)
        {
          buttonActions = self->_buttonActions;
          v30 = 0;
          v15 = [(SBLockHardwareButtonActions *)buttonActions disallowsSinglePressForReason:&v30];
          v16 = v30;
          v8 = v16;
          if (v15)
          {
            sb_briefDescription = SBLogButtonsLock();
            if (!os_log_type_enabled(sb_briefDescription, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_6;
            }

            *buf = 138543362;
            v32 = v8;
            v17 = "Single press recognizer disallowed for reason: %{public}@";
            goto LABEL_39;
          }
        }

        if (self->_doublePressGestureRecognizer == beginCopy)
        {
          v19 = self->_buttonActions;
          v29 = 0;
          v20 = [(SBLockHardwareButtonActions *)v19 disallowsDoublePressForReason:&v29];
          v21 = v29;
          v8 = v21;
          if (v20)
          {
            sb_briefDescription = SBLogButtonsLock();
            if (!os_log_type_enabled(sb_briefDescription, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_6;
            }

            *buf = 138543362;
            v32 = v8;
            v17 = "Double press recognizer disallowed for reason: %{public}@";
            goto LABEL_39;
          }
        }

        if (self->_triplePressGestureRecognizer == beginCopy || self->_quadruplePressGestureRecognizer == beginCopy)
        {
          v22 = self->_buttonActions;
          v28 = 0;
          v23 = [(SBLockHardwareButtonActions *)v22 disallowsTriplePressForReason:&v28];
          v24 = v28;
          v8 = v24;
          if (v23)
          {
            sb_briefDescription = SBLogButtonsLock();
            if (!os_log_type_enabled(sb_briefDescription, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_6;
            }

            *buf = 138543362;
            v32 = v8;
            v17 = ">= Triple press recognizer disallowed for reason: %{public}@";
            goto LABEL_39;
          }
        }

        if (self->_longPressGestureRecognizer == beginCopy || self->_terminalLockLongPressGestureRecognizer == beginCopy)
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

          sb_briefDescription = SBLogButtonsLock();
          if (!os_log_type_enabled(sb_briefDescription, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_6;
          }

          *buf = 138543362;
          v32 = v8;
          v17 = "Long press recognizer disallowed for reason: %{public}@";
LABEL_39:
          v18 = sb_briefDescription;
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
    sb_briefDescription = [(UIGestureRecognizer *)beginCopy sb_briefDescription];
    pendingRestartTransitionRequest = [v6 startupTransition];
    *buf = 138543618;
    v32 = sb_briefDescription;
    v33 = 2114;
    v34 = pendingRestartTransitionRequest;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  if (self->_singlePressGestureRecognizer == recognizerCopy && self->_doublePressGestureRecognizer == gestureRecognizerCopy)
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
    v9 = self->_triplePressGestureRecognizer == recognizerCopy && self->_quadruplePressGestureRecognizer == gestureRecognizerCopy && [MEMORY[0x277D495A8] SOSTriggerClickCount] > 3;
  }

  return v9;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  if (self->_singlePressGestureRecognizer == failed)
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
  hardwareButtonIdentifier = [(SBLockHardwareButton *)self hardwareButtonIdentifier];
  LOBYTE(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:hardwareButtonIdentifier];

  return hardwareButtonCoordinator;
}

- (void)buttonDown:(id)down
{
  v19 = *MEMORY[0x277D85DE8];
  downCopy = down;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    state = [downCopy state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Lock button down: state=%d", &v17, 8u);
  }

  _shouldRunActions = [(SBLockHardwareButton *)self _shouldRunActions];
  state2 = [downCopy state];
  if ((state2 - 3) >= 3)
  {
    if (state2 == 1)
    {
      [(SBLockHardwareButton *)self _updatePressCountForDownEvent];
      v9 = SBLogButtonsLock();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        currentPressCount = self->_currentPressCount;
        v17 = 67109120;
        state = currentPressCount;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "press count:%d", &v17, 8u);
      }

      if (!self->_buttonActiveAssertion)
      {
        hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
        hardwareButtonIdentifier = [(SBLockHardwareButton *)self hardwareButtonIdentifier];
        v13 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:hardwareButtonIdentifier dropletHintIdentifier:2];
        buttonActiveAssertion = self->_buttonActiveAssertion;
        self->_buttonActiveAssertion = v13;
      }

      if (_shouldRunActions)
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

    if (_shouldRunActions)
    {
      if (self->_currentPressCount == 1)
      {
        [(SBLockHardwareButtonActions *)self->_buttonActions performInitialButtonUpActions];
      }

      [(SBLockHardwareButtonActions *)self->_buttonActions performButtonUpPreActions];
    }
  }
}

- (void)singlePress:(id)press
{
  v9 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [pressCopy state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Lock button single press: state=%d", v8, 8u);
  }

  if ([pressCopy state] == 3 && -[SBLockHardwareButton _shouldRunActions](self, "_shouldRunActions"))
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

- (void)terminalLockLongPress:(id)press
{
  v12 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = [pressCopy state];
    [pressCopy minimumPressDuration];
    v9[0] = 67109376;
    v9[1] = state;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "TerminalLock button long press: state=%d, duration: %f", v9, 0x12u);
  }

  if ([pressCopy state] == 1)
  {
    v8 = SBLogButtonsLock();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "TerminalLock button long press recognized.", v9, 2u);
    }

    [(SBLockHardwareButtonActions *)self->_buttonActions performTerminalLockLongPressActions];
  }

  if ([pressCopy state] == 3)
  {
    [(SBLockHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
  }
}

- (void)longPress:(id)press
{
  v13 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = [pressCopy state];
    [pressCopy minimumPressDuration];
    v10[0] = 67109376;
    v10[1] = state;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Lock button long press: state=%d, duration: %f", v10, 0x12u);
  }

  if ([(SBLockHardwareButton *)self _shouldRunActions])
  {
    if ([pressCopy state] == 1)
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

    if ([pressCopy state] == 3)
    {
      [(SBLockHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
    }
  }
}

- (void)doublePress:(id)press
{
  v8 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [pressCopy state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "double press: state:%d", v7, 8u);
  }

  if (-[SBLockHardwareButton _shouldRunActions](self, "_shouldRunActions") && [pressCopy state] == 3)
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

- (void)triplePress:(id)press
{
  v8 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  v5 = SBLogButtonsLock();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [pressCopy state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "triple press: state:%d", v7, 8u);
  }

  if (-[SBLockHardwareButton _shouldRunActions](self, "_shouldRunActions") && [pressCopy state] == 3)
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

- (void)quadruplePress:(id)press
{
  v6 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  v4 = SBLogButtonsLock();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [pressCopy state];
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "quadruple press: state:%d", v5, 8u);
  }
}

- (void)_cancelLongPressRecognizer:(id)recognizer
{
  v8 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  if ([recognizerCopy state] <= 2)
  {
    v4 = SBLogButtonsLock();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = [recognizerCopy name];
      v6 = 138543362;
      v7 = name;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ canceled", &v6, 0xCu);
    }

    [recognizerCopy setEnabled:0];
    [recognizerCopy setEnabled:1];
  }
}

- (void)cancelLongPress
{
  [(SBLockHardwareButton *)self _cancelLongPressRecognizer:self->_longPressGestureRecognizer];
  [(SBLockHardwareButton *)self _cancelLongPressRecognizer:self->_terminalLockLongPressGestureRecognizer];
  buttonActions = self->_buttonActions;

  [(SBLockHardwareButtonActions *)buttonActions performLongPressCancelledActions];
}

- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters
{
  parametersCopy = parameters;
  if (self->_buttonActions == provider)
  {
    v8 = parametersCopy;
    objc_storeStrong(&self->_buttonGestureParameters, parameters);
    [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:self->_buttonGestureParameters];
    [(SBLockHardwareButton *)self _reconfigureButtonGestureRecognizers];
    parametersCopy = v8;
  }
}

- (void)_cancelGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy isEnabled])
  {
    [recognizerCopy setEnabled:0];
    [recognizerCopy setEnabled:1];
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