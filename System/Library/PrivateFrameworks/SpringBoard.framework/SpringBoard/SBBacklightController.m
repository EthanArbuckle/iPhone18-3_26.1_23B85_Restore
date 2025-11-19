@interface SBBacklightController
+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3;
- (BOOL)screenIsDim;
- (BOOL)screenIsOn;
- (BOOL)shouldTurnOnScreenForBacklightSource:(int64_t)a3;
- (SBBacklightController)initWithContextProvider:(id)a3;
- (float)_factorToPublishForBacklightState:(int64_t)a3;
- (int64_t)backlightState;
- (void)_noteDigitizerDisabled:(BOOL)a3 tapToWakeEnabled:(BOOL)a4 disabledDigitizerMode:(int64_t)a5;
- (void)_notifyObserversDidAnimateToFactor:(float)a3 source:(int64_t)a4;
- (void)_notifyObserversDidTransitionToBacklightState:(int64_t)a3 source:(int64_t)a4;
- (void)_notifyObserversWillAnimateToFactor:(float)a3 source:(int64_t)a4;
- (void)_notifyObserversWillTransitionToBacklightState:(int64_t)a3 source:(int64_t)a4;
- (void)_performBacklightChangeRequest:(id)a3 completion:(id)a4;
- (void)_performDeferredBacklightRampWorkWithInfo:(id)a3;
- (void)_startFadeOutAnimationFromLockSource:(int)a3;
- (void)_undimFromSource:(int64_t)a3;
- (void)_updateHIDUISensorModeForBacklightState:(int64_t)a3 source:(int64_t)a4;
- (void)_userInterfaceStyleChanged;
- (void)addObserver:(id)a3;
- (void)allowIdleSleep;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)backlightHost:(id)a3 willTransitionToState:(int64_t)a4 forEvent:(id)a5;
- (void)completeStartup;
- (void)preventIdleSleep;
- (void)preventIdleSleepForNumberOfSeconds:(float)a3;
- (void)removeObserver:(id)a3;
- (void)setBacklightState:(int64_t)a3 source:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)turnOnScreenFullyWithBacklightSource:(int64_t)a3;
@end

@implementation SBBacklightController

- (BOOL)screenIsDim
{
  v2 = [(SBBacklightControllerContextProviding *)self->_contextProvider blsBacklight];
  v3 = [v2 backlightState] != 2;

  return v3;
}

- (BOOL)screenIsOn
{
  v2 = [(SBBacklightControllerContextProviding *)self->_contextProvider blsBacklight];
  v3 = [v2 backlightState];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (int64_t)backlightState
{
  v2 = [(SBBacklightControllerContextProviding *)self->_contextProvider blsBacklight];
  v3 = [v2 backlightState];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_21F8A8A40[v3];
  }

  return v4;
}

- (void)preventIdleSleep
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_allowIdleSleep object:0];

  SBWorkspaceSetPreventIdleSleepForReason(1, @"backlight");
}

+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3
{
  if (a3 && _sharedInstanceCreateIfNeeded__onceToken_0 != -1)
  {
    +[SBBacklightController _sharedInstanceCreateIfNeeded:];
  }

  v4 = _sharedInstanceCreateIfNeeded__controller;

  return v4;
}

uint64_t __55__SBBacklightController__sharedInstanceCreateIfNeeded___block_invoke()
{
  kdebug_trace();
  v0 = [SBBacklightController alloc];
  v1 = objc_opt_new();
  v2 = [(SBBacklightController *)v0 initWithContextProvider:v1];
  v3 = _sharedInstanceCreateIfNeeded__controller;
  _sharedInstanceCreateIfNeeded__controller = v2;

  return kdebug_trace();
}

