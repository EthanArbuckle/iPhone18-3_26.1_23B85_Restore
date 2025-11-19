@interface PRUISModalRemoteViewController
- (FBSDisplayConfiguration)displayConfiguration;
- (PRUISModalRemoteViewController)initWithEntryPoint:(id)a3;
- (PRUISModalRemoteViewControllerDelegate)delegate;
- (id)_defaultDisplayConfigurationWithScreen:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)supportedInterfaceOrientations;
- (void)_acquireKeyboardFocusDeferringRuleIfNecessary;
- (void)_configureSceneIfNeededWithParentWindow:(id)a3;
- (void)_invalidateAfterDismissal;
- (void)_invokeDidDismissDelegateWithResponse:(id)a3;
- (void)_invokeWillDismissDelegateWithResponse:(id)a3;
- (void)_teardown;
- (void)_update;
- (void)_updateCommonModalSceneSettings:(id)a3 withFrame:(CGRect)a4 interfaceOrientation:(int64_t)a5;
- (void)_updateSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5 fence:(id)a6;
- (void)_updateStatusBarVisibilityWithTransitionContext:(id)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)endObservingApplicationLifecycle;
- (void)invalidate;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)sendRequestDismissalAction;
- (void)setDisplayConfiguration:(id)a3;
- (void)startObservingApplicationLifecycle;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PRUISModalRemoteViewController

- (PRUISModalRemoteViewController)initWithEntryPoint:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PRUISModalRemoteViewController;
  v6 = [(PRUISModalRemoteViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryPoint, a3);
    v8 = [MEMORY[0x1E699F7F8] pui_posterBoardUIServicesModalWorkspace];
    v9 = [v8 pui_createScene:&__block_literal_global_21];
    scene = v7->_scene;
    v7->_scene = v9;

    [(FBScene *)v7->_scene addExtension:objc_opt_class()];
    v11 = PRUISLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7->_scene;
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "Created new PosterBoard modal scene %{public}@", buf, 0xCu);
    }

    [(FBScene *)v7->_scene setDelegate:v7];
  }

  return v7;
}

void __53__PRUISModalRemoteViewController_initWithEntryPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C75F0];
  v3 = a2;
  v10 = [v2 identityForAngelJobLabel:@"com.apple.PosterBoard"];
  v4 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 stringValue];
  v7 = [@"sceneID:com.apple.PosterBoard-modal:" stringByAppendingString:v6];

  [v3 setIdentifier:v7];
  v8 = +[(FBSSceneSpecification *)PRUISModalSceneSpecification];
  [v3 setSpecification:v8];

  v9 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:v10];
  [v3 setClientIdentity:v9];
}

- (void)dealloc
{
  [(PRUISModalRemoteViewController *)self endObservingApplicationLifecycle];
  [(PRUISModalRemoteViewController *)self _teardown];
  v3.receiver = self;
  v3.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v3 dealloc];
}

- (id)_defaultDisplayConfigurationWithScreen:(id)a3
{
  if (a3)
  {
    v3 = [a3 displayConfiguration];
  }

  else
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    v3 = [v4 displayConfiguration];
  }

  return v3;
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, a3);
    [(PRUISModalRemoteViewController *)self _update];
  }
}

