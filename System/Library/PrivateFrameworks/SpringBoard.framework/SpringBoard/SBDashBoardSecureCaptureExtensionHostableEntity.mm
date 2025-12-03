@interface SBDashBoardSecureCaptureExtensionHostableEntity
- (CSCoverSheetViewPresenting)hostingViewController;
- (SBDashBoardSecureCaptureExtensionHostableEntity)initWithCaptureApplication:(id)application launchType:(unint64_t)type;
- (SBDisplayItem)displayItemRepresentation;
- (id)_cameraPrewarmer;
- (id)hostingContainerViewController;
- (void)_requestTransitionToCaptureApplication:(id)application actions:(id)actions completion:(id)completion;
- (void)_resetTransitionRequest;
- (void)cameraExtensionViewController:(id)controller cancelLaunchMonitoringForScene:(id)scene;
- (void)cameraExtensionViewController:(id)controller didCreateScene:(id)scene;
- (void)cameraExtensionViewController:(id)controller didDestroyScene:(id)scene;
- (void)cameraExtensionViewController:(id)controller requestsLaunchAfterTransitionCompletionWithAction:(id)action completion:(id)completion;
- (void)cameraExtensionViewController:(id)controller requestsLaunchMonitoringForScene:(id)scene;
- (void)cameraExtensionViewController:(id)controller requestsLaunchWithAction:(id)action completion:(id)completion;
- (void)cameraExtensionViewControllerWillPresent:(id)present;
- (void)captureApplicationMonitor:(id)monitor hasMetLaunchRequirements:(BOOL)requirements unmetReason:(id)reason;
- (void)dealloc;
@end

@implementation SBDashBoardSecureCaptureExtensionHostableEntity

- (SBDashBoardSecureCaptureExtensionHostableEntity)initWithCaptureApplication:(id)application launchType:(unint64_t)type
{
  applicationCopy = application;
  v11.receiver = self;
  v11.super_class = SBDashBoardSecureCaptureExtensionHostableEntity;
  v8 = [(SBDashBoardSecureCaptureExtensionHostableEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_captureApplication, application);
    v9->_launchType = type;
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
  captureApplication = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self captureApplication];
  extension = [captureApplication extension];
  bundleIdentifier = [extension bundleIdentifier];

  v5 = [SBDisplayItem displayItemWithType:7 bundleIdentifier:bundleIdentifier uniqueIdentifier:@"default"];

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
    coverSheetViewController = [v8 coverSheetViewController];
    [(CSCameraExtensionViewController *)v7 setCoverSheetViewController:coverSheetViewController];

    cameraExtensionViewController = self->_cameraExtensionViewController;
  }

  return cameraExtensionViewController;
}

- (id)hostingContainerViewController
{
  v3 = objc_alloc_init(SBDashBoardCameraContainerViewController);
  [(SBDashBoardCameraContainerViewController *)v3 setHostedEntity:self];
  hostedEntityViewController = [(SBDashBoardCameraContainerViewController *)v3 hostedEntityViewController];
  [hostedEntityViewController setHostableEntityContentMode:2];

  return v3;
}

- (void)cameraExtensionViewController:(id)controller requestsLaunchWithAction:(id)action completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  completionCopy = completion;
  captureApplication = [controller captureApplication];
  bundleIdentifier = [captureApplication bundleIdentifier];
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Launch request received for capture application: %@", &v14, 0xCu);
  }

  if (self->_transitionToApplicationRequest)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Already have an ongoing transition request for this capture application: %@, dropping this request", &v14, 0xCu);
    }
  }

  else
  {
    v13 = objc_opt_new();
    [v13 addObject:actionCopy];
    [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _requestTransitionToCaptureApplication:captureApplication actions:v13 completion:completionCopy];
  }
}

- (void)cameraExtensionViewController:(id)controller requestsLaunchAfterTransitionCompletionWithAction:(id)action completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  completionCopy = completion;
  captureApplication = [controller captureApplication];
  bundleIdentifier = [captureApplication bundleIdentifier];
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "After transition completion request received for capture application: %@", &v14, 0xCu);
  }

  if (self->_transitionToApplicationRequest)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Already have an ongoing transition request for this capture application: %@, dropping this request", &v14, 0xCu);
    }
  }

  else
  {
    v13 = objc_opt_new();
    [v13 addObject:actionCopy];
    [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _requestTransitionToCaptureApplication:captureApplication actions:v13 completion:completionCopy];
  }
}

- (void)cameraExtensionViewController:(id)controller requestsLaunchMonitoringForScene:(id)scene
{
  if (!self->_launchMonitor)
  {
    sceneCopy = scene;
    v7 = [[SBCaptureApplicationLaunchMonitor alloc] initWithScene:sceneCopy delegate:self];

    launchMonitor = self->_launchMonitor;
    self->_launchMonitor = v7;

    v9 = self->_launchMonitor;

    [(SBCaptureApplicationLaunchMonitor *)v9 start];
  }
}

