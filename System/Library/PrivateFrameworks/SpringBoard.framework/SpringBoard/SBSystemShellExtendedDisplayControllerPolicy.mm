@interface SBSystemShellExtendedDisplayControllerPolicy
- (BOOL)_areRuntimeAvailabilityRequirementsMet;
- (SBSystemShellExtendedDisplayControllerPolicy)initWithExternalDisplayDefaults:(id)defaults appSwitcherDefaults:(id)switcherDefaults externalDisplayService:(id)service mousePointerManager:(id)manager runtimeAvailabilitySettings:(id)settings sceneManager:(id)sceneManager windowSceneManager:(id)windowSceneManager;
- (id)_fetchOrCreateSceneWithDisplayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons sceneManager:(id)manager;
- (id)assertionPreferencesForDisplay:(id)display displayConfiguration:(id)configuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayPreferencesForDisplayController:(id)controller;
- (void)_hardwareAvailabilityChanged;
- (void)_windowManagementStyleDidChange:(id)change;
- (void)connectToDisplayController:(id)controller displayConfiguration:(id)configuration embeddedBacklightOn:(BOOL)on;
- (void)dealloc;
- (void)displayController:(id)controller didBeginTransaction:(id)transaction sceneManager:(id)manager displayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons;
- (void)displayController:(id)controller didGainControlOfDisplayWithSceneManager:(id)manager;
- (void)displayController:(id)controller sceneManager:(id)manager didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)reasons;
- (void)displayController:(id)controller sceneManager:(id)manager didReceiveNewDeactivationReasons:(unint64_t)reasons;
- (void)displayController:(id)controller updatePresentationWithSceneManager:(id)manager displayConfiguration:(id)configuration completion:(id)completion;
- (void)displayControllerWillDisconnect:(id)disconnect sceneManager:(id)manager;
- (void)embeddedBacklightStateDidChange:(BOOL)change source:(int64_t)source;
- (void)externalDisplayServiceDidUpdatePreferredDisplayArrangement:(id)arrangement;
- (void)mousePointerManager:(id)manager hardwarePointingDeviceAttachedDidChange:(BOOL)change;
- (void)reevaluateMirroringEnablement;
@end

@implementation SBSystemShellExtendedDisplayControllerPolicy

