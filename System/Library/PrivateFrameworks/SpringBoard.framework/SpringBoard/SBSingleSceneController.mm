@interface SBSingleSceneController
- (BOOL)_isClientProcessRunning;
- (SBScenePresenting)presenter;
- (SBSingleSceneController)initWithSceneWorkspaceController:(id)controller sceneRequestOptions:(id)options clientIdentity:(id)identity traitsRole:(id)role level:(double)level;
- (id)_newActivationContext;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)traitsOrientedResizableViewController;
- (id)traitsOrientedViewController;
- (void)_dismissScene;
- (void)_evaluateSceneActivationState;
- (void)_evaluateSceneForegroundState;
- (void)_evaluateVisibility;
- (void)_presentScene;
- (void)_setVisible:(BOOL)visible;
- (void)dealloc;
- (void)didUpdateSceneTraitsDelegate:(id)delegate;
- (void)invalidate;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setCornerRadiusConfiguration:(id)configuration;
- (void)setHidden:(BOOL)hidden;
- (void)setPresenter:(id)presenter;
- (void)setSceneActive:(BOOL)active;
- (void)setSceneContentVisible:(BOOL)visible;
- (void)setShouldActivateUponClientConnection:(BOOL)connection;
- (void)setShouldBeKeptActiveWhileForeground:(BOOL)foreground;
- (void)setTargetDisplayConfiguration:(id)configuration;
@end

@implementation SBSingleSceneController

- (void)_evaluateVisibility
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  isValid = [(FBScene *)self->_scene isValid];
  contentState = [(FBScene *)self->_scene contentState];
  v6 = contentState;
  v7 = 0;
  if (!self->_hidden && WeakRetained && isValid)
  {
    v7 = self->_shouldPresentAnyContentState && self->_targetDisplayConfiguration || contentState == 2;
  }

  v8 = SBLogSystemUIScene();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = WeakRetained != 0;
    identifier = [(FBScene *)self->_scene identifier];
    hidden = self->_hidden;
    v12 = 138544642;
    v13 = identifier;
    v14 = 1024;
    v15 = hidden;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = isValid;
    v22 = 1024;
    v23 = v6 == 2;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] hidden[%{BOOL}u] shouldBeVisible[%{BOOL}u] hasPresenter[%{BOOL}u] sceneIsValid[%{BOOL}u] contentIsReady[%{BOOL}u]", &v12, 0x2Au);
  }

  [(SBSingleSceneController *)self _setVisible:v7];
}

