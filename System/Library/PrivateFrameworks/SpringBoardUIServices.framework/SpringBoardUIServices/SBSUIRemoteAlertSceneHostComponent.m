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
- (void)_flushPendingTransitionersWithContext:(id)a3;
- (void)_performSafeSettingsUpdate:(id)a3;
- (void)_performSafeTransition:(id)a3;
- (void)didInvalidateForRemoteAlertServiceInvalidation;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4;
- (void)handleButtonActions:(id)a3;
- (void)scene:(id)a3 didPrepareUpdateWithContext:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
- (void)setActivationContext:(id)a3;
- (void)setConfigurationContext:(id)a3;
- (void)setConfigurationIdentifier:(id)a3;
- (void)setDefaultStatusBarHeightsForWindowScene:(id)a3;
- (void)setPreferredSceneDeactivationReason:(id)a3;
@end

@implementation SBSUIRemoteAlertSceneHostComponent

- (void)setConfigurationIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SBSUIRemoteAlertSceneHostComponent_setConfigurationIdentifier___block_invoke;
  v6[3] = &unk_1E789EB30;
  v7 = v4;
  v5 = v4;
  [(SBSUIRemoteAlertSceneHostComponent *)self _performSafeSettingsUpdate:v6];
}

- (void)setConfigurationContext:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SBSUIRemoteAlertSceneHostComponent_setConfigurationContext___block_invoke;
  v7[3] = &unk_1E78A02C0;
  v8 = v4;
  v6 = v4;
  [v5 configureParameters:v7];
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

- (void)setActivationContext:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v5 isActive];

  if (v6)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SBSUIRemoteAlertSceneHostComponent_setActivationContext___block_invoke;
    v13[3] = &unk_1E78A02E8;
    v7 = &v14;
    v14 = v4;
    v8 = v4;
    [(SBSUIRemoteAlertSceneHostComponent *)self _performSafeTransition:v13];
  }

  else
  {
    v9 = [(FBSSceneComponent *)self hostScene];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__SBSUIRemoteAlertSceneHostComponent_setActivationContext___block_invoke_2;
    v11[3] = &unk_1E78A02C0;
    v7 = &v12;
    v12 = v4;
    v10 = v4;
    [v9 configureParameters:v11];
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

- (void)setDefaultStatusBarHeightsForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v5 isActive];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 statusBarManager];
    v8 = [v7 statusBar];

    v9 = [(FBSSceneComponent *)self hostScene];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__SBSUIRemoteAlertSceneHostComponent_setDefaultStatusBarHeightsForWindowScene___block_invoke;
    v11[3] = &unk_1E78A02C0;
    v12 = v8;
    v10 = v8;
    [v9 configureParameters:v11];
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

- (void)setPreferredSceneDeactivationReason:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v5 isActive];

  if ((v6 & 1) == 0)
  {
    v7 = [(FBSSceneComponent *)self hostScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__SBSUIRemoteAlertSceneHostComponent_setPreferredSceneDeactivationReason___block_invoke;
    v8[3] = &unk_1E78A02C0;
    v9 = v4;
    [v7 configureParameters:v8];
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

- (void)_performSafeSettingsUpdate:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v5 isActive];

  v7 = [(FBSSceneComponent *)self hostScene];
  if (v6)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__SBSUIRemoteAlertSceneHostComponent__performSafeSettingsUpdate___block_invoke;
    v13[3] = &unk_1E78A0310;
    v8 = &v14;
    v14 = v4;
    v9 = v4;
    [v7 performUpdate:v13];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__SBSUIRemoteAlertSceneHostComponent__performSafeSettingsUpdate___block_invoke_2;
    v11[3] = &unk_1E78A0338;
    v8 = &v12;
    v12 = v4;
    v10 = v4;
    [v7 configureParameters:v11];
  }
}

- (void)_performSafeTransition:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = [(FBSSceneComponent *)self hostScene];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SBSUIRemoteAlertSceneHostComponent__performSafeTransition___block_invoke;
    v12[3] = &unk_1E78A0310;
    v13 = v4;
    [v7 performUpdate:v12];
  }

  else
  {
    pendingTransitioners = self->_pendingTransitioners;
    if (!pendingTransitioners)
    {
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = self->_pendingTransitioners;
      self->_pendingTransitioners = v9;

      pendingTransitioners = self->_pendingTransitioners;
    }

    v11 = MEMORY[0x1AC58E960](v4);
    [(NSMutableArray *)pendingTransitioners addObject:v11];
  }
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = [(FBSSceneComponent *)self hostScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__SBSUIRemoteAlertSceneHostComponent_handleButtonActions___block_invoke;
    v8[3] = &unk_1E789EDF8;
    v9 = v4;
    [v7 performUpdate:v8];
  }
}

- (void)didInvalidateForRemoteAlertServiceInvalidation
{
  v3 = [(FBSSceneComponent *)self hostScene];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = [(FBSSceneComponent *)self hostScene];
    [v5 performUpdate:&__block_literal_global_44];
  }
}

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __118__SBSUIRemoteAlertSceneHostComponent_didTransitionToAttachedToWindowedAccessory_windowedAccessoryCutoutFrameInScreen___block_invoke;
  v4[3] = &__block_descriptor_65_e33_v16__0__FBSMutableSceneSettings_8l;
  v6 = a3;
  v5 = a4;
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
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 isAttachedToWindowedAccessory];

  return v4;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  [v3 windowedAccessoryCutoutFrameInScreen];
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
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 allowsAlertStacking];

  return v4;
}

- (BOOL)isContentOpaque
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 isContentOpaque];

  return v4;
}

- (int64_t)dismissalAnimationStyle
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 dismissalAnimationStyle];

  return v4;
}

