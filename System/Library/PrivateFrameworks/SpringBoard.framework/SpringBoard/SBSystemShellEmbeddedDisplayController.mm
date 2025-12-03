@interface SBSystemShellEmbeddedDisplayController
- (SBSystemShellEmbeddedDisplayController)initWithAppSwitcherDefaults:(id)defaults sceneManager:(id)manager initialOrientation:(int64_t)orientation;
- (id)_createSystemShellSceneWithOrientation:(int64_t)orientation;
- (id)displayControllerInfoForConnectingDisplay:(id)display configuration:(id)configuration;
- (void)_updateDisplayAssertionPreferences;
- (void)_updateSceneSettings;
- (void)connectToDisplayIdentity:(id)identity configuration:(id)configuration displayManager:(id)manager sceneManager:(id)sceneManager caDisplayQueue:(id)queue assertion:(id)assertion embeddedBacklightOn:(BOOL)on;
- (void)dealloc;
- (void)displayAssertion:(id)assertion didLoseControlOfDisplayForDeactivationReasons:(unint64_t)reasons;
- (void)displayAssertion:(id)assertion didReceiveNewDeactivationReasons:(unint64_t)reasons;
- (void)displayAssertionDidGainControlOfDisplay:(id)display;
- (void)displayAssertionDidInvalidate:(id)invalidate;
- (void)displayIdentityDidDisconnect:(id)disconnect;
@end

@implementation SBSystemShellEmbeddedDisplayController

