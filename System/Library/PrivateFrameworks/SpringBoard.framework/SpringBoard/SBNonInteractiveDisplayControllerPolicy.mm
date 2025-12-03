@interface SBNonInteractiveDisplayControllerPolicy
- (BOOL)displayController:(id)controller shouldUpdatePresentationWithSceneManager:(id)manager displayConfiguration:(id)configuration;
- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity;
- (SBNonInteractiveDisplayControllerPolicy)initWithFBSceneManager:(id)manager monitoredWindowScene:(id)scene applicationController:(id)controller;
- (id)_fetchOrCreateSceneForApplication:(id)application monitoredDisplayScene:(id)scene fromSceneManager:(id)manager displayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons;
- (id)assertionPreferencesForDisplay:(id)display displayConfiguration:(id)configuration;
- (id)childTransactionsForTransitionRequest:(id)request;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayPreferencesForDisplayController:(id)controller;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (id)previousLayoutStateForApplicationTransitionContext:(id)context;
- (void)connectToDisplayController:(id)controller displayConfiguration:(id)configuration embeddedBacklightOn:(BOOL)on;
- (void)dealloc;
- (void)displayController:(id)controller didBeginTransaction:(id)transaction sceneManager:(id)manager displayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons;
- (void)displayController:(id)controller didGainControlOfDisplayWithSceneManager:(id)manager;
- (void)displayController:(id)controller sceneManager:(id)manager didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)reasons;
- (void)displayController:(id)controller sceneManager:(id)manager didReceiveNewDeactivationReasons:(unint64_t)reasons;
- (void)displayController:(id)controller updatePresentationWithSceneManager:(id)manager displayConfiguration:(id)configuration completion:(id)completion;
- (void)displayControllerDidDisconnect:(id)disconnect sceneManager:(id)manager;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation SBNonInteractiveDisplayControllerPolicy

- (SBNonInteractiveDisplayControllerPolicy)initWithFBSceneManager:(id)manager monitoredWindowScene:(id)scene applicationController:(id)controller
{
  managerCopy = manager;
  sceneCopy = scene;
  controllerCopy = controller;
  if (managerCopy)
  {
    if (sceneCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBNonInteractiveDisplayControllerPolicy initWithFBSceneManager:monitoredWindowScene:applicationController:];
    if (controllerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBNonInteractiveDisplayControllerPolicy initWithFBSceneManager:monitoredWindowScene:applicationController:];
  if (!sceneCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (controllerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBNonInteractiveDisplayControllerPolicy initWithFBSceneManager:monitoredWindowScene:applicationController:];
LABEL_4:
  v16.receiver = self;
  v16.super_class = SBNonInteractiveDisplayControllerPolicy;
  v12 = [(SBNonInteractiveDisplayControllerPolicy *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fbSceneManager, manager);
    objc_storeStrong(&v13->_monitoredWindowScene, scene);
    objc_storeStrong(&v13->_applicationController, controller);
    sceneManager = [(SBWindowScene *)v13->_monitoredWindowScene sceneManager];
    [sceneManager addChildTransactionProvider:v13];
  }

  return v13;
}

- (void)dealloc
{
  sceneManager = [(SBWindowScene *)self->_monitoredWindowScene sceneManager];
  [sceneManager removeChildTransactionProvider:self];

  v4.receiver = self;
  v4.super_class = SBNonInteractiveDisplayControllerPolicy;
  [(SBNonInteractiveDisplayControllerPolicy *)&v4 dealloc];
}

- (id)childTransactionsForTransitionRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_displayController);
  v6 = [WeakRetained createTransactionForTransitionRequest:requestCopy];

  return v6;
}

- (void)connectToDisplayController:(id)controller displayConfiguration:(id)configuration embeddedBacklightOn:(BOOL)on
{
  v7 = MEMORY[0x277CCACC8];
  configurationCopy = configuration;
  controllerCopy = controller;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy connectToDisplayController:displayConfiguration:embeddedBacklightOn:];
  }

  objc_storeWeak(&self->_displayController, controllerCopy);
  identity = [configurationCopy identity];

  displayIdentity = self->_displayIdentity;
  self->_displayIdentity = identity;

  layoutPublisher = [controllerCopy layoutPublisher];

  layoutPublisher = self->_layoutPublisher;
  self->_layoutPublisher = layoutPublisher;
}

