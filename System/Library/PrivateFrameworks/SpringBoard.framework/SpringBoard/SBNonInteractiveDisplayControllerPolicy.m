@interface SBNonInteractiveDisplayControllerPolicy
- (BOOL)displayController:(id)a3 shouldUpdatePresentationWithSceneManager:(id)a4 displayConfiguration:(id)a5;
- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4;
- (SBNonInteractiveDisplayControllerPolicy)initWithFBSceneManager:(id)a3 monitoredWindowScene:(id)a4 applicationController:(id)a5;
- (id)_fetchOrCreateSceneForApplication:(id)a3 monitoredDisplayScene:(id)a4 fromSceneManager:(id)a5 displayConfiguration:(id)a6 deactivationReasons:(unint64_t)a7;
- (id)assertionPreferencesForDisplay:(id)a3 displayConfiguration:(id)a4;
- (id)childTransactionsForTransitionRequest:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayPreferencesForDisplayController:(id)a3;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
- (id)previousLayoutStateForApplicationTransitionContext:(id)a3;
- (void)connectToDisplayController:(id)a3 displayConfiguration:(id)a4 embeddedBacklightOn:(BOOL)a5;
- (void)dealloc;
- (void)displayController:(id)a3 didBeginTransaction:(id)a4 sceneManager:(id)a5 displayConfiguration:(id)a6 deactivationReasons:(unint64_t)a7;
- (void)displayController:(id)a3 didGainControlOfDisplayWithSceneManager:(id)a4;
- (void)displayController:(id)a3 sceneManager:(id)a4 didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)a5;
- (void)displayController:(id)a3 sceneManager:(id)a4 didReceiveNewDeactivationReasons:(unint64_t)a5;
- (void)displayController:(id)a3 updatePresentationWithSceneManager:(id)a4 displayConfiguration:(id)a5 completion:(id)a6;
- (void)displayControllerDidDisconnect:(id)a3 sceneManager:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
@end

@implementation SBNonInteractiveDisplayControllerPolicy

- (SBNonInteractiveDisplayControllerPolicy)initWithFBSceneManager:(id)a3 monitoredWindowScene:(id)a4 applicationController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBNonInteractiveDisplayControllerPolicy initWithFBSceneManager:monitoredWindowScene:applicationController:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBNonInteractiveDisplayControllerPolicy initWithFBSceneManager:monitoredWindowScene:applicationController:];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
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
    objc_storeStrong(&v12->_fbSceneManager, a3);
    objc_storeStrong(&v13->_monitoredWindowScene, a4);
    objc_storeStrong(&v13->_applicationController, a5);
    v14 = [(SBWindowScene *)v13->_monitoredWindowScene sceneManager];
    [v14 addChildTransactionProvider:v13];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(SBWindowScene *)self->_monitoredWindowScene sceneManager];
  [v3 removeChildTransactionProvider:self];

  v4.receiver = self;
  v4.super_class = SBNonInteractiveDisplayControllerPolicy;
  [(SBNonInteractiveDisplayControllerPolicy *)&v4 dealloc];
}

- (id)childTransactionsForTransitionRequest:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_displayController);
  v6 = [WeakRetained createTransactionForTransitionRequest:v4];

  return v6;
}

- (void)connectToDisplayController:(id)a3 displayConfiguration:(id)a4 embeddedBacklightOn:(BOOL)a5
{
  v7 = MEMORY[0x277CCACC8];
  v8 = a4;
  v9 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy connectToDisplayController:displayConfiguration:embeddedBacklightOn:];
  }

  objc_storeWeak(&self->_displayController, v9);
  v10 = [v8 identity];

  displayIdentity = self->_displayIdentity;
  self->_displayIdentity = v10;

  v12 = [v9 layoutPublisher];

  layoutPublisher = self->_layoutPublisher;
  self->_layoutPublisher = v12;
}

