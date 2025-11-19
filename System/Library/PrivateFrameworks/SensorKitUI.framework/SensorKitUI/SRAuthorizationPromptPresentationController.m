@interface SRAuthorizationPromptPresentationController
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)presentAnyViewController:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5;
- (id)navigationControllerFromRoot:(id)a3;
- (id)presentationAnchor;
- (id)presentingViewControllerFromRoot:(id)a3;
- (void)authorizationRequestDidDisappear;
- (void)authorizationRequestWillDisappear;
- (void)authorizationUIReadyForDisplayModally:(BOOL)a3;
- (void)completePromptWithError:(id)a3;
- (void)dealloc;
- (void)presentAppsAndStudiesPromptViewController:(id)a3 completionHandler:(id)a4;
- (void)presentFirstRunOnboardingViewController:(id)a3 completionHandler:(id)a4;
- (void)presentMigrationPromptViewController:(id)a3 withDesiredServices:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6;
- (void)presentPromptViewController:(id)a3 withDesiredServices:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6;
- (void)presentResearchDataViewController:(id)a3 completionHandler:(id)a4;
- (void)presentStudyAuthorizationPromptViewController:(id)a3 bundlePath:(id)a4 completionHandler:(id)a5;
- (void)viewControllerCleanUp;
@end

@implementation SRAuthorizationPromptPresentationController

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (BOOL)presentAnyViewController:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = [(SRAuthorizationPromptPresentationController *)self isPresenting];
  if (v9)
  {
    v10 = SRLogAuthorizationPromptPresentationController;
    if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      v14 = a4;
      v15 = 2048;
      v16 = [(SRAuthorizationPromptPresentationController *)self reason];
      _os_log_error_impl(&dword_265602000, v10, OS_LOG_TYPE_ERROR, "Rejecting prompt request %ld due to ongoing prompt %ld", &v13, 0x16u);
    }

    (*(a5 + 2))(a5, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDC650] code:8195 userInfo:0]);
  }

  else
  {
    [(SRAuthorizationPromptPresentationController *)self setPresenting:1];
    [(SRAuthorizationPromptPresentationController *)self setReason:a4];
    [(SRAuthorizationPromptPresentationController *)self setError:0];
    [(SRAuthorizationPromptPresentationController *)self setCompletionHandler:a5];
    [(SRAuthorizationPromptPresentationController *)self setViewController:a3];
    [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] setDelegate:self];
  }

  v11 = *MEMORY[0x277D85DE8];
  return !v9;
}

- (void)presentPromptViewController:(id)a3 withDesiredServices:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:a3 reason:1 completionHandler:a6])
  {
    v9 = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)v9 requestAuthorizationForBundle:a5 services:a4];
  }
}

- (void)presentMigrationPromptViewController:(id)a3 withDesiredServices:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:a3 reason:7 completionHandler:a6])
  {
    v9 = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)v9 requestAuthorizationMigrationForBundle:a5 services:a4];
  }
}

- (void)presentAppsAndStudiesPromptViewController:(id)a3 completionHandler:(id)a4
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:a3 reason:3 completionHandler:a4])
  {
    v5 = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)v5 showAppsAndStudies];
  }
}

- (void)presentStudyAuthorizationPromptViewController:(id)a3 bundlePath:(id)a4 completionHandler:(id)a5
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:a3 reason:4 completionHandler:a5])
  {
    v7 = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)v7 showStudyAuthorizationForBundlePath:a4];
  }
}

- (void)presentResearchDataViewController:(id)a3 completionHandler:(id)a4
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:a3 reason:5 completionHandler:a4])
  {
    v5 = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)v5 showResearchData];
  }
}

- (void)presentFirstRunOnboardingViewController:(id)a3 completionHandler:(id)a4
{
  if ([(SRAuthorizationPromptPresentationController *)self presentAnyViewController:a3 reason:6 completionHandler:a4])
  {
    v5 = [(SRAuthorizationPromptPresentationController *)self viewController];

    [(SRRemoteAuthorizationPromptViewController *)v5 showFirstRunOnboarding];
  }
}

