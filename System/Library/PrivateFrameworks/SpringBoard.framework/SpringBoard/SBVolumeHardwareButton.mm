@interface SBVolumeHardwareButton
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSHashTable)volumePressBandits;
- (SBVolumeHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer shutdownGestureRecognizer:(id)gestureRecognizer homeButtonType:(int64_t)type;
- (id)preemptablePressGestureRecognizers;
- (void)_createGestureRecognizers;
- (void)_logVolumeButtonWithObserver:(id)observer down:(BOOL)down;
- (void)_rawVolumeDecreasePress:(BOOL)press;
- (void)_rawVolumeIncreasePress:(BOOL)press;
- (void)_rawVolumePress:(id)press;
- (void)dealloc;
- (void)volumeDecreasePress:(id)press;
- (void)volumeIncreasePress:(id)press;
@end

@implementation SBVolumeHardwareButton

- (void)dealloc
{
  [(BSInvalidatable *)self->_volumeIncreaseActiveAssertion invalidate];
  volumeIncreaseActiveAssertion = self->_volumeIncreaseActiveAssertion;
  self->_volumeIncreaseActiveAssertion = 0;

  [(BSInvalidatable *)self->_volumeDecreaseActiveAssertion invalidate];
  volumeDecreaseActiveAssertion = self->_volumeDecreaseActiveAssertion;
  self->_volumeDecreaseActiveAssertion = 0;

  v5.receiver = self;
  v5.super_class = SBVolumeHardwareButton;
  [(SBVolumeHardwareButton *)&v5 dealloc];
}

- (SBVolumeHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer shutdownGestureRecognizer:(id)gestureRecognizer homeButtonType:(int64_t)type
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v20.receiver = self;
  v20.super_class = SBVolumeHardwareButton;
  v11 = [(SBVolumeHardwareButton *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_homeButtonType = type;
    v13 = objc_alloc_init(SBVolumeHardwareButtonActions);
    buttonActions = v12->_buttonActions;
    v12->_buttonActions = v13;

    v15 = [[SBPressSequenceObserver alloc] initWithPressName:@"VolumeUp"];
    volumeIncreaseSequenceObserver = v12->_volumeIncreaseSequenceObserver;
    v12->_volumeIncreaseSequenceObserver = v15;

    v17 = [[SBPressSequenceObserver alloc] initWithPressName:@"VolumeDown"];
    volumeDecreaseSequenceObserver = v12->_volumeDecreaseSequenceObserver;
    v12->_volumeDecreaseSequenceObserver = v17;

    objc_storeStrong(&v12->_screenshotGestureRecognizer, recognizer);
    objc_storeStrong(&v12->_shutdownGestureRecognizer, gestureRecognizer);
    [(SBVolumeHardwareButton *)v12 _createGestureRecognizers];
  }

  return v12;
}

- (void)_createGestureRecognizers
{
  v3 = [[SBPressGestureRecognizer alloc] initWithTarget:self action:sel_volumeIncreasePress_];
  volumeIncreaseButtonPressGestureRecognizer = self->_volumeIncreaseButtonPressGestureRecognizer;
  self->_volumeIncreaseButtonPressGestureRecognizer = v3;

  [(SBPressGestureRecognizer *)self->_volumeIncreaseButtonPressGestureRecognizer setName:@"VolumeIncrease"];
  [(SBPressGestureRecognizer *)self->_volumeIncreaseButtonPressGestureRecognizer setAllowedPressTypes:&unk_28336DCF8];
  [(SBPressGestureRecognizer *)self->_volumeIncreaseButtonPressGestureRecognizer setDelegate:self];
  v5 = +[SBSystemGestureManager mainDisplayManager];
  [v5 addGestureRecognizer:self->_volumeIncreaseButtonPressGestureRecognizer withType:91];

  v6 = [[SBPressGestureRecognizer alloc] initWithTarget:self action:sel_volumeDecreasePress_];
  volumeDecreaseButtonPressGestureRecognizer = self->_volumeDecreaseButtonPressGestureRecognizer;
  self->_volumeDecreaseButtonPressGestureRecognizer = v6;

  [(SBPressGestureRecognizer *)self->_volumeDecreaseButtonPressGestureRecognizer setName:@"VolumeDecrease"];
  [(SBPressGestureRecognizer *)self->_volumeDecreaseButtonPressGestureRecognizer setAllowedPressTypes:&unk_28336DD10];
  [(SBPressGestureRecognizer *)self->_volumeDecreaseButtonPressGestureRecognizer setDelegate:self];
  v8 = +[SBSystemGestureManager mainDisplayManager];
  [v8 addGestureRecognizer:self->_volumeDecreaseButtonPressGestureRecognizer withType:92];

  v9 = [[SBPressGestureRecognizer alloc] initWithTarget:self action:sel__rawVolumePress_];
  rawVolumeButtonPressGestureRecognizer = self->_rawVolumeButtonPressGestureRecognizer;
  self->_rawVolumeButtonPressGestureRecognizer = v9;

  [(SBPressGestureRecognizer *)self->_rawVolumeButtonPressGestureRecognizer setName:@"VolumeRaw"];
  [(SBPressGestureRecognizer *)self->_rawVolumeButtonPressGestureRecognizer setAllowedPressTypes:&unk_28336DD28];
  [(SBPressGestureRecognizer *)self->_rawVolumeButtonPressGestureRecognizer setDelegate:self];
  v11 = +[SBSystemGestureManager mainDisplayManager];
  [v11 addGestureRecognizer:self->_rawVolumeButtonPressGestureRecognizer withType:93];
}

- (void)volumeIncreasePress:(id)press
{
  v10 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  state = [pressCopy state];
  v6 = SBLogButtonsVolume();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = state == 1;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "RECEIVED volumeIncreasePress down:%{BOOL}u", v9, 8u);
  }

  [(SBVolumeHardwareButton *)self _logVolumeButtonWithObserver:self->_volumeIncreaseSequenceObserver down:state == 1];
  if (state == 1)
  {
    v7 = [pressCopy _activeEventOfType:3];
    -[SBVolumeHardwareButtonActions volumeIncreasePressDownWithModifiers:](self->_buttonActions, "volumeIncreasePressDownWithModifiers:", [v7 modifierFlags]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBVolumeHardwareButtonIncreaseNotification" object:0];
  }

  else
  {
    [(SBVolumeHardwareButtonActions *)self->_buttonActions volumeIncreasePressUp];
  }
}

- (void)volumeDecreasePress:(id)press
{
  v10 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  state = [pressCopy state];
  v6 = SBLogButtonsVolume();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = state == 1;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "RECEIVED volumeDecreasePress down:%{BOOL}u", v9, 8u);
  }

  [(SBVolumeHardwareButton *)self _logVolumeButtonWithObserver:self->_volumeDecreaseSequenceObserver down:state == 1];
  if (state == 1)
  {
    v7 = [pressCopy _activeEventOfType:3];
    -[SBVolumeHardwareButtonActions volumeDecreasePressDownWithModifiers:](self->_buttonActions, "volumeDecreasePressDownWithModifiers:", [v7 modifierFlags]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBVolumeHardwareButtonDecreaseNotification" object:0];
  }

  else
  {
    [(SBVolumeHardwareButtonActions *)self->_buttonActions volumeDecreasePressUp];
  }
}

