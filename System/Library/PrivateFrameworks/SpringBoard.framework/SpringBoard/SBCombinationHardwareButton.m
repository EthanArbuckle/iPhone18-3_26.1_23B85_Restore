@interface SBCombinationHardwareButton
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (SBCombinationHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 homeHardwareButton:(id)a5 lockHardwareButton:(id)a6 volumeHardwareButton:(id)a7 proximitySensorManager:(id)a8 backlightController:(id)a9;
- (id)backlightController;
- (id)homeHardwareButton;
- (id)preemptablePressGestureRecognizers;
- (id)proximitySensorManager;
- (id)setBacklightController:(id *)result;
- (id)setHomeHardwareButton:(id *)result;
- (id)setProximitySensorManager:(id *)result;
- (id)setVolumeHardwareButton:(id *)result;
- (id)volumeHardwareButton;
- (void)_backlightChanged:(id)a3;
- (void)_configureGestureRecognizers;
- (void)_configureSOSGestureBehaviors;
- (void)_setScreenshotDisabled:(BOOL)a3 forReason:(id)a4;
- (void)cancelHardwareButtonPress;
- (void)dealloc;
- (void)provider:(id)a3 didUpdateButtonGestureParameters:(id)a4;
- (void)screenshotGesture:(id)a3;
- (void)shutdownGesture:(id)a3;
- (void)sosClawDidBecomeActive:(id)a3;
- (void)sosClawDidBecomeInactive:(id)a3;
- (void)sosClawDidTriggerSOS:(id)a3 completion:(id)a4;
- (void)sosGesture:(id)a3;
- (void)sosLockDidTriggerSOS:(id)a3 completion:(id)a4;
- (void)sosLockTriggerDidBecomeActive:(id)a3;
- (void)sosLockTriggerDidBecomeInactive:(id)a3;
@end

@implementation SBCombinationHardwareButton

- (SBCombinationHardwareButton)initWithScreenshotGestureRecognizer:(id)a3 shutdownGestureRecognizer:(id)a4 homeHardwareButton:(id)a5 lockHardwareButton:(id)a6 volumeHardwareButton:(id)a7 proximitySensorManager:(id)a8 backlightController:(id)a9
{
  v16 = a3;
  v32 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v33.receiver = self;
  v33.super_class = SBCombinationHardwareButton;
  v22 = [(SBCombinationHardwareButton *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_screenshotGestureRecognizer, a3);
    objc_storeStrong(&v23->_shutdownGestureRecognizer, a4);
    objc_storeWeak(&v23->_proximitySensorManager, v20);
    objc_storeWeak(&v23->_backlightController, v21);
    v24 = objc_alloc_init(SBCombinationHardwareButtonActions);
    buttonActions = v23->_buttonActions;
    v23->_buttonActions = v24;

    v26 = [v18 hardwareButtonGestureParameters];
    [v26 longPressTimeInterval];
    v28 = v27;

    [v16 setMaximumClickFormationDuration:v28];
    [v16 setMaximumClickDownDuration:-1.0];
    [v16 setAllPressesUpRequired:0];
    objc_storeWeak(&v23->_homeHardwareButton, v17);
    objc_storeWeak(&v23->_volumeHardwareButton, v19);
    objc_storeWeak(&v23->_lockHardwareButton, v18);
    [v18 addHardwareButtonGestureParametersObserver:v23];
    [(SBCombinationHardwareButton *)v23 _configureGestureRecognizers];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v23, _SBSOSTriggerMechanismDidChangeNotification, *MEMORY[0x277D660A0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v23 selector:sel__backlightChanged_ name:*MEMORY[0x277D67A20] object:0];
  }

  return v23;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBCombinationHardwareButton;
  [(SBCombinationHardwareButton *)&v4 dealloc];
}

- (void)_configureGestureRecognizers
{
  [(SBClickGestureRecognizer *)self->_screenshotGestureRecognizer addTarget:self action:sel_screenshotGesture_];
  [(SBClickGestureRecognizer *)self->_screenshotGestureRecognizer setDelegate:self];
  v3 = +[SBSystemGestureManager mainDisplayManager];
  [v3 addGestureRecognizer:self->_screenshotGestureRecognizer withType:94];

  v4 = [[SBPressGestureRecognizer alloc] initWithTarget:self action:sel_sosGesture_];
  sosGestureRecognizer = self->_sosGestureRecognizer;
  self->_sosGestureRecognizer = v4;

  [(SBPressGestureRecognizer *)self->_sosGestureRecognizer setName:@"LockVolumeButtons-SOS"];
  [(SBPressGestureRecognizer *)self->_sosGestureRecognizer setAllowedPressTypes:&unk_28336DFF8];
  [(SBPressGestureRecognizer *)self->_sosGestureRecognizer setDelegate:self];
  v6 = +[SBSystemGestureManager mainDisplayManager];
  [v6 addGestureRecognizer:self->_sosGestureRecognizer withType:89];

  v7 = objc_alloc_init(SBSOSClawGestureObserver);
  sosClawGestureObserver = self->_sosClawGestureObserver;
  self->_sosClawGestureObserver = v7;

  [(SBSOSClawGestureObserver *)self->_sosClawGestureObserver setDelegate:self];
  [(SBSOSClawGestureObserver *)self->_sosClawGestureObserver setGestureLoggingEnabled:1];
  v9 = [[SBSOSLockGestureObserver alloc] initWithConfiguration:1];
  sosLockGestureObserver = self->_sosLockGestureObserver;
  self->_sosLockGestureObserver = v9;

  [(SBSOSLockGestureObserver *)self->_sosLockGestureObserver setDelegate:self];
  [(SBSOSLockGestureObserver *)self->_sosLockGestureObserver setGestureLoggingEnabled:1];
  [(SBCombinationHardwareButton *)self _configureSOSGestureBehaviors];
  if (self->_shutdownGestureRecognizer)
  {
    v11 = [(SBSOSClawGestureObserver *)self->_sosClawGestureObserver isSOSEnabled];
    shutdownGestureRecognizer = self->_shutdownGestureRecognizer;
    if (v11)
    {

      [(SBLongPressGestureRecognizer *)shutdownGestureRecognizer setEnabled:0];
    }

    else
    {
      [(SBLongPressGestureRecognizer *)shutdownGestureRecognizer addTarget:self action:sel_shutdownGesture_];
      [(SBLongPressGestureRecognizer *)self->_shutdownGestureRecognizer setName:@"LockVolumeButtons-Shutdown"];
      [(SBClickGestureRecognizer *)self->_shutdownGestureRecognizer setNumberOfClicksRequired:0];
      [(SBClickGestureRecognizer *)self->_shutdownGestureRecognizer setAllPressesUpRequired:0];
      [(SBLongPressGestureRecognizer *)self->_shutdownGestureRecognizer setMinimumPressDuration:1.1];
      [(SBPressGestureRecognizer *)self->_shutdownGestureRecognizer setAllowedPressTypes:&unk_28336E010];
      [(SBClickGestureRecognizer *)self->_shutdownGestureRecognizer addShortcutWithPressTypes:&unk_28336E028];
      [(SBClickGestureRecognizer *)self->_shutdownGestureRecognizer addShortcutWithPressTypes:&unk_28336E040];
      [(SBLongPressGestureRecognizer *)self->_shutdownGestureRecognizer setDelegate:self];
      v13 = +[SBSystemGestureManager mainDisplayManager];
      [v13 addGestureRecognizer:self->_shutdownGestureRecognizer withType:90];

      [(SBLongPressGestureRecognizer *)self->_shutdownGestureRecognizer setEnabled:1];
      screenshotGestureRecognizer = self->_screenshotGestureRecognizer;
      v15 = self->_shutdownGestureRecognizer;

      [(SBClickGestureRecognizer *)screenshotGestureRecognizer requireGestureRecognizerToFail:v15];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_screenshotGestureRecognizer == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_proximitySensorManager);
    v3 = [WeakRetained isObjectInProximity] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if (self->_screenshotGestureRecognizer == v6)
  {
    NSClassFromString(&cfstr_Sbhblongpressg.isa);
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  screenshotGestureRecognizer = self->_screenshotGestureRecognizer;
  v10 = screenshotGestureRecognizer == v6 || screenshotGestureRecognizer == v7;
  if (v10 || self->_sosGestureRecognizer == v6 || self->_shutdownGestureRecognizer == v6)
  {
    v12 = 1;
  }

  else
  {
    v11 = [(SBClickGestureRecognizer *)v7 allowedTouchTypes];
    v12 = [v11 count] != 0;
  }

  return v12;
}

- (void)_configureSOSGestureBehaviors
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D495A0] deviceSupportsSOS];
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 sosDefaults];

  v6 = [v5 clawCanTriggerSOS];
  v7 = [v5 lockButtonSOSTriggerCount];
  v8 = SBLogButtonsCombo();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109632;
    v15[1] = v3;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Configuring SOS Gestures for SOS supported device: %{BOOL}u, clawShouldTriggerSOS: %{BOOL}u, lockButtonSOSTriggerCount: %d", v15, 0x14u);
  }

  sosClawGestureObserver = self->_sosClawGestureObserver;
  if (v3)
  {
    [(SBSOSClawGestureObserver *)sosClawGestureObserver setSOSEnabled:v6];
    if (v7 == -1)
    {
      v14 = SBLogButtonsCombo();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(SBCombinationHardwareButton *)v14 _configureSOSGestureBehaviors];
      }

      v13 = 0;
      v12 = 1;
    }

    else
    {
      v10 = 1;
      if (v7 == 3)
      {
        v10 = 2;
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      if (v7 == 5)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10;
      }

      if (v7 == 5)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11;
      }
    }

    [(SBSOSLockGestureObserver *)self->_sosLockGestureObserver setSOSEnabled:v13];
    [(SBSOSLockGestureObserver *)self->_sosLockGestureObserver resetWithNewConfiguration:v12];
  }

  else
  {
    [(SBSOSClawGestureObserver *)sosClawGestureObserver setSOSEnabled:0];
    [(SBSOSLockGestureObserver *)self->_sosLockGestureObserver setSOSEnabled:0];
  }
}

