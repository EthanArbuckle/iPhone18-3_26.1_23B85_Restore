@interface SBSingleSceneController
- (BOOL)_isClientProcessRunning;
- (SBScenePresenting)presenter;
- (SBSingleSceneController)initWithSceneWorkspaceController:(id)a3 sceneRequestOptions:(id)a4 clientIdentity:(id)a5 traitsRole:(id)a6 level:(double)a7;
- (id)_newActivationContext;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)traitsOrientedResizableViewController;
- (id)traitsOrientedViewController;
- (void)_dismissScene;
- (void)_evaluateSceneActivationState;
- (void)_evaluateSceneForegroundState;
- (void)_evaluateVisibility;
- (void)_presentScene;
- (void)_setVisible:(BOOL)a3;
- (void)dealloc;
- (void)didUpdateSceneTraitsDelegate:(id)a3;
- (void)invalidate;
- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setCornerRadiusConfiguration:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setPresenter:(id)a3;
- (void)setSceneActive:(BOOL)a3;
- (void)setSceneContentVisible:(BOOL)a3;
- (void)setShouldActivateUponClientConnection:(BOOL)a3;
- (void)setShouldBeKeptActiveWhileForeground:(BOOL)a3;
- (void)setTargetDisplayConfiguration:(id)a3;
@end

@implementation SBSingleSceneController

- (void)_evaluateVisibility
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  v4 = [(FBScene *)self->_scene isValid];
  v5 = [(FBScene *)self->_scene contentState];
  v6 = v5;
  v7 = 0;
  if (!self->_hidden && WeakRetained && v4)
  {
    v7 = self->_shouldPresentAnyContentState && self->_targetDisplayConfiguration || v5 == 2;
  }

  v8 = SBLogSystemUIScene();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = WeakRetained != 0;
    v10 = [(FBScene *)self->_scene identifier];
    hidden = self->_hidden;
    v12 = 138544642;
    v13 = v10;
    v14 = 1024;
    v15 = hidden;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v4;
    v22 = 1024;
    v23 = v6 == 2;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] hidden[%{BOOL}u] shouldBeVisible[%{BOOL}u] hasPresenter[%{BOOL}u] sceneIsValid[%{BOOL}u] contentIsReady[%{BOOL}u]", &v12, 0x2Au);
  }

  [(SBSingleSceneController *)self _setVisible:v7];
}

- (SBSingleSceneController)initWithSceneWorkspaceController:(id)a3 sceneRequestOptions:(id)a4 clientIdentity:(id)a5 traitsRole:(id)a6 level:(double)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  BSDispatchQueueAssertMain();
  if (v14)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSingleSceneController initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:];
    if (v16)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_10:
      [SBSingleSceneController initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:];
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [SBSingleSceneController initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:];
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v17)
  {
    goto LABEL_5;
  }

LABEL_11:
  [SBSingleSceneController initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:];
LABEL_5:
  v33.receiver = self;
  v33.super_class = SBSingleSceneController;
  v18 = [(SBSingleSceneController *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_traitsRole, a6);
    v19->_sceneContentVisible = 1;
    objc_storeStrong(&v19->_clientIdentity, a5);
    objc_storeStrong(&v19->_sceneOptions, a4);
    objc_storeStrong(&v19->_sceneWorkspaceController, a3);
    sceneWorkspaceController = v19->_sceneWorkspaceController;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __112__SBSingleSceneController_initWithSceneWorkspaceController_sceneRequestOptions_clientIdentity_traitsRole_level___block_invoke;
    v29[3] = &unk_2783C2760;
    v32 = a2;
    v21 = v19;
    v30 = v21;
    v31 = v15;
    [(SBFSceneWorkspaceController *)sceneWorkspaceController createSceneForProcessIdentity:v16 withOptions:v31 completion:v29];
    [v21[13] addObserver:v21];
    v22 = [SBSceneSettingsUpdater alloc];
    v23 = v21[13];
    v24 = [MEMORY[0x277CCAD78] UUID];
    v25 = [v24 UUIDString];
    v26 = [(SBSceneSettingsUpdater *)v22 initWithScene:v23 persistentIdentifier:v25 level:1 updatesGeometry:a7];
    v27 = v21[3];
    v21[3] = v26;

    [v21[3] setTraitsRole:v19->_traitsRole];
  }

  return v19;
}

