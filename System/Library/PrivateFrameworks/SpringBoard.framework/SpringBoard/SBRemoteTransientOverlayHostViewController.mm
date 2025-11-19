@interface SBRemoteTransientOverlayHostViewController
- (BOOL)becomeFirstResponder;
- (BOOL)handleDoubleHeightStatusBarTap;
- (BOOL)isContentOpaque;
- (BOOL)resignFirstResponder;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (SBRemoteTransientOverlayHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBRemoteTransientOverlayHostViewControllerDelegate)delegate;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int)_preferredStatusBarVisibility;
- (int64_t)preferredStatusBarStyle;
- (void)_participateInSystemAnimationFence:(id)a3;
- (void)_pendOrExecuteDelegateCallout:(id)a3;
- (void)_setDesiredHardwareButtonEvents:(unint64_t)a3;
- (void)_updateContentOverlayInsetsFromParentIfNecessary;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)deactivate;
- (void)didInvalidateForRemoteAlert;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4;
- (void)dismissForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)invalidate;
- (void)prepareForActivationWithContext:(id)a3 presentationMode:(int64_t)a4 completion:(id)a5;
- (void)presentForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4;
- (void)preserveInputViewsAnimated:(BOOL)a3;
- (void)restoreInputViewsAnimated:(BOOL)a3;
- (void)setAllowsAlertItems:(BOOL)a3;
- (void)setAllowsBanners:(BOOL)a3;
- (void)setAllowsControlCenter:(BOOL)a3;
- (void)setAllowsMenuButtonDismissal:(BOOL)a3;
- (void)setAllowsSiri:(BOOL)a3;
- (void)setBackgroundActivitiesToCancel:(id)a3 animationSettings:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setDesiredAutoLockDuration:(double)a3;
- (void)setDesiredIdleTimerSettings:(id)a3;
- (void)setDismissalAnimationStyle:(int64_t)a3;
- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setInteractiveScreenshotGestureDisabled:(BOOL)a3;
- (void)setLaunchingInterfaceOrientation:(int64_t)a3;
- (void)setOrientationChangedEventsEnabled:(BOOL)a3;
- (void)setReachabilityDisabled:(BOOL)a3;
- (void)setSceneDeactivationReason:(id)a3;
- (void)setShouldIgnoreContentOverlayInsetUpdates:(BOOL)a3;
- (void)setStatusBarHidden:(BOOL)a3 withDuration:(double)a4;
- (void)setStyleOverridesToCancel:(unint64_t)a3 animationSettings:(id)a4;
- (void)setSwipeDismissalStyle:(int64_t)a3;
- (void)setWallpaperStyle:(int64_t)a3 withDuration:(double)a4;
- (void)setWallpaperTunnelActive:(BOOL)a3;
- (void)setWhitePointAdaptivityStyle:(int64_t)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SBRemoteTransientOverlayHostViewController

- (SBRemoteTransientOverlayHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayHostViewController;
  v4 = [(SBRemoteTransientOverlayHostViewController *)&v10 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    preferredSceneDeactivationReasonValue = v4->_preferredSceneDeactivationReasonValue;
    v4->_preferredSceneDeactivationReasonValue = &unk_283371540;

    v7 = [MEMORY[0x277CBEB98] set];
    preferredBackgroundActivitiesToSuppress = v5->_preferredBackgroundActivitiesToSuppress;
    v5->_preferredBackgroundActivitiesToSuppress = v7;

    v5->_requestedBackgroundStyle = 0;
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeWeak(&self->_delegate, v4);
    if (v4)
    {
      if (!WeakRetained)
      {
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v6 = [(NSMutableArray *)self->_pendedDelegateCalloutBlocks copy];
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v13;
          do
          {
            v10 = 0;
            do
            {
              if (*v13 != v9)
              {
                objc_enumerationMutation(v6);
              }

              (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          }

          while (v8);
        }

        pendedDelegateCalloutBlocks = self->_pendedDelegateCalloutBlocks;
        self->_pendedDelegateCalloutBlocks = 0;
      }
    }
  }
}

- (void)_pendOrExecuteDelegateCallout:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v10[2]();
  }

  else
  {
    pendedDelegateCalloutBlocks = self->_pendedDelegateCalloutBlocks;
    if (!pendedDelegateCalloutBlocks)
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v7 = self->_pendedDelegateCalloutBlocks;
      self->_pendedDelegateCalloutBlocks = v6;

      pendedDelegateCalloutBlocks = self->_pendedDelegateCalloutBlocks;
    }

    v8 = [v10 copy];
    v9 = MEMORY[0x223D6F7F0]();
    [(NSMutableArray *)pendedDelegateCalloutBlocks addObject:v9];
  }
}

