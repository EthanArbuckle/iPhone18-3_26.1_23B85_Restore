@interface SBSUIRemoteAlertScene
- (NSString)configurationIdentifier;
- (SBSRemoteAlertActivationContext)activationContext;
- (SBSRemoteAlertConfigurationContext)configurationContext;
- (void)_readySceneForConnection;
- (void)deactivate;
- (void)invalidate;
- (void)setAllowsAlertStacking:(BOOL)stacking;
- (void)setAllowsMenuButtonDismissal:(BOOL)dismissal;
- (void)setBackgroundActivitiesToSuppress:(id)suppress animationSettings:(id)settings;
- (void)setContentOpaque:(BOOL)opaque;
- (void)setContentOverlaysStatusBar:(BOOL)bar animationSettings:(id)settings;
- (void)setDesiredAutoLockDuration:(double)duration;
- (void)setDesiredHardwareButtonEvents:(unint64_t)events;
- (void)setDesiredIdleTimerSettings:(id)settings;
- (void)setDisablesAlertItems:(BOOL)items;
- (void)setDisablesBanners:(BOOL)banners;
- (void)setDisablesControlCenter:(BOOL)center;
- (void)setDisablesSiri:(BOOL)siri;
- (void)setDismissalAnimationStyle:(int64_t)style;
- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setInputHardwareEventsDisabled:(BOOL)disabled;
- (void)setInteractiveScreenshotGestureDisabled:(BOOL)disabled;
- (void)setOrientationChangedEventsDisabled:(BOOL)disabled;
- (void)setReachabilityDisabled:(BOOL)disabled;
- (void)setSceneDeactivationReason:(id)reason;
- (void)setSwipeDismissalStyle:(int64_t)style;
- (void)setWallpaperStyle:(int64_t)style animationSettings:(id)settings;
- (void)setWhitePointAdaptivityStyle:(int64_t)style;
@end

@implementation SBSUIRemoteAlertScene

- (void)_readySceneForConnection
{
  v11.receiver = self;
  v11.super_class = SBSUIRemoteAlertScene;
  [(SBSUIRemoteAlertScene *)&v11 _readySceneForConnection];
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  if ([_FBSScene conformsToExtension:objc_opt_class()])
  {
    clientSettings = [_FBSScene clientSettings];
    initialRemoteAlertConfigurationContext = [clientSettings initialRemoteAlertConfigurationContext];

    if (initialRemoteAlertConfigurationContext)
    {
      sBSUI_remoteAlertComponent = [_FBSScene SBSUI_remoteAlertComponent];
      initialRemoteAlertConfigurationContext2 = [clientSettings initialRemoteAlertConfigurationContext];
      [sBSUI_remoteAlertComponent setConfigurationContext:initialRemoteAlertConfigurationContext2];
    }

    initialRemoteAlertActivationContext = [clientSettings initialRemoteAlertActivationContext];

    if (initialRemoteAlertActivationContext)
    {
      sBSUI_remoteAlertComponent2 = [_FBSScene SBSUI_remoteAlertComponent];
      initialRemoteAlertActivationContext2 = [clientSettings initialRemoteAlertActivationContext];
      [sBSUI_remoteAlertComponent2 setActivationContext:initialRemoteAlertActivationContext2];
    }

    [_FBSScene updateClientSettings:&__block_literal_global_24];
  }

  else
  {
    clientSettings = SBLogTransientOverlay();
    if (os_log_type_enabled(clientSettings, OS_LOG_TYPE_ERROR))
    {
      [(SBSUIRemoteAlertScene *)clientSettings _readySceneForConnection];
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
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  settings = [_FBSScene settings];
  configurationIdentifier = [settings configurationIdentifier];

  return configurationIdentifier;
}

- (SBSRemoteAlertConfigurationContext)configurationContext
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  sBSUI_remoteAlertComponent = [_FBSScene SBSUI_remoteAlertComponent];
  configurationContext = [sBSUI_remoteAlertComponent configurationContext];

  return configurationContext;
}

- (SBSRemoteAlertActivationContext)activationContext
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  sBSUI_remoteAlertComponent = [_FBSScene SBSUI_remoteAlertComponent];
  activationContext = [sBSUI_remoteAlertComponent activationContext];

  return activationContext;
}

