@interface PRUISModalRemoteViewController
- (FBSDisplayConfiguration)displayConfiguration;
- (PRUISModalRemoteViewController)initWithEntryPoint:(id)point;
- (PRUISModalRemoteViewControllerDelegate)delegate;
- (id)_defaultDisplayConfigurationWithScreen:(id)screen;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)supportedInterfaceOrientations;
- (void)_acquireKeyboardFocusDeferringRuleIfNecessary;
- (void)_configureSceneIfNeededWithParentWindow:(id)window;
- (void)_invalidateAfterDismissal;
- (void)_invokeDidDismissDelegateWithResponse:(id)response;
- (void)_invokeWillDismissDelegateWithResponse:(id)response;
- (void)_teardown;
- (void)_update;
- (void)_updateCommonModalSceneSettings:(id)settings withFrame:(CGRect)frame interfaceOrientation:(int64_t)orientation;
- (void)_updateSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings fence:(id)fence;
- (void)_updateStatusBarVisibilityWithTransitionContext:(id)context;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationWillResignActive:(id)active;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)endObservingApplicationLifecycle;
- (void)invalidate;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)sendRequestDismissalAction;
- (void)setDisplayConfiguration:(id)configuration;
- (void)startObservingApplicationLifecycle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRUISModalRemoteViewController

- (PRUISModalRemoteViewController)initWithEntryPoint:(id)point
{
  v17 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v14.receiver = self;
  v14.super_class = PRUISModalRemoteViewController;
  v6 = [(PRUISModalRemoteViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryPoint, point);
    pui_posterBoardUIServicesModalWorkspace = [MEMORY[0x1E699F7F8] pui_posterBoardUIServicesModalWorkspace];
    v9 = [pui_posterBoardUIServicesModalWorkspace pui_createScene:&__block_literal_global_21];
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

- (id)_defaultDisplayConfigurationWithScreen:(id)screen
{
  if (screen)
  {
    displayConfiguration = [screen displayConfiguration];
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    displayConfiguration = [mainScreen displayConfiguration];
  }

  return displayConfiguration;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, configuration);
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
    screen = [(UIWindowScene *)self->_uiParentScene screen];
    v3 = [(PRUISModalRemoteViewController *)self _defaultDisplayConfigurationWithScreen:screen];
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
      selfCopy = self;
      v6 = 1024;
      v7 = invalidated;
      _os_log_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PosterBoard modal-%p: invalidated is now %{BOOL}i", &v4, 0x12u);
    }

    [(PRUISModalRemoteViewController *)self _teardown];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewWillAppear:appear];
  [(PRUISModalRemoteViewController *)self _update];
  [(PRUISModalRemoteViewController *)self startObservingApplicationLifecycle];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewDidAppear:appear];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewWillDisappear:disappear];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 viewDidDisappear:disappear];
  [(PRUISModalRemoteViewController *)self _update];
  [(PRUISModalRemoteViewController *)self endObservingApplicationLifecycle];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = PRUISModalRemoteViewController;
  [(PRUISModalRemoteViewController *)&v4 didMoveToParentViewController:controller];
  [(PRUISModalRemoteViewController *)self _update];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PRUISModalRemoteViewController;
  changeCopy = change;
  [(PRUISModalRemoteViewController *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(PRUISModalRemoteViewController *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {
    [(PRUISModalRemoteViewController *)self _update];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  containerView = [coordinatorCopy containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = containerView;
  }

  else
  {
    window = [containerView window];
  }

  v9 = window;
  view = [(PRUISModalRemoteViewController *)self view];
  window2 = [view window];
  windowScene = [window2 windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if (coordinatorCopy)
  {
    _toWindowOrientation = [v9 _toWindowOrientation];
    _synchronizedDrawingFence = [(UIWindowScene *)self->_uiParentScene _synchronizedDrawingFence];
    v16 = MEMORY[0x1E698E608];
    [coordinatorCopy transitionDuration];
    view2 = [v16 settingsWithDuration:?];
    [(PRUISModalRemoteViewController *)self _configureSceneIfNeededWithParentWindow:v9];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:_toWindowOrientation orientation:view2 withAnimationSettings:_synchronizedDrawingFence fence:width, height];
  }

  else
  {
    [(PRUISModalRemoteViewController *)self _configureSceneIfNeededWithParentWindow:v9];
    view2 = [(PRUISModalRemoteViewController *)self view];
    [view2 bounds];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:interfaceOrientation orientation:0 withAnimationSettings:0 fence:v18, v19];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(PRUISModalRemoteViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
      identityToken = [(FBScene *)self->_scene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      v10 = 134218242;
      selfCopy = self;
      v12 = 2112;
      v13 = stringRepresentation;
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
    view = [(PRUISModalRemoteViewController *)self view];
    window = [view window];
    [(PRUISModalRemoteViewController *)self _configureSceneIfNeededWithParentWindow:window];
    _windowInterfaceOrientation = [window _windowInterfaceOrientation];
    [view bounds];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:_windowInterfaceOrientation orientation:0 withAnimationSettings:0 fence:v6, v7];
    scenePresenter = self->_scenePresenter;
    if (window)
    {
      if (!scenePresenter)
      {
        uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [uiPresentationManager createPresenterWithIdentifier:v11];
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

        presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
        [view bounds];
        [presentationView setFrame:?];
        [presentationView setAutoresizingMask:18];
        [view addSubview:presentationView];
        [view sendSubviewToBack:presentationView];
        scenePresentationView = self->_scenePresentationView;
        self->_scenePresentationView = presentationView;
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
    view = [(PRUISModalRemoteViewController *)self view];
    window = [view window];
    _windowInterfaceOrientation = [window _windowInterfaceOrientation];

    [view bounds];
    [(PRUISModalRemoteViewController *)self _updateSceneToSize:_windowInterfaceOrientation orientation:0 withAnimationSettings:0 fence:v6, v7];
  }
}

- (void)_configureSceneIfNeededWithParentWindow:(id)window
{
  windowCopy = window;
  v5 = windowCopy;
  if (!self->_didConfigureScene)
  {
    windowScene = [windowCopy windowScene];
    uiParentScene = self->_uiParentScene;
    self->_uiParentScene = windowScene;

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

- (void)_updateSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings fence:(id)fence
{
  height = size.height;
  width = size.width;
  settingsCopy = settings;
  fenceCopy = fence;
  v13 = fenceCopy;
  if (self->_didConfigureScene)
  {
    scene = self->_scene;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__PRUISModalRemoteViewController__updateSceneToSize_orientation_withAnimationSettings_fence___block_invoke;
    v17[3] = &unk_1E83A8B10;
    if ((orientation - 3) >= 2)
    {
      v15 = height;
    }

    else
    {
      v15 = width;
    }

    if ((orientation - 3) >= 2)
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
    orientationCopy = orientation;
    v18 = fenceCopy;
    v19 = settingsCopy;
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

- (void)_updateCommonModalSceneSettings:(id)settings withFrame:(CGRect)frame interfaceOrientation:(int64_t)orientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  [settingsCopy setFrame:{x, y, width, height}];
  [settingsCopy setInterfaceOrientation:orientation];
  traitCollection = [(PRUISModalRemoteViewController *)self traitCollection];
  [settingsCopy setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  displayConfiguration = [(PRUISModalRemoteViewController *)self displayConfiguration];
  [settingsCopy setDisplayConfiguration:displayConfiguration];

  [settingsCopy setShouldInheritHostDisplayConfiguration:self->_displayConfiguration != 0];
  [settingsCopy setEntryPoint:self->_entryPoint];
  _FBSScene = [(UIWindowScene *)self->_uiParentScene _FBSScene];
  settings = [_FBSScene settings];

  if ([settings isUISubclass])
  {
    [settings defaultStatusBarHeightForOrientation:orientation];
    [settingsCopy setDefaultStatusBarHeight:orientation forOrientation:?];
  }
}

- (void)_updateStatusBarVisibilityWithTransitionContext:(id)context
{
  contextCopy = context;
  clientSettings = [(FBScene *)self->_scene clientSettings];
  if ([clientSettings isUISubclass])
  {
    statusBarHidden = [clientSettings statusBarHidden];
    if (self->_presentedPrefersStatusBarHidden != statusBarHidden)
    {
      self->_presentedPrefersStatusBarHidden = statusBarHidden;
      animationSettings = [contextCopy animationSettings];
      [animationSettings duration];
      v9 = v8;

      if (v9 <= 0.0)
      {
        [(PRUISModalRemoteViewController *)self setNeedsStatusBarAppearanceUpdate];
      }

      else
      {
        uiParentScene = self->_uiParentScene;
        animationFence = [contextCopy animationFence];
        [(UIWindowScene *)uiParentScene _synchronizeDrawingWithFence:animationFence];

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

- (void)_invokeWillDismissDelegateWithResponse:(id)response
{
  responseCopy = response;
  delegate = [(PRUISModalRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate modalRemoteViewController:self willDismissWithResponse:responseCopy];
  }
}

- (void)_invokeDidDismissDelegateWithResponse:(id)response
{
  responseCopy = response;
  delegate = [(PRUISModalRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate modalRemoteViewController:self didDismissWithResponse:responseCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate modalRemoteViewControllerDidDismiss:self];
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

  editingType = [(PRUISModalEntryPoint *)v7 editingType];
  if (editingType == 1)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
}

- (void)endObservingApplicationLifecycle
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];
}

- (void)applicationWillResignActive:(id)active
{
  v4 = [PRUISForwardExtensionAppearanceNotificationAction alloc];
  v7 = [(PRUISForwardExtensionAppearanceNotificationAction *)v4 initWithNotificationName:*MEMORY[0x1E696A2D8]];
  scene = self->_scene;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [(FBScene *)scene sendActions:v6];
}

- (void)applicationDidBecomeActive:(id)active
{
  v4 = [PRUISForwardExtensionAppearanceNotificationAction alloc];
  v7 = [(PRUISForwardExtensionAppearanceNotificationAction *)v4 initWithNotificationName:*MEMORY[0x1E696A2C0]];
  scene = self->_scene;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [(FBScene *)scene sendActions:v6];
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  v19 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [actionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          response = [v10 response];
          [(PRUISModalRemoteViewController *)self _invokeWillDismissDelegateWithResponse:response];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          response2 = [v10 response];
          [(PRUISModalRemoteViewController *)self _invokeDidDismissDelegateWithResponse:response2];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained modalRemoteViewController:self shouldDeferInvalidation:self] & 1) == 0)
          {
            [(PRUISModalRemoteViewController *)self _invalidateAfterDismissal];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [actionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_scene == deactivate)
  {
    v7 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = errorCopy;
      _os_log_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEFAULT, "Remote modal controller %p scene did deactivate with error: %@", &v9, 0x16u);
    }

    v8 = [[PRUISModalEntryPointResponse alloc] initWithResult:0];
    [(PRUISModalRemoteViewController *)self _invokeWillDismissDelegateWithResponse:v8];
    [(PRUISModalRemoteViewController *)self _invokeDidDismissDelegateWithResponse:v8];
    [(PRUISModalRemoteViewController *)self _invalidateAfterDismissal];
  }
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  contextCopy = context;
  v10 = MEMORY[0x1E69DC680];
  diffCopy = diff;
  sceneCopy = scene;
  v13 = objc_alloc_init(v10);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __108__PRUISModalRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v19 = &unk_1E83A8B38;
  selfCopy = self;
  v21 = contextCopy;
  v14 = contextCopy;
  [v13 observeStatusBarHiddenWithBlock:&v16];
  clientSettings = [sceneCopy clientSettings];

  [v13 inspectDiff:diffCopy withContext:clientSettings];
  [v13 removeAllObservers];
}

- (void)_acquireKeyboardFocusDeferringRuleIfNecessary
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_1CAE63000, v2, v3, "%{public}@-%{public}p: Cannot acquire keyboard focus deferring assertion because parent scene is nil", v4, v5, v6, v7, v8);
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PRUISModalRemoteViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PRUISModalRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E83A7100;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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
  succinctDescriptionBuilder = [(PRUISModalRemoteViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (PRUISModalRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end