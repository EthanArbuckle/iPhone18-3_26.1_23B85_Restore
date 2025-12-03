@interface SBSUIRemoteAlertSceneHostComponent
- (BOOL)allowsAlertStacking;
- (BOOL)hidEventDeferringDisabled;
- (BOOL)isAttachedToWindowedAccessory;
- (BOOL)isContentOpaque;
- (BOOL)shouldDisableOrientationUpdates;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (NSNumber)preferredSceneDeactivationReason;
- (NSSet)backgroundActivitiesToSuppress;
- (SBSUIRemoteAlertSceneHostComponentDelegate)delegate;
- (SBUIRemoteAlertIdleTimerSettings)desiredIdleTimerSettings;
- (double)desiredAutoLockDuration;
- (int)preferredStatusBarVisibility;
- (int64_t)dismissalAnimationStyle;
- (int64_t)preferredStatusBarStyle;
- (int64_t)swipeDismissalStyle;
- (int64_t)whitePointAdaptivityStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_flushPendingTransitionersWithContext:(id)context;
- (void)_performSafeSettingsUpdate:(id)update;
- (void)_performSafeTransition:(id)transition;
- (void)didInvalidateForRemoteAlertServiceInvalidation;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen;
- (void)handleButtonActions:(id)actions;
- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
- (void)setActivationContext:(id)context;
- (void)setConfigurationContext:(id)context;
- (void)setConfigurationIdentifier:(id)identifier;
- (void)setDefaultStatusBarHeightsForWindowScene:(id)scene;
- (void)setPreferredSceneDeactivationReason:(id)reason;
@end

@implementation SBSUIRemoteAlertSceneHostComponent

- (void)setConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SBSUIRemoteAlertSceneHostComponent_setConfigurationIdentifier___block_invoke;
  v6[3] = &unk_1E789EB30;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(SBSUIRemoteAlertSceneHostComponent *)self _performSafeSettingsUpdate:v6];
}

- (void)setConfigurationContext:(id)context
{
  contextCopy = context;
  hostScene = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SBSUIRemoteAlertSceneHostComponent_setConfigurationContext___block_invoke;
  v7[3] = &unk_1E78A02C0;
  v8 = contextCopy;
  v6 = contextCopy;
  [hostScene configureParameters:v7];
}

void __62__SBSUIRemoteAlertSceneHostComponent_setConfigurationContext___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__SBSUIRemoteAlertSceneHostComponent_setConfigurationContext___block_invoke_2;
  v3[3] = &unk_1E789FD38;
  v4 = *(a1 + 32);
  [a2 updateClientSettingsWithBlock:v3];
}

- (void)setActivationContext:(id)context
{
  contextCopy = context;
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if (isActive)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SBSUIRemoteAlertSceneHostComponent_setActivationContext___block_invoke;
    v13[3] = &unk_1E78A02E8;
    v7 = &v14;
    v14 = contextCopy;
    v8 = contextCopy;
    [(SBSUIRemoteAlertSceneHostComponent *)self _performSafeTransition:v13];
  }

  else
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__SBSUIRemoteAlertSceneHostComponent_setActivationContext___block_invoke_2;
    v11[3] = &unk_1E78A02C0;
    v7 = &v12;
    v12 = contextCopy;
    v10 = contextCopy;
    [hostScene2 configureParameters:v11];
  }
}

void __59__SBSUIRemoteAlertSceneHostComponent_setActivationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__SBSUIRemoteAlertSceneHostComponent_setActivationContext___block_invoke_3;
  v3[3] = &unk_1E789FD38;
  v4 = *(a1 + 32);
  [a2 updateClientSettingsWithBlock:v3];
}

- (void)setDefaultStatusBarHeightsForWindowScene:(id)scene
{
  sceneCopy = scene;
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if ((isActive & 1) == 0)
  {
    statusBarManager = [sceneCopy statusBarManager];
    statusBar = [statusBarManager statusBar];

    hostScene2 = [(FBSSceneComponent *)self hostScene];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__SBSUIRemoteAlertSceneHostComponent_setDefaultStatusBarHeightsForWindowScene___block_invoke;
    v11[3] = &unk_1E78A02C0;
    v12 = statusBar;
    v10 = statusBar;
    [hostScene2 configureParameters:v11];
  }
}

