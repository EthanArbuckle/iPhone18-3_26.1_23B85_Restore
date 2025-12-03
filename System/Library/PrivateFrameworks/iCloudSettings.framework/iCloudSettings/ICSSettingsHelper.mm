@interface ICSSettingsHelper
+ (id)getWebAccessStatusUpdateHook;
+ (void)repairPrimaryAppleAccountInViewController:(id)controller completion:(id)completion;
+ (void)showAccountRecoveryFromViewController:(id)controller accountManager:(id)manager;
+ (void)showAccountRecoveryFromViewController:(id)controller accountManager:(id)manager highlightRowIdentifier:(id)identifier;
@end

@implementation ICSSettingsHelper

+ (void)showAccountRecoveryFromViewController:(id)controller accountManager:(id)manager
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  managerCopy = manager;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "%@: Starting Account recovery flow.", buf, 0xCu);
  }

  objc_initWeak(buf, controllerCopy);
  objc_initWeak(&location, managerCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ICSSettingsHelper_showAccountRecoveryFromViewController_accountManager___block_invoke;
  v12[3] = &unk_27A666980;
  objc_copyWeak(&v13, buf);
  objc_copyWeak(&v14, &location);
  [self repairPrimaryAppleAccountInViewController:controllerCopy completion:v12];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __74__ICSSettingsHelper_showAccountRecoveryFromViewController_accountManager___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_copyWeak(&to, (a1 + 32));
  objc_copyWeak(&v19, (a1 + 40));
  v6 = objc_loadWeakRetained(&to);
  if (v6)
  {
    v7 = objc_loadWeakRetained(&v19);
    if (!v7)
    {
      a2 = 0;
    }

    if (a2)
    {
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      dispatch_assert_queue_V2(v8);

      v10 = objc_alloc(MEMORY[0x277CECA00]);
      v11 = objc_loadWeakRetained(&v19);
      v12 = [v10 initWithAccountManager:v11];

      v13 = objc_loadWeakRetained(&to);
      [v13 showController:v12 animate:1];
    }
  }

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_loadWeakRetained(&to);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "%@: Account recovery flow completed with error: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&to);

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)showAccountRecoveryFromViewController:(id)controller accountManager:(id)manager highlightRowIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  managerCopy = manager;
  identifierCopy = identifier;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "%@: Starting Account recovery flow.", buf, 0xCu);
  }

  objc_initWeak(buf, controllerCopy);
  objc_initWeak(&location, managerCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__ICSSettingsHelper_showAccountRecoveryFromViewController_accountManager_highlightRowIdentifier___block_invoke;
  v16[3] = &unk_27A6669A8;
  objc_copyWeak(&v18, buf);
  objc_copyWeak(&v19, &location);
  v14 = identifierCopy;
  v17 = v14;
  [self repairPrimaryAppleAccountInViewController:controllerCopy completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __97__ICSSettingsHelper_showAccountRecoveryFromViewController_accountManager_highlightRowIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_copyWeak(&to, (a1 + 40));
  objc_copyWeak(&v19, (a1 + 48));
  v6 = objc_loadWeakRetained(&to);
  if (v6)
  {
    v7 = objc_loadWeakRetained(&v19);
    if (!v7)
    {
      a2 = 0;
    }

    if (a2)
    {
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      dispatch_assert_queue_V2(v8);

      v10 = objc_alloc(MEMORY[0x277CECA00]);
      v11 = objc_loadWeakRetained(&v19);
      v12 = [v10 initWithAccountManager:v11 highlightRowIdentifier:*(a1 + 32)];

      v13 = objc_loadWeakRetained(&to);
      [v13 showController:v12 animate:1];
    }
  }

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_loadWeakRetained(&to);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "%@: Account recovery flow completed with error: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&to);

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)repairPrimaryAppleAccountInViewController:(id)controller completion:(id)completion
{
  v5 = MEMORY[0x277CECA18];
  completionCopy = completion;
  controllerCopy = controller;
  v9 = [[v5 alloc] initWithType:2];
  v8 = [objc_alloc(MEMORY[0x277CECA70]) initWithFlowContext:v9 withPresentingViewController:controllerCopy];

  [v8 repairIfPrimaryAppleAccountIsCDP:completionCopy];
}

+ (id)getWebAccessStatusUpdateHook
{
  v2 = objc_alloc_init(ICSCDPWebAccessStatusUpdateHook);

  return v2;
}

@end