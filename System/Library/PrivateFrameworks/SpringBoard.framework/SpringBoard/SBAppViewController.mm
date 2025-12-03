@interface SBAppViewController
- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)window;
- (BOOL)placeholderContentEnabled;
- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity;
- (CGSize)contentReferenceSize;
- (SBAppViewController)initWithIdentifier:(id)identifier andApplicationSceneEntity:(id)entity;
- (SBAppViewControllerDelegate)delegate;
- (SBApplicationSceneViewControllingStatusBarDelegate)applicationSceneStatusBarDelegate;
- (double)statusBarAlpha;
- (id)_configureApplicationSceneEntity:(id)entity deliveringActions:(BOOL)actions;
- (id)_createSceneUpdateTransactionForApplicationSceneEntity:(id)entity deliveringActions:(BOOL)actions;
- (id)_windowSceneFromSceneHandle;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (id)previousLayoutStateForApplicationTransitionContext:(id)context;
- (void)_activateApp;
- (void)_createSceneViewController;
- (void)_deactivateHostedApp;
- (void)_destroySceneViewController;
- (void)_installedAppsDidChange:(id)change;
- (void)_primeParentSceneForChildScene:(id)scene;
- (void)_sendActions:(id)actions;
- (void)_setCurrentMode:(int64_t)mode;
- (void)_transformHostedAppViewForRotationToOrientation:(int64_t)orientation;
- (void)_updateForAppearanceState:(int)state;
- (void)dealloc;
- (void)invalidate;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)sceneUpdateTransaction:(id)transaction finishedApplyingUpdate:(BOOL)update;
- (void)setActionsToDeliver:(id)deliver;
- (void)setAutomatesLifecycle:(BOOL)lifecycle;
- (void)setContentReferenceSize:(CGSize)size withContentOrientation:(int64_t)orientation andContainerOrientation:(int64_t)containerOrientation;
- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion;
- (void)setPlaceholderContentContext:(id)context;
- (void)setPlaceholderContentEnabled:(BOOL)enabled;
- (void)setRequestedMode:(int64_t)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SBAppViewController

- (double)statusBarAlpha
{
  deviceAppViewController = self->_deviceAppViewController;
  if (!deviceAppViewController)
  {
    return 1.0;
  }

  [(SBApplicationSceneViewController *)deviceAppViewController statusBarAlpha];
  return result;
}