void __112__SBSingleSceneController_initWithSceneWorkspaceController_sceneRequestOptions_clientIdentity_traitsRole_level___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    __112__SBSingleSceneController_initWithSceneWorkspaceController_sceneRequestOptions_clientIdentity_traitsRole_level___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  *(v4 + 104) = v3;
}

- (void)dealloc
{
  [(SBSingleSceneController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSingleSceneController;
  [(SBSingleSceneController *)&v3 dealloc];
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SBLogSystemUIScene();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FBScene *)self->_scene identifier];
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating SBSingleSceneController[%p]", &v7, 0x16u);
  }

  [(BSInvalidatable *)self->_settingsUpdaterObserverInvalidatable invalidate];
  [(FBScene *)self->_scene removeObserver:self];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v6 = [WeakRetained dismissScene:self->_scene];

  if ([(FBScene *)self->_scene isValid])
  {
    [(FBScene *)self->_scene invalidate];
  }

  [(SBSingleSceneController *)self _evaluateVisibility];
}

- (void)setSceneContentVisible:(BOOL)a3
{
  self->_sceneContentVisible = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scene:self->_scene hasVisibleContent:self->_sceneContentVisible];
  }
}

- (void)setTargetDisplayConfiguration:(id)a3
{
  v8 = a3;
  if (([(FBSDisplayConfiguration *)self->_targetDisplayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_targetDisplayConfiguration, a3);
    [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setDisplayConfiguration:v8];
    if (v8)
    {
      v5 = [(FBScene *)self->_scene systemShellHostingEnvironment];
      v6 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration();
      [v5 setSystemShellHostingSpaceIdentifier:v6];
    }

    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained sceneDidChangeDisplayIdentity:self->_scene];
    }

    [(SBSingleSceneController *)self _evaluateSceneActivationState];
    [(SBSingleSceneController *)self _evaluateSceneForegroundState];
    [(SBSingleSceneController *)self _evaluateVisibility];
  }
}

- (void)setCornerRadiusConfiguration:(id)a3
{
  objc_storeStrong(&self->_cornerRadiusConfiguration, a3);
  v5 = a3;
  [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setCornerRadiusConfiguration:v5];
}

- (void)setShouldActivateUponClientConnection:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController delegate];
  scene = self->_scene;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __65__SBSingleSceneController_setShouldActivateUponClientConnection___block_invoke;
  v10 = &unk_2783C2788;
  objc_copyWeak(&v11, &location);
  [v5 setScene:scene shouldActivateUponClientConnection:v3 withContextGenerator:&v7];

  if (v3 && ([(FBScene *)self->_scene isActive:v7]& 1) == 0 && [(SBSingleSceneController *)self _isClientProcessRunning])
  {
    [(SBSingleSceneController *)self setSceneActive:1];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __65__SBSingleSceneController_setShouldActivateUponClientConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _newActivationContext];

  return v2;
}

- (void)setShouldBeKeptActiveWhileForeground:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController delegate];
  scene = self->_scene;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __64__SBSingleSceneController_setShouldBeKeptActiveWhileForeground___block_invoke;
  v12 = &unk_2783C2788;
  objc_copyWeak(&v13, &location);
  [v5 setScene:scene shouldBeKeptActiveWhileForeground:v3 withContextGenerator:&v9];

  if (v3 && ([(FBScene *)self->_scene isActive:v9]& 1) == 0)
  {
    v7 = [(FBScene *)self->_scene settings];
    if ([v7 isForeground])
    {
      v8 = [(SBSingleSceneController *)self _isClientProcessRunning];

      if (v8)
      {
        [(SBSingleSceneController *)self setSceneActive:1];
      }
    }

    else
    {
    }
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

id __64__SBSingleSceneController_setShouldBeKeptActiveWhileForeground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _newActivationContext];

  return v2;
}

- (void)setSceneActive:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(SBSingleSceneController *)self _newActivationContext];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setActive:v3 withTransitionContext:v5];
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    self->_hidden = a3;
    [(SBSingleSceneController *)self _evaluateVisibility];
  }
}