void __79__SBSUIRemoteAlertSceneHostComponent_setDefaultStatusBarHeightsForWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__SBSUIRemoteAlertSceneHostComponent_setDefaultStatusBarHeightsForWindowScene___block_invoke_2;
  v3[3] = &unk_1E789EB30;
  v4 = *(a1 + 32);
  [a2 updateSettingsWithBlock:v3];
}

void __79__SBSUIRemoteAlertSceneHostComponent_setDefaultStatusBarHeightsForWindowScene___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 heightForOrientation:1];
  [v4 setDefaultStatusBarHeight:1 forOrientation:?];
  [*(a1 + 32) heightForOrientation:2];
  [v4 setDefaultStatusBarHeight:2 forOrientation:?];
  [*(a1 + 32) heightForOrientation:4];
  [v4 setDefaultStatusBarHeight:4 forOrientation:?];
  [*(a1 + 32) heightForOrientation:3];
  [v4 setDefaultStatusBarHeight:3 forOrientation:?];
}

- (void)setPreferredSceneDeactivationReason:(id)reason
{
  reasonCopy = reason;
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if ((isActive & 1) == 0)
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__SBSUIRemoteAlertSceneHostComponent_setPreferredSceneDeactivationReason___block_invoke;
    v8[3] = &unk_1E78A02C0;
    v9 = reasonCopy;
    [hostScene2 configureParameters:v8];
  }
}

void __74__SBSUIRemoteAlertSceneHostComponent_setPreferredSceneDeactivationReason___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__SBSUIRemoteAlertSceneHostComponent_setPreferredSceneDeactivationReason___block_invoke_2;
  v3[3] = &unk_1E789FD38;
  v4 = *(a1 + 32);
  [a2 updateClientSettingsWithBlock:v3];
}

- (void)_performSafeSettingsUpdate:(id)update
{
  updateCopy = update;
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  hostScene2 = [(FBSSceneComponent *)self hostScene];
  if (isActive)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__SBSUIRemoteAlertSceneHostComponent__performSafeSettingsUpdate___block_invoke;
    v13[3] = &unk_1E78A0310;
    v8 = &v14;
    v14 = updateCopy;
    v9 = updateCopy;
    [hostScene2 performUpdate:v13];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__SBSUIRemoteAlertSceneHostComponent__performSafeSettingsUpdate___block_invoke_2;
    v11[3] = &unk_1E78A0338;
    v8 = &v12;
    v12 = updateCopy;
    v10 = updateCopy;
    [hostScene2 configureParameters:v11];
  }
}

- (void)_performSafeTransition:(id)transition
{
  transitionCopy = transition;
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if (isActive)
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SBSUIRemoteAlertSceneHostComponent__performSafeTransition___block_invoke;
    v12[3] = &unk_1E78A0310;
    v13 = transitionCopy;
    [hostScene2 performUpdate:v12];
  }

  else
  {
    pendingTransitioners = self->_pendingTransitioners;
    if (!pendingTransitioners)
    {
      array = [MEMORY[0x1E695DF70] array];
      v10 = self->_pendingTransitioners;
      self->_pendingTransitioners = array;

      pendingTransitioners = self->_pendingTransitioners;
    }

    v11 = MEMORY[0x1AC58E960](transitionCopy);
    [(NSMutableArray *)pendingTransitioners addObject:v11];
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if (isActive)
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__SBSUIRemoteAlertSceneHostComponent_handleButtonActions___block_invoke;
    v8[3] = &unk_1E789EDF8;
    v9 = actionsCopy;
    [hostScene2 performUpdate:v8];
  }
}

- (void)didInvalidateForRemoteAlertServiceInvalidation
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if (isActive)
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    [hostScene2 performUpdate:&__block_literal_global_44];
  }
}

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __118__SBSUIRemoteAlertSceneHostComponent_didTransitionToAttachedToWindowedAccessory_windowedAccessoryCutoutFrameInScreen___block_invoke;
  v4[3] = &__block_descriptor_65_e33_v16__0__FBSMutableSceneSettings_8l;
  accessoryCopy = accessory;
  screenCopy = screen;
  [(SBSUIRemoteAlertSceneHostComponent *)self _performSafeSettingsUpdate:v4];
}

