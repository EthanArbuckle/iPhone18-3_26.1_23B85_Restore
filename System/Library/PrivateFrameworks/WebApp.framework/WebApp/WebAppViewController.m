@interface WebAppViewController
- (WebAppViewController)initWithWebClip:(id)a3;
- (void)_cancelHideSnapshotTimer;
- (void)_connectToService;
- (void)_removeRemoteView;
- (void)_setUpContentViewController:(id)a3;
- (void)dealloc;
- (void)hideLoadingView;
- (void)notificationActivated:(id)a3;
- (void)openURLWithCustomSchemeIfNeeded;
- (void)processWebPushWithIdentifier:(id)a3;
- (void)timeLimitForLoadCompletionExpired;
- (void)webAppViewController:(id)a3 viewServiceDidTerminateWithError:(id)a4;
@end

@implementation WebAppViewController

- (WebAppViewController)initWithWebClip:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = WebAppViewController;
  v6 = [(WebAppViewController *)&v17 initWithNibName:0 bundle:0];
  v6->_orientation = [*MEMORY[0x277D76620] interfaceOrientation];
  objc_storeStrong(&v6->_webClip, a3);
  v7 = [MEMORY[0x277D75348] systemBackgroundColor];
  v8 = [(WebAppViewController *)v6 view];
  [v8 setBackgroundColor:v7];

  v9 = [(UIWebClip *)v6->_webClip pageURL];
  if ([v9 safari_hasCustomScheme])
  {
    v10 = [v9 safari_isDataURL];
    v6->_hasCustomScheme = v10 ^ 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6->_hasCustomScheme = 0;
  }

  v11 = [[LoadingViewController alloc] initWithWebClip:v5 orientation:v6->_orientation];
  loadingViewController = v6->_loadingViewController;
  v6->_loadingViewController = v11;

  v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v6 target:sel_timeLimitForLoadCompletionExpired selector:0 userInfo:0 repeats:10.0];
  hideSnapshotTimer = v6->_hideSnapshotTimer;
  v6->_hideSnapshotTimer = v13;

  v15 = [MEMORY[0x277D75128] sharedApplication];
  [v15 setNetworkActivityIndicatorVisible:1];

  [(WebAppViewController *)v6 _connectToService];
LABEL_6:

  return v6;
}

- (void)dealloc
{
  [(WebAppViewController *)self _cancelHideSnapshotTimer];
  v3.receiver = self;
  v3.super_class = WebAppViewController;
  [(WebAppViewController *)&v3 dealloc];
}

- (void)_connectToService
{
  v3 = [(_UIAsyncInvocation *)self->_cancelViewServiceRequest invoke];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__WebAppViewController__connectToService__block_invoke;
  v6[3] = &unk_279E74098;
  v6[4] = self;
  v4 = [MEMORY[0x277CDB900] requestViewControllerWithConnectionHandler:v6];
  cancelViewServiceRequest = self->_cancelViewServiceRequest;
  self->_cancelViewServiceRequest = v4;
}

void __41__WebAppViewController__connectToService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _setUpContentViewController:v5];
    [*(*(a1 + 32) + 1040) finishWithResult:v5];
  }

  else
  {
    v7 = viewServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __41__WebAppViewController__connectToService__block_invoke_cold_1(v6, v7);
    }

    [*(a1 + 32) webAppViewController:0 viewServiceDidTerminateWithError:0];
  }
}

- (void)_removeRemoteView
{
  v3 = [(_SFWebAppViewController *)self->_contentViewController view];
  [v3 removeFromSuperview];

  [(_SFWebAppViewController *)self->_contentViewController removeFromParentViewController];
  contentViewController = self->_contentViewController;
  self->_contentViewController = 0;
}