- (SBSingleSceneController)initWithSceneWorkspaceController:(id)controller sceneRequestOptions:(id)options clientIdentity:(id)identity traitsRole:(id)role level:(double)level
{
  controllerCopy = controller;
  optionsCopy = options;
  identityCopy = identity;
  roleCopy = role;
  BSDispatchQueueAssertMain();
  if (controllerCopy)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSingleSceneController initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:];
    if (identityCopy)
    {
LABEL_3:
      if (optionsCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [SBSingleSceneController initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:];
      if (roleCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [SBSingleSceneController initWithSceneWorkspaceController:sceneRequestOptions:clientIdentity:traitsRole:level:];
  if (!optionsCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (roleCopy)
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
    objc_storeStrong(&v18->_traitsRole, role);
    v19->_sceneContentVisible = 1;
    objc_storeStrong(&v19->_clientIdentity, identity);
    objc_storeStrong(&v19->_sceneOptions, options);
    objc_storeStrong(&v19->_sceneWorkspaceController, controller);
    sceneWorkspaceController = v19->_sceneWorkspaceController;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __112__SBSingleSceneController_initWithSceneWorkspaceController_sceneRequestOptions_clientIdentity_traitsRole_level___block_invoke;
    v29[3] = &unk_2783C2760;
    v32 = a2;
    v21 = v19;
    v30 = v21;
    v31 = optionsCopy;
    [(SBFSceneWorkspaceController *)sceneWorkspaceController createSceneForProcessIdentity:identityCopy withOptions:v31 completion:v29];
    [v21[13] addObserver:v21];
    v22 = [SBSceneSettingsUpdater alloc];
    v23 = v21[13];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v26 = [(SBSceneSettingsUpdater *)v22 initWithScene:v23 persistentIdentifier:uUIDString level:1 updatesGeometry:level];
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
    identifier = [(FBScene *)self->_scene identifier];
    v7 = 138543618;
    v8 = identifier;
    v9 = 2048;
    selfCopy = self;
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

- (void)setSceneContentVisible:(BOOL)visible
{
  self->_sceneContentVisible = visible;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scene:self->_scene hasVisibleContent:self->_sceneContentVisible];
  }
}

- (void)setTargetDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(FBSDisplayConfiguration *)self->_targetDisplayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_targetDisplayConfiguration, configuration);
    [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setDisplayConfiguration:configurationCopy];
    if (configurationCopy)
    {
      systemShellHostingEnvironment = [(FBScene *)self->_scene systemShellHostingEnvironment];
      v6 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration();
      [systemShellHostingEnvironment setSystemShellHostingSpaceIdentifier:v6];
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

- (void)setCornerRadiusConfiguration:(id)configuration
{
  objc_storeStrong(&self->_cornerRadiusConfiguration, configuration);
  configurationCopy = configuration;
  [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setCornerRadiusConfiguration:configurationCopy];
}

- (void)setShouldActivateUponClientConnection:(BOOL)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  delegate = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController delegate];
  scene = self->_scene;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __65__SBSingleSceneController_setShouldActivateUponClientConnection___block_invoke;
  v10 = &unk_2783C2788;
  objc_copyWeak(&v11, &location);
  [delegate setScene:scene shouldActivateUponClientConnection:connectionCopy withContextGenerator:&v7];

  if (connectionCopy && ([(FBScene *)self->_scene isActive:v7]& 1) == 0 && [(SBSingleSceneController *)self _isClientProcessRunning])
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

- (void)setShouldBeKeptActiveWhileForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  objc_initWeak(&location, self);
  delegate = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController delegate];
  scene = self->_scene;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __64__SBSingleSceneController_setShouldBeKeptActiveWhileForeground___block_invoke;
  v12 = &unk_2783C2788;
  objc_copyWeak(&v13, &location);
  [delegate setScene:scene shouldBeKeptActiveWhileForeground:foregroundCopy withContextGenerator:&v9];

  if (foregroundCopy && ([(FBScene *)self->_scene isActive:v9]& 1) == 0)
  {
    settings = [(FBScene *)self->_scene settings];
    if ([settings isForeground])
    {
      _isClientProcessRunning = [(SBSingleSceneController *)self _isClientProcessRunning];

      if (_isClientProcessRunning)
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

- (void)setSceneActive:(BOOL)active
{
  activeCopy = active;
  if (active)
  {
    _newActivationContext = [(SBSingleSceneController *)self _newActivationContext];
  }

  else
  {
    _newActivationContext = 0;
  }

  v6 = _newActivationContext;
  [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater setActive:activeCopy withTransitionContext:_newActivationContext];
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    self->_hidden = hidden;
    [(SBSingleSceneController *)self _evaluateVisibility];
  }
}

- (void)setPresenter:(id)presenter
{
  v17 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (!presenterCopy)
  {
    v9 = SBLogSystemUIScene();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(FBScene *)self->_scene identifier];
      v11 = 138543362;
      v12 = identifier;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] setPresenter[nil]", &v11, 0xCu);
    }

    v8 = 0;
    goto LABEL_9;
  }

  if (([presenterCopy isEqual:WeakRetained] & 1) == 0)
  {
    v6 = SBLogSystemUIScene();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(FBScene *)self->_scene identifier];
      v11 = 138543874;
      v12 = identifier2;
      v13 = 2114;
      v14 = presenterCopy;
      v15 = 2114;
      v16 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] setPresenter[%{public}@] oldPresenter[%{public}@]", &v11, 0x20u);
    }

    [(SBSingleSceneController *)self _setVisible:0];
    v8 = presenterCopy;
LABEL_9:
    objc_storeWeak(&self->_presenter, v8);
  }

  [(SBSingleSceneController *)self _evaluateVisibility];
}

- (void)sceneContentStateDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (self->_scene != changeCopy)
  {
    [SBSingleSceneController sceneContentStateDidChange:];
  }

  contentState = [(FBScene *)changeCopy contentState];
  if ((contentState - 1) >= 2)
  {
    if (!contentState)
    {
      v8 = SBLogSystemUIScene();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(FBScene *)self->_scene identifier];
        *buf = 138543362;
        v16 = identifier;
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
      identifier2 = [(FBScene *)self->_scene identifier];
      *buf = 138543362;
      v16 = identifier2;
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

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  contextCopy = context;
  if (self->_scene != invalidateCopy)
  {
    [SBSingleSceneController sceneDidInvalidate:withContext:];
  }

  v8 = SBLogSystemUIScene();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FBScene *)self->_scene identifier];
    v11 = 138543362;
    v12 = identifier;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sceneDidInvalidate", &v11, 0xCu);
  }

  [(UIScenePresenter *)self->_uiScenePresenter invalidate];
  uiScenePresenter = self->_uiScenePresenter;
  self->_uiScenePresenter = 0;

  [(SBSingleSceneController *)self _evaluateVisibility];
}

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  settings = [scene settings];
  [settings frame];
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
      view = [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController view];
      [view setContentViewBoundsInReferenceSpace:{v8, v10, v12, v14}];
    }
  }
}

- (void)_setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    if (visible)
    {
      scene = self->_scene;
      v5 = SBApp;
      identity = [(FBSDisplayConfiguration *)self->_targetDisplayConfiguration identity];
      v7 = [v5 userInterfaceStyleProviderForDisplay:identity];
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
    identifier = [(FBScene *)self->_scene identifier];
    v7 = 138543618;
    v8 = identifier;
    v9 = 2114;
    v10 = WeakRetained;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenter[%{public}@] will dismiss scene", &v7, 0x16u);
  }

  v6 = [WeakRetained dismissScene:self->_scene];
}