- (id)succinctDescription
{
  v2 = [(SBRemoteTransientOverlayHostViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(_UIRemoteViewController *)self serviceBundleIdentifier];
  v5 = [v3 appendObject:v4 withName:@"serviceBundleIdentifier"];

  v6 = [v3 appendInt64:-[_UIRemoteViewController serviceProcessIdentifier](self withName:{"serviceProcessIdentifier"), @"servicePID"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBRemoteTransientOverlayHostViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (BOOL)handleDoubleHeightStatusBarTap
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 handleDoubleHeightStatusBarTap];

  return 1;
}

- (void)didInvalidateForRemoteAlert
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 didInvalidateForRemoteAlert];
}

- (void)setAllowsBanners:(BOOL)a3
{
  if (self->_shouldDisableBanners != !a3)
  {
    self->_shouldDisableBanners = !a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__SBRemoteTransientOverlayHostViewController_setAllowsBanners___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __63__SBRemoteTransientOverlayHostViewController_setAllowsBanners___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:v3];
    }

    WeakRetained = v3;
  }
}

- (void)setAllowsAlertItems:(BOOL)a3
{
  if (self->_shouldPendAlertItems != !a3)
  {
    self->_shouldPendAlertItems = !a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__SBRemoteTransientOverlayHostViewController_setAllowsAlertItems___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __66__SBRemoteTransientOverlayHostViewController_setAllowsAlertItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:v3];
    }

    WeakRetained = v3;
  }
}

- (void)setAllowsControlCenter:(BOOL)a3
{
  if (self->_shouldDisableControlCenter != !a3)
  {
    self->_shouldDisableControlCenter = !a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __69__SBRemoteTransientOverlayHostViewController_setAllowsControlCenter___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __69__SBRemoteTransientOverlayHostViewController_setAllowsControlCenter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:v3];
    }

    WeakRetained = v3;
  }
}

- (void)setAllowsSiri:(BOOL)a3
{
  if (self->_shouldDisableSiri != !a3)
  {
    self->_shouldDisableSiri = !a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60__SBRemoteTransientOverlayHostViewController_setAllowsSiri___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __60__SBRemoteTransientOverlayHostViewController_setAllowsSiri___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:v3];
    }

    WeakRetained = v3;
  }
}

- (void)deactivate
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SBRemoteTransientOverlayHostViewController_deactivate__block_invoke;
  v3[3] = &unk_2783A8C68;
  objc_copyWeak(&v4, &location);
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __56__SBRemoteTransientOverlayHostViewController_deactivate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerRequestsDeactivation:v3];

    WeakRetained = v3;
  }
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SBRemoteTransientOverlayHostViewController_invalidate__block_invoke;
  v3[3] = &unk_2783A8C68;
  objc_copyWeak(&v4, &location);
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __56__SBRemoteTransientOverlayHostViewController_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerRequestsInvalidation:v3];

    WeakRetained = v3;
  }
}

- (void)_setDesiredHardwareButtonEvents:(unint64_t)a3
{
  if (self->_preferredHardwareButtonEvents != a3)
  {
    self->_preferredHardwareButtonEvents = a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __78__SBRemoteTransientOverlayHostViewController__setDesiredHardwareButtonEvents___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __78__SBRemoteTransientOverlayHostViewController__setDesiredHardwareButtonEvents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerDidChangeDesiredHardwareButtonEvents:v3];

    WeakRetained = v3;
  }
}

