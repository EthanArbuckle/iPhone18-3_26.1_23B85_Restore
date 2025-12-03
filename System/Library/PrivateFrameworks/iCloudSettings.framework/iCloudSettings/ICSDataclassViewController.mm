@interface ICSDataclassViewController
- (AIDAAccountManager)accountManager;
- (BOOL)_isDataclassAvailableForSpecifier:(id)specifier;
- (BOOL)_shouldContinueDataclassChangeForSpecifier:(id)specifier;
- (BOOL)specifierProvider:(id)provider isDataclassAvailableForSpecifier:(id)specifier;
- (ICSDataclassViewController)init;
- (id)account;
- (id)dataclassSwitchStateForSpecifier:(id)specifier;
- (id)loadSpecifierProviderWithClassName:(id)name inBundle:(id)bundle;
- (id)specifierProvider:(id)provider dataclassSwitchStateForSpecifier:(id)specifier;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_checkAndReloadSpecifierIfNeededForAccountChangedFrom:(id)from toAccount:(id)account;
- (void)_dataclassSwitchStateDidChange:(id)change forSpecifier:(id)specifier;
- (void)_startObservingAccountStoreChanges;
- (void)_startObservingRestrictionChanges;
- (void)_stopObservingAccountStoreChanges;
- (void)_stopObservingRestrictionChanges;
- (void)_superDataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier;
- (void)_validateDataclassAccessForSpecifier:(id)specifier completion:(id)completion;
- (void)accountDidChangeFromAccount:(id)account toAccount:(id)toAccount;
- (void)cleanupDataclassSpecifiers;
- (void)dealloc;
- (void)insertSpecifier:(id)specifier afterSpecifierNamed:(id)named animated:(BOOL)animated;
- (void)operationsHelper:(id)helper didLoadSaveActions:(id)actions forDataclass:(id)dataclass withAccount:(id)account error:(id)error;
- (void)operationsHelper:(id)helper willSaveAccount:(id)account;
- (void)reloadSpecifierForProvider:(id)provider identifier:(id)identifier;
- (void)setAccountManager:(id)manager;
- (void)specifierProvider:(id)provider dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier;
- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier;
- (void)specifierProvider:(id)provider showViewController:(id)controller;
- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier;
- (void)startSpinnerInSpecifier:(id)specifier;
- (void)stopSpinnerInActiveSpecifier;
- (void)validateDataclassAccessForProvider:(id)provider specifier:(id)specifier completion:(id)completion;
@end

@implementation ICSDataclassViewController

- (ICSDataclassViewController)init
{
  v8.receiver = self;
  v8.super_class = ICSDataclassViewController;
  v2 = [(ACUIDataclassConfigurationViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(ACUIDataclassConfigurationViewController *)v2 setShouldShowDeleteAccountButton:0];
    [(ACUIDataclassConfigurationViewController *)v3 setShouldEnableDeleteAccountButton:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.appleaccountsettings.accountwork", v4);
    accountWorkQueue = v3->_accountWorkQueue;
    v3->_accountWorkQueue = v5;
  }

  return v3;
}

- (AIDAAccountManager)accountManager
{
  v14 = *MEMORY[0x277D85DE8];
  accountManager = self->_accountManager;
  if (!accountManager)
  {
    specifier = [(ICSDataclassViewController *)self specifier];

    if (specifier)
    {
      specifier2 = [(ICSDataclassViewController *)self specifier];
      v6 = [specifier2 objectForKeyedSubscript:@"icloudAccountManager"];

      v7 = LogSubsystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "specifierAccountManager %@", buf, 0xCu);
      }

      if (v6)
      {
        [(ICSDataclassViewController *)self setAccountManager:v6];
      }
    }

    accountManager = self->_accountManager;
    if (!accountManager)
    {
      v8 = LogSubsystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ICSDataclassViewController accountManager];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__ICSDataclassViewController_accountManager__block_invoke;
      block[3] = &unk_27A666198;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      accountManager = self->_accountManager;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return accountManager;
}

