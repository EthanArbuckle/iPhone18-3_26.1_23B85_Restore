@interface SBIdleTimerGlobalStateMonitor
+ (SBIdleTimerGlobalStateMonitor)sharedInstance;
- (id)_BOOLMonitorForProperty:(id)property inDefaults:(id)defaults fetchingWith:(id)with;
- (id)_init;
- (id)_initWithLocalDefaults:(id)defaults profileConnection:(id)connection pocketStateMonitor:(id)monitor uiController:(id)controller idleTimerService:(id)service thermalBlockProvider:(id)provider backlightController:(id)backlightController;
- (id)_stateCaptureDescription;
- (id)_timeIntervalMonitorForProperty:(id)property inDefaults:(id)defaults fetchingWith:(id)with;
- (void)_addStateCaptureHandlers;
- (void)_updateAutoDimDisabled;
- (void)_updateFaceDownOnTable;
- (void)_updateObserversForReason:(id)reason;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)idleTimerGlobalSettingMonitor:(id)monitor changedForReason:(id)reason;
- (void)idleTimerServiceTimeoutAssertionsDidChange:(id)change fromClient:(id)client;
- (void)removeObserver:(id)observer;
@end

@implementation SBIdleTimerGlobalStateMonitor

+ (SBIdleTimerGlobalStateMonitor)sharedInstance
{
  if (sharedInstance_onceToken_56 != -1)
  {
    +[SBIdleTimerGlobalStateMonitor sharedInstance];
  }

  v3 = sharedInstance_monitor_1;

  return v3;
}

void __47__SBIdleTimerGlobalStateMonitor_sharedInstance__block_invoke()
{
  v0 = [[SBIdleTimerGlobalStateMonitor alloc] _init];
  v1 = sharedInstance_monitor_1;
  sharedInstance_monitor_1 = v0;
}

