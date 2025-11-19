@interface SBRemoteTransientOverlayViewController
+ (id)identifiersForActiveDisplayLayoutElements;
+ (void)requestViewControllersForAlertDefinition:(id)a3 sceneWorkspaceController:(id)a4 connectionHandler:(id)a5;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)handleDoubleHeightStatusBarTap;
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)isPresentedByBundleIdentifier:(id)a3;
- (BOOL)isPresentedByProcess:(id)a3;
- (BOOL)prefersStatusBarActivityItemVisible;
- (BOOL)resignFirstResponder;
- (SBRemoteTransientOverlayViewController)pairedRemoteTransientOverlay;
- (SBRemoteTransientOverlayViewControllerDelegate)delegate;
- (id)_initWithHostContentAdapter:(id)a3;
- (id)associatedBundleIdentifiersToSuppressInSystemAperture;
- (id)associatedSceneIdentifiersToSuppressInSystemAperture;
- (id)hostedSceneIdentityTokens;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (id)remoteTransientOverlayHostContentAdapter:(id)a3 requestsActionForHandlingButtonEvents:(unint64_t)a4;
- (id)representedDisplayItem;
- (id)succinctDescriptionBuilder;
- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:(id)a3;
- (int64_t)preferredLockedGestureDismissalStyle;
- (int64_t)preferredUnlockedGestureDismissalStyle;
- (void)_configureWallpaperEffectViewWithAnimationSettings:(id)a3;
- (void)beginIgnoringAppearanceUpdates;
- (void)beginIgnoringContentOverlayInsetUpdates;
- (void)dealloc;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4;
- (void)endIgnoringAppearanceUpdates;
- (void)endIgnoringContentOverlayInsetUpdates;
- (void)handlePictureInPictureDidBegin;
- (void)prepareForActivationWithContext:(id)a3 presentationMode:(int64_t)a4 presentEmbedded:(BOOL)a5 windowScene:(id)a6 completion:(id)a7;
- (void)preserveInputViewsAnimated:(BOOL)a3;
- (void)remoteTransientOverlayHostContentAdapter:(id)a3 didTerminateWithError:(id)a4;
- (void)remoteTransientOverlayHostContentAdapter:(id)a3 needsStatusBarAppearanceUpdateWithAnimationSettings:(id)a4;
- (void)remoteTransientOverlayHostContentAdapter:(id)a3 requestsWallpaperEffectUpdateWithAnimationSettings:(id)a4;
- (void)remoteTransientOverlayHostContentAdapterDidChangeSupportedInterfaceOrientations:(id)a3;
- (void)remoteTransientOverlayHostContentAdapterRequestsDeactivation:(id)a3;
- (void)remoteTransientOverlayHostContentAdapterRequestsInvalidation:(id)a3;
- (void)restoreInputViewsAnimated:(BOOL)a3;
- (void)setContainerOrientation:(int64_t)a3;
- (void)setDisplayLayoutElementActive:(BOOL)a3;
- (void)setIdleTimerCoordinator:(id)a3;
- (void)setPresentationEmbeddedInTargetScene:(BOOL)a3;
- (void)updateDisplayLayoutElementWithBuilder:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBRemoteTransientOverlayViewController

+ (id)identifiersForActiveDisplayLayoutElements
{
  if (identifiersForActiveDisplayLayoutElements_onceToken != -1)
  {
    +[SBRemoteTransientOverlayViewController identifiersForActiveDisplayLayoutElements];
  }

  v3 = identifiersForActiveDisplayLayoutElements_identifiersForActiveDisplayLayoutElements;

  return v3;
}

void __83__SBRemoteTransientOverlayViewController_identifiersForActiveDisplayLayoutElements__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = identifiersForActiveDisplayLayoutElements_identifiersForActiveDisplayLayoutElements;
  identifiersForActiveDisplayLayoutElements_identifiersForActiveDisplayLayoutElements = v0;
}

- (id)_initWithHostContentAdapter:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBRemoteTransientOverlayViewController;
  v6 = [(SBRemoteTransientOverlayViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_presentationEmbeddedInTargetScene = 0;
    objc_storeStrong(&v6->_hostContentAdapter, a3);
    [(SBRemoteTransientOverlayHostContentAdapter *)v7->_hostContentAdapter setDelegate:v7];
    v7->_lastWallpaperStyle = 0;
    v8 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v7];
    idleTimerCoordinatorHelper = v7->_idleTimerCoordinatorHelper;
    v7->_idleTimerCoordinatorHelper = v8;

    [(SBRemoteTransientOverlayHostContentAdapter *)v7->_hostContentAdapter setIdleTimerCoordinator:v7];
    [(SBTransientOverlayViewController *)v7 setPresentationAllowsHomeGrabberAutoHide:+[SBHomeGrabberView wantsAutoHideAlwaysEnabled]];
  }

  return v7;
}