- (void)cameraExtensionViewController:(id)controller cancelLaunchMonitoringForScene:(id)scene
{
  if (!self->_launchMonitor)
  {
    [0 invalidate];
    launchMonitor = self->_launchMonitor;
    self->_launchMonitor = 0;
  }
}

- (void)cameraExtensionViewControllerWillPresent:(id)present
{
  if (!self->_isCameraPrewarmed)
  {
    v5 = MEMORY[0x277D02BC0];
    presentCopy = present;
    v7 = [v5 alloc];
    captureApplication = [presentCopy captureApplication];

    bundleIdentifier = [captureApplication bundleIdentifier];
    v11 = [v7 initWithCameraPrewarmType:2 applicationBundleIdentifier:bundleIdentifier];

    _cameraPrewarmer = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _cameraPrewarmer];
    [_cameraPrewarmer prewarmCameraForIdentifier:v11];

    self->_isCameraPrewarmed = 1;
  }
}

- (void)cameraExtensionViewController:(id)controller didCreateScene:(id)scene
{
  controllerCopy = controller;
  entityPresenterDelegate = [controllerCopy entityPresenterDelegate];
  [entityPresenterDelegate hostableEntityPresenter:controllerCopy didBeginHosting:self];

  if (!self->_idleTimerManager)
  {
    v6 = objc_alloc_init(SBCaptureExtensionIdleTimerManager);
    idleTimerManager = self->_idleTimerManager;
    self->_idleTimerManager = v6;
  }
}

- (void)cameraExtensionViewController:(id)controller didDestroyScene:(id)scene
{
  controllerCopy = controller;
  entityPresenterDelegate = [controllerCopy entityPresenterDelegate];
  [entityPresenterDelegate hostableEntityPresenter:controllerCopy didEndHosting:self];

  [(SBCaptureExtensionIdleTimerManager *)self->_idleTimerManager invalidate];
  idleTimerManager = self->_idleTimerManager;
  self->_idleTimerManager = 0;

  [(SBDashBoardSecureCaptureExtensionHostableEntity *)self _resetTransitionRequest];
}

- (void)captureApplicationMonitor:(id)monitor hasMetLaunchRequirements:(BOOL)requirements unmetReason:(id)reason
{
  v34 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!requirements)
  {
    monitorCopy = monitor;
    hostingViewController = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self hostingViewController];
    [hostingViewController launchMonitorWillTerminate];
    [hostingViewController dismiss];
    scene = [monitorCopy scene];

    clientHandle = [scene clientHandle];

    if (clientHandle)
    {
      processHandle = [clientHandle processHandle];
      if (processHandle)
      {
        v14 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:processHandle];
        v15 = objc_alloc(MEMORY[0x277D47010]);
        reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Capture Application Requirements Unmet: %@", reasonCopy];
        v17 = [v15 initWithExplanation:reasonCopy];

        [v17 setReportType:1];
        [v17 setMaximumTerminationResistance:40];
        v28 = v14;
        v18 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v14 context:v17];
        v19 = SBLogCaptureApplication();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          bundle = [processHandle bundle];
          identifier = [bundle identifier];
          *buf = 138543618;
          v31 = identifier;
          v32 = 2114;
          v33 = reasonCopy;
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
        name = [processHandle name];
        [v25 promptLaunchTerminationAlertIfNecessaryForProcess:name afterDelay:reasonCopy reason:1.0];
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
  coverSheetViewController = [v2 coverSheetViewController];
  cameraPrewarmer = [coverSheetViewController cameraPrewarmer];

  return cameraPrewarmer;
}

- (void)_requestTransitionToCaptureApplication:(id)application actions:(id)actions completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  actionsCopy = actions;
  completionCopy = completion;
  v11 = SBLogDashBoard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    captureApplication = [(SBDashBoardSecureCaptureExtensionHostableEntity *)self captureApplication];
    bundleIdentifier = [captureApplication bundleIdentifier];
    *buf = 138412290;
    v24 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Requesting a launch for capture application (%@)", buf, 0xCu);
  }

  v14 = [[SBDashBoardCaptureApplicationTransitionRequest alloc] initWithCaptureApplication:applicationCopy];
  [(SBDashBoardCaptureApplicationTransitionRequest *)v14 setDelegate:self];
  v15 = [MEMORY[0x277CBEB98] setWithArray:actionsCopy];
  [(SBDashBoardCaptureApplicationTransitionRequest *)v14 setLaunchActions:v15];

  objc_initWeak(buf, self);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __109__SBDashBoardSecureCaptureExtensionHostableEntity__requestTransitionToCaptureApplication_actions_completion___block_invoke;
  v20 = &unk_2783B0F70;
  objc_copyWeak(&v22, buf);
  v16 = completionCopy;
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