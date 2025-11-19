@interface STRootViewControllerProvider
+ (id)rootViewControllerForDSID:(id)a3;
+ (void)requestRootViewControllerForDSID:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
@end

@implementation STRootViewControllerProvider

+ (id)rootViewControllerForDSID:(id)a3
{
  v3 = a3;
  v4 = [[STRootViewModelCoordinator alloc] initWithUserDSID:v3 deviceIdentifier:0 usageReportType:0 usageContext:0];

  v5 = [(STRootViewModelCoordinator *)v4 viewModel];
  v6 = [v5 me];
  if ([v6 isRemoteUser])
  {
    v7 = [(STRootViewModelCoordinator *)v4 viewModel];
    v8 = [v7 me];
    v9 = [v8 isManaged];

    if ((v9 & 1) == 0)
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

+ (void)requestRootViewControllerForDSID:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [STUsageDetailsViewModelCoordinator defaultDeviceIdentifierForChild:v9];
  v11 = [STUsageDetailsViewModelCoordinator defaultUsageReportTypeForChild:v9];
  v12 = [[STRootViewModelCoordinator alloc] initWithUserDSID:v9 deviceIdentifier:v10 usageReportType:v11 usageContext:0];

  v13 = [[STRootViewController alloc] initWithRootViewModelCoordinator:v12];
  v14 = [(STRootViewModelCoordinator *)v12 viewModel];
  v15 = [v14 me];
  if (([v15 isRemoteUser] & 1) == 0)
  {

    goto LABEL_5;
  }

  v16 = [(STRootViewModelCoordinator *)v12 viewModel];
  [v16 me];
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v11;
  v21 = v10;
  v23 = v22 = v7;
  v28 = [v23 isManaged];

  v7 = v22;
  v10 = v21;
  v11 = v20;
  v8 = v19;
  v13 = v18;
  v12 = v17;

  if (v28)
  {
LABEL_5:
    v8[2](v8, v13);
    goto LABEL_6;
  }

  [(STRootViewModelCoordinator *)v17 setHasShownMiniBuddy:1];
  v24 = [[STIntroductionController alloc] initWithNewUserRootViewModelCoordinator:v17];
  v25 = [(STRootViewModelCoordinator *)v17 viewModel];
  v26 = [v25 me];
  v27 = [v26 isRemoteUser];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __108__STRootViewControllerProvider_requestRootViewControllerForDSID_presentingViewController_completionHandler___block_invoke;
  v29[3] = &unk_279B7E978;
  v30 = v12;
  v32 = v8;
  v33 = v27;
  v31 = v13;
  [(STIntroductionController *)v24 setCompletionBlock:v29];
  [(STIntroductionController *)v24 presentOverViewController:v7];

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