- (void)dealloc
{
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter setDelegate:0];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter setIdleTimerCoordinator:0];
  if ([(SBRemoteTransientOverlayViewController *)self isViewLoaded])
  {
    v3 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [(SBRemoteTransientOverlayViewController *)self bs_removeChildViewController:v3];
  }

  if ([(SBTransientOverlayViewController *)self isDisplayLayoutElementActive])
  {
    v4 = [(SBRemoteTransientOverlayViewController *)self preferredDisplayLayoutElementIdentifier];
    if (v4)
    {
      v5 = [objc_opt_class() identifiersForActiveDisplayLayoutElements];
      [v5 removeObject:v4];
    }
  }

  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 dealloc];
}

+ (void)requestViewControllersForAlertDefinition:(id)a3 sceneWorkspaceController:(id)a4 connectionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __126__SBRemoteTransientOverlayViewController_requestViewControllersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke;
  v10[3] = &unk_2783B1AA0;
  v11 = v8;
  v12 = a1;
  v9 = v8;
  [SBRemoteTransientOverlayHostContentAdapter requestContentAdaptersForAlertDefinition:a3 sceneWorkspaceController:a4 connectionHandler:v10];
}

void __126__SBRemoteTransientOverlayViewController_requestViewControllersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11)
  {
    v9 = [objc_alloc(*(a1 + 40)) _initWithHostContentAdapter:v11];
    if (v7)
    {
LABEL_3:
      v10 = [objc_alloc(*(a1 + 40)) _initWithHostContentAdapter:v7];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  (*(*(a1 + 32) + 16))();
}

- (BOOL)becomeFirstResponder
{
  v2 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidAppear:?];
  v6 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v7 = SBLogTransientOverlay();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    if (v3)
    {
      v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeInAnimation];
    }

    v11 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [v11 endAppearanceTransition];

    v7 = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 remoteTransientOverlayViewController:self didAppearAnimated:v3];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidDisappear:?];
  v6 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v7 = SBLogTransientOverlay();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    if (v3)
    {
      v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeOutAnimation];
    }

    v11 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [v11 endAppearanceTransition];

    v7 = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 remoteTransientOverlayViewController:self didDisappearAnimated:v3];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(SBTransientOverlayViewController *)self contentView];
  [v3 bounds];
  [(UIView *)self->_contentViewWrapperView setFrame:?];
  v4 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  v5 = [v4 view];
  [(UIView *)self->_contentViewWrapperView bounds];
  [v5 setFrame:?];

  v6 = [(SBTransientOverlayViewController *)self backgroundView];
  [v6 bounds];
  [(SBTransientOverlayWallpaperEffectView *)self->_wallpaperEffectView setFrame:?];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidLoad];
  v3 = [(SBTransientOverlayViewController *)self contentView];
  [v3 bounds];
  v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  contentViewWrapperView = self->_contentViewWrapperView;
  self->_contentViewWrapperView = v8;

  [v3 addSubview:self->_contentViewWrapperView];
  v10 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  [(SBRemoteTransientOverlayViewController *)self addChildViewController:v10];
  v11 = [v10 view];
  [(UIView *)self->_contentViewWrapperView addSubview:v11];
  [v10 didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBRemoteTransientOverlayViewController *)&v12 viewWillAppear:?];
  v6 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v7 = SBLogTransientOverlay();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    if (v3)
    {
      v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeInAnimation];
    }

    v11 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [v11 beginAppearanceTransition:1 animated:v3];

    v7 = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 remoteTransientOverlayViewController:self willAppearAnimated:v3];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SBRemoteTransientOverlayViewController;
  [(SBRemoteTransientOverlayViewController *)&v11 viewWillDisappear:?];
  if ([(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    v6 = SBLogTransientOverlay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v3)
    {
      v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeOutAnimation];
    }

    v8 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [v8 beginAppearanceTransition:0 animated:v3];

    v9 = SBLogTransientOverlay();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    v6 = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 remoteTransientOverlayViewController:self willDisappearAnimated:v3];
    }
  }
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  v3 = [(SBTransientOverlayViewController *)&v6 succinctDescriptionBuilder];
  v4 = [v3 appendObject:self->_hostContentAdapter withName:@"hostContentAdapter" skipIfNil:1];

  return v3;
}

