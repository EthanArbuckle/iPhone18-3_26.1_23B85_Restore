@interface _UIViewServiceClientSceneComponent
- (id)contextToken;
- (id)handlePrivateActions:(id)a3;
- (id)hostAuditToken;
- (id)serviceViewControllerClassName;
- (void)configureAuxiliaryConnectionForMaterializedViewController:(id *)a1;
- (void)dealloc;
- (void)sceneWillConnect:(id)a3;
- (void)setClientViewControllerIsReady:(void *)a1;
- (void)setScene:(id)a3;
@end

@implementation _UIViewServiceClientSceneComponent

- (void)setScene:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = _UIViewServiceClientSceneComponent;
  [(FBSSceneComponent *)&v16 setScene:v5];
  v6 = [(FBSSceneComponent *)self clientScene];
  v7 = [(UIScene *)UIWindowScene _sceneForFBSScene:v6];

  if (v7)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(FBSSceneComponent *)self clientScene];
    v11 = [v10 identityToken];
    v12 = [v9 stringWithFormat:@"UIScene should not already exist when _UIViewServiceClientSceneComponent for %@ is instantiated", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"_UIViewServiceClientSceneComponent.m";
      v25 = 1024;
      v26 = 33;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189E8721CLL);
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel_sceneWillConnect_ name:@"UISceneWillConnectNotification" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UISceneWillConnectNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIViewServiceClientSceneComponent;
  [(_UIViewServiceClientSceneComponent *)&v4 dealloc];
}

- (id)serviceViewControllerClassName
{
  if (a1)
  {
    v1 = [a1 scene];
    v2 = [v1 settings];
    v3 = [v2 serviceViewControllerClassName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)contextToken
{
  if (a1)
  {
    v1 = [a1 scene];
    v2 = [v1 settings];
    v3 = [v2 contextToken];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hostAuditToken
{
  if (a1)
  {
    v1 = [a1 clientScene];
    v2 = [v1 hostHandle];
    v3 = [v2 auditToken];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClientViewControllerIsReady:(void *)a1
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a1 scene];
    v5 = [v4 clientSettings];
    v6 = [v5 clientViewControllerIsReady];

    if (v6 != a2)
    {
      if ((a2 & 1) == 0)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientViewControllerIsReady may not be set to false after it has been set to true"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = NSStringFromSelector(sel_setClientViewControllerIsReady_);
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138544642;
          v15 = v9;
          v16 = 2114;
          v17 = v11;
          v18 = 2048;
          v19 = a1;
          v20 = 2114;
          v21 = @"_UIViewServiceClientSceneComponent.m";
          v22 = 1024;
          v23 = 60;
          v24 = 2114;
          v25 = v8;
          _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v8 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x189E875D4);
      }

      v7 = [a1 clientScene];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69___UIViewServiceClientSceneComponent_setClientViewControllerIsReady___block_invoke;
      v12[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
      v13 = a2;
      [v7 updateClientSettings:v12];
    }
  }
}

- (void)configureAuxiliaryConnectionForMaterializedViewController:(id *)a1
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if (a1[5])
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_auxiliaryConnection"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(sel_configureAuxiliaryConnectionForMaterializedViewController_);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        v44 = v32;
        v45 = 2114;
        v46 = v34;
        v47 = 2048;
        v48 = a1;
        v49 = 2114;
        v50 = @"_UIViewServiceClientSceneComponent.m";
        v51 = 1024;
        v52 = 69;
        v53 = 2114;
        v54 = v31;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189E87B08);
    }

    v4 = objc_opt_class();
    v5 = [v4 _remoteViewControllerInterface];
    if (v5)
    {
    }

    else
    {
      v6 = [v4 _exportedInterface];

      if (!v6)
      {
        v8 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED49A330) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [a1 clientScene];
          v25 = [v24 identityToken];
          v26 = v3;
          if (v26)
          {
            v27 = MEMORY[0x1E696AEC0];
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = [v27 stringWithFormat:@"<%@: %p>", v29, v26];
          }

          else
          {
            v30 = @"(nil)";
          }

          *buf = 138543618;
          v44 = v25;
          v45 = 2114;
          v46 = v30;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Skipping auxiliary connection for %{public}@: %{public}@", buf, 0x16u);
        }

        goto LABEL_20;
      }
    }

    v7 = +[_UIViewServiceSessionManager sharedManager];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __96___UIViewServiceClientSceneComponent_configureAuxiliaryConnectionForMaterializedViewController___block_invoke;
    v42[3] = &unk_1E711EA50;
    v42[4] = a1;
    v8 = [v7 firstAuxiliaryConnectionPassingTest:v42];

    if (!v8)
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = [a1 clientScene];
      v37 = [v36 identityToken];
      v38 = [v35 stringWithFormat:@"Unable to find required auxiliary connection for %@", v37];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(sel_configureAuxiliaryConnectionForMaterializedViewController_);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v44 = v39;
        v45 = 2114;
        v46 = v41;
        v47 = 2048;
        v48 = a1;
        v49 = 2114;
        v50 = @"_UIViewServiceClientSceneComponent.m";
        v51 = 1024;
        v52 = 78;
        v53 = 2114;
        v54 = v38;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v38 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189E87C20);
    }

    v9 = [v8 connection];
    if (v9)
    {
      objc_storeStrong(a1 + 5, v9);
      [v9 setExportedObject:v3];
      v10 = [v4 _exportedInterface];
      [v9 setExportedInterface:v10];

      v11 = [v4 _remoteViewControllerInterface];
      [v9 setRemoteObjectInterface:v11];

      v12 = *(__UILogGetCategoryCachedImpl("ViewServices", &_MergedGlobals_3_14) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [a1 clientScene];
        v14 = [v13 identityToken];
        v15 = v3;
        if (v15)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [v16 stringWithFormat:@"<%@: %p>", v18, v15];
        }

        else
        {
          v19 = @"(nil)";
        }

        *buf = 138543618;
        v44 = v14;
        v45 = 2114;
        v46 = v19;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Configured auxiliary connection for %{public}@ with exported object %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED49A328) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [a1 clientScene];
        v23 = [v22 identityToken];
        *buf = 138543362;
        v44 = v23;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "Auxiliary connection for %{public}@ has been abandoned, skipping connection setup", buf, 0xCu);
      }
    }