- (void)setPresenter:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (!v4)
  {
    v9 = SBLogSystemUIScene();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(FBScene *)self->_scene identifier];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] setPresenter[nil]", &v11, 0xCu);
    }

    v8 = 0;
    goto LABEL_9;
  }

  if (([v4 isEqual:WeakRetained] & 1) == 0)
  {
    v6 = SBLogSystemUIScene();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FBScene *)self->_scene identifier];
      v11 = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] setPresenter[%{public}@] oldPresenter[%{public}@]", &v11, 0x20u);
    }

    [(SBSingleSceneController *)self _setVisible:0];
    v8 = v4;
LABEL_9:
    objc_storeWeak(&self->_presenter, v8);
  }

  [(SBSingleSceneController *)self _evaluateVisibility];
}

- (void)sceneContentStateDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_scene != v4)
  {
    [SBSingleSceneController sceneContentStateDidChange:];
  }

  v5 = [(FBScene *)v4 contentState];
  if ((v5 - 1) >= 2)
  {
    if (!v5)
    {
      v8 = SBLogSystemUIScene();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(FBScene *)self->_scene identifier];
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sceneContentStateDidChange: not ready", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54__SBSingleSceneController_sceneContentStateDidChange___block_invoke;
      v13[3] = &unk_2783A8C68;
      objc_copyWeak(&v14, buf);
      dispatch_async(MEMORY[0x277D85CD0], v13);
      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = SBLogSystemUIScene();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FBScene *)self->_scene identifier];
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] sceneContentStateDidChange: preparing or ready", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SBSingleSceneController_sceneContentStateDidChange___block_invoke_33;
    block[3] = &unk_2783A8C68;
    objc_copyWeak(&v11, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __54__SBSingleSceneController_sceneContentStateDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateVisibility];
}

void __54__SBSingleSceneController_sceneContentStateDidChange___block_invoke_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateVisibility];
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_scene != v6)
  {
    [SBSingleSceneController sceneDidInvalidate:withContext:];
  }

  v8 = SBLogSystemUIScene();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(FBScene *)self->_scene identifier];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sceneDidInvalidate", &v11, 0xCu);
  }

  [(UIScenePresenter *)self->_uiScenePresenter invalidate];
  uiScenePresenter = self->_uiScenePresenter;
  self->_uiScenePresenter = 0;

  [(SBSingleSceneController *)self _evaluateVisibility];
}

- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5
{
  v6 = [a3 settings];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  if (!CGRectIsNull(v17))
  {
    v18.origin.x = v8;
    v18.origin.y = v10;
    v18.size.width = v12;
    v18.size.height = v14;
    if (!CGRectIsEmpty(v18))
    {
      [(SBSingleSceneController *)self _evaluateVisibility];
      v15 = [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController view];
      [v15 setContentViewBoundsInReferenceSpace:{v8, v10, v12, v14}];
    }
  }
}

- (void)_setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    if (a3)
    {
      scene = self->_scene;
      v5 = SBApp;
      v6 = [(FBSDisplayConfiguration *)self->_targetDisplayConfiguration identity];
      v7 = [v5 userInterfaceStyleProviderForDisplay:v6];
      +[SBSceneSettingsUpdater safeUpdateScene:withUserInterfaceStyle:](SBSceneSettingsUpdater, "safeUpdateScene:withUserInterfaceStyle:", scene, [v7 currentStyle]);

      [(SBSingleSceneController *)self _presentScene];
    }

    else
    {

      [(SBSingleSceneController *)self _dismissScene];
    }
  }
}

- (void)_presentScene
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__SBSingleSceneController__presentScene__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __40__SBSingleSceneController__presentScene__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  if (WeakRetained)
  {
    v3 = SBLogSystemUIScene();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(*(a1 + 32) + 104) identifier];
      *buf = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenter[%{public}@] will present scene", buf, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__SBSingleSceneController__presentScene__block_invoke_35;
    v10[3] = &unk_2783C27B0;
    v10[4] = v5;
    v7 = [WeakRetained presentScene:v6 viewControllerBuilderBlock:v10];
    v8 = *(a1 + 32);
    v9 = [v8[3] sceneTraitsDelegate];
    [v8 didUpdateSceneTraitsDelegate:v9];

    if (([*(*(a1 + 32) + 32) isActive] & 1) == 0)
    {
      [*(*(a1 + 32) + 32) activate];
    }
  }
}