- (void)remoteTransientOverlayHostContentAdapterDidChangeSupportedInterfaceOrientations:(id)a3
{
  if ([(SBRemoteTransientOverlayViewController *)self isViewLoaded])
  {

    [(SBTransientOverlayViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)remoteTransientOverlayHostContentAdapterRequestsDeactivation:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteTransientOverlayViewControllerRequestsDeactivation:self];
}

- (void)remoteTransientOverlayHostContentAdapterRequestsInvalidation:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteTransientOverlayViewControllerRequestsInvalidation:self];
}

- (void)remoteTransientOverlayHostContentAdapter:(id)a3 didTerminateWithError:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteTransientOverlayViewController:self didTerminateWithError:v5];
}

- (void)remoteTransientOverlayHostContentAdapter:(id)a3 requestsWallpaperEffectUpdateWithAnimationSettings:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_isPresented)
  {
    [(SBRemoteTransientOverlayViewController *)self _configureWallpaperEffectViewWithAnimationSettings:v6];
  }

  else
  {
    objc_storeStrong(&self->_pendingAnimationSettings, a4);
  }
}

- (void)remoteTransientOverlayHostContentAdapter:(id)a3 needsStatusBarAppearanceUpdateWithAnimationSettings:(id)a4
{
  v5 = a4;
  if ([(SBRemoteTransientOverlayViewController *)self isViewLoaded])
  {
    v6 = MEMORY[0x277D75D18];
    [v5 duration];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __135__SBRemoteTransientOverlayViewController_remoteTransientOverlayHostContentAdapter_needsStatusBarAppearanceUpdateWithAnimationSettings___block_invoke;
    v7[3] = &unk_2783A8C18;
    v7[4] = self;
    [v6 animateWithDuration:v7 animations:?];
  }
}

- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 preferredInterfaceOrientationForPresentation];
}

- (id)remoteTransientOverlayHostContentAdapter:(id)a3 requestsActionForHandlingButtonEvents:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained remoteTransientOverlayViewController:self requestsActionForHandlingButtonEvents:a4];

  return v7;
}

- (id)hostedSceneIdentityTokens
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter clientSceneIdentityToken];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)beginIgnoringAppearanceUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 beginIgnoringAppearanceUpdates];
  v4 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  if (!v3 && v4)
  {
    v5 = SBLogTransientOverlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Begin ignoring appearance changes...", buf, 0xCu);
    }
  }
}

- (void)endIgnoringAppearanceUpdates
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v10 endIgnoringAppearanceUpdates];
  v4 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  if (v3 && !v4)
  {
    v5 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    v6 = [v5 _appearState];
    v7 = [(SBRemoteTransientOverlayViewController *)self _appearState];
    v8 = SBLogTransientOverlay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v12 = self;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Ended ignoring appearance changes. Content appear state: %td, container appear state: %td", buf, 0x20u);
    }

    if (v7 == v6)
    {
      goto LABEL_23;
    }

    if (v7 - 1 < 2)
    {
      v9 = [(SBRemoteTransientOverlayViewController *)self delegate];
      if (v6 - 3 <= 0xFFFFFFFD)
      {
        [v5 beginAppearanceTransition:1 animated:0];
        if (objc_opt_respondsToSelector())
        {
          [v9 remoteTransientOverlayViewController:self willAppearAnimated:0];
        }
      }

      if (v7 == 2)
      {
        [v5 endAppearanceTransition];
        if (objc_opt_respondsToSelector())
        {
          [v9 remoteTransientOverlayViewController:self didAppearAnimated:0];
        }
      }
    }

    else
    {
      if (v7 != 3 && v7)
      {
        goto LABEL_23;
      }

      v9 = [(SBRemoteTransientOverlayViewController *)self delegate];
      if (v6)
      {
        if (v6 != 3)
        {
          [v5 beginAppearanceTransition:0 animated:0];
          if (objc_opt_respondsToSelector())
          {
            [v9 remoteTransientOverlayViewController:self willDisappearAnimated:0];
          }
        }
      }

      if (!v7)
      {
        [v5 endAppearanceTransition];
        if (objc_opt_respondsToSelector())
        {
          [v9 remoteTransientOverlayViewController:self didDisappearAnimated:0];
        }
      }
    }