- (void)provider:(id)a3 didUpdateButtonGestureParameters:(id)a4
{
  screenshotGestureRecognizer = self->_screenshotGestureRecognizer;
  [a4 longPressTimeInterval];

  [(SBClickGestureRecognizer *)screenshotGestureRecognizer setMaximumClickFormationDuration:?];
}

- (id)preemptablePressGestureRecognizers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_screenshotGestureRecognizer;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)screenshotGesture:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsCombo();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [v4 state];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Take screenshot: %d", v6, 8u);
  }

  if ([v4 state] == 3)
  {
    [(SBCombinationHardwareButtonActions *)self->_buttonActions performTakeScreenshotAction];
  }
}

- (void)sosGesture:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 latestPressType];
  v6 = [v4 latestPressPhase];
  v7 = [v4 state];
  v8 = SBLogButtonsCombo();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109632;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SOS button gesture: press type=%d, press phase=%d, recognizer state=%d", &v14, 0x14u);
  }

  [v4 latestPressTimestamp];
  v10 = v9;
  if ((BSFloatIsZero() & 1) == 0)
  {
    if (v5 == 104)
    {
      if (v7 == 3)
      {
        sosLockGestureObserver = self->_sosLockGestureObserver;
        if (sosLockGestureObserver)
        {
          [(SBSOSLockGestureObserver *)sosLockGestureObserver registerPressUpWithTimestamp:v10];
        }

        goto LABEL_10;
      }

      if (v7 == 1)
      {
        v11 = self->_sosLockGestureObserver;
        if (v11)
        {
          [(SBSOSLockGestureObserver *)v11 registerPressDownWithTimestamp:v10];
        }

LABEL_10:
        if ((v6 - 3) < 2)
        {
          [(SBCombinationHardwareButton *)self sosGesture:v5];
        }

        else if (v6 == 2 || !v6)
        {
          [(SBCombinationHardwareButton *)self sosGesture:v5];
        }

        else
        {
          v12 = SBLogButtonsCombo();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 67109120;
            v15 = v6;
            _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Unhandled claw gesture button press phase: %d.", &v14, 8u);
          }
        }

        goto LABEL_16;
      }
    }

    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      [(SBCombinationHardwareButton *)self sosGesture:v7];
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_16:
}