- (SBAppViewController)initWithIdentifier:(id)identifier andApplicationSceneEntity:(id)entity
{
  identifierCopy = identifier;
  entityCopy = entity;
  NSClassFromString(&cfstr_Sbapplications_8.isa);
  if (!entityCopy)
  {
    [SBAppViewController initWithIdentifier:a2 andApplicationSceneEntity:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBAppViewController initWithIdentifier:a2 andApplicationSceneEntity:?];
  }

  v26.receiver = self;
  v26.super_class = SBAppViewController;
  v10 = [(SBAppViewController *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    sceneHandle = [entityCopy sceneHandle];
    sceneHandle = v11->_sceneHandle;
    v11->_sceneHandle = sceneHandle;

    if (![(SBDeviceApplicationSceneHandle *)v11->_sceneHandle isDeviceApplicationSceneHandle])
    {
      [SBAppViewController initWithIdentifier:andApplicationSceneEntity:];
    }

    v14 = [(SBDeviceApplicationSceneHandle *)v11->_sceneHandle newScenePlaceholderContentContextWithActivationSettings:entityCopy];
    placeholderContentContext = v11->_placeholderContentContext;
    v11->_placeholderContentContext = v14;

    v16 = objc_alloc_init(SBActivationSettings);
    activationSettings = v11->_activationSettings;
    v11->_activationSettings = v16;

    v18 = v11->_activationSettings;
    copyActivationSettings = [entityCopy copyActivationSettings];
    [(SBActivationSettings *)v18 applyActivationSettings:copyActivationSettings];

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeTransitions = v11->_activeTransitions;
    v11->_activeTransitions = v20;

    actions = [entityCopy actions];
    actionsToDeliver = v11->_actionsToDeliver;
    v11->_actionsToDeliver = actions;

    v11->_requestedMode = 0;
    v11->_currentMode = 0;
    v11->_sceneContentIsReady = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__installedAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
  }

  return v11;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setActionsToDeliver:(id)deliver
{
  deliverCopy = deliver;
  if (self->_actionsToDeliver != deliverCopy)
  {
    v8 = deliverCopy;
    objc_storeStrong(&self->_actionsToDeliver, deliver);
    v6 = [(NSSet *)self->_actionsToDeliver count];
    deliverCopy = v8;
    if (v6)
    {
      if (self->_currentMode == 2)
      {
        [(SBAppViewController *)self _sendActions:self->_actionsToDeliver];
        actionsToDeliver = self->_actionsToDeliver;
        self->_actionsToDeliver = 0;

        deliverCopy = v8;
      }
    }
  }
}

- (void)setRequestedMode:(int64_t)mode
{
  if (self->_requestedMode != mode)
  {
    self->_requestedMode = mode;
    if (!self->_automatesLifecycle)
    {
      [(SBAppViewController *)self _setCurrentMode:?];
    }
  }
}

- (void)setAutomatesLifecycle:(BOOL)lifecycle
{
  if (self->_automatesLifecycle != lifecycle)
  {
    self->_automatesLifecycle = lifecycle;
    if (lifecycle)
    {
      _appearState = [(SBAppViewController *)self _appearState];

      [(SBAppViewController *)self _updateForAppearanceState:_appearState];
    }

    else if (self->_requestedMode != self->_currentMode)
    {

      [(SBAppViewController *)self _setCurrentMode:?];
    }
  }
}

- (void)setPlaceholderContentEnabled:(BOOL)enabled
{
  if (self->_placeholderContentEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_placeholderContentEnabled = enabled;
    appView = [(SBAppViewController *)self appView];
    [appView setPlaceholderContentEnabled:enabledCopy];
  }
}

- (BOOL)placeholderContentEnabled
{
  appView = [(SBAppViewController *)self appView];
  placeholderContentProvider = [appView placeholderContentProvider];
  v4 = placeholderContentProvider == 0;

  return v4;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    [(SBAppViewController *)self _setCurrentMode:0];
    [(SBAppViewController *)self setDelegate:0];
    [(SBAppViewController *)self setActionsToDeliver:0];
    self->_invalidated = 1;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewWillAppear:appear];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:1];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v5.receiver = self;
  v5.super_class = SBAppViewController;
  [(SBAppViewController *)&v5 viewIsAppearing:appearing];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  [(SBAppViewController *)self _primeParentSceneForChildScene:sceneIfExists];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewDidAppear:appear];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:2];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewWillDisappear:disappear];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:3];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewDidDisappear:disappear];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:0];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SBAppViewController;
  [(SBAppViewController *)&v5 willMoveToParentViewController:?];
  if (!controller && self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _setCurrentMode:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = SBAppViewController;
  [(SBAppViewController *)&v9 viewDidLayoutSubviews];
  view = [(SBAppViewController *)self view];
  window = [view window];
  _roleHint = [window _roleHint];
  v6 = SBTraitsArbiterOrientationActuationEnabledForRole(_roleHint);

  if ((v6 & 1) == 0)
  {
    view2 = [(SBDeviceApplicationSceneViewController *)self->_deviceAppViewController view];
    view3 = [(SBAppViewController *)self view];
    [view3 bounds];
    [view2 setFrame:?];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v21.receiver = self;
  v21.super_class = SBAppViewController;
  [(SBAppViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(SBAppViewController *)self view];
  window = [view window];
  _roleHint = [window _roleHint];
  v11 = SBTraitsArbiterOrientationActuationEnabledForRole(_roleHint);

  if ((v11 & 1) == 0)
  {
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
    v13 = sceneIfExists;
    if (sceneIfExists)
    {
      uiSettings = [sceneIfExists uiSettings];
      deviceOrientationEventsEnabled = [uiSettings deviceOrientationEventsEnabled];

      if (deviceOrientationEventsEnabled)
      {
        v16 = SBFWindowForViewControllerTransition();
        _toWindowOrientation = [v16 _toWindowOrientation];

        [(SBSceneViewController *)self->_deviceAppViewController setContentReferenceSize:_toWindowOrientation withContentOrientation:_toWindowOrientation andContainerOrientation:width, height];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __74__SBAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
        v18[3] = &unk_2783A9488;
        v18[4] = self;
        [coordinatorCopy animateAlongsideTransition:0 completion:v18];
      }

      else
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __74__SBAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v19[3] = &unk_2783BF170;
        v20 = coordinatorCopy;
        [v13 updateUISettingsWithTransitionBlock:v19];
      }
    }
  }
}

id __74__SBAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBFWindowForViewControllerTransition();
  [v3 setInterfaceOrientation:{objc_msgSend(v4, "_toWindowOrientation")}];

  v5 = objc_alloc_init(MEMORY[0x277D75188]);
  v6 = MEMORY[0x277CF0B70];
  [*(a1 + 32) transitionDuration];
  v7 = [v6 settingsWithDuration:?];
  [v5 setAnimationSettings:v7];

  v8 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
  [v5 setAnimationFence:v8];

  return v5;
}