LABEL_23:
  }
}

- (void)beginIgnoringContentOverlayInsetUpdates
{
  v3.receiver = self;
  v3.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v3 beginIgnoringContentOverlayInsetUpdates];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter setShouldIgnoreContentOverlayInsetUpdates:[(SBTransientOverlayViewController *)self isIgnoringContentOverlayInsetUpdates]];
}

- (void)endIgnoringContentOverlayInsetUpdates
{
  v3.receiver = self;
  v3.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v3 endIgnoringContentOverlayInsetUpdates];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter setShouldIgnoreContentOverlayInsetUpdates:[(SBTransientOverlayViewController *)self isIgnoringContentOverlayInsetUpdates]];
}

- (BOOL)handleDoubleHeightStatusBarTap
{
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleDoubleHeightStatusBarTap])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 handleDoubleHeightStatusBarTap];
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleHeadsetButtonPress:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v6 handleHeadsetButtonPress:v3];
}

- (BOOL)handleHomeButtonPress
{
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleHomeButtonPress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 handleHomeButtonPress];
}

- (BOOL)handleHomeButtonDoublePress
{
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleHomeButtonDoublePress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 handleHomeButtonDoublePress];
}

- (BOOL)handleHomeButtonLongPress
{
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleHomeButtonLongPress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 handleHomeButtonLongPress];
}

- (BOOL)handleLockButtonPress
{
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleLockButtonPress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 handleLockButtonPress];
}

- (void)handlePictureInPictureDidBegin
{
  v3.receiver = self;
  v3.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v3 handlePictureInPictureDidBegin];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handlePictureInPictureDidBegin];
}

- (BOOL)handleVolumeUpButtonPress
{
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleVolumeUpButtonPress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 handleVolumeUpButtonPress];
}

- (BOOL)handleVolumeDownButtonPress
{
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleVolumeDownButtonPress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 handleVolumeDownButtonPress];
}

- (BOOL)isPresentedByProcess:(id)a3
{
  v4 = a3;
  v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceProcessIdentifier];
  if (v5 == [v4 pid])
  {
    v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
    v7 = [v4 bundleIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isPresentedByBundleIdentifier:(id)a3
{
  hostContentAdapter = self->_hostContentAdapter;
  v4 = a3;
  v5 = [(SBRemoteTransientOverlayHostContentAdapter *)hostContentAdapter serviceBundleIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (void)setDisplayLayoutElementActive:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayViewController;
  if ([(SBTransientOverlayViewController *)&v10 isDisplayLayoutElementActive]!= a3)
  {
    v5 = [(SBRemoteTransientOverlayViewController *)self preferredDisplayLayoutElementIdentifier];
    if (v5)
    {
      v6 = [objc_opt_class() identifiersForActiveDisplayLayoutElements];
      v7 = v6;
      if (v3)
      {
        v8 = [v6 containsObject:v5];

        if (v8)
        {
          goto LABEL_5;
        }

        v7 = [objc_opt_class() identifiersForActiveDisplayLayoutElements];
        [v7 addObject:v5];
      }

      else
      {
        [v6 removeObject:v5];
      }

      goto LABEL_9;
    }

LABEL_5:
    v3 = 0;
LABEL_9:
    v9.receiver = self;
    v9.super_class = SBRemoteTransientOverlayViewController;
    [(SBTransientOverlayViewController *)&v9 setDisplayLayoutElementActive:v3];
  }
}

- (void)updateDisplayLayoutElementWithBuilder:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SBRemoteTransientOverlayViewController_updateDisplayLayoutElementWithBuilder___block_invoke;
  v7[3] = &unk_2783B1AC8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  v5 = v4;
  [(SBTransientOverlayViewController *)&v6 updateDisplayLayoutElementWithBuilder:v7];
}

void __80__SBRemoteTransientOverlayViewController_updateDisplayLayoutElementWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1416);
  v5 = a2;
  v4 = [v3 serviceBundleIdentifier];
  [v5 setBundleIdentifier:v4];

  (*(*(a1 + 40) + 16))();
}