- (void)deactivate
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  [_FBSScene updateClientSettings:&__block_literal_global_3_1];
}

- (void)invalidate
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  [_FBSScene updateClientSettings:&__block_literal_global_5];
}

- (void)setDisablesBanners:(BOOL)banners
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SBSUIRemoteAlertScene_setDisablesBanners___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  bannersCopy = banners;
  [_FBSScene updateClientSettings:v5];
}

- (void)setDisablesAlertItems:(BOOL)items
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SBSUIRemoteAlertScene_setDisablesAlertItems___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  itemsCopy = items;
  [_FBSScene updateClientSettings:v5];
}

- (void)setDisablesControlCenter:(BOOL)center
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SBSUIRemoteAlertScene_setDisablesControlCenter___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  centerCopy = center;
  [_FBSScene updateClientSettings:v5];
}

- (void)setDisablesSiri:(BOOL)siri
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SBSUIRemoteAlertScene_setDisablesSiri___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  siriCopy = siri;
  [_FBSScene updateClientSettings:v5];
}

- (void)setInteractiveScreenshotGestureDisabled:(BOOL)disabled
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SBSUIRemoteAlertScene_setInteractiveScreenshotGestureDisabled___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  disabledCopy = disabled;
  [_FBSScene updateClientSettings:v5];
}

- (void)setReachabilityDisabled:(BOOL)disabled
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SBSUIRemoteAlertScene_setReachabilityDisabled___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  disabledCopy = disabled;
  [_FBSScene updateClientSettings:v5];
}

- (void)setAllowsAlertStacking:(BOOL)stacking
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SBSUIRemoteAlertScene_setAllowsAlertStacking___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  stackingCopy = stacking;
  [_FBSScene updateClientSettings:v5];
}

- (void)setAllowsMenuButtonDismissal:(BOOL)dismissal
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSUIRemoteAlertScene_setAllowsMenuButtonDismissal___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  dismissalCopy = dismissal;
  [_FBSScene updateClientSettings:v5];
}

- (void)setDesiredHardwareButtonEvents:(unint64_t)events
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SBSUIRemoteAlertScene_setDesiredHardwareButtonEvents___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = events;
  [_FBSScene updateClientSettings:v5];
}

- (void)setContentOpaque:(BOOL)opaque
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SBSUIRemoteAlertScene_setContentOpaque___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  opaqueCopy = opaque;
  [_FBSScene updateClientSettings:v5];
}

- (void)setWallpaperStyle:(int64_t)style animationSettings:(id)settings
{
  settingsCopy = settings;
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SBSUIRemoteAlertScene_setWallpaperStyle_animationSettings___block_invoke;
  v9[3] = &unk_1E789F208;
  v10 = settingsCopy;
  styleCopy = style;
  v8 = settingsCopy;
  [_FBSScene updateClientSettings:v9];
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

- (void)setDismissalAnimationStyle:(int64_t)style
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SBSUIRemoteAlertScene_setDismissalAnimationStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = style;
  [_FBSScene updateClientSettings:v5];
}

- (void)setSwipeDismissalStyle:(int64_t)style
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SBSUIRemoteAlertScene_setSwipeDismissalStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = style;
  [_FBSScene updateClientSettings:v5];
}

- (void)setWhitePointAdaptivityStyle:(int64_t)style
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSUIRemoteAlertScene_setWhitePointAdaptivityStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v5[4] = style;
  [_FBSScene updateClientSettings:v5];
}