- (SBBacklightController)initWithContextProvider:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SBBacklightController;
  v6 = [(SBBacklightController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextProvider, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    informers = v7->_informers;
    v7->_informers = v8;

    v10 = [(SBBacklightControllerContextProviding *)v7->_contextProvider blsBacklight];
    [v10 addObserver:v7];
    v11 = [SBDisplayLinkController alloc];
    v12 = [MEMORY[0x277CD9E40] mainDisplay];
    v13 = [(SBDisplayLinkController *)v11 initWithCADisplay:v12 backlight:v10];
    mainDisplayLinkController = v7->_mainDisplayLinkController;
    v7->_mainDisplayLinkController = v13;

    v7->_lastReportedWillTransitionState = 0;
    v15 = objc_alloc_init(MEMORY[0x277CFD390]);
    brightnessSystemClient = v7->_brightnessSystemClient;
    v7->_brightnessSystemClient = v15;

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v7 selector:sel__userInterfaceStyleChanged name:*MEMORY[0x277D77250] object:0];

    [(SBBacklightController *)v7 _userInterfaceStyleChanged];
    v18 = +[SBDefaults localDefaults];
    v19 = [v18 alwaysOnDefaults];
    alwaysOnDefaults = v7->_alwaysOnDefaults;
    v7->_alwaysOnDefaults = v19;
  }

  return v7;
}

- (void)completeStartup
{
  v3 = [(SBBacklightControllerContextProviding *)self->_contextProvider HIDUISensorModeController];
  v4 = [v3 addStartupHIDLockAssertion];

  [(SBBacklightController *)self setCurrentHIDUISensorModeAssertion:v4];
  [(SBBacklightController *)self _updateHIDUISensorModeForBacklightState:[(SBBacklightController *)self backlightState] source:15];
}

- (void)_undimFromSource:(int64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [(SBBacklightController *)self screenIsOn];
  v6 = v5;
  v7 = 0;
  if (a3 != 13 && !v5)
  {
    v7 = _SBLazyMutableSetAddString(0, @"only prox can use _undimFromSource when the screen is off");
  }

  if ([(SBBacklightController *)self isPendingScreenUnblankAfterCACommit])
  {
    v8 = _SBLazyMutableSetAddString(v7, @"we're pending a screen unblank");

    v7 = v8;
  }

  v9 = [(SBBacklightControllerContextProviding *)self->_contextProvider proximitySensorManager];
  v10 = [v9 isObjectInProximity];

  v11 = a3 == 8 && v6;
  if (!v11 && v10)
  {
    v12 = _SBLazyMutableSetAddString(v7, @"an object is in proximity");

    v7 = v12;
  }

  if (![(SBBacklightController *)self screenIsOn])
  {
    v13 = [(SBBacklightControllerContextProviding *)self->_contextProvider lockScreenManager];
    v14 = [v13 isWaitingToLockUI];

    if (v14)
    {
      v15 = _SBLazyMutableSetAddString(v7, @"we're in the middle of locking the UI");

      v7 = v15;
    }
  }

  v16 = [(SBBacklightControllerContextProviding *)self->_contextProvider screenWakeAnimationController];
  v17 = [v16 isSleepAnimationInProgress];

  if (v17)
  {
    v18 = _SBLazyMutableSetAddString(v7, @"we're in the middle of sleep animation");

    v7 = v18;
  }

  v19 = [v7 count];
  v20 = SBLogBacklight();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v22 = SBSBacklightChangeSourceDescription(a3);
      v23 = [MEMORY[0x277CF0C08] descriptionForRootObject:v7];
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "_undimFromSource:(%{public}@): ignoring request because %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v21)
    {
      v24 = SBSBacklightChangeSourceDescription(a3);
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "_undimFromSource:(%{public}@): setting backlight factor to 1.0", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    v26 = *MEMORY[0x277D67A08];
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, *MEMORY[0x277D67A10]}];
    v30 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v25 postNotificationName:v26 object:v28];

    [(SBBacklightController *)self setBacklightState:1 source:a3];
  }
}

- (void)_performDeferredBacklightRampWorkWithInfo:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SBBacklightPreFadeBacklightActivationCompleteNotification" object:0];

  v5 = [v3 objectForKey:@"sendWillTurnOnNotification"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D67A38];
    v11 = *MEMORY[0x277D67A10];
    v9 = [v3 objectForKey:@"backlightChangeSource"];
    v12[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v7 postNotificationName:v8 object:0 userInfo:v10];
  }
}