- (int64_t)preferredLockedGestureDismissalStyle
{
  if ([(SBTransientOverlayViewController *)self isAttachedToWindowedAccessory])
  {
    return 0;
  }

  hostContentAdapter = self->_hostContentAdapter;

  return [(SBRemoteTransientOverlayHostContentAdapter *)hostContentAdapter preferredLockedGestureDismissalStyle];
}

- (int64_t)preferredUnlockedGestureDismissalStyle
{
  if ([(SBTransientOverlayViewController *)self isAttachedToWindowedAccessory])
  {
    return 0;
  }

  hostContentAdapter = self->_hostContentAdapter;

  return [(SBRemoteTransientOverlayHostContentAdapter *)hostContentAdapter preferredUnlockedGestureDismissalStyle];
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v4 = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v11[3] = &unk_2783B1AF0;
  v11[4] = self;
  v5 = v4;
  v12 = v5;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_5;
  v8[3] = &unk_2783B1AF0;
  v9 = v5;
  v10 = self;
  v6 = v5;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setFinalizeTransitionHandler:v8];

  return v3;
}

void __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isAnimated];
  v5 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
  if (v4)
  {
    v6 = [*(*(a1 + 32) + 1416) shouldEnableFadeOutAnimation];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) view];
  if (v6)
  {
    ++*(*(a1 + 32) + 1472);
    v8 = MEMORY[0x277D75D18];
    v9 = __sb__runningInSpringBoard();
    v10 = v9;
    if (v9)
    {
      v11 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v11 = [v5 userInterfaceIdiom] == 1;
    }

    if (v11)
    {
      v15 = 0.5;
    }

    else
    {
      v15 = 0.4;
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
    v22[3] = &unk_2783A8ED8;
    v16 = v7;
    v17 = *(a1 + 32);
    v23 = v16;
    v24 = v17;
    v25 = v3;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
    v20[3] = &unk_2783A8BF0;
    v20[4] = *(a1 + 32);
    v21 = v25;
    [v8 animateWithDuration:v22 animations:v20 completion:v15];
    if ((v10 & 1) == 0)
    {
    }

    v14 = v23;
  }

  else
  {
    [v3 performAlongsideTransitions];
    v12 = *(a1 + 32);
    v13 = *(v12 + 1416);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_4;
    v18[3] = &unk_2783A92D8;
    v18[4] = v12;
    v19 = v3;
    [v13 dismissForTransientOverlayAnimated:v4 completion:v18];
    v14 = v19;
  }
}

uint64_t __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(*(a1 + 40) + 1480) setAlpha:0.0];
  v2 = *(a1 + 48);

  return [v2 performAlongsideTransitions];
}

uint64_t __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  --*(*(a1 + 32) + 1472);
  v2 = *(a1 + 32);
  if (!*(v2 + 1472))
  {
    v3 = [v2 _needsWallpaperEffectView];
    v2 = *(a1 + 32);
    if ((v3 & 1) == 0)
    {
      [*(v2 + 1480) removeFromSuperview];
      v4 = *(a1 + 32);
      v5 = *(v4 + 1480);
      *(v4 + 1480) = 0;

      v2 = *(a1 + 32);
    }
  }

  *(v2 + 1448) = 0;
  v6 = *(a1 + 40);

  return [v6 completeTransition:1];
}