- (void)setWallpaperTunnelActive:(BOOL)a3
{
  if (self->_prefersWallpaperTunnelActive != a3)
  {
    self->_prefersWallpaperTunnelActive = a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__SBRemoteTransientOverlayHostViewController_setWallpaperTunnelActive___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __71__SBRemoteTransientOverlayHostViewController_setWallpaperTunnelActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerDidChangePrefersWallpaperTunnel:v3];

    WeakRetained = v3;
  }
}

- (void)setWallpaperStyle:(int64_t)a3 withDuration:(double)a4
{
  if (self->_requestedBackgroundStyle != a3)
  {
    self->_requestedBackgroundStyle = a3;
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__SBRemoteTransientOverlayHostViewController_setWallpaperStyle_withDuration___block_invoke;
    v6[3] = &unk_2783AFE38;
    objc_copyWeak(v7, &location);
    v7[1] = *&a4;
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v6];
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __77__SBRemoteTransientOverlayHostViewController_setWallpaperStyle_withDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    if (BSFloatGreaterThanFloat())
    {
      v4 = [MEMORY[0x277CF0B70] settingsWithDuration:*(a1 + 40)];
      [v3 remoteTransientOverlayHostViewControllerDidChangeRequestedBackgroundStyle:v5 withAnimationSettings:v4];
    }

    else
    {
      [v3 remoteTransientOverlayHostViewControllerDidChangeRequestedBackgroundStyle:v5 withAnimationSettings:0];
    }

    WeakRetained = v5;
  }
}

- (void)setAllowsMenuButtonDismissal:(BOOL)a3
{
  if (self->_allowsHomeButtonDismissal != a3)
  {
    self->_allowsHomeButtonDismissal = a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__SBRemoteTransientOverlayHostViewController_setAllowsMenuButtonDismissal___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __75__SBRemoteTransientOverlayHostViewController_setAllowsMenuButtonDismissal___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerDidChangeAllowsMenuButtonDismissal:v3];

    WeakRetained = v3;
  }
}

- (void)setDismissalAnimationStyle:(int64_t)a3
{
  if (self->_dismissalAnimationStyle != a3)
  {
    self->_dismissalAnimationStyle = a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __73__SBRemoteTransientOverlayHostViewController_setDismissalAnimationStyle___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __73__SBRemoteTransientOverlayHostViewController_setDismissalAnimationStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerDidChangeDismissalAnimationStyle:v3];

    WeakRetained = v3;
  }
}

- (void)setSwipeDismissalStyle:(int64_t)a3
{
  if (self->_swipeDismissalStyle != a3)
  {
    self->_swipeDismissalStyle = a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __69__SBRemoteTransientOverlayHostViewController_setSwipeDismissalStyle___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __69__SBRemoteTransientOverlayHostViewController_setSwipeDismissalStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerDidChangeSwipeDismissalStyle:v3];

    WeakRetained = v3;
  }
}

- (void)setStyleOverridesToCancel:(unint64_t)a3 animationSettings:(id)a4
{
  v5 = a4;
  v6 = STUIBackgroundActivityIdentifiersForStyleOverrides();
  [(SBRemoteTransientOverlayHostViewController *)self setBackgroundActivitiesToCancel:v6 animationSettings:v5];
}

