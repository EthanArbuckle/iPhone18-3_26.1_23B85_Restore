@interface SRRemoteAuthorizationPromptViewController
+ (void)initialize;
+ (void)requestViewControllerWithCompletionHandler:(id)a3;
- (id)serviceViewControllerProxy;
- (void)authorizationRequestCompleted;
- (void)authorizationRequestDidDisappear;
- (void)authorizationRequestFailedWithError:(id)a3;
- (void)authorizationRequestWillDisappear;
- (void)dealloc;
- (void)deleteAllSamples;
- (void)requestAuthorizationForBundle:(id)a3 services:(id)a4;
- (void)requestAuthorizationMigrationForBundle:(id)a3 services:(id)a4;
- (void)showAppsAndStudies;
- (void)showFirstRunOnboarding;
- (void)showResearchData;
- (void)showStudyAuthorizationForBundlePath:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SRRemoteAuthorizationPromptViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogAuthorizationPromptViewController = os_log_create("com.apple.SensorKit", "AuthorizationPromptViewController");
  }
}

+ (void)requestViewControllerWithCompletionHandler:(id)a3
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
    (*(a3 + 2))(a3, 0);
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
  v10[4] = a3;
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

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a3 domain];
  if ([v5 isEqualToString:*MEMORY[0x277D77620]])
  {
    v6 = [a3 code] == 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SRRemoteAuthorizationPromptViewController *)self delegate];
  v8 = SRLogAuthorizationPromptViewController;
  if (!a3 || v6)
  {
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_265602000, v8, OS_LOG_TYPE_DEFAULT, "Prompt exited", &v10, 2u);
    }

    [(SRRemoteAuthorizationPromptViewControllerDelegate *)v7 authorizationRequestCompleted];
  }

  else
  {
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = a3;
      _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Prompt exited, %{public}@", &v10, 0xCu);
    }

    [(SRRemoteAuthorizationPromptViewControllerDelegate *)v7 authorizationRequestFailedWithError:a3];
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

- (void)authorizationRequestFailedWithError:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Prompt failed, %{public}@", &v7, 0xCu);
  }

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)[(SRRemoteAuthorizationPromptViewController *)self delegate] authorizationRequestFailedWithError:a3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)authorizationRequestWillDisappear
{
  v2 = [(SRRemoteAuthorizationPromptViewController *)self delegate];

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)v2 authorizationRequestWillDisappear];
}

- (void)authorizationRequestDidDisappear
{
  v2 = [(SRRemoteAuthorizationPromptViewController *)self delegate];

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)v2 authorizationRequestDidDisappear];
}

- (id)serviceViewControllerProxy
{
  v3.receiver = self;
  v3.super_class = SRRemoteAuthorizationPromptViewController;
  return [(_UIRemoteViewController *)&v3 serviceViewControllerProxy];
}

- (void)requestAuthorizationForBundle:(id)a3 services:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = a4;
    _os_log_impl(&dword_265602000, v7, OS_LOG_TYPE_DEFAULT, "Requesting authorization for services %{public}@", &v9, 0xCu);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthorizationMigrationForBundle:(id)a3 services:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = a4;
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

- (void)showStudyAuthorizationForBundlePath:(id)a3
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
  v2 = [(SRRemoteAuthorizationPromptViewController *)self serviceViewControllerProxy];

  [v2 deleteAllSamples];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(SRRemoteAuthorizationPromptViewController *)self weakExtension];
  if (v3)
  {
    v4 = v3;
    if ([(SRRemoteAuthorizationPromptViewController *)self request])
    {
      v5 = SRLogAuthorizationPromptViewController;
      if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v9 = v4;
        v10 = 2112;
        v11 = [(SRRemoteAuthorizationPromptViewController *)self request];
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