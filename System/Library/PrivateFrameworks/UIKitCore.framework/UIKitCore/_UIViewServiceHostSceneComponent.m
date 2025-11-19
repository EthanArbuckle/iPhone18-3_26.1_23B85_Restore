@interface _UIViewServiceHostSceneComponent
- (double)auditToken;
- (id)delegate;
- (void)activateOnMainDisplayWithClientProcessHandle:(id *)a1;
- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4;
- (void)clientSupportedInterfaceOrientations;
- (void)endManagingHostedSceneActivationForHostingController:(id)a3;
- (void)evaluateClientIsReady;
- (void)pid;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)sendAppearanceAction:(void *)a1;
- (void)setContextToken:(void *)a1;
- (void)setServiceViewControllerClassName:(void *)a1;
@end

@implementation _UIViewServiceHostSceneComponent

- (void)setServiceViewControllerClassName:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 hostScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70___UIViewServiceHostSceneComponent_setServiceViewControllerClassName___block_invoke;
    v5[3] = &unk_1E711FD48;
    v6 = v3;
    [v4 updateSettings:v5];
  }
}

- (void)setContextToken:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 hostScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52___UIViewServiceHostSceneComponent_setContextToken___block_invoke;
    v5[3] = &unk_1E711FD48;
    v6 = v3;
    [v4 updateSettings:v5];
  }
}

- (void)sendAppearanceAction:(void *)a1
{
  if (a1)
  {
    v4 = [a1 hostScene];
    v5 = [v4 isActive];

    if (v5)
    {
      v8 = [_UIViewServiceHostAppearanceAction actionForAppearanceActionType:a2];
      v6 = [a1 scene];
      v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
      [v6 sendPrivateActions:v7];
    }
  }
}

- (double)auditToken
{
  if (a1)
  {
    v7 = [a1 hostScene];
    v3 = [v7 clientHandle];
    v4 = [v3 processHandle];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

- (void)pid
{
  if (result)
  {
    v1 = [result hostScene];
    v2 = [v1 clientHandle];
    v3 = [v2 processHandle];
    v4 = [v3 pid];

    return v4;
  }

  return result;
}

- (void)clientSupportedInterfaceOrientations
{
  if (result)
  {
    v1 = [result hostScene];
    v2 = [v1 clientSettings];
    v3 = [v2 supportedInterfaceOrientations];

    return v3;
  }

  return result;
}

- (void)activateOnMainDisplayWithClientProcessHandle:(id *)a1
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 hostScene];
    v5 = [v4 isActive];

    if (v5)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!self.hostScene.isActive"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel_activateOnMainDisplayWithClientProcessHandle_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v25 = v15;
        v26 = 2114;
        v27 = v17;
        v28 = 2048;
        v29 = a1;
        v30 = 2114;
        v31 = @"_UIViewServiceHostSceneComponent.m";
        v32 = 1024;
        v33 = 81;
        v34 = 2114;
        v35 = v14;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189FE74F8);
    }

    v6 = [a1 hostScene];
    v7 = [v6 uiSceneHostingController];

    v8 = [v7 _eventDeferringComponent];
    [v8 setRequestEventDeferralForAllFirstResponderChanges:1];

    [v7 setActivationController:a1];
    v9 = [a1 hostScene];
    v10 = [v9 ui_settingsModifierComponent];

    v11 = [MEMORY[0x1E69DEC20] defaultShellEndpoint];
    [v10 setExternalSettingsModifierEndpoint:v11];

    [v10 setParticipatesInExternalSettingsModification:1];
    v12 = [a1 hostScene];
    [v12 updateSettings:&__block_literal_global_548];

    if (([a1[3] isHandleValid] & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_activationHandle.isHandleValid"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel_activateOnMainDisplayWithClientProcessHandle_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v25 = v19;
        v26 = 2114;
        v27 = v21;
        v28 = 2048;
        v29 = a1;
        v30 = 2114;
        v31 = @"_UIViewServiceHostSceneComponent.m";
        v32 = 1024;
        v33 = 116;
        v34 = 2114;
        v35 = v18;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189FE75F0);
    }

    v13 = a1[3];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81___UIViewServiceHostSceneComponent_activateOnMainDisplayWithClientProcessHandle___block_invoke_15;
    v22[3] = &unk_1E711E9F8;
    v23 = v3;
    [v13 activate:v22];
  }
}

- (void)evaluateClientIsReady
{
  if ((*&self->_flags & 1) == 0)
  {
    v3 = [(FBSSceneComponent *)self scene];
    v4 = [v3 clientSettings];
    v5 = [v4 clientViewControllerIsReady];

    v6 = [(FBSSceneComponent *)self hostScene];
    v7 = [v6 contentState];

    if (v5)
    {
      if (v7 == 2)
      {
        *&self->_flags |= 1u;
        objc_initWeak(&location, self);
        v8 = [(FBSSceneComponent *)self hostScene];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __57___UIViewServiceHostSceneComponent_evaluateClientIsReady__block_invoke;
        v9[3] = &unk_1E70F5A28;
        objc_copyWeak(&v10, &location);
        [v8 executeWhenMutable:v9];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 5);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v7 = [(_UIViewServiceHostSceneComponent *)&self->super.super.isa delegate];
  v6 = [v5 error];

  [v7 sceneDidInvalidateWithError:v6];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v10 = a4;
  v5 = [v10 settingsDiff];
  v6 = [v5 containsProperty:sel_supportedInterfaceOrientations];

  if (v6)
  {
    v7 = [(_UIViewServiceHostSceneComponent *)&self->super.super.isa delegate];
    [v7 supportedInterfaceOrientationsDidUpdate];
  }

  if ((*&self->_flags & 1) == 0)
  {
    v8 = [v10 settingsDiff];
    v9 = [v8 containsProperty:sel_clientViewControllerIsReady];

    if (v9)
    {
      [(_UIViewServiceHostSceneComponent *)self evaluateClientIsReady];
    }
  }
}

- (void)endManagingHostedSceneActivationForHostingController:(id)a3
{
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;
}

- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4
{
  if ([(_UISceneHostingActivationHandle *)self->_activationHandle isHandleValid:a3]&& ![(_UISceneHostingActivationHandle *)self->_activationHandle isActive])
  {
    v5 = [(FBSSceneComponent *)self hostScene];
    [v5 invalidate];
  }
}

@end