- (void)turnOnScreenFullyWithBacklightSource:(int64_t)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = [(SBBacklightControllerContextProviding *)self->_contextProvider lockScreenManager];
  if (([v5 isUILocked] & 1) == 0 && !objc_msgSend(v5, "isLockScreenActive"))
  {
LABEL_8:
    [(SBBacklightController *)self setBacklightState:1 source:a3];
    goto LABEL_9;
  }

  v6 = [(SBBacklightController *)self screenIsOn];
  v7 = [(SBBacklightControllerContextProviding *)self->_contextProvider screenWakeAnimationController];
  v8 = [v7 isWakeAnimationInProgress];

  if (!v8)
  {
    if (!v6)
    {
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = *MEMORY[0x277D67A38];
      v17 = *MEMORY[0x277D67A10];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v18 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [v13 postNotificationName:v14 object:0 userInfo:v16];
    }

    goto LABEL_8;
  }

  if (![(SBBacklightController *)self screenIsOn])
  {
    v9 = [(SBBacklightControllerContextProviding *)self->_contextProvider wakeLogger];
    [v9 wakeDidBegin:SBWakeLoggerSourceFromBacklightChangeSource()];

    [(SBBacklightController *)self setBacklightState:1 source:a3 animated:1 completion:0];
    v19[0] = @"sendWillTurnOnNotification";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:!v6];
    v19[1] = @"backlightChangeSource";
    v20[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(SBBacklightController *)self _performDeferredBacklightRampWorkWithInfo:v12];
  }

LABEL_9:
}

- (BOOL)shouldTurnOnScreenForBacklightSource:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x2F && ((1 << a3) & 0x80E7E01122FCLL) != 0 || !+[SBSpuriousScreenUndimmingAssertion isAnyActive])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_informers;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (([v10 shouldTurnOnScreenForBacklightSource:{a3, v14}] & 1) == 0)
          {
            v12 = SBLogBacklight();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v19 = v10;
              _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Should not turn the screen on due to informer: %{public}@", buf, 0xCu);
            }

            goto LABEL_15;
          }
        }

        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
  }

  else
  {
    v5 = SBLogBacklight();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, &v5->super, OS_LOG_TYPE_DEFAULT, "Should not turn the screen on due to outstanding spurious screen undimming assertions", buf, 2u);
    }

LABEL_15:
    v11 = 0;
  }

  return v11;
}

