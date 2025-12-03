@interface SBAmbientWirelessChargingIdleTimer
- (SBAmbientWirelessChargingIdleTimer)initWithAmbientPresentationController:(id)controller screenSleepCoordinator:(id)coordinator uiController:(id)uiController;
- (id)_backlightController;
- (void)_handleAttentionLost:(id)lost;
- (void)_noteQiPowerStatusChanged;
- (void)_noteSpringBoardBootComplete;
- (void)_reconfigureAttentionClient;
- (void)_setAmbientPresented:(BOOL)presented;
- (void)_setAttentionClientActive:(BOOL)active;
- (void)_updateIdleTimerEnablement;
- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source;
@end

@implementation SBAmbientWirelessChargingIdleTimer

- (SBAmbientWirelessChargingIdleTimer)initWithAmbientPresentationController:(id)controller screenSleepCoordinator:(id)coordinator uiController:(id)uiController
{
  v31[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  uiControllerCopy = uiController;
  v30.receiver = self;
  v30.super_class = SBAmbientWirelessChargingIdleTimer;
  v11 = [(SBAmbientWirelessChargingIdleTimer *)&v30 init];
  if (v11)
  {
    v12 = +[SBDefaults localDefaults];
    ambientDefaults = [v12 ambientDefaults];
    ambientTestingDefaults = v11->_ambientTestingDefaults;
    v11->_ambientTestingDefaults = ambientDefaults;

    [controllerCopy addObserver:v11];
    -[SBAmbientWirelessChargingIdleTimer _setAmbientPresented:](v11, "_setAmbientPresented:", [controllerCopy isPresented]);
    objc_storeStrong(&v11->_screenSleepCoordinator, coordinator);
    objc_storeStrong(&v11->_uiController, uiController);
    v15 = objc_alloc_init(MEMORY[0x277CEF760]);
    attentionClient = v11->_attentionClient;
    v11->_attentionClient = v15;

    [(SBAmbientWirelessChargingIdleTimer *)v11 _reconfigureAttentionClient];
    objc_initWeak(&location, v11);
    v17 = v11->_ambientTestingDefaults;
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"qiChargingIdleTimerDuration"];
    v31[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v20 = MEMORY[0x277D85CD0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __112__SBAmbientWirelessChargingIdleTimer_initWithAmbientPresentationController_screenSleepCoordinator_uiController___block_invoke;
    v27[3] = &unk_2783A8C68;
    objc_copyWeak(&v28, &location);
    v21 = [(SBAmbientDefaults *)v17 observeDefaults:v19 onQueue:MEMORY[0x277D85CD0] withBlock:v27];

    v22 = v11->_attentionClient;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __112__SBAmbientWirelessChargingIdleTimer_initWithAmbientPresentationController_screenSleepCoordinator_uiController___block_invoke_2;
    v25[3] = &unk_2783A9180;
    objc_copyWeak(&v26, &location);
    [(AWAttentionAwarenessClient *)v22 setEventHandlerWithQueue:MEMORY[0x277D85CD0] block:v25];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__noteSpringBoardBootComplete name:@"SBBootCompleteNotification" object:0];
    [defaultCenter addObserver:v11 selector:sel__noteQiPowerStatusChanged name:@"SBUIQiPowerStatusChangedNotification" object:0];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __112__SBAmbientWirelessChargingIdleTimer_initWithAmbientPresentationController_screenSleepCoordinator_uiController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reconfigureAttentionClient];
}

void __112__SBAmbientWirelessChargingIdleTimer_initWithAmbientPresentationController_screenSleepCoordinator_uiController___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 eventMask])
  {
    v3 = objc_opt_class();
    v4 = v8;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _handleAttentionLost:v6];
    }
  }
}

- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = SBLogAmbientDeviceState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
    v9 = SBBacklightStateDescription(state);
    v10 = 138543618;
    v11 = succinctDescription;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: backlight state changed to %{public}@", &v10, 0x16u);
  }

  [(SBAmbientWirelessChargingIdleTimer *)self _updateIdleTimerEnablement];
}

- (void)_noteSpringBoardBootComplete
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogAmbientDeviceState();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
    v5 = 138543362;
    v6 = succinctDescription;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: got notification that SpringBoard boot completed", &v5, 0xCu);
  }

  [(SBAmbientWirelessChargingIdleTimer *)self _updateIdleTimerEnablement];
}

- (void)_noteQiPowerStatusChanged
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogAmbientDeviceState();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
    v5 = 138543362;
    v6 = succinctDescription;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: got notification that Qi power status changed", &v5, 0xCu);
  }

  [(SBAmbientWirelessChargingIdleTimer *)self _updateIdleTimerEnablement];
}

