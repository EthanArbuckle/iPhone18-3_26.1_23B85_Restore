@interface SBDashBoardSecureCaptureExtensionHostableEntity
- (CSCoverSheetViewPresenting)hostingViewController;
- (SBDashBoardSecureCaptureExtensionHostableEntity)initWithCaptureApplication:(id)a3 launchType:(unint64_t)a4;
- (SBDisplayItem)displayItemRepresentation;
- (id)_cameraPrewarmer;
- (id)hostingContainerViewController;
- (void)_requestTransitionToCaptureApplication:(id)a3 actions:(id)a4 completion:(id)a5;
- (void)_resetTransitionRequest;
- (void)cameraExtensionViewController:(id)a3 cancelLaunchMonitoringForScene:(id)a4;
- (void)cameraExtensionViewController:(id)a3 didCreateScene:(id)a4;
- (void)cameraExtensionViewController:(id)a3 didDestroyScene:(id)a4;
- (void)cameraExtensionViewController:(id)a3 requestsLaunchAfterTransitionCompletionWithAction:(id)a4 completion:(id)a5;
- (void)cameraExtensionViewController:(id)a3 requestsLaunchMonitoringForScene:(id)a4;
- (void)cameraExtensionViewController:(id)a3 requestsLaunchWithAction:(id)a4 completion:(id)a5;
- (void)cameraExtensionViewControllerWillPresent:(id)a3;
- (void)captureApplicationMonitor:(id)a3 hasMetLaunchRequirements:(BOOL)a4 unmetReason:(id)a5;
- (void)dealloc;
@end

@implementation SBDashBoardSecureCaptureExtensionHostableEntity

- (SBDashBoardSecureCaptureExtensionHostableEntity)initWithCaptureApplication:(id)a3 launchType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBDashBoardSecureCaptureExtensionHostableEntity;
  v8 = [(SBDashBoardSecureCaptureExtensionHostableEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_captureApplication, a3);
    v9->_launchType = a4;
  }

  return v9;
}

- (void)dealloc
{
  [(SBCaptureExtensionIdleTimerManager *)self->_idleTimerManager invalidate];
  idleTimerManager = self->_idleTimerManager;
  self->_idleTimerManager = 0;

  v4.receiver = self;
  v4.super_class = SBDashBoardSecureCaptureExtensionHostableEntity;
  [(SBDashBoardSecureCaptureExtensionHostableEntity *)&v4 dealloc];
}

- (SBDisplayItem)displayItemRepresentation
{
  v2 = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self captureApplication];
  v3 = [v2 extension];
  v4 = [v3 bundleIdentifier];

  v5 = [SBDisplayItem displayItemWithType:7 bundleIdentifier:v4 uniqueIdentifier:@"default"];

  return v5;
}

- (CSCoverSheetViewPresenting)hostingViewController
{
  cameraExtensionViewController = self->_cameraExtensionViewController;
  if (!cameraExtensionViewController)
  {
    v4 = [objc_alloc(MEMORY[0x277D02BB8]) initWithCaptureApplication:self->_captureApplication launchType:self->_launchType];
    v5 = self->_cameraExtensionViewController;
    self->_cameraExtensionViewController = v4;
    v6 = v4;

    [(CSCameraExtensionViewController *)self->_cameraExtensionViewController setDelegate:self];
    v7 = self->_cameraExtensionViewController;
    v8 = +[SBLockScreenManager sharedInstance];
    v9 = [v8 coverSheetViewController];
    [(CSCameraExtensionViewController *)v7 setCoverSheetViewController:v9];

    cameraExtensionViewController = self->_cameraExtensionViewController;
  }

  return cameraExtensionViewController;
}

- (id)hostingContainerViewController
{
  v3 = objc_alloc_init(SBDashBoardCameraContainerViewController);
  [(SBDashBoardCameraContainerViewController *)v3 setHostedEntity:self];
  v4 = [(SBDashBoardCameraContainerViewController *)v3 hostedEntityViewController];
  [v4 setHostableEntityContentMode:2];

  return v3;
}

- (void)cameraExtensionViewController:(id)a3 requestsLaunchWithAction:(id)a4 completion:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [a3 captureApplication];
  v11 = [v10 bundleIdentifier];
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Launch request received for capture application: %@", &v14, 0xCu);
  }

  if (self->_transitionToApplicationRequest)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Already have an ongoing transition request for this capture application: %@, dropping this request", &v14, 0xCu);
    }
  }

  else
  {
    v13 = objc_opt_new();
    [v13 addObject:v8];
    [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _requestTransitionToCaptureApplication:v10 actions:v13 completion:v9];
  }
}

- (void)cameraExtensionViewController:(id)a3 requestsLaunchAfterTransitionCompletionWithAction:(id)a4 completion:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [a3 captureApplication];
  v11 = [v10 bundleIdentifier];
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "After transition completion request received for capture application: %@", &v14, 0xCu);
  }

  if (self->_transitionToApplicationRequest)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Already have an ongoing transition request for this capture application: %@, dropping this request", &v14, 0xCu);
    }
  }

  else
  {
    v13 = objc_opt_new();
    [v13 addObject:v8];
    [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _requestTransitionToCaptureApplication:v10 actions:v13 completion:v9];
  }
}

- (void)cameraExtensionViewController:(id)a3 requestsLaunchMonitoringForScene:(id)a4
{
  if (!self->_launchMonitor)
  {
    v6 = a4;
    v7 = [[SBCaptureApplicationLaunchMonitor alloc] initWithScene:v6 delegate:self];

    launchMonitor = self->_launchMonitor;
    self->_launchMonitor = v7;

    v9 = self->_launchMonitor;

    [(SBCaptureApplicationLaunchMonitor *)v9 start];
  }
}

