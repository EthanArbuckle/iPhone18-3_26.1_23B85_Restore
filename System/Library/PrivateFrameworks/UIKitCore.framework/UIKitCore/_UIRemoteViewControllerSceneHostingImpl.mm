@interface _UIRemoteViewControllerSceneHostingImpl
+ (id)_requestViewController:(id)controller traitCollection:(id)collection fromServiceWithBundleIdentifier:(id)identifier service:(id)service connectionHandler:(id)handler newRemoteViewController:(id)viewController remoteViewControllerImpl:(id)impl;
- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken;
- (BOOL)_viewClipsToBounds;
- (BOOL)inheritsSecurity;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersPointerLocked;
- (BOOL)serviceViewShouldShareTouchesWithHost;
- (NSSet)_keyboardSceneLayers;
- (NSString)debugDescription;
- (_UIRemoteViewController)_owningRemoteViewController;
- (id)_cancelTouchesForCurrentEventInHostedContent;
- (id)_initWithViewServiceBundleIdentifier:(id)identifier owningRemoteViewController:(id)controller;
- (id)_multitaskingDragExclusionRects;
- (id)disconnect;
- (id)succinctDescription;
- (int)_preferredStatusBarVisibility;
- (int)serviceProcessIdentifier;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredUserInterfaceStyle;
- (int64_t)preferredWhitePointAdaptivityStyle;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didReceiveProductivityGestureAction:(id)action;
- (void)_movedToParentSceneWithSettings:(id)settings;
- (void)_parentSceneDidUpdateWithDiff:(id)diff;
- (void)_setViewClipsToBounds:(BOOL)bounds;
- (void)_viewServiceHostSessionDidConnectToClient:(id)client;
- (void)_viewServiceHostSessionDidInvalidate:(id)invalidate withError:(id)error;
- (void)appendDescriptionToStream:(id)stream;
- (void)callConnectionHandlerWithError:(uint64_t)error;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)sceneDidInvalidateWithError:(id)error;
- (void)setInheritsSecurity:(BOOL)security;
- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)host;
- (void)supportedInterfaceOrientationsDidUpdate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewServiceClientIsReady;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _UIRemoteViewControllerSceneHostingImpl

- (id)_initWithViewServiceBundleIdentifier:(id)identifier owningRemoteViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _UIRemoteViewControllerSceneHostingImpl;
  v6 = [(_UIRemoteViewControllerSceneHostingImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_owningRemoteViewController, controllerCopy);
  }

  return v7;
}

+ (id)_requestViewController:(id)controller traitCollection:(id)collection fromServiceWithBundleIdentifier:(id)identifier service:(id)service connectionHandler:(id)handler newRemoteViewController:(id)viewController remoteViewControllerImpl:(id)impl
{
  v53 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  collectionCopy = collection;
  identifierCopy = identifier;
  serviceCopy = service;
  handlerCopy = handler;
  viewControllerCopy = viewController;
  implCopy = impl;
  v20 = controllerCopy;
  v21 = collectionCopy;
  v22 = identifierCopy;
  v23 = serviceCopy;
  v24 = handlerCopy;
  if (implCopy)
  {
    objc_storeStrong(implCopy + 10, service);
    objc_storeStrong(implCopy + 4, controller);
    v25 = _Block_copy(v24);
    v26 = implCopy[5];
    implCopy[5] = v25;

    _owningRemoteViewController = [implCopy _owningRemoteViewController];
    v28 = implCopy[6];
    implCopy[6] = _owningRemoteViewController;

    if (implCopy[3])
    {
      viewControllerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_session", viewControllerCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(sel__beginViewControllerRequestWithViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *location = 138544642;
        *&location[4] = v34;
        v43 = 2114;
        v44 = v36;
        v45 = 2048;
        v46 = implCopy;
        v47 = 2114;
        v48 = @"_UIRemoteViewControllerSceneHostingImpl.m";
        v49 = 1024;
        v50 = 102;
        v51 = 2114;
        v52 = viewControllerCopy;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
      }

      v37 = viewControllerCopy;
      [viewControllerCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D7F928);
    }

    v29 = [[_UIViewServiceHostSession alloc] initWithService:v23 viewServiceAppBundleId:v22 delegate:implCopy];
    v30 = implCopy[3];
    implCopy[3] = v29;
  }

  objc_initWeak(location, implCopy);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __189___UIRemoteViewControllerSceneHostingImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke;
  v40[3] = &unk_1E710A120;
  objc_copyWeak(&v41, location);
  v31 = [_UIAsyncInvocation invocationWithBlock:v40];
  objc_destroyWeak(&v41);
  objc_destroyWeak(location);

  return v31;
}