- (SBSystemShellExtendedDisplayControllerPolicy)initWithExternalDisplayDefaults:(id)defaults appSwitcherDefaults:(id)switcherDefaults externalDisplayService:(id)service mousePointerManager:(id)manager runtimeAvailabilitySettings:(id)settings sceneManager:(id)sceneManager windowSceneManager:(id)windowSceneManager
{
  defaultsCopy = defaults;
  switcherDefaultsCopy = switcherDefaults;
  obj = service;
  serviceCopy = service;
  managerCopy = manager;
  managerCopy2 = manager;
  settingsCopy = settings;
  settingsCopy2 = settings;
  sceneManagerCopy = sceneManager;
  sceneManagerCopy2 = sceneManager;
  windowSceneManagerCopy = windowSceneManager;
  v31 = defaultsCopy;
  if (!defaultsCopy)
  {
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  }

  v22 = switcherDefaultsCopy;
  if (!switcherDefaultsCopy)
  {
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  }

  if (serviceCopy)
  {
    if (managerCopy2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (managerCopy2)
    {
LABEL_7:
      if (settingsCopy2)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (settingsCopy2)
  {
LABEL_8:
    if (sceneManagerCopy2)
    {
      goto LABEL_9;
    }

LABEL_16:
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (windowSceneManagerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_15:
  [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (!sceneManagerCopy2)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (windowSceneManagerCopy)
  {
    goto LABEL_10;
  }

LABEL_17:
  [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
LABEL_10:
  v33.receiver = self;
  v33.super_class = SBSystemShellExtendedDisplayControllerPolicy;
  v23 = [(SBSystemShellExtendedDisplayControllerPolicy *)&v33 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_externalDisplayDefaults, defaults);
    objc_storeStrong(&v24->_appSwitcherDefaults, switcherDefaults);
    objc_storeStrong(&v24->_externalDisplayService, obj);
    objc_storeStrong(&v24->_mousePointerManager, managerCopy);
    objc_storeStrong(&v24->_runtimeAvailabilitySettings, settingsCopy);
    objc_storeStrong(&v24->_fbSceneManager, sceneManagerCopy);
    objc_storeStrong(&v24->_windowSceneManager, windowSceneManager);
    [(SBExternalDisplayService *)v24->_externalDisplayService addObserver:v24];
    [(PTSettings *)v24->_runtimeAvailabilitySettings addKeyObserver:v24];
  }

  return v24;
}

- (void)dealloc
{
  [(BSContinuousMachTimer *)self->_timerForAttachedDevicesToAffectDisplayAssertion invalidate];
  [(SBExternalDisplayService *)self->_externalDisplayService removeObserver:self];
  [(PTSettings *)self->_runtimeAvailabilitySettings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = SBSystemShellExtendedDisplayControllerPolicy;
  [(SBSystemShellExtendedDisplayControllerPolicy *)&v3 dealloc];
}

- (void)connectToDisplayController:(id)controller displayConfiguration:(id)configuration embeddedBacklightOn:(BOOL)on
{
  v65 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemShellExtendedDisplayControllerPolicy connectToDisplayController:displayConfiguration:embeddedBacklightOn:];
  }

  objc_storeWeak(&self->_displayController, controllerCopy);
  identity = [configurationCopy identity];
  displayIdentity = self->_displayIdentity;
  self->_displayIdentity = identity;

  v13 = objc_alloc_init(MEMORY[0x277CF0B80]);
  displayDisconnectSignal = self->_displayDisconnectSignal;
  self->_displayDisconnectSignal = v13;

  self->_embeddedBacklightOn = on;
  if ([(FBSDisplayIdentity *)self->_displayIdentity connectionType]!= 2 && [(FBSDisplayIdentity *)self->_displayIdentity connectionType]!= 1)
  {
    [SBSystemShellExtendedDisplayControllerPolicy connectToDisplayController:displayConfiguration:embeddedBacklightOn:];
  }

  if ([(FBSDisplayIdentity *)self->_displayIdentity connectionType]== 2)
  {
    v15 = SBLogDisplayControlling();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v48 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543362;
      v62 = v48;
      _os_log_error_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_ERROR, "%{public}@ created with an unsupported display. features are not guaranteed and support is not provided", buf, 0xCu);
    }
  }

  v16 = [(SBExternalDisplayDefaults *)self->_externalDisplayDefaults displayModeSettingsForDisplay:configurationCopy];
  displayModeSettings = self->_displayModeSettings;
  self->_displayModeSettings = v16;

  externalDisplayDefaults = self->_externalDisplayDefaults;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke;
  v56[3] = &unk_2783AB2A8;
  v56[4] = self;
  v19 = configurationCopy;
  v57 = v19;
  v58 = a2;
  v20 = [(SBExternalDisplayDefaults *)externalDisplayDefaults observeDisplayModeSettingsOnQueue:MEMORY[0x277D85CD0] withBlock:v56];
  displayModeSettingsToken = self->_displayModeSettingsToken;
  self->_displayModeSettingsToken = v20;

  [(SBExternalDisplayDefaults *)self->_externalDisplayDefaults contentsScale];
  self->_contentScale = v22;
  v23 = BSFloatEqualToFloat();
  v24 = SBLogDisplayControlling();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      contentScale = self->_contentScale;
      *buf = 138543618;
      v62 = v26;
      v63 = 2048;
      v64 = contentScale;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ scale looks OK: %.2f", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v49 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v50 = self->_contentScale;
    *buf = 138543618;
    v62 = v49;
    v63 = 2048;
    v64 = v50;
    _os_log_error_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_ERROR, "%{public}@ returning an unsupported scale. features are not guaranteed and support is not provided: %.2f", buf, 0x16u);
  }

  v28 = [MEMORY[0x277D65DB0] withDisplay:v19];
  displayScaleMapping = self->_displayScaleMapping;
  self->_displayScaleMapping = v28;

  _areRuntimeAvailabilityRequirementsMet = [(SBSystemShellExtendedDisplayControllerPolicy *)self _areRuntimeAvailabilityRequirementsMet];
  [(SBSystemShellExtendedDisplayControllerPolicy *)self reevaluateMirroringEnablement];
  self->_didConnectToRequiredDevicesDuringTimerWindow = _areRuntimeAvailabilityRequirementsMet;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
  v32 = objc_alloc(MEMORY[0x277CF0BD8]);
  v33 = MEMORY[0x277CCACA8];
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = [v33 stringWithFormat:@"%@-%@", v35, self->_displayIdentity];
  v37 = [v32 initWithIdentifier:v36];
  timerForAttachedDevicesToAffectDisplayAssertion = self->_timerForAttachedDevicesToAffectDisplayAssertion;
  self->_timerForAttachedDevicesToAffectDisplayAssertion = v37;

  v39 = self->_timerForAttachedDevicesToAffectDisplayAssertion;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_69;
  v53[3] = &unk_2783BE640;
  v53[4] = self;
  v55 = a2;
  v40 = defaultCenter;
  v54 = v40;
  [(BSContinuousMachTimer *)v39 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v53 queue:14.0 handler:0.5];

  objc_initWeak(buf, self);
  v41 = self->_externalDisplayDefaults;
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"mirroringEnabled"];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_73;
  v51[3] = &unk_2783A8C68;
  objc_copyWeak(&v52, buf);
  v43 = [(SBExternalDisplayDefaults *)v41 observeDefault:v42 onQueue:MEMORY[0x277D85CD0] withBlock:v51];
  externalDisplayDefaultsToken = self->_externalDisplayDefaultsToken;
  self->_externalDisplayDefaultsToken = v43;

  [(SBMousePointerManager *)self->_mousePointerManager addObserver:self];
  [v40 addObserver:self selector:sel__keyboardAvailabilityChanged_ name:@"SBHardwareKeyboardAvailabilityChangedNotification" object:0];
  v59[0] = @"kSBSystemShellExtendedDisplayControllerHardwareAvailabilityIsAvailableKey";
  v45 = [MEMORY[0x277CCABB0] numberWithBool:_areRuntimeAvailabilityRequirementsMet];
  v60[0] = v45;
  v60[1] = MEMORY[0x277CBEC38];
  v59[1] = @"kSBSystemShellExtendedDisplayControllerFiredDuringDeviceConnectionWindowKey";
  v59[2] = @"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey";
  rootIdentity = [(FBSDisplayIdentity *)self->_displayIdentity rootIdentity];
  v60[2] = rootIdentity;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
  [v40 postNotificationName:@"SBSystemShellExtendedDisplayControllerPolicyConnectNotification" object:self userInfo:v47];

  objc_destroyWeak(&v52);
  objc_destroyWeak(buf);
}