- (void)_dismissScene
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(UIScenePresenter *)self->_uiScenePresenter isActive])
  {
    [(UIScenePresenter *)self->_uiScenePresenter deactivate];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v4 = SBLogSystemUIScene();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FBScene *)self->_scene identifier];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = WeakRetained;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenter[%{public}@] will dismiss scene", &v7, 0x16u);
  }

  v6 = [WeakRetained dismissScene:self->_scene];
}

- (id)_newActivationContext
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = [(UISceneRequestOptions *)self->_sceneOptions actions];
  v3 = [v2 bs_firstObjectPassingTest:&__block_literal_global_409];

  if (v3)
  {
    v12[0] = &unk_2833722A8;
    v4 = [v3 userActivityData];
    v13[0] = v4;
    v12[1] = &unk_2833722C0;
    v5 = [v3 activityType];
    v13[1] = v5;
    v12[2] = &unk_2833722D8;
    v6 = [v3 lastUpdateTime];
    v13[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

    v8 = [objc_alloc(MEMORY[0x277D750D8]) initWithSettings:v7];
    v9 = objc_alloc_init(MEMORY[0x277D75188]);
    v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
    [v9 setActions:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __48__SBSingleSceneController__newActivationContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_isClientProcessRunning
{
  v3 = [MEMORY[0x277D0AAC0] sharedInstance];
  v4 = [v3 processForIdentity:self->_clientIdentity];
  v5 = [v4 isRunning];

  return v5;
}

- (void)didUpdateSceneTraitsDelegate:(id)a3
{
  v5 = a3;
  v6 = [(SBTraitsSceneParticipantDelegate *)v5 participant];
  v7 = self->_lastSceneTraitsParticipantDelegate;
  v8 = v7;
  if (v7 != v5)
  {
    [(SBTraitsSceneParticipantDelegate *)v7 setActuateOrientationAlongsideBlock:0];
    objc_storeStrong(&self->_lastSceneTraitsParticipantDelegate, a3);
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __56__SBSingleSceneController_didUpdateSceneTraitsDelegate___block_invoke;
    v13 = &unk_2783AD848;
    objc_copyWeak(&v14, &location);
    [(SBTraitsSceneParticipantDelegate *)v5 setActuateOrientationAlongsideBlock:&v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController setContentParticipant:v6, v10, v11, v12, v13];
  [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController setContainerParticipant:v6];
  [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController updateOrientationIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scene:self->_scene didChangeTraitsParticipantDelegate:v5];
  }
}

void __56__SBSingleSceneController_didUpdateSceneTraitsDelegate___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a3 & 3) == 2 && WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[6] updateOrientationIfNeeded];
    WeakRetained = v5;
  }
}

- (void)_evaluateSceneForegroundState
{
  targetDisplayConfiguration = self->_targetDisplayConfiguration;
  if (!targetDisplayConfiguration || self->_shouldForegroundForDisplayConfiguration)
  {
    [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setForeground:targetDisplayConfiguration != 0];
  }
}

- (void)_evaluateSceneActivationState
{
  if (self->_shouldActivateForDisplayConfiguration && self->_targetDisplayConfiguration)
  {
    sceneSettingsUpdater = self->_sceneSettingsUpdater;
    v4 = [(SBSingleSceneController *)self _newActivationContext];
    [(SBSceneSettingsUpdater *)sceneSettingsUpdater setActive:1 withTransitionContext:v4];
  }
}

