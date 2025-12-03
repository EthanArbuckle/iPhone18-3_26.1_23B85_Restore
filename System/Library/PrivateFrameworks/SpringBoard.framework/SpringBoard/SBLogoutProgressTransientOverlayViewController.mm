@interface SBLogoutProgressTransientOverlayViewController
- (BOOL)_supportsDebugUI;
- (NSString)coverSheetIdentifier;
- (SBLogoutProgressDataSource)dataSource;
- (SBLogoutProgressDelegate)delegate;
- (SBLogoutProgressTransientOverlayViewController)initWithUserAccount:(id)account;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (int64_t)preferredStatusBarStyle;
- (void)_updateData;
- (void)_updateDebugTasksViewControllerSizeFromSize:(CGSize)size;
- (void)_updateLegibility;
- (void)prepareForRestart;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)setDataSource:(id)source;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBLogoutProgressTransientOverlayViewController

- (SBLogoutProgressTransientOverlayViewController)initWithUserAccount:(id)account
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = SBLogoutProgressTransientOverlayViewController;
  v6 = [(SBLogoutProgressTransientOverlayViewController *)&v13 init];
  if (v6)
  {
    v7 = +[SBPlatformController sharedInstance];
    platformController = v6->_platformController;
    v6->_platformController = v7;

    v9 = +[SBDefaults localDefaults];
    multiUserDefaults = [v9 multiUserDefaults];
    multiUserDefaults = v6->_multiUserDefaults;
    v6->_multiUserDefaults = multiUserDefaults;

    objc_storeStrong(&v6->_user, account);
  }

  return v6;
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(SBLogoutProgressTransientOverlayViewController *)self _updateData];
    v5 = obj;
  }
}

- (void)prepareForRestart
{
  view = [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController view];
  [view setHidden:1];

  progressView = self->_progressView;

  [(SBLogoutProgressView *)progressView setProgressVisible:0];
}

- (int64_t)preferredStatusBarStyle
{
  _legibilitySettings = [(SBLogoutProgressTransientOverlayViewController *)self _legibilitySettings];
  style = [_legibilitySettings style];

  return style < 2;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 viewDidDisappear:disappear];
  v4 = +[SBMainStatusBarStateProvider sharedInstance];
  [v4 enableStatusBarItem:8 requestor:@"SBLogoutProgressTransientOverlayViewController"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained logoutProgressTransientOverlayViewControllerDidDisappear:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidLayoutSubviews];
  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [backgroundView bounds];
  [(MTMaterialView *)self->_overlayMaterialView setFrame:?];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  [(SBLogoutProgressView *)self->_progressView setFrame:?];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v29 viewDidLoad];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  v8 = [[SBLogoutProgressView alloc] initWithFrame:v4, v5, v6, v7];
  progressView = self->_progressView;
  self->_progressView = v8;

  v10 = self->_progressView;
  v11 = [MEMORY[0x277CBDA58] contactForUser:self->_user];
  [(SBLogoutProgressView *)v10 setUserContact:v11];

  v12 = self->_progressView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SBLogoutProgressView *)v12 setBackgroundColor:clearColor];

  [contentView addSubview:self->_progressView];
  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [backgroundView bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = MEMORY[0x277D26718];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v23 materialViewWithRecipeNamed:@"logoutProgressOverlay" inBundle:v24 options:0 initialWeighting:0 scaleAdjustment:1.0];
  overlayMaterialView = self->_overlayMaterialView;
  self->_overlayMaterialView = v25;

  [(MTMaterialView *)self->_overlayMaterialView setFrame:v16, v18, v20, v22];
  [backgroundView addSubview:self->_overlayMaterialView];
  if ([(SBLogoutProgressTransientOverlayViewController *)self _supportsDebugUI])
  {
    v27 = objc_alloc_init(SBLogoutDebugBlockingViewController);
    debugTasksViewController = self->_debugTasksViewController;
    self->_debugTasksViewController = v27;
  }

  [(SBLogoutProgressTransientOverlayViewController *)self _updateData];
  [(SBLogoutProgressTransientOverlayViewController *)self _updateLegibility];
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBLogoutProgressTransientOverlayViewController *)&v13 viewWillAppear:appear];
  debugTasksViewController = self->_debugTasksViewController;
  if (debugTasksViewController)
  {
    parentViewController = [(SBLogoutDebugBlockingViewController *)debugTasksViewController parentViewController];

    if (parentViewController == self)
    {
      [(SBLogoutProgressView *)self->_progressView frame];
      [(SBLogoutProgressTransientOverlayViewController *)self _updateDebugTasksViewControllerSizeFromSize:v10, v11];
    }

    else
    {
      [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController willMoveToParentViewController:self];
      [(SBLogoutProgressTransientOverlayViewController *)self addChildViewController:self->_debugTasksViewController];
      [(SBLogoutProgressView *)self->_progressView frame];
      [(SBLogoutProgressTransientOverlayViewController *)self _updateDebugTasksViewControllerSizeFromSize:v6, v7];
      progressView = self->_progressView;
      view = [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController view];
      [(SBLogoutProgressView *)progressView addSubview:view];

      [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController didMoveToParentViewController:self];
    }
  }

  v12 = +[SBMainStatusBarStateProvider sharedInstance];
  [v12 disableStatusBarItem:8 requestor:@"SBLogoutProgressTransientOverlayViewController"];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  [(SBLogoutProgressTransientOverlayViewController *)self _updateDebugTasksViewControllerSizeFromSize:width, height];
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __99__SBLogoutProgressTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __99__SBLogoutProgressTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAnimated])
  {
    v4 = [*(a1 + 32) view];
    v5 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __99__SBLogoutProgressTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
    v9[3] = &unk_2783A92D8;
    v10 = v4;
    v11 = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __99__SBLogoutProgressTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
    v7[3] = &unk_2783A9398;
    v8 = v11;
    v6 = v4;
    [v5 animateWithDuration:327680 delay:v9 options:v7 animations:0.3 completion:0.0];
  }

  else
  {
    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
  }
}