- (void)shutdownGesture:(id)a3
{
  if ([a3 state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_lockHardwareButton);
    [WeakRetained cancelLongPress];

    buttonActions = self->_buttonActions;

    [(SBCombinationHardwareButtonActions *)buttonActions performPresentPowerDownTransientOverlayAction];
  }
}

- (void)cancelHardwareButtonPress
{
  if ([(SBLongPressGestureRecognizer *)self->_shutdownGestureRecognizer isEnabled])
  {
    [(SBLongPressGestureRecognizer *)self->_shutdownGestureRecognizer setEnabled:0];
    [(SBLongPressGestureRecognizer *)self->_shutdownGestureRecognizer setEnabled:1];
  }

  if ([(SBClickGestureRecognizer *)self->_screenshotGestureRecognizer isEnabled])
  {
    [(SBClickGestureRecognizer *)self->_screenshotGestureRecognizer setEnabled:0];
    screenshotGestureRecognizer = self->_screenshotGestureRecognizer;

    [(SBClickGestureRecognizer *)screenshotGestureRecognizer setEnabled:1];
  }
}

- (void)_setScreenshotDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  BSDispatchQueueAssertMain();
  if (!v7)
  {
    [SBCombinationHardwareButton _setScreenshotDisabled:a2 forReason:self];
  }

  v8 = SBLogButtonsCombo();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NSMutableDictionary *)self->_screenshotDisableAssertions allKeys];
    *buf = 67109634;
    *v29 = v4;
    *&v29[4] = 2114;
    *&v29[6] = v7;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Setting SS disabled: %{BOOL}u, reason: %{public}@, current assertions: %{public}@", buf, 0x1Cu);
  }

  screenshotDisableAssertions = self->_screenshotDisableAssertions;
  if (!v4)
  {
    v15 = [(NSMutableDictionary *)screenshotDisableAssertions objectForKeyedSubscript:v7];
    v16 = SBLogButtonsCombo();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 138543362;
        *v29 = v7;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Invalidating SS, reason: %{public}@", buf, 0xCu);
      }

      [v15 invalidate];
    }

    else
    {
      if (v17)
      {
        *buf = 138543362;
        *v29 = v7;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "No SS disable assertion found, reason: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_11;
  }

  if (!screenshotDisableAssertions)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_screenshotDisableAssertions;
    self->_screenshotDisableAssertions = v11;

    screenshotDisableAssertions = self->_screenshotDisableAssertions;
  }

  v13 = [(NSMutableDictionary *)screenshotDisableAssertions objectForKeyedSubscript:v7];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = SBLogButtonsCombo();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v29 = v7;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SS gesture already disabled, reason: %{public}@", buf, 0xCu);
    }