- (FBSDisplayConfiguration)displayConfiguration
{
  displayConfiguration = self->_displayConfiguration;
  if (displayConfiguration)
  {
    v3 = displayConfiguration;
  }

  else
  {
    v5 = [(UIWindowScene *)self->_uiParentScene screen];
    v3 = [(PRUISModalRemoteViewController *)self _defaultDisplayConfigurationWithScreen:v5];
  }

  return v3;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      invalidated = self->_invalidated;
      v4 = 134218240;
      v5 = self;
      v6 = 1024;
      v7 = invalidated;
      _os_log_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PosterBoard modal-%p: invalidated is now %{BOOL}i", &v4, 0x12u);
    }

    [(PRUISModalRemoteViewController *)self _teardown];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewWillAppear:a3];
  [(PRUISModalRemoteViewController *)self _update];
  [(PRUISModalRemoteViewController *)self startObservingApplicationLifecycle];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewDidAppear:a3];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewWillDisappear:a3];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewDidDisappear:a3];
  [(PRUISModalRemoteViewController *)self _update];
  [(PRUISModalRemoteViewController *)self endObservingApplicationLifecycle];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 didMoveToParentViewController:a3];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = PRUISModalRemoteViewController;
  v4 = a3;
  [(PRUISModalRemoteViewController *)&v7 traitCollectionDidChange:v4];
  v5 = [(PRUISModalRemoteViewController *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {
    [(PRUISModalRemoteViewController *)self _update];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v20 = a4;
  v7 = [v20 containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = [v7 window];
  }

  v9 = v8;
  v10 = [(PRUISModalRemoteViewController *)self view];
  v11 = [v10 window];
  v12 = [v11 windowScene];
  v13 = [v12 interfaceOrientation];

  if (v20)
  {
    v14 = [v9 _toWindowOrientation];
    v15 = [(UIWindowScene *)self->_uiParentScene _synchronizedDrawingFence];
    v16 = MEMORY[0x1E698E608];
    [v20 transitionDuration];
    v17 = [v16 settingsWithDuration:?];
    [(PRUISModalRemoteViewController *)self _configureSceneIfNeededWithParentWindow:v9];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:v14 orientation:v17 withAnimationSettings:v15 fence:width, height];
  }

  else
  {
    [(PRUISModalRemoteViewController *)self _configureSceneIfNeededWithParentWindow:v9];
    v17 = [(PRUISModalRemoteViewController *)self view];
    [v17 bounds];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:v13 orientation:0 withAnimationSettings:0 fence:v18, v19];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(PRUISModalRemoteViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_teardown
{
  v14 = *MEMORY[0x1E69E9840];
  scenePresenter = self->_scenePresenter;
  if (scenePresenter)
  {
    [(UIScenePresenter *)scenePresenter invalidate];
    v4 = self->_scenePresenter;
    self->_scenePresenter = 0;
  }

  if (self->_scene)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FBScene *)self->_scene identityToken];
      v6 = [v5 stringRepresentation];
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PosterBoard modal-%p: invalidating scene %@", &v10, 0x16u);
    }

    [(FBScene *)self->_scene setDelegate:0];
    [(FBScene *)self->_scene invalidate];
    scene = self->_scene;
    self->_scene = 0;
  }

  keyboardFocusDeferringRule = self->_keyboardFocusDeferringRule;
  if (keyboardFocusDeferringRule)
  {
    [(BSInvalidatable *)keyboardFocusDeferringRule invalidate];
    v9 = self->_keyboardFocusDeferringRule;
    self->_keyboardFocusDeferringRule = 0;
  }
}

- (void)_update
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    v3 = [(PRUISModalRemoteViewController *)self view];
    v4 = [v3 window];
    [(PRUISModalRemoteViewController *)self _configureSceneIfNeededWithParentWindow:v4];
    v5 = [v4 _windowInterfaceOrientation];
    [v3 bounds];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:v5 orientation:0 withAnimationSettings:0 fence:v6, v7];
    scenePresenter = self->_scenePresenter;
    if (v4)
    {
      if (!scenePresenter)
      {
        v9 = [(FBScene *)self->_scene uiPresentationManager];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 createPresenterWithIdentifier:v11];
        v13 = self->_scenePresenter;
        self->_scenePresenter = v12;

        [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_32];
        [(UIScenePresenter *)self->_scenePresenter activate];
        v14 = PRUISLogRemoteEditing();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_1CAE63000, v14, OS_LOG_TYPE_DEFAULT, "Installing live scene view on scene setup", v18, 2u);
        }

        v15 = [(UIScenePresenter *)self->_scenePresenter presentationView];
        [v3 bounds];
        [v15 setFrame:?];
        [v15 setAutoresizingMask:18];
        [v3 addSubview:v15];
        [v3 sendSubviewToBack:v15];
        scenePresentationView = self->_scenePresentationView;
        self->_scenePresentationView = v15;
      }
    }

    else
    {
      [(UIScenePresenter *)scenePresenter invalidate];
      v17 = self->_scenePresenter;
      self->_scenePresenter = 0;
    }

    [(PRUISModalRemoteViewController *)self _updateStatusBarVisibilityWithTransitionContext:0];
  }
}

void __41__PRUISModalRemoteViewController__update__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v8 viewDidLayoutSubviews];
  if (!self->_invalidated)
  {
    v3 = [(PRUISModalRemoteViewController *)self view];
    v4 = [v3 window];
    v5 = [v4 _windowInterfaceOrientation];

    [v3 bounds];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:v5 orientation:0 withAnimationSettings:0 fence:v6, v7];
  }
}