- (id)traitsOrientedViewController
{
  orientedSceneViewController = self->_orientedSceneViewController;
  if (!orientedSceneViewController)
  {
    v4 = [[SBTraitsOrientedContentViewController alloc] initWithNibName:0 bundle:0];
    v5 = self->_orientedSceneViewController;
    self->_orientedSceneViewController = v4;

    v6 = [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController view];
    [v6 setContentOrientation:1];
    [v6 setContainerOrientation:1];
    v7 = [(FBScene *)self->_scene settings];
    [v7 frame];
    [v6 setContentViewBoundsInReferenceSpace:?];

    [v6 setAutoresizingMask:18];
    if (self->_scene && !self->_uiScenePresenter)
    {
      [0 deactivate];
      [(UIScenePresenter *)self->_uiScenePresenter invalidate];
      v8 = [(FBScene *)self->_scene uiPresentationManager];
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(FBScene *)self->_scene identifier];
      v13 = v12;
      v14 = &stru_283094718;
      if (v12)
      {
        v14 = v12;
      }

      v15 = [v9 stringWithFormat:@"%@-%@", v11, v14];

      v16 = [v8 createPresenterWithIdentifier:v15 priority:0];
      uiScenePresenter = self->_uiScenePresenter;
      self->_uiScenePresenter = v16;

      [(UIScenePresenter *)self->_uiScenePresenter modifyPresentationContext:&__block_literal_global_61_6];
      v18 = [(UIScenePresenter *)self->_uiScenePresenter presentationView];
      [v6 setContentView:v18];
    }

    [(BSInvalidatable *)self->_settingsUpdaterObserverInvalidatable invalidate];
    v19 = [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater addObserver:self];
    settingsUpdaterObserverInvalidatable = self->_settingsUpdaterObserverInvalidatable;
    self->_settingsUpdaterObserverInvalidatable = v19;

    v21 = [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater sceneTraitsDelegate];
    [(SBSingleSceneController *)self didUpdateSceneTraitsDelegate:v21];

    orientedSceneViewController = self->_orientedSceneViewController;
  }

  return orientedSceneViewController;
}

void __55__SBSingleSceneController_traitsOrientedViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColorWhileHosting:v3];

  v4 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColorWhileNotHosting:v4];
}

- (id)traitsOrientedResizableViewController
{
  resizableOrientedSceneViewController = self->_resizableOrientedSceneViewController;
  if (!resizableOrientedSceneViewController)
  {
    [(FBScene *)self->_scene addExtension:objc_opt_class()];
    [(SBSingleSceneController *)self setSceneActive:1];
    [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setForeground:1];
    scene = self->_scene;
    v5 = objc_opt_class();
    v6 = [(FBScene *)scene componentForExtension:v5 ofClass:objc_opt_class()];
    hostComponent = self->_hostComponent;
    self->_hostComponent = v6;

    v8 = [SBTraitsOrientedResizableContentViewController alloc];
    v9 = [(SBSingleSceneController *)self traitsOrientedViewController];
    v10 = [(SBTraitsOrientedResizableContentViewController *)v8 initWithContentViewController:v9 delegate:self->_hostComponent];
    v11 = self->_resizableOrientedSceneViewController;
    self->_resizableOrientedSceneViewController = v10;

    resizableOrientedSceneViewController = self->_resizableOrientedSceneViewController;
  }

  return resizableOrientedSceneViewController;
}

- (id)succinctDescription
{
  v2 = [(SBSingleSceneController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBSingleSceneController *)self scenePersistentIdentifier];
  [v3 appendString:v4 withName:@"scenePersistentIdentifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSingleSceneController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSingleSceneController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBSingleSceneController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __65__SBSingleSceneController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) scene];
  v4 = [v3 identifier];
  [v2 appendString:v4 withName:@"scene"];

  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSceneContentVisible"), @"isSceneContentVisible"}];
  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 112));
  v7 = [v6 appendObject:WeakRetained withName:@"presenter"];
}

- (SBScenePresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneWorkspaceController" object:? file:? lineNumber:? description:?];
}

- (void)initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"clientIdentity" object:? file:? lineNumber:? description:?];
}

- (void)initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneRequestOptions" object:? file:? lineNumber:? description:?];
}

- (void)initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"traitsRole" object:? file:? lineNumber:? description:?];
}

void __112__SBSingleSceneController_initWithSceneWorkspaceController_sceneRequestOptions_clientIdentity_traitsRole_level___block_invoke_cold_1(uint64_t a1)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = [0 identifier];
  v5 = [*(a1 + 40) identifier];
  [v6 handleFailureInMethod:v2 object:v3 file:@"SBSingleSceneController.m" lineNumber:80 description:{@"[%@] Scene workspace controller unexpectedly unable to create a new scene (with identifier:%@)", v4, v5}];
}

- (void)sceneContentStateDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_scene == scene" object:? file:? lineNumber:? description:?];
}

- (void)sceneDidInvalidate:withContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_scene == scene" object:? file:? lineNumber:? description:?];
}

@end