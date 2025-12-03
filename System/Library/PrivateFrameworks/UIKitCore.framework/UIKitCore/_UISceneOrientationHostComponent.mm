@interface _UISceneOrientationHostComponent
- (NSString)debugDescription;
- (int64_t)clientInterfaceOrientationLockPreference;
- (int64_t)interfaceOrientationLockState;
- (void)appendDescriptionToStream:(id)stream;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setInterfaceOrientationLockState:(int64_t)state;
@end

@implementation _UISceneOrientationHostComponent

- (int64_t)clientInterfaceOrientationLockPreference
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

- (void)setInterfaceOrientationLockState:(int64_t)state
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &setInterfaceOrientationLockState____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      selfCopy = [v6 stringWithFormat:@"<%@: %p>", v9, selfCopy];
    }

    else
    {
      selfCopy = @"(nil)";
    }

    if (state > 2)
    {
      v11 = &stru_1EFB14550;
    }

    else
    {
      v11 = off_1E711B350[state];
    }

    v12 = selfCopy;
    hostScene = [(FBSSceneComponent *)self hostScene];
    identityToken = [hostScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    *buf = 138543874;
    v20 = selfCopy;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = stringRepresentation;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: setting lock state to: %{public}@; for scene: %{public}@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69___UISceneOrientationHostComponent_setInterfaceOrientationLockState___block_invoke;
  v18[3] = &__block_descriptor_40_e66_v16__0__FBSMutableSceneSettings__UIInterfaceOrientationLockHost__8l;
  v18[4] = state;
  if (self)
  {
    v16 = v18;
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    [hostScene2 updateSettings:v16];
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  v24 = *MEMORY[0x1E69E9840];
  settingsDiff = [settings settingsDiff];
  ui_clientSettingsDiffContainsInterfaceOrientationLockPreference = [settingsDiff ui_clientSettingsDiffContainsInterfaceOrientationLockPreference];

  if (ui_clientSettingsDiffContainsInterfaceOrientationLockPreference)
  {
    v7 = *(__UILogGetCategoryCachedImpl("InterfaceOrientationLock", &scene_didUpdateClientSettings____s_category) + 8);
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
      clientInterfaceOrientationLockPreference = [(_UISceneOrientationHostComponent *)self clientInterfaceOrientationLockPreference];
      if (clientInterfaceOrientationLockPreference > 2)
      {
        v15 = &stru_1EFB14550;
      }

      else
      {
        v15 = off_1E711B368[clientInterfaceOrientationLockPreference];
      }

      hostScene = [(FBSSceneComponent *)self hostScene];
      identifier = [hostScene identifier];
      *buf = 138543874;
      v19 = selfCopy;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = identifier;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: host received orientation lock preference: %{public}@; for scene: %{public}@", buf, 0x20u);
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62___UISceneOrientationHostComponent_appendDescriptionToStream___block_invoke;
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