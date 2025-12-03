@interface SRAuthorizationPromptPresentationController
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)presentAnyViewController:(id)controller reason:(int64_t)reason completionHandler:(id)handler;
- (id)navigationControllerFromRoot:(id)root;
- (id)presentationAnchor;
- (id)presentingViewControllerFromRoot:(id)root;
- (void)authorizationRequestDidDisappear;
- (void)authorizationRequestWillDisappear;
- (void)authorizationUIReadyForDisplayModally:(BOOL)modally;
- (void)completePromptWithError:(id)error;
- (void)dealloc;
- (void)presentAppsAndStudiesPromptViewController:(id)controller completionHandler:(id)handler;
- (void)presentFirstRunOnboardingViewController:(id)controller completionHandler:(id)handler;
- (void)presentMigrationPromptViewController:(id)controller withDesiredServices:(id)services bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)presentPromptViewController:(id)controller withDesiredServices:(id)services bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)presentResearchDataViewController:(id)controller completionHandler:(id)handler;
- (void)presentStudyAuthorizationPromptViewController:(id)controller bundlePath:(id)path completionHandler:(id)handler;
- (void)viewControllerCleanUp;
@end

@implementation SRAuthorizationPromptPresentationController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAuthorizationPromptPresentationController = os_log_create("com.apple.SensorKit", "AuthorizationPromptPresentationController");
  }
}

+ (id)sharedInstance
{
  if (qword_28001A2A8 != -1)
  {
    dispatch_once(&qword_28001A2A8, &__block_literal_global);
  }

  return _MergedGlobals_5;
}

SRAuthorizationPromptPresentationController *__61__SRAuthorizationPromptPresentationController_sharedInstance__block_invoke()
{
  result = objc_alloc_init(SRAuthorizationPromptPresentationController);
  _MergedGlobals_5 = result;
  return result;
}

- (void)dealloc
{
  [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] invalidate];
  [(SRAuthorizationPromptPresentationController *)self setViewController:0];
  [(SRAuthorizationPromptPresentationController *)self setCompletionHandler:0];
  [(SRAuthorizationPromptPresentationController *)self setError:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationPromptPresentationController;
  [(SRAuthorizationPromptPresentationController *)&v3 dealloc];
}

- (BOOL)presentAnyViewController:(id)controller reason:(int64_t)reason completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  isPresenting = [(SRAuthorizationPromptPresentationController *)self isPresenting];
  if (isPresenting)
  {
    v10 = SRLogAuthorizationPromptPresentationController;
    if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      reasonCopy = reason;
      v15 = 2048;
      reason = [(SRAuthorizationPromptPresentationController *)self reason];
      _os_log_error_impl(&dword_265602000, v10, OS_LOG_TYPE_ERROR, "Rejecting prompt request %ld due to ongoing prompt %ld", &v13, 0x16u);
    }

    (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDC650] code:8195 userInfo:0]);
  }

  else
  {
    [(SRAuthorizationPromptPresentationController *)self setPresenting:1];
    [(SRAuthorizationPromptPresentationController *)self setReason:reason];
    [(SRAuthorizationPromptPresentationController *)self setError:0];
    [(SRAuthorizationPromptPresentationController *)self setCompletionHandler:handler];
    [(SRAuthorizationPromptPresentationController *)self setViewController:controller];
    [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] setDelegate:self];
  }

  v11 = *MEMORY[0x277D85DE8];
  return !isPresenting;
}

- (void)presentPromptViewController:(id)controller withDesiredServices:(id)services bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:controller reason:1 completionHandler:handler])
  {
    viewController = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)viewController requestAuthorizationForBundle:identifier services:services];
  }
}

- (void)presentMigrationPromptViewController:(id)controller withDesiredServices:(id)services bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:controller reason:7 completionHandler:handler])
  {
    viewController = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)viewController requestAuthorizationMigrationForBundle:identifier services:services];
  }
}

- (void)presentAppsAndStudiesPromptViewController:(id)controller completionHandler:(id)handler
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:controller reason:3 completionHandler:handler])
  {
    viewController = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)viewController showAppsAndStudies];
  }
}

- (void)presentStudyAuthorizationPromptViewController:(id)controller bundlePath:(id)path completionHandler:(id)handler
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:controller reason:4 completionHandler:handler])
  {
    viewController = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)viewController showStudyAuthorizationForBundlePath:path];
  }
}

- (void)presentResearchDataViewController:(id)controller completionHandler:(id)handler
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:controller reason:5 completionHandler:handler])
  {
    viewController = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)viewController showResearchData];
  }
}

- (void)presentFirstRunOnboardingViewController:(id)controller completionHandler:(id)handler
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:controller reason:6 completionHandler:handler])
  {
    viewController = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)viewController showFirstRunOnboarding];
  }
}

- (id)presentationAnchor
{
  v2 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];

  return [v2 rootViewController];
}

- (void)authorizationUIReadyForDisplayModally:(BOOL)modally
{
  modallyCopy = modally;
  v5 = SRLogAuthorizationPromptPresentationController;
  if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Putting up prompt UI", v8, 2u);
  }

  presentationAnchor = [(SRAuthorizationPromptPresentationController *)self presentationAnchor];
  if (modallyCopy)
  {
    [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] setModalPresentationStyle:2];
    [-[SRAuthorizationPromptPresentationController presentingViewControllerFromRoot:](self presentingViewControllerFromRoot:{presentationAnchor), "presentViewController:animated:completion:", -[SRAuthorizationPromptPresentationController viewController](self, "viewController"), 1, 0}];
  }

  else
  {
    v7 = [(SRAuthorizationPromptPresentationController *)self navigationControllerFromRoot:presentationAnchor];
    [v7 pushViewController:-[SRAuthorizationPromptPresentationController viewController](self animated:{"viewController"), 1}];
    -[SRAuthorizationPromptPresentationController setHostNavigationBarHidden:](self, "setHostNavigationBarHidden:", [v7 isNavigationBarHidden]);
    [v7 setNavigationBarHidden:1];
  }
}