- (void)_logVolumeButtonWithObserver:(id)observer down:(BOOL)down
{
  downCopy = down;
  pressCollector = [observer pressCollector];
  +[SBPressCollector currentTimeStamp];
  if (downCopy)
  {
    [pressCollector registerPressDownWithTimeStamp:?];
  }

  else
  {
    [pressCollector registerPressUpWithTimeStamp:?];
  }
}

- (void)_rawVolumePress:(id)press
{
  v11 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  latestPressType = [pressCopy latestPressType];
  latestPressPhase = [pressCopy latestPressPhase];

  if (latestPressPhase > 4 || ((1 << latestPressPhase) & 0x19) == 0)
  {
    v8 = SBLogButtonsVolume();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = latestPressPhase;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring rawVolumePress phase: %li", &v9, 0xCu);
    }
  }

  else if (latestPressType == 103)
  {

    [(SBVolumeHardwareButton *)self _rawVolumeDecreasePress:latestPressPhase == 0];
  }

  else if (latestPressType == 102)
  {

    [(SBVolumeHardwareButton *)self _rawVolumeIncreasePress:latestPressPhase == 0];
  }
}

- (void)_rawVolumeIncreasePress:(BOOL)press
{
  pressCopy = press;
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = pressCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "RECEIVED rawVolumeIncreasePress down:%{BOOL}u", v11, 8u);
  }

  volumeIncreaseActiveAssertion = self->_volumeIncreaseActiveAssertion;
  if (pressCopy)
  {
    if (volumeIncreaseActiveAssertion)
    {
      return;
    }

    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier = [(SBVolumeHardwareButton *)self hardwareButtonIdentifier];
    v9 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:hardwareButtonIdentifier dropletHintIdentifier:3];
    v10 = self->_volumeIncreaseActiveAssertion;
    self->_volumeIncreaseActiveAssertion = v9;
  }

  else
  {
    [(BSInvalidatable *)volumeIncreaseActiveAssertion invalidate];
    hardwareButtonIdentifier = self->_volumeIncreaseActiveAssertion;
    self->_volumeIncreaseActiveAssertion = 0;
  }
}