- (void)_updateHIDUISensorModeForBacklightState:(int64_t)a3 source:(int64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = SBLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 3)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_2783C3E78[a3 - 1];
    }

    v36 = 138543362;
    v37 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "_updateHIDUISensorModeForBacklightState: %{public}@", &v36, 0xCu);
  }

  v10 = [(SBBacklightControllerContextProviding *)self->_contextProvider HIDUISensorModeController];
  v11 = [v10 sensorModeTransactionForBacklightChangeSource:a4];
  v12 = self->_currentHIDUISensorModeAssertion;
  v13 = self->_currentDisplayStateAssertion;
  currentDisplayStateAssertion = self->_currentDisplayStateAssertion;
  self->_currentDisplayStateAssertion = 0;

  if ((a3 - 1) <= 1)
  {
    currentHIDUISensorModeAssertion = self->_currentHIDUISensorModeAssertion;
    self->_currentHIDUISensorModeAssertion = 0;

    v16 = [v10 assertDisplayState:2 source:a4 reason:@"backlight-on"];
    v17 = self->_currentDisplayStateAssertion;
    self->_currentDisplayStateAssertion = v16;

    v18 = 0;
    v19 = 0;
LABEL_27:
    [(SBBacklightController *)self _noteDigitizerDisabled:self->_currentHIDUISensorModeAssertion != 0 tapToWakeEnabled:v19 disabledDigitizerMode:v18];
    [(BSInvalidatable *)v13 invalidate];
    [(BSInvalidatable *)v12 invalidate];
    [v11 invalidate];

    return;
  }

  v20 = [(SBBacklightControllerContextProviding *)self->_contextProvider idleTimerDefaults];
  v21 = [v20 supportTapToWake];

  if (a4 == 13)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  if (a3 == 3)
  {
    v29 = [(SBAlwaysOnDefaults *)self->_alwaysOnDefaults enableTapToInteract];
    v30 = 2;
    if (v29)
    {
      v30 = 3;
    }

    if (v22)
    {
      v18 = v30;
    }

    else
    {
      v18 = 4;
    }

    v31 = [v10 suspendProximityDetection:a4 != 13 disableDigitizer:v18 source:a4 reason:@"backlight-inactive"];
    v32 = self->_currentHIDUISensorModeAssertion;
    self->_currentHIDUISensorModeAssertion = v31;

    v25 = v10;
    v26 = 3;
    v27 = a4;
    v28 = @"backlight-inactive";
    goto LABEL_25;
  }

  if (a3 == 4)
  {
    if (v22)
    {
      v18 = 1;
    }

    else
    {
      v18 = 4;
    }

    v23 = [v10 suspendProximityDetection:a4 != 13 disableDigitizer:v18 source:a4 reason:@"backlight-off"];
    v24 = self->_currentHIDUISensorModeAssertion;
    self->_currentHIDUISensorModeAssertion = v23;

    v25 = v10;
    v26 = 1;
    v27 = a4;
    v28 = @"backlight-off";
LABEL_25:
    v33 = [v25 assertDisplayState:v26 source:v27 reason:v28];
    v34 = self->_currentDisplayStateAssertion;
    self->_currentDisplayStateAssertion = v33;

    goto LABEL_26;
  }

  if (a3)
  {
    v18 = 0;
LABEL_26:
    v19 = (v18 - 1) < 3;
    goto LABEL_27;
  }

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"this should be unreachable"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(SBBacklightController *)a2 _updateHIDUISensorModeForBacklightState:v35 source:?];
  }

  [v35 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setBacklightState:(int64_t)a3 source:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v67 = *MEMORY[0x277D85DE8];
  v11 = a6;
  self->_lastBacklightChangeSource = a4;
  v12 = [(SBBacklightController *)self backlightState];
  if (v12 == a3)
  {
    if ((a3 - 1) <= 1)
    {
      [(SBBacklightController *)self _updateHIDUISensorModeForBacklightState:a3 source:a4];
    }

    if (v11)
    {
      v11[2](v11);
    }

    goto LABEL_27;
  }

  v13 = v12;
  [(SBBacklightController *)self _factorToPublishForBacklightState:v12];
  v15 = v14;
  [(SBBacklightController *)self _factorToPublishForBacklightState:a3];
  v17 = v16;
  self->_backlightState = a3;
  v18 = [MEMORY[0x277D0AAA0] sharedInstance];
  v19 = SBSDisplayLayoutBacklightTransitionReasonForBacklightChangeSource();
  v49 = [v18 transitionAssertionWithReason:v19];

  v50 = v18;
  [v18 setBacklightLevel:(v17 * 100.0)];
  v20 = SBLogBacklight();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v47 = a2;
    if ((a3 - 1) > 3)
    {
      v21 = @"unknown";
    }

    else
    {
      v21 = off_2783C3E78[a3 - 1];
    }

    v22 = SBSBacklightChangeSourceDescription(a4);
    *buf = 138544130;
    v60 = v21;
    v61 = 1024;
    v62 = v6;
    v63 = 2048;
    v64 = a4;
    v65 = 2114;
    v66 = v22;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Animating backlight to state %{public}@ animated:%{BOOL}u source:%ld (%{public}@)", buf, 0x26u);

    a2 = v47;
  }

  *&v23 = v17;
  [(SBBacklightController *)self _notifyObserversWillAnimateToFactor:a4 source:v23];
  [(SBBacklightController *)self _notifyObserversWillTransitionToBacklightState:a3 source:a4];
  v48 = a3 - 1;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        a3 = 0;
      }
    }

    else
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"SBBacklightController.m" lineNumber:463 description:@"State transitions to SBBacklightStateUnknown are not allowed"];

      a3 = 1;
    }

    goto LABEL_21;
  }

  if (a3 == 2)
  {
LABEL_21:
    [(BLSAssertion *)self->_disableAODAssertion invalidate];
    disableAODAssertion = self->_disableAODAssertion;
    self->_disableAODAssertion = 0;
    goto LABEL_22;
  }

  if (a3 != 4)
  {
    a3 = 0;
    goto LABEL_21;
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = SBSBacklightChangeSourceDescription(a4);
  disableAODAssertion = [v24 stringWithFormat:@"Disable AOT for backlight state Off from source %@", v25];

  v27 = MEMORY[0x277CF0868];
  v28 = [MEMORY[0x277CF08F8] disableAlwaysOn];
  v58 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v30 = [v27 acquireWithExplanation:disableAODAssertion observer:0 attributes:v29];

  [(BLSAssertion *)self->_disableAODAssertion invalidate];
  v31 = self->_disableAODAssertion;
  self->_disableAODAssertion = v30;

  a3 = 0;
LABEL_22:

  v33 = objc_alloc(MEMORY[0x277CF0890]);
  v34 = SBSBacklightChangeSourceDescription(a4);
  v35 = mach_continuous_time();
  v36 = [v33 initWithRequestedActivityState:a3 explanation:v34 timestamp:v35 sourceEvent:BLSBacklightChangeSourceEventForSBSBacklightChangeSource(a4) sourceEventMetadata:0];

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __70__SBBacklightController_setBacklightState_source_animated_completion___block_invoke;
  v51[3] = &unk_2783C3E58;
  v51[4] = self;
  v53 = a4;
  v54 = v13;
  v55 = v17;
  v52 = v11;
  [(SBBacklightController *)self _performBacklightChangeRequest:v36 completion:v51];
  v37 = [MEMORY[0x277D67C98] sharedInstance];
  [v37 setLastBacklightChangeSource:self->_lastBacklightChangeSource];

  v38 = [MEMORY[0x277CCAB98] defaultCenter];
  v39 = *MEMORY[0x277D67A20];
  v56[0] = *MEMORY[0x277D67A10];
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v57[0] = v40;
  v56[1] = *MEMORY[0x277D67A30];
  LODWORD(v41) = v15;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v57[1] = v42;
  v56[2] = *MEMORY[0x277D67A28];
  *&v43 = v17;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v57[2] = v44;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
  [v38 postNotificationName:v39 object:0 userInfo:v45];

  if (a4 != 13)
  {
    if (v48 >= 2)
    {
      BKSDisplayBrightnessRestoreSystemBrightness();
      LODWORD(v46) = 1.0;
      [(SBBacklightController *)self preventIdleSleepForNumberOfSeconds:v46];
    }

    else
    {
      [(SBBacklightController *)self preventIdleSleep];
    }
  }

  [v49 invalidate];

LABEL_27:
}