uint64_t __74__SBAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1008) contentOrientation];
  result = [*(a1 + 32) bs_isAppearingOrAppeared];
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a1 + 32);

    return [v5 _transformHostedAppViewForRotationToOrientation:v2];
  }

  return result;
}

- (id)hostedAppSceneHandle
{
  if ([(SBAppViewController *)self isHostingAnApp])
  {
    sceneHandle = self->_sceneHandle;
  }

  else
  {
    sceneHandle = 0;
  }

  return sceneHandle;
}

- (id)hostedAppSceneHandles
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(SBAppViewController *)self isHostingAnApp]&& self->_sceneHandle)
  {
    v5[0] = self->_sceneHandle;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)_transformHostedAppViewForRotationToOrientation:(int64_t)orientation
{
  view = [(SBAppViewController *)self view];
  window = [view window];
  _roleHint = [window _roleHint];
  v8 = SBTraitsArbiterOrientationActuationEnabledForRole(_roleHint);

  if ((v8 & 1) == 0)
  {
    view2 = [(SBAppViewController *)self view];
    [view2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    view3 = [(SBAppViewController *)self view];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [view3 convertRect:fixedCoordinateSpace toCoordinateSpace:{v11, v13, v15, v17}];
    v22 = v21;
    v24 = v23;

    Height = v15;
    Width = v17;
    if ((orientation - 3) < 2 != ([(SBAppViewController *)self interfaceOrientation]- 3) < 2)
    {
      v29.origin.x = v11;
      v29.origin.y = v13;
      v29.size.width = v15;
      v29.size.height = v17;
      Height = CGRectGetHeight(v29);
      v30.origin.x = v11;
      v30.origin.y = v13;
      v30.size.width = v15;
      v30.size.height = v17;
      Width = CGRectGetWidth(v30);
    }

    view4 = [(SBDeviceApplicationSceneViewController *)self->_deviceAppViewController view];
    [(SBAppViewController *)self interfaceOrientation];
    SBFTransformFromOrientationToOrientation();
    [view4 setTransform:&v28];
    UIRectGetCenter();
    [view4 setCenter:?];
    [view4 setBounds:{v11, v13, Height, Width}];
    [(SBSceneViewController *)self->_deviceAppViewController setContentReferenceSize:orientation withContentOrientation:orientation andContainerOrientation:v22, v24];
  }
}

- (void)setPlaceholderContentContext:(id)context
{
  contextCopy = context;
  if (self->_placeholderContentContext != contextCopy)
  {
    v7 = contextCopy;
    objc_storeStrong(&self->_placeholderContentContext, context);
    appView = [(SBAppViewController *)self appView];
    [appView setPlaceholderContentContext:self->_placeholderContentContext];

    contextCopy = v7;
  }
}

- (CGSize)contentReferenceSize
{
  [(SBSceneViewController *)self->_deviceAppViewController contentReferenceSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentReferenceSize:(CGSize)size withContentOrientation:(int64_t)orientation andContainerOrientation:(int64_t)containerOrientation
{
  [(SBSceneViewController *)self->_deviceAppViewController setContentReferenceSize:orientation withContentOrientation:containerOrientation andContainerOrientation:size.width, size.height];
  deviceAppViewController = self->_deviceAppViewController;
  interfaceOrientation = [(SBDeviceApplicationSceneViewController *)deviceAppViewController interfaceOrientation];
  view = [(SBAppViewController *)self view];
  [(SBDeviceApplicationSceneViewController *)deviceAppViewController willRotateFromInterfaceOrientation:interfaceOrientation toInterfaceOrientation:orientation alongsideContainerView:view animated:1];

  view2 = [(SBAppViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  v10 = completionCopy;
  deviceAppViewController = self->_deviceAppViewController;
  if (deviceAppViewController)
  {
    objc_initWeak(&location, deviceAppViewController);
    v12 = self->_deviceAppViewController;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__SBAppViewController_setDisplayMode_animationFactory_completion___block_invoke;
    v13[3] = &unk_2783BE4D0;
    v13[4] = self;
    objc_copyWeak(&v15, &location);
    v14 = v10;
    [(SBDeviceApplicationSceneViewController *)v12 setDisplayMode:mode animationFactory:factoryCopy completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

uint64_t __66__SBAppViewController_setDisplayMode_animationFactory_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) displayMode] != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setCustomContentView:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state
{
  if (state >= 2)
  {
    if (state == 2 && !self->_sceneContentIsReady)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained appViewControllerDidBecomeReady:self];
      }

      self->_sceneContentIsReady = 1;
    }
  }

  else
  {
    self->_sceneContentIsReady = 0;
  }
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  handleCopy = handle;
  sceneCopy = scene;
  if (!self->_invalidated)
  {
    if (self->_currentMode != 2)
    {
      [SBAppViewController sceneHandle:didDestroyScene:];
    }

    self->_sceneContentIsReady = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained appViewControllerShouldReactivateApplicationOnDestruction:self])
    {
      [(SBAppViewController *)self _activateApp];
    }
  }
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  handleCopy = handle;
  diffCopy = diff;
  settingsCopy = settings;
  if (os_variant_has_internal_content())
  {
    scene = [handleCopy scene];
    settings = [scene settings];

    if ([diffCopy containsProperty:sel_isForeground] && (objc_msgSend(settings, "isForeground") & 1) == 0)
    {
      [SBAppViewController sceneHandle:diffCopy didUpdateSettingsWithDiff:a2 previousSettings:?];
    }

    if (self->_ignoresOcclusions)
    {
      ignoreOcclusionReasons = [settingsCopy ignoreOcclusionReasons];
      ignoreOcclusionReasons2 = [settings ignoreOcclusionReasons];
      v15 = BSEqualObjects();

      if ((v15 & 1) == 0)
      {
        ignoreOcclusionReasons3 = [settings ignoreOcclusionReasons];
        v17 = [ignoreOcclusionReasons3 containsObject:self->_identifier];

        if ((v17 & 1) == 0)
        {
          [SBAppViewController sceneHandle:a2 didUpdateSettingsWithDiff:? previousSettings:?];
        }
      }
    }
  }
}

- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)window
{
  delegate = [(SBAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate appViewControllerIsInNonRotatingWindow:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateForAppearanceState:(int)state
{
  if (state <= 3)
  {
    [(SBAppViewController *)self _setCurrentMode:qword_21F8A8030[state]];
  }
}

- (void)_setCurrentMode:(int64_t)mode
{
  if (!self->_invalidated && self->_currentMode != mode)
  {
    self->_currentMode = mode;
    self->_sceneContentIsReady = 0;
    switch(mode)
    {
      case 2:

        [(SBAppViewController *)self _activateApp];
        break;
      case 1:
        [(SBAppViewController *)self _createSceneViewController];

        [(SBAppViewController *)self _deactivateHostedApp];
        break;
      case 0:
        [(SBAppViewController *)self _deactivateHostedApp];

        [(SBAppViewController *)self _destroySceneViewController];
        break;
    }
  }
}

- (void)_createSceneViewController
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_destroySceneViewController
{
  deviceAppViewController = self->_deviceAppViewController;
  if (deviceAppViewController)
  {
    [(SBAppViewController *)self bs_removeChildViewController:deviceAppViewController animated:0 transitionBlock:0];
    appView = [(SBAppViewController *)self appView];
    [appView invalidate];

    v5 = self->_deviceAppViewController;
    self->_deviceAppViewController = 0;
  }
}

- (void)_sendActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    if (self->_currentMode != 2)
    {
      [SBAppViewController _sendActions:];
    }

    if (self->_invalidated)
    {
      [SBAppViewController _sendActions:];
    }

    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SBAppViewController__sendActions___block_invoke;
    v6[3] = &unk_2783BF170;
    v7 = actionsCopy;
    [sceneIfExists updateUISettingsWithTransitionBlock:v6];
  }
}

id __36__SBAppViewController__sendActions___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D75188]);
  [v2 setActions:*(a1 + 32)];

  return v2;
}

