@interface _UISceneOrientationClientComponent
- (NSString)debugDescription;
- (id)_windowScene;
- (int64_t)interfaceOrientationLockPreference;
- (int64_t)interfaceOrientationLockState;
- (void)appendDescriptionToStream:(id)a3;
- (void)evaluateInterfaceOrientationLockPreferenceIfNeeded;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneOrientationClientComponent

- (id)_windowScene
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 clientScene];
    WeakRetained = objc_loadWeakRetained(v1 + 3);

    if (WeakRetained)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (!v4)
    {
      v5 = [(UIScene *)UIWindowScene _sceneForFBSScene:v2];
      objc_storeWeak(v1 + 3, v5);
    }

    v1 = objc_loadWeakRetained(v1 + 3);
  }

  return v1;
}

- (int64_t)interfaceOrientationLockPreference
{
  if (self)
  {
    v2 = [(FBSSceneComponent *)self scene];
    v3 = [v2 clientSettings];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 interfaceOrientationLockPreference];

  return v4;
}

- (void)evaluateInterfaceOrientationLockPreferenceIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(_UISceneOrientationClientComponent *)&self->super.super.isa _windowScene];
  if (_UIInterfaceOrientationLockIsAvailableForScene(v3))
  {
    v4 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:v3];
    v5 = [v4 rootViewController];
    v6 = [v5 _effectiveInterfaceOrientationLockViewController];

    if (v6)
    {
      if ([v6 prefersInterfaceOrientationLocked])
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
          v10 = self;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10];
        }

        else
        {
          v13 = @"(nil)";
        }

        v19 = v13;
        v14 = _NSStringFromUIOrientationLockPreference(v7);
        v15 = [(FBSSceneComponent *)self clientScene];
        v16 = [v15 identifier];
        *buf = 138543874;
        v22 = v13;
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = v16;
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
        v18 = [(FBSSceneComponent *)self clientScene];
        [v18 updateClientSettings:v17];
      }
    }
  }
}

- (int64_t)interfaceOrientationLockState
{
  if (self)
  {
    v2 = [(FBSSceneComponent *)self scene];
    v3 = [v2 settings];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 interfaceOrientationLockState];

  return v4;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [a4 settingsDiff];
  v6 = [v5 containsProperty:sel_interfaceOrientationLockState];

  if (v6)
  {
    v7 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &_MergedGlobals_1066) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = self;
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v8 stringWithFormat:@"<%@: %p>", v11, v9];
      }

      else
      {
        v12 = @"(nil)";
      }

      v13 = v12;
      v14 = _NSStringFromUIOrientationLockState([(_UISceneOrientationClientComponent *)self interfaceOrientationLockState]);
      v15 = [(FBSSceneComponent *)self clientScene];
      v16 = [v15 identifier];
      *buf = 138543874;
      v29 = v12;
      v30 = 2114;
      v31 = v14;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: host received orientation lock state: %{public}@; for scene: %{public}@", buf, 0x20u);
    }

    v17 = [(_UISceneOrientationClientComponent *)&self->super.super.isa _windowScene];
    if (_UIInterfaceOrientationLockIsAvailableForScene(v17))
    {
      [v17 _updateEffectiveGeometryIfNeeded];
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &qword_1ED49DA40) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = self;
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = [v19 stringWithFormat:@"<%@: %p>", v22, v20];
        }

        else
        {
          v23 = @"(nil)";
        }

        v24 = v23;
        v25 = [(FBSSceneComponent *)self clientScene];
        v26 = [v25 identityToken];
        v27 = [v26 stringRepresentation];
        *buf = 138543618;
        v29 = v23;
        v30 = 2114;
        v31 = v27;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: dropping update as scene is not available for orientation locking: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UISceneOrientationClientComponent_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end