@interface _UISceneOrientationHostComponent
- (NSString)debugDescription;
- (int64_t)clientInterfaceOrientationLockPreference;
- (int64_t)interfaceOrientationLockState;
- (void)appendDescriptionToStream:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setInterfaceOrientationLockState:(int64_t)a3;
@end

@implementation _UISceneOrientationHostComponent

- (int64_t)clientInterfaceOrientationLockPreference
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

- (void)setInterfaceOrientationLockState:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &setInterfaceOrientationLockState____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = self;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];
    }

    else
    {
      v10 = @"(nil)";
    }

    if (a3 > 2)
    {
      v11 = &stru_1EFB14550;
    }

    else
    {
      v11 = off_1E711B350[a3];
    }

    v12 = v10;
    v13 = [(FBSSceneComponent *)self hostScene];
    v14 = [v13 identityToken];
    v15 = [v14 stringRepresentation];
    *buf = 138543874;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v15;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: setting lock state to: %{public}@; for scene: %{public}@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69___UISceneOrientationHostComponent_setInterfaceOrientationLockState___block_invoke;
  v18[3] = &__block_descriptor_40_e66_v16__0__FBSMutableSceneSettings__UIInterfaceOrientationLockHost__8l;
  v18[4] = a3;
  if (self)
  {
    v16 = v18;
    v17 = [(FBSSceneComponent *)self hostScene];
    [v17 updateSettings:v16];
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [a4 settingsDiff];
  v6 = [v5 ui_clientSettingsDiffContainsInterfaceOrientationLockPreference];

  if (v6)
  {
    v7 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &scene_didUpdateClientSettings____s_category) + 8);
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
      v14 = [(_UISceneOrientationHostComponent *)self clientInterfaceOrientationLockPreference];
      if (v14 > 2)
      {
        v15 = &stru_1EFB14550;
      }

      else
      {
        v15 = off_1E711B368[v14];
      }

      v16 = [(FBSSceneComponent *)self hostScene];
      v17 = [v16 identifier];
      *buf = 138543874;
      v19 = v12;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: host received orientation lock preference: %{public}@; for scene: %{public}@", buf, 0x20u);
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62___UISceneOrientationHostComponent_appendDescriptionToStream___block_invoke;
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