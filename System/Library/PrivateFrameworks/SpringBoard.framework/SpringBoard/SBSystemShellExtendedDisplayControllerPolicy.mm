@interface SBSystemShellExtendedDisplayControllerPolicy
- (BOOL)_areRuntimeAvailabilityRequirementsMet;
- (SBSystemShellExtendedDisplayControllerPolicy)initWithExternalDisplayDefaults:(id)a3 appSwitcherDefaults:(id)a4 externalDisplayService:(id)a5 mousePointerManager:(id)a6 runtimeAvailabilitySettings:(id)a7 sceneManager:(id)a8 windowSceneManager:(id)a9;
- (id)_fetchOrCreateSceneWithDisplayConfiguration:(id)a3 deactivationReasons:(unint64_t)a4 sceneManager:(id)a5;
- (id)assertionPreferencesForDisplay:(id)a3 displayConfiguration:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayPreferencesForDisplayController:(id)a3;
- (void)_hardwareAvailabilityChanged;
- (void)_windowManagementStyleDidChange:(id)a3;
- (void)connectToDisplayController:(id)a3 displayConfiguration:(id)a4 embeddedBacklightOn:(BOOL)a5;
- (void)dealloc;
- (void)displayController:(id)a3 didBeginTransaction:(id)a4 sceneManager:(id)a5 displayConfiguration:(id)a6 deactivationReasons:(unint64_t)a7;
- (void)displayController:(id)a3 didGainControlOfDisplayWithSceneManager:(id)a4;
- (void)displayController:(id)a3 sceneManager:(id)a4 didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)a5;
- (void)displayController:(id)a3 sceneManager:(id)a4 didReceiveNewDeactivationReasons:(unint64_t)a5;
- (void)displayController:(id)a3 updatePresentationWithSceneManager:(id)a4 displayConfiguration:(id)a5 completion:(id)a6;
- (void)displayControllerWillDisconnect:(id)a3 sceneManager:(id)a4;
- (void)embeddedBacklightStateDidChange:(BOOL)a3 source:(int64_t)a4;
- (void)externalDisplayServiceDidUpdatePreferredDisplayArrangement:(id)a3;
- (void)mousePointerManager:(id)a3 hardwarePointingDeviceAttachedDidChange:(BOOL)a4;
- (void)reevaluateMirroringEnablement;
@end

@implementation SBSystemShellExtendedDisplayControllerPolicy