- (id)_initWithLocalDefaults:(id)defaults profileConnection:(id)connection pocketStateMonitor:(id)monitor uiController:(id)controller idleTimerService:(id)service thermalBlockProvider:(id)provider backlightController:(id)backlightController
{
  v76[1] = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  connectionCopy = connection;
  monitorCopy = monitor;
  controllerCopy = controller;
  serviceCopy = service;
  providerCopy = provider;
  backlightControllerCopy = backlightController;
  v75.receiver = self;
  v75.super_class = SBIdleTimerGlobalStateMonitor;
  v20 = [(SBIdleTimerGlobalStateMonitor *)&v75 init];
  v21 = v20;
  if (v20)
  {
    v20->_observerLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_backlightController, backlightController);
    [(SBBacklightController *)v21->_backlightController addObserver:v21];
    objc_storeStrong(&v21->_idleTimerService, service);
    [serviceCopy setDelegate:v21];
    objc_storeStrong(&v21->_thermalBlockProvider, provider);
    [providerCopy addThermalObserver:v21];
    v21->_thermalBlocked = [providerCopy isThermalBlocked];
    objc_storeStrong(&v21->_localDefaults, defaults);
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dontLockEver"];
    securityDefaults = [defaultsCopy securityDefaults];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke;
    v73[3] = &unk_2783C1B30;
    v24 = defaultsCopy;
    v74 = v24;
    v25 = [(SBIdleTimerGlobalStateMonitor *)v21 _BOOLMonitorForProperty:v22 inDefaults:securityDefaults fetchingWith:v73];
    dontLockEver = v21->_dontLockEver;
    v21->_dontLockEver = v25;

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dontDimOrLockWhileConnectedToPower"];
    idleTimerDefaults = [v24 idleTimerDefaults];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_2;
    v71[3] = &unk_2783C1B58;
    v29 = v24;
    v72 = v29;
    v30 = [(SBIdleTimerGlobalStateMonitor *)v21 _BOOLMonitorForProperty:v27 inDefaults:idleTimerDefaults fetchingWith:v71];
    dontDimOrLockOnAC = v21->_dontDimOrLockOnAC;
    v21->_dontDimOrLockOnAC = v30;

    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableAttentionAwareness"];
    idleTimerDefaults2 = [v29 idleTimerDefaults];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_3;
    v69[3] = &unk_2783C1B58;
    v34 = v29;
    v70 = v34;
    v35 = [(SBIdleTimerGlobalStateMonitor *)v21 _BOOLMonitorForProperty:v32 inDefaults:idleTimerDefaults2 fetchingWith:v69];
    disableAttentionAwareness = v21->_disableAttentionAwareness;
    v21->_disableAttentionAwareness = v35;

    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"minimumLockscreenIdleTime"];
    idleTimerDefaults3 = [v34 idleTimerDefaults];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_4;
    v67[3] = &unk_2783C1B80;
    v39 = v34;
    v68 = v39;
    v40 = [(SBIdleTimerGlobalStateMonitor *)v21 _timeIntervalMonitorForProperty:v37 inDefaults:idleTimerDefaults3 fetchingWith:v67];
    minimumLockscreenIdleTime = v21->_minimumLockscreenIdleTime;
    v21->_minimumLockscreenIdleTime = v40;

    objc_initWeak(&location, v21);
    idleTimerDefaults4 = [v39 idleTimerDefaults];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableAutoDim"];
    v76[0] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
    v45 = MEMORY[0x277D85CD0];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_5;
    v64[3] = &unk_2783A8C68;
    objc_copyWeak(&v65, &location);
    v46 = [idleTimerDefaults4 observeDefaults:v44 onQueue:MEMORY[0x277D85CD0] withBlock:v64];

    [(SBIdleTimerGlobalStateMonitor *)v21 _updateAutoDimDisabled];
    v47 = [[_SBIdleTimerGlobalBoolSettingMonitor alloc] initWithLabel:@"BatterySaverMode" delegate:v21 updatingForNotification:@"SBBatterySaverModeDidChangeNotification" fetchingWith:&__block_literal_global_30_5];
    batterySaverModeMonitor = v21->_batterySaverModeMonitor;
    v21->_batterySaverModeMonitor = v47;

    v49 = [_SBIdleTimerGlobalBoolSettingMonitor alloc];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_7;
    v62[3] = &unk_2783ACE58;
    v63 = controllerCopy;
    v50 = [(_SBIdleTimerGlobalBoolSettingMonitor *)v49 initWithLabel:@"OnACPower" delegate:v21 updatingForNotification:@"SBUIACStatusChangedNotification" fetchingWith:v62];
    onACPowerMonitor = v21->_onACPowerMonitor;
    v21->_onACPowerMonitor = v50;

    v52 = [_SBIdleTimerGlobalNumericSettingMonitor alloc];
    v53 = *MEMORY[0x277D25CA0];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_8;
    v60[3] = &unk_2783C1BA8;
    v61 = connectionCopy;
    v54 = [(_SBIdleTimerGlobalNumericSettingMonitor *)v52 initWithLabel:@"AutoLockTimeout" delegate:v21 updatingForNotification:v53 fetchingWith:v60];
    autoLockTimeoutMonitor = v21->_autoLockTimeoutMonitor;
    v21->_autoLockTimeoutMonitor = v54;

    [monitorCopy addObserver:v21];
    v21->_pocketState = [monitorCopy pocketState];
    [(SBIdleTimerGlobalStateMonitor *)v21 _updateFaceDownOnTable];
    [(SBIdleTimerGlobalStateMonitor *)v21 _addStateCaptureHandlers];

    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);
  }

  return v21;
}

uint64_t __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) securityDefaults];
  v2 = [v1 dontLockEver];

  return v2;
}

uint64_t __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) idleTimerDefaults];
  v2 = [v1 dontDimOrLockWhileConnectedToPower];

  return v2;
}