- (void)displayControllerDidDisconnect:(id)disconnect sceneManager:(id)manager
{
  currentScene = self->_currentScene;
  managerCopy = manager;
  [(FBScene *)currentScene removeObserver:self];
  allScenes = [managerCopy allScenes];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBNonInteractiveDisplayControllerPolicy_displayControllerDidDisconnect_sceneManager___block_invoke;
  v9[3] = &unk_2783BE668;
  v9[4] = self;
  v9[5] = a2;
  [allScenes enumerateObjectsUsingBlock:v9];
}

void __87__SBNonInteractiveDisplayControllerPolicy_displayControllerDidDisconnect_sceneManager___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogDisplayControlling();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 16));
    v6 = [v3 identifier];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ INVALIDATING scene %{public}@", &v7, 0x16u);
  }

  [v3 invalidate];
}

- (void)displayController:(id)controller didGainControlOfDisplayWithSceneManager:(id)manager
{
  managerCopy = manager;
  if (self->_currentLayoutElement)
  {
    [(BSInvalidatable *)self->_currentLayoutElementAssertion invalidate];
    v6 = [(FBSDisplayLayoutPublishing *)self->_layoutPublisher addElement:self->_currentLayoutElement];
    currentLayoutElementAssertion = self->_currentLayoutElementAssertion;
    self->_currentLayoutElementAssertion = v6;
  }

  allScenes = [managerCopy allScenes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__SBNonInteractiveDisplayControllerPolicy_displayController_didGainControlOfDisplayWithSceneManager___block_invoke;
  v9[3] = &unk_2783ACB60;
  v9[4] = self;
  [allScenes enumerateObjectsUsingBlock:v9];

  self->_previouslyReceivedDeactivationReasons = 0;
}

void __101__SBNonInteractiveDisplayControllerPolicy_displayController_didGainControlOfDisplayWithSceneManager___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 settings];
  v4 = [v3 isUISubclass];

  if (v4)
  {
    v5 = [v7 uiSettings];
    v6 = [v5 mutableCopy];

    [v6 setDeactivationReasons:{objc_msgSend(v6, "deactivationReasons") & ~*(*(a1 + 32) + 72)}];
    [v7 updateSettings:v6 withTransitionContext:0];
  }
}

- (void)displayController:(id)controller sceneManager:(id)manager didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)reasons
{
  currentLayoutElementAssertion = self->_currentLayoutElementAssertion;
  managerCopy = manager;
  [(BSInvalidatable *)currentLayoutElementAssertion invalidate];
  v9 = self->_currentLayoutElementAssertion;
  self->_currentLayoutElementAssertion = 0;

  allScenes = [managerCopy allScenes];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __121__SBNonInteractiveDisplayControllerPolicy_displayController_sceneManager_didLoseControlOfDisplayWithDeactivationReasons___block_invoke;
  v11[3] = &__block_descriptor_40_e21_v24__0__FBScene_8_B16l;
  v11[4] = reasons;
  [allScenes enumerateObjectsUsingBlock:v11];

  self->_previouslyReceivedDeactivationReasons = reasons;
}

void __121__SBNonInteractiveDisplayControllerPolicy_displayController_sceneManager_didLoseControlOfDisplayWithDeactivationReasons___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 settings];
  v4 = [v3 isUISubclass];

  if (v4)
  {
    v5 = [v7 uiSettings];
    v6 = [v5 mutableCopy];

    [v6 setDeactivationReasons:{*(a1 + 32) | objc_msgSend(v6, "deactivationReasons")}];
    [v7 updateSettings:v6 withTransitionContext:0];
  }
}