void __44__ICSDataclassViewController_accountManager__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)setAccountManager:(id)manager
{
  objc_storeStrong(&self->_accountManager, manager);
  managerCopy = manager;
  v6 = [ICSDataclassValidationController alloc];
  account = [(ICSDataclassViewController *)self account];
  v8 = [(ICSDataclassValidationController *)v6 initWithAccount:account presentingViewController:self];
  dataclassValidationController = self->_dataclassValidationController;
  self->_dataclassValidationController = v8;

  [(ICSDataclassValidationController *)self->_dataclassValidationController setDelegate:self];
  [(ICSDataclassViewController *)self _startObservingAccountStoreChanges];

  [(ICSDataclassViewController *)self _startObservingRestrictionChanges];
}

- (id)account
{
  accountManager = [(ICSDataclassViewController *)self accountManager];
  accounts = [accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v4;
}

- (void)dealloc
{
  [(ICSDataclassViewController *)self _stopObservingRestrictionChanges];
  [(ICSDataclassViewController *)self _stopObservingAccountStoreChanges];
  v3.receiver = self;
  v3.super_class = ICSDataclassViewController;
  [(ACUIDataclassConfigurationViewController *)&v3 dealloc];
}

- (void)cleanupDataclassSpecifiers
{
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
  }
}

- (void)startSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy && !self->_activeSpecifier && [specifierCopy ics_startSpinner])
  {
    objc_storeStrong(&self->_activeSpecifier, specifier);
  }

  MEMORY[0x2821F96F8]();
}

- (void)stopSpinnerInActiveSpecifier
{
  activeSpecifier = self->_activeSpecifier;
  if (activeSpecifier)
  {
    [(PSSpecifier *)activeSpecifier ics_stopSpinner];
    v4 = self->_activeSpecifier;
    self->_activeSpecifier = 0;
  }
}

- (void)specifierProvider:(id)provider showViewController:(id)controller
{
  v12 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = providerCopy;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "showViewController for provider %@", &v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICSDataclassViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(ICSDataclassViewController *)self showController:controllerCopy animate:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier
{
  v13 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = providerCopy;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "willBeginLoadingSpecifier for provider %@", &v11, 0xCu);
  }

  if (self->_activeSpecifier)
  {
    v9 = LogSubsystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICSDataclassViewController specifierProvider:providerCopy willBeginLoadingSpecifier:v9];
    }
  }

  else
  {
    [(ICSDataclassViewController *)self startSpinnerInSpecifier:specifierCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier
{
  v11 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = providerCopy;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "didFinishLoadingSpecifier for provider %@", &v9, 0xCu);
  }

  if (self->_activeSpecifier)
  {
    [(ICSDataclassViewController *)self stopSpinnerInActiveSpecifier];
  }

  else
  {
    v7 = LogSubsystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSDataclassViewController specifierProvider:providerCopy didFinishLoadingSpecifier:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)insertSpecifier:(id)specifier afterSpecifierNamed:(id)named animated:(BOOL)animated
{
  v21 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  namedCopy = named;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = LogSubsystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(ICSDataclassViewController *)self specifierForID:namedCopy];
    v17 = 138412546;
    v18 = specifierCopy;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "Inserting new specifier %@ after %@", &v17, 0x16u);
  }

  if ([*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) containsObject:specifierCopy])
  {
    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v12 = "Did not insert new specifier because it's already present";
      v13 = v11;
      v14 = 2;
LABEL_8:
      _os_log_impl(&dword_275819000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    }
  }

  else
  {
    v15 = [(ICSDataclassViewController *)self specifierForID:namedCopy];
    [(ICSDataclassViewController *)self insertSpecifier:specifierCopy afterSpecifier:v15 animated:1];

    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = specifierCopy;
      v12 = "Inserted new specifier %@";
      v13 = v11;
      v14 = 12;
      goto LABEL_8;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reloadSpecifierForProvider:(id)provider identifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Reloading specifier with ID: %@", &v8, 0xCu);
  }

  [(ICSDataclassViewController *)self reloadSpecifierID:identifierCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)specifierProvider:(id)provider dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  changeCopy = change;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICSDataclassViewController *)self _dataclassSwitchStateDidChange:changeCopy forSpecifier:specifierCopy];
}