uint64_t __70__SBBacklightController_setBacklightState_source_animated_completion___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ((a2 - 1) >= 2)
  {
    if (([*(a1 + 32) screenIsOn] & 1) == 0)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      v6 = *MEMORY[0x277D67A18];
      v11 = *MEMORY[0x277D67A10];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      v12[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [v5 postNotificationName:v6 object:0 userInfo:v8];

      [MEMORY[0x277D75D18] _beginSuspendingMotionEffectsForReason:@"SBSuspendMotionEffectsBecauseDisplayIsOff"];
    }
  }

  else if ((*(a1 + 56) - 1) >= 2)
  {
    [MEMORY[0x277D75D18] _recenterMotionEffects];
    [MEMORY[0x277D75D18] _endSuspendingMotionEffectsForReason:@"SBSuspendMotionEffectsBecauseDisplayIsOff"];
  }

  LODWORD(a3) = *(a1 + 64);
  [*(a1 + 32) _notifyObserversDidAnimateToFactor:*(a1 + 48) source:a3];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

  return [*(a1 + 32) _notifyObserversDidTransitionToBacklightState:a2 source:*(a1 + 48)];
}

- (void)_performBacklightChangeRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_backlightCompletion)
  {
    v8 = SBLogBacklight();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Calling backlight change completion due to new request", v15, 2u);
    }

    v9 = MEMORY[0x223D6F7F0](self->_backlightCompletion);
    backlightCompletion = self->_backlightCompletion;
    self->_backlightCompletion = 0;

    v9[2](v9, self->_backlightState);
  }

  v11 = [v7 copy];
  v12 = self->_backlightCompletion;
  self->_backlightCompletion = v11;

  v13 = [(SBBacklightControllerContextProviding *)self->_contextProvider blsBacklight];
  v14 = [v13 performChangeRequest:v6];
}

- (void)_startFadeOutAnimationFromLockSource:(int)a3
{
  v3 = *&a3;
  v4 = [(SBBacklightControllerContextProviding *)self->_contextProvider screenSleepCoordinator];
  [v4 sleepAndLockUIFromSource:v3 completion:0];
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  if (![(NSHashTable *)self->_observers containsObject:?])
  {
    observers = self->_observers;
    if (!observers)
    {
      v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v6 = self->_observers;
      self->_observers = v5;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v7];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:v4];
  }
}

- (float)_factorToPublishForBacklightState:(int64_t)a3
{
  result = -1.0;
  if ((a3 - 1) <= 3)
  {
    return flt_21F8A8A60[a3 - 1];
  }

  return result;
}