- (void)displayController:(id)controller sceneManager:(id)manager didReceiveNewDeactivationReasons:(unint64_t)reasons
{
  allScenes = [manager allScenes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __107__SBNonInteractiveDisplayControllerPolicy_displayController_sceneManager_didReceiveNewDeactivationReasons___block_invoke;
  v8[3] = &unk_2783BE668;
  v8[4] = self;
  v8[5] = reasons;
  [allScenes enumerateObjectsUsingBlock:v8];

  self->_previouslyReceivedDeactivationReasons = reasons;
}

void __107__SBNonInteractiveDisplayControllerPolicy_displayController_sceneManager_didReceiveNewDeactivationReasons___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 settings];
  v4 = [v3 isUISubclass];

  if (v4)
  {
    v5 = [v7 uiSettings];
    v6 = [v5 mutableCopy];

    [v6 setDeactivationReasons:{*(a1 + 40) | objc_msgSend(v6, "deactivationReasons") & ~*(*(a1 + 32) + 72)}];
    [v7 updateSettings:v6 withTransitionContext:0];
  }
}

- (void)displayController:(id)controller didBeginTransaction:(id)transaction sceneManager:(id)manager displayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons
{
  v59 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  transactionCopy = transaction;
  managerCopy = manager;
  configurationCopy = configuration;
  if ([(FBSDisplayIdentity *)self->_displayIdentity isiPodOnlyDisplay])
  {
    iPodOutApplication = [(SBApplicationController *)self->_applicationController iPodOutApplication];
LABEL_5:
    v15 = iPodOutApplication;
    v16 = 0;
    goto LABEL_11;
  }

  if ([(FBSDisplayIdentity *)self->_displayIdentity isMusicOnlyDisplay])
  {
    iPodOutApplication = [(SBApplicationController *)self->_applicationController musicApplication];
    goto LABEL_5;
  }

  layoutStateProvider = [(SBWindowScene *)self->_monitoredWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  v19 = [layoutState elementWithRole:1];
  workspaceEntity = [v19 workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];

  application = [applicationSceneEntity application];
  if (-[FBSDisplayIdentity isRestrictedAirPlayDisplay](self->_displayIdentity, "isRestrictedAirPlayDisplay") && ([application processState], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "pid"), v25 = -[FBSDisplayIdentity pid](self->_displayIdentity, "pid"), v23, v24 != v25))
  {
    v15 = 0;
  }

  else
  {
    v15 = application;
  }

  v16 = 1;
LABEL_11:
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__128;
  v53 = __Block_byref_object_dispose__128;
  v54 = 0;
  sceneManager = [(SBWindowScene *)self->_monitoredWindowScene sceneManager];
  externalApplicationSceneHandles = [sceneManager externalApplicationSceneHandles];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke;
  v46[3] = &unk_2783C1A90;
  v28 = v15;
  v47 = v28;
  v48 = &v49;
  [externalApplicationSceneHandles enumerateObjectsUsingBlock:v46];

  v29 = v50[5];
  if (!v29 || !v28)
  {
    if (v28)
    {
      v35 = 1;
    }

    else
    {
      v35 = v16;
    }

    if (v35)
    {
      v30 = 0;
      if (!v28 || v29)
      {
        goto LABEL_33;
      }

      v36 = SBLogDisplayControlling();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        [SBNonInteractiveDisplayControllerPolicy displayController:v37 didBeginTransaction:v28 sceneManager:buf displayConfiguration:v36 deactivationReasons:?];
      }

      if ([transactionCopy isAuditHistoryEnabled])
      {
        [transactionCopy _addAuditHistoryItem:{@"failed to add an external display scene for %@ because there's no monitoredDisplayScene", v28}];
      }
    }

    else
    {
      v38 = SBLogDisplayControlling();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        [SBNonInteractiveDisplayControllerPolicy displayController:v39 didBeginTransaction:buf sceneManager:v38 displayConfiguration:? deactivationReasons:?];
      }

      if ([transactionCopy isAuditHistoryEnabled])
      {
        [transactionCopy _addAuditHistoryItem:@"failed to add an external display scene because we couldn't resolve an application"];
      }
    }

    v30 = 0;
    goto LABEL_33;
  }

  v30 = [SBNonInteractiveDisplayControllerPolicy _fetchOrCreateSceneForApplication:"_fetchOrCreateSceneForApplication:monitoredDisplayScene:fromSceneManager:displayConfiguration:deactivationReasons:" monitoredDisplayScene:v28 fromSceneManager:? displayConfiguration:? deactivationReasons:?];
  if (v30)
  {
    v31 = SBLogDisplayControlling();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      identity = [v30 identity];
      *buf = 138543618;
      v56 = v32;
      v57 = 2114;
      v58 = identity;
      _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved scene: %{public}@", buf, 0x16u);
    }

    if ([transactionCopy isAuditHistoryEnabled])
    {
      identifier = [(FBScene *)self->_currentScene identifier];
      [transactionCopy _addAuditHistoryItem:{@"retrieved scene %@", identifier}];
    }
  }