- (void)validateDataclassAccessForProvider:(id)provider specifier:(id)specifier completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  specifierCopy = specifier;
  completionCopy = completion;
  v11 = LogSubsystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = providerCopy;
    v15 = 2112;
    v16 = specifierCopy;
    _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "validateDataclassAccessForProvider. provider: %@, specifier: %@", &v13, 0x16u);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICSDataclassViewController *)self _validateDataclassAccessForSpecifier:specifierCopy completion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)specifierProvider:(id)provider isDataclassAvailableForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  LOBYTE(self) = [(ICSDataclassViewController *)self _isDataclassAvailableForSpecifier:specifierCopy];

  return self;
}

- (id)specifierProvider:(id)provider dataclassSwitchStateForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(ICSDataclassViewController *)self _isDataclassAvailableForSpecifier:specifierCopy])
  {
    acui_dataclass = [specifierCopy acui_dataclass];
    v7 = MEMORY[0x277CCABB0];
    account = [(ICSDataclassViewController *)self account];
    v9 = [v7 numberWithBool:{objc_msgSend(account, "isEnabledForDataclass:", acui_dataclass)}];
  }

  else
  {
    v9 = MEMORY[0x277CBEC28];
  }

  return v9;
}

- (id)dataclassSwitchStateForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  acui_dataclass = [specifierCopy acui_dataclass];
  if ([(ICSDataclassValidationController *)self->_dataclassValidationController isDataclassAvailable:acui_dataclass])
  {
    v8.receiver = self;
    v8.super_class = ICSDataclassViewController;
    v6 = [(ACUIDataclassConfigurationViewController *)&v8 dataclassSwitchStateForSpecifier:specifierCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  return v6;
}

- (void)_dataclassSwitchStateDidChange:(id)change forSpecifier:(id)specifier
{
  changeCopy = change;
  specifierCopy = specifier;
  if ([changeCopy BOOLValue] && !-[ICSDataclassViewController _shouldContinueDataclassChangeForSpecifier:](self, "_shouldContinueDataclassChangeForSpecifier:", specifierCopy))
  {
    [(ICSDataclassViewController *)self reloadSpecifier:specifierCopy];
  }

  else
  {
    v8 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
    if ([v8 isEqualToString:*MEMORY[0x277CB89A0]])
    {
      [(ICSDataclassViewController *)self reloadSpecifier:specifierCopy];
    }

    else
    {
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __74__ICSDataclassViewController__dataclassSwitchStateDidChange_forSpecifier___block_invoke;
      v9[3] = &unk_27A666E50;
      objc_copyWeak(&v12, &location);
      v10 = specifierCopy;
      v11 = changeCopy;
      [(ICSDataclassViewController *)self _validateDataclassAccessForSpecifier:v10 completion:v9];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __74__ICSDataclassViewController__dataclassSwitchStateDidChange_forSpecifier___block_invoke(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__ICSDataclassViewController__dataclassSwitchStateDidChange_forSpecifier___block_invoke_2;
    block[3] = &unk_27A666728;
    v7 = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __74__ICSDataclassViewController__dataclassSwitchStateDidChange_forSpecifier___block_invoke_2(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 1704), *(a1 + 40));
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _superDataclassSwitchStateDidChange:v2 withSpecifier:v3];
}

- (BOOL)_shouldContinueDataclassChangeForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __73__ICSDataclassViewController__shouldContinueDataclassChangeForSpecifier___block_invoke;
  v23 = &unk_27A666488;
  selfCopy = self;
  v5 = specifierCopy;
  v25 = v5;
  v6 = _Block_copy(&v20);
  acui_dataclass = [v5 acui_dataclass];
  if ([acui_dataclass isEqualToString:*MEMORY[0x277CB89C8]])
  {
    account = [(ICSDataclassViewController *)self account];
    aa_needsEmailConfiguration = [account aa_needsEmailConfiguration];
  }

  else
  {
    aa_needsEmailConfiguration = 0;
  }

  acui_dataclass2 = [v5 acui_dataclass];
  if ([acui_dataclass2 isEqualToString:*MEMORY[0x277CB89F8]])
  {
    account2 = [(ICSDataclassViewController *)self account];
    if ([account2 aa_isPrimaryAccount])
    {
      aa_needsEmailConfiguration2 = 0;
    }

    else
    {
      account3 = [(ICSDataclassViewController *)self account];
      aa_needsEmailConfiguration2 = [account3 aa_needsEmailConfiguration];
    }
  }

  else
  {
    aa_needsEmailConfiguration2 = 0;
  }

  v14 = aa_needsEmailConfiguration | aa_needsEmailConfiguration2;
  if (v14)
  {
    v15 = [ICSMailConfigController alloc];
    account4 = [(ICSDataclassViewController *)self account];
    v17 = [(ICSMailConfigController *)v15 initWithAccount:account4 presenter:self];
    mailConfigController = self->_mailConfigController;
    self->_mailConfigController = v17;

    [(ICSMailConfigController *)self->_mailConfigController presentCreateFreeEmailPromptWithCompletion:v6 isForNotes:aa_needsEmailConfiguration ^ 1u];
  }

  return (v14 & 1) == 0;
}

void __73__ICSDataclassViewController__shouldContinueDataclassChangeForSpecifier___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ICSDataclassViewController__shouldContinueDataclassChangeForSpecifier___block_invoke_2;
  block[3] = &unk_27A666E78;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __73__ICSDataclassViewController__shouldContinueDataclassChangeForSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return [v3 reloadSpecifier:*(a1 + 40)];
  }

  else
  {
    return [v3[212] configureEmailAccount];
  }
}