- (id)_newActivationContext
{
  v13[3] = *MEMORY[0x277D85DE8];
  actions = [(UISceneRequestOptions *)self->_sceneOptions actions];
  v3 = [actions bs_firstObjectPassingTest:&__block_literal_global_409];

  if (v3)
  {
    v12[0] = &unk_2833722A8;
    userActivityData = [v3 userActivityData];
    v13[0] = userActivityData;
    v12[1] = &unk_2833722C0;
    activityType = [v3 activityType];
    v13[1] = activityType;
    v12[2] = &unk_2833722D8;
    lastUpdateTime = [v3 lastUpdateTime];
    v13[2] = lastUpdateTime;
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
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v4 = [mEMORY[0x277D0AAC0] processForIdentity:self->_clientIdentity];
  isRunning = [v4 isRunning];

  return isRunning;
}

- (void)didUpdateSceneTraitsDelegate:(id)delegate
{
  delegateCopy = delegate;
  participant = [(SBTraitsSceneParticipantDelegate *)delegateCopy participant];
  v7 = self->_lastSceneTraitsParticipantDelegate;
  v8 = v7;
  if (v7 != delegateCopy)
  {
    [(SBTraitsSceneParticipantDelegate *)v7 setActuateOrientationAlongsideBlock:0];
    objc_storeStrong(&self->_lastSceneTraitsParticipantDelegate, delegate);
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __56__SBSingleSceneController_didUpdateSceneTraitsDelegate___block_invoke;
    v13 = &unk_2783AD848;
    objc_copyWeak(&v14, &location);
    [(SBTraitsSceneParticipantDelegate *)delegateCopy setActuateOrientationAlongsideBlock:&v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController setContentParticipant:participant, v10, v11, v12, v13];
  [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController setContainerParticipant:participant];
  [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController updateOrientationIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scene:self->_scene didChangeTraitsParticipantDelegate:delegateCopy];
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
    _newActivationContext = [(SBSingleSceneController *)self _newActivationContext];
    [(SBSceneSettingsUpdater *)sceneSettingsUpdater setActive:1 withTransitionContext:_newActivationContext];
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

    view = [(SBTraitsOrientedContentViewController *)self->_orientedSceneViewController view];
    [view setContentOrientation:1];
    [view setContainerOrientation:1];
    settings = [(FBScene *)self->_scene settings];
    [settings frame];
    [view setContentViewBoundsInReferenceSpace:?];

    [view setAutoresizingMask:18];
    if (self->_scene && !self->_uiScenePresenter)
    {
      [0 deactivate];
      [(UIScenePresenter *)self->_uiScenePresenter invalidate];
      uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      identifier = [(FBScene *)self->_scene identifier];
      v13 = identifier;
      v14 = &stru_283094718;
      if (identifier)
      {
        v14 = identifier;
      }

      v15 = [v9 stringWithFormat:@"%@-%@", v11, v14];

      v16 = [uiPresentationManager createPresenterWithIdentifier:v15 priority:0];
      uiScenePresenter = self->_uiScenePresenter;
      self->_uiScenePresenter = v16;

      [(UIScenePresenter *)self->_uiScenePresenter modifyPresentationContext:&__block_literal_global_61_6];
      presentationView = [(UIScenePresenter *)self->_uiScenePresenter presentationView];
      [view setContentView:presentationView];
    }

    [(BSInvalidatable *)self->_settingsUpdaterObserverInvalidatable invalidate];
    v19 = [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater addObserver:self];
    settingsUpdaterObserverInvalidatable = self->_settingsUpdaterObserverInvalidatable;
    self->_settingsUpdaterObserverInvalidatable = v19;

    sceneTraitsDelegate = [(SBSceneSettingsUpdater *)self->_sceneSettingsUpdater sceneTraitsDelegate];
    [(SBSingleSceneController *)self didUpdateSceneTraitsDelegate:sceneTraitsDelegate];

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
    traitsOrientedViewController = [(SBSingleSceneController *)self traitsOrientedViewController];
    v10 = [(SBTraitsOrientedResizableContentViewController *)v8 initWithContentViewController:traitsOrientedViewController delegate:self->_hostComponent];
    v11 = self->_resizableOrientedSceneViewController;
    self->_resizableOrientedSceneViewController = v10;

    resizableOrientedSceneViewController = self->_resizableOrientedSceneViewController;
  }

  return resizableOrientedSceneViewController;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSingleSceneController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  scenePersistentIdentifier = [(SBSingleSceneController *)self scenePersistentIdentifier];
  [v3 appendString:scenePersistentIdentifier withName:@"scenePersistentIdentifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSingleSceneController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSingleSceneController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBSingleSceneController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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