uint64_t __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) idleTimerDefaults];
  v2 = [v1 disableAttentionAwareness];

  return v2;
}

double __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) idleTimerDefaults];
  [v1 minimumLockscreenIdleTime];
  v3 = v2;

  return v3;
}

void __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAutoDimDisabled];
}

id __164__SBIdleTimerGlobalStateMonitor__initWithLocalDefaults_profileConnection_pocketStateMonitor_uiController_idleTimerService_thermalBlockProvider_backlightController___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) effectiveValueForSetting:*MEMORY[0x277D25D78]];
  if ([v1 isEqualToNumber:&unk_283372140] && _AXSAttentionAwarenessFeaturesEnabled())
  {
    v2 = &unk_283372158;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

- (id)_init
{
  v3 = +[SBDefaults localDefaults];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = +[SBPocketStateMonitor sharedInstance];
  v6 = +[SBUIController sharedInstance];
  v7 = +[SBIdleTimerService sharedInstance];
  v8 = +[SBThermalController sharedInstance];
  v9 = +[SBBacklightController sharedInstance];
  v10 = [(SBIdleTimerGlobalStateMonitor *)self _initWithLocalDefaults:v3 profileConnection:mEMORY[0x277D262A0] pocketStateMonitor:v5 uiController:v6 idleTimerService:v7 thermalBlockProvider:v8 backlightController:v9];

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v5 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v6.receiver = self;
  v6.super_class = SBIdleTimerGlobalStateMonitor;
  [(SBIdleTimerGlobalStateMonitor *)&v6 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_assert_not_owner(&self->_observerLock);
  os_unfair_lock_lock(&self->_observerLock);
  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v6 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_assert_not_owner(&self->_observerLock);
  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)idleTimerGlobalSettingMonitor:(id)monitor changedForReason:(id)reason
{
  reasonCopy = reason;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalStateMonitor idleTimerGlobalSettingMonitor:changedForReason:];
  }

  [(SBIdleTimerGlobalStateMonitor *)self _updateObserversForReason:reasonCopy];
}

uint64_t __90__SBIdleTimerGlobalStateMonitor_backlightController_didTransitionToBacklightState_source___block_invoke(uint64_t a1)
{
  result = SBBacklightStateIsActive(*(a1 + 40));
  v3 = *(a1 + 32);
  if (*(v3 + 122) != result)
  {
    *(v3 + 122) = result;
    v4 = *(a1 + 32);

    return [v4 _updateObserversForReason:@"ScreenIsOnDidChange"];
  }

  return result;
}

uint64_t __80__SBIdleTimerGlobalStateMonitor_pocketStateMonitor_pocketStateDidChangeFrom_to___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = (result + 32);
  if (*(v1 + 112) != v2)
  {
    *(v1 + 112) = v2;
    v4 = SBLogIdleTimer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __80__SBIdleTimerGlobalStateMonitor_pocketStateMonitor_pocketStateDidChangeFrom_to___block_invoke_cold_1(v3, v4);
    }

    return [*v3 _updateFaceDownOnTable];
  }

  return result;
}

- (void)idleTimerServiceTimeoutAssertionsDidChange:(id)change fromClient:(id)client
{
  clientCopy = client;
  v4 = clientCopy;
  BSDispatchMain();
}

void __87__SBIdleTimerGlobalStateMonitor_idleTimerServiceTimeoutAssertionsDidChange_fromClient___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"IdleTimerServiceTimeoutAssertionsDidChange - client:", *(a1 + 40)];
  [v1 _updateObserversForReason:v2];
}

uint64_t __59__SBIdleTimerGlobalStateMonitor_thermalBlockStatusChanged___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 121) != v2)
  {
    *(v1 + 121) = v2;
    return [*(result + 32) _updateObserversForReason:@"ThermalBlockedDidChange"];
  }

  return result;
}