- (void)cameraExtensionViewController:(id)a3 cancelLaunchMonitoringForScene:(id)a4
{
  if (!self->_launchMonitor)
  {
    [0 invalidate];
    launchMonitor = self->_launchMonitor;
    self->_launchMonitor = 0;
  }
}

- (void)cameraExtensionViewControllerWillPresent:(id)a3
{
  if (!self->_isCameraPrewarmed)
  {
    v5 = MEMORY[0x277D02BC0];
    v6 = a3;
    v7 = [v5 alloc];
    v8 = [v6 captureApplication];

    v9 = [v8 bundleIdentifier];
    v11 = [v7 initWithCameraPrewarmType:2 applicationBundleIdentifier:v9];

    v10 = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _cameraPrewarmer];
    [v10 prewarmCameraForIdentifier:v11];

    self->_isCameraPrewarmed = 1;
  }
}

- (void)cameraExtensionViewController:(id)a3 didCreateScene:(id)a4
{
  v5 = a3;
  v8 = [v5 entityPresenterDelegate];
  [v8 hostableEntityPresenter:v5 didBeginHosting:self];

  if (!self->_idleTimerManager)
  {
    v6 = objc_alloc_init(SBCaptureExtensionIdleTimerManager);
    idleTimerManager = self->_idleTimerManager;
    self->_idleTimerManager = v6;
  }
}

- (void)cameraExtensionViewController:(id)a3 didDestroyScene:(id)a4
{
  v5 = a3;
  v7 = [v5 entityPresenterDelegate];
  [v7 hostableEntityPresenter:v5 didEndHosting:self];

  [(SBCaptureExtensionIdleTimerManager *)self->_idleTimerManager invalidate];
  idleTimerManager = self->_idleTimerManager;
  self->_idleTimerManager = 0;

  [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _resetTransitionRequest];
}

- (void)captureApplicationMonitor:(id)a3 hasMetLaunchRequirements:(BOOL)a4 unmetReason:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (!a4)
  {
    v9 = a3;
    v10 = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self hostingViewController];
    [v10 launchMonitorWillTerminate];
    [v10 dismiss];
    v11 = [v9 scene];

    v12 = [v11 clientHandle];

    if (v12)
    {
      v13 = [v12 processHandle];
      if (v13)
      {
        v14 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:v13];
        v15 = objc_alloc(MEMORY[0x277D47010]);
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capture Application Requirements Unmet: %@", v8];
        v17 = [v15 initWithExplanation:v16];

        [v17 setReportType:1];
        [v17 setMaximumTerminationResistance:40];
        v28 = v14;
        v18 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v14 context:v17];
        v19 = SBLogCaptureApplication();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v13 bundle];
          v21 = [v20 identifier];
          *buf = 138543618;
          v31 = v21;
          v32 = 2114;
          v33 = v8;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Locked capture launch monitor requesting termination of %{public}@ for reason: %{public}@", buf, 0x16u);
        }

        v29 = 0;
        v22 = [v18 execute:&v29];
        v23 = v29;
        if ((v22 & 1) == 0)
        {
          v24 = SBLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v23;
            _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Launch monitor failed to terminate the extension: %@", buf, 0xCu);
          }
        }

        v25 = +[SBCaptureApplicationCenter sharedInstance];
        v26 = [v13 name];
        [v25 promptLaunchTerminationAlertIfNecessaryForProcess:v26 afterDelay:v8 reason:1.0];
      }
    }
  }

  [(SBCaptureApplicationLaunchMonitor *)self->_launchMonitor invalidate];
  launchMonitor = self->_launchMonitor;
  self->_launchMonitor = 0;
}

- (id)_cameraPrewarmer
{
  v2 = +[SBLockScreenManager sharedInstance];
  v3 = [v2 coverSheetViewController];
  v4 = [v3 cameraPrewarmer];

  return v4;
}

- (void)_requestTransitionToCaptureApplication:(id)a3 actions:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogDashBoard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self captureApplication];
    v13 = [v12 bundleIdentifier];
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Requesting a launch for capture application (%@)", buf, 0xCu);
  }

  v14 = [[SBDashBoardCaptureApplicationTransitionRequest alloc] initWithCaptureApplication:v8];
  [(SBDashBoardCaptureApplicationTransitionRequest *)v14 setDelegate:self];
  v15 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [(SBDashBoardCaptureApplicationTransitionRequest *)v14 setLaunchActions:v15];

  objc_initWeak(buf, self);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __109__SBDashBoardSecureCaptureExtensionHostableEntity__requestTransitionToCaptureApplication_actions_completion___block_invoke;
  v20 = &unk_2783B0F70;
  objc_copyWeak(&v22, buf);
  v16 = v10;
  v21 = v16;
  [(SBDashBoardCaptureApplicationTransitionRequest *)v14 setCompletion:&v17];
  objc_storeStrong(&self->_transitionToApplicationRequest, v14);
  [(SBDashBoardCaptureApplicationTransitionRequest *)self->_transitionToApplicationRequest initiate:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __109__SBDashBoardSecureCaptureExtensionHostableEntity__requestTransitionToCaptureApplication_actions_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }

  [WeakRetained _resetTransitionRequest];
}

- (void)_resetTransitionRequest
{
  transitionToApplicationRequest = self->_transitionToApplicationRequest;
  self->_transitionToApplicationRequest = 0;
}

@end