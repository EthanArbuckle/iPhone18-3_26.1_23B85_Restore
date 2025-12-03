@interface _UIViewServiceHostSceneComponent
- (double)auditToken;
- (id)delegate;
- (void)activateOnMainDisplayWithClientProcessHandle:(id *)handle;
- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller;
- (void)clientSupportedInterfaceOrientations;
- (void)endManagingHostedSceneActivationForHostingController:(id)controller;
- (void)evaluateClientIsReady;
- (void)pid;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)sendAppearanceAction:(void *)action;
- (void)setContextToken:(void *)token;
- (void)setServiceViewControllerClassName:(void *)name;
@end

@implementation _UIViewServiceHostSceneComponent

- (void)setServiceViewControllerClassName:(void *)name
{
  v3 = a2;
  if (name)
  {
    hostScene = [name hostScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70___UIViewServiceHostSceneComponent_setServiceViewControllerClassName___block_invoke;
    v5[3] = &unk_1E711FD48;
    v6 = v3;
    [hostScene updateSettings:v5];
  }
}

- (void)setContextToken:(void *)token
{
  v3 = a2;
  if (token)
  {
    hostScene = [token hostScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52___UIViewServiceHostSceneComponent_setContextToken___block_invoke;
    v5[3] = &unk_1E711FD48;
    v6 = v3;
    [hostScene updateSettings:v5];
  }
}

- (void)sendAppearanceAction:(void *)action
{
  if (action)
  {
    hostScene = [action hostScene];
    isActive = [hostScene isActive];

    if (isActive)
    {
      v8 = [_UIViewServiceHostAppearanceAction actionForAppearanceActionType:a2];
      scene = [action scene];
      v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
      [scene sendPrivateActions:v7];
    }
  }
}

- (double)auditToken
{
  if (self)
  {
    hostScene = [self hostScene];
    clientHandle = [hostScene clientHandle];
    processHandle = [clientHandle processHandle];
    v5 = processHandle;
    if (processHandle)
    {
      [processHandle auditToken];
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
    hostScene = [result hostScene];
    clientHandle = [hostScene clientHandle];
    processHandle = [clientHandle processHandle];
    v4 = [processHandle pid];

    return v4;
  }

  return result;
}

- (void)clientSupportedInterfaceOrientations
{
  if (result)
  {
    hostScene = [result hostScene];
    clientSettings = [hostScene clientSettings];
    supportedInterfaceOrientations = [clientSettings supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  return result;
}

- (void)activateOnMainDisplayWithClientProcessHandle:(id *)handle
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (handle)
  {
    hostScene = [handle hostScene];
    isActive = [hostScene isActive];

    if (isActive)
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
        handleCopy2 = handle;
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

    hostScene2 = [handle hostScene];
    uiSceneHostingController = [hostScene2 uiSceneHostingController];

    _eventDeferringComponent = [uiSceneHostingController _eventDeferringComponent];
    [_eventDeferringComponent setRequestEventDeferralForAllFirstResponderChanges:1];

    [uiSceneHostingController setActivationController:handle];
    hostScene3 = [handle hostScene];
    ui_settingsModifierComponent = [hostScene3 ui_settingsModifierComponent];

    defaultShellEndpoint = [MEMORY[0x1E69DEC20] defaultShellEndpoint];
    [ui_settingsModifierComponent setExternalSettingsModifierEndpoint:defaultShellEndpoint];

    [ui_settingsModifierComponent setParticipatesInExternalSettingsModification:1];
    hostScene4 = [handle hostScene];
    [hostScene4 updateSettings:&__block_literal_global_548];

    if (([handle[3] isHandleValid] & 1) == 0)
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
        handleCopy2 = handle;
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

    v13 = handle[3];
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
    scene = [(FBSSceneComponent *)self scene];
    clientSettings = [scene clientSettings];
    clientViewControllerIsReady = [clientSettings clientViewControllerIsReady];

    hostScene = [(FBSSceneComponent *)self hostScene];
    contentState = [hostScene contentState];

    if (clientViewControllerIsReady)
    {
      if (contentState == 2)
      {
        *&self->_flags |= 1u;
        objc_initWeak(&location, self);
        hostScene2 = [(FBSSceneComponent *)self hostScene];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __57___UIViewServiceHostSceneComponent_evaluateClientIsReady__block_invoke;
        v9[3] = &unk_1E70F5A28;
        objc_copyWeak(&v10, &location);
        [hostScene2 executeWhenMutable:v9];

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

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  contextCopy = context;
  delegate = [(_UIViewServiceHostSceneComponent *)&self->super.super.isa delegate];
  error = [contextCopy error];

  [delegate sceneDidInvalidateWithError:error];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_supportedInterfaceOrientations];

  if (v6)
  {
    delegate = [(_UIViewServiceHostSceneComponent *)&self->super.super.isa delegate];
    [delegate supportedInterfaceOrientationsDidUpdate];
  }

  if ((*&self->_flags & 1) == 0)
  {
    settingsDiff2 = [settingsCopy settingsDiff];
    v9 = [settingsDiff2 containsProperty:sel_clientViewControllerIsReady];

    if (v9)
    {
      [(_UIViewServiceHostSceneComponent *)self evaluateClientIsReady];
    }
  }
}

- (void)endManagingHostedSceneActivationForHostingController:(id)controller
{
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;
}

- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller
{
  if ([(_UISceneHostingActivationHandle *)self->_activationHandle isHandleValid:update]&& ![(_UISceneHostingActivationHandle *)self->_activationHandle isActive])
  {
    hostScene = [(FBSSceneComponent *)self hostScene];
    [hostScene invalidate];
  }
}

@end