- (void)authorizationRequestWillDisappear
{
  v3 = SRLogAuthorizationPromptPresentationController;
  if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down prompt UI", buf, 2u);
  }

  if (![(SRAuthorizationPromptPresentationController *)self isViewControllerPresentedModally])
  {
    v4 = SRLogAuthorizationPromptPresentationController;
    if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_265602000, v4, OS_LOG_TYPE_DEFAULT, "Prompt ViewController is not modal, hiding the host navigation bar", v5, 2u);
    }

    [-[SRAuthorizationPromptPresentationController navigationControllerFromRoot:](self navigationControllerFromRoot:{-[SRAuthorizationPromptPresentationController presentationAnchor](self, "presentationAnchor")), "setNavigationBarHidden:", -[SRAuthorizationPromptPresentationController hostNavigationBarHidden](self, "hostNavigationBarHidden")}];
  }
}

- (void)authorizationRequestDidDisappear
{
  v3 = SRLogAuthorizationPromptPresentationController;
  if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Prompt UI torn down", buf, 2u);
  }

  isMovingFromParentViewController = [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] isMovingFromParentViewController];
  if (![(SRAuthorizationPromptPresentationController *)self isViewControllerPresentedModally]&& (isMovingFromParentViewController & 1) == 0)
  {
    v5 = SRLogAuthorizationPromptPresentationController;
    if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Prompt ViewController is not moving from parent view controller, popping from the navigation controller if necessary", v7, 2u);
    }

    parentViewController = [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [parentViewController popViewControllerAnimated:0];
    }
  }

  [(SRAuthorizationPromptPresentationController *)self viewControllerCleanUp];
}

- (void)viewControllerCleanUp
{
  v3 = SRLogAuthorizationPromptPresentationController;
  if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Clearing prompt ViewController", v5, 2u);
  }

  [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] invalidate];
  [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] setDelegate:0];
  [(SRAuthorizationPromptPresentationController *)self setViewController:0];
  completionHandler = [(SRAuthorizationPromptPresentationController *)self completionHandler];
  [(SRAuthorizationPromptPresentationController *)self setPresenting:0];
  [(SRAuthorizationPromptPresentationController *)self setReason:0];
  completionHandler[2](completionHandler, [(SRAuthorizationPromptPresentationController *)self error]);

  [(SRAuthorizationPromptPresentationController *)self setError:0];
}

- (void)completePromptWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  [(SRAuthorizationPromptPresentationController *)self setError:error];
  v4 = [(SRAuthorizationPromptPresentationController *)self navigationControllerFromRoot:[(SRAuthorizationPromptPresentationController *)self presentationAnchor]];
  viewController = [(SRAuthorizationPromptPresentationController *)self viewController];
  if ([(SRAuthorizationPromptPresentationController *)self isViewControllerPresentedModally])
  {
    v6 = SRLogAuthorizationPromptPresentationController;
    if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134349312;
      v12 = viewController;
      v13 = 2050;
      presentingViewController = [(SRRemoteAuthorizationPromptViewController *)viewController presentingViewController];
      _os_log_impl(&dword_265602000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing ViewController %{public}p from presenting ViewController %{public}p", &v11, 0x16u);
    }

    [-[SRRemoteAuthorizationPromptViewController presentingViewController](viewController "presentingViewController")];
  }

  else
  {
    topViewController = [v4 topViewController];
    v8 = SRLogAuthorizationPromptPresentationController;
    v9 = os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT);
    if (topViewController == viewController)
    {
      if (v9)
      {
        v11 = 134349312;
        v12 = viewController;
        v13 = 2050;
        presentingViewController = v4;
        _os_log_impl(&dword_265602000, v8, OS_LOG_TYPE_DEFAULT, "Popping ViewController %{public}p from NavigationController %{public}p", &v11, 0x16u);
      }

      [v4 popViewControllerAnimated:1];
    }

    else
    {
      if (v9)
      {
        v11 = 134349056;
        v12 = viewController;
        _os_log_impl(&dword_265602000, v8, OS_LOG_TYPE_DEFAULT, "ViewController %{public}p is neither modal or in a NavigationController, just cleaning up", &v11, 0xCu);
      }

      [(SRAuthorizationPromptPresentationController *)self viewControllerCleanUp];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __71__SRAuthorizationPromptPresentationController_completePromptWithError___block_invoke()
{
  v0 = SRLogAuthorizationPromptPresentationController;
  if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_265602000, v0, OS_LOG_TYPE_INFO, "ViewController dismissed", v1, 2u);
  }
}

- (id)navigationControllerFromRoot:(id)root
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    root = [root selectedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return root;
  }

  if (![root navigationController])
  {
    return 0;
  }

  return [root navigationController];
}

- (id)presentingViewControllerFromRoot:(id)root
{
  rootCopy = root;
  for (i = root; [i presentedViewController]; rootCopy = i)
  {
    i = [rootCopy presentedViewController];
  }

  return rootCopy;
}

@end