- (SBSystemShellExtendedDisplayControllerPolicy)initWithExternalDisplayDefaults:(id)a3 appSwitcherDefaults:(id)a4 externalDisplayService:(id)a5 mousePointerManager:(id)a6 runtimeAvailabilitySettings:(id)a7 sceneManager:(id)a8 windowSceneManager:(id)a9
{
  v16 = a3;
  v17 = a4;
  obj = a5;
  v32 = a5;
  v28 = a6;
  v18 = a6;
  v29 = a7;
  v19 = a7;
  v30 = a8;
  v20 = a8;
  v21 = a9;
  v31 = v16;
  if (!v16)
  {
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  }

  v22 = v17;
  if (!v17)
  {
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  }

  if (v32)
  {
    if (v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (v18)
    {
LABEL_7:
      if (v19)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (v19)
  {
LABEL_8:
    if (v20)
    {
      goto LABEL_9;
    }

LABEL_16:
    [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (v21)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_15:
  [SBSystemShellExtendedDisplayControllerPolicy initWithExternalDisplayDefaults:appSwitcherDefaults:externalDisplayService:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v21)
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
    objc_storeStrong(&v23->_externalDisplayDefaults, a3);
    objc_storeStrong(&v24->_appSwitcherDefaults, a4);
    objc_storeStrong(&v24->_externalDisplayService, obj);
    objc_storeStrong(&v24->_mousePointerManager, v28);
    objc_storeStrong(&v24->_runtimeAvailabilitySettings, v29);
    objc_storeStrong(&v24->_fbSceneManager, v30);
    objc_storeStrong(&v24->_windowSceneManager, a9);
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

- (void)connectToDisplayController:(id)a3 displayConfiguration:(id)a4 embeddedBacklightOn:(BOOL)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemShellExtendedDisplayControllerPolicy connectToDisplayController:displayConfiguration:embeddedBacklightOn:];
  }

  objc_storeWeak(&self->_displayController, v9);
  v11 = [v10 identity];
  displayIdentity = self->_displayIdentity;
  self->_displayIdentity = v11;

  v13 = objc_alloc_init(MEMORY[0x277CF0B80]);
  displayDisconnectSignal = self->_displayDisconnectSignal;
  self->_displayDisconnectSignal = v13;

  self->_embeddedBacklightOn = a5;
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

  v16 = [(SBExternalDisplayDefaults *)self->_externalDisplayDefaults displayModeSettingsForDisplay:v10];
  displayModeSettings = self->_displayModeSettings;
  self->_displayModeSettings = v16;

  externalDisplayDefaults = self->_externalDisplayDefaults;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __116__SBSystemShellExtendedDisplayControllerPolicy_connectToDisplayController_displayConfiguration_embeddedBacklightOn___block_invoke;
  v56[3] = &unk_2783AB2A8;
  v56[4] = self;
  v19 = v10;
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

  v30 = [(SBSystemShellExtendedDisplayControllerPolicy *)self _areRuntimeAvailabilityRequirementsMet];
  [(SBSystemShellExtendedDisplayControllerPolicy *)self reevaluateMirroringEnablement];
  self->_didConnectToRequiredDevicesDuringTimerWindow = v30;
  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  [v31 addObserver:self selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
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
  v40 = v31;
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
  v45 = [MEMORY[0x277CCABB0] numberWithBool:v30];
  v60[0] = v45;
  v60[1] = MEMORY[0x277CBEC38];
  v59[1] = @"kSBSystemShellExtendedDisplayControllerFiredDuringDeviceConnectionWindowKey";
  v59[2] = @"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey";
  v46 = [(FBSDisplayIdentity *)self->_displayIdentity rootIdentity];
  v60[2] = v46;
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

- (void)displayControllerWillDisconnect:(id)a3 sceneManager:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  [(BSAtomicSignal *)self->_displayDisconnectSignal signal:a3];
  [(BSDefaultObserver *)self->_displayModeSettingsToken invalidate];
  displayModeSettingsToken = self->_displayModeSettingsToken;
  self->_displayModeSettingsToken = 0;

  [(BSDefaultObserver *)self->_externalDisplayDefaultsToken invalidate];
  externalDisplayDefaultsToken = self->_externalDisplayDefaultsToken;
  self->_externalDisplayDefaultsToken = 0;

  [(SBMousePointerManager *)self->_mousePointerManager removeObserver:self];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self];
  v10 = @"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey";
  v8 = [(FBSDisplayIdentity *)self->_displayIdentity rootIdentity];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v7 postNotificationName:@"SBSystemShellExtendedDisplayControllerPolicyDisconnectNotification" object:self userInfo:v9];
}

- (void)embeddedBacklightStateDidChange:(BOOL)a3 source:(int64_t)a4
{
  v5 = a3;
  v14 = *MEMORY[0x277D85DE8];
  if ([(SBSystemShellExtendedDisplayControllerPolicy *)self _shouldIgnoreEmbeddedBacklightChangingSource:a4])
  {
    v7 = SBLogDisplayControlling();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = a4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring backlight change source: %ld", buf, 0x16u);
    }
  }

  else if (self->_embeddedBacklightOn != v5)
  {
    self->_embeddedBacklightOn = v5;
    WeakRetained = objc_loadWeakRetained(&self->_displayController);
    [WeakRetained requestUpdate:1];
  }
}

- (void)displayController:(id)a3 didGainControlOfDisplayWithSceneManager:(id)a4
{
  v5 = [a4 allScenes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __106__SBSystemShellExtendedDisplayControllerPolicy_displayController_didGainControlOfDisplayWithSceneManager___block_invoke;
  v6[3] = &unk_2783ACB60;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];

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

- (void)displayController:(id)a3 sceneManager:(id)a4 didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)a5
{
  v7 = [a4 allScenes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __126__SBSystemShellExtendedDisplayControllerPolicy_displayController_sceneManager_didLoseControlOfDisplayWithDeactivationReasons___block_invoke;
  v8[3] = &unk_2783BE668;
  v8[4] = self;
  v8[5] = a5;
  [v7 enumerateObjectsUsingBlock:v8];

  self->_previouslyReceivedDeactivationReasons = a5;
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

- (void)displayController:(id)a3 sceneManager:(id)a4 didReceiveNewDeactivationReasons:(unint64_t)a5
{
  v7 = [a4 allScenes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__SBSystemShellExtendedDisplayControllerPolicy_displayController_sceneManager_didReceiveNewDeactivationReasons___block_invoke;
  v8[3] = &unk_2783BE668;
  v8[4] = self;
  v8[5] = a5;
  [v7 enumerateObjectsUsingBlock:v8];

  self->_previouslyReceivedDeactivationReasons = a5;
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

- (void)displayController:(id)a3 didBeginTransaction:(id)a4 sceneManager:(id)a5 displayConfiguration:(id)a6 deactivationReasons:(unint64_t)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([(SBSystemShellExtendedDisplayControllerPolicy *)self _wantsControlOfDisplay])
  {
    v15 = [(SBSystemShellExtendedDisplayControllerPolicy *)self _fetchOrCreateSceneWithDisplayConfiguration:v14 deactivationReasons:a7 sceneManager:v13];
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

      if ([v12 isAuditHistoryEnabled])
      {
        v19 = [v15 identifier];
        [v12 _addAuditHistoryItem:{@"retrieved springboard scene %@", v19}];
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SBSystemShellExtendedDisplayControllerPolicy displayController:a2 didBeginTransaction:v17 sceneManager:? displayConfiguration:? deactivationReasons:?];
      }

      if ([v12 isAuditHistoryEnabled])
      {
        [v12 _addAuditHistoryItem:@"failed to retrieve springboard scene"];
      }
    }

    currentScene = self->_currentScene;
    self->_currentScene = v15;
  }

  else
  {
    [(FBScene *)self->_currentScene invalidate];
    v20 = [v13 allScenes];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __140__SBSystemShellExtendedDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke;
    v22[3] = &unk_2783ACB60;
    v22[4] = self;
    [v20 enumerateObjectsUsingBlock:v22];

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

- (void)displayController:(id)a3 updatePresentationWithSceneManager:(id)a4 displayConfiguration:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(FBSDisplayConfiguration *)self->_lastPresentationUpdateDisplayConfiguration isEqual:v12];
  if ((v14 & 1) == 0)
  {
    objc_storeStrong(&self->_lastPresentationUpdateDisplayConfiguration, a5);
  }

  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [v11 boundPointerUIScenes];
  if (v16)
  {
    [v15 unionSet:v16];
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
    v13[2](v13);
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
    v24 = v12;
    v25 = self;
    v28 = a2;
    v29 = v19;
    v27 = v30;
    v26 = v13;
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

- (id)displayPreferencesForDisplayController:(id)a3
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

- (id)assertionPreferencesForDisplay:(id)a3 displayConfiguration:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(SBDisplayAssertionPreferences);
  [(SBDisplayAssertionPreferences *)v6 setWantsControlOfDisplay:[(SBSystemShellExtendedDisplayControllerPolicy *)self _wantsControlOfDisplay]];
  v7 = [(SBExternalDisplayService *)self->_externalDisplayService preferredArrangementOfExternalDisplay:self->_displayIdentity];
  [(SBDisplayAssertionPreferences *)v6 setDisplayArrangement:v7];

  v8 = [SBDisplayPowerLogEntry forDisplay:v5 mode:3 zoom:SBDisplayPowerLogZoomLevelFromScale([(SBSDisplayModeSettings *)self->_displayModeSettings scale])];

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

- (void)externalDisplayServiceDidUpdatePreferredDisplayArrangement:(id)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemShellExtendedDisplayControllerPolicy externalDisplayServiceDidUpdatePreferredDisplayArrangement:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_displayController);
  [WeakRetained requestUpdate:1];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSystemShellExtendedDisplayControllerPolicy *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke;
  v15[3] = &unk_2783A92D8;
  v6 = v5;
  v16 = v6;
  v17 = self;
  [v6 appendBodySectionWithName:@"Display Scale Mapping" multilinePrefix:v4 block:v15];
  if (self->_currentScene)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke_2;
    v13[3] = &unk_2783A92D8;
    v13[4] = self;
    v7 = v6;
    v14 = v7;
    [v7 appendBodySectionWithName:@"FBScene" multilinePrefix:v4 block:v13];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBSystemShellExtendedDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v10[3] = &unk_2783A92D8;
    v11 = v7;
    v12 = self;
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

- (void)mousePointerManager:(id)a3 hardwarePointingDeviceAttachedDidChange:(BOOL)a4
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
  v3 = [(SBSystemShellExtendedDisplayControllerPolicy *)self _currentRuntimeMask];
  v4 = [(SBExternalDisplayRuntimeAvailabilitySettings *)self->_runtimeAvailabilitySettings extendedDisplayRequirements];
  v5 = SBLogDisplayControlling();
  if (os_signpost_enabled(v5))
  {
    v6 = SBManagedDisplayModeRequirementMaskDescription(v4);
    v7 = SBManagedDisplayModeRequirementMaskDescription(v3);
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    *v18 = v7;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_EXTENDED_DISPLAY_RESOLVER_EVALUATE", "required: %{public}@; current: %{public}@", &v15, 0x16u);
  }

  v8 = v4 & v3;

  v9 = SBLogDisplayControlling();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v11 = SBManagedDisplayModeRequirementMaskDescription(v4);
    v12 = SBManagedDisplayModeRequirementMaskDescription(v3);
    v15 = 138544130;
    v16 = v10;
    v17 = 1024;
    *v18 = v8 == v4;
    *&v18[4] = 2114;
    *&v18[6] = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ returning %{BOOL}u; requiredMask: %{public}@; currentMask: %{public}@", &v15, 0x26u);
  }

  v13 = v8 == v4;

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
  v3 = [(SBSystemShellExtendedDisplayControllerPolicy *)self _areRuntimeAvailabilityRequirementsMet];
  v4 = [(BSContinuousMachTimer *)self->_timerForAttachedDevicesToAffectDisplayAssertion isScheduled];
  if (v4 && !self->_didConnectToRequiredDevicesDuringTimerWindow && v3)
  {
    v5 = SBLogDisplayControlling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543618;
      v16 = v6;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ saw required devices connect while timer was scheduled. isAvailable: %{BOOL}u", buf, 0x12u);
    }

    self->_didConnectToRequiredDevicesDuringTimerWindow = v3;
    [(SBSystemShellExtendedDisplayControllerPolicy *)self reevaluateMirroringEnablement];
    WeakRetained = objc_loadWeakRetained(&self->_displayController);
    [WeakRetained requestUpdate:7];
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{v3, @"kSBSystemShellExtendedDisplayControllerHardwareAvailabilityIsAvailableKey"}];
  v14[0] = v9;
  v13[1] = @"kSBSystemShellExtendedDisplayControllerFiredDuringDeviceConnectionWindowKey";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v14[1] = v10;
  v13[2] = @"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey";
  v11 = [(FBSDisplayIdentity *)self->_displayIdentity rootIdentity];
  v14[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v8 postNotificationName:@"SBSystemShellExtendedDisplayControllerHardwareAvailabilityNotification" object:self userInfo:v12];
}