void __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 24) displayModeSettingsForDisplay:*(a1 + 40)];
  if (!v3)
  {
    __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_cold_1();
  }

  if (([*(*v2 + 96) isEqual:v3] & 1) == 0)
  {
    v4 = SBLogDisplayControlling();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 16));
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ did detect SBSDisplayModeSettings change in defaults", &v7, 0xCu);
    }

    objc_storeStrong((*v2 + 96), v3);
    WeakRetained = objc_loadWeakRetained((*v2 + 8));
    [WeakRetained requestUpdate:3];
  }
}

void __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_69(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 168) hasBeenSignalled] & 1) == 0)
  {
    v2 = SBLogDisplayControlling();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 16));
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ device timer fired -- newly connecting devices will no longer drive display assertion", buf, 0xCu);
    }

    v6 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v6 + 8);
    v7 = [*(v4 + 16) rootIdentity];
    v10 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v5 postNotificationName:@"SBSystemShellExtendedDisplayControllerPolicyDeviceConnectionWindowExpiredNotification" object:v4 userInfo:v8];
  }
}

void __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[3] isMirroringEnabled];
    v4 = objc_loadWeakRetained(v2 + 1);
    [v4 requestUpdate:7];

    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_2;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v7 = v3;
    dispatch_async(v5, block);
  }
}

void __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CF1648]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v4 = [v2 initWithStarting:v3];

  v5 = BiomeLibrary();
  v6 = [v5 SpringBoard];
  v7 = [v6 ExternalDisplay];
  v8 = [v7 MirroringMode];

  v9 = [v8 source];
  [v9 sendEvent:v4];
  v10 = SBLogBiome();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12[0] = 67109120;
    v12[1] = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Donate mirroring mode enabled: %{BOOL}u", v12, 8u);
  }
}

- (void)displayControllerWillDisconnect:(id)disconnect sceneManager:(id)manager
{
  v11[1] = *MEMORY[0x277D85DE8];
  [(BSAtomicSignal *)self->_displayDisconnectSignal signal:disconnect];
  [(BSDefaultObserver *)self->_displayModeSettingsToken invalidate];
  displayModeSettingsToken = self->_displayModeSettingsToken;
  self->_displayModeSettingsToken = 0;

  [(BSDefaultObserver *)self->_externalDisplayDefaultsToken invalidate];
  externalDisplayDefaultsToken = self->_externalDisplayDefaultsToken;
  self->_externalDisplayDefaultsToken = 0;

  [(SBMousePointerManager *)self->_mousePointerManager removeObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  v10 = @"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey";
  rootIdentity = [(FBSDisplayIdentity *)self->_displayIdentity rootIdentity];
  v11[0] = rootIdentity;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"SBSystemShellExtendedDisplayControllerPolicyDisconnectNotification" object:self userInfo:v9];
}

- (void)embeddedBacklightStateDidChange:(BOOL)change source:(int64_t)source
{
  changeCopy = change;
  v14 = *MEMORY[0x277D85DE8];
  if ([(SBSystemShellExtendedDisplayControllerPolicy *)self _shouldIgnoreEmbeddedBacklightChangingSource:source])
  {
    v7 = SBLogDisplayControlling();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543618;
      v11 = v8;
      v12 = 2048;
      sourceCopy = source;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring backlight change source: %ld", buf, 0x16u);
    }
  }

  else if (self->_embeddedBacklightOn != changeCopy)
  {
    self->_embeddedBacklightOn = changeCopy;
    WeakRetained = objc_loadWeakRetained(&self->_displayController);
    [WeakRetained requestUpdate:1];
  }
}

