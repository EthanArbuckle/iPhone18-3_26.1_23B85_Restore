@interface _UIRemoteViewControllerSceneHostingImpl
+ (id)_requestViewController:(id)a3 traitCollection:(id)a4 fromServiceWithBundleIdentifier:(id)a5 service:(id)a6 connectionHandler:(id)a7 newRemoteViewController:(id)a8 remoteViewControllerImpl:(id)a9;
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
- (id)_initWithViewServiceBundleIdentifier:(id)a3 owningRemoteViewController:(id)a4;
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
- (void)_didReceiveProductivityGestureAction:(id)a3;
- (void)_movedToParentSceneWithSettings:(id)a3;
- (void)_parentSceneDidUpdateWithDiff:(id)a3;
- (void)_setViewClipsToBounds:(BOOL)a3;
- (void)_viewServiceHostSessionDidConnectToClient:(id)a3;
- (void)_viewServiceHostSessionDidInvalidate:(id)a3 withError:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)callConnectionHandlerWithError:(uint64_t)a1;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)sceneDidInvalidateWithError:(id)a3;
- (void)setInheritsSecurity:(BOOL)a3;
- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)a3;
- (void)supportedInterfaceOrientationsDidUpdate;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewServiceClientIsReady;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _UIRemoteViewControllerSceneHostingImpl

- (id)_initWithViewServiceBundleIdentifier:(id)a3 owningRemoteViewController:(id)a4
{
  v5 = a4;
  v9.receiver = self;
  v9.super_class = _UIRemoteViewControllerSceneHostingImpl;
  v6 = [(_UIRemoteViewControllerSceneHostingImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_owningRemoteViewController, v5);
  }

  return v7;
}

+ (id)_requestViewController:(id)a3 traitCollection:(id)a4 fromServiceWithBundleIdentifier:(id)a5 service:(id)a6 connectionHandler:(id)a7 newRemoteViewController:(id)a8 remoteViewControllerImpl:(id)a9
{
  v53 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v38 = a8;
  v19 = a9;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  if (v19)
  {
    objc_storeStrong(v19 + 10, a6);
    objc_storeStrong(v19 + 4, a3);
    v25 = _Block_copy(v24);
    v26 = v19[5];
    v19[5] = v25;

    v27 = [v19 _owningRemoteViewController];
    v28 = v19[6];
    v19[6] = v27;

    if (v19[3])
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_session", v38];
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
        v46 = v19;
        v47 = 2114;
        v48 = @"_UIRemoteViewControllerSceneHostingImpl.m";
        v49 = 1024;
        v50 = 102;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
      }

      v37 = v33;
      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D7F928);
    }

    v29 = [[_UIViewServiceHostSession alloc] initWithService:v23 viewServiceAppBundleId:v22 delegate:v19];
    v30 = v19[3];
    v19[3] = v29;
  }

  objc_initWeak(location, v19);
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

- (void)callConnectionHandlerWithError:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 40) || (WeakRetained = objc_loadWeakRetained((a1 + 16)), WeakRetained, WeakRetained))
    {
      objc_storeWeak((a1 + 16), 0);
      v5 = [a1 _owningRemoteViewController];
      [v5 viewServiceDidTerminateWithError:v3];

      v6 = *(a1 + 40);
      if (v6)
      {
        (*(v6 + 16))(v6, 0, v3);
        v7 = *(a1 + 40);
        *(a1 + 40) = 0;

        v8 = *(__UILogGetCategoryCachedImpl("ViewServices", &callConnectionHandlerWithError____s_category_0) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = [v3 localizedDescription];
          v11 = [a1 succinctDescription];
          v13 = 138543618;
          v14 = v10;
          v15 = 2114;
          v16 = v11;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Calling connection handler with error %{public}@ for %{public}@", &v13, 0x16u);
        }
      }

      [*(a1 + 8) invalidate];
      v12 = *(a1 + 48);
      *(a1 + 48) = 0;
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
  v3 = [(_UIRemoteViewControllerSceneHostingImpl *)self _owningRemoteViewController];
  [v3 loadViewIfRequired];

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
    v14 = self;
    dispatch_async(MEMORY[0x1E69E96A0], &v11);
  }
}

- (void)sceneDidInvalidateWithError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(__UILogGetCategoryCachedImpl("ViewServices", &sceneDidInvalidateWithError____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(_UIRemoteViewControllerSceneHostingImpl *)self succinctDescription];
    v8 = [v4 localizedDescription];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Scene for %{public}@ invalidated with error %{public}@", &v9, 0x16u);
  }

  [(_UIRemoteViewControllerSceneHostingImpl *)self callConnectionHandlerWithError:v4];
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
  v3 = [WeakRetained view];
  v4 = [v3 clipsToBounds];

  return v4;
}

