@interface UIPointerLockState
- (UIPointerLockState)initWithScene:(id)a3;
- (UIScene)_scene;
- (id)_settingsDiffActionsForScene:(id)a3;
- (id)_windowScene;
- (id)windowHostingScene;
- (void)_pointerLockStatusUpdated;
- (void)_preferredPointerLockStatusUpdated;
@end

@implementation UIPointerLockState

- (UIPointerLockState)initWithScene:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UIPointerLockState;
  v6 = [(UIPointerLockState *)&v11 init];
  if (v6)
  {
    if (([v5 _hostsWindows] & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:v6 file:@"UIPointerLockState.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"[scene _hostsWindows]"}];
    }

    objc_storeWeak(&v6->_scene, v5);
    v7 = [(UIPointerLockState *)v6 windowHostingScene];
    v8 = [v7 _effectiveUISettings];
    v6->_status = [v8 pointerLockStatus];
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
  v2 = [(UIPointerLockState *)self windowHostingScene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_settingsDiffActionsForScene:(id)a3
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
  v2 = [(UIPointerLockState *)self windowHostingScene];
  if (v2)
  {
    v3 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:v2];
    v4 = [v3 rootViewController];
    v5 = [v4 _effectivePointerLockViewController];

    if (v5)
    {
      v6 = [v5 prefersPointerLocked];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(__UILogGetCategoryCachedImpl("PointerLockState", &_preferredPointerLockStatusUpdated___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v2 succinctDescription];
      v9 = v5;
      if (v5)
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
      v18 = v8;
      v19 = 2112;
      if (!v6)
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
    v16[4] = v6;
    [v2 _updateUIClientSettingsWithUITransitionBlock:v16];
  }
}

- (void)_pointerLockStatusUpdated
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(UIPointerLockState *)self windowHostingScene];
  v4 = [v3 _effectiveUISettings];
  v5 = [v4 pointerLockStatus];

  if (self->_status != v5)
  {
    [(UIPointerLockState *)self willChangeValueForKey:@"locked"];
    self->_status = v5;
    v6 = *(__UILogGetCategoryCachedImpl("PointerLockState", &_pointerLockStatusUpdated___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(UIPointerLockState *)self windowHostingScene];
      v9 = [v8 succinctDescription];
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
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "pointerLockStatus updated: scene: %@; pointerLockStatus: %@", buf, 0x16u);
    }

    [(UIPointerLockState *)self didChangeValueForKey:@"locked"];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = [(UIPointerLockState *)self windowHostingScene];
    v16 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v12 postNotificationName:@"UIPointerLockStateDidChangeNotification" object:self userInfo:v14];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end