void __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];
  [*(*(a1 + 40) + 1480) setAlpha:1.0];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__SBRemoteTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __94__SBRemoteTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 1448) = 1;
  [*(a1 + 32) loadViewIfNeeded];
  v4 = *(*(a1 + 32) + 1464);
  v5 = *(a1 + 32);
  v6 = *(v5 + 1464);
  *(v5 + 1464) = 0;

  v7 = [v3 isAnimated];
  v8 = [*(*(a1 + 32) + 1416) shouldEnableFadeInAnimation];
  if (!v7)
  {
    v9 = v4;
    v4 = 0;
LABEL_9:

    v9 = v7;
    goto LABEL_10;
  }

  v9 = v8;
  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v10 != 1)
  {
    goto LABEL_10;
  }

  v11 = MEMORY[0x277CF0B70];
  v12 = __sb__runningInSpringBoard();
  v13 = v12;
  if (v12)
  {
    v14 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v9 = [MEMORY[0x277D75418] currentDevice];
    v14 = [v9 userInterfaceIdiom] == 1;
  }

  v26 = 0.4;
  if (v14)
  {
    v26 = 0.5;
  }

  v4 = [v11 settingsWithDuration:v26];
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:
  [*(a1 + 32) _configureWallpaperEffectViewWithAnimationSettings:v4];
  v15 = [*(a1 + 32) _hostContentViewController];
  v16 = [v15 view];

  if (v9)
  {
    v17 = MEMORY[0x277D75D18];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __94__SBRemoteTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
    v34[3] = &unk_2783A8C18;
    v18 = v16;
    v35 = v18;
    [v17 performWithoutAnimation:v34];
    v19 = MEMORY[0x277D75D18];
    v20 = __sb__runningInSpringBoard();
    v21 = v20;
    if (v20)
    {
      v22 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      v9 = [MEMORY[0x277D75418] currentDevice];
      v22 = [v9 userInterfaceIdiom] == 1;
    }

    v24 = &v35;
    if (v22)
    {
      v25 = 0.5;
    }

    else
    {
      v25 = 0.4;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __94__SBRemoteTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
    v31[3] = &unk_2783A92D8;
    v32 = v18;
    v33 = v3;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __94__SBRemoteTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4;
    v29[3] = &unk_2783A9398;
    v30 = v33;
    [v19 animateWithDuration:v31 animations:v29 completion:v25];
    if ((v21 & 1) == 0)
    {
    }
  }

  else
  {
    [v16 setAlpha:1.0];
    [v3 performAlongsideTransitions];
    v23 = *(*(a1 + 32) + 1416);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __94__SBRemoteTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_5;
    v27[3] = &unk_2783A8C18;
    v24 = &v28;
    v28 = v3;
    [v23 presentForTransientOverlayAnimated:v7 completion:v27];
  }
}

uint64_t __94__SBRemoteTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 performAlongsideTransitions];
}

- (BOOL)prefersStatusBarActivityItemVisible
{
  v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained remoteTransientOverlayViewController:self prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)preserveInputViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 preserveInputViewsAnimated:?];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter preserveInputViewsAnimated:v3];
}

- (void)restoreInputViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 restoreInputViewsAnimated:?];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter restoreInputViewsAnimated:v3];
}

- (void)setContainerOrientation:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 setContainerOrientation:a3];
  [(SBTransientOverlayWallpaperEffectView *)self->_wallpaperEffectView setContainerOrientation:[(SBTransientOverlayViewController *)self containerOrientation]];
}

- (void)setIdleTimerCoordinator:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayViewController;
  v4 = a3;
  [(SBTransientOverlayViewController *)&v5 setIdleTimerCoordinator:v4];
  [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper setTargetCoordinator:v4, v5.receiver, v5.super_class];
}

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayViewController;
  [SBTransientOverlayViewController didTransitionToAttachedToWindowedAccessory:sel_didTransitionToAttachedToWindowedAccessory_windowedAccessoryCutoutFrameInScreen_ windowedAccessoryCutoutFrameInScreen:?];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter didTransitionToAttachedToWindowedAccessory:v8 windowedAccessoryCutoutFrameInScreen:x, y, width, height];
}

- (id)associatedBundleIdentifiersToSuppressInSystemAperture
{
  v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
    v6 = [v4 setWithObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)associatedSceneIdentifiersToSuppressInSystemAperture
{
  v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter associatedSceneIdentifierToSuppressInSystemAperture];
  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter associatedSceneIdentifierToSuppressInSystemAperture];
    v6 = [v4 setWithObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPresentationEmbeddedInTargetScene:(BOOL)a3
{
  presentationEmbeddedInTargetScene = self->_presentationEmbeddedInTargetScene;
  if (presentationEmbeddedInTargetScene != a3)
  {
    self->_presentationEmbeddedInTargetScene = a3;
    if ([(SBRemoteTransientOverlayViewController *)self isViewLoaded])
    {
      if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldUpdateSceneBasedViewController])
      {
        v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter contentViewControllerForPresentationEmbeddedInSceneView:presentationEmbeddedInTargetScene];
        [(SBRemoteTransientOverlayViewController *)self bs_removeChildViewController:v5];

        v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter contentViewControllerForPresentationEmbeddedInSceneView:self->_presentationEmbeddedInTargetScene];
        [(SBRemoteTransientOverlayViewController *)self bs_addChildViewController:v6];
      }
    }
  }
}

- (id)representedDisplayItem
{
  v2 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
  if (v2)
  {
    v3 = [SBDisplayItem remoteAlertDisplayItemWithServiceBundleIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)prepareForActivationWithContext:(id)a3 presentationMode:(int64_t)a4 presentEmbedded:(BOOL)a5 windowScene:(id)a6 completion:(id)a7
{
  v8 = a5;
  hostContentAdapter = self->_hostContentAdapter;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  [(SBRemoteTransientOverlayHostContentAdapter *)hostContentAdapter setShouldPresentEmbeddedInTargetSceneIfRequested:v8];
  -[SBRemoteTransientOverlayHostContentAdapter setShouldEmbedOverShieldedApps:](self->_hostContentAdapter, "setShouldEmbedOverShieldedApps:", [v15 shouldEmbedOverShieldedApps]);
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter prepareForActivationWithContext:v15 presentationMode:a4 windowScene:v14 completion:v13];
}

- (void)_configureWallpaperEffectViewWithAnimationSettings:(id)a3
{
  v4 = a3;
  if ([(SBRemoteTransientOverlayViewController *)self _needsWallpaperEffectView])
  {
    wallpaperEffectView = self->_wallpaperEffectView;
    if (!wallpaperEffectView)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke;
      v32[3] = &unk_2783A8C18;
      v32[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v32];
    }

    [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter preferredBackgroundStyle];
    _WallpaperStyleForBackgroundStyle();
    v30 = 0uLL;
    v31 = 0;
    PBUIWallpaperStyleTransitionStateMake();
    v6 = self->_wallpaperEffectView;
    if (!v4)
    {
      v23 = v30;
      v24 = v31;
      [(SBTransientOverlayWallpaperEffectView *)v6 setTransitionState:&v23];
      goto LABEL_14;
    }

    v7 = [(SBTransientOverlayWallpaperEffectView *)v6 prepareToAnimateToTransitionState:&v30];
    v8 = v7;
    ++self->_wallpaperEffectAnimations;
    if (!wallpaperEffectView && !v7)
    {
      [(SBTransientOverlayWallpaperEffectView *)self->_wallpaperEffectView setAlpha:0.0];
    }

    v9 = MEMORY[0x277CF0D38];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke_2;
    v26[3] = &unk_2783B1B18;
    v29 = v8;
    v26[4] = self;
    v27 = v30;
    v28 = v31;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke_3;
    v25[3] = &unk_2783A9398;
    v25[4] = self;
    v10 = v26;
    v11 = v25;
  }

  else
  {
    if (!v4)
    {
      [(SBTransientOverlayWallpaperEffectView *)self->_wallpaperEffectView removeFromSuperview];
      v12 = self->_wallpaperEffectView;
      self->_wallpaperEffectView = 0;

      goto LABEL_14;
    }

    ++self->_wallpaperEffectAnimations;
    v9 = MEMORY[0x277CF0D38];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke_4;
    v21 = &unk_2783A8C18;
    v22 = self;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke_5;
    v16 = &unk_2783A9398;
    v17 = self;
    v10 = &v18;
    v11 = &v13;
  }

  [v9 animateWithSettings:v4 actions:v10 completion:{v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
LABEL_14:
}

void __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) backgroundView];
  [v9 bounds];
  v6 = [[SBTransientOverlayWallpaperEffectView alloc] initWithFrame:*(*(a1 + 32) + 1504) wallpaperVariant:v2, v3, v4, v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1480);
  *(v7 + 1480) = v6;

  [*(*(a1 + 32) + 1480) setContainerOrientation:{objc_msgSend(*(a1 + 32), "containerOrientation")}];
  [*(*(a1 + 32) + 1480) setWallpaperStyle:0];
  [v9 insertSubview:*(*(a1 + 32) + 1480) atIndex:0];
}

uint64_t __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(*(a1 + 32) + 1480);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    [v2 setTransitionState:&v4];
  }

  return [*(*(a1 + 32) + 1480) setAlpha:1.0];
}

void __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke_5(uint64_t a1)
{
  --*(*(a1 + 32) + 1472);
  v2 = *(a1 + 32);
  if (!v2[184] && ([v2 _needsWallpaperEffectView] & 1) == 0)
  {
    [*(*(a1 + 32) + 1480) removeFromSuperview];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1480);
    *(v3 + 1480) = 0;
  }
}

- (SBRemoteTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBRemoteTransientOverlayViewController)pairedRemoteTransientOverlay
{
  WeakRetained = objc_loadWeakRetained(&self->_pairedRemoteTransientOverlay);

  return WeakRetained;
}

@end