- (void)_configureSceneIfNeededWithParentWindow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_didConfigureScene)
  {
    v6 = [v4 windowScene];
    uiParentScene = self->_uiParentScene;
    self->_uiParentScene = v6;

    if (self->_uiParentScene)
    {
      scene = self->_scene;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__PRUISModalRemoteViewController__configureSceneIfNeededWithParentWindow___block_invoke;
      v9[3] = &unk_1E83A8AE8;
      v9[4] = self;
      [(FBScene *)scene configureParameters:v9];
      self->_didConfigureScene = 1;
    }
  }
}

uint64_t __74__PRUISModalRemoteViewController__configureSceneIfNeededWithParentWindow___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PRUISModalRemoteViewController__configureSceneIfNeededWithParentWindow___block_invoke_2;
  v3[3] = &unk_1E83A8AC0;
  v3[4] = *(a1 + 32);
  return [a2 updateSettingsWithBlock:v3];
}

void __74__PRUISModalRemoteViewController__configureSceneIfNeededWithParentWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[131];
  v9 = a2;
  [v4 bounds];
  [v3 _updateCommonModalSceneSettings:v9 withFrame:objc_msgSend(*(*(a1 + 32) + 1000) interfaceOrientation:{"interfaceOrientation"), v5, v6, v7, v8}];
}

- (void)_updateSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5 fence:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (self->_didConfigureScene)
  {
    scene = self->_scene;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__PRUISModalRemoteViewController__updateSceneToSize_orientation_withAnimationSettings_fence___block_invoke;
    v17[3] = &unk_1E83A8B10;
    if ((a4 - 3) >= 2)
    {
      v15 = height;
    }

    else
    {
      v15 = width;
    }

    if ((a4 - 3) >= 2)
    {
      v16 = width;
    }

    else
    {
      v16 = height;
    }

    v20 = 0;
    v21 = 0;
    v17[4] = self;
    v22 = v16;
    v23 = v15;
    v24 = a4;
    v18 = v12;
    v19 = v11;
    [(FBScene *)scene performUpdate:v17];
  }
}

void __93__PRUISModalRemoteViewController__updateSceneToSize_orientation_withAnimationSettings_fence___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = a2;
  [v6 setForeground:{objc_msgSend(v5, "_appearState") != 0}];
  [*(a1 + 32) _updateCommonModalSceneSettings:v6 withFrame:*(a1 + 88) interfaceOrientation:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  [v7 setAnimationFence:*(a1 + 40)];
  [v7 setAnimationSettings:*(a1 + 48)];
}

- (void)_updateCommonModalSceneSettings:(id)a3 withFrame:(CGRect)a4 interfaceOrientation:(int64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  [v15 setFrame:{x, y, width, height}];
  [v15 setInterfaceOrientation:a5];
  v11 = [(PRUISModalRemoteViewController *)self traitCollection];
  [v15 setUserInterfaceStyle:{objc_msgSend(v11, "userInterfaceStyle")}];

  v12 = [(PRUISModalRemoteViewController *)self displayConfiguration];
  [v15 setDisplayConfiguration:v12];

  [v15 setShouldInheritHostDisplayConfiguration:self->_displayConfiguration != 0];
  [v15 setEntryPoint:self->_entryPoint];
  v13 = [(UIWindowScene *)self->_uiParentScene _FBSScene];
  v14 = [v13 settings];

  if ([v14 isUISubclass])
  {
    [v14 defaultStatusBarHeightForOrientation:a5];
    [v15 setDefaultStatusBarHeight:a5 forOrientation:?];
  }
}

- (void)_updateStatusBarVisibilityWithTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(FBScene *)self->_scene clientSettings];
  if ([v5 isUISubclass])
  {
    v6 = [v5 statusBarHidden];
    if (self->_presentedPrefersStatusBarHidden != v6)
    {
      self->_presentedPrefersStatusBarHidden = v6;
      v7 = [v4 animationSettings];
      [v7 duration];
      v9 = v8;

      if (v9 <= 0.0)
      {
        [(PRUISModalRemoteViewController *)self setNeedsStatusBarAppearanceUpdate];
      }

      else
      {
        uiParentScene = self->_uiParentScene;
        v11 = [v4 animationFence];
        [(UIWindowScene *)uiParentScene _synchronizeDrawingWithFence:v11];

        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __82__PRUISModalRemoteViewController__updateStatusBarVisibilityWithTransitionContext___block_invoke;
        v12[3] = &unk_1E83A72F8;
        v12[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:v9];
      }
    }
  }
}

