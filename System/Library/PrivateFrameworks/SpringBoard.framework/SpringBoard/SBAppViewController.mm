@interface SBAppViewController
- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)a3;
- (BOOL)placeholderContentEnabled;
- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4;
- (CGSize)contentReferenceSize;
- (SBAppViewController)initWithIdentifier:(id)a3 andApplicationSceneEntity:(id)a4;
- (SBAppViewControllerDelegate)delegate;
- (SBApplicationSceneViewControllingStatusBarDelegate)applicationSceneStatusBarDelegate;
- (double)statusBarAlpha;
- (id)_configureApplicationSceneEntity:(id)a3 deliveringActions:(BOOL)a4;
- (id)_createSceneUpdateTransactionForApplicationSceneEntity:(id)a3 deliveringActions:(BOOL)a4;
- (id)_windowSceneFromSceneHandle;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
- (id)previousLayoutStateForApplicationTransitionContext:(id)a3;
- (void)_activateApp;
- (void)_createSceneViewController;
- (void)_deactivateHostedApp;
- (void)_destroySceneViewController;
- (void)_installedAppsDidChange:(id)a3;
- (void)_primeParentSceneForChildScene:(id)a3;
- (void)_sendActions:(id)a3;
- (void)_setCurrentMode:(int64_t)a3;
- (void)_transformHostedAppViewForRotationToOrientation:(int64_t)a3;
- (void)_updateForAppearanceState:(int)a3;
- (void)dealloc;
- (void)invalidate;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
- (void)sceneUpdateTransaction:(id)a3 finishedApplyingUpdate:(BOOL)a4;
- (void)setActionsToDeliver:(id)a3;
- (void)setAutomatesLifecycle:(BOOL)a3;
- (void)setContentReferenceSize:(CGSize)a3 withContentOrientation:(int64_t)a4 andContainerOrientation:(int64_t)a5;
- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5;
- (void)setPlaceholderContentContext:(id)a3;
- (void)setPlaceholderContentEnabled:(BOOL)a3;
- (void)setRequestedMode:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
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

- (SBAppViewController)initWithIdentifier:(id)a3 andApplicationSceneEntity:(id)a4
{
  v8 = a3;
  v9 = a4;
  NSClassFromString(&cfstr_Sbapplications_8.isa);
  if (!v9)
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
    objc_storeStrong(&v10->_identifier, a3);
    v12 = [v9 sceneHandle];
    sceneHandle = v11->_sceneHandle;
    v11->_sceneHandle = v12;

    if (![(SBDeviceApplicationSceneHandle *)v11->_sceneHandle isDeviceApplicationSceneHandle])
    {
      [SBAppViewController initWithIdentifier:andApplicationSceneEntity:];
    }

    v14 = [(SBDeviceApplicationSceneHandle *)v11->_sceneHandle newScenePlaceholderContentContextWithActivationSettings:v9];
    placeholderContentContext = v11->_placeholderContentContext;
    v11->_placeholderContentContext = v14;

    v16 = objc_alloc_init(SBActivationSettings);
    activationSettings = v11->_activationSettings;
    v11->_activationSettings = v16;

    v18 = v11->_activationSettings;
    v19 = [v9 copyActivationSettings];
    [(SBActivationSettings *)v18 applyActivationSettings:v19];

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeTransitions = v11->_activeTransitions;
    v11->_activeTransitions = v20;

    v22 = [v9 actions];
    actionsToDeliver = v11->_actionsToDeliver;
    v11->_actionsToDeliver = v22;

    v11->_requestedMode = 0;
    v11->_currentMode = 0;
    v11->_sceneContentIsReady = 0;
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v11 selector:sel__installedAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
  }

  return v11;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setActionsToDeliver:(id)a3
{
  v5 = a3;
  if (self->_actionsToDeliver != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_actionsToDeliver, a3);
    v6 = [(NSSet *)self->_actionsToDeliver count];
    v5 = v8;
    if (v6)
    {
      if (self->_currentMode == 2)
      {
        [(SBAppViewController *)self _sendActions:self->_actionsToDeliver];
        actionsToDeliver = self->_actionsToDeliver;
        self->_actionsToDeliver = 0;

        v5 = v8;
      }
    }
  }
}