- (void)_validateDataclassAccessForSpecifier:(id)specifier completion:(id)completion
{
  specifierCopy = specifier;
  completionCopy = completion;
  if (self->_activeSpecifier)
  {
    [(ICSDataclassViewController *)self reloadSpecifier:specifierCopy];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    [(ICSDataclassViewController *)self startSpinnerInSpecifier:specifierCopy];
    objc_initWeak(&location, self);
    acui_dataclass = [specifierCopy acui_dataclass];
    dataclassValidationController = self->_dataclassValidationController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__ICSDataclassViewController__validateDataclassAccessForSpecifier_completion___block_invoke;
    v10[3] = &unk_27A666EA0;
    objc_copyWeak(&v13, &location);
    v11 = specifierCopy;
    v12 = completionCopy;
    [(ICSDataclassValidationController *)dataclassValidationController validateAccessForDataclass:acui_dataclass completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __78__ICSDataclassViewController__validateDataclassAccessForSpecifier_completion___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "_validateDataclassAccessForSpecifier shouldContinue: %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained stopSpinnerInActiveSpecifier];
  if ((a2 & 1) == 0)
  {
    [WeakRetained reloadSpecifier:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_superDataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  specifierCopy = specifier;
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([changeCopy BOOLValue])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    name = [specifierCopy name];
    *buf = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "Dataclass switch state changed to %@: %@", buf, 0x16u);
  }

  v12.receiver = self;
  v12.super_class = ICSDataclassViewController;
  [(ACUIDataclassConfigurationViewController *)&v12 dataclassSwitchStateDidChange:changeCopy withSpecifier:specifierCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDataclassAvailableForSpecifier:(id)specifier
{
  acui_dataclass = [specifier acui_dataclass];
  LOBYTE(self) = [(ICSDataclassValidationController *)self->_dataclassValidationController isDataclassAvailable:acui_dataclass];

  return self;
}

- (id)loadSpecifierProviderWithClassName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v8 = NSClassFromString(nameCopy);
  if ([(objc_class *)v8 conformsToProtocol:&unk_2884BC2B8])
  {
    v9 = [v8 alloc];
    accountManager = [(ICSDataclassViewController *)self accountManager];
    v11 = [v9 initWithAccountManager:accountManager];

    [v11 setDelegate:self];
  }

  else
  {
    v12 = LogSubsystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ICSDataclassViewController *)nameCopy loadSpecifierProviderWithClassName:bundleCopy inBundle:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (void)operationsHelper:(id)helper willSaveAccount:(id)account
{
  v4.receiver = self;
  v4.super_class = ICSDataclassViewController;
  [(ACUIDataclassConfigurationViewController *)&v4 operationsHelper:helper willSaveAccount:account];
}

- (void)operationsHelper:(id)helper didLoadSaveActions:(id)actions forDataclass:(id)dataclass withAccount:(id)account error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  dataclassCopy = dataclass;
  accountCopy = account;
  errorCopy = error;
  v15 = LogSubsystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413058;
    v22 = actionsCopy;
    v23 = 2112;
    v24 = dataclassCopy;
    v25 = 2112;
    v26 = accountCopy;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "Operations helper did load save actions: %@ forDataclass: %@ withAccount: %@ error: %@", &v21, 0x2Au);
  }

  if (errorCopy)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:dataclassCopy];
    accountSaveErrorHandler = self->_accountSaveErrorHandler;
    if (!accountSaveErrorHandler)
    {
      v18 = [[ICSAccountSaveErrorHandler alloc] initWithPresenter:self];
      v19 = self->_accountSaveErrorHandler;
      self->_accountSaveErrorHandler = v18;

      accountSaveErrorHandler = self->_accountSaveErrorHandler;
    }

    [(ICSAccountSaveErrorHandler *)accountSaveErrorHandler handleAccountSaveError:errorCopy forAccount:accountCopy failedDataclasses:v16];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingAccountStoreChanges
{
  objc_initWeak(&location, self);
  accountManager = [(ICSDataclassViewController *)self accountManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__ICSDataclassViewController__startObservingAccountStoreChanges__block_invoke;
  v4[3] = &unk_27A666EC8;
  objc_copyWeak(&v5, &location);
  [accountManager addAccountChangeObserver:self handler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__ICSDataclassViewController__startObservingAccountStoreChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = *MEMORY[0x277CED1A0];
    v8 = [v10 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    v9 = [v5 objectForKeyedSubscript:v7];
    [WeakRetained accountDidChangeFromAccount:v8 toAccount:v9];
  }
}

- (void)_stopObservingAccountStoreChanges
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    [(AIDAAccountManager *)accountManager removeAccountChangeObserver:self];
  }
}

- (void)accountDidChangeFromAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  accountWorkQueue = self->_accountWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ICSDataclassViewController_accountDidChangeFromAccount_toAccount___block_invoke;
  block[3] = &unk_27A666728;
  v12 = accountCopy;
  v13 = toAccountCopy;
  selfCopy = self;
  v9 = toAccountCopy;
  v10 = accountCopy;
  dispatch_async(accountWorkQueue, block);
}