- (void)setBackgroundActivitiesToCancel:(id)a3 animationSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 copy];
  preferredBackgroundActivitiesToSuppress = self->_preferredBackgroundActivitiesToSuppress;
  self->_preferredBackgroundActivitiesToSuppress = v8;

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__SBRemoteTransientOverlayHostViewController_setBackgroundActivitiesToCancel_animationSettings___block_invoke;
  v11[3] = &unk_2783A9CE8;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __96__SBRemoteTransientOverlayHostViewController_setBackgroundActivitiesToCancel_animationSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    [v3 remoteTransientOverlayHostViewController:v4 didChangeBackgroundActivitiesToSuppressWithAnimationSettings:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4
{
  v6 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__SBRemoteTransientOverlayHostViewController_setIdleTimerDisabled_forReason___block_invoke;
    v7[3] = &unk_2783B1280;
    objc_copyWeak(&v9, &location);
    v10 = a3;
    v8 = v6;
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __77__SBRemoteTransientOverlayHostViewController_setIdleTimerDisabled_forReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    [v3 remoteTransientOverlayHostViewController:v4 didSetIdleTimerDisabled:*(a1 + 48) forReason:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)setDesiredAutoLockDuration:(double)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SBRemoteTransientOverlayHostViewController_setDesiredAutoLockDuration___block_invoke;
  v5[3] = &unk_2783AFE38;
  objc_copyWeak(v6, &location);
  v6[1] = *&a3;
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __73__SBRemoteTransientOverlayHostViewController_setDesiredAutoLockDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    [v3 remoteTransientOverlayHostViewController:v4 didSetDesiredAutoLockDuration:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)setStatusBarHidden:(BOOL)a3 withDuration:(double)a4
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  self->_preferredStatusBarVisibility = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SBRemoteTransientOverlayHostViewController_setStatusBarHidden_withDuration___block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:a4];
}

- (void)setInteractiveScreenshotGestureDisabled:(BOOL)a3
{
  if (self->_shouldDisableInteractiveScreenshotGesture != a3)
  {
    self->_shouldDisableInteractiveScreenshotGesture = a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __86__SBRemoteTransientOverlayHostViewController_setInteractiveScreenshotGestureDisabled___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __86__SBRemoteTransientOverlayHostViewController_setInteractiveScreenshotGestureDisabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:v3];
    }

    WeakRetained = v3;
  }
}

- (void)setLaunchingInterfaceOrientation:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__SBRemoteTransientOverlayHostViewController_setLaunchingInterfaceOrientation___block_invoke;
  v5[3] = &unk_2783AFE38;
  objc_copyWeak(v6, &location);
  v6[1] = a3;
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __79__SBRemoteTransientOverlayHostViewController_setLaunchingInterfaceOrientation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    [v3 remoteTransientOverlayHostViewController:v4 didChangeLaunchingInterfaceOrientation:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)setOrientationChangedEventsEnabled:(BOOL)a3
{
  if (self->_shouldDisableOrientationUpdates != !a3)
  {
    self->_shouldDisableOrientationUpdates = !a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __81__SBRemoteTransientOverlayHostViewController_setOrientationChangedEventsEnabled___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __81__SBRemoteTransientOverlayHostViewController_setOrientationChangedEventsEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangeShouldDisableOrientationUpdates:v3];
    }

    WeakRetained = v3;
  }
}

- (void)setWhitePointAdaptivityStyle:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__SBRemoteTransientOverlayHostViewController_setWhitePointAdaptivityStyle___block_invoke;
  v5[3] = &unk_2783AFE38;
  objc_copyWeak(v6, &location);
  v6[1] = a3;
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __75__SBRemoteTransientOverlayHostViewController_setWhitePointAdaptivityStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    [v3 remoteTransientOverlayHostViewController:v4 didChangeWhitePointAdaptivityStyle:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)setDesiredIdleTimerSettings:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SBRemoteTransientOverlayHostViewController_setDesiredIdleTimerSettings___block_invoke;
  v6[3] = &unk_2783A9CE8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __74__SBRemoteTransientOverlayHostViewController_setDesiredIdleTimerSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    [v3 remoteTransientOverlayHostViewController:v4 didSetDesiredIdleTimerSettings:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)setReachabilityDisabled:(BOOL)a3
{
  if (self->_shouldDisableReachability != a3)
  {
    self->_shouldDisableReachability = a3;
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __70__SBRemoteTransientOverlayHostViewController_setReachabilityDisabled___block_invoke;
    v4[3] = &unk_2783A8C68;
    objc_copyWeak(&v5, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __70__SBRemoteTransientOverlayHostViewController_setReachabilityDisabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:v3];
    }

    WeakRetained = v3;
  }
}

