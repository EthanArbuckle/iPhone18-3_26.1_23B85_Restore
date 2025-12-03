@interface _UISceneOrientationClientComponent
- (NSString)debugDescription;
- (id)_windowScene;
- (int64_t)interfaceOrientationLockPreference;
- (int64_t)interfaceOrientationLockState;
- (void)appendDescriptionToStream:(id)stream;
- (void)evaluateInterfaceOrientationLockPreferenceIfNeeded;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneOrientationClientComponent

- (id)_windowScene
{
  selfCopy = self;
  if (self)
  {
    clientScene = [self clientScene];
    WeakRetained = objc_loadWeakRetained(selfCopy + 3);

    if (WeakRetained)
    {
      v4 = 1;
    }

    else
    {
      v4 = clientScene == 0;
    }

    if (!v4)
    {
      v5 = [(UIScene *)UIWindowScene _sceneForFBSScene:clientScene];
      objc_storeWeak(selfCopy + 3, v5);
    }

    selfCopy = objc_loadWeakRetained(selfCopy + 3);
  }

  return selfCopy;
}

- (int64_t)interfaceOrientationLockPreference
{
  if (self)
  {
    scene = [(FBSSceneComponent *)self scene];
    clientSettings = [scene clientSettings];
  }

  else
  {
    clientSettings = 0;
  }

  interfaceOrientationLockPreference = [clientSettings interfaceOrientationLockPreference];

  return interfaceOrientationLockPreference;
}

- (void)evaluateInterfaceOrientationLockPreferenceIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  _windowScene = [(_UISceneOrientationClientComponent *)&self->super.super.isa _windowScene];
  if (_UIInterfaceOrientationLockIsAvailableForScene(_windowScene))
  {
    v4 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:_windowScene];
    rootViewController = [v4 rootViewController];
    _effectiveInterfaceOrientationLockViewController = [rootViewController _effectiveInterfaceOrientationLockViewController];

    if (_effectiveInterfaceOrientationLockViewController)
    {
      if ([_effectiveInterfaceOrientationLockViewController prefersInterfaceOrientationLocked])
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v7 != [(_UISceneOrientationClientComponent *)self interfaceOrientationLockPreference])
    {
      v8 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &evaluateInterfaceOrientationLockPreferenceIfNeeded___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          v9 = MEMORY[0x1E696AEC0];
          selfCopy = self;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          selfCopy = [v9 stringWithFormat:@"<%@: %p>", v12, selfCopy];
        }

        else
        {
          selfCopy = @"(nil)";
        }

        v19 = selfCopy;
        v14 = _NSStringFromUIOrientationLockPreference(v7);
        clientScene = [(FBSSceneComponent *)self clientScene];
        identifier = [clientScene identifier];
        *buf = 138543874;
        v22 = selfCopy;
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = identifier;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: setting orientation lock preference to: %{public}@; for scene: %{public}@", buf, 0x20u);
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __88___UISceneOrientationClientComponent_evaluateInterfaceOrientationLockPreferenceIfNeeded__block_invoke;
      v20[3] = &__block_descriptor_40_e104_v24__0__FBSMutableSceneClientSettings__UIInterfaceOrientationLockClient__8__FBSSceneTransitionContext_16l;
      v20[4] = v7;
      if (self)
      {
        v17 = v20;
        clientScene2 = [(FBSSceneComponent *)self clientScene];
        [clientScene2 updateClientSettings:v17];
      }
    }
  }
}

- (int64_t)interfaceOrientationLockState
{
  if (self)
  {
    scene = [(FBSSceneComponent *)self scene];
    settings = [scene settings];
  }

  else
  {
    settings = 0;
  }

  interfaceOrientationLockState = [settings interfaceOrientationLockState];

  return interfaceOrientationLockState;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v34 = *MEMORY[0x1E69E9840];
  settingsDiff = [settings settingsDiff];
  v6 = [settingsDiff containsProperty:sel_interfaceOrientationLockState];

  if (v6)
  {
    v7 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &_MergedGlobals_1066) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v8 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        selfCopy = [v8 stringWithFormat:@"<%@: %p>", v11, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v13 = selfCopy;
      v14 = _NSStringFromUIOrientationLockState([(_UISceneOrientationClientComponent *)self interfaceOrientationLockState]);
      clientScene = [(FBSSceneComponent *)self clientScene];
      identifier = [clientScene identifier];
      *buf = 138543874;
      v29 = selfCopy;
      v30 = 2114;
      v31 = v14;
      v32 = 2114;
      v33 = identifier;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: host received orientation lock state: %{public}@; for scene: %{public}@", buf, 0x20u);
    }

    _windowScene = [(_UISceneOrientationClientComponent *)&self->super.super.isa _windowScene];
    if (_UIInterfaceOrientationLockIsAvailableForScene(_windowScene))
    {
      [_windowScene _updateEffectiveGeometryIfNeeded];
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &qword_1ED49DA40) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          v19 = MEMORY[0x1E696AEC0];
          selfCopy2 = self;
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          selfCopy2 = [v19 stringWithFormat:@"<%@: %p>", v22, selfCopy2];
        }

        else
        {
          selfCopy2 = @"(nil)";
        }

        v24 = selfCopy2;
        clientScene2 = [(FBSSceneComponent *)self clientScene];
        identityToken = [clientScene2 identityToken];
        stringRepresentation = [identityToken stringRepresentation];
        *buf = 138543618;
        v29 = selfCopy2;
        v30 = 2114;
        v31 = stringRepresentation;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: dropping update as scene is not available for orientation locking: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UISceneOrientationClientComponent_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end