- (void)_setViewClipsToBounds:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
  v6 = [WeakRetained view];
  [v6 setClipsToBounds:v3];

  v7 = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
  [v7 setClipsToBounds:v3];
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
  v2 = [(_UISceneHostingController *)self->_sceneHostingController touchSharing];
  v3 = [v2 shareTouchesWithHost];

  return v3;
}

- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UISceneHostingController *)self->_sceneHostingController touchSharing];
  [v4 setShareTouchesWithHost:v3];
}

- (id)_cancelTouchesForCurrentEventInHostedContent
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController touchSharing];
  v3 = [v2 cancelTouchesForCurrentEventInClient];

  return v3;
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
  v4 = [v3 invoke];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (BOOL)inheritsSecurity
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
  v3 = [v2 inheritsSecurity];

  return v3;
}

- (void)setInheritsSecurity:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
  v6 = [WeakRetained view];
  v7 = [v6 layer];
  v8 = v7;
  v9 = MEMORY[0x1E6979E68];
  if (!v3)
  {
    v9 = MEMORY[0x1E6979E58];
  }

  [v7 setSecurityMode:*v9];

  v10 = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
  [v10 setInheritsSecurity:v3];
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
    v14 = self;
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

- (void)_movedToParentSceneWithSettings:(id)a3
{
  v5 = a3;
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
    v15 = self;
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

- (void)_parentSceneDidUpdateWithDiff:(id)a3
{
  v5 = a3;
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
    v15 = self;
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

- (void)_didReceiveProductivityGestureAction:(id)a3
{
  v9 = a3;
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
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [(_UISceneHostingController *)v7 sendActions:v8];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  v3 = [(_UIViewServiceHostSceneComponent *)WeakRetained clientSupportedInterfaceOrientations];

  if (v3)
  {
    return v3;
  }

  else
  {
    return 30;
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 preferredUserInterfaceStyle];

  return v3;
}

- (int64_t)preferredWhitePointAdaptivityStyle
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 preferredWhitePointAdaptivityStyle];

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (int)_preferredStatusBarVisibility
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 _preferredStatusBarVisibility];

  return v3;
}

- (id)_multitaskingDragExclusionRects
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 _multitaskingDragExclusionRects];

  return v3;
}

- (BOOL)prefersPointerLocked
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 prefersPointerLocked];

  return v3;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 prefersHomeIndicatorAutoHidden];

  return v3;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  v2 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v3 = [v2 preferredScreenEdgesDeferringSystemGestures];

  return v3;
}

- (void)loadView
{
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);
  v8 = [WeakRetained view];

  v4 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v5 = [v4 view];

  [v8 addSubview:v5];
  v6 = [(_UISceneHostingController *)self->_sceneHostingController sceneViewController];
  v7 = objc_loadWeakRetained(&self->_owningRemoteViewController);
  [v6 didMoveToParentViewController:v7];

  [v8 bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:18];
  [v8 setClipsToBounds:1];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v9 = [(_UIRemoteViewControllerSceneHostingImpl *)self _owningRemoteViewController];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [v9 setPreferredContentSize:{v6, v8}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:?];

  if (self && (*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    v6 = [(_UIRemoteViewControllerSceneHostingImpl *)self _owningRemoteViewController];
    v7 = [v6 _appProtectionMetrics];

    if (v7)
    {
      v8 = [(_UISceneHostingController *)self->_sceneHostingController interfaceProtectionComponent];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __76___UIRemoteViewControllerSceneHostingImpl_configureAppProtectionIfNecessary__block_invoke;
      v9[3] = &unk_1E711AB10;
      v10 = v7;
      v11 = self;
      [v8 configureSelfMonitoringWithConfiguration:v9];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:?];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  v6 = WeakRetained;
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:v5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_hostComponent);
  [(_UIViewServiceHostSceneComponent *)WeakRetained sendAppearanceAction:?];
}

- (void)_viewServiceHostSessionDidConnectToClient:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  BSDispatchMain();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_viewServiceHostSessionDidInvalidate:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = v7;
  BSDispatchMain();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69___UIRemoteViewControllerSceneHostingImpl_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69___UIRemoteViewControllerSceneHostingImpl_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (_UIRemoteViewController)_owningRemoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);

  return WeakRetained;
}

@end