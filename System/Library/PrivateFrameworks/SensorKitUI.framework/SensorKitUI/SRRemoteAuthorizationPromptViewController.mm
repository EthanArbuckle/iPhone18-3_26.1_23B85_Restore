@interface SRRemoteAuthorizationPromptViewController
+ (void)initialize;
+ (void)requestViewControllerWithCompletionHandler:(id)handler;
- (id)serviceViewControllerProxy;
- (void)authorizationRequestCompleted;
- (void)authorizationRequestDidDisappear;
- (void)authorizationRequestFailedWithError:(id)error;
- (void)authorizationRequestWillDisappear;
- (void)dealloc;
- (void)deleteAllSamples;
- (void)requestAuthorizationForBundle:(id)bundle services:(id)services;
- (void)requestAuthorizationMigrationForBundle:(id)bundle services:(id)services;
- (void)showAppsAndStudies;
- (void)showFirstRunOnboarding;
- (void)showResearchData;
- (void)showStudyAuthorizationForBundlePath:(id)path;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SRRemoteAuthorizationPromptViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAuthorizationPromptViewController = os_log_create("com.apple.SensorKit", "AuthorizationPromptViewController");
  }
}

+ (void)requestViewControllerWithCompletionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v4 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.SensorKit.SensorKitViewService" error:&v12];
  v5 = v12;
  if (v12)
  {
    v6 = SRLogAuthorizationPromptViewController;
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v5;
      _os_log_error_impl(&dword_265602000, v6, OS_LOG_TYPE_ERROR, "Error getting extension %@", location, 0xCu);
    }

LABEL_9:
    (*(handler + 2))(handler, 0);
    goto LABEL_10;
  }

  v7 = v4;
  if (!v4)
  {
    v8 = SRLogAuthorizationPromptViewController;
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Got nil extension when requesting prompt extension", location, 2u);
    }

    goto LABEL_9;
  }

  objc_initWeak(location, v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__SRRemoteAuthorizationPromptViewController_requestViewControllerWithCompletionHandler___block_invoke;
  v10[3] = &unk_279B982D8;
  v10[4] = handler;
  objc_copyWeak(&v11, location);
  [v7 instantiateViewControllerWithInputItems:0 connectionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(location);
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __88__SRRemoteAuthorizationPromptViewController_requestViewControllerWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3 || a4)
  {
    v11 = SRLogAuthorizationPromptViewController;
    if (!os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      result = (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
      v15 = *MEMORY[0x277D85DE8];
      return result;
    }

    v16 = 138543362;
    v17 = a4;
    v12 = "Got nil extension when requesting prompt extension, error %{public}@";
    v13 = v11;
LABEL_12:
    _os_log_error_impl(&dword_265602000, v13, OS_LOG_TYPE_ERROR, v12, &v16, 0xCu);
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = SRLogAuthorizationPromptViewController;
    if (!os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v16 = 138543362;
    v17 = a3;
    v12 = "Got view controller of wrong class: %{public}@";
    v13 = v14;
    goto LABEL_12;
  }

  [a3 setWeakExtension:objc_loadWeak((a1 + 40))];
  [a3 setRequest:a2];
  v8 = *(*(a1 + 32) + 16);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x277D77620]])
  {
    v6 = [error code] == 1;
  }

  else
  {
    v6 = 0;
  }

  delegate = [(SRRemoteAuthorizationPromptViewController *)self delegate];
  v8 = SRLogAuthorizationPromptViewController;
  if (!error || v6)
  {
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_265602000, v8, OS_LOG_TYPE_DEFAULT, "Prompt exited", &v10, 2u);
    }

    [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestCompleted];
  }

  else
  {
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      errorCopy = error;
      _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Prompt exited, %{public}@", &v10, 0xCu);
    }

    [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestFailedWithError:error];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)authorizationRequestCompleted
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Prompt completed", v4, 2u);
  }

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)[(SRRemoteAuthorizationPromptViewController *)self delegate] authorizationRequestCompleted];
}

- (void)authorizationRequestFailedWithError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    errorCopy = error;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Prompt failed, %{public}@", &v7, 0xCu);
  }

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)[(SRRemoteAuthorizationPromptViewController *)self delegate] authorizationRequestFailedWithError:error];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)authorizationRequestWillDisappear
{
  delegate = [(SRRemoteAuthorizationPromptViewController *)self delegate];

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestWillDisappear];
}

- (void)authorizationRequestDidDisappear
{
  delegate = [(SRRemoteAuthorizationPromptViewController *)self delegate];

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestDidDisappear];
}

- (id)serviceViewControllerProxy
{
  v3.receiver = self;
  v3.super_class = SRRemoteAuthorizationPromptViewController;
  return [(_UIRemoteViewController *)&v3 serviceViewControllerProxy];
}

- (void)requestAuthorizationForBundle:(id)bundle services:(id)services
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    servicesCopy = services;
    _os_log_impl(&dword_265602000, v7, OS_LOG_TYPE_DEFAULT, "Requesting authorization for services %{public}@", &v9, 0xCu);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthorizationMigrationForBundle:(id)bundle services:(id)services
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    servicesCopy = services;
    _os_log_impl(&dword_265602000, v7, OS_LOG_TYPE_DEFAULT, "Requesting authorization migration for services %{public}@", &v9, 0xCu);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)showAppsAndStudies
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Trying to display apps and studies view", v4, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)showStudyAuthorizationForBundlePath:(id)path
{
  v5 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Trying to display study's authorization", v6, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)showResearchData
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Trying to display research data view", v4, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)showFirstRunOnboarding
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Trying to display first run onboarding", v4, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)deleteAllSamples
{
  serviceViewControllerProxy = [(SRRemoteAuthorizationPromptViewController *)self serviceViewControllerProxy];

  [serviceViewControllerProxy deleteAllSamples];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  weakExtension = [(SRRemoteAuthorizationPromptViewController *)self weakExtension];
  if (weakExtension)
  {
    v4 = weakExtension;
    if ([(SRRemoteAuthorizationPromptViewController *)self request])
    {
      v5 = SRLogAuthorizationPromptViewController;
      if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v9 = v4;
        v10 = 2112;
        request = [(SRRemoteAuthorizationPromptViewController *)self request];
        _os_log_debug_impl(&dword_265602000, v5, OS_LOG_TYPE_DEBUG, "Cancel extension %@ for request %@", buf, 0x16u);
      }

      [(NSExtension *)v4 cancelExtensionRequestWithIdentifier:[(SRRemoteAuthorizationPromptViewController *)self request]];
    }
  }

  [(SRRemoteAuthorizationPromptViewController *)self setRequest:0];
  v7.receiver = self;
  v7.super_class = SRRemoteAuthorizationPromptViewController;
  [(SRRemoteAuthorizationPromptViewController *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

@end