LABEL_33:
  currentApplication = self->_currentApplication;
  self->_currentApplication = 0;

  [(FBScene *)self->_currentScene removeObserver:self];
  objc_storeStrong(&self->_currentScene, v30);
  if (self->_currentScene)
  {
    objc_storeStrong(&self->_currentApplication, v15);
    [(FBScene *)self->_currentScene addObserver:self];
  }

  allScenes = [managerCopy allScenes];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke_31;
  v45[3] = &unk_2783C1AB8;
  v45[4] = self;
  v45[5] = a2;
  v45[6] = reasons;
  [allScenes enumerateObjectsUsingBlock:v45];

  _Block_object_dispose(&v49, 8);
}

void __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 application];
  v6 = [v5 isSameExecutableAsApplication:*(a1 + 32)];

  if (v6)
  {
    v7 = [v10 scene];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a3 = 1;
  }
}

void __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke_31(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 settings];
  v5 = [v4 isUISubclass];

  if ((v5 & 1) == 0)
  {
    __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke_31_cold_1(a1);
  }

  if (*(*(a1 + 32) + 88) != v3)
  {
    v6 = [v3 uiSettings];
    v7 = [v6 mutableCopy];

    if ([v7 isForeground])
    {
      v8 = SBLogDisplayControlling();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 16));
        v10 = [v3 identifier];
        v11 = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v10;
        _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ backgrounding non-current scene: %{public}@", &v11, 0x16u);
      }

      [v7 setForeground:0];
    }

    [v7 setDeactivationReasons:{objc_msgSend(v7, "deactivationReasons") | *(a1 + 48) | 0x200}];
    [v3 updateSettings:v7 withTransitionContext:0];
  }
}

- (BOOL)displayController:(id)controller shouldUpdatePresentationWithSceneManager:(id)manager displayConfiguration:(id)configuration
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  string = [MEMORY[0x277CCAB68] string];
  if (([(FBSDisplayConfiguration *)self->_lastPresentationUpdateDisplayConfiguration isEqual:configurationCopy]& 1) == 0)
  {
    [string appendString:@"displayConfiguration"];
  }

  if (([(FBScene *)self->_lastPresentationUpdateScene isEqual:self->_currentScene]& 1) == 0)
  {
    if ([string length])
    {
      [string appendString:{@", "}];
    }

    [string appendString:@"scene"];
  }

  v8 = [string length];
  if (v8)
  {
    v9 = SBLogDisplayControlling();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = string;
    }
  }

  v11 = v8 != 0;
  lastPresentationUpdateDisplayConfiguration = self->_lastPresentationUpdateDisplayConfiguration;
  self->_lastPresentationUpdateDisplayConfiguration = configurationCopy;
  v13 = configurationCopy;

  objc_storeStrong(&self->_lastPresentationUpdateScene, self->_currentScene);
  return v11;
}