void __68__ICSDataclassViewController_accountDidChangeFromAccount_toAccount___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) aa_isPrimaryEmailVerified])
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) aa_isPrimaryEmailVerified];
  }

  v3 = [*(a1 + 32) isAuthenticated];
  v4 = [*(a1 + 40) isAuthenticated];
  v5 = [*(a1 + 32) enabledDataclasses];
  v6 = [v5 count];
  v7 = [*(a1 + 40) enabledDataclasses];
  v8 = [v7 count];

  v9 = [*(a1 + 32) isPropertyDirty:*MEMORY[0x277CB8E70]];
  if (v2)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Account became verified. Will reload specifiers.";
LABEL_13:
      _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (v3 != v4)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Account authentication state changed. Will reload specifiers.";
      goto LABEL_13;
    }

LABEL_14:

    v12 = LogSubsystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Account has changed, will reload specifiers.", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__ICSDataclassViewController_accountDidChangeFromAccount_toAccount___block_invoke_138;
    block[3] = &unk_27A666198;
    block[4] = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], block);
    return;
  }

  if (v9)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Account enabled dataclasses are dirty and were likely set on oldAccount. Will reload specifiers.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v6 != v8)
  {
    v13 = LogSubsystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v13, OS_LOG_TYPE_DEFAULT, "Account enabled dataclasses changed. Will reload specifiers if needed.", buf, 2u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__ICSDataclassViewController_accountDidChangeFromAccount_toAccount___block_invoke_139;
    v14[3] = &unk_27A666728;
    v14[4] = *(a1 + 48);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

uint64_t __68__ICSDataclassViewController_accountDidChangeFromAccount_toAccount___block_invoke_138(uint64_t a1)
{
  [*(a1 + 32) cleanupDataclassSpecifiers];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void __68__ICSDataclassViewController_accountDidChangeFromAccount_toAccount___block_invoke_139(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1704));
  if (![WeakRetained hasValidGetter])
  {
    goto LABEL_9;
  }

  v3 = [WeakRetained performGetter];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    [*(a1 + 32) _checkAndReloadSpecifierIfNeededForAccountChangedFrom:*(a1 + 40) toAccount:*(a1 + 48)];
    goto LABEL_10;
  }

  v8.receiver = *(a1 + 32);
  v8.super_class = ICSDataclassViewController;
  v4 = objc_msgSendSuper2(&v8, sel_dataclassSwitchStateForSpecifier_, WeakRetained);
  if (v3 != v4)
  {
    v5 = LogSubsystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained acui_dataclass];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "Toggle value does not match new account state, refreshing specifier for dataclass %@", buf, 0xCu);
    }

    [*(a1 + 32) reloadSpecifier:WeakRetained];
  }

  objc_storeWeak((*(a1 + 32) + 1704), 0);

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkAndReloadSpecifierIfNeededForAccountChangedFrom:(id)from toAccount:(id)account
{
  fromCopy = from;
  accountCopy = account;
  v8 = *MEMORY[0x277CB89C8];
  v9 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB89C8]];
  if (v9 == [accountCopy isEnabledForDataclass:v8])
  {
    v11 = *MEMORY[0x277CB89D0];
    v12 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB89D0]];
    if (v12 == [accountCopy isEnabledForDataclass:v11] && (v13 = *MEMORY[0x277CB8A38], v14 = objc_msgSend(fromCopy, "isEnabledForDataclass:", *MEMORY[0x277CB8A38]), v14 == objc_msgSend(accountCopy, "isEnabledForDataclass:", v13)) && (v15 = *MEMORY[0x277CB8A08], v16 = objc_msgSend(fromCopy, "isEnabledForDataclass:", *MEMORY[0x277CB8A08]), v16 == objc_msgSend(accountCopy, "isEnabledForDataclass:", v15)) && (v17 = *MEMORY[0x277CB8960], v18 = objc_msgSend(fromCopy, "isEnabledForDataclass:", *MEMORY[0x277CB8960]), v18 == objc_msgSend(accountCopy, "isEnabledForDataclass:", v17)))
    {
      v11 = *MEMORY[0x277CB8A58];
      v22 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB8A58]];
      if (v22 == [accountCopy isEnabledForDataclass:v11])
      {
        v11 = *MEMORY[0x277CB89C0];
        v23 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB89C0]];
        if (v23 == [accountCopy isEnabledForDataclass:v11])
        {
          v11 = *MEMORY[0x277CB89F8];
          v24 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB89F8]];
          if (v24 == [accountCopy isEnabledForDataclass:v11])
          {
            v25 = *MEMORY[0x277CB89D8];
            v26 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB89D8]];
            v27 = [accountCopy isEnabledForDataclass:v25];
            v28 = MEMORY[0x277CB9160];
            if (v26 != v27 || (v29 = *MEMORY[0x277CB9160], v30 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB9160]], v30 != objc_msgSend(accountCopy, "isEnabledForDataclass:", v29)))
            {
              v31 = LogSubsystem();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
              }

              [(ICSDataclassViewController *)self reloadSpecifierID:v25];
              v21 = *v28;
              selfCopy2 = self;
              goto LABEL_12;
            }

            v11 = *MEMORY[0x277CB89A0];
            v32 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB89A0]];
            if (v32 == [accountCopy isEnabledForDataclass:v11])
            {
              v11 = *MEMORY[0x277CB8958];
              v33 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB8958]];
              if (v33 == [accountCopy isEnabledForDataclass:v11])
              {
                v11 = *MEMORY[0x277CB8980];
                v34 = [fromCopy isEnabledForDataclass:*MEMORY[0x277CB8980]];
                if (v34 == [accountCopy isEnabledForDataclass:v11])
                {
                  goto LABEL_13;
                }

                v19 = LogSubsystem();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                {
                  [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
                }
              }

              else
              {
                v19 = LogSubsystem();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                {
                  [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
                }
              }
            }

            else
            {
              v19 = LogSubsystem();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
              }
            }
          }

          else
          {
            v19 = LogSubsystem();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
            }
          }
        }

        else
        {
          v19 = LogSubsystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
          }
        }
      }

      else
      {
        v19 = LogSubsystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
        }
      }
    }

    else
    {
      v19 = LogSubsystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
      }
    }

    selfCopy2 = self;
    v21 = v11;
