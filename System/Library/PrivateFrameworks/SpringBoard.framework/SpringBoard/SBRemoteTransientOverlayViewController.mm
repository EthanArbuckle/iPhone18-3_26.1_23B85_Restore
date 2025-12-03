@interface SBRemoteTransientOverlayViewController
+ (id)identifiersForActiveDisplayLayoutElements;
+ (void)requestViewControllersForAlertDefinition:(id)definition sceneWorkspaceController:(id)controller connectionHandler:(id)handler;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)handleDoubleHeightStatusBarTap;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)isPresentedByBundleIdentifier:(id)identifier;
- (BOOL)isPresentedByProcess:(id)process;
- (BOOL)prefersStatusBarActivityItemVisible;
- (BOOL)resignFirstResponder;
- (SBRemoteTransientOverlayViewController)pairedRemoteTransientOverlay;
- (SBRemoteTransientOverlayViewControllerDelegate)delegate;
- (id)_initWithHostContentAdapter:(id)adapter;
- (id)associatedBundleIdentifiersToSuppressInSystemAperture;
- (id)associatedSceneIdentifiersToSuppressInSystemAperture;
- (id)hostedSceneIdentityTokens;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (id)remoteTransientOverlayHostContentAdapter:(id)adapter requestsActionForHandlingButtonEvents:(unint64_t)events;
- (id)representedDisplayItem;
- (id)succinctDescriptionBuilder;
- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:(id)adapter;
- (int64_t)preferredLockedGestureDismissalStyle;
- (int64_t)preferredUnlockedGestureDismissalStyle;
- (void)_configureWallpaperEffectViewWithAnimationSettings:(id)settings;
- (void)beginIgnoringAppearanceUpdates;
- (void)beginIgnoringContentOverlayInsetUpdates;
- (void)dealloc;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen;
- (void)endIgnoringAppearanceUpdates;
- (void)endIgnoringContentOverlayInsetUpdates;
- (void)handlePictureInPictureDidBegin;
- (void)prepareForActivationWithContext:(id)context presentationMode:(int64_t)mode presentEmbedded:(BOOL)embedded windowScene:(id)scene completion:(id)completion;
- (void)preserveInputViewsAnimated:(BOOL)animated;
- (void)remoteTransientOverlayHostContentAdapter:(id)adapter didTerminateWithError:(id)error;
- (void)remoteTransientOverlayHostContentAdapter:(id)adapter needsStatusBarAppearanceUpdateWithAnimationSettings:(id)settings;
- (void)remoteTransientOverlayHostContentAdapter:(id)adapter requestsWallpaperEffectUpdateWithAnimationSettings:(id)settings;
- (void)remoteTransientOverlayHostContentAdapterDidChangeSupportedInterfaceOrientations:(id)orientations;
- (void)remoteTransientOverlayHostContentAdapterRequestsDeactivation:(id)deactivation;
- (void)remoteTransientOverlayHostContentAdapterRequestsInvalidation:(id)invalidation;
- (void)restoreInputViewsAnimated:(BOOL)animated;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)setIdleTimerCoordinator:(id)coordinator;
- (void)setPresentationEmbeddedInTargetScene:(BOOL)scene;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (id)_initWithHostContentAdapter:(id)adapter
{
  adapterCopy = adapter;
  v11.receiver = self;
  v11.super_class = SBRemoteTransientOverlayViewController;
  v6 = [(SBRemoteTransientOverlayViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_presentationEmbeddedInTargetScene = 0;
    objc_storeStrong(&v6->_hostContentAdapter, adapter);
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
    _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [(SBRemoteTransientOverlayViewController *)self bs_removeChildViewController:_hostContentViewController];
  }

  if ([(SBTransientOverlayViewController *)self isDisplayLayoutElementActive])
  {
    preferredDisplayLayoutElementIdentifier = [(SBRemoteTransientOverlayViewController *)self preferredDisplayLayoutElementIdentifier];
    if (preferredDisplayLayoutElementIdentifier)
    {
      identifiersForActiveDisplayLayoutElements = [objc_opt_class() identifiersForActiveDisplayLayoutElements];
      [identifiersForActiveDisplayLayoutElements removeObject:preferredDisplayLayoutElementIdentifier];
    }
  }

  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 dealloc];
}