LABEL_20:
  }
}

- (void)sceneWillConnect:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 object];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 _FBSScene];
  v12 = [v11 identityToken];
  v13 = [(FBSSceneComponent *)self clientScene];
  v14 = [v13 identityToken];
  v15 = [v12 isEqual:v14];

  if (v15)
  {
    v16 = *(__UILogGetCategoryCachedImpl("ViewServices", &sceneWillConnect____s_category) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(FBSSceneComponent *)self clientScene];
      v19 = [v18 identityToken];
      *buf = 138543362;
      v51 = v19;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Configuring view service scene for %{public}@:", buf, 0xCu);
    }

    v20 = [(FBSSceneComponent *)self clientScene];
    v21 = [(UIScene *)UIWindowScene _sceneForFBSScene:v20];
    objc_storeWeak(&self->_windowScene, v21);

    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (!WeakRetained)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = [(FBSSceneComponent *)self clientScene];
      v32 = [v31 identityToken];
      v33 = [v30 stringWithFormat:@"No scene found for %@", v32];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(a2);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        v51 = v34;
        v52 = 2114;
        v53 = v36;
        v54 = 2048;
        v55 = self;
        v56 = 2114;
        v57 = @"_UIViewServiceClientSceneComponent.m";
        v58 = 1024;
        v59 = 103;
        v60 = 2114;
        v61 = v33;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189E88084);
    }

    v23 = objc_loadWeakRetained(&self->_windowScene);
    v24 = [v23 delegate];

    if (v24)
    {
      v37 = MEMORY[0x1E696AEC0];
      v38 = objc_loadWeakRetained(&self->_windowScene);
      v39 = [v38 delegate];
      if (v39)
      {
        v41 = MEMORY[0x1E696AEC0];
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v40 = [v41 stringWithFormat:@"<%@: %p>", v43, v39];
      }

      else
      {
        v40 = @"(nil)";
      }

      v44 = [(FBSSceneComponent *)self clientScene];
      v45 = [v44 identityToken];
      v46 = [v37 stringWithFormat:@"Scene delegate %@ already exists for %@", v40, v45];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(a2);
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138544642;
        v51 = v47;
        v52 = 2114;
        v53 = v49;
        v54 = 2048;
        v55 = self;
        v56 = 2114;
        v57 = @"_UIViewServiceClientSceneComponent.m";
        v58 = 1024;
        v59 = 104;
        v60 = 2114;
        v61 = v46;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v46 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189E88208);
    }

    v25 = [_UIViewServiceSceneDelegate alloc];
    v26 = objc_loadWeakRetained(&self->_windowScene);
    v27 = [(_UIViewServiceSceneDelegate *)&v25->super.isa initWithWindowScene:v26];
    sceneDelegate = self->_sceneDelegate;
    self->_sceneDelegate = v27;

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 removeObserver:self name:@"UISceneWillConnectNotification" object:0];
  }
}

- (id)handlePrivateActions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = v11;
        if (v12)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          v16 = [(_UIViewServiceSceneDelegate *)self->_sceneDelegate materializedViewController];
          [v15 executeActionForViewController:{v16, v18}];

          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end