- (void)_updateFaceDownOnTable
{
  v6 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = self->_pocketState == 3;
  if (self->_faceDownOnTable != v3)
  {
    self->_faceDownOnTable = v3;
    v4 = SBLogIdleTimer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBIdleTimerGlobalStateMonitor _updateFaceDownOnTable] - faceDownOnTable: %d", v5, 8u);
    }

    [(SBIdleTimerGlobalStateMonitor *)self _updateObserversForReason:@"FaceDownOnTableChanged"];
  }
}

- (void)_updateObserversForReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  os_unfair_lock_assert_not_owner(&self->_observerLock);
  os_unfair_lock_lock(&self->_observerLock);
  v5 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) idleTimerGlobalStateMonitor:self changedForReason:{reasonCopy, v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateAutoDimDisabled
{
  idleTimerDefaults = [(SBLocalDefaults *)self->_localDefaults idleTimerDefaults];
  disableAutoDim = [idleTimerDefaults disableAutoDim];

  if (self->_autoDimDisabled != disableAutoDim)
  {
    self->_autoDimDisabled = disableAutoDim;

    [(SBIdleTimerGlobalStateMonitor *)self _updateObserversForReason:@"AutoDimDisable"];
  }
}

- (id)_BOOLMonitorForProperty:(id)property inDefaults:(id)defaults fetchingWith:(id)with
{
  propertyCopy = property;
  defaultsCopy = defaults;
  withCopy = with;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85CD0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__SBIdleTimerGlobalStateMonitor__BOOLMonitorForProperty_inDefaults_fetchingWith___block_invoke;
  v26[3] = &unk_2783C1BD0;
  v13 = withCopy;
  v29 = v13;
  v14 = defaultsCopy;
  v27 = v14;
  v30 = v34;
  v31 = v36;
  v15 = propertyCopy;
  v28 = v15;
  objc_copyWeak(&v32, &location);
  v16 = [v14 observeDefault:v15 onQueue:v11 withBlock:v26];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__SBIdleTimerGlobalStateMonitor__BOOLMonitorForProperty_inDefaults_fetchingWith___block_invoke_73;
  v21[3] = &unk_2783C1BF8;
  v24 = v34;
  v25 = v36;
  v22 = v14;
  v23 = v13;
  v17 = v14;
  v18 = v13;
  v19 = MEMORY[0x223D6F7F0](v21);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  return v19;
}

void __81__SBIdleTimerGlobalStateMonitor__BOOLMonitorForProperty_inDefaults_fetchingWith___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 48) + 16))();
  v3 = *(*(a1 + 64) + 8);
  if (*(*(*(a1 + 56) + 8) + 24) != 1 || *(v3 + 24) != v2)
  {
    *(v3 + 24) = v2;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v4 = SBLogIdleTimer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 64) + 8) + 24);
      v10 = 134218498;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBIdleTimerGlobalStateMonitor - setting changed - defaults: %p, property: %{public}@, setting: %{BOOL}u", &v10, 0x1Cu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _updateObserversForReason:*(a1 + 40)];
    }
  }
}