- (void)setSceneDeactivationReason:(id)a3
{
  v4 = a3;
  preferredSceneDeactivationReasonValue = self->_preferredSceneDeactivationReasonValue;
  if (preferredSceneDeactivationReasonValue != v4 && ([(NSNumber *)preferredSceneDeactivationReasonValue isEqual:v4]& 1) == 0)
  {
    v6 = [(NSNumber *)v4 copy];
    v7 = self->_preferredSceneDeactivationReasonValue;
    self->_preferredSceneDeactivationReasonValue = v6;

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__SBRemoteTransientOverlayHostViewController_setSceneDeactivationReason___block_invoke;
    v8[3] = &unk_2783A8C68;
    objc_copyWeak(&v9, &location);
    [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __73__SBRemoteTransientOverlayHostViewController_setSceneDeactivationReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    if (objc_opt_respondsToSelector())
    {
      [v2 remoteTransientOverlayHostViewControllerDidChangePreferredSceneDeactivationReasonValue:v3];
    }

    WeakRetained = v3;
  }
}

- (void)_participateInSystemAnimationFence:(id)a3
{
  if (a3)
  {
    [MEMORY[0x277D75940] _synchronizeDrawingWithFence:?];
  }

  else
  {
    [MEMORY[0x277D75940] _synchronizeDrawing];
  }
}

- (BOOL)becomeFirstResponder
{
  v3 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v3 sb_becomeFirstResponder];

  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayHostViewController;
  return [(SBRemoteTransientOverlayHostViewController *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v3 sb_resignFirstResponder];

  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayHostViewController;
  return [(SBRemoteTransientOverlayHostViewController *)&v5 resignFirstResponder];
}

- (int64_t)preferredStatusBarStyle
{
  if (self->_preferredStatusBarStyleValue)
  {
    preferredStatusBarStyleValue = self->_preferredStatusBarStyleValue;

    return [(NSNumber *)preferredStatusBarStyleValue integerValue];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SBRemoteTransientOverlayHostViewController;
    return [(_UIRemoteViewController *)&v6 preferredStatusBarStyle];
  }
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayHostViewController;
  [(_UIRemoteViewController *)&v10 viewServiceDidTerminateWithError:v4];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SBRemoteTransientOverlayHostViewController_viewServiceDidTerminateWithError___block_invoke;
  v6[3] = &unk_2783A9CE8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __79__SBRemoteTransientOverlayHostViewController_viewServiceDidTerminateWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 133);
    [v3 remoteTransientOverlayHostViewController:v4 didTerminateWithError:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_updateContentOverlayInsetsFromParentIfNecessary
{
  if (!self->_shouldIgnoreContentOverlayInsetUpdates)
  {
    v2.receiver = self;
    v2.super_class = SBRemoteTransientOverlayHostViewController;
    [(SBRemoteTransientOverlayHostViewController *)&v2 _updateContentOverlayInsetsFromParentIfNecessary];
  }
}

- (int)_preferredStatusBarVisibility
{
  preferredStatusBarVisibility = self->_preferredStatusBarVisibility;
  if (!preferredStatusBarVisibility)
  {
    v4.receiver = self;
    v4.super_class = SBRemoteTransientOverlayHostViewController;
    return [(_UIRemoteViewController *)&v4 _preferredStatusBarVisibility];
  }

  return preferredStatusBarVisibility;
}

- (void)setShouldIgnoreContentOverlayInsetUpdates:(BOOL)a3
{
  if (self->_shouldIgnoreContentOverlayInsetUpdates != a3)
  {
    self->_shouldIgnoreContentOverlayInsetUpdates = a3;
    if (!a3)
    {
      v6 = v3;
      v7 = v4;
      v5.receiver = self;
      v5.super_class = SBRemoteTransientOverlayHostViewController;
      [(SBRemoteTransientOverlayHostViewController *)&v5 _updateContentOverlayInsetsFromParentIfNecessary];
    }
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 legacyAlertOptions];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 bs_safeDictionaryForKey:*MEMORY[0x277D67200]];
    if (v10)
    {
      v11 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
      [v11 setUserInfo:v10];
    }

    if ([v9 bs_BOOLForKey:*MEMORY[0x277D67210]])
    {
      [(SBRemoteTransientOverlayHostViewController *)self setWallpaperTunnelActive:1];
    }

    if ([v9 bs_BOOLForKey:*MEMORY[0x277D671C0]])
    {
      [(SBRemoteTransientOverlayHostViewController *)self setAllowsMenuButtonDismissal:1];
    }

    if ([v9 bs_BOOLForKey:{*MEMORY[0x277D671A0], v10}])
    {
      [(SBRemoteTransientOverlayHostViewController *)self setAllowsAlertItems:1];
    }

    v12 = [v9 bs_safeNumberForKey:*MEMORY[0x277D671C8]];
    v13 = v12;
    if (v12)
    {
      -[SBRemoteTransientOverlayHostViewController setDismissalAnimationStyle:](self, "setDismissalAnimationStyle:", [v12 integerValue]);
    }

    v14 = [v9 bs_safeNumberForKey:*MEMORY[0x277D671F8]];
    v15 = v14;
    if (v14)
    {
      -[SBRemoteTransientOverlayHostViewController setSwipeDismissalStyle:](self, "setSwipeDismissalStyle:", [v14 integerValue]);
    }

    v16 = [v9 bs_safeNumberForKey:*MEMORY[0x277D671E0]];
    v17 = v16;
    if (v16)
    {
      -[SBRemoteTransientOverlayHostViewController setLaunchingInterfaceOrientation:](self, "setLaunchingInterfaceOrientation:", [v16 integerValue]);
    }

    v18 = [v9 bs_safeNumberForKey:*MEMORY[0x277D671D0]];
    if (v18)
    {
      objc_storeStrong(&self->_hasTranslucentContentValue, v18);
      objc_initWeak(location, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __78__SBRemoteTransientOverlayHostViewController_configureWithContext_completion___block_invoke;
      v31[3] = &unk_2783A8C68;
      objc_copyWeak(&v32, location);
      [(SBRemoteTransientOverlayHostViewController *)self _pendOrExecuteDelegateCallout:v31];
      objc_destroyWeak(&v32);
      objc_destroyWeak(location);
    }

    v19 = [v9 bs_safeNumberForKey:*MEMORY[0x277D671D8]];
    v20 = v19;
    if (v19)
    {
      -[SBRemoteTransientOverlayHostViewController setWallpaperStyle:withDuration:](self, "setWallpaperStyle:withDuration:", [v19 integerValue], 0.0);
    }

    if ([v9 bs_BOOLForKey:*MEMORY[0x277D671B8]])
    {
      [(SBRemoteTransientOverlayHostViewController *)self setShouldDisableFadeInAnimation:1];
    }

    if ([v9 bs_BOOLForKey:*MEMORY[0x277D671F0]])
    {
      [(SBRemoteTransientOverlayHostViewController *)self setAllowsSiri:0];
    }

    v21 = [v9 bs_safeNumberForKey:*MEMORY[0x277D671E8]];
    if (v21)
    {
      objc_storeStrong(&self->_preferredStatusBarStyleValue, v21);
      [(SBRemoteTransientOverlayHostViewController *)self setNeedsStatusBarAppearanceUpdate];
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __78__SBRemoteTransientOverlayHostViewController_configureWithContext_completion___block_invoke_2;
  v29[3] = &unk_2783A9FC8;
  v30 = v7;
  v22 = v7;
  v23 = MEMORY[0x223D6F7F0](v29);
  v24 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v23];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__SBRemoteTransientOverlayHostViewController_configureWithContext_completion___block_invoke_4;
  v27[3] = &unk_2783A9348;
  v28 = v23;
  v25 = v23;
  [v24 configureWithContext:v6 completion:v27];
}

void __78__SBRemoteTransientOverlayHostViewController_configureWithContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 133);
    [v2 remoteTransientOverlayHostViewControllerDidChangeContentOpaque:v3];

    WeakRetained = v3;
  }
}