- (void)displayController:(id)controller didGainControlOfDisplayWithSceneManager:(id)manager
{
  allScenes = [manager allScenes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __106__SBSystemShellExtendedDisplayControllerPolicy_displayController_didGainControlOfDisplayWithSceneManager___block_invoke;
  v6[3] = &unk_2783ACB60;
  v6[4] = self;
  [allScenes enumerateObjectsUsingBlock:v6];

  self->_previouslyReceivedDeactivationReasons = 0;
}

void __106__SBSystemShellExtendedDisplayControllerPolicy_displayController_didGainControlOfDisplayWithSceneManager___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 settings];
  v4 = [v3 isUISubclass];

  if (v4)
  {
    v5 = [v7 uiSettings];
    v6 = [v5 mutableCopy];

    if (*(*(a1 + 32) + 120) == v7)
    {
      [v6 setForeground:1];
    }

    [v6 setDeactivationReasons:{objc_msgSend(v6, "deactivationReasons") & ~*(*(a1 + 32) + 128)}];
    [v7 updateSettings:v6 withTransitionContext:0];
  }
}

- (void)displayController:(id)controller sceneManager:(id)manager didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)reasons
{
  allScenes = [manager allScenes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __126__SBSystemShellExtendedDisplayControllerPolicy_displayController_sceneManager_didLoseControlOfDisplayWithDeactivationReasons___block_invoke;
  v8[3] = &unk_2783BE668;
  v8[4] = self;
  v8[5] = reasons;
  [allScenes enumerateObjectsUsingBlock:v8];

  self->_previouslyReceivedDeactivationReasons = reasons;
}

void __126__SBSystemShellExtendedDisplayControllerPolicy_displayController_sceneManager_didLoseControlOfDisplayWithDeactivationReasons___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 settings];
  v4 = [v3 isUISubclass];

  if (v4)
  {
    v5 = [v7 uiSettings];
    v6 = [v5 mutableCopy];

    if (*(*(a1 + 32) + 120) == v7)
    {
      [v6 setForeground:0];
    }

    [v6 setDeactivationReasons:{*(a1 + 40) | objc_msgSend(v6, "deactivationReasons")}];
    [v7 updateSettings:v6 withTransitionContext:0];
  }
}

- (void)displayController:(id)controller sceneManager:(id)manager didReceiveNewDeactivationReasons:(unint64_t)reasons
{
  allScenes = [manager allScenes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__SBSystemShellExtendedDisplayControllerPolicy_displayController_sceneManager_didReceiveNewDeactivationReasons___block_invoke;
  v8[3] = &unk_2783BE668;
  v8[4] = self;
  v8[5] = reasons;
  [allScenes enumerateObjectsUsingBlock:v8];

  self->_previouslyReceivedDeactivationReasons = reasons;
}

void __112__SBSystemShellExtendedDisplayControllerPolicy_displayController_sceneManager_didReceiveNewDeactivationReasons___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 settings];
  v4 = [v3 isUISubclass];

  if (v4)
  {
    v5 = [v7 uiSettings];
    v6 = [v5 mutableCopy];

    [v6 setDeactivationReasons:{*(a1 + 40) | objc_msgSend(v6, "deactivationReasons") & ~*(*(a1 + 32) + 128)}];
    [v7 updateSettings:v6 withTransitionContext:0];
  }
}

- (void)displayController:(id)controller didBeginTransaction:(id)transaction sceneManager:(id)manager displayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons
{
  v27 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  managerCopy = manager;
  configurationCopy = configuration;
  if ([(SBSystemShellExtendedDisplayControllerPolicy *)self _wantsControlOfDisplay])
  {
    v15 = [(SBSystemShellExtendedDisplayControllerPolicy *)self _fetchOrCreateSceneWithDisplayConfiguration:configurationCopy deactivationReasons:reasons sceneManager:managerCopy];
    v16 = SBLogDisplayControlling();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved springboard scene %{public}@", buf, 0x16u);
      }

      if ([transactionCopy isAuditHistoryEnabled])
      {
        identifier = [v15 identifier];
        [transactionCopy _addAuditHistoryItem:{@"retrieved springboard scene %@", identifier}];
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SBSystemShellExtendedDisplayControllerPolicy displayController:a2 didBeginTransaction:v17 sceneManager:? displayConfiguration:? deactivationReasons:?];
      }

      if ([transactionCopy isAuditHistoryEnabled])
      {
        [transactionCopy _addAuditHistoryItem:@"failed to retrieve springboard scene"];
      }
    }

    currentScene = self->_currentScene;
    self->_currentScene = v15;
  }

  else
  {
    [(FBScene *)self->_currentScene invalidate];
    allScenes = [managerCopy allScenes];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __140__SBSystemShellExtendedDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke;
    v22[3] = &unk_2783ACB60;
    v22[4] = self;
    [allScenes enumerateObjectsUsingBlock:v22];

    currentScene = self->_currentScene;
    self->_currentScene = 0;
  }
}