- (void)callConnectionHandlerWithError:(uint64_t)error
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    if (*(error + 40) || (WeakRetained = objc_loadWeakRetained((error + 16)), WeakRetained, WeakRetained))
    {
      objc_storeWeak((error + 16), 0);
      _owningRemoteViewController = [error _owningRemoteViewController];
      [_owningRemoteViewController viewServiceDidTerminateWithError:v3];

      v6 = *(error + 40);
      if (v6)
      {
        (*(v6 + 16))(v6, 0, v3);
        v7 = *(error + 40);
        *(error + 40) = 0;

        v8 = *(__UILogGetCategoryCachedImpl("ViewServices", &callConnectionHandlerWithError____s_category_0) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          localizedDescription = [v3 localizedDescription];
          succinctDescription = [error succinctDescription];
          v13 = 138543618;
          v14 = localizedDescription;
          v15 = 2114;
          v16 = succinctDescription;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Calling connection handler with error %{public}@ for %{public}@", &v13, 0x16u);
        }
      }

      [*(error + 8) invalidate];
      v12 = *(error + 48);
      *(error + 48) = 0;
    }
  }
}

- (void)dealloc
{
  [(_UIViewServiceHostSession *)self->_session invalidate];
  session = self->_session;
  self->_session = 0;

  v4.receiver = self;
  v4.super_class = _UIRemoteViewControllerSceneHostingImpl;
  [(_UIRemoteViewControllerSceneHostingImpl *)&v4 dealloc];
}

- (void)viewServiceClientIsReady
{
  v15 = *MEMORY[0x1E69E9840];
  _owningRemoteViewController = [(_UIRemoteViewControllerSceneHostingImpl *)self _owningRemoteViewController];
  [_owningRemoteViewController loadViewIfRequired];

  if (self)
  {
    connectionHandler = self->_connectionHandler;
    if (connectionHandler)
    {
      WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
      connectionHandler[2](connectionHandler, WeakRetained, 0);

      v6 = self->_connectionHandler;
      self->_connectionHandler = 0;

      v7 = *(__UILogGetCategoryCachedImpl("ViewServices", &callConnectionHandlerWithSuccess___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = objc_loadWeakRetained(&self->_owningRemoteViewController);
        v10 = [v9 debugDescription];
        LODWORD(v11) = 138543362;
        *(&v11 + 4) = v10;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Calling connection handler with ready view controller for %{public}@", &v11, 0xCu);
      }
    }

    *&v11 = MEMORY[0x1E69E9820];
    *(&v11 + 1) = 3221225472;
    v12 = __75___UIRemoteViewControllerSceneHostingImpl_callConnectionHandlerWithSuccess__block_invoke;
    v13 = &unk_1E70F3590;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], &v11);
  }
}

- (void)sceneDidInvalidateWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = *(__UILogGetCategoryCachedImpl("ViewServices", &sceneDidInvalidateWithError____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    succinctDescription = [(_UIRemoteViewControllerSceneHostingImpl *)self succinctDescription];
    localizedDescription = [errorCopy localizedDescription];
    v9 = 138543618;
    v10 = succinctDescription;
    v11 = 2114;
    v12 = localizedDescription;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Scene for %{public}@ invalidated with error %{public}@", &v9, 0x16u);
  }

  [(_UIRemoteViewControllerSceneHostingImpl *)self callConnectionHandlerWithError:errorCopy];
}

- (void)supportedInterfaceOrientationsDidUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82___UIRemoteViewControllerSceneHostingImpl_supportedInterfaceOrientationsDidUpdate__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (BOOL)_viewClipsToBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
  view = [WeakRetained view];
  clipsToBounds = [view clipsToBounds];

  return clipsToBounds;
}

- (void)_setViewClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
  view = [WeakRetained view];
  [view setClipsToBounds:boundsCopy];

  sceneView = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
  [sceneView setClipsToBounds:boundsCopy];
}

- (int)serviceProcessIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  v3 = [(_UIViewServiceHostSceneComponent *)WeakRetained pid];

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  [(_UIViewServiceHostSceneComponent *)WeakRetained auditToken];

  return result;
}

- (BOOL)serviceViewShouldShareTouchesWithHost
{
  touchSharing = [(_UISceneHostingController *)self->_sceneHostingController touchSharing];
  shareTouchesWithHost = [touchSharing shareTouchesWithHost];

  return shareTouchesWithHost;
}

- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)host
{
  hostCopy = host;
  touchSharing = [(_UISceneHostingController *)self->_sceneHostingController touchSharing];
  [touchSharing setShareTouchesWithHost:hostCopy];
}

- (id)_cancelTouchesForCurrentEventInHostedContent
{
  touchSharing = [(_UISceneHostingController *)self->_sceneHostingController touchSharing];
  cancelTouchesForCurrentEventInClient = [touchSharing cancelTouchesForCurrentEventInClient];

  return cancelTouchesForCurrentEventInClient;
}

- (id)disconnect
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___UIRemoteViewControllerSceneHostingImpl_disconnect__block_invoke;
  v6[3] = &unk_1E711AB38;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v3 = [_UIAsyncInvocation invocationWithBlock:v6];
  invoke = [v3 invoke];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return invoke;
}

- (BOOL)inheritsSecurity
{
  sceneView = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
  inheritsSecurity = [sceneView inheritsSecurity];

  return inheritsSecurity;
}

- (void)setInheritsSecurity:(BOOL)security
{
  securityCopy = security;
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
  view = [WeakRetained view];
  layer = [view layer];
  v8 = layer;
  v9 = MEMORY[0x1E6979E68];
  if (!securityCopy)
  {
    v9 = MEMORY[0x1E6979E58];
  }

  [layer setSecurityMode:*v9];

  sceneView = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
  [sceneView setInheritsSecurity:securityCopy];
}