- (void)_notifyObserversWillAnimateToFactor:(float)a3 source:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          *&v13 = a3;
          [v12 backlightController:self willAnimateBacklightToFactor:a4 source:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_notifyObserversDidAnimateToFactor:(float)a3 source:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          *&v13 = a3;
          [v12 backlightController:self didAnimateBacklightToFactor:a4 source:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_notifyObserversWillTransitionToBacklightState:(int64_t)a3 source:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  self->_lastReportedWillTransitionState = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
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

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 backlightController:self willTransitionToBacklightState:a3 source:a4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_notifyObserversDidTransitionToBacklightState:(int64_t)a3 source:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_lastReportedWillTransitionState != a3)
  {
    [(SBBacklightController *)self _notifyObserversWillTransitionToBacklightState:a3 source:a4];
  }

  self->_lastReportedWillTransitionState = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
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

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 backlightController:self didTransitionToBacklightState:a3 source:a4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_noteDigitizerDisabled:(BOOL)a3 tapToWakeEnabled:(BOOL)a4 disabledDigitizerMode:(int64_t)a5
{
  v5 = a4;
  v6 = a3;
  v19 = *MEMORY[0x277D85DE8];
  self->_digitizerDisabled = a3;
  self->_tapToWakeEnabled = a4;
  self->_tapToWakeRequiresHitTestSuppression = a5 == 2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 backlightController:self didUpdateDigitizerDisabled:v6 tapToWakeEnabled:v5];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)allowIdleSleep
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_allowIdleSleep object:0];

  SBWorkspaceSetPreventIdleSleepForReason(0, @"backlight");
}

- (void)preventIdleSleepForNumberOfSeconds:(float)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(SBBacklightControllerContextProviding *)self->_contextProvider blsBacklight];
  v6 = [v5 backlightState];

  if (v6 <= 1)
  {
    [(SBBacklightController *)self preventIdleSleep];
    v8[0] = *MEMORY[0x277CBE738];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(SBBacklightController *)self performSelector:sel_allowIdleSleep withObject:0 afterDelay:v7 inModes:a3];
  }
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = SBLogBacklight();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBLSBacklightState();
    v9 = self->_backlightCompletion != 0;
    v15 = 138412546;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Backlight did complete update to state %@ with pending completion: %{BOOL}u", &v15, 0x12u);
  }

  if (self->_backlightCompletion)
  {
    v10 = SBLogBacklight();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Calling backlight change completion due to state update", &v15, 2u);
    }

    v11 = MEMORY[0x223D6F7F0](self->_backlightCompletion);
    backlightCompletion = self->_backlightCompletion;
    self->_backlightCompletion = 0;

    v13 = 0;
    if (a4 <= 3)
    {
      v13 = qword_21F8A8A40[a4];
    }

    v11[2](v11, v13);
  }

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 postNotificationName:@"SBBlankScreenStateChangeNotification" object:0];
}

- (void)backlightHost:(id)a3 willTransitionToState:(int64_t)a4 forEvent:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = SBLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromBLSBacklightState();
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "backlight host will transition to state %@", &v15, 0xCu);
  }

  if (a4 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_21F8A8A40[a4];
  }

  v11 = BLSBacklightChangeSourceEventForSBSBacklightChangeSource(self->_lastBacklightChangeSource);
  v12 = [v7 changeRequest];

  v13 = [v12 sourceEvent];
  if (v11 == v13)
  {
    lastBacklightChangeSource = self->_lastBacklightChangeSource;
  }

  else
  {
    lastBacklightChangeSource = 0;
  }

  [(SBBacklightController *)self _updateHIDUISensorModeForBacklightState:v10 source:lastBacklightChangeSource];
}

- (void)_userInterfaceStyleChanged
{
  v3 = [MEMORY[0x277D75CF0] sharedInstance];
  v4 = [v3 currentStyle];

  brightnessSystemClient = self->_brightnessSystemClient;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  [(BrightnessSystemClient *)brightnessSystemClient setProperty:v6 forKey:@"CBUIUserStyle"];
}

- (void)_updateHIDUISensorModeForBacklightState:(uint64_t)a3 source:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"SBBacklightController.m";
  v16 = 1024;
  v17 = 364;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end