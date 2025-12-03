@interface _UIViewServiceSceneDelegate
- (_UIViewServiceSceneDelegate)init;
- (id)initWithWindowScene:(id *)scene;
- (id)materializedViewController;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation _UIViewServiceSceneDelegate

- (_UIViewServiceSceneDelegate)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on _UIViewServiceSceneDelegate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"_UIViewServiceSceneDelegate.m";
    v17 = 1024;
    v18 = 33;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)initWithWindowScene:(id *)scene
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (scene)
  {
    v57.receiver = scene;
    v57.super_class = _UIViewServiceSceneDelegate;
    scene = objc_msgSendSuper2(&v57, sel_init);
    if (scene)
    {
      [v3 setDelegate:scene];
      _FBSScene = [v3 _FBSScene];
      _viewServiceComponent = [_FBSScene _viewServiceComponent];
      objc_storeWeak(scene + 2, _viewServiceComponent);

      WeakRetained = objc_loadWeakRetained(scene + 2);
      if (!WeakRetained)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_clientComponent"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v42 = NSStringFromSelector(sel_initWithWindowScene_);
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          *buf = 138544642;
          *&buf[4] = v42;
          *&buf[12] = 2114;
          *&buf[14] = v44;
          *&buf[22] = 2048;
          *&buf[24] = scene;
          v59 = 2114;
          v60 = @"_UIViewServiceSceneDelegate.m";
          v61 = 1024;
          v62 = 45;
          v63 = 2114;
          v64 = v41;
          _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v41 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x189E854E8);
      }

      v7 = [_UIViewServiceClientViewControllerMaterializer alloc];
      v8 = +[_UIViewServiceSessionManager sharedManager];
      v9 = objc_loadWeakRetained(scene + 2);
      serviceViewControllerClassName = [(_UIViewServiceClientSceneComponent *)v9 serviceViewControllerClassName];
      v11 = objc_loadWeakRetained(scene + 2);
      contextToken = [(_UIViewServiceClientSceneComponent *)v11 contextToken];
      v56 = 0;
      sceneCopy = [(_UIViewServiceClientViewControllerMaterializer *)&v7->super.isa initWithSessionManager:v8 requestedViewControllerClass:serviceViewControllerClassName contextToken:contextToken outError:&v56];
      v14 = v56;

      if (v14)
      {
        if ([(__CFString *)v14 code]!= 967225)
        {
          v45 = MEMORY[0x1E696AEC0];
          v46 = [(__CFString *)v14 debugDescription];
          v47 = [v45 stringWithFormat:@"Unable to materialize local view controller: %@", v46];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v48 = NSStringFromSelector(sel_initWithWindowScene_);
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            *buf = 138544642;
            *&buf[4] = v48;
            *&buf[12] = 2114;
            *&buf[14] = v50;
            *&buf[22] = 2048;
            *&buf[24] = scene;
            v59 = 2114;
            v60 = @"_UIViewServiceSceneDelegate.m";
            v61 = 1024;
            v62 = 65;
            v63 = 2114;
            v64 = v47;
            _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v47 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x189E85610);
        }

        v15 = *(__UILogGetCategoryCachedImpl("ViewService", &qword_1ED4A00A8) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          _FBSScene2 = [v3 _FBSScene];
          identityToken = [_FBSScene2 identityToken];
          v19 = [(__CFString *)v14 debugDescription];
          *buf = 138543618;
          *&buf[4] = identityToken;
          *&buf[12] = 2114;
          *&buf[14] = v19;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Invalidating %{public}@: %{public}@", buf, 0x16u);
        }

        _FBSScene3 = [v3 _FBSScene];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __51___UIViewServiceSceneDelegate_initWithWindowScene___block_invoke;
        v54[3] = &unk_1E711E9F8;
        v55 = v14;
        v21 = v14;
        [_FBSScene3 invalidate:v54];

        v22 = v55;
        v23 = sceneCopy;
        sceneCopy = scene;
      }

      else
      {
        if (sceneCopy)
        {
          v24 = sceneCopy[7];
        }

        else
        {
          v24 = 0;
        }

        v23 = v24;
        IsEnabledForCurrentProcess = _UITouchAuthenticationIsEnabledForCurrentProcess();
        if (IsEnabledForCurrentProcess)
        {
          [v3 _enrollInSuperlayerSecurityAnalysis];
        }

        [objc_opt_class() _isSecureForRemoteViewService];
        v26 = [objc_alloc(objc_opt_class()) initWithWindowScene:v3];
        v27 = scene[3];
        scene[3] = v26;

        v21 = objc_opt_new();
        objc_storeWeak(scene + 1, v21);
        [scene[3] setClipsToBounds:IsEnabledForCurrentProcess];
        [(_UIViewServiceRootViewController *)&v21->isa setMaterializedViewController:v23];
        [scene[3] setRootViewController:v21];
        [scene[3] makeKeyAndVisible];
        [(_UIViewServiceClientViewControllerMaterializer *)sceneCopy prepareViewControllerExtensionContext];
        v28 = objc_loadWeakRetained(scene + 2);
        [(_UIViewServiceClientSceneComponent *)v28 configureAuxiliaryConnectionForMaterializedViewController:v23];

        v29 = objc_loadWeakRetained(scene + 2);
        v30 = v29;
        if (v29)
        {
          v31 = *(v29 + 5);
        }

        else
        {
          v31 = 0;
        }

        v22 = v31;

        v32 = objc_loadWeakRetained(scene + 2);
        hostAuditToken = [(_UIViewServiceClientSceneComponent *)v32 hostAuditToken];

        if (hostAuditToken)
        {
          [hostAuditToken realToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v34 = [_UIViewServiceSessionManager bundleIdentifierForConnection:v22 auditToken:buf];
        [v23 _setHostApplicationBundleIdentifier:v34];
        remoteObjectProxy = [(__CFString *)v22 remoteObjectProxy];
        [v23 _setRemoteViewControllerProxy:remoteObjectProxy];

        [v23 _setHostProcessIdentifier:{objc_msgSend(hostAuditToken, "pid")}];
        if (hostAuditToken)
        {
          [hostAuditToken realToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        [v23 _setHostAuditToken:buf];
        remoteObjectProxy2 = [(__CFString *)v22 remoteObjectProxy];
        [v23 _willAppearInRemoteViewController:remoteObjectProxy2];

        [v23 _willAppearInRemoteViewController];
        if (qword_1ED4A00B0 != -1)
        {
          dispatch_once(&qword_1ED4A00B0, &__block_literal_global_489);
        }

        aSelector = v34;
        if (_MergedGlobals_1257 == 1)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __51___UIViewServiceSceneDelegate_initWithWindowScene___block_invoke_22;
          block[3] = &unk_1E70F3590;
          v53 = v21;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }

        else
        {
          [(_UIViewServiceRootViewController *)&v21->isa installMaterializedViewControllerInHierarchy];
        }

        v37 = +[_UIViewServiceSessionManager sharedManager];
        v38 = objc_loadWeakRetained(scene + 2);
        contextToken2 = [(_UIViewServiceClientSceneComponent *)v38 contextToken];
        [v37 didCreateServiceViewController:v23 contextToken:contextToken2];
      }
    }
  }

  return scene;
}

- (id)materializedViewController
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    v2 = WeakRetained;
    if (WeakRetained)
    {
      v3 = *(WeakRetained + 124);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sceneWillEnterForeground:(id)foreground
{
  materializedViewController = [(_UIViewServiceSceneDelegate *)self materializedViewController];
  [materializedViewController _hostApplicationWillEnterForeground];
}

- (void)sceneDidEnterBackground:(id)background
{
  materializedViewController = [(_UIViewServiceSceneDelegate *)self materializedViewController];
  [materializedViewController _hostApplicationDidEnterBackground];
}

@end