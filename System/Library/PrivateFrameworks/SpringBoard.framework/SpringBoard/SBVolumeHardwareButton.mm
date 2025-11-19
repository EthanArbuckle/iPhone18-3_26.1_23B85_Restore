@interface SBVolumeHardwareButton
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSHashTable)volumePressBandits;
- (SBVolumeHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 homeButtonType:(int64_t)a5;
- (id)preemptablePressGestureRecognizers;
- (void)_createGestureRecognizers;
- (void)_logVolumeButtonWithObserver:(id)a3 down:(BOOL)a4;
- (void)_rawVolumeDecreasePress:(BOOL)a3;
- (void)_rawVolumeIncreasePress:(BOOL)a3;
- (void)_rawVolumePress:(id)a3;
- (void)dealloc;
- (void)volumeDecreasePress:(id)a3;
- (void)volumeIncreasePress:(id)a3;
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

- (SBVolumeHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 homeButtonType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = SBVolumeHardwareButton;
  v11 = [(SBVolumeHardwareButton *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_homeButtonType = a5;
    v13 = objc_alloc_init(SBVolumeHardwareButtonActions);
    buttonActions = v12->_buttonActions;
    v12->_buttonActions = v13;

    v15 = [[SBPressSequenceObserver alloc] initWithPressName:@"VolumeUp"];
    volumeIncreaseSequenceObserver = v12->_volumeIncreaseSequenceObserver;
    v12->_volumeIncreaseSequenceObserver = v15;

    v17 = [[SBPressSequenceObserver alloc] initWithPressName:@"VolumeDown"];
    volumeDecreaseSequenceObserver = v12->_volumeDecreaseSequenceObserver;
    v12->_volumeDecreaseSequenceObserver = v17;

    objc_storeStrong(&v12->_screenshotGestureRecognizer, a3);
    objc_storeStrong(&v12->_shutdownGestureRecognizer, a4);
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

- (void)volumeIncreasePress:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  v6 = SBLogButtonsVolume();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v5 == 1;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "RECEIVED volumeIncreasePress down:%{BOOL}u", v9, 8u);
  }

  [(SBVolumeHardwareButton *)self _logVolumeButtonWithObserver:self->_volumeIncreaseSequenceObserver down:v5 == 1];
  if (v5 == 1)
  {
    v7 = [v4 _activeEventOfType:3];
    -[SBVolumeHardwareButtonActions volumeIncreasePressDownWithModifiers:](self->_buttonActions, "volumeIncreasePressDownWithModifiers:", [v7 modifierFlags]);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"SBVolumeHardwareButtonIncreaseNotification" object:0];
  }

  else
  {
    [(SBVolumeHardwareButtonActions *)self->_buttonActions volumeIncreasePressUp];
  }
}

- (void)volumeDecreasePress:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  v6 = SBLogButtonsVolume();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v5 == 1;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "RECEIVED volumeDecreasePress down:%{BOOL}u", v9, 8u);
  }

  [(SBVolumeHardwareButton *)self _logVolumeButtonWithObserver:self->_volumeDecreaseSequenceObserver down:v5 == 1];
  if (v5 == 1)
  {
    v7 = [v4 _activeEventOfType:3];
    -[SBVolumeHardwareButtonActions volumeDecreasePressDownWithModifiers:](self->_buttonActions, "volumeDecreasePressDownWithModifiers:", [v7 modifierFlags]);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"SBVolumeHardwareButtonDecreaseNotification" object:0];
  }

  else
  {
    [(SBVolumeHardwareButtonActions *)self->_buttonActions volumeDecreasePressUp];
  }
}

- (void)_logVolumeButtonWithObserver:(id)a3 down:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 pressCollector];
  +[SBPressCollector currentTimeStamp];
  if (v4)
  {
    [v5 registerPressDownWithTimeStamp:?];
  }

  else
  {
    [v5 registerPressUpWithTimeStamp:?];
  }
}