- (void)displayController:(id)controller updatePresentationWithSceneManager:(id)manager displayConfiguration:(id)configuration completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  if (([(FBSDisplayConfiguration *)self->_lastPresentationUpdateDisplayConfiguration isEqual:configurationCopy]& 1) != 0 || (objc_storeStrong(&self->_lastPresentationUpdateDisplayConfiguration, configuration), p_currentScene = &self->_currentScene, !self->_currentScene))
  {
    p_lastPresentationUpdateScene = &self->_lastPresentationUpdateScene;
    p_currentScene = &self->_currentScene;
    if (([(FBScene *)self->_lastPresentationUpdateScene isEqual:self->_currentScene]& 1) != 0)
    {
LABEL_18:
      completionCopy[2](completionCopy);
      goto LABEL_19;
    }
  }

  else
  {
    v12 = SBLogDisplayControlling();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543362;
      v32 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ running update as display changed", buf, 0xCu);
    }

    p_lastPresentationUpdateScene = &self->_lastPresentationUpdateScene;
    if (([(FBScene *)self->_lastPresentationUpdateScene isEqual:self->_currentScene]& 1) != 0)
    {
      goto LABEL_12;
    }
  }

  objc_storeStrong(p_lastPresentationUpdateScene, *p_currentScene);
  if (!*p_currentScene)
  {
    goto LABEL_18;
  }

  v15 = SBLogDisplayControlling();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    *buf = 138543362;
    v32 = v16;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ running update as scene changed", buf, 0xCu);
  }

LABEL_12:
  bundleIdentifier = [(SBApplication *)self->_currentApplication bundleIdentifier];
  bundleIdentifier2 = [(FBSDisplayLayoutElement *)self->_currentLayoutElement bundleIdentifier];
  v19 = [bundleIdentifier2 isEqualToString:bundleIdentifier];

  if ((v19 & 1) == 0)
  {
    [(BSInvalidatable *)self->_currentLayoutElementAssertion invalidate];
    if (bundleIdentifier)
    {
      v20 = [MEMORY[0x277D66A58] elementWithIdentifier:bundleIdentifier presenting:1];
      currentLayoutElement = self->_currentLayoutElement;
      self->_currentLayoutElement = v20;

      v22 = [(FBSDisplayLayoutPublishing *)self->_layoutPublisher addElement:self->_currentLayoutElement];
      currentLayoutElementAssertion = self->_currentLayoutElementAssertion;
      self->_currentLayoutElementAssertion = v22;
    }
  }

  settings = [(FBScene *)*p_currentScene settings];
  isUISubclass = [settings isUISubclass];

  if ((isUISubclass & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy displayController:updatePresentationWithSceneManager:displayConfiguration:completion:];
  }

  uiSettings = [(FBScene *)*p_currentScene uiSettings];
  v27 = [uiSettings mutableCopy];

  [v27 setDisplayConfiguration:configurationCopy];
  [configurationCopy bounds];
  [v27 setFrame:?];
  v28 = *p_currentScene;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __128__SBNonInteractiveDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke;
  v29[3] = &unk_2783A9C70;
  v30 = completionCopy;
  [(FBScene *)v28 updateSettings:v27 withTransitionContext:0 completion:v29];

LABEL_19:
}

- (id)displayPreferencesForDisplayController:(id)controller
{
  uiClientSettings = [(FBScene *)self->_currentScene uiClientSettings];
  displayConfigurationRequest = [uiClientSettings displayConfigurationRequest];

  v5 = [[SBSceneHostingDisplayPreferences alloc] initWithDisplayConfigurationRequest:displayConfigurationRequest logicalScale:1 contentsScale:1.0 keepOtherModes:1.0, 1.0];

  return v5;
}