- (id)_backlightController
{
  v11 = *MEMORY[0x277D85DE8];
  lazy_backlightController = self->_lazy_backlightController;
  if (!lazy_backlightController)
  {
    v4 = +[SBBacklightController sharedInstanceIfExists];
    v5 = self->_lazy_backlightController;
    self->_lazy_backlightController = v4;

    [(SBBacklightController *)self->_lazy_backlightController addObserver:self];
    if (self->_lazy_backlightController)
    {
      v6 = SBLogAmbientDeviceState();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
        v9 = 138543362;
        v10 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: got backlight controller instance", &v9, 0xCu);
      }

      lazy_backlightController = self->_lazy_backlightController;
    }

    else
    {
      lazy_backlightController = 0;
    }
  }

  return lazy_backlightController;
}

- (void)_setAmbientPresented:(BOOL)presented
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_ambientPresented != presented)
  {
    presentedCopy = presented;
    self->_ambientPresented = presented;
    v5 = SBLogAmbientDeviceState();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
      v7 = 138543618;
      v8 = succinctDescription;
      v9 = 1024;
      v10 = presentedCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: ambientPresented=%{BOOL}u", &v7, 0x12u);
    }

    [(SBAmbientWirelessChargingIdleTimer *)self _updateIdleTimerEnablement];
  }
}

- (void)_updateIdleTimerEnablement
{
  v25 = *MEMORY[0x277D85DE8];
  isConnectedToQiPower = [(SBUIController *)self->_uiController isConnectedToQiPower];
  _backlightController = [(SBAmbientWirelessChargingIdleTimer *)self _backlightController];
  screenIsOn = [_backlightController screenIsOn];

  v8 = self->_ambientPresented && screenIsOn != 0 && isConnectedToQiPower && self->_enabled;
  v9 = SBLogAmbientDeviceState();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
    enabled = self->_enabled;
    ambientPresented = self->_ambientPresented;
    v13 = 138544642;
    v14 = succinctDescription;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = enabled;
    v19 = 1024;
    v20 = isConnectedToQiPower;
    v21 = 1024;
    v22 = screenIsOn;
    v23 = 1024;
    v24 = ambientPresented;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Wireless charging idle timer requested = %{BOOL}d [ enabled:%{BOOL}d ; isOnQiPower:%{BOOL}d ; screenIsOn:%{BOOL}d ; ambientPresented:%{BOOL}d ]", &v13, 0x2Au);
  }

  [(SBAmbientWirelessChargingIdleTimer *)self _setAttentionClientActive:v8];
}

- (void)_setAttentionClientActive:(BOOL)active
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_attentionClientActive != active)
  {
    activeCopy = active;
    self->_attentionClientActive = active;
    v5 = SBLogAmbientDeviceState();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (activeCopy)
    {
      if (v6)
      {
        succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
        v9 = 138543362;
        v10 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Resuming attention client", &v9, 0xCu);
      }

      [(AWAttentionAwarenessClient *)self->_attentionClient resumeWithError:0];
    }

    else
    {
      if (v6)
      {
        succinctDescription2 = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
        v9 = 138543362;
        v10 = succinctDescription2;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Suspending attention client", &v9, 0xCu);
      }

      [(AWAttentionAwarenessClient *)self->_attentionClient suspendWithError:0];
    }
  }
}

- (void)_reconfigureAttentionClient
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEF768]);
  [v3 setIdentifier:@"com.apple.SpringBoard.AmbientWirelessCharging"];
  [v3 setEventMask:3967];
  [v3 setAttentionLostEventMask:0];
  [(SBAmbientDefaults *)self->_ambientTestingDefaults qiChargingIdleTimerDuration];
  [v3 setAttentionLostTimeout:?];
  v4 = SBLogAmbientDeviceState();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
    v6 = 138543618;
    v7 = succinctDescription;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating attention client with configuration %{public}@", &v6, 0x16u);
  }

  [(AWAttentionAwarenessClient *)self->_attentionClient setConfiguration:v3];
}

- (void)_handleAttentionLost:(id)lost
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = SBLogAmbientDeviceState();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
    attentionClientActive = self->_attentionClientActive;
    v9 = 138543618;
    v10 = succinctDescription;
    v11 = 1024;
    v12 = attentionClientActive;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Attention lost. _attentionClientActive = %{BOOL}u", &v9, 0x12u);
  }

  if (self->_attentionClientActive)
  {
    v7 = SBLogAmbientDeviceState();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription2 = [(SBAmbientWirelessChargingIdleTimer *)self succinctDescription];
      v9 = 138543362;
      v10 = succinctDescription2;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Turning screen off for inactivity while on Qi charger", &v9, 0xCu);
    }

    [(SBScreenSleepCoordinator *)self->_screenSleepCoordinator sleepAndLockUIFromSource:13 completion:0];
  }
}

@end