uint64_t __140__SBSystemShellExtendedDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke(uint64_t result, void *a2)
{
  if (*(*(result + 32) + 120) != a2)
  {
    return [a2 invalidate];
  }

  return result;
}

- (void)displayController:(id)controller updatePresentationWithSceneManager:(id)manager displayConfiguration:(id)configuration completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  managerCopy = manager;
  configurationCopy = configuration;
  completionCopy = completion;
  v14 = [(FBSDisplayConfiguration *)self->_lastPresentationUpdateDisplayConfiguration isEqual:configurationCopy];
  if ((v14 & 1) == 0)
  {
    objc_storeStrong(&self->_lastPresentationUpdateDisplayConfiguration, configuration);
  }

  v15 = [MEMORY[0x277CBEB58] set];
  boundPointerUIScenes = [managerCopy boundPointerUIScenes];
  if (boundPointerUIScenes)
  {
    [v15 unionSet:boundPointerUIScenes];
  }

  if (self->_currentScene)
  {
    [v15 addObject:?];
  }

  v17 = [v15 count];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  if (v17)
  {
    v18 = v14;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v19 = v17;
    v20 = SBLogDisplayControlling();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543362;
      v32 = v21;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ running update as display changed and we have scenes to update", buf, 0xCu);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke;
    v23[3] = &unk_2783BE6B8;
    v24 = configurationCopy;
    selfCopy = self;
    v28 = a2;
    v29 = v19;
    v27 = v30;
    v26 = completionCopy;
    [v15 enumerateObjectsUsingBlock:v23];
  }

  _Block_object_dispose(v30, 8);
}

void __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 settings];
  v5 = [v4 mutableCopy];

  [v5 setDisplayConfiguration:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v5 setFrame:?];
  v6 = SBLogDisplayControlling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke_cold_1();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke_86;
  v11[3] = &unk_2783BE690;
  v11[4] = *(a1 + 40);
  v12 = v3;
  v7 = *(a1 + 72);
  v14 = *(a1 + 64);
  v15 = v7;
  v10 = *(a1 + 48);
  v8 = v10;
  v13 = v10;
  v9 = v3;
  [v9 updateSettings:v5 withTransitionContext:0 completion:v11];
}

void __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke_86(void *a1)
{
  ++*(*(a1[7] + 8) + 24);
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke_86_cold_1();
  }

  if (*(*(a1[7] + 8) + 24) == a1[9])
  {
    (*(a1[6] + 16))();
  }
}

- (id)displayPreferencesForDisplayController:(id)controller
{
  v4 = objc_alloc_init(MEMORY[0x277D0AD40]);
  [(SBSDisplayModeSettings *)self->_displayModeSettings overscanCompensation];
  [v4 setOverscanCompensation:FBSDisplayOverscanCompensationForDisplayValue()];
  [(SBDisplayScaleMapping *)self->_displayScaleMapping referenceSize];
  [v4 setNativePixelSize:?];
  [(SBDisplayScaleMapping *)self->_displayScaleMapping logicalScaleForDisplayScale:[(SBSDisplayModeSettings *)self->_displayModeSettings scale]];
  v6 = [[SBSceneHostingDisplayPreferences alloc] initWithDisplayConfigurationRequest:v4 logicalScale:0 contentsScale:v5 keepOtherModes:v5, self->_contentScale];

  return v6;
}

- (id)assertionPreferencesForDisplay:(id)display displayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = objc_alloc_init(SBDisplayAssertionPreferences);
  [(SBDisplayAssertionPreferences *)v6 setWantsControlOfDisplay:[(SBSystemShellExtendedDisplayControllerPolicy *)self _wantsControlOfDisplay]];
  v7 = [(SBExternalDisplayService *)self->_externalDisplayService preferredArrangementOfExternalDisplay:self->_displayIdentity];
  [(SBDisplayAssertionPreferences *)v6 setDisplayArrangement:v7];

  v8 = [SBDisplayPowerLogEntry forDisplay:configurationCopy mode:3 zoom:SBDisplayPowerLogZoomLevelFromScale([(SBSDisplayModeSettings *)self->_displayModeSettings scale])];

  [(SBDisplayAssertionPreferences *)v6 setPowerLogEntry:v8];
  displayIdentity = self->_displayIdentity;
  v10 = objc_opt_class();
  v11 = _SBPreventIdleSleepReason(displayIdentity, v10);
  [(SBDisplayAssertionPreferences *)v6 setDisableSystemIdleSleepReason:v11];

  [(SBDisplayAssertionPreferences *)v6 setCloneMirroringMode:2];
  [(SBDisplayAssertionPreferences *)v6 setDisplayState:[(SBSystemShellExtendedDisplayControllerPolicy *)self _displayState]];
  [(SBDisplayAssertionPreferences *)v6 setDisplayContentMirroringState:0];

  return v6;
}