- (NSSet)_keyboardSceneLayers
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Legacy infrastructure required for %s", "-[_UIRemoteViewControllerSceneHostingImpl _keyboardSceneLayers]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"_UIRemoteViewControllerSceneHostingImpl.m";
    v17 = 1024;
    v18 = 352;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_movedToParentSceneWithSettings:(id)settings
{
  settingsCopy = settings;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Legacy infrastructure required for %s", "-[_UIRemoteViewControllerSceneHostingImpl _movedToParentSceneWithSettings:]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"_UIRemoteViewControllerSceneHostingImpl.m";
    v18 = 1024;
    v19 = 357;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_parentSceneDidUpdateWithDiff:(id)diff
{
  diffCopy = diff;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Legacy infrastructure required for %s", "-[_UIRemoteViewControllerSceneHostingImpl _parentSceneDidUpdateWithDiff:]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"_UIRemoteViewControllerSceneHostingImpl.m";
    v18 = 1024;
    v19 = 361;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_didReceiveProductivityGestureAction:(id)action
{
  actionCopy = action;
  sceneHostingController = self->_sceneHostingController;
  if (sceneHostingController)
  {
    sceneHostingController = sceneHostingController->_fbScene;
  }

  v5 = sceneHostingController;
  if ([(_UISceneHostingController *)v5 isActive])
  {
    v6 = self->_sceneHostingController;
    if (v6)
    {
      v6 = v6->_fbScene;
    }

    v7 = v6;
    v8 = [MEMORY[0x1E695DFD8] setWithObject:actionCopy];
    [(_UISceneHostingController *)v7 sendActions:v8];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  clientSupportedInterfaceOrientations = [(_UIViewServiceHostSceneComponent *)WeakRetained clientSupportedInterfaceOrientations];

  if (clientSupportedInterfaceOrientations)
  {
    return clientSupportedInterfaceOrientations;
  }

  else
  {
    return 30;
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  preferredUserInterfaceStyle = [sceneViewController preferredUserInterfaceStyle];

  return preferredUserInterfaceStyle;
}

- (int64_t)preferredWhitePointAdaptivityStyle
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  preferredWhitePointAdaptivityStyle = [sceneViewController preferredWhitePointAdaptivityStyle];

  return preferredWhitePointAdaptivityStyle;
}

- (int64_t)preferredStatusBarStyle
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  preferredStatusBarStyle = [sceneViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (int)_preferredStatusBarVisibility
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  _preferredStatusBarVisibility = [sceneViewController _preferredStatusBarVisibility];

  return _preferredStatusBarVisibility;
}

- (id)_multitaskingDragExclusionRects
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  _multitaskingDragExclusionRects = [sceneViewController _multitaskingDragExclusionRects];

  return _multitaskingDragExclusionRects;
}

- (BOOL)prefersPointerLocked
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  prefersPointerLocked = [sceneViewController prefersPointerLocked];

  return prefersPointerLocked;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  prefersHomeIndicatorAutoHidden = [sceneViewController prefersHomeIndicatorAutoHidden];

  return prefersHomeIndicatorAutoHidden;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  preferredScreenEdgesDeferringSystemGestures = [sceneViewController preferredScreenEdgesDeferringSystemGestures];

  return preferredScreenEdgesDeferringSystemGestures;
}

- (void)loadView
{
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
  view = [WeakRetained view];

  sceneViewController = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  view2 = [sceneViewController view];

  [view addSubview:view2];
  sceneViewController2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v7 = objc_loadWeakRetained(&self->_owningRemoteViewController);
  [sceneViewController2 didMoveToParentViewController:v7];

  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  [view setClipsToBounds:1];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  _owningRemoteViewController = [(_UIRemoteViewControllerSceneHostingImpl *)self _owningRemoteViewController];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [_owningRemoteViewController setPreferredContentSize:{v6, v8}];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:?];

  if (self && (*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    _owningRemoteViewController = [(_UIRemoteViewControllerSceneHostingImpl *)self _owningRemoteViewController];
    _appProtectionMetrics = [_owningRemoteViewController _appProtectionMetrics];

    if (_appProtectionMetrics)
    {
      interfaceProtectionComponent = [(_UISceneHostingController *)self->_sceneHostingController interfaceProtectionComponent];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __76___UIRemoteViewControllerSceneHostingImpl_configureAppProtectionIfNecessary__block_invoke;
      v9[3] = &unk_1E711AB10;
      v10 = _appProtectionMetrics;
      selfCopy = self;
      [interfaceProtectionComponent configureSelfMonitoringWithConfiguration:v9];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:?];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  v6 = WeakRetained;
  if (disappearCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:v5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:?];
}

- (void)_viewServiceHostSessionDidConnectToClient:(id)client
{
  clientCopy = client;
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  BSDispatchMain();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_viewServiceHostSessionDidInvalidate:(id)invalidate withError:(id)error
{
  invalidateCopy = invalidate;
  errorCopy = error;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = errorCopy;
  BSDispatchMain();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69___UIRemoteViewControllerSceneHostingImpl_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69___UIRemoteViewControllerSceneHostingImpl_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (_UIRemoteViewController)_owningRemoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);

  return WeakRetained;
}

@end