void __78__SBRemoteTransientOverlayHostViewController_configureWithContext_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

uint64_t __78__SBRemoteTransientOverlayHostViewController_configureWithContext_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prepareForActivationWithContext:(id)a3 presentationMode:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 activityContinuationIdentifier];
  if (v10)
  {
    v11 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v11 noteActivatedForActivityContinuationWithIdentifier:v10];
  }

  v12 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v12 noteActivatedWithPresentationMode:a4];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__SBRemoteTransientOverlayHostViewController_prepareForActivationWithContext_presentationMode_completion___block_invoke;
  v19[3] = &unk_2783A9FC8;
  v20 = v8;
  v13 = v8;
  v14 = MEMORY[0x223D6F7F0](v19);
  v15 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __106__SBRemoteTransientOverlayHostViewController_prepareForActivationWithContext_presentationMode_completion___block_invoke_3;
  v17[3] = &unk_2783A9348;
  v18 = v14;
  v16 = v14;
  [v15 prepareForActivationWithContext:v9 completion:v17];
}

void __106__SBRemoteTransientOverlayHostViewController_prepareForActivationWithContext_presentationMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  BSDispatchMain();
}

uint64_t __106__SBRemoteTransientOverlayHostViewController_prepareForActivationWithContext_presentationMode_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)preserveInputViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v4 sb_preserveInputViewsAnimated:v3];
}