- (void)externalDisplayServiceDidUpdatePreferredDisplayArrangement:(id)arrangement
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemShellExtendedDisplayControllerPolicy externalDisplayServiceDidUpdatePreferredDisplayArrangement:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_displayController);
  [WeakRetained requestUpdate:1];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSystemShellExtendedDisplayControllerPolicy *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke;
  v15[3] = &unk_2783A92D8;
  v6 = v5;
  v16 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:@"Display Scale Mapping" multilinePrefix:prefixCopy block:v15];
  if (self->_currentScene)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke_2;
    v13[3] = &unk_2783A92D8;
    v13[4] = self;
    v7 = v6;
    v14 = v7;
    [v7 appendBodySectionWithName:@"FBScene" multilinePrefix:prefixCopy block:v13];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v10[3] = &unk_2783A92D8;
    v11 = v7;
    selfCopy2 = self;
    [v11 appendBodySectionWithName:@"Dev Overrides" multilinePrefix:@"\t" block:v10];
  }

  v8 = v6;

  return v6;
}

void __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v8 = [*(*(a1 + 32) + 120) uiSettings];
  v2 = *(a1 + 40);
  [v8 frame];
  v3 = [v2 appendRect:@"frame" withName:?];
  v4 = [*(a1 + 40) appendBool:objc_msgSend(v8 withName:{"isForeground"), @"isForeground"}];
  v5 = *(a1 + 40);
  [v8 deactivationReasons];
  v6 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
  v7 = [v5 appendObject:v6 withName:@"deactivationReasons"];
}

id __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(*(a1 + 40) + 16) withName:{"connectionType") == 1, @"isWiredDisplay"}];
  v3 = *(a1 + 32);
  [*(*(a1 + 40) + 24) contentsScale];
  return [v3 appendFloat:@"contentsScale" withName:2 decimalPrecision:?];
}

- (void)mousePointerManager:(id)manager hardwarePointingDeviceAttachedDidChange:(BOOL)change
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __108__SBSystemShellExtendedDisplayControllerPolicy_mousePointerManager_hardwarePointingDeviceAttachedDidChange___block_invoke;
  v4[3] = &unk_2783A8C68;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __108__SBSystemShellExtendedDisplayControllerPolicy_mousePointerManager_hardwarePointingDeviceAttachedDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hardwareAvailabilityChanged];
}

- (BOOL)_areRuntimeAvailabilityRequirementsMet
{
  v21 = *MEMORY[0x277D85DE8];
  _currentRuntimeMask = [(SBSystemShellExtendedDisplayControllerPolicy *)self _currentRuntimeMask];
  extendedDisplayRequirements = [(SBExternalDisplayRuntimeAvailabilitySettings *)self->_runtimeAvailabilitySettings extendedDisplayRequirements];
  v5 = SBLogDisplayControlling();
  if (os_signpost_enabled(v5))
  {
    v6 = SBManagedDisplayModeRequirementMaskDescription(extendedDisplayRequirements);
    v7 = SBManagedDisplayModeRequirementMaskDescription(_currentRuntimeMask);
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    *v18 = v7;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_EXTENDED_DISPLAY_RESOLVER_EVALUATE", "required: %{public}@; current: %{public}@", &v15, 0x16u);
  }

  v8 = extendedDisplayRequirements & _currentRuntimeMask;

  v9 = SBLogDisplayControlling();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v11 = SBManagedDisplayModeRequirementMaskDescription(extendedDisplayRequirements);
    v12 = SBManagedDisplayModeRequirementMaskDescription(_currentRuntimeMask);
    v15 = 138544130;
    v16 = v10;
    v17 = 1024;
    *v18 = v8 == extendedDisplayRequirements;
    *&v18[4] = 2114;
    *&v18[6] = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ returning %{BOOL}u; requiredMask: %{public}@; currentMask: %{public}@", &v15, 0x26u);
  }

  v13 = v8 == extendedDisplayRequirements;

  self->_requiredHardwareAvailable = v13;
  return v13;
}

uint64_t __67__SBSystemShellExtendedDisplayControllerPolicy__currentRuntimeMask__block_invoke_2()
{
  [SBApp updateHardwareKeyboardAttached];
  v0 = SBApp;

  return [v0 isHardwareKeyboardAttached];
}