- (void)_invokeWillDismissDelegateWithResponse:(id)a3
{
  v5 = a3;
  v4 = [(PRUISModalRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 modalRemoteViewController:self willDismissWithResponse:v5];
  }
}

- (void)_invokeDidDismissDelegateWithResponse:(id)a3
{
  v5 = a3;
  v4 = [(PRUISModalRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 modalRemoteViewController:self didDismissWithResponse:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 modalRemoteViewControllerDidDismiss:self];
  }
}

- (void)_invalidateAfterDismissal
{
  entryPoint = self->_entryPoint;
  v4 = objc_opt_class();
  v5 = entryPoint;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(PRUISModalEntryPoint *)v7 editingType];
  if (v8 == 1)
  {
    v9 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PRUISModalRemoteViewController__invalidateAfterDismissal__block_invoke;
    block[3] = &unk_1E83A72F8;
    block[4] = self;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  }

  else
  {

    [(PRUISModalRemoteViewController *)self invalidate];
  }
}

- (void)sendRequestDismissalAction
{
  scene = self->_scene;
  v3 = MEMORY[0x1E695DFD8];
  v5 = [PRUISRequestDismissalAction actionWithAnimation:1];
  v4 = [v3 setWithObject:v5];
  [(FBScene *)scene sendActions:v4];
}

- (void)startObservingApplicationLifecycle
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  [v3 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
}

- (void)endObservingApplicationLifecycle
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = [PRUISForwardExtensionAppearanceNotificationAction alloc];
  v7 = [(PRUISForwardExtensionAppearanceNotificationAction *)v4 initWithNotificationName:*MEMORY[0x1E696A2D8]];
  scene = self->_scene;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [(FBScene *)scene sendActions:v6];
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = [PRUISForwardExtensionAppearanceNotificationAction alloc];
  v7 = [(PRUISForwardExtensionAppearanceNotificationAction *)v4 initWithNotificationName:*MEMORY[0x1E696A2C0]];
  scene = self->_scene;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [(FBScene *)scene sendActions:v6];
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 response];
          [(PRUISModalRemoteViewController *)self _invokeWillDismissDelegateWithResponse:v11];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v10 response];
          [(PRUISModalRemoteViewController *)self _invokeDidDismissDelegateWithResponse:v12];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained modalRemoteViewController:self shouldDeferInvalidation:self] & 1) == 0)
          {
            [(PRUISModalRemoteViewController *)self _invalidateAfterDismissal];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_scene == a3)
  {
    v7 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEFAULT, "Remote modal controller %p scene did deactivate with error: %@", &v9, 0x16u);
    }

    v8 = [[PRUISModalEntryPointResponse alloc] initWithResult:0];
    [(PRUISModalRemoteViewController *)self _invokeWillDismissDelegateWithResponse:v8];
    [(PRUISModalRemoteViewController *)self _invokeDidDismissDelegateWithResponse:v8];
    [(PRUISModalRemoteViewController *)self _invalidateAfterDismissal];
  }
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x1E69DC680];
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __108__PRUISModalRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v19 = &unk_1E83A8B38;
  v20 = self;
  v21 = v9;
  v14 = v9;
  [v13 observeStatusBarHiddenWithBlock:&v16];
  v15 = [v12 clientSettings];

  [v13 inspectDiff:v11 withContext:v15];
  [v13 removeAllObservers];
}

- (void)_acquireKeyboardFocusDeferringRuleIfNecessary
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_1CAE63000, v2, v3, "%{public}@-%{public}p: Cannot acquire keyboard focus deferring assertion because parent scene is nil", v4, v5, v6, v7, v8);
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PRUISModalRemoteViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PRUISModalRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E83A7100;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __72__PRUISModalRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1016) withName:@"scenePresenter"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1032) withName:@"scenePresentationView"];
  v4 = [MEMORY[0x1E696AF00] isMainThread];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 1072);
  if (v4)
  {
    return [v5 appendObject:v6 withName:@"scene"];
  }

  else
  {
    return [v5 appendPointer:v6 withName:@"scene"];
  }
}

- (id)succinctDescription
{
  v2 = [(PRUISModalRemoteViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (PRUISModalRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end