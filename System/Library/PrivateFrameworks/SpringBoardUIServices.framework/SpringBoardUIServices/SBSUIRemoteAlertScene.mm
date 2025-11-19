@interface SBSUIRemoteAlertScene
- (NSString)configurationIdentifier;
- (SBSRemoteAlertActivationContext)activationContext;
- (SBSRemoteAlertConfigurationContext)configurationContext;
- (void)_readySceneForConnection;
- (void)deactivate;
- (void)invalidate;
- (void)setAllowsAlertStacking:(BOOL)a3;
- (void)setAllowsMenuButtonDismissal:(BOOL)a3;
- (void)setBackgroundActivitiesToSuppress:(id)a3 animationSettings:(id)a4;
- (void)setContentOpaque:(BOOL)a3;
- (void)setContentOverlaysStatusBar:(BOOL)a3 animationSettings:(id)a4;
- (void)setDesiredAutoLockDuration:(double)a3;
- (void)setDesiredHardwareButtonEvents:(unint64_t)a3;
- (void)setDesiredIdleTimerSettings:(id)a3;
- (void)setDisablesAlertItems:(BOOL)a3;
- (void)setDisablesBanners:(BOOL)a3;
- (void)setDisablesControlCenter:(BOOL)a3;
- (void)setDisablesSiri:(BOOL)a3;
- (void)setDismissalAnimationStyle:(int64_t)a3;
- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setInputHardwareEventsDisabled:(BOOL)a3;
- (void)setInteractiveScreenshotGestureDisabled:(BOOL)a3;
- (void)setOrientationChangedEventsDisabled:(BOOL)a3;
- (void)setReachabilityDisabled:(BOOL)a3;
- (void)setSceneDeactivationReason:(id)a3;
- (void)setSwipeDismissalStyle:(int64_t)a3;
- (void)setWallpaperStyle:(int64_t)a3 animationSettings:(id)a4;
- (void)setWhitePointAdaptivityStyle:(int64_t)a3;
@end

@implementation SBSUIRemoteAlertScene

- (void)_readySceneForConnection
{
  v11.receiver = self;
  v11.super_class = SBSUIRemoteAlertScene;
  [(SBSUIRemoteAlertScene *)&v11 _readySceneForConnection];
  v3 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  if ([v3 conformsToExtension:objc_opt_class()])
  {
    v4 = [v3 clientSettings];
    v5 = [v4 initialRemoteAlertConfigurationContext];

    if (v5)
    {
      v6 = [v3 SBSUI_remoteAlertComponent];
      v7 = [v4 initialRemoteAlertConfigurationContext];
      [v6 setConfigurationContext:v7];
    }

    v8 = [v4 initialRemoteAlertActivationContext];

    if (v8)
    {
      v9 = [v3 SBSUI_remoteAlertComponent];
      v10 = [v4 initialRemoteAlertActivationContext];
      [v9 setActivationContext:v10];
    }

    [v3 updateClientSettings:&__block_literal_global_24];
  }

  else
  {
    v4 = SBLogTransientOverlay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSUIRemoteAlertScene *)v4 _readySceneForConnection];
    }
  }
}

void __49__SBSUIRemoteAlertScene__readySceneForConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setInitialRemoteAlertActivationContext:0];
  [v2 setInitialRemoteAlertConfigurationContext:0];
}

- (NSString)configurationIdentifier
{
  v2 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 configurationIdentifier];

  return v4;
}

- (SBSRemoteAlertConfigurationContext)configurationContext
{
  v2 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v3 = [v2 SBSUI_remoteAlertComponent];
  v4 = [v3 configurationContext];

  return v4;
}

- (SBSRemoteAlertActivationContext)activationContext
{
  v2 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v3 = [v2 SBSUI_remoteAlertComponent];
  v4 = [v3 activationContext];

  return v4;
}

- (void)deactivate
{
  v2 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  [v2 updateClientSettings:&__block_literal_global_3_1];
}

- (void)invalidate
{
  v2 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  [v2 updateClientSettings:&__block_literal_global_5];
}

- (void)setDisablesBanners:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SBSUIRemoteAlertScene_setDisablesBanners___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setDisablesAlertItems:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SBSUIRemoteAlertScene_setDisablesAlertItems___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setDisablesControlCenter:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SBSUIRemoteAlertScene_setDisablesControlCenter___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setDisablesSiri:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SBSUIRemoteAlertScene_setDisablesSiri___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setInteractiveScreenshotGestureDisabled:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SBSUIRemoteAlertScene_setInteractiveScreenshotGestureDisabled___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setReachabilityDisabled:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SBSUIRemoteAlertScene_setReachabilityDisabled___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setAllowsAlertStacking:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SBSUIRemoteAlertScene_setAllowsAlertStacking___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setAllowsMenuButtonDismissal:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSUIRemoteAlertScene_setAllowsMenuButtonDismissal___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setDesiredHardwareButtonEvents:(unint64_t)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SBSUIRemoteAlertScene_setDesiredHardwareButtonEvents___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = a3;
  [v4 updateClientSettings:v5];
}