- (void)setBackgroundActivitiesToSuppress:(id)suppress animationSettings:(id)settings
{
  suppressCopy = suppress;
  settingsCopy = settings;
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__SBSUIRemoteAlertScene_setBackgroundActivitiesToSuppress_animationSettings___block_invoke;
  v11[3] = &unk_1E789DB48;
  v12 = suppressCopy;
  v13 = settingsCopy;
  v9 = settingsCopy;
  v10 = suppressCopy;
  [_FBSScene updateClientSettings:v11];
}

void __77__SBSUIRemoteAlertScene_setBackgroundActivitiesToSuppress_animationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 setBackgroundActivitiesToSuppress:v5];
  [v6 setAnimationSettings:*(a1 + 40)];
}

- (void)setContentOverlaysStatusBar:(BOOL)bar animationSettings:(id)settings
{
  settingsCopy = settings;
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__SBSUIRemoteAlertScene_setContentOverlaysStatusBar_animationSettings___block_invoke;
  v9[3] = &unk_1E789F230;
  barCopy = bar;
  v10 = settingsCopy;
  v8 = settingsCopy;
  [_FBSScene updateClientSettings:v9];
}

void __71__SBSUIRemoteAlertScene_setContentOverlaysStatusBar_animationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  [a2 setContentOverlaysStatusBar:v5];
  [v6 setAnimationSettings:*(a1 + 32)];
}

- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  reasonCopy = reason;
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SBSUIRemoteAlertScene_setIdleTimerDisabled_forReason___block_invoke;
  v9[3] = &unk_1E789F230;
  disabledCopy = disabled;
  v10 = reasonCopy;
  v8 = reasonCopy;
  [_FBSScene updateClientSettings:v9];
}

void __56__SBSUIRemoteAlertScene_setIdleTimerDisabled_forReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a3;
  [v5 setWantsIdleTimerDisabled:v4];
  [v5 setWantsIdleTimerDisabledReason:*(a1 + 32)];
}

- (void)setDesiredAutoLockDuration:(double)duration
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SBSUIRemoteAlertScene_setDesiredAutoLockDuration___block_invoke;
  v5[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  *&v5[4] = duration;
  [_FBSScene updateClientSettings:v5];
}

- (void)setDesiredIdleTimerSettings:(id)settings
{
  settingsCopy = settings;
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SBSUIRemoteAlertScene_setDesiredIdleTimerSettings___block_invoke;
  v7[3] = &unk_1E789DB20;
  v8 = settingsCopy;
  v6 = settingsCopy;
  [_FBSScene updateClientSettings:v7];
}

- (void)setOrientationChangedEventsDisabled:(BOOL)disabled
{
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SBSUIRemoteAlertScene_setOrientationChangedEventsDisabled___block_invoke;
  v5[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  disabledCopy = disabled;
  [_FBSScene updateClientSettings:v5];
}

- (void)setSceneDeactivationReason:(id)reason
{
  reasonCopy = reason;
  _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SBSUIRemoteAlertScene_setSceneDeactivationReason___block_invoke;
  v7[3] = &unk_1E789DB20;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [_FBSScene updateClientSettings:v7];
}

- (void)setInputHardwareEventsDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v15 = *MEMORY[0x1E69E9840];
  v5 = SBLogTransientOverlay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _FBSScene = [(SBSUIRemoteAlertScene *)self _FBSScene];
    identityToken = [_FBSScene identityToken];
    *buf = 138543618;
    v12 = identityToken;
    v13 = 1024;
    v14 = disabledCopy;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Remote alert scene %{public}@ setting input hardware events disabled: %d", buf, 0x12u);
  }

  _FBSScene2 = [(SBSUIRemoteAlertScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SBSUIRemoteAlertScene_setInputHardwareEventsDisabled___block_invoke;
  v9[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v10 = disabledCopy;
  [_FBSScene2 updateClientSettings:v9];
}

@end