- (void)_activateApp
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void __35__SBAppViewController__activateApp__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 1032) removeObject:WeakRetained];
  }

  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = [v3 _roleHint];
  v5 = SBTraitsArbiterOrientationActuationEnabledForRole(v4);

  if ((v5 & 1) == 0)
  {
    v6 = [*(*(a1 + 32) + 1000) currentInterfaceOrientation];
    v7 = [*(a1 + 32) appView];

    if (v7)
    {
      if (v6)
      {
        [*(a1 + 32) _transformHostedAppViewForRotationToOrientation:v6];
      }
    }
  }
}

- (id)_configureApplicationSceneEntity:(id)entity deliveringActions:(BOOL)actions
{
  actionsCopy = actions;
  entityCopy = entity;
  v7 = entityCopy;
  if (self->_ignoresOcclusions)
  {
    [entityCopy setObject:self->_identifier forActivationSetting:61];
  }

  [v7 applyActivationSettings:self->_activationSettings];
  [v7 applyActivationSettings:self->_supplementalActivationSettings];
  if (actionsCopy && self->_actionsToDeliver)
  {
    [v7 addActions:?];
    [(SBAppViewController *)self setActionsToDeliver:0];
  }

  return v7;
}

- (id)_createSceneUpdateTransactionForApplicationSceneEntity:(id)entity deliveringActions:(BOOL)actions
{
  actionsCopy = actions;
  entityCopy = entity;
  v7 = [(SBAppViewController *)self _configureApplicationSceneEntity:entityCopy deliveringActions:actionsCopy];
  sceneHandle = [entityCopy sceneHandle];
  isSecure = [sceneHandle isSecure];

  if (isSecure)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  v11 = +[SBMainWorkspace sharedInstance];
  v12 = [v11 createRequestWithOptions:v10];

  [v12 setSource:7];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __96__SBAppViewController__createSceneUpdateTransactionForApplicationSceneEntity_deliveringActions___block_invoke;
  v20 = &unk_2783A96A0;
  selfCopy = self;
  v22 = entityCopy;
  v13 = entityCopy;
  [v12 modifyApplicationContext:&v17];
  v14 = [SBApplicationSceneUpdateTransaction alloc];
  selfCopy = [(SBApplicationSceneUpdateTransaction *)v14 initWithApplicationSceneEntity:v13 transitionRequest:v12 delegate:self, v17, v18, v19, v20, selfCopy];
  [(FBApplicationUpdateScenesTransaction *)selfCopy setWaitsForSceneCommits:0];
  [(SBApplicationSceneUpdateTransaction *)selfCopy setShouldSendActivationResult:1];

  return selfCopy;
}