LABEL_12:
    [(ICSDataclassViewController *)selfCopy2 reloadSpecifierID:v21];
    goto LABEL_13;
  }

  v10 = LogSubsystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ICSDataclassViewController _checkAndReloadSpecifierIfNeededForAccountChangedFrom:toAccount:];
  }

  [(ICSDataclassViewController *)self reloadSpecifiers];
LABEL_13:
}

- (void)_startObservingRestrictionChanges
{
  if (!self->_restrictionChangeNotificationObserver)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v5 = *MEMORY[0x277D26178];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__ICSDataclassViewController__startObservingRestrictionChanges__block_invoke;
    v8[3] = &unk_27A666378;
    objc_copyWeak(&v9, &location);
    v6 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:v8];
    restrictionChangeNotificationObserver = self->_restrictionChangeNotificationObserver;
    self->_restrictionChangeNotificationObserver = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __63__ICSDataclassViewController__startObservingRestrictionChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupDataclassSpecifiers];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 reloadSpecifiers];
}

- (void)_stopObservingRestrictionChanges
{
  if (self->_restrictionChangeNotificationObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_restrictionChangeNotificationObserver];

    restrictionChangeNotificationObserver = self->_restrictionChangeNotificationObserver;
    self->_restrictionChangeNotificationObserver = 0;
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  activeSpecifier = [(ICSDataclassViewController *)self activeSpecifier];

  if (activeSpecifier)
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  return v7;
}

- (void)specifierProvider:(uint64_t)a1 willBeginLoadingSpecifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Unbalanced call to -specifierProvider:willBeginLoadingSpecifier:, please file a radar! (provider: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)specifierProvider:(uint64_t)a1 didFinishLoadingSpecifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Unbalanced call to -specifierProvider:didFinishLoadingSpecifier:, please file a radar! (provider: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadSpecifierProviderWithClassName:(os_log_t)log inBundle:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_275819000, log, OS_LOG_TYPE_ERROR, "ICSDataclassViewController Failed to load %{public}@ from bundle: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end