LABEL_11:

    goto LABEL_22;
  }

  objc_initWeak(&location, self);
  v18 = objc_alloc(MEMORY[0x277CF0CE8]);
  v19 = MEMORY[0x277D85CD0];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __64__SBCombinationHardwareButton__setScreenshotDisabled_forReason___block_invoke;
  v25 = &unk_2783A9070;
  objc_copyWeak(&v26, &location);
  v20 = [v18 initWithIdentifier:@"ScreenshotDisable" forReason:v7 queue:MEMORY[0x277D85CD0] invalidationBlock:&v22];

  [(NSMutableDictionary *)self->_screenshotDisableAssertions setObject:v20 forKeyedSubscript:v7, v22, v23, v24, v25];
  v21 = SBLogButtonsCombo();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v29 = v7;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Disabling SS gesture recognizer, reason: %{public}@", buf, 0xCu);
  }

  [(SBClickGestureRecognizer *)self->_screenshotGestureRecognizer setEnabled:0];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
LABEL_22:
}

void __64__SBCombinationHardwareButton__setScreenshotDisabled_forReason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogButtonsCombo();
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 reason];
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SS assertion invalidated, reason: %{public}@", &v13, 0xCu);
    }

    v8 = WeakRetained[1];
    v9 = [v3 reason];
    [v8 removeObjectForKey:v9];

    v10 = [WeakRetained[1] count];
    v6 = SBLogButtonsCombo();
    v11 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        v12 = [WeakRetained[1] allKeys];
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SS gesture still disabled - current assertions: %{public}@", &v13, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Re-enabling SS gesture recognizer - no assertions", &v13, 2u);
      }

      [WeakRetained[4] setEnabled:1];
      v6 = WeakRetained[1];
      WeakRetained[1] = 0;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __64__SBCombinationHardwareButton__setScreenshotDisabled_forReason___block_invoke_cold_1(v3, v6);
  }
}

- (void)_backlightChanged:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __49__SBCombinationHardwareButton__backlightChanged___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D67A28]];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4 <= 0.0;
  }

  else
  {
    __49__SBCombinationHardwareButton__backlightChanged___block_invoke_cold_1(a1);
    v5 = 0;
  }

  v6 = SBLogButtonsCombo();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Backlight changed: newBacklightFactor=%@, disable SS=%{BOOL}u", &v7, 0x12u);
  }

  [*(a1 + 40) _setScreenshotDisabled:v5 forReason:@"Backlight"];
}