- (void)setRequestedMode:(int64_t)a3
{
  if (self->_requestedMode != a3)
  {
    self->_requestedMode = a3;
    if (!self->_automatesLifecycle)
    {
      [(SBAppViewController *)self _setCurrentMode:?];
    }
  }
}

- (void)setAutomatesLifecycle:(BOOL)a3
{
  if (self->_automatesLifecycle != a3)
  {
    self->_automatesLifecycle = a3;
    if (a3)
    {
      v4 = [(SBAppViewController *)self _appearState];

      [(SBAppViewController *)self _updateForAppearanceState:v4];
    }

    else if (self->_requestedMode != self->_currentMode)
    {

      [(SBAppViewController *)self _setCurrentMode:?];
    }
  }
}

- (void)setPlaceholderContentEnabled:(BOOL)a3
{
  if (self->_placeholderContentEnabled != a3)
  {
    v4 = a3;
    self->_placeholderContentEnabled = a3;
    v5 = [(SBAppViewController *)self appView];
    [v5 setPlaceholderContentEnabled:v4];
  }
}

- (BOOL)placeholderContentEnabled
{
  v2 = [(SBAppViewController *)self appView];
  v3 = [v2 placeholderContentProvider];
  v4 = v3 == 0;

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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewWillAppear:a3];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:1];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBAppViewController;
  [(SBAppViewController *)&v5 viewIsAppearing:a3];
  v4 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  [(SBAppViewController *)self _primeParentSceneForChildScene:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewDidAppear:a3];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:2];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewWillDisappear:a3];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:3];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBAppViewController;
  [(SBAppViewController *)&v4 viewDidDisappear:a3];
  if (self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _updateForAppearanceState:0];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBAppViewController;
  [(SBAppViewController *)&v5 willMoveToParentViewController:?];
  if (!a3 && self->_automatesLifecycle)
  {
    [(SBAppViewController *)self _setCurrentMode:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = SBAppViewController;
  [(SBAppViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(SBAppViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 _roleHint];
  v6 = SBTraitsArbiterOrientationActuationEnabledForRole(v5);

  if ((v6 & 1) == 0)
  {
    v7 = [(SBDeviceApplicationSceneViewController *)self->_deviceAppViewController view];
    v8 = [(SBAppViewController *)self view];
    [v8 bounds];
    [v7 setFrame:?];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = SBAppViewController;
  [(SBAppViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBAppViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 _roleHint];
  v11 = SBTraitsArbiterOrientationActuationEnabledForRole(v10);

  if ((v11 & 1) == 0)
  {
    v12 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 uiSettings];
      v15 = [v14 deviceOrientationEventsEnabled];

      if (v15)
      {
        v16 = SBFWindowForViewControllerTransition();
        v17 = [v16 _toWindowOrientation];

        [(SBSceneViewController *)self->_deviceAppViewController setContentReferenceSize:v17 withContentOrientation:v17 andContainerOrientation:width, height];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __74__SBAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
        v18[3] = &unk_2783A9488;
        v18[4] = self;
        [v7 animateAlongsideTransition:0 completion:v18];
      }

      else
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __74__SBAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v19[3] = &unk_2783BF170;
        v20 = v7;
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

- (void)_transformHostedAppViewForRotationToOrientation:(int64_t)a3
{
  v5 = [(SBAppViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 _roleHint];
  v8 = SBTraitsArbiterOrientationActuationEnabledForRole(v7);

  if ((v8 & 1) == 0)
  {
    v9 = [(SBAppViewController *)self view];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(SBAppViewController *)self view];
    v19 = [MEMORY[0x277D759A0] mainScreen];
    v20 = [v19 fixedCoordinateSpace];
    [v18 convertRect:v20 toCoordinateSpace:{v11, v13, v15, v17}];
    v22 = v21;
    v24 = v23;

    Height = v15;
    Width = v17;
    if ((a3 - 3) < 2 != ([(SBAppViewController *)self interfaceOrientation]- 3) < 2)
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

    v27 = [(SBDeviceApplicationSceneViewController *)self->_deviceAppViewController view];
    [(SBAppViewController *)self interfaceOrientation];
    SBFTransformFromOrientationToOrientation();
    [v27 setTransform:&v28];
    UIRectGetCenter();
    [v27 setCenter:?];
    [v27 setBounds:{v11, v13, Height, Width}];
    [(SBSceneViewController *)self->_deviceAppViewController setContentReferenceSize:a3 withContentOrientation:a3 andContainerOrientation:v22, v24];
  }
}

- (void)setPlaceholderContentContext:(id)a3
{
  v5 = a3;
  if (self->_placeholderContentContext != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_placeholderContentContext, a3);
    v6 = [(SBAppViewController *)self appView];
    [v6 setPlaceholderContentContext:self->_placeholderContentContext];

    v5 = v7;
  }
}

- (CGSize)contentReferenceSize
{
  [(SBSceneViewController *)self->_deviceAppViewController contentReferenceSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentReferenceSize:(CGSize)a3 withContentOrientation:(int64_t)a4 andContainerOrientation:(int64_t)a5
{
  [(SBSceneViewController *)self->_deviceAppViewController setContentReferenceSize:a4 withContentOrientation:a5 andContainerOrientation:a3.width, a3.height];
  deviceAppViewController = self->_deviceAppViewController;
  v8 = [(SBDeviceApplicationSceneViewController *)deviceAppViewController interfaceOrientation];
  v9 = [(SBAppViewController *)self view];
  [(SBDeviceApplicationSceneViewController *)deviceAppViewController willRotateFromInterfaceOrientation:v8 toInterfaceOrientation:a4 alongsideContainerView:v9 animated:1];

  v10 = [(SBAppViewController *)self view];
  [v10 setNeedsLayout];
}

- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
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
    [(SBDeviceApplicationSceneViewController *)v12 setDisplayMode:a3 animationFactory:v8 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
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

- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4
{
  if (a4 >= 2)
  {
    if (a4 == 2 && !self->_sceneContentIsReady)
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

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  v8 = a3;
  v6 = a4;
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

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content())
  {
    v11 = [v18 scene];
    v12 = [v11 settings];

    if ([v9 containsProperty:sel_isForeground] && (objc_msgSend(v12, "isForeground") & 1) == 0)
    {
      [SBAppViewController sceneHandle:v9 didUpdateSettingsWithDiff:a2 previousSettings:?];
    }

    if (self->_ignoresOcclusions)
    {
      v13 = [v10 ignoreOcclusionReasons];
      v14 = [v12 ignoreOcclusionReasons];
      v15 = BSEqualObjects();

      if ((v15 & 1) == 0)
      {
        v16 = [v12 ignoreOcclusionReasons];
        v17 = [v16 containsObject:self->_identifier];

        if ((v17 & 1) == 0)
        {
          [SBAppViewController sceneHandle:a2 didUpdateSettingsWithDiff:? previousSettings:?];
        }
      }
    }
  }
}

- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)a3
{
  v4 = [(SBAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 appViewControllerIsInNonRotatingWindow:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateForAppearanceState:(int)a3
{
  if (a3 <= 3)
  {
    [(SBAppViewController *)self _setCurrentMode:qword_21F8A8030[a3]];
  }
}

- (void)_setCurrentMode:(int64_t)a3
{
  if (!self->_invalidated && self->_currentMode != a3)
  {
    self->_currentMode = a3;
    self->_sceneContentIsReady = 0;
    switch(a3)
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
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_destroySceneViewController
{
  deviceAppViewController = self->_deviceAppViewController;
  if (deviceAppViewController)
  {
    [(SBAppViewController *)self bs_removeChildViewController:deviceAppViewController animated:0 transitionBlock:0];
    v4 = [(SBAppViewController *)self appView];
    [v4 invalidate];

    v5 = self->_deviceAppViewController;
    self->_deviceAppViewController = 0;
  }
}

- (void)_sendActions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if (self->_currentMode != 2)
    {
      [SBAppViewController _sendActions:];
    }

    if (self->_invalidated)
    {
      [SBAppViewController _sendActions:];
    }

    v5 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SBAppViewController__sendActions___block_invoke;
    v6[3] = &unk_2783BF170;
    v7 = v4;
    [v5 updateUISettingsWithTransitionBlock:v6];
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
  v2 = [MEMORY[0x277CCA890] currentHandler];
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

- (id)_configureApplicationSceneEntity:(id)a3 deliveringActions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self->_ignoresOcclusions)
  {
    [v6 setObject:self->_identifier forActivationSetting:61];
  }

  [v7 applyActivationSettings:self->_activationSettings];
  [v7 applyActivationSettings:self->_supplementalActivationSettings];
  if (v4 && self->_actionsToDeliver)
  {
    [v7 addActions:?];
    [(SBAppViewController *)self setActionsToDeliver:0];
  }

  return v7;
}

- (id)_createSceneUpdateTransactionForApplicationSceneEntity:(id)a3 deliveringActions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBAppViewController *)self _configureApplicationSceneEntity:v6 deliveringActions:v4];
  v8 = [v6 sceneHandle];
  v9 = [v8 isSecure];

  if (v9)
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
  v21 = self;
  v22 = v6;
  v13 = v6;
  [v12 modifyApplicationContext:&v17];
  v14 = [SBApplicationSceneUpdateTransaction alloc];
  v15 = [(SBApplicationSceneUpdateTransaction *)v14 initWithApplicationSceneEntity:v13 transitionRequest:v12 delegate:self, v17, v18, v19, v20, v21];
  [(FBApplicationUpdateScenesTransaction *)v15 setWaitsForSceneCommits:0];
  [(SBApplicationSceneUpdateTransaction *)v15 setShouldSendActivationResult:1];

  return v15;
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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

- (void)_installedAppsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKey:@"SBInstalledApplicationsReplacedBundleIDs"];

  v5 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v6 = [v5 bundleIdentifier];
  v7 = [v8 containsObject:v6];

  if (v7)
  {
    [(SBAppViewController *)self _destroySceneViewController];
  }
}

- (void)_primeParentSceneForChildScene:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [v4 parentScene];

    v4 = v10;
    if (!v5)
    {
      v6 = [(SBAppViewController *)self view];
      v7 = [v6 window];
      v8 = [v7 windowScene];
      v9 = [v8 _FBSScene];

      if (v9)
      {
        [v10 setParentScene:v9];
      }

      v4 = v10;
    }
  }
}

- (id)_windowSceneFromSceneHandle
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle displayIdentity];
  v5 = [v3 windowSceneForDisplayIdentity:v4];

  return v5;
}

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(SBAppViewController *)self _windowSceneFromSceneHandle];
  v6 = [v5 layoutStateTransitionCoordinator];
  v7 = [v6 layoutStateForApplicationTransitionContext:v4];

  return v7;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(SBAppViewController *)self _windowSceneFromSceneHandle];
  v6 = [v5 layoutStateTransitionCoordinator];
  v7 = [v6 previousLayoutStateForApplicationTransitionContext:v4];

  return v7;
}

- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4
{
  v4 = [(SBAppViewController *)self _windowSceneFromSceneHandle:a3];
  v5 = [v4 _FBSScene];
  v6 = [v5 settings];
  [v6 frame];
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

- (void)sceneUpdateTransaction:(id)a3 finishedApplyingUpdate:(BOOL)a4
{
  if (!a4)
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