- (id)presentationAnchor
{
  v2 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];

  return [v2 rootViewController];
}

- (void)authorizationUIReadyForDisplayModally:(BOOL)a3
{
  v3 = a3;
  v5 = SRLogAuthorizationPromptPresentationController;
  if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Putting up prompt UI", v8, 2u);
  }

  v6 = [(SRAuthorizationPromptPresentationController *)self presentationAnchor];
  if (v3)
  {
    [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] setModalPresentationStyle:2];
    [-[SRAuthorizationPromptPresentationController presentingViewControllerFromRoot:](self presentingViewControllerFromRoot:{v6), "presentViewController:animated:completion:", -[SRAuthorizationPromptPresentationController viewController](self, "viewController"), 1, 0}];
  }

  else
  {
    v7 = [(SRAuthorizationPromptPresentationController *)self navigationControllerFromRoot:v6];
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

  v4 = [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] isMovingFromParentViewController];
  if (![(SRAuthorizationPromptPresentationController *)self isViewControllerPresentedModally]&& (v4 & 1) == 0)
  {
    v5 = SRLogAuthorizationPromptPresentationController;
    if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Prompt ViewController is not moving from parent view controller, popping from the navigation controller if necessary", v7, 2u);
    }

    v6 = [(SRRemoteAuthorizationPromptViewController *)[(SRAuthorizationPromptPresentationController *)self viewController] parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 popViewControllerAnimated:0];
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
  v4 = [(SRAuthorizationPromptPresentationController *)self completionHandler];
  [(SRAuthorizationPromptPresentationController *)self setPresenting:0];
  [(SRAuthorizationPromptPresentationController *)self setReason:0];
  v4[2](v4, [(SRAuthorizationPromptPresentationController *)self error]);

  [(SRAuthorizationPromptPresentationController *)self setError:0];
}

- (void)completePromptWithError:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(SRAuthorizationPromptPresentationController *)self setError:a3];
  v4 = [(SRAuthorizationPromptPresentationController *)self navigationControllerFromRoot:[(SRAuthorizationPromptPresentationController *)self presentationAnchor]];
  v5 = [(SRAuthorizationPromptPresentationController *)self viewController];
  if ([(SRAuthorizationPromptPresentationController *)self isViewControllerPresentedModally])
  {
    v6 = SRLogAuthorizationPromptPresentationController;
    if (os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134349312;
      v12 = v5;
      v13 = 2050;
      v14 = [(SRRemoteAuthorizationPromptViewController *)v5 presentingViewController];
      _os_log_impl(&dword_265602000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing ViewController %{public}p from presenting ViewController %{public}p", &v11, 0x16u);
    }

    [-[SRRemoteAuthorizationPromptViewController presentingViewController](v5 "presentingViewController")];
  }

  else
  {
    v7 = [v4 topViewController];
    v8 = SRLogAuthorizationPromptPresentationController;
    v9 = os_log_type_enabled(SRLogAuthorizationPromptPresentationController, OS_LOG_TYPE_DEFAULT);
    if (v7 == v5)
    {
      if (v9)
      {
        v11 = 134349312;
        v12 = v5;
        v13 = 2050;
        v14 = v4;
        _os_log_impl(&dword_265602000, v8, OS_LOG_TYPE_DEFAULT, "Popping ViewController %{public}p from NavigationController %{public}p", &v11, 0x16u);
      }

      [v4 popViewControllerAnimated:1];
    }

    else
    {
      if (v9)
      {
        v11 = 134349056;
        v12 = v5;
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

- (id)navigationControllerFromRoot:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [a3 selectedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  if (![a3 navigationController])
  {
    return 0;
  }

  return [a3 navigationController];
}

- (id)presentingViewControllerFromRoot:(id)a3
{
  v3 = a3;
  for (i = a3; [i presentedViewController]; v3 = i)
  {
    i = [v3 presentedViewController];
  }

  return v3;
}

@end