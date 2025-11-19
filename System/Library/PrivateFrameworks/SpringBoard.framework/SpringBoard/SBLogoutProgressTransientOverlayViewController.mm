@interface SBLogoutProgressTransientOverlayViewController
- (BOOL)_supportsDebugUI;
- (NSString)coverSheetIdentifier;
- (SBLogoutProgressDataSource)dataSource;
- (SBLogoutProgressDelegate)delegate;
- (SBLogoutProgressTransientOverlayViewController)initWithUserAccount:(id)a3;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (int64_t)preferredStatusBarStyle;
- (void)_updateData;
- (void)_updateDebugTasksViewControllerSizeFromSize:(CGSize)a3;
- (void)_updateLegibility;
- (void)prepareForRestart;
- (void)setContainerOrientation:(int64_t)a3;
- (void)setDataSource:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBLogoutProgressTransientOverlayViewController

- (SBLogoutProgressTransientOverlayViewController)initWithUserAccount:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBLogoutProgressTransientOverlayViewController;
  v6 = [(SBLogoutProgressTransientOverlayViewController *)&v13 init];
  if (v6)
  {
    v7 = +[SBPlatformController sharedInstance];
    platformController = v6->_platformController;
    v6->_platformController = v7;

    v9 = +[SBDefaults localDefaults];
    v10 = [v9 multiUserDefaults];
    multiUserDefaults = v6->_multiUserDefaults;
    v6->_multiUserDefaults = v10;

    objc_storeStrong(&v6->_user, a3);
  }

  return v6;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
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
  v3 = [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController view];
  [v3 setHidden:1];

  progressView = self->_progressView;

  [(SBLogoutProgressView *)progressView setProgressVisible:0];
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(SBLogoutProgressTransientOverlayViewController *)self _legibilitySettings];
  v3 = [v2 style];

  return v3 < 2;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 viewDidDisappear:a3];
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
  v3 = [(SBTransientOverlayViewController *)self backgroundView];
  [v3 bounds];
  [(MTMaterialView *)self->_overlayMaterialView setFrame:?];
  v4 = [(SBTransientOverlayViewController *)self contentView];
  [v4 bounds];
  [(SBLogoutProgressView *)self->_progressView setFrame:?];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v29 viewDidLoad];
  v3 = [(SBTransientOverlayViewController *)self contentView];
  [v3 bounds];
  v8 = [[SBLogoutProgressView alloc] initWithFrame:v4, v5, v6, v7];
  progressView = self->_progressView;
  self->_progressView = v8;

  v10 = self->_progressView;
  v11 = [MEMORY[0x277CBDA58] contactForUser:self->_user];
  [(SBLogoutProgressView *)v10 setUserContact:v11];

  v12 = self->_progressView;
  v13 = [MEMORY[0x277D75348] clearColor];
  [(SBLogoutProgressView *)v12 setBackgroundColor:v13];

  [v3 addSubview:self->_progressView];
  v14 = [(SBTransientOverlayViewController *)self backgroundView];
  [v14 bounds];
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
  [v14 addSubview:self->_overlayMaterialView];
  if ([(SBLogoutProgressTransientOverlayViewController *)self _supportsDebugUI])
  {
    v27 = objc_alloc_init(SBLogoutDebugBlockingViewController);
    debugTasksViewController = self->_debugTasksViewController;
    self->_debugTasksViewController = v27;
  }

  [(SBLogoutProgressTransientOverlayViewController *)self _updateData];
  [(SBLogoutProgressTransientOverlayViewController *)self _updateLegibility];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBLogoutProgressTransientOverlayViewController *)&v13 viewWillAppear:a3];
  debugTasksViewController = self->_debugTasksViewController;
  if (debugTasksViewController)
  {
    v5 = [(SBLogoutDebugBlockingViewController *)debugTasksViewController parentViewController];

    if (v5 == self)
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
      v9 = [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController view];
      [(SBLogoutProgressView *)progressView addSubview:v9];

      [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController didMoveToParentViewController:self];
    }
  }

  v12 = +[SBMainStatusBarStateProvider sharedInstance];
  [v12 disableStatusBarItem:8 requestor:@"SBLogoutProgressTransientOverlayViewController"];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
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

- (void)setContainerOrientation:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = SBLogoutProgressTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v3 setContainerOrientation:a3];
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

- (void)_updateDebugTasksViewControllerSizeFromSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(SBLogoutDebugBlockingViewController *)self->_debugTasksViewController view];
  [v5 setFrame:{0.0, 0.0, width * 0.5, height}];
}

- (void)_updateLegibility
{
  progressView = self->_progressView;
  v3 = [(SBLogoutProgressTransientOverlayViewController *)self _legibilitySettings];
  [(SBLogoutProgressView *)progressView setLegibilitySettings:v3];
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