- (id)assertionPreferencesForDisplay:(id)display displayConfiguration:(id)configuration
{
  v27 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = objc_alloc_init(SBDisplayAssertionPreferences);
  currentScene = self->_currentScene;
  if (currentScene)
  {
    clientSettings = [(FBScene *)currentScene clientSettings];
    isUISubclass = [clientSettings isUISubclass];

    if ((isUISubclass & 1) == 0)
    {
      [SBNonInteractiveDisplayControllerPolicy assertionPreferencesForDisplay:displayConfiguration:];
    }

    uiClientSettings = [(FBScene *)self->_currentScene uiClientSettings];
    disablesMirroring = [uiClientSettings disablesMirroring];

    v12 = SBLogDisplayControlling();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      identity = [(FBScene *)self->_currentScene identity];
      v21 = 138543874;
      v22 = v19;
      v23 = 2114;
      v24 = identity;
      v25 = 1024;
      v26 = disablesMirroring;
      _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ want control (disablesMirroring): %{BOOL}u", &v21, 0x1Cu);
    }

    [(SBDisplayAssertionPreferences *)v6 setWantsControlOfDisplay:disablesMirroring];
    v13 = disablesMirroring ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [SBDisplayPowerLogEntry forDisplay:configurationCopy mode:4 zoom:0];
  [(SBDisplayAssertionPreferences *)v6 setPowerLogEntry:v14];
  displayIdentity = self->_displayIdentity;
  v16 = objc_opt_class();
  v17 = _SBPreventIdleSleepReason(displayIdentity, v16);
  [(SBDisplayAssertionPreferences *)v6 setDisableSystemIdleSleepReason:v17];

  [(SBDisplayAssertionPreferences *)v6 setCloneMirroringMode:1];
  [(SBDisplayAssertionPreferences *)v6 setDisplayState:1];
  [(SBDisplayAssertionPreferences *)v6 setDisplayContentMirroringState:v13];

  return v6;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  v26 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  previousSettings = [settings previousSettings];
  if (([previousSettings isUISubclass] & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy scene:didUpdateClientSettings:];
  }

  clientSettings = [sceneCopy clientSettings];
  isUISubclass = [clientSettings isUISubclass];

  if ((isUISubclass & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy scene:didUpdateClientSettings:];
  }

  uiClientSettings = [sceneCopy uiClientSettings];
  v11 = previousSettings;
  displayConfigurationRequest = [uiClientSettings displayConfigurationRequest];
  displayConfigurationRequest2 = [v11 displayConfigurationRequest];
  v14 = [displayConfigurationRequest isEqual:displayConfigurationRequest2];

  disablesMirroring = [uiClientSettings disablesMirroring];
  if (disablesMirroring == [v11 disablesMirroring])
  {
    if (v14)
    {
      goto LABEL_17;
    }

    v16 = 2;
  }

  else
  {
    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    v17 = SBLogDisplayControlling();
    if (os_signpost_enabled(v17))
    {
      v18 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v22 = 138543618;
      v23 = v18;
      v24 = 1024;
      v25 = disablesMirroring;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_NON_INTERACTIVE_POLICY_UPDATE_ASSERTION_FOR_MIRRORING", "%{public}@ disabledMirroring:%{BOOL}u", &v22, 0x12u);
    }
  }

  v19 = SBLogDisplayControlling();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v22 = 138543362;
    v23 = v20;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "%{public}@ detected client settings change. requesting update", &v22, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_displayController);
  [WeakRetained requestUpdate:v16];

LABEL_17:
}

- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  entityCopy = entity;
  request = [contextCopy request];
  displayConfiguration = [request displayConfiguration];

  [displayConfiguration bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  if (v15 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v19 = SBLogDisplayControlling();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v37.origin.x = v12;
      v37.origin.y = v14;
      v37.size.width = v16;
      v37.size.height = v17;
      v25 = NSStringFromCGRect(v37);
      v26 = 138544386;
      v27 = v24;
      v28 = 2114;
      v29 = v25;
      v30 = 2114;
      v31 = contextCopy;
      v32 = 2114;
      v33 = entityCopy;
      v34 = 2114;
      v35 = displayConfiguration;
      _os_log_error_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_ERROR, "%{public}@ returning frame with CGSizeZero: %{public}@. context: %{public}@; entity: %{public}@; displayConfig: %{public}@", &v26, 0x34u);
    }
  }

  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v17;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  v5 = [request layoutStateForApplicationTransitionContext:contextCopy];

  return v5;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  v5 = [request previousLayoutStateForApplicationTransitionContext:contextCopy];

  return v5;
}