void __96__SBAppViewController__createSceneUpdateTransactionForApplicationSceneEntity_deliveringActions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setInterfaceOrientation:{objc_msgSend(*(*(a1 + 32) + 1000), "currentInterfaceOrientation")}];
  [v4 setEntity:*(a1 + 40) forLayoutRole:1];
  v3 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v4 setEntity:v3 forLayoutRole:2];

  if ([*(a1 + 40) BOOLForActivationSetting:3])
  {
    [v4 setBackground:1];
  }

  [v4 setDelegate:*(a1 + 32)];
}

- (void)_deactivateHostedApp
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __43__SBAppViewController__deactivateHostedApp__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setForeground:0];
    v3 = v5;
  }

  v4 = [v3 ignoreOcclusionReasons];
  [v4 removeObject:*(*(a1 + 32) + 992)];
}

void __43__SBAppViewController__deactivateHostedApp__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setForeground:0];
    v3 = v5;
  }

  v4 = [v3 ignoreOcclusionReasons];
  [v4 removeObject:*(*(a1 + 32) + 992)];
}

- (void)_installedAppsDidChange:(id)change
{
  userInfo = [change userInfo];
  v8 = [userInfo objectForKey:@"SBInstalledApplicationsReplacedBundleIDs"];

  application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];
  v7 = [v8 containsObject:bundleIdentifier];

  if (v7)
  {
    [(SBAppViewController *)self _destroySceneViewController];
  }
}

