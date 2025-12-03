@interface UIPointerLockState
- (UIPointerLockState)initWithScene:(id)scene;
- (UIScene)_scene;
- (id)_settingsDiffActionsForScene:(id)scene;
- (id)_windowScene;
- (id)windowHostingScene;
- (void)_pointerLockStatusUpdated;
- (void)_preferredPointerLockStatusUpdated;
@end

@implementation UIPointerLockState

- (UIPointerLockState)initWithScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = UIPointerLockState;
  v6 = [(UIPointerLockState *)&v11 init];
  if (v6)
  {
    if (([sceneCopy _hostsWindows] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"UIPointerLockState.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"[scene _hostsWindows]"}];
    }

    objc_storeWeak(&v6->_scene, sceneCopy);
    windowHostingScene = [(UIPointerLockState *)v6 windowHostingScene];
    _effectiveUISettings = [windowHostingScene _effectiveUISettings];
    v6->_status = [_effectiveUISettings pointerLockStatus];
  }

  return v6;
}

- (id)windowHostingScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)_windowScene
{
  windowHostingScene = [(UIPointerLockState *)self windowHostingScene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = windowHostingScene;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_settingsDiffActionsForScene:(id)scene
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)_preferredPointerLockStatusUpdated
{
  v23 = *MEMORY[0x1E69E9840];
  windowHostingScene = [(UIPointerLockState *)self windowHostingScene];
  if (windowHostingScene)
  {
    v3 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:windowHostingScene];
    rootViewController = [v3 rootViewController];
    _effectivePointerLockViewController = [rootViewController _effectivePointerLockViewController];

    if (_effectivePointerLockViewController)
    {
      prefersPointerLocked = [_effectivePointerLockViewController prefersPointerLocked];
    }

    else
    {
      prefersPointerLocked = 0;
    }

    v7 = *(__UILogGetCategoryCachedImpl("PointerLockState", &_preferredPointerLockStatusUpdated___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [windowHostingScene succinctDescription];
      v9 = _effectivePointerLockViewController;
      if (_effectivePointerLockViewController)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 stringWithFormat:@"<%@: %p>", v12, v9];
      }

      else
      {
        v13 = @"(nil)";
      }

      v14 = @"_UIPointerLockStatusLocked";
      *buf = 138412802;
      v18 = succinctDescription;
      v19 = 2112;
      if (!prefersPointerLocked)
      {
        v14 = @"_UIPointerLockStatusUnlocked";
      }

      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v15 = v14;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "preferredPointerLockStatus updated: scene: %@; viewController: %@; preferredPointerLockStatus: %@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__UIPointerLockState__preferredPointerLockStatusUpdated__block_invoke;
    v16[3] = &__block_descriptor_40_e89_B24__0__UIMutableApplicationSceneClientSettings_8__UIApplicationSceneTransitionContext_16l;
    v16[4] = prefersPointerLocked;
    [windowHostingScene _updateUIClientSettingsWithUITransitionBlock:v16];
  }
}

- (void)_pointerLockStatusUpdated
{
  v21 = *MEMORY[0x1E69E9840];
  windowHostingScene = [(UIPointerLockState *)self windowHostingScene];
  _effectiveUISettings = [windowHostingScene _effectiveUISettings];
  pointerLockStatus = [_effectiveUISettings pointerLockStatus];

  if (self->_status != pointerLockStatus)
  {
    [(UIPointerLockState *)self willChangeValueForKey:@"locked"];
    self->_status = pointerLockStatus;
    v6 = *(__UILogGetCategoryCachedImpl("PointerLockState", &_pointerLockStatusUpdated___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      windowHostingScene2 = [(UIPointerLockState *)self windowHostingScene];
      succinctDescription = [windowHostingScene2 succinctDescription];
      if (self->_status)
      {
        v10 = @"_UIPointerLockStatusLocked";
      }

      else
      {
        v10 = @"_UIPointerLockStatusUnlocked";
      }

      v11 = v10;
      *buf = 138412546;
      v18 = succinctDescription;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "pointerLockStatus updated: scene: %@; pointerLockStatus: %@", buf, 0x16u);
    }

    [(UIPointerLockState *)self didChangeValueForKey:@"locked"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    windowHostingScene3 = [(UIPointerLockState *)self windowHostingScene];
    v16 = windowHostingScene3;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [defaultCenter postNotificationName:@"UIPointerLockStateDidChangeNotification" object:self userInfo:v14];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end