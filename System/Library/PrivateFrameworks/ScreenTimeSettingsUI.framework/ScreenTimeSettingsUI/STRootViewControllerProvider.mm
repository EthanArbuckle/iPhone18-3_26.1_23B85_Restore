@interface STRootViewControllerProvider
+ (id)rootViewControllerForDSID:(id)d;
+ (void)requestRootViewControllerForDSID:(id)d presentingViewController:(id)controller completionHandler:(id)handler;
@end

@implementation STRootViewControllerProvider

+ (id)rootViewControllerForDSID:(id)d
{
  dCopy = d;
  v4 = [[STRootViewModelCoordinator alloc] initWithUserDSID:dCopy deviceIdentifier:0 usageReportType:0 usageContext:0];

  viewModel = [(STRootViewModelCoordinator *)v4 viewModel];
  v6 = [viewModel me];
  if ([v6 isRemoteUser])
  {
    viewModel2 = [(STRootViewModelCoordinator *)v4 viewModel];
    v8 = [viewModel2 me];
    isManaged = [v8 isManaged];

    if ((isManaged & 1) == 0)
    {
      v10 = objc_opt_new();
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = [[STRootViewController alloc] initWithRootViewModelCoordinator:v4];
LABEL_6:
  v11 = v10;

  return v11;
}

+ (void)requestRootViewControllerForDSID:(id)d presentingViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  dCopy = d;
  v10 = [STUsageDetailsViewModelCoordinator defaultDeviceIdentifierForChild:dCopy];
  v11 = [STUsageDetailsViewModelCoordinator defaultUsageReportTypeForChild:dCopy];
  v12 = [[STRootViewModelCoordinator alloc] initWithUserDSID:dCopy deviceIdentifier:v10 usageReportType:v11 usageContext:0];

  v13 = [[STRootViewController alloc] initWithRootViewModelCoordinator:v12];
  viewModel = [(STRootViewModelCoordinator *)v12 viewModel];
  v15 = [viewModel me];
  if (([v15 isRemoteUser] & 1) == 0)
  {

    goto LABEL_5;
  }

  viewModel2 = [(STRootViewModelCoordinator *)v12 viewModel];
  [viewModel2 me];
  v17 = v12;
  v18 = v13;
  v19 = handlerCopy;
  v20 = v11;
  v21 = v10;
  v23 = v22 = controllerCopy;
  isManaged = [v23 isManaged];

  controllerCopy = v22;
  v10 = v21;
  v11 = v20;
  handlerCopy = v19;
  v13 = v18;
  v12 = v17;

  if (isManaged)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v13);
    goto LABEL_6;
  }

  [(STRootViewModelCoordinator *)v17 setHasShownMiniBuddy:1];
  v24 = [[STIntroductionController alloc] initWithNewUserRootViewModelCoordinator:v17];
  viewModel3 = [(STRootViewModelCoordinator *)v17 viewModel];
  v26 = [viewModel3 me];
  isRemoteUser = [v26 isRemoteUser];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __108__STRootViewControllerProvider_requestRootViewControllerForDSID_presentingViewController_completionHandler___block_invoke;
  v29[3] = &unk_279B7E978;
  v30 = v12;
  v32 = handlerCopy;
  v33 = isRemoteUser;
  v31 = v13;
  [(STIntroductionController *)v24 setCompletionBlock:v29];
  [(STIntroductionController *)v24 presentOverViewController:controllerCopy];

LABEL_6:
}

void __108__STRootViewControllerProvider_requestRootViewControllerForDSID_presentingViewController_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [v5 parentalControlsPasscode];
    v9 = [v6 recoveryAltDSID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __108__STRootViewControllerProvider_requestRootViewControllerForDSID_presentingViewController_completionHandler___block_invoke_2;
    v10[3] = &unk_279B7E950;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v11 = v6;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v7 enableManagementWithPIN:v8 recoveryAltDSID:v9 completionHandler:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __108__STRootViewControllerProvider_requestRootViewControllerForDSID_presentingViewController_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __108__STRootViewControllerProvider_requestRootViewControllerForDSID_presentingViewController_completionHandler___block_invoke_2_cold_1(v3);
    }

    v4 = *(*(a1 + 56) + 16);
  }

  else
  {
    if ((*(a1 + 64) & 1) != 0 || [*(a1 + 32) deviceForChild])
    {
      [*(a1 + 40) applyIntroductionViewModel:*(a1 + 32) withCompletionHandler:0];
    }

    v4 = *(*(a1 + 56) + 16);
  }

  v4();
}

void __108__STRootViewControllerProvider_requestRootViewControllerForDSID_presentingViewController_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = a1;
  _os_log_fault_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to enable Screen Time remote management of child: %{public}@", &v1, 0xCu);
}

@end