- (void)_primeParentSceneForChildScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    v10 = sceneCopy;
    parentScene = [sceneCopy parentScene];

    sceneCopy = v10;
    if (!parentScene)
    {
      view = [(SBAppViewController *)self view];
      window = [view window];
      windowScene = [window windowScene];
      _FBSScene = [windowScene _FBSScene];

      if (_FBSScene)
      {
        [v10 setParentScene:_FBSScene];
      }

      sceneCopy = v10;
    }
  }
}

- (id)_windowSceneFromSceneHandle
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  return v5;
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  _windowSceneFromSceneHandle = [(SBAppViewController *)self _windowSceneFromSceneHandle];
  layoutStateTransitionCoordinator = [_windowSceneFromSceneHandle layoutStateTransitionCoordinator];
  v7 = [layoutStateTransitionCoordinator layoutStateForApplicationTransitionContext:contextCopy];

  return v7;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  _windowSceneFromSceneHandle = [(SBAppViewController *)self _windowSceneFromSceneHandle];
  layoutStateTransitionCoordinator = [_windowSceneFromSceneHandle layoutStateTransitionCoordinator];
  v7 = [layoutStateTransitionCoordinator previousLayoutStateForApplicationTransitionContext:contextCopy];

  return v7;
}

- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity
{
  v4 = [(SBAppViewController *)self _windowSceneFromSceneHandle:context];
  _FBSScene = [v4 _FBSScene];
  settings = [_FBSScene settings];
  [settings frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)sceneUpdateTransaction:(id)transaction finishedApplyingUpdate:(BOOL)update
{
  if (!update)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained appViewControllerDidFailToActivateApplication:self];
    }
  }
}

- (SBApplicationSceneViewControllingStatusBarDelegate)applicationSceneStatusBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->applicationSceneStatusBarDelegate);

  return WeakRetained;
}

- (SBAppViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithIdentifier:(const char *)a1 andApplicationSceneEntity:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:SBApplicationSceneEntityClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:andApplicationSceneEntity:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithIdentifier:(const char *)a1 andApplicationSceneEntity:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneHandle:didDestroyScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)sceneHandle:(uint64_t)a1 didUpdateSettingsWithDiff:(void *)a2 previousSettings:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [*(a1 + 1000) sceneIdentifier];
  v7 = NSStringFromSBAppViewControllerMode(*(a1 + 1056));
  v8 = [a2 description];
  v9 = [a1 view];
  v10 = [v9 window];
  v11 = [v10 recursiveDescription];
  [v12 handleFailureInMethod:a3 object:a1 file:@"SBAppViewController.m" lineNumber:450 description:{@"Something changed the scene's (%@) foreground status out from underneath us (current mode: %@, diff: %@, window: %@).", v6, v7, v8, v11}];
}

- (void)sceneHandle:(const char *)a1 didUpdateSettingsWithDiff:previousSettings:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[[sceneSettings ignoreOcclusionReasons] containsObject:_identifier]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_sendActions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_sendActions:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end