- (void)displayControllerDidDisconnect:(id)a3 sceneManager:(id)a4
{
  currentScene = self->_currentScene;
  v7 = a4;
  [(FBScene *)currentScene removeObserver:self];
  v8 = [v7 allScenes];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBNonInteractiveDisplayControllerPolicy_displayControllerDidDisconnect_sceneManager___block_invoke;
  v9[3] = &unk_2783BE668;
  v9[4] = self;
  v9[5] = a2;
  [v8 enumerateObjectsUsingBlock:v9];
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

- (void)displayController:(id)a3 didGainControlOfDisplayWithSceneManager:(id)a4
{
  v5 = a4;
  if (self->_currentLayoutElement)
  {
    [(BSInvalidatable *)self->_currentLayoutElementAssertion invalidate];
    v6 = [(FBSDisplayLayoutPublishing *)self->_layoutPublisher addElement:self->_currentLayoutElement];
    currentLayoutElementAssertion = self->_currentLayoutElementAssertion;
    self->_currentLayoutElementAssertion = v6;
  }

  v8 = [v5 allScenes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__SBNonInteractiveDisplayControllerPolicy_displayController_didGainControlOfDisplayWithSceneManager___block_invoke;
  v9[3] = &unk_2783ACB60;
  v9[4] = self;
  [v8 enumerateObjectsUsingBlock:v9];

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

- (void)displayController:(id)a3 sceneManager:(id)a4 didLoseControlOfDisplayWithDeactivationReasons:(unint64_t)a5
{
  currentLayoutElementAssertion = self->_currentLayoutElementAssertion;
  v8 = a4;
  [(BSInvalidatable *)currentLayoutElementAssertion invalidate];
  v9 = self->_currentLayoutElementAssertion;
  self->_currentLayoutElementAssertion = 0;

  v10 = [v8 allScenes];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __121__SBNonInteractiveDisplayControllerPolicy_displayController_sceneManager_didLoseControlOfDisplayWithDeactivationReasons___block_invoke;
  v11[3] = &__block_descriptor_40_e21_v24__0__FBScene_8_B16l;
  v11[4] = a5;
  [v10 enumerateObjectsUsingBlock:v11];

  self->_previouslyReceivedDeactivationReasons = a5;
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

- (void)displayController:(id)a3 sceneManager:(id)a4 didReceiveNewDeactivationReasons:(unint64_t)a5
{
  v7 = [a4 allScenes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __107__SBNonInteractiveDisplayControllerPolicy_displayController_sceneManager_didReceiveNewDeactivationReasons___block_invoke;
  v8[3] = &unk_2783BE668;
  v8[4] = self;
  v8[5] = a5;
  [v7 enumerateObjectsUsingBlock:v8];

  self->_previouslyReceivedDeactivationReasons = a5;
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

- (void)displayController:(id)a3 didBeginTransaction:(id)a4 sceneManager:(id)a5 displayConfiguration:(id)a6 deactivationReasons:(unint64_t)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v12 = a4;
  v13 = a5;
  v44 = a6;
  if ([(FBSDisplayIdentity *)self->_displayIdentity isiPodOnlyDisplay])
  {
    v14 = [(SBApplicationController *)self->_applicationController iPodOutApplication];
LABEL_5:
    v15 = v14;
    v16 = 0;
    goto LABEL_11;
  }

  if ([(FBSDisplayIdentity *)self->_displayIdentity isMusicOnlyDisplay])
  {
    v14 = [(SBApplicationController *)self->_applicationController musicApplication];
    goto LABEL_5;
  }

  v17 = [(SBWindowScene *)self->_monitoredWindowScene layoutStateProvider];
  v18 = [v17 layoutState];
  v19 = [v18 elementWithRole:1];
  v20 = [v19 workspaceEntity];
  v21 = [v20 applicationSceneEntity];

  v22 = [v21 application];
  if (-[FBSDisplayIdentity isRestrictedAirPlayDisplay](self->_displayIdentity, "isRestrictedAirPlayDisplay") && ([v22 processState], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "pid"), v25 = -[FBSDisplayIdentity pid](self->_displayIdentity, "pid"), v23, v24 != v25))
  {
    v15 = 0;
  }

  else
  {
    v15 = v22;
  }

  v16 = 1;
LABEL_11:
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__128;
  v53 = __Block_byref_object_dispose__128;
  v54 = 0;
  v26 = [(SBWindowScene *)self->_monitoredWindowScene sceneManager];
  v27 = [v26 externalApplicationSceneHandles];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke;
  v46[3] = &unk_2783C1A90;
  v28 = v15;
  v47 = v28;
  v48 = &v49;
  [v27 enumerateObjectsUsingBlock:v46];

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

      if ([v12 isAuditHistoryEnabled])
      {
        [v12 _addAuditHistoryItem:{@"failed to add an external display scene for %@ because there's no monitoredDisplayScene", v28}];
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

      if ([v12 isAuditHistoryEnabled])
      {
        [v12 _addAuditHistoryItem:@"failed to add an external display scene because we couldn't resolve an application"];
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
      v33 = [v30 identity];
      *buf = 138543618;
      v56 = v32;
      v57 = 2114;
      v58 = v33;
      _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved scene: %{public}@", buf, 0x16u);
    }

    if ([v12 isAuditHistoryEnabled])
    {
      v34 = [(FBScene *)self->_currentScene identifier];
      [v12 _addAuditHistoryItem:{@"retrieved scene %@", v34}];
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

  v41 = [v13 allScenes];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __135__SBNonInteractiveDisplayControllerPolicy_displayController_didBeginTransaction_sceneManager_displayConfiguration_deactivationReasons___block_invoke_31;
  v45[3] = &unk_2783C1AB8;
  v45[4] = self;
  v45[5] = a2;
  v45[6] = a7;
  [v41 enumerateObjectsUsingBlock:v45];

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

- (BOOL)displayController:(id)a3 shouldUpdatePresentationWithSceneManager:(id)a4 displayConfiguration:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [MEMORY[0x277CCAB68] string];
  if (([(FBSDisplayConfiguration *)self->_lastPresentationUpdateDisplayConfiguration isEqual:v6]& 1) == 0)
  {
    [v7 appendString:@"displayConfiguration"];
  }

  if (([(FBScene *)self->_lastPresentationUpdateScene isEqual:self->_currentScene]& 1) == 0)
  {
    if ([v7 length])
    {
      [v7 appendString:{@", "}];
    }

    [v7 appendString:@"scene"];
  }

  v8 = [v7 length];
  if (v8)
  {
    v9 = SBLogDisplayControlling();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v7;
    }
  }

  v11 = v8 != 0;
  lastPresentationUpdateDisplayConfiguration = self->_lastPresentationUpdateDisplayConfiguration;
  self->_lastPresentationUpdateDisplayConfiguration = v6;
  v13 = v6;

  objc_storeStrong(&self->_lastPresentationUpdateScene, self->_currentScene);
  return v11;
}

- (void)displayController:(id)a3 updatePresentationWithSceneManager:(id)a4 displayConfiguration:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  if (([(FBSDisplayConfiguration *)self->_lastPresentationUpdateDisplayConfiguration isEqual:v9]& 1) != 0 || (objc_storeStrong(&self->_lastPresentationUpdateDisplayConfiguration, a5), p_currentScene = &self->_currentScene, !self->_currentScene))
  {
    p_lastPresentationUpdateScene = &self->_lastPresentationUpdateScene;
    p_currentScene = &self->_currentScene;
    if (([(FBScene *)self->_lastPresentationUpdateScene isEqual:self->_currentScene]& 1) != 0)
    {
LABEL_18:
      v10[2](v10);
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
  v17 = [(SBApplication *)self->_currentApplication bundleIdentifier];
  v18 = [(FBSDisplayLayoutElement *)self->_currentLayoutElement bundleIdentifier];
  v19 = [v18 isEqualToString:v17];

  if ((v19 & 1) == 0)
  {
    [(BSInvalidatable *)self->_currentLayoutElementAssertion invalidate];
    if (v17)
    {
      v20 = [MEMORY[0x277D66A58] elementWithIdentifier:v17 presenting:1];
      currentLayoutElement = self->_currentLayoutElement;
      self->_currentLayoutElement = v20;

      v22 = [(FBSDisplayLayoutPublishing *)self->_layoutPublisher addElement:self->_currentLayoutElement];
      currentLayoutElementAssertion = self->_currentLayoutElementAssertion;
      self->_currentLayoutElementAssertion = v22;
    }
  }

  v24 = [(FBScene *)*p_currentScene settings];
  v25 = [v24 isUISubclass];

  if ((v25 & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy displayController:updatePresentationWithSceneManager:displayConfiguration:completion:];
  }

  v26 = [(FBScene *)*p_currentScene uiSettings];
  v27 = [v26 mutableCopy];

  [v27 setDisplayConfiguration:v9];
  [v9 bounds];
  [v27 setFrame:?];
  v28 = *p_currentScene;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __128__SBNonInteractiveDisplayControllerPolicy_displayController_updatePresentationWithSceneManager_displayConfiguration_completion___block_invoke;
  v29[3] = &unk_2783A9C70;
  v30 = v10;
  [(FBScene *)v28 updateSettings:v27 withTransitionContext:0 completion:v29];

LABEL_19:
}

- (id)displayPreferencesForDisplayController:(id)a3
{
  v3 = [(FBScene *)self->_currentScene uiClientSettings];
  v4 = [v3 displayConfigurationRequest];

  v5 = [[SBSceneHostingDisplayPreferences alloc] initWithDisplayConfigurationRequest:v4 logicalScale:1 contentsScale:1.0 keepOtherModes:1.0, 1.0];

  return v5;
}

- (id)assertionPreferencesForDisplay:(id)a3 displayConfiguration:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(SBDisplayAssertionPreferences);
  currentScene = self->_currentScene;
  if (currentScene)
  {
    v8 = [(FBScene *)currentScene clientSettings];
    v9 = [v8 isUISubclass];

    if ((v9 & 1) == 0)
    {
      [SBNonInteractiveDisplayControllerPolicy assertionPreferencesForDisplay:displayConfiguration:];
    }

    v10 = [(FBScene *)self->_currentScene uiClientSettings];
    v11 = [v10 disablesMirroring];

    v12 = SBLogDisplayControlling();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v20 = [(FBScene *)self->_currentScene identity];
      v21 = 138543874;
      v22 = v19;
      v23 = 2114;
      v24 = v20;
      v25 = 1024;
      v26 = v11;
      _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ want control (disablesMirroring): %{BOOL}u", &v21, 0x1Cu);
    }

    [(SBDisplayAssertionPreferences *)v6 setWantsControlOfDisplay:v11];
    v13 = v11 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [SBDisplayPowerLogEntry forDisplay:v5 mode:4 zoom:0];
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

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 previousSettings];
  if (([v7 isUISubclass] & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy scene:didUpdateClientSettings:];
  }

  v8 = [v6 clientSettings];
  v9 = [v8 isUISubclass];

  if ((v9 & 1) == 0)
  {
    [SBNonInteractiveDisplayControllerPolicy scene:didUpdateClientSettings:];
  }

  v10 = [v6 uiClientSettings];
  v11 = v7;
  v12 = [v10 displayConfigurationRequest];
  v13 = [v11 displayConfigurationRequest];
  v14 = [v12 isEqual:v13];

  v15 = [v10 disablesMirroring];
  if (v15 == [v11 disablesMirroring])
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
      v25 = v15;
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

- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 request];
  v9 = [v8 displayConfiguration];

  [v9 bounds];
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
      v31 = v6;
      v32 = 2114;
      v33 = v7;
      v34 = 2114;
      v35 = v9;
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

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 layoutStateForApplicationTransitionContext:v3];

  return v5;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 previousLayoutStateForApplicationTransitionContext:v3];

  return v5;
}

- (id)_fetchOrCreateSceneForApplication:(id)a3 monitoredDisplayScene:(id)a4 fromSceneManager:(id)a5 displayConfiguration:(id)a6 deactivationReasons:(unint64_t)a7
{
  v64 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a5;
  v17 = [v16 sceneIdentityForApplication:v13];
  v18 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v13 sceneIdentity:v17 displayIdentity:self->_displayIdentity];

  v19 = [v16 fetchOrCreateApplicationSceneHandleForRequest:v18];

  if (v19)
  {
    v50 = a2;
    v20 = [v19 sceneIfExists];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 uiSettings];
      v23 = [v22 mutableCopy];

      [(SBWorkspaceTransitionRequest *)v23 setDisplayConfiguration:v15];
      [v15 bounds];
      [(SBMainWorkspaceTransitionRequest *)v23 setFrame:?];
      [(SBMainWorkspaceTransitionRequest *)v23 setForeground:1];
      [(SBMainWorkspaceTransitionRequest *)v23 setDeactivationReasons:[(SBMainWorkspaceTransitionRequest *)v23 deactivationReasons]| a7];
      [v21 updateSettings:v23 withTransitionContext:0];
      v24 = SBLogDisplayControlling();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        _SBDisplayControllerLoggingProem(self->_displayIdentity);
        v25 = v48 = v14;
        v26 = [v21 identifier];
        v27 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
        *buf = 138544130;
        v57 = v25;
        v58 = 2114;
        v59 = v26;
        v60 = 2114;
        v61 = v27;
        v62 = 2114;
        v63 = v15;
        _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ RETRIEVED scene %{public}@ for presentation; deactivationReasons: %{public}@; displayConfiguration: %{public}@", buf, 0x2Au);

        v14 = v48;
      }
    }

    else
    {
      v23 = [[SBMainWorkspaceTransitionRequest alloc] initWithDisplayConfiguration:v15];
      v28 = [(SBWorkspaceTransitionRequest *)v23 applicationContext];
      [v28 setDelegate:self];

      [(SBMainWorkspaceTransitionRequest *)v23 finalize];
      v29 = [[SBExternalDisplayApplicationSceneEntity alloc] initWithApplicationSceneHandle:v19];
      v30 = [(SBWorkspaceTransitionRequest *)v23 applicationContext];
      v47 = v29;
      [v19 _createParametersFromTransitionContext:v30 entity:v29];
      v32 = v31 = v15;

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke;
      v52[3] = &unk_2783C1AE0;
      v54 = v50;
      v52[4] = self;
      v45 = v31;
      v44 = v31;
      v53 = v44;
      v55 = a7;
      [v32 updateSettingsWithBlock:v52];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __157__SBNonInteractiveDisplayControllerPolicy__fetchOrCreateSceneForApplication_monitoredDisplayScene_fromSceneManager_displayConfiguration_deactivationReasons___block_invoke_2;
      v51[3] = &unk_2783C1B08;
      v51[4] = self;
      v51[5] = v50;
      [v32 updateClientSettingsWithBlock:v51];
      fbSceneManager = self->_fbSceneManager;
      v34 = [v19 sceneIdentifier];
      v49 = v14;
      v35 = [v14 clientProcess];
      v36 = [v35 workspace];
      v46 = v32;
      v21 = [(FBSceneManager *)fbSceneManager createSceneWithIdentifier:v34 parameters:v32 clientProvider:v36 transitionContext:0];

      v37 = SBLogDisplayControlling();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        v39 = [v21 identifier];
        v40 = [v21 uiSettings];
        [v40 deactivationReasons];
        v41 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
        *buf = 138544130;
        v57 = v38;
        v58 = 2114;
        v59 = v39;
        v60 = 2114;
        v61 = v41;
        v62 = 2114;
        v63 = v44;
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ CREATED scene %{public}@ for presentation deactivationReasons: %{public}@; displayConfiguration: %{public}@", buf, 0x2Au);
      }

      v14 = v49;
      v15 = v45;
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
      v59 = v13;
      v60 = 2114;
      v61 = v14;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBNonInteractiveDisplayControllerPolicy *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
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
    [v10 appendBodySectionWithName:@"FBScene" multilinePrefix:v4 block:v9];
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