- (void)_hardwareAvailabilityChanged
{
  v19 = *MEMORY[0x277D85DE8];
  _areRuntimeAvailabilityRequirementsMet = [(SBSystemShellExtendedDisplayControllerPolicy *)self _areRuntimeAvailabilityRequirementsMet];
  isScheduled = [(BSContinuousMachTimer *)self->_timerForAttachedDevicesToAffectDisplayAssertion isScheduled];
  if (isScheduled && !self->_didConnectToRequiredDevicesDuringTimerWindow && _areRuntimeAvailabilityRequirementsMet)
  {
    v5 = SBLogDisplayControlling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543618;
      v16 = v6;
      v17 = 1024;
      v18 = _areRuntimeAvailabilityRequirementsMet;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ saw required devices connect while timer was scheduled. isAvailable: %{BOOL}u", buf, 0x12u);
    }

    self->_didConnectToRequiredDevicesDuringTimerWindow = _areRuntimeAvailabilityRequirementsMet;
    [(SBSystemShellExtendedDisplayControllerPolicy *)self reevaluateMirroringEnablement];
    WeakRetained = objc_loadWeakRetained(&self->_displayController);
    [WeakRetained requestUpdate:7];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{_areRuntimeAvailabilityRequirementsMet, @"kSBSystemShellExtendedDisplayControllerHardwareAvailabilityIsAvailableKey"}];
  v14[0] = v9;
  v13[1] = @"kSBSystemShellExtendedDisplayControllerFiredDuringDeviceConnectionWindowKey";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:isScheduled];
  v14[1] = v10;
  v13[2] = @"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey";
  rootIdentity = [(FBSDisplayIdentity *)self->_displayIdentity rootIdentity];
  v14[2] = rootIdentity;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [defaultCenter postNotificationName:@"SBSystemShellExtendedDisplayControllerHardwareAvailabilityNotification" object:self userInfo:v12];
}

- (void)_windowManagementStyleDidChange:(id)change
{
  changeCopy = change;
  v5 = objc_opt_class();
  object = [changeCopy object];

  v8 = SBSafeCast(v5, object);

  windowScene = [v8 windowScene];
  LODWORD(changeCopy) = [windowScene isMainDisplayWindowScene];

  if (changeCopy)
  {
    [(SBSystemShellExtendedDisplayControllerPolicy *)self reevaluateMirroringEnablement];
  }
}

- (void)reevaluateMirroringEnablement
{
  if ([(SBAppSwitcherDefaults *)self->_appSwitcherDefaults shouldUpdateExternalDisplayMirroringWhenWindowManagementStyleUpdates])
  {
    windowSceneManager = self->_windowSceneManager;
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    v9 = [(SBWindowSceneManager *)windowSceneManager windowSceneForDisplayIdentity:mainIdentity];

    switcherController = [v9 switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    baseStyle = [windowManagementContext baseStyle];

    if (baseStyle)
    {
      v8 = !self->_requiredHardwareAvailable;
    }

    else
    {
      v8 = 1;
    }

    [(SBExternalDisplayDefaults *)self->_externalDisplayDefaults setMirroringEnabled:v8];
  }
}

- (id)_fetchOrCreateSceneWithDisplayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons sceneManager:(id)manager
{
  v48 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  managerCopy = manager;
  v10 = MEMORY[0x277D0ADC0];
  v11 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  identity = [configurationCopy identity];
  v15 = [v11 stringWithFormat:@"%@:%@", bundleIdentifier, identity];
  v16 = [v10 identityForIdentifier:v15];

  fbSceneManager = self->_fbSceneManager;
  identifier = [v16 identifier];
  v19 = [(FBSceneManager *)fbSceneManager sceneWithIdentifier:identifier];

  if (v19)
  {
    uiSettings = [v19 uiSettings];
    definition = [uiSettings mutableCopy];

    [definition setDisplayConfiguration:configurationCopy];
    [configurationCopy bounds];
    [definition setFrame:?];
    [definition setForeground:reasons == 0];
    [definition setDeactivationReasons:{objc_msgSend(definition, "deactivationReasons") | reasons}];
    [v19 updateSettings:definition withTransitionContext:0];
    v22 = SBLogDisplayControlling();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      identifier2 = [v19 identifier];
      *buf = 138543618;
      v45 = v23;
      v46 = 2114;
      v47 = identifier2;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "%{public}@ reset %{public}@ for presentation", buf, 0x16u);
    }
  }

  else
  {
    definition = [MEMORY[0x277D0AD48] definition];
    [definition setIdentity:v16];
    localIdentity = [MEMORY[0x277D0ADA8] localIdentity];
    [definition setClientIdentity:localIdentity];

    v26 = +[(FBSSceneSpecification *)SBExternalDisplayApplicationSceneSpecification];
    [definition setSpecification:v26];

    v27 = MEMORY[0x277D0AD50];
    specification = [definition specification];
    v22 = [v27 parametersForSpecification:specification];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __125__SBSystemShellExtendedDisplayControllerPolicy__fetchOrCreateSceneWithDisplayConfiguration_deactivationReasons_sceneManager___block_invoke;
    v40[3] = &unk_2783BE6E0;
    v41 = configurationCopy;
    reasonsCopy = reasons;
    v39 = managerCopy;
    v42 = managerCopy;
    [v22 updateSettingsWithBlock:v40];
    [v22 updateClientSettingsWithBlock:&__block_literal_global_139];
    v29 = self->_fbSceneManager;
    identity2 = [definition identity];
    identifier3 = [identity2 identifier];
    mEMORY[0x277D0AA98] = [MEMORY[0x277D0AA98] sharedInstance];
    v19 = [(FBSceneManager *)v29 createSceneWithIdentifier:identifier3 parameters:v22 clientProvider:mEMORY[0x277D0AA98] transitionContext:0];

    v33 = SBLogDisplayControlling();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      identifier4 = [v19 identifier];
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = identifier4;
      _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_INFO, "%{public}@ initialized %{public}@ for presentation", buf, 0x16u);
    }

    systemShellHostingEnvironment = [v19 systemShellHostingEnvironment];
    v37 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration();
    [systemShellHostingEnvironment setSystemShellHostingSpaceIdentifier:v37];

    managerCopy = v39;
  }

  return v19;
}