- (void)_rawVolumeDecreasePress:(BOOL)press
{
  pressCopy = press;
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = pressCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "RECEIVED rawVolumeDecreasePress down:%{BOOL}u", v11, 8u);
  }

  volumeDecreaseActiveAssertion = self->_volumeDecreaseActiveAssertion;
  if (pressCopy)
  {
    if (volumeDecreaseActiveAssertion)
    {
      return;
    }

    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier = [(SBVolumeHardwareButton *)self hardwareButtonIdentifier];
    v9 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:hardwareButtonIdentifier dropletHintIdentifier:4];
    v10 = self->_volumeDecreaseActiveAssertion;
    self->_volumeDecreaseActiveAssertion = v9;
  }

  else
  {
    [(BSInvalidatable *)volumeDecreaseActiveAssertion invalidate];
    hardwareButtonIdentifier = self->_volumeDecreaseActiveAssertion;
    self->_volumeDecreaseActiveAssertion = 0;
  }
}

- (id)preemptablePressGestureRecognizers
{
  v5[2] = *MEMORY[0x277D85DE8];
  volumeDecreaseButtonPressGestureRecognizer = self->_volumeDecreaseButtonPressGestureRecognizer;
  v5[0] = self->_volumeIncreaseButtonPressGestureRecognizer;
  v5[1] = volumeDecreaseButtonPressGestureRecognizer;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v19 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  if (self->_rawVolumeButtonPressGestureRecognizer != beginCopy)
  {
    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier = [(SBVolumeHardwareButton *)self hardwareButtonIdentifier];
    LOBYTE(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:hardwareButtonIdentifier];

    if ((hardwareButtonCoordinator & 1) == 0)
    {
      v8 = SBLogButtonsVolume();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring volume buttons events because hardware button coordinator says nope", &v17, 2u);
      }

      v13 = 0;
      goto LABEL_14;
    }

    restartManager = [SBApp restartManager];
    v8 = restartManager;
    if (restartManager && ([restartManager startupTransition], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      isPendingExit = [v8 isPendingExit];
      v10 = SBLogButtonsVolume();
      v16 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!isPendingExit)
      {
        if (v16)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "will begin volume button press", &v17, 2u);
        }

        v13 = 1;
        goto LABEL_9;
      }

      if (v16)
      {
        pendingRestartTransitionRequest = [v8 pendingRestartTransitionRequest];
        v17 = 138412290;
        v18 = pendingRestartTransitionRequest;
        v12 = "Ignoring volume buttons event because we are pending a restart: %@";
        goto LABEL_7;
      }
    }

    else
    {
      v10 = SBLogButtonsVolume();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        pendingRestartTransitionRequest = [v8 startupTransition];
        v17 = 138412290;
        v18 = pendingRestartTransitionRequest;
        v12 = "Ignoring volume buttons events because we're in a startup transition: %@";
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v12, &v17, 0xCu);
      }
    }

    v13 = 0;
LABEL_9:

LABEL_14:
    goto LABEL_15;
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  v18 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  if (self->_rawVolumeButtonPressGestureRecognizer == recognizerCopy)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    if (self->_homeButtonType == 2 && (self->_volumeIncreaseButtonPressGestureRecognizer == recognizerCopy || self->_volumeDecreaseButtonPressGestureRecognizer == recognizerCopy) && (self->_screenshotGestureRecognizer == gestureRecognizerCopy || self->_shutdownGestureRecognizer == gestureRecognizerCopy))
    {
      v12 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      physicalButtonSceneOverrideManager = [v12 physicalButtonSceneOverrideManager];

      v14 = [(SBPhysicalButtonSceneOverrideManager *)physicalButtonSceneOverrideManager isTargetingButton:1 withConfigurationIdentifier:?];
      v15 = [(SBPhysicalButtonSceneOverrideManager *)physicalButtonSceneOverrideManager isTargetingButton:2 withConfigurationIdentifier:?];
      v9 = 0;
      if (!v14 && !v15)
      {
        ringerControl = [SBApp ringerControl];
        v9 = [(SBRingerControl *)ringerControl isRingerHUDVisible]^ 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = SBLogButtonsVolume();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109120;
      v17[1] = v9;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "shouldRequireFailure: %{BOOL}u", v17, 8u);
    }
  }

  return v9;
}

- (NSHashTable)volumePressBandits
{
  WeakRetained = objc_loadWeakRetained(&self->_volumePressBandits);

  return WeakRetained;
}

@end