- (SBSystemShellEmbeddedDisplayController)initWithAppSwitcherDefaults:(id)defaults sceneManager:(id)manager initialOrientation:(int64_t)orientation
{
  v24[2] = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  managerCopy = manager;
  if (!defaultsCopy)
  {
    [SBSystemShellEmbeddedDisplayController initWithAppSwitcherDefaults:sceneManager:initialOrientation:];
  }

  if (!managerCopy)
  {
    [SBSystemShellEmbeddedDisplayController initWithAppSwitcherDefaults:sceneManager:initialOrientation:];
  }

  v23.receiver = self;
  v23.super_class = SBSystemShellEmbeddedDisplayController;
  v11 = [(SBSystemShellEmbeddedDisplayController *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appSwitcherDefaults, defaults);
    objc_storeStrong(&v12->_sceneManager, manager);
    v12->_initialOrientation = orientation;
    objc_initWeak(&location, v12);
    appSwitcherDefaults = v12->_appSwitcherDefaults;
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisWindowingEnabled"];
    v24[0] = v14;
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"medusaMultitaskingEnabled"];
    v24[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v17 = MEMORY[0x277D85CD0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __102__SBSystemShellEmbeddedDisplayController_initWithAppSwitcherDefaults_sceneManager_initialOrientation___block_invoke;
    v20[3] = &unk_2783A8C68;
    objc_copyWeak(&v21, &location);
    v18 = [(SBAppSwitcherDefaults *)appSwitcherDefaults observeDefaults:v16 onQueue:MEMORY[0x277D85CD0] withBlock:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __102__SBSystemShellEmbeddedDisplayController_initWithAppSwitcherDefaults_sceneManager_initialOrientation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateDisplayAssertionPreferences];
    [v2 _updateSceneSettings];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  [(SBDisplayAssertion *)self->_displayAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemShellEmbeddedDisplayController;
  [(SBSystemShellEmbeddedDisplayController *)&v3 dealloc];
}

- (id)displayControllerInfoForConnectingDisplay:(id)display configuration:(id)configuration
{
  if ([display isMainRootDisplay])
  {
    v5 = [[SBDisplayControllerInfo alloc] initWithController:self windowingMode:1 priorityLevel:2 deactivationReasons:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)connectToDisplayIdentity:(id)identity configuration:(id)configuration displayManager:(id)manager sceneManager:(id)sceneManager caDisplayQueue:(id)queue assertion:(id)assertion embeddedBacklightOn:(BOOL)on
{
  identityCopy = identity;
  configurationCopy = configuration;
  managerCopy = manager;
  sceneManagerCopy = sceneManager;
  queueCopy = queue;
  assertionCopy = assertion;
  if (self->_displayConfiguration)
  {
    [SBSystemShellEmbeddedDisplayController connectToDisplayIdentity:? configuration:? displayManager:? sceneManager:? caDisplayQueue:? assertion:? embeddedBacklightOn:?];
  }

  if (([configurationCopy isMainRootDisplay] & 1) == 0)
  {
    [SBSystemShellEmbeddedDisplayController connectToDisplayIdentity:configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:];
  }

  displayConfiguration = self->_displayConfiguration;
  self->_displayConfiguration = configurationCopy;
  v21 = configurationCopy;

  displayAssertion = self->_displayAssertion;
  self->_displayAssertion = assertionCopy;
  v23 = assertionCopy;

  sbSceneManager = self->_sbSceneManager;
  self->_sbSceneManager = sceneManagerCopy;
  v25 = sceneManagerCopy;

  v26 = +[SBSceneManagerCoordinator sharedInstance];

  copyForSecureRendering = [v21 copyForSecureRendering];
  identity = [copyForSecureRendering identity];
  v29 = [v26 sceneManagerForDisplayIdentity:identity];

  [(SBSystemShellEmbeddedDisplayController *)self _updateDisplayAssertionPreferences];
}

- (void)displayIdentityDidDisconnect:(id)disconnect
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemShellEmbeddedDisplayController.m" lineNumber:111 description:@"told the embedded display disconnected. whoa."];
}

- (void)displayAssertionDidInvalidate:(id)invalidate
{
  if (![(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay])
  {
    [SBSystemShellEmbeddedDisplayController displayAssertionDidInvalidate:];
  }
}

- (void)displayAssertionDidGainControlOfDisplay:(id)display
{
  displayCopy = display;
  if (self->_scene)
  {
    [SBSystemShellEmbeddedDisplayController displayAssertionDidGainControlOfDisplay:];
  }

  v4 = [(SBSystemShellEmbeddedDisplayController *)self _createSystemShellSceneWithOrientation:self->_initialOrientation];
  scene = self->_scene;
  self->_scene = v4;

  systemShellHostingEnvironment = [(FBScene *)self->_scene systemShellHostingEnvironment];
  v7 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration();
  [systemShellHostingEnvironment setSystemShellHostingSpaceIdentifier:v7];

  if (!self->_scene)
  {
    [SBSystemShellEmbeddedDisplayController displayAssertionDidGainControlOfDisplay:];
  }
}

- (void)displayAssertion:(id)assertion didReceiveNewDeactivationReasons:(unint64_t)reasons
{
  if (![(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay:assertion])
  {
    [SBSystemShellEmbeddedDisplayController displayAssertion:didReceiveNewDeactivationReasons:];
  }
}

- (void)displayAssertion:(id)assertion didLoseControlOfDisplayForDeactivationReasons:(unint64_t)reasons
{
  if (![(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay:assertion])
  {
    [SBSystemShellEmbeddedDisplayController displayAssertion:didLoseControlOfDisplayForDeactivationReasons:];
  }
}

- (id)_createSystemShellSceneWithOrientation:(int64_t)orientation
{
  sceneManager = self->_sceneManager;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke;
  v6[3] = &unk_2783B4F58;
  v6[4] = self;
  v6[5] = orientation;
  v4 = [(FBSceneManager *)sceneManager createScene:v6];
  [v4 activate:0];

  return v4;
}

void __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D0ADC0];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a2;
  v6 = [v4 mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v3 identityForIdentifier:v7];
  [v5 setIdentity:v8];

  v9 = [MEMORY[0x277D0ADA8] localIdentity];
  [v5 setClientIdentity:v9];

  v10 = +[(FBSSceneSpecification *)SBApplicationSceneSpecification];
  [v5 setSpecification:v10];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke_2;
  v12[3] = &unk_2783B4F30;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v12[5] = v11;
  [v5 configureParameters:v12];
}

void __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke_3;
  v5[3] = &unk_2783ACB10;
  v5[4] = *(a1 + 32);
  v3 = a2;
  [v3 updateSettingsWithBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke_4;
  v4[3] = &__block_descriptor_40_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v4[4] = *(a1 + 40);
  [v3 updateClientSettingsWithBlock:v4];
}

void __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = a2;
  [v15 setDisplayConfiguration:*(*(a1 + 32) + 40)];
  [*(*(a1 + 32) + 40) bounds];
  [v15 setFrame:?];
  [v15 setLevel:0.0];
  [v15 setForeground:1];
  [v15 setInterfaceOrientation:1];
  if ([v15 isUISubclass])
  {
    v3 = v15;
    [v3 setTargetOfEventDeferringEnvironments:0];
    [v3 setInterfaceOrientationMode:100];
    v4 = SBApp;
    v5 = [*(*(a1 + 32) + 40) identity];
    v6 = [v4 userInterfaceStyleProviderForDisplay:v5];
    [v3 setUserInterfaceStyle:{objc_msgSend(v6, "currentStyle")}];

    v7 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    [v7 sb_applyDisplayEdgeInfoToSceneSettings:v3];
    v8 = [MEMORY[0x277D77770] sb_defaultContext];
    v9 = objc_alloc(MEMORY[0x277CF0BE8]);
    [v8 deviceInfoFloatValueForKey:*MEMORY[0x277D77810]];
    v10 = [v9 initWithCornerRadius:?];
    [v3 setCornerRadiusConfiguration:v10];
    v11 = [*(*(a1 + 32) + 8) chamoisWindowingEnabled];
    v12 = [*(*(a1 + 32) + 8) medusaMultitaskingEnabled];
    if (v12)
    {
      LOBYTE(v12) = SBFIsFlexibleWindowingUIAvailable();
    }

    [v3 setEnhancedWindowingEnabled:(v11 | v12) & 1];
  }

  v13 = [v15 ignoreOcclusionReasons];
  [v13 addObject:@"SystemApp"];

  v14 = [v15 transientLocalSettings];
  [v14 setObject:*(*(a1 + 32) + 24) forSetting:4444];
}

void __81__SBSystemShellEmbeddedDisplayController__createSystemShellSceneWithOrientation___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isUISubclass])
  {
    v3 = *(a1 + 32);
    v4 = v5;
    [v4 setInterfaceOrientation:v3];
    [v4 setStatusBarStyle:0];
  }
}

- (void)_updateDisplayAssertionPreferences
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateSceneSettings
{
  chamoisWindowingEnabled = [(SBAppSwitcherDefaults *)self->_appSwitcherDefaults chamoisWindowingEnabled];
  medusaMultitaskingEnabled = [(SBAppSwitcherDefaults *)self->_appSwitcherDefaults medusaMultitaskingEnabled];
  if (medusaMultitaskingEnabled)
  {
    LOBYTE(medusaMultitaskingEnabled) = SBFIsFlexibleWindowingUIAvailable();
  }

  scene = self->_scene;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBSystemShellEmbeddedDisplayController__updateSceneSettings__block_invoke;
  v6[3] = &__block_descriptor_34_e33_v16__0__FBSMutableSceneSettings_8l;
  v7 = chamoisWindowingEnabled;
  v8 = medusaMultitaskingEnabled;
  [(FBScene *)scene updateSettingsWithBlock:v6];
}

void __62__SBSystemShellEmbeddedDisplayController__updateSceneSettings__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isUISubclass])
  {
    if (*(a1 + 32))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 33);
    }

    [v4 setEnhancedWindowingEnabled:v3 & 1];
  }
}

- (void)initWithAppSwitcherDefaults:sceneManager:initialOrientation:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"appSwitcherDefaults" object:? file:? lineNumber:? description:?];
}

- (void)initWithAppSwitcherDefaults:sceneManager:initialOrientation:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneManager" object:? file:? lineNumber:? description:?];
}

- (void)connectToDisplayIdentity:(uint64_t *)a1 configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:.cold.1(uint64_t *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v4 = *a1;
  v5 = v2;
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v4 object:? file:? lineNumber:? description:?];
}

- (void)connectToDisplayIdentity:configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[displayConfiguration isMainRootDisplay]" object:? file:? lineNumber:? description:?];
}

- (void)displayAssertionDidInvalidate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)displayAssertionDidGainControlOfDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)displayAssertionDidGainControlOfDisplay:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)displayAssertion:didReceiveNewDeactivationReasons:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)displayAssertion:didLoseControlOfDisplayForDeactivationReasons:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end