void __125__SBSystemShellExtendedDisplayControllerPolicy__fetchOrCreateSceneWithDisplayConfiguration_deactivationReasons_sceneManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTargetOfEventDeferringEnvironments:0];
  [v3 setInterfaceOrientationMode:2];
  v4 = SBApp;
  v5 = [*(a1 + 32) identity];
  v6 = [v4 userInterfaceStyleProviderForDisplay:v5];
  [v3 setUserInterfaceStyle:{objc_msgSend(v6, "currentStyle")}];

  v9 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  [v9 sb_applyDisplayEdgeInfoToSceneSettings:v3];
  v7 = [v3 ignoreOcclusionReasons];
  [v7 addObject:@"SystemApp"];

  [v3 setInterfaceOrientation:1];
  [v3 setDisplayConfiguration:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [v3 setLevel:0.0];
  [v3 setForeground:*(a1 + 48) == 0];
  [v3 setDeactivationReasons:*(a1 + 48)];
  v8 = [v3 transientLocalSettings];
  [v8 setObject:*(a1 + 40) forSetting:4444];

  [v3 setEnhancedWindowingEnabled:1];
}

void __125__SBSystemShellExtendedDisplayControllerPolicy__fetchOrCreateSceneWithDisplayConfiguration_deactivationReasons_sceneManager___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setStatusBarStyle:0];
  [v2 setInterfaceOrientation:1];
}

- (void)initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"externalDisplayDefaults" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"appSwitcherDefaults" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"externalDisplayService" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"mousePointerManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"runtimeAvailabilitySettings" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"fbSceneManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.7()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"windowSceneManager" object:? file:? lineNumber:? description:?];
}

- (void)connectToDisplayController:displayConfiguration:embeddedBacklightOn:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSystemShellExtendedDisplayControllerPolicy connectToDisplayController:displayConfiguration:embeddedBacklightOn:]"];
  [v1 handleFailureInFunction:v0 file:@"SBSystemShellExtendedDisplayControllerPolicy.m" lineNumber:183 description:@"this call must be made on the main thread"];
}

- (void)connectToDisplayController:displayConfiguration:embeddedBacklightOn:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:*(v2 + 48) object:*v1 file:@"SBSystemShellExtendedDisplayControllerPolicy.m" lineNumber:199 description:{@"got nil SBSDisplayModeSettings for display: %@", *v0}];
}

- (void)displayController:(NSObject *)a3 didBeginTransaction:sceneManager:displayConfiguration:deactivationReasons:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBDisplayControllerLoggingProem(*(a1 + 16));
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve springboard scene", &v5, 0xCu);
}

void __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v13 = *MEMORY[0x277D85DE8];
  v4 = _SBDisplayControllerLoggingProem(*(*(v3 + 40) + 16));
  v5 = [v1 identity];
  v6 = *(v2 + 72);
  v7 = 138543874;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_debug_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ updating displayConfig+frame for %{public}@; pendingUpdateCount: %lu", &v7, 0x20u);
}

void __133__SBSystemShellExtendedDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke_86_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v16 = *MEMORY[0x277D85DE8];
  v4 = _SBDisplayControllerLoggingProem(*(*(v3 + 32) + 16));
  v5 = [*(v2 + 40) identity];
  v6 = *(*(*v1 + 8) + 24);
  v7 = *(v2 + 72);
  v8 = 138544130;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  v12 = 2048;
  v13 = v6;
  v14 = 2048;
  v15 = v7;
  _os_log_debug_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ completed update for %{public}@; completedUpdateCount: %lu; pendingUpdateCount: %lu", &v8, 0x2Au);
}

- (void)externalDisplayServiceDidUpdatePreferredDisplayArrangement:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSystemShellExtendedDisplayControllerPolicy externalDisplayServiceDidUpdatePreferredDisplayArrangement:]"];
  [v1 handleFailureInFunction:v0 file:@"SBSystemShellExtendedDisplayControllerPolicy.m" lineNumber:498 description:@"this call must be made on the main thread"];
}

@end