- (int64_t)swipeDismissalStyle
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 swipeDismissalStyle];

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];

  v4 = [v3 statusBarStyle];
  return v4;
}

- (int)preferredStatusBarVisibility
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];

  if ([v3 statusBarHidden] & 1) != 0 || (objc_msgSend(v3, "defaultStatusBarHidden"))
  {
    v4 = 1;
  }

  else if ([v3 contentOverlaysStatusBar])
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
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 backgroundActivitiesToSuppress];

  return v4;
}

- (double)desiredAutoLockDuration
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  [v3 desiredAutoLockDuration];
  v5 = v4;

  return v5;
}

- (SBUIRemoteAlertIdleTimerSettings)desiredIdleTimerSettings
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 desiredIdleTimerSettings];

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 supportedInterfaceOrientations];

  return v4;
}

- (BOOL)shouldDisableOrientationUpdates
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 orientationChangedEventsDisabled];

  return v4;
}

- (int64_t)whitePointAdaptivityStyle
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 whitePointAdaptivityStyle];

  return v4;
}

- (NSNumber)preferredSceneDeactivationReason
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 preferredSceneDeactivationReason];

  return v4;
}

- (BOOL)hidEventDeferringDisabled
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 hidEventDeferringDisabled];

  return v4;
}

- (void)scene:(id)a3 didPrepareUpdateWithContext:(id)a4
{
  v5 = [a4 transitionContext];
  [(SBSUIRemoteAlertSceneHostComponent *)self _flushPendingTransitionersWithContext:v5];
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v5 = [a4 transitionContext];
  [(SBSUIRemoteAlertSceneHostComponent *)self _flushPendingTransitionersWithContext:v5];
}

- (void)_flushPendingTransitionersWithContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 previousSettings];
  v10 = [v7 transitionContext];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v10 wantsInvalidation])
  {
    [WeakRetained remoteAlertSceneHostComponentDidInvalidate:self];
  }

  else
  {
    if ([v10 wantsDeactivation])
    {
      [WeakRetained remoteAlertSceneHostComponentDidDeactivate:self];
    }

    if ([v8 containsProperty:sel_allowsAlertStacking])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeAllowsAlertStacking:self];
    }

    if ([v8 containsProperty:sel_isContentOpaque])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeContentOpaque:self];
    }

    if ([v8 containsProperty:sel_dismissalAnimationStyle])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeDismissalAnimationStyle:self];
    }

    if ([v8 containsProperty:sel_swipeDismissalStyle])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeSwipeDismissalStyle:self];
    }

    if ([v8 containsProperty:sel_backgroundActivitiesToSuppress])
    {
      v12 = [v10 animationSettings];
      [WeakRetained remoteAlertSceneHostComponent:self didChangeBackgroundActivitiesToSuppressWithAnimationSettings:v12];
    }

    v13 = [v10 wantsIdleTimerDisabledReason];
    if (v13)
    {
      [WeakRetained remoteAlertSceneHostComponent:self didSetIdleTimerDisabled:objc_msgSend(v10 forReason:{"wantsIdleTimerDisabled"), v13}];
    }

    if ([v8 containsProperty:sel_desiredAutoLockDuration])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeDesiredAutoLockDuration:self];
    }

    if ([v8 containsProperty:sel_desiredIdleTimerSettings])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeDesiredIdleTimerSettings:self];
    }

    if ([v8 containsProperty:sel_orientationChangedEventsDisabled])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangeShouldDisableOrientationUpdates:self];
    }

    v14 = [v6 clientSettings];
    v15 = objc_opt_class();
    v16 = v14;
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
      v19 = v9;
      v20 = [v18 supportedInterfaceOrientations];
      if (v20 != [v19 supportedInterfaceOrientations])
      {
        [WeakRetained remoteAlertSceneHostComponentDidChangeSupportedInterfaceOrientations:self];
      }

      v21 = [v18 whitePointAdaptivityStyle];
      if (v21 != [v19 whitePointAdaptivityStyle])
      {
        [WeakRetained remoteAlertSceneHostComponentDidChangeWhitePointAdaptivityStyle:self];
      }

      v22 = [v18 statusBarHidden];
      if (v22 != [v19 statusBarHidden] || (v23 = objc_msgSend(v18, "statusBarStyle"), v23 != objc_msgSend(v19, "statusBarStyle")) || (v24 = objc_msgSend(v18, "contentOverlaysStatusBar"), v24 != objc_msgSend(v19, "contentOverlaysStatusBar")))
      {
        v25 = [v10 animationSettings];
        [WeakRetained remoteAlertSceneHostComponent:self didChangePreferredStatusBarVisibilityWithAnimationSettings:v25];
      }

      v26 = [v18 backgroundStyle];
      if (v26 != [v19 backgroundStyle])
      {
        v27 = [v10 animationSettings];
        [WeakRetained remoteAlertSceneHostComponent:self didChangeWallpaperStyleWithAnimationSettings:v27];
      }
    }

    if ([v8 containsProperty:sel_preferredSceneDeactivationReason])
    {
      [WeakRetained remoteAlertSceneHostComponentDidChangePreferredSceneDeactivationReason:self];
    }

    if ([v8 containsProperty:sel_hidEventDeferringDisabled])
    {
      v28 = SBLogTransientOverlay();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(SBSUIRemoteAlertSceneHostComponent *)self hidEventDeferringDisabled];
        [v6 identityToken];
        v30 = v31 = v9;
        *buf = 67109378;
        v33 = v29;
        v34 = 2114;
        v35 = v30;
        _os_log_impl(&dword_1A9A79000, v28, OS_LOG_TYPE_DEFAULT, "received new clientSetting for hidEventDeferringDisabled: %d for remote alert scene %{public}@", buf, 0x12u);

        v9 = v31;
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