+ (void)requestViewControllersForAlertDefinition:(id)definition sceneWorkspaceController:(id)controller connectionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __126__SBRemoteTransientOverlayViewController_requestViewControllersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke;
  v10[3] = &unk_2783B1AA0;
  v11 = handlerCopy;
  selfCopy = self;
  v9 = handlerCopy;
  [SBRemoteTransientOverlayHostContentAdapter requestContentAdaptersForAlertDefinition:definition sceneWorkspaceController:controller connectionHandler:v10];
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
  _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  becomeFirstResponder = [_hostContentViewController becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)canBecomeFirstResponder
{
  _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  canBecomeFirstResponder = [_hostContentViewController canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  canResignFirstResponder = [_hostContentViewController canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  resignFirstResponder = [_hostContentViewController resignFirstResponder];

  return resignFirstResponder;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidAppear:?];
  isIgnoringAppearanceUpdates = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  delegate = SBLogTransientOverlay();
  v8 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
  if (isIgnoringAppearanceUpdates)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    if (appearCopy)
    {
      appearCopy = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeInAnimation];
    }

    _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [_hostContentViewController endAppearanceTransition];

    delegate = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate remoteTransientOverlayViewController:self didAppearAnimated:appearCopy];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidDisappear:?];
  isIgnoringAppearanceUpdates = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  delegate = SBLogTransientOverlay();
  v8 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
  if (isIgnoringAppearanceUpdates)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    if (disappearCopy)
    {
      disappearCopy = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeOutAnimation];
    }

    _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [_hostContentViewController endAppearanceTransition];

    delegate = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate remoteTransientOverlayViewController:self didDisappearAnimated:disappearCopy];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v7 viewDidLayoutSubviews];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  [(UIView *)self->_contentViewWrapperView setFrame:?];
  _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  view = [_hostContentViewController view];
  [(UIView *)self->_contentViewWrapperView bounds];
  [view setFrame:?];

  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [backgroundView bounds];
  [(SBTransientOverlayWallpaperEffectView *)self->_wallpaperEffectView setFrame:?];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidLoad];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  contentViewWrapperView = self->_contentViewWrapperView;
  self->_contentViewWrapperView = v8;

  [contentView addSubview:self->_contentViewWrapperView];
  _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  [(SBRemoteTransientOverlayViewController *)self addChildViewController:_hostContentViewController];
  view = [_hostContentViewController view];
  [(UIView *)self->_contentViewWrapperView addSubview:view];
  [_hostContentViewController didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBRemoteTransientOverlayViewController;
  [(SBRemoteTransientOverlayViewController *)&v12 viewWillAppear:?];
  isIgnoringAppearanceUpdates = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  delegate = SBLogTransientOverlay();
  v8 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
  if (isIgnoringAppearanceUpdates)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    if (appearCopy)
    {
      appearCopy = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeInAnimation];
    }

    _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [_hostContentViewController beginAppearanceTransition:1 animated:appearCopy];

    delegate = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate remoteTransientOverlayViewController:self willAppearAnimated:appearCopy];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SBRemoteTransientOverlayViewController;
  [(SBRemoteTransientOverlayViewController *)&v11 viewWillDisappear:?];
  if ([(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    delegate = SBLogTransientOverlay();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (disappearCopy)
    {
      disappearCopy = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter shouldEnableFadeOutAnimation];
    }

    _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    [_hostContentViewController beginAppearanceTransition:0 animated:disappearCopy];

    v9 = SBLogTransientOverlay();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Reacting to %{public}@", buf, 0x16u);
    }

    delegate = [(SBRemoteTransientOverlayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate remoteTransientOverlayViewController:self willDisappearAnimated:disappearCopy];
    }
  }
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  succinctDescriptionBuilder = [(SBTransientOverlayViewController *)&v6 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendObject:self->_hostContentAdapter withName:@"hostContentAdapter" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (void)remoteTransientOverlayHostContentAdapterDidChangeSupportedInterfaceOrientations:(id)orientations
{
  if ([(SBRemoteTransientOverlayViewController *)self isViewLoaded])
  {

    [(SBTransientOverlayViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)remoteTransientOverlayHostContentAdapterRequestsDeactivation:(id)deactivation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteTransientOverlayViewControllerRequestsDeactivation:self];
}

- (void)remoteTransientOverlayHostContentAdapterRequestsInvalidation:(id)invalidation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteTransientOverlayViewControllerRequestsInvalidation:self];
}