- (void)_rawVolumePress:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 latestPressType];
  v6 = [v4 latestPressPhase];

  if (v6 > 4 || ((1 << v6) & 0x19) == 0)
  {
    v8 = SBLogButtonsVolume();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring rawVolumePress phase: %li", &v9, 0xCu);
    }
  }

  else if (v5 == 103)
  {

    [(SBVolumeHardwareButton *)self _rawVolumeDecreasePress:v6 == 0];
  }

  else if (v5 == 102)
  {

    [(SBVolumeHardwareButton *)self _rawVolumeIncreasePress:v6 == 0];
  }
}

- (void)_rawVolumeIncreasePress:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "RECEIVED rawVolumeIncreasePress down:%{BOOL}u", v11, 8u);
  }

  volumeIncreaseActiveAssertion = self->_volumeIncreaseActiveAssertion;
  if (v3)
  {
    if (volumeIncreaseActiveAssertion)
    {
      return;
    }

    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    v8 = [(SBVolumeHardwareButton *)self hardwareButtonIdentifier];
    v9 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:v8 dropletHintIdentifier:3];
    v10 = self->_volumeIncreaseActiveAssertion;
    self->_volumeIncreaseActiveAssertion = v9;
  }

  else
  {
    [(BSInvalidatable *)volumeIncreaseActiveAssertion invalidate];
    v8 = self->_volumeIncreaseActiveAssertion;
    self->_volumeIncreaseActiveAssertion = 0;
  }
}

- (void)_rawVolumeDecreasePress:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "RECEIVED rawVolumeDecreasePress down:%{BOOL}u", v11, 8u);
  }

  volumeDecreaseActiveAssertion = self->_volumeDecreaseActiveAssertion;
  if (v3)
  {
    if (volumeDecreaseActiveAssertion)
    {
      return;
    }

    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    v8 = [(SBVolumeHardwareButton *)self hardwareButtonIdentifier];
    v9 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:v8 dropletHintIdentifier:4];
    v10 = self->_volumeDecreaseActiveAssertion;
    self->_volumeDecreaseActiveAssertion = v9;
  }

  else
  {
    [(BSInvalidatable *)volumeDecreaseActiveAssertion invalidate];
    v8 = self->_volumeDecreaseActiveAssertion;
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_rawVolumeButtonPressGestureRecognizer != v4)
  {
    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    v6 = [(SBVolumeHardwareButton *)self hardwareButtonIdentifier];
    LOBYTE(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:v6];

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

    v7 = [SBApp restartManager];
    v8 = v7;
    if (v7 && ([v7 startupTransition], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v15 = [v8 isPendingExit];
      v10 = SBLogButtonsVolume();
      v16 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!v15)
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
        v11 = [v8 pendingRestartTransitionRequest];
        v17 = 138412290;
        v18 = v11;
        v12 = "Ignoring volume buttons event because we are pending a restart: %@";
        goto LABEL_7;
      }
    }

    else
    {
      v10 = SBLogButtonsVolume();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 startupTransition];
        v17 = 138412290;
        v18 = v11;
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

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_rawVolumeButtonPressGestureRecognizer == v6)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    if (self->_homeButtonType == 2 && (self->_volumeIncreaseButtonPressGestureRecognizer == v6 || self->_volumeDecreaseButtonPressGestureRecognizer == v6) && (self->_screenshotGestureRecognizer == v7 || self->_shutdownGestureRecognizer == v7))
    {
      v12 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      v13 = [v12 physicalButtonSceneOverrideManager];

      v14 = [(SBPhysicalButtonSceneOverrideManager *)v13 isTargetingButton:1 withConfigurationIdentifier:?];
      v15 = [(SBPhysicalButtonSceneOverrideManager *)v13 isTargetingButton:2 withConfigurationIdentifier:?];
      v9 = 0;
      if (!v14 && !v15)
      {
        v16 = [SBApp ringerControl];
        v9 = [(SBRingerControl *)v16 isRingerHUDVisible]^ 1;
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