void __118__SBSUIRemoteAlertSceneHostComponent_didTransitionToAttachedToWindowedAccessory_windowedAccessoryCutoutFrameInScreen___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  [v4 setAttachedToWindowedAccessory:v3];
  [v4 setWindowedAccessoryCutoutFrameInScreen:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
}

- (BOOL)isAttachedToWindowedAccessory
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  isAttachedToWindowedAccessory = [settings isAttachedToWindowedAccessory];

  return isAttachedToWindowedAccessory;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  [settings windowedAccessoryCutoutFrameInScreen];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)allowsAlertStacking
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  allowsAlertStacking = [clientSettings allowsAlertStacking];

  return allowsAlertStacking;
}

- (BOOL)isContentOpaque
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  isContentOpaque = [clientSettings isContentOpaque];

  return isContentOpaque;
}

- (int64_t)dismissalAnimationStyle
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  dismissalAnimationStyle = [clientSettings dismissalAnimationStyle];

  return dismissalAnimationStyle;
}

- (int64_t)swipeDismissalStyle
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  swipeDismissalStyle = [clientSettings swipeDismissalStyle];

  return swipeDismissalStyle;
}

- (int64_t)preferredStatusBarStyle
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];

  statusBarStyle = [clientSettings statusBarStyle];
  return statusBarStyle;
}

- (int)preferredStatusBarVisibility
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];

  if ([clientSettings statusBarHidden] & 1) != 0 || (objc_msgSend(clientSettings, "defaultStatusBarHidden"))
  {
    v4 = 1;
  }

  else if ([clientSettings contentOverlaysStatusBar])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (NSSet)backgroundActivitiesToSuppress
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  backgroundActivitiesToSuppress = [clientSettings backgroundActivitiesToSuppress];

  return backgroundActivitiesToSuppress;
}

- (double)desiredAutoLockDuration
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  [clientSettings desiredAutoLockDuration];
  v5 = v4;

  return v5;
}

- (SBUIRemoteAlertIdleTimerSettings)desiredIdleTimerSettings
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  desiredIdleTimerSettings = [clientSettings desiredIdleTimerSettings];

  return desiredIdleTimerSettings;
}

- (unint64_t)supportedInterfaceOrientations
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  supportedInterfaceOrientations = [clientSettings supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (BOOL)shouldDisableOrientationUpdates
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  orientationChangedEventsDisabled = [clientSettings orientationChangedEventsDisabled];

  return orientationChangedEventsDisabled;
}

- (int64_t)whitePointAdaptivityStyle
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  whitePointAdaptivityStyle = [clientSettings whitePointAdaptivityStyle];

  return whitePointAdaptivityStyle;
}

- (NSNumber)preferredSceneDeactivationReason
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  preferredSceneDeactivationReason = [clientSettings preferredSceneDeactivationReason];

  return preferredSceneDeactivationReason;
}

- (BOOL)hidEventDeferringDisabled
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  hidEventDeferringDisabled = [clientSettings hidEventDeferringDisabled];

  return hidEventDeferringDisabled;
}

- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context
{
  transitionContext = [context transitionContext];
  [(SBSUIRemoteAlertSceneHostComponent *)self _flushPendingTransitionersWithContext:transitionContext];
}

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  transitionContext = [settings transitionContext];
  [(SBSUIRemoteAlertSceneHostComponent *)self _flushPendingTransitionersWithContext:transitionContext];
}

- (void)_flushPendingTransitionersWithContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(NSMutableArray *)self->_pendingTransitioners count])
  {
    v5 = [(NSMutableArray *)self->_pendingTransitioners copy];
    pendingTransitioners = self->_pendingTransitioners;
    self->_pendingTransitioners = 0;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  v36 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([transitionContext wantsInvalidation])
  {
    [WeakRetained remoteAlertSceneHostComponentDidInvalidate:self];
  }

  else
  {
    if ([transitionContext wantsDeactivation])
    {
      [WeakRetained remoteAlertSceneHostComponentDidDeactivate:self];
    }

    if ([settingsDiff containsProperty:sel_allowsAlertStacking])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeAllowsAlertStacking:self];
    }

    if ([settingsDiff containsProperty:sel_isContentOpaque])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeContentOpaque:self];
    }

    if ([settingsDiff containsProperty:sel_dismissalAnimationStyle])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeDismissalAnimationStyle:self];
    }

    if ([settingsDiff containsProperty:sel_swipeDismissalStyle])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeSwipeDismissalStyle:self];
    }

    if ([settingsDiff containsProperty:sel_backgroundActivitiesToSuppress])
    {
      animationSettings = [transitionContext animationSettings];
      [WeakRetained remoteAlertSceneHostComponent:self didChangeBackgroundActivitiesToSuppressWithAnimationSettings:animationSettings];
    }

    wantsIdleTimerDisabledReason = [transitionContext wantsIdleTimerDisabledReason];
    if (wantsIdleTimerDisabledReason)
    {
      [WeakRetained remoteAlertSceneHostComponent:self didSetIdleTimerDisabled:objc_msgSend(transitionContext forReason:{"wantsIdleTimerDisabled"), wantsIdleTimerDisabledReason}];
    }

    if ([settingsDiff containsProperty:sel_desiredAutoLockDuration])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeDesiredAutoLockDuration:self];
    }

    if ([settingsDiff containsProperty:sel_desiredIdleTimerSettings])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeDesiredIdleTimerSettings:self];
    }

    if ([settingsDiff containsProperty:sel_orientationChangedEventsDisabled])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeShouldDisableOrientationUpdates:self];
    }

    clientSettings = [sceneCopy clientSettings];
    v15 = objc_opt_class();
    v16 = clientSettings;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      v19 = previousSettings;
      supportedInterfaceOrientations = [v18 supportedInterfaceOrientations];
      if (supportedInterfaceOrientations != [v19 supportedInterfaceOrientations])
      {
        [WeakRetained remoteAlertSceneHostComponentDidChangeSupportedInterfaceOrientations:self];
      }

      whitePointAdaptivityStyle = [v18 whitePointAdaptivityStyle];
      if (whitePointAdaptivityStyle != [v19 whitePointAdaptivityStyle])
      {
        [WeakRetained remoteAlertSceneHostComponentDidChangeWhitePointAdaptivityStyle:self];
      }

      statusBarHidden = [v18 statusBarHidden];
      if (statusBarHidden != [v19 statusBarHidden] || (v23 = objc_msgSend(v18, "statusBarStyle"), v23 != objc_msgSend(v19, "statusBarStyle")) || (v24 = objc_msgSend(v18, "contentOverlaysStatusBar"), v24 != objc_msgSend(v19, "contentOverlaysStatusBar")))
      {
        animationSettings2 = [transitionContext animationSettings];
        [WeakRetained remoteAlertSceneHostComponent:self didChangePreferredStatusBarVisibilityWithAnimationSettings:animationSettings2];
      }

      backgroundStyle = [v18 backgroundStyle];
      if (backgroundStyle != [v19 backgroundStyle])
      {
        animationSettings3 = [transitionContext animationSettings];
        [WeakRetained remoteAlertSceneHostComponent:self didChangeWallpaperStyleWithAnimationSettings:animationSettings3];
      }
    }

    if ([settingsDiff containsProperty:sel_preferredSceneDeactivationReason])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangePreferredSceneDeactivationReason:self];
    }

    if ([settingsDiff containsProperty:sel_hidEventDeferringDisabled])
    {
      v28 = SBLogTransientOverlay();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        hidEventDeferringDisabled = [(SBSUIRemoteAlertSceneHostComponent *)self hidEventDeferringDisabled];
        [sceneCopy identityToken];
        v30 = v31 = previousSettings;
        *buf = 67109378;
        v33 = hidEventDeferringDisabled;
        v34 = 2114;
        v35 = v30;
        _os_log_impl(&dword_1A9A79000, v28, OS_LOG_TYPE_DEFAULT, "received new clientSetting for hidEventDeferringDisabled: %d for remote alert scene %{public}@", buf, 0x12u);

        previousSettings = v31;
      }

      [WeakRetained remoteAlertSceneHostComponentDidChangeHIDEventDeferringDisabled:self];
    }
  }
}

- (SBSUIRemoteAlertSceneHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end