- (void)sosLockDidTriggerSOS:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAD78];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v8 triggerMechanism];

  v11 = SBLogButtonsCombo();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v9;
    v16 = 1024;
    v17 = v10;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SOS Lock Gesture triggered SOS with UUID: %@ and trigger mechanism: %d", &v14, 0x12u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_lockHardwareButton);
  }

  else
  {
    WeakRetained = 0;
  }

  v13 = [WeakRetained buttonActions];
  [v13 performSOSActionsWithUUID:v9 triggerMechanism:v10 completion:v7];

  [(SBSOSLockGestureObserver *)self->_sosLockGestureObserver noteDidBeginSOSWithUUID:v9];
}

- (void)sosLockTriggerDidBecomeActive:(id)a3
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_lockHardwareButton);
  }

  v4 = self;
  v3 = [(SBCombinationHardwareButton *)self buttonActions];
  [v3 performSOSGestureBeganActions];
}

- (void)sosLockTriggerDidBecomeInactive:(id)a3
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_lockHardwareButton);
  }

  v4 = self;
  v3 = [(SBCombinationHardwareButton *)self buttonActions];
  [v3 performSOSGestureEndedActions];
}

- (void)sosClawDidTriggerSOS:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(SBCombinationHardwareButton *)self _setScreenshotDisabled:1 forReason:@"SOSTriggered"];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = SBLogButtonsCombo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SOS Claw Gesture triggered SOS with UUID: %@", &v9, 0xCu);
  }

  if (self)
  {
    self = objc_loadWeakRetained(&self->_lockHardwareButton);
  }

  v8 = [(SBCombinationHardwareButton *)self buttonActions];
  [v8 performSOSActionsWithUUID:v6 triggerMechanism:3 completion:v5];
}

- (void)sosClawDidBecomeActive:(id)a3
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_lockHardwareButton);
  }

  v4 = self;
  [(SBCombinationHardwareButton *)self cancelLongPress];
  v3 = [(SBCombinationHardwareButton *)v4 buttonActions];
  [v3 performSOSGestureBeganActions];
}

- (void)sosClawDidBecomeInactive:(id)a3
{
  [(SBCombinationHardwareButton *)self _setScreenshotDisabled:0 forReason:@"SOSTriggered"];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_lockHardwareButton);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = WeakRetained;
  v5 = [WeakRetained buttonActions];
  [v5 performSOSGestureEndedActions];
}

- (id)homeHardwareButton
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 5);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setHomeHardwareButton:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 5, a2);
  }

  return result;
}

- (id)volumeHardwareButton
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 7);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setVolumeHardwareButton:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 7, a2);
  }

  return result;
}

- (id)proximitySensorManager
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 8);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setProximitySensorManager:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 8, a2);
  }

  return result;
}

- (id)backlightController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 9);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setBacklightController:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 9, a2);
  }

  return result;
}

- (uint64_t)sosGesture:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = a1[11];
  }

  return [a1 noteButtonPress:a2 isDown:0];
}

- (uint64_t)sosGesture:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = a1[11];
  }

  return [a1 noteButtonPress:a2 isDown:1];
}

- (uint64_t)sosGesture:(uint64_t)a1 .cold.3(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = SBLogButtonsCombo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SOS button gesture reset due to recognizer canceled or failed: %d", v7, 8u);
  }

  if (a1)
  {
    v5 = *(a1 + 88);
  }

  else
  {
    v5 = 0;
  }

  return [v5 noteGestureReset];
}

- (void)_setScreenshotDisabled:(uint64_t)a1 forReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCombinationHardwareButton.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

void __64__SBCombinationHardwareButton__setScreenshotDisabled_forReason___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 reason];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SS gesture assertion invalidated but strongSelf is nil, reason: %{public}@", &v4, 0xCu);
}

void __49__SBCombinationHardwareButton__backlightChanged___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"SBCombinationHardwareButton.m" lineNumber:445 description:@"Backlight notification received with nil newBacklightFactor"];

  v3 = SBLogButtonsCombo();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_ERROR, "Backlight notification received with nil newBacklightFactor", v4, 2u);
  }
}

@end