- (void)_windowManagementStyleDidChange:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v8 = SBSafeCast(v5, v6);

  v7 = [v8 windowScene];
  LODWORD(v4) = [v7 isMainDisplayWindowScene];

  if (v4)
  {
    [(SBSystemShellExtendedDisplayControllerPolicy *)self reevaluateMirroringEnablement];
  }
}

- (void)reevaluateMirroringEnablement
{
  if ([(SBAppSwitcherDefaults *)self->_appSwitcherDefaults shouldUpdateExternalDisplayMirroringWhenWindowManagementStyleUpdates])
  {
    windowSceneManager = self->_windowSceneManager;
    v4 = [MEMORY[0x277D0AA90] mainIdentity];
    v9 = [(SBWindowSceneManager *)windowSceneManager windowSceneForDisplayIdentity:v4];

    v5 = [v9 switcherController];
    v6 = [v5 windowManagementContext];
    v7 = [v6 baseStyle];

    if (v7)
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

- (id)_fetchOrCreateSceneWithDisplayConfiguration:(id)a3 deactivationReasons:(unint64_t)a4 sceneManager:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D0ADC0];
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 bundleIdentifier];
  v14 = [v8 identity];
  v15 = [v11 stringWithFormat:@"%@:%@", v13, v14];
  v16 = [v10 identityForIdentifier:v15];

  fbSceneManager = self->_fbSceneManager;
  v18 = [v16 identifier];
  v19 = [(FBSceneManager *)fbSceneManager sceneWithIdentifier:v18];

  if (v19)
  {
    v20 = [v19 uiSettings];
    v21 = [v20 mutableCopy];

    [v21 setDisplayConfiguration:v8];
    [v8 bounds];
    [v21 setFrame:?];
    [v21 setForeground:a4 == 0];
    [v21 setDeactivationReasons:{objc_msgSend(v21, "deactivationReasons") | a4}];
    [v19 updateSettings:v21 withTransitionContext:0];
    v22 = SBLogDisplayControlling();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v24 = [v19 identifier];
      *buf = 138543618;
      v45 = v23;
      v46 = 2114;
      v47 = v24;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "%{public}@ reset %{public}@ for presentation", buf, 0x16u);
    }
  }

  else
  {
    v21 = [MEMORY[0x277D0AD48] definition];
    [v21 setIdentity:v16];
    v25 = [MEMORY[0x277D0ADA8] localIdentity];
    [v21 setClientIdentity:v25];

    v26 = +[(FBSSceneSpecification *)SBExternalDisplayApplicationSceneSpecification];
    [v21 setSpecification:v26];

    v27 = MEMORY[0x277D0AD50];
    v28 = [v21 specification];
    v22 = [v27 parametersForSpecification:v28];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __125__SBSystemShellExtendedDisplayControllerPolicy__fetchOrCreateSceneWithDisplayConfiguration_deactivationReasons_sceneManager___block_invoke;
    v40[3] = &unk_2783BE6E0;
    v41 = v8;
    v43 = a4;
    v39 = v9;
    v42 = v9;
    [v22 updateSettingsWithBlock:v40];
    [v22 updateClientSettingsWithBlock:&__block_literal_global_139];
    v29 = self->_fbSceneManager;
    v30 = [v21 identity];
    v31 = [v30 identifier];
    v32 = [MEMORY[0x277D0AA98] sharedInstance];
    v19 = [(FBSceneManager *)v29 createSceneWithIdentifier:v31 parameters:v22 clientProvider:v32 transitionContext:0];

    v33 = SBLogDisplayControlling();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v35 = [v19 identifier];
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = v35;
      _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_INFO, "%{public}@ initialized %{public}@ for presentation", buf, 0x16u);
    }

    v36 = [v19 systemShellHostingEnvironment];
    v37 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration();
    [v36 setSystemShellHostingSpaceIdentifier:v37];

    v9 = v39;
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