- (void)_setUpContentViewController:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_contentViewController, a3);
  v5 = [v10 view];
  v6 = [(WebAppViewController *)self view];
  [v6 bounds];
  [v5 setFrame:?];

  [v10 setDelegate:self];
  if (!self->_wasLaunchedForWebPush)
  {
    v7 = [(WebAppViewController *)self webClip];
    v8 = [v7 identifier];
    [v10 loadWebAppWithIdentifier:v8];
  }

  [(WebAppViewController *)self addChildViewController:v10];
  v9 = [(WebAppViewController *)self view];
  [v9 addSubview:v5];

  [v10 didMoveToParentViewController:self];
  [(WebAppViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(WebAppViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  [(WebAppViewController *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  [(WebAppViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
}

- (void)_cancelHideSnapshotTimer
{
  hideSnapshotTimer = self->_hideSnapshotTimer;
  if (hideSnapshotTimer)
  {
    [(NSTimer *)hideSnapshotTimer invalidate];
    v4 = self->_hideSnapshotTimer;
    self->_hideSnapshotTimer = 0;
  }
}

- (void)timeLimitForLoadCompletionExpired
{
  [(WebAppViewController *)self _cancelHideSnapshotTimer];

  [(WebAppViewController *)self hideLoadingView];
}

- (void)hideLoadingView
{
  if (self->_loadingViewController)
  {
    v3 = [(WebAppViewController *)self presentedViewController];
    loadingViewController = self->_loadingViewController;

    if (v3 == loadingViewController)
    {
      [(WebAppViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  v5 = self->_loadingViewController;
  self->_loadingViewController = 0;
}

- (void)openURLWithCustomSchemeIfNeeded
{
  if (self->_hasCustomScheme)
  {
    v7 = objc_alloc_init(MEMORY[0x277CC1F00]);
    v4 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2882569F8];
    [v7 setReferrerURL:v4];

    v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v6 = [(UIWebClip *)self->_webClip pageURL];
    [v5 openURL:v6 configuration:v7 completionHandler:0];
  }
}

- (void)processWebPushWithIdentifier:(id)a3
{
  v4 = a3;
  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    [(_SFWebAppViewController *)contentViewController processWebPushForWebAppWithIdentifier:v4];
  }

  else
  {
    connectionPromiseForPush = self->_connectionPromiseForPush;
    if (!connectionPromiseForPush)
    {
      v7 = objc_alloc_init(getCPSPromiseClass());
      v8 = self->_connectionPromiseForPush;
      self->_connectionPromiseForPush = v7;

      connectionPromiseForPush = self->_connectionPromiseForPush;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__WebAppViewController_processWebPushWithIdentifier___block_invoke;
    v9[3] = &unk_279E740C0;
    v10 = v4;
    [(CPSPromise *)connectionPromiseForPush addCompletionBlock:v9];
  }
}

- (void)notificationActivated:(id)a3
{
  v4 = a3;
  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    [(_SFWebAppViewController *)contentViewController handlePushNotificationActivation:v4];
  }

  else
  {
    connectionPromiseForPush = self->_connectionPromiseForPush;
    if (!connectionPromiseForPush)
    {
      v7 = objc_alloc_init(getCPSPromiseClass());
      v8 = self->_connectionPromiseForPush;
      self->_connectionPromiseForPush = v7;

      connectionPromiseForPush = self->_connectionPromiseForPush;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__WebAppViewController_notificationActivated___block_invoke;
    v9[3] = &unk_279E740C0;
    v10 = v4;
    [(CPSPromise *)connectionPromiseForPush addCompletionBlock:v9];
  }
}

- (void)webAppViewController:(id)a3 viewServiceDidTerminateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  [(WebAppViewController *)self _removeRemoteView];
  if (!self->_loadingViewController)
  {
    v8 = [[LoadingViewController alloc] initWithWebClip:self->_webClip orientation:self->_orientation];
    loadingViewController = self->_loadingViewController;
    self->_loadingViewController = v8;

    [(WebAppViewController *)self presentViewController:self->_loadingViewController animated:0 completion:0];
  }

  v10 = dispatch_time(0, 1500000000);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__WebAppViewController_webAppViewController_viewServiceDidTerminateWithError___block_invoke;
  v11[3] = &unk_279E740E8;
  objc_copyWeak(&v12, &location);
  dispatch_after(v10, MEMORY[0x277D85CD0], v11);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __78__WebAppViewController_webAppViewController_viewServiceDidTerminateWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectToService];
}

void __41__WebAppViewController__connectToService__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_fault_impl(&dword_272C17000, a2, OS_LOG_TYPE_FAULT, "failed to connect to SafariViewService for Web.app: %{public}@; trying again…", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end