- (void)setContentOpaque:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SBSUIRemoteAlertScene_setContentOpaque___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setWallpaperStyle:(int64_t)a3 animationSettings:(id)a4
{
  v6 = a4;
  v7 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SBSUIRemoteAlertScene_setWallpaperStyle_animationSettings___block_invoke;
  v9[3] = &unk_1E789F208;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 updateClientSettings:v9];
}

void __61__SBSUIRemoteAlertScene_setWallpaperStyle_animationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isUISubclass])
  {
    [v6 setBackgroundStyle:*(a1 + 40)];
    [v5 setAnimationSettings:*(a1 + 32)];
  }
}

- (void)setDismissalAnimationStyle:(int64_t)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SBSUIRemoteAlertScene_setDismissalAnimationStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = a3;
  [v4 updateClientSettings:v5];
}

- (void)setSwipeDismissalStyle:(int64_t)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SBSUIRemoteAlertScene_setSwipeDismissalStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = a3;
  [v4 updateClientSettings:v5];
}

- (void)setWhitePointAdaptivityStyle:(int64_t)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSUIRemoteAlertScene_setWhitePointAdaptivityStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = a3;
  [v4 updateClientSettings:v5];
}

- (void)setBackgroundActivitiesToSuppress:(id)a3 animationSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__SBSUIRemoteAlertScene_setBackgroundActivitiesToSuppress_animationSettings___block_invoke;
  v11[3] = &unk_1E789DB48;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 updateClientSettings:v11];
}

void __77__SBSUIRemoteAlertScene_setBackgroundActivitiesToSuppress_animationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 setBackgroundActivitiesToSuppress:v5];
  [v6 setAnimationSettings:*(a1 + 40)];
}

- (void)setContentOverlaysStatusBar:(BOOL)a3 animationSettings:(id)a4
{
  v6 = a4;
  v7 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__SBSUIRemoteAlertScene_setContentOverlaysStatusBar_animationSettings___block_invoke;
  v9[3] = &unk_1E789F230;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  [v7 updateClientSettings:v9];
}

void __71__SBSUIRemoteAlertScene_setContentOverlaysStatusBar_animationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  [a2 setContentOverlaysStatusBar:v5];
  [v6 setAnimationSettings:*(a1 + 32)];
}

- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4
{
  v6 = a4;
  v7 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SBSUIRemoteAlertScene_setIdleTimerDisabled_forReason___block_invoke;
  v9[3] = &unk_1E789F230;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  [v7 updateClientSettings:v9];
}

void __56__SBSUIRemoteAlertScene_setIdleTimerDisabled_forReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a3;
  [v5 setWantsIdleTimerDisabled:v4];
  [v5 setWantsIdleTimerDisabledReason:*(a1 + 32)];
}

- (void)setDesiredAutoLockDuration:(double)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SBSUIRemoteAlertScene_setDesiredAutoLockDuration___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  *&v5[4] = a3;
  [v4 updateClientSettings:v5];
}

- (void)setDesiredIdleTimerSettings:(id)a3
{
  v4 = a3;
  v5 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SBSUIRemoteAlertScene_setDesiredIdleTimerSettings___block_invoke;
  v7[3] = &unk_1E789DB20;
  v8 = v4;
  v6 = v4;
  [v5 updateClientSettings:v7];
}

- (void)setOrientationChangedEventsDisabled:(BOOL)a3
{
  v4 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SBSUIRemoteAlertScene_setOrientationChangedEventsDisabled___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

- (void)setSceneDeactivationReason:(id)a3
{
  v4 = a3;
  v5 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SBSUIRemoteAlertScene_setSceneDeactivationReason___block_invoke;
  v7[3] = &unk_1E789DB20;
  v8 = v4;
  v6 = v4;
  [v5 updateClientSettings:v7];
}

- (void)setInputHardwareEventsDisabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = SBLogTransientOverlay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SBSUIRemoteAlertScene *)self _FBSScene];
    v7 = [v6 identityToken];
    *buf = 138543618;
    v12 = v7;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Remote alert scene %{public}@ setting input hardware events disabled: %d", buf, 0x12u);
  }

  v8 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SBSUIRemoteAlertScene_setInputHardwareEventsDisabled___block_invoke;
  v9[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v10 = v3;
  [v8 updateClientSettings:v9];
}

@end