- (id)_fetchOrCreateSceneForApplication:(id)application monitoredDisplayScene:(id)scene fromSceneManager:(id)manager displayConfiguration:(id)configuration deactivationReasons:(unint64_t)reasons
{
  v64 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  sceneCopy = scene;
  configurationCopy = configuration;
  managerCopy = manager;
  v17 = [managerCopy sceneIdentityForApplication:applicationCopy];
  v18 = [SBApplicationSceneHandleRequest defaultRequestForApplication:applicationCopy sceneIdentity:v17 displayIdentity:self->_displayIdentity];

  v19 = [managerCopy fetchOrCreateApplicationSceneHandleForRequest:v18];

  if (v19)
  {
    v50 = a2;
    sceneIfExists = [v19 sceneIfExists];
    if (sceneIfExists)
    {
      v21 = sceneIfExists;
      uiSettings = [sceneIfExists uiSettings];
      v23 = [uiSettings mutableCopy];

      [(SBWorkspaceTransitionRequest *)v23 setDisplayConfiguration:configurationCopy];
      [configurationCopy bounds];
      [(SBMainWorkspaceTransitionRequest *)v23 setFrame:?];
      [(SBMainWorkspaceTransitionRequest *)v23 setForeground:1];
      [(SBMainWorkspaceTransitionRequest *)v23 setDeactivationReasons:[(SBMainWorkspaceTransitionRequest *)v23 deactivationReasons]| reasons];
      [v21 updateSettings:v23 withTransitionContext:0];
      v24 = SBLogDisplayControlling();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        _SBDisplayControllerLoggingProem(self->_displayIdentity);
        v25 = v48 = sceneCopy;
        identifier = [v21 identifier];
        v27 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
        *buf = 138544130;
        v57 = v25;
        v58 = 2114;
        v59 = identifier;
        v60 = 2114;
        v61 = v27;
        v62 = 2114;
        v63 = configurationCopy;
        _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ RETRIEVED scene %{public}@ for presentation; deactivationReasons: %{public}@; displayConfiguration: %{public}@", buf, 0x2Au);

        sceneCopy = v48;
      }
    }

    else
    {
      v23 = [[SBMainWorkspaceTransitionRequest alloc] initWithDisplayConfiguration:configurationCopy];
      applicationContext = [(SBWorkspaceTransitionRequest *)v23 applicationContext];
      [applicationContext setDelegate:self];

      [(SBMainWorkspaceTransitionRequest *)v23 finalize];
      v29 = [[SBExternalDisplayApplicationSceneEntity alloc] initWithApplicationSceneHandle:v19];
      applicationContext2 = [(SBWorkspaceTransitionRequest *)v23 applicationContext];
      v47 = v29;
      [v19 _createParametersFromTransitionContext:applicationContext2 entity:v29];
      v32 = v31 = configurationCopy;

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke;
      v52[3] = &unk_2783C1AE0;
      v54 = v50;
      v52[4] = self;
      v45 = v31;
      v44 = v31;
      v53 = v44;
      reasonsCopy = reasons;
      [v32 updateSettingsWithBlock:v52];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke_2;
      v51[3] = &unk_2783C1B08;
      v51[4] = self;
      v51[5] = v50;
      [v32 updateClientSettingsWithBlock:v51];
      fbSceneManager = self->_fbSceneManager;
      sceneIdentifier = [v19 sceneIdentifier];
      v49 = sceneCopy;
      clientProcess = [sceneCopy clientProcess];
      workspace = [clientProcess workspace];
      v46 = v32;
      v21 = [(FBSceneManager *)fbSceneManager createSceneWithIdentifier:sceneIdentifier parameters:v32 clientProvider:workspace transitionContext:0];

      v37 = SBLogDisplayControlling();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        identifier2 = [v21 identifier];
        uiSettings2 = [v21 uiSettings];
        [uiSettings2 deactivationReasons];
        v41 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
        *buf = 138544130;
        v57 = v38;
        v58 = 2114;
        v59 = identifier2;
        v60 = 2114;
        v61 = v41;
        v62 = 2114;
        v63 = v44;
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ CREATED scene %{public}@ for presentation deactivationReasons: %{public}@; displayConfiguration: %{public}@", buf, 0x2Au);
      }

      sceneCopy = v49;
      configurationCopy = v45;
    }
  }

  else
  {
    v23 = SBLogDisplayControlling();
    if (os_log_type_enabled(&v23->super.super, OS_LOG_TYPE_ERROR))
    {
      v43 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543874;
      v57 = v43;
      v58 = 2114;
      v59 = applicationCopy;
      v60 = 2114;
      v61 = sceneCopy;
      _os_log_error_impl(&dword_21ED4E000, &v23->super.super, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve scene handle for application: %{public}@ monitoredDisplayScene: %{public}@", buf, 0x20u);
    }

    v21 = 0;
  }

  return v21;
}