uint64_t __99__SBLogoutProgressTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 performAlongsideTransitions];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __102__SBLogoutProgressTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __102__SBLogoutProgressTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1472));
  if ([v3 isAnimated])
  {
    v5 = [*(a1 + 32) view];
    v6 = MEMORY[0x277D75D18];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __102__SBLogoutProgressTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
    v19[3] = &unk_2783A8C18;
    v7 = v5;
    v20 = v7;
    [v6 performWithoutAnimation:v19];
    v8 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __102__SBLogoutProgressTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
    v16[3] = &unk_2783A92D8;
    v17 = v7;
    v18 = v3;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __102__SBLogoutProgressTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4;
    v12[3] = &unk_2783A9940;
    v13 = v18;
    v9 = WeakRetained;
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v11 = v7;
    [v8 animateWithDuration:327680 delay:v16 options:v12 animations:0.3 completion:0.0];
  }

  else
  {
    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete:*(a1 + 32)];
    }
  }
}

uint64_t __102__SBLogoutProgressTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 performAlongsideTransitions];
}

uint64_t __102__SBLogoutProgressTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete:v4];
  }

  return result;
}

- (void)setContainerOrientation:(int64_t)orientation
{
  v3.receiver = self;
  v3.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v3 setContainerOrientation:orientation];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)_supportsDebugUI
{
  if (([(SBMultiUserDefaults *)self->_multiUserDefaults disablesInternalDebugBlockingTasksUI]& 1) != 0 || ![(SBPlatformController *)self->_platformController isInternalInstall])
  {
    v4 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)_updateDebugTasksViewControllerSizeFromSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController view];
  [view setFrame:{0.0, 0.0, width * 0.5, height}];
}

- (void)_updateLegibility
{
  progressView = self->_progressView;
  _legibilitySettings = [(SBLogoutProgressTransientOverlayViewController *)self _legibilitySettings];
  [(SBLogoutProgressView *)progressView setLegibilitySettings:_legibilitySettings];
}

- (void)_updateData
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained pendingApplicationsForLogoutProgressTransientOverlayViewController:self];
  [(SBLogoutProgressView *)self->_progressView setPendingApplications:v3];
  if ([(SBLogoutProgressTransientOverlayViewController *)self _supportsDebugUI])
  {
    debugTasksViewController = self->_debugTasksViewController;
    v5 = [WeakRetained debugBlockingTasksForLogoutProgressTransientOverlayViewController:self];
    [(SBLogoutDebugBlockingViewController *)debugTasksViewController setDebugBlockingTasks:v5];
  }
}

- (SBLogoutProgressDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SBLogoutProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end