- (void)restoreInputViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v4 sb_restoreInputViewsAnimated:v3];
}

- (void)presentForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SBRemoteTransientOverlayHostViewController *)self allowsCustomPresentationDismissalAnimations])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __92__SBRemoteTransientOverlayHostViewController_presentForTransientOverlayAnimated_completion___block_invoke;
    v12[3] = &unk_2783A9FC8;
    v13 = v6;
    v7 = MEMORY[0x223D6F7F0](v12);
    v8 = v7;
    if (v4)
    {
      v9 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __92__SBRemoteTransientOverlayHostViewController_presentForTransientOverlayAnimated_completion___block_invoke_3;
      v10[3] = &unk_2783A9348;
      v11 = v8;
      [v9 sb_presentForAlertAnimated:1 completion:v10];
    }

    else
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

void __92__SBRemoteTransientOverlayHostViewController_presentForTransientOverlayAnimated_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

uint64_t __92__SBRemoteTransientOverlayHostViewController_presentForTransientOverlayAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SBRemoteTransientOverlayHostViewController *)self allowsCustomPresentationDismissalAnimations])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __92__SBRemoteTransientOverlayHostViewController_dismissForTransientOverlayAnimated_completion___block_invoke;
    v12[3] = &unk_2783A9FC8;
    v13 = v6;
    v7 = MEMORY[0x223D6F7F0](v12);
    v8 = v7;
    if (v4)
    {
      v9 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __92__SBRemoteTransientOverlayHostViewController_dismissForTransientOverlayAnimated_completion___block_invoke_3;
      v10[3] = &unk_2783A9348;
      v11 = v8;
      [v9 sb_dismissForAlertAnimated:1 completion:v10];
    }

    else
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

void __92__SBRemoteTransientOverlayHostViewController_dismissForTransientOverlayAnimated_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

uint64_t __92__SBRemoteTransientOverlayHostViewController_dismissForTransientOverlayAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 handleButtonActions:v4];
}

- (BOOL)isContentOpaque
{
  hasTranslucentContentValue = self->_hasTranslucentContentValue;
  if (hasTranslucentContentValue)
  {
    LOBYTE(hasTranslucentContentValue) = ![(NSNumber *)hasTranslucentContentValue BOOLValue];
  }

  return hasTranslucentContentValue;
}

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  self->_windowedAccessoryCutoutFrameInScreen = a4;
  self->_attachedToWindowedAccessory = a3;
  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v9 didTransitionToAttachedToWindowedAccessory:v8 windowedAccessoryCutoutFrameInScreen:{x, y, width, height}];
}

- (SBRemoteTransientOverlayHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  x = self->_windowedAccessoryCutoutFrameInScreen.origin.x;
  y = self->_windowedAccessoryCutoutFrameInScreen.origin.y;
  width = self->_windowedAccessoryCutoutFrameInScreen.size.width;
  height = self->_windowedAccessoryCutoutFrameInScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end