void __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isUISubclass] & 1) == 0)
  {
    __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke_cold_1(a1);
  }

  [v3 setInterfaceOrientationMode:2];
  [v3 setInterfaceOrientation:1];
  [v3 setDisplayConfiguration:*(a1 + 40)];
  [*(a1 + 40) bounds];
  [v3 setFrame:?];
  [v3 setForeground:1];
  [v3 setDeactivationReasons:{*(a1 + 56) | objc_msgSend(v3, "deactivationReasons")}];
}

void __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isUISubclass] & 1) == 0)
  {
    __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke_2_cold_1(a1);
  }

  [v3 setPreferredInterfaceOrientation:1];
  v5 = objc_alloc_init(MEMORY[0x277D0AD40]);
  [v5 setOverscanCompensation:1];
  v4 = [v5 copy];
  [v3 setDisplayConfigurationRequest:v4];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBNonInteractiveDisplayControllerPolicy *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v6 = [v5 appendObject:self->_currentApplication withName:@"currentApplication"];
  v7 = [v5 appendObject:self->_currentLayoutElement withName:@"currentLayoutElement"];
  if (self->_currentScene)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__SBNonInteractiveDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_2783A92D8;
    v9[4] = self;
    v10 = v5;
    [v10 appendBodySectionWithName:@"FBScene" multilinePrefix:prefixCopy block:v9];
  }

  return v5;
}

void __81__SBNonInteractiveDisplayControllerPolicy_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v8 = [*(*(a1 + 32) + 88) uiSettings];
  v2 = *(a1 + 40);
  [v8 frame];
  v3 = [v2 appendRect:@"frame" withName:?];
  v4 = [*(a1 + 40) appendBool:objc_msgSend(v8 withName:{"isForeground"), @"isForeground"}];
  v5 = *(a1 + 40);
  [v8 deactivationReasons];
  v6 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
  v7 = [v5 appendObject:v6 withName:@"deactivationReasons"];
}

- (void)initWithFBSceneManager:monitoredWindowScene:applicationController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"fbSceneManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithFBSceneManager:monitoredWindowScene:applicationController:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"monitoredWindowScene" object:? file:? lineNumber:? description:?];
}

- (void)initWithFBSceneManager:monitoredWindowScene:applicationController:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"applicationController" object:? file:? lineNumber:? description:?];
}

- (void)connectToDisplayController:displayConfiguration:embeddedBacklightOn:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBNonInteractiveDisplayControllerPolicy connectToDisplayController:displayConfiguration:embeddedBacklightOn:]"];
  [v1 handleFailureInFunction:v0 file:@"SBNonInteractiveDisplayControllerPolicy.m" lineNumber:122 description:@"this call must be made on the main thread"];
}

- (void)displayController:(os_log_t)log didBeginTransaction:sceneManager:displayConfiguration:deactivationReasons:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "%{public}@ can't get a scene because we couldn't resolve an application", buf, 0xCu);
}

- (void)displayController:(uint8_t *)buf didBeginTransaction:(os_log_t)log sceneManager:displayConfiguration:deactivationReasons:.cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "%{public}@ can't get a scene for %{public}@ because there's no monitoredDisplayScene", buf, 0x16u);
}

void __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke_31_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SBNonInteractiveDisplayControllerPolicy.m" lineNumber:251 description:@"settings must be a UI subclass"];
}

- (void)displayController:updatePresentationWithSceneManager:displayConfiguration:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)assertionPreferencesForDisplay:displayConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:didUpdateClientSettings:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:didUpdateClientSettings:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SBNonInteractiveDisplayControllerPolicy.m" lineNumber:469 description:@"settings must be a UI subclass"];
}

void __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SBNonInteractiveDisplayControllerPolicy.m" lineNumber:483 description:@"clientSettings must be a UI subclass"];
}

@end