uint64_t __81__SBIdleTimerGlobalStateMonitor__BOOLMonitorForProperty_inDefaults_fetchingWith___block_invoke_73(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = (*(a1[5] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
  }

  return *(*(a1[7] + 8) + 24);
}

- (id)_timeIntervalMonitorForProperty:(id)property inDefaults:(id)defaults fetchingWith:(id)with
{
  propertyCopy = property;
  defaultsCopy = defaults;
  withCopy = with;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85CD0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__SBIdleTimerGlobalStateMonitor__timeIntervalMonitorForProperty_inDefaults_fetchingWith___block_invoke;
  v26[3] = &unk_2783C1BD0;
  v13 = withCopy;
  v29 = v13;
  v14 = defaultsCopy;
  v27 = v14;
  v30 = v34;
  v31 = v36;
  v15 = propertyCopy;
  v28 = v15;
  objc_copyWeak(&v32, &location);
  v16 = [v14 observeDefault:v15 onQueue:v11 withBlock:v26];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__SBIdleTimerGlobalStateMonitor__timeIntervalMonitorForProperty_inDefaults_fetchingWith___block_invoke_74;
  v21[3] = &unk_2783C1C20;
  v24 = v34;
  v25 = v36;
  v22 = v14;
  v23 = v13;
  v17 = v14;
  v18 = v13;
  v19 = MEMORY[0x223D6F7F0](v21);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  return v19;
}

void __89__SBIdleTimerGlobalStateMonitor__timeIntervalMonitorForProperty_inDefaults_fetchingWith___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 48) + 16))();
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v5 = *(*(a1 + 64) + 8);
    v3 = v2 == 0.0;
    v4 = 0.0;
    if (!v3)
    {
      v4 = 1.0;
    }

    goto LABEL_8;
  }

  v3 = v2 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = 1.0;
  }

  v5 = *(*(a1 + 64) + 8);
  if (*(v5 + 24) != v4)
  {
LABEL_8:
    *(v5 + 24) = v4;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = SBLogIdleTimer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(*(*(a1 + 64) + 8) + 24);
      v12 = 134218498;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBIdleTimerGlobalStateMonitor - setting changed - defaults: %p, property: %{public}@, setting: %g", &v12, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _updateObserversForReason:*(a1 + 40)];
    }
  }
}

double __89__SBIdleTimerGlobalStateMonitor__timeIntervalMonitorForProperty_inDefaults_fetchingWith___block_invoke_74(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = (*(a1[5] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
  }

  return *(*(a1[7] + 8) + 24);
}

- (void)_addStateCaptureHandlers
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v6, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureAssertion = self->_stateCaptureAssertion;
  self->_stateCaptureAssertion = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

__CFString *__57__SBIdleTimerGlobalStateMonitor__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _stateCaptureDescription];
  }

  else
  {
    v3 = &stru_283094718;
  }

  return v3;
}

- (id)_stateCaptureDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __57__SBIdleTimerGlobalStateMonitor__stateCaptureDescription__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  build = [v4 build];

  return build;
}

id __57__SBIdleTimerGlobalStateMonitor__stateCaptureDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isAutoDimDisabled"), @"DisableAutoDim"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"dontLockEver"), @"DontLockEver"}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"dontDimOrLockOnAC"), @"DontDimOrLockOnAC"}];
  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"disableAttentionAwareness"), @"DisableAttentionAwareness"}];
  v6 = *(a1 + 32);
  [*(a1 + 40) minimumLockscreenIdleTime];
  v7 = [v6 appendTimeInterval:@"MinimumLockscreenIdleTime" withName:0 decomposeUnits:?];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) autoLockTimeout];
  [v9 doubleValue];
  v10 = [v8 appendTimeInterval:@"AutoLockTimeout" withName:0 decomposeUnits:?];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) aggregatedClientConfiguration];
  v13 = [v11 appendObject:v12 withName:@"ActiveClientConfiguration" skipIfNil:1];

  v14 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isBatterySaverModeActive"), @"BatterySaverModeActive"}];
  v15 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isOnACPower"), @"OnACPower"}];
  v16 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"pocketState"), @"PocketState"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFaceDownOnTable"), @"FaceDownOnTable"}];
}

- (void)idleTimerGlobalSettingMonitor:changedForReason:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalStateMonitor idleTimerGlobalSettingMonitor:changedForReason:]"];
  [v1 handleFailureInFunction:v0 file:@"SBIdleTimerGlobalStateMonitor.m" lineNumber:223 description:@"this call must be made on the main thread"];
}

void __80__SBIdleTimerGlobalStateMonitor_pocketStateMonitor_pocketStateDidChangeFrom_to___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 112);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[SBIdleTimerGlobalStateMonitor pocketStateChanged] - _pocketState: %ld", &v3, 0xCu);
}

@end