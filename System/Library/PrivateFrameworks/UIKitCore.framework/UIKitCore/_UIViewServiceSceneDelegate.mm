@interface _UIViewServiceSceneDelegate
- (_UIViewServiceSceneDelegate)init;
- (id)initWithWindowScene:(id *)a1;
- (id)materializedViewController;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
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
    v14 = self;
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

- (id)initWithWindowScene:(id *)a1
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v57.receiver = a1;
    v57.super_class = _UIViewServiceSceneDelegate;
    a1 = objc_msgSendSuper2(&v57, sel_init);
    if (a1)
    {
      [v3 setDelegate:a1];
      v4 = [v3 _FBSScene];
      v5 = [v4 _viewServiceComponent];
      objc_storeWeak(a1 + 2, v5);

      WeakRetained = objc_loadWeakRetained(a1 + 2);
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
          *&buf[24] = a1;
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
      v9 = objc_loadWeakRetained(a1 + 2);
      v10 = [(_UIViewServiceClientSceneComponent *)v9 serviceViewControllerClassName];
      v11 = objc_loadWeakRetained(a1 + 2);
      v12 = [(_UIViewServiceClientSceneComponent *)v11 contextToken];
      v56 = 0;
      v13 = [(_UIViewServiceClientViewControllerMaterializer *)&v7->super.isa initWithSessionManager:v8 requestedViewControllerClass:v10 contextToken:v12 outError:&v56];
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
            *&buf[24] = a1;
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
          v17 = [v3 _FBSScene];
          v18 = [v17 identityToken];
          v19 = [(__CFString *)v14 debugDescription];
          *buf = 138543618;
          *&buf[4] = v18;
          *&buf[12] = 2114;
          *&buf[14] = v19;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Invalidating %{public}@: %{public}@", buf, 0x16u);
        }

        v20 = [v3 _FBSScene];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __51___UIViewServiceSceneDelegate_initWithWindowScene___block_invoke;
        v54[3] = &unk_1E711E9F8;
        v55 = v14;
        v21 = v14;
        [v20 invalidate:v54];

        v22 = v55;
        v23 = v13;
        v13 = a1;
      }

      else
      {
        if (v13)
        {
          v24 = v13[7];
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
        v27 = a1[3];
        a1[3] = v26;

        v21 = objc_opt_new();
        objc_storeWeak(a1 + 1, v21);
        [a1[3] setClipsToBounds:IsEnabledForCurrentProcess];
        [(_UIViewServiceRootViewController *)&v21->isa setMaterializedViewController:v23];
        [a1[3] setRootViewController:v21];
        [a1[3] makeKeyAndVisible];
        [(_UIViewServiceClientViewControllerMaterializer *)v13 prepareViewControllerExtensionContext];
        v28 = objc_loadWeakRetained(a1 + 2);
        [(_UIViewServiceClientSceneComponent *)v28 configureAuxiliaryConnectionForMaterializedViewController:v23];

        v29 = objc_loadWeakRetained(a1 + 2);
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

        v32 = objc_loadWeakRetained(a1 + 2);
        v33 = [(_UIViewServiceClientSceneComponent *)v32 hostAuditToken];

        if (v33)
        {
          [v33 realToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v34 = [_UIViewServiceSessionManager bundleIdentifierForConnection:v22 auditToken:buf];
        [v23 _setHostApplicationBundleIdentifier:v34];
        v35 = [(__CFString *)v22 remoteObjectProxy];
        [v23 _setRemoteViewControllerProxy:v35];

        [v23 _setHostProcessIdentifier:{objc_msgSend(v33, "pid")}];
        if (v33)
        {
          [v33 realToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        [v23 _setHostAuditToken:buf];
        v36 = [(__CFString *)v22 remoteObjectProxy];
        [v23 _willAppearInRemoteViewController:v36];

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
        v38 = objc_loadWeakRetained(a1 + 2);
        v39 = [(_UIViewServiceClientSceneComponent *)v38 contextToken];
        [v37 didCreateServiceViewController:v23 contextToken:v39];
      }
    }
  }

  return a1;
}

- (id)materializedViewController
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
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

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = [(_UIViewServiceSceneDelegate *)self materializedViewController];
  [v3 _hostApplicationWillEnterForeground];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = [(_UIViewServiceSceneDelegate *)self materializedViewController];
  [v3 _hostApplicationDidEnterBackground];
}

@end