- (void)remoteTransientOverlayHostContentAdapter:(id)adapter didTerminateWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteTransientOverlayViewController:self didTerminateWithError:errorCopy];
}

- (void)remoteTransientOverlayHostContentAdapter:(id)adapter requestsWallpaperEffectUpdateWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v7 = settingsCopy;
  if (self->_isPresented)
  {
    [(SBRemoteTransientOverlayViewController *)self _configureWallpaperEffectViewWithAnimationSettings:settingsCopy];
  }

  else
  {
    objc_storeStrong(&self->_pendingAnimationSettings, settings);
  }
}

- (void)remoteTransientOverlayHostContentAdapter:(id)adapter needsStatusBarAppearanceUpdateWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if ([(SBRemoteTransientOverlayViewController *)self isViewLoaded])
  {
    v6 = MEMORY[0x277D75D18];
    [settingsCopy duration];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __135__SBRemoteTransientOverlayViewController_remoteTransientOverlayHostContentAdapter_needsStatusBarAppearanceUpdateWithAnimationSettings___block_invoke;
    v7[3] = &unk_2783A8C18;
    v7[4] = self;
    [v6 animateWithDuration:v7 animations:?];
  }
}

- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:(id)adapter
{
  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v4 preferredInterfaceOrientationForPresentation];
}

- (id)remoteTransientOverlayHostContentAdapter:(id)adapter requestsActionForHandlingButtonEvents:(unint64_t)events
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained remoteTransientOverlayViewController:self requestsActionForHandlingButtonEvents:events];

  return v7;
}

- (id)hostedSceneIdentityTokens
{
  v6[1] = *MEMORY[0x277D85DE8];
  clientSceneIdentityToken = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter clientSceneIdentityToken];
  v3 = clientSceneIdentityToken;
  if (clientSceneIdentityToken)
  {
    v6[0] = clientSceneIdentityToken;
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
  isIgnoringAppearanceUpdates = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 beginIgnoringAppearanceUpdates];
  isIgnoringAppearanceUpdates2 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  if (!isIgnoringAppearanceUpdates && isIgnoringAppearanceUpdates2)
  {
    v5 = SBLogTransientOverlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Begin ignoring appearance changes...", buf, 0xCu);
    }
  }
}

- (void)endIgnoringAppearanceUpdates
{
  v17 = *MEMORY[0x277D85DE8];
  isIgnoringAppearanceUpdates = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v10 endIgnoringAppearanceUpdates];
  isIgnoringAppearanceUpdates2 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  if (isIgnoringAppearanceUpdates && !isIgnoringAppearanceUpdates2)
  {
    _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
    _appearState = [_hostContentViewController _appearState];
    _appearState2 = [(SBRemoteTransientOverlayViewController *)self _appearState];
    v8 = SBLogTransientOverlay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v13 = 2048;
      v14 = _appearState;
      v15 = 2048;
      v16 = _appearState2;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Ended ignoring appearance changes. Content appear state: %td, container appear state: %td", buf, 0x20u);
    }

    if (_appearState2 == _appearState)
    {
      goto LABEL_23;
    }

    if (_appearState2 - 1 < 2)
    {
      delegate = [(SBRemoteTransientOverlayViewController *)self delegate];
      if (_appearState - 3 <= 0xFFFFFFFD)
      {
        [_hostContentViewController beginAppearanceTransition:1 animated:0];
        if (objc_opt_respondsToSelector())
        {
          [delegate remoteTransientOverlayViewController:self willAppearAnimated:0];
        }
      }

      if (_appearState2 == 2)
      {
        [_hostContentViewController endAppearanceTransition];
        if (objc_opt_respondsToSelector())
        {
          [delegate remoteTransientOverlayViewController:self didAppearAnimated:0];
        }
      }
    }

    else
    {
      if (_appearState2 != 3 && _appearState2)
      {
        goto LABEL_23;
      }

      delegate = [(SBRemoteTransientOverlayViewController *)self delegate];
      if (_appearState)
      {
        if (_appearState != 3)
        {
          [_hostContentViewController beginAppearanceTransition:0 animated:0];
          if (objc_opt_respondsToSelector())
          {
            [delegate remoteTransientOverlayViewController:self willDisappearAnimated:0];
          }
        }
      }

      if (!_appearState2)
      {
        [_hostContentViewController endAppearanceTransition];
        if (objc_opt_respondsToSelector())
        {
          [delegate remoteTransientOverlayViewController:self didDisappearAnimated:0];
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

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  if ([(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter handleHeadsetButtonPress:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v6 handleHeadsetButtonPress:pressCopy];
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

- (BOOL)isPresentedByProcess:(id)process
{
  processCopy = process;
  serviceProcessIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceProcessIdentifier];
  if (serviceProcessIdentifier == [processCopy pid])
  {
    serviceBundleIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
    bundleIdentifier = [processCopy bundleIdentifier];
    v8 = [serviceBundleIdentifier isEqualToString:bundleIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isPresentedByBundleIdentifier:(id)identifier
{
  hostContentAdapter = self->_hostContentAdapter;
  identifierCopy = identifier;
  serviceBundleIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)hostContentAdapter serviceBundleIdentifier];
  v6 = [serviceBundleIdentifier isEqualToString:identifierCopy];

  return v6;
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  activeCopy = active;
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayViewController;
  if ([(SBTransientOverlayViewController *)&v10 isDisplayLayoutElementActive]!= active)
  {
    preferredDisplayLayoutElementIdentifier = [(SBRemoteTransientOverlayViewController *)self preferredDisplayLayoutElementIdentifier];
    if (preferredDisplayLayoutElementIdentifier)
    {
      identifiersForActiveDisplayLayoutElements = [objc_opt_class() identifiersForActiveDisplayLayoutElements];
      identifiersForActiveDisplayLayoutElements2 = identifiersForActiveDisplayLayoutElements;
      if (activeCopy)
      {
        v8 = [identifiersForActiveDisplayLayoutElements containsObject:preferredDisplayLayoutElementIdentifier];

        if (v8)
        {
          goto LABEL_5;
        }

        identifiersForActiveDisplayLayoutElements2 = [objc_opt_class() identifiersForActiveDisplayLayoutElements];
        [identifiersForActiveDisplayLayoutElements2 addObject:preferredDisplayLayoutElementIdentifier];
      }

      else
      {
        [identifiersForActiveDisplayLayoutElements removeObject:preferredDisplayLayoutElementIdentifier];
      }

      goto LABEL_9;
    }

LABEL_5:
    activeCopy = 0;
LABEL_9:
    v9.receiver = self;
    v9.super_class = SBRemoteTransientOverlayViewController;
    [(SBTransientOverlayViewController *)&v9 setDisplayLayoutElementActive:activeCopy];
  }
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  builderCopy = builder;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SBRemoteTransientOverlayViewController_updateDisplayLayoutElementWithBuilder___block_invoke;
  v7[3] = &unk_2783B1AC8;
  v7[4] = self;
  v8 = builderCopy;
  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayViewController;
  v5 = builderCopy;
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
  _hostContentViewController = [(SBRemoteTransientOverlayViewController *)self _hostContentViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v11[3] = &unk_2783B1AF0;
  v11[4] = self;
  v5 = _hostContentViewController;
  v12 = v5;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__SBRemoteTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_5;
  v8[3] = &unk_2783B1AF0;
  v9 = v5;
  selfCopy = self;
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
  serviceBundleIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
  if (serviceBundleIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained remoteTransientOverlayViewController:self prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:serviceBundleIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)preserveInputViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 preserveInputViewsAnimated:?];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter preserveInputViewsAnimated:animatedCopy];
}

- (void)restoreInputViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 restoreInputViewsAnimated:?];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter restoreInputViewsAnimated:animatedCopy];
}

- (void)setContainerOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = SBRemoteTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 setContainerOrientation:orientation];
  [(SBTransientOverlayWallpaperEffectView *)self->_wallpaperEffectView setContainerOrientation:[(SBTransientOverlayViewController *)self containerOrientation]];
}

- (void)setIdleTimerCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayViewController;
  coordinatorCopy = coordinator;
  [(SBTransientOverlayViewController *)&v5 setIdleTimerCoordinator:coordinatorCopy];
  [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper setTargetCoordinator:coordinatorCopy, v5.receiver, v5.super_class];
}

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  height = screen.size.height;
  width = screen.size.width;
  y = screen.origin.y;
  x = screen.origin.x;
  accessoryCopy = accessory;
  v10.receiver = self;
  v10.super_class = SBRemoteTransientOverlayViewController;
  [SBTransientOverlayViewController didTransitionToAttachedToWindowedAccessory:sel_didTransitionToAttachedToWindowedAccessory_windowedAccessoryCutoutFrameInScreen_ windowedAccessoryCutoutFrameInScreen:?];
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter didTransitionToAttachedToWindowedAccessory:accessoryCopy windowedAccessoryCutoutFrameInScreen:x, y, width, height];
}

- (id)associatedBundleIdentifiersToSuppressInSystemAperture
{
  serviceBundleIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
  if (serviceBundleIdentifier)
  {
    v4 = MEMORY[0x277CBEB98];
    serviceBundleIdentifier2 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
    v6 = [v4 setWithObject:serviceBundleIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)associatedSceneIdentifiersToSuppressInSystemAperture
{
  associatedSceneIdentifierToSuppressInSystemAperture = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter associatedSceneIdentifierToSuppressInSystemAperture];
  if (associatedSceneIdentifierToSuppressInSystemAperture)
  {
    v4 = MEMORY[0x277CBEB98];
    associatedSceneIdentifierToSuppressInSystemAperture2 = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter associatedSceneIdentifierToSuppressInSystemAperture];
    v6 = [v4 setWithObject:associatedSceneIdentifierToSuppressInSystemAperture2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPresentationEmbeddedInTargetScene:(BOOL)scene
{
  presentationEmbeddedInTargetScene = self->_presentationEmbeddedInTargetScene;
  if (presentationEmbeddedInTargetScene != scene)
  {
    self->_presentationEmbeddedInTargetScene = scene;
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
  serviceBundleIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter serviceBundleIdentifier];
  if (serviceBundleIdentifier)
  {
    v3 = [SBDisplayItem remoteAlertDisplayItemWithServiceBundleIdentifier:serviceBundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)prepareForActivationWithContext:(id)context presentationMode:(int64_t)mode presentEmbedded:(BOOL)embedded windowScene:(id)scene completion:(id)completion
{
  embeddedCopy = embedded;
  hostContentAdapter = self->_hostContentAdapter;
  completionCopy = completion;
  sceneCopy = scene;
  contextCopy = context;
  [(SBRemoteTransientOverlayHostContentAdapter *)hostContentAdapter setShouldPresentEmbeddedInTargetSceneIfRequested:embeddedCopy];
  -[SBRemoteTransientOverlayHostContentAdapter setShouldEmbedOverShieldedApps:](self->_hostContentAdapter, "setShouldEmbedOverShieldedApps:", [contextCopy shouldEmbedOverShieldedApps]);
  [(SBRemoteTransientOverlayHostContentAdapter *)self->_hostContentAdapter prepareForActivationWithContext:contextCopy presentationMode:mode windowScene:sceneCopy completion:completionCopy];
}

- (void)_configureWallpaperEffectViewWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
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
    if (!settingsCopy)
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
    if (!settingsCopy)
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
    selfCopy = self;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __93__SBRemoteTransientOverlayViewController__configureWallpaperEffectViewWithAnimationSettings___block_invoke_5;
    v16 = &unk_2783A9398;
    selfCopy2 = self;
    v10 = &v18;
    v11 = &v13;
  }

  [v9 animateWithSettings:settingsCopy actions:v10 completion:{v11, v13, v14, v15, v16, selfCopy2, v18, v19, v20, v21, selfCopy}];
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