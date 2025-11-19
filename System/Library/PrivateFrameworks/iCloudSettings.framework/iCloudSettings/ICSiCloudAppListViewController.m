@interface ICSiCloudAppListViewController
- (BOOL)_shouldDisableiCloudUI;
- (id)_specifiersForAppsGroup;
- (id)dataClassSpecifierProvider;
- (id)specifiers;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)accountDidChangeFromAccount:(id)a3 toAccount:(id)a4;
- (void)cleanupDataclassSpecifiers;
- (void)dealloc;
- (void)setAccountManager:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICSiCloudAppListViewController

- (void)setAccountManager:(id)a3
{
  v3.receiver = self;
  v3.super_class = ICSiCloudAppListViewController;
  [(ICSDataclassViewController *)&v3 setAccountManager:a3];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "ICSiCloudAppListViewController dealloc %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = ICSiCloudAppListViewController;
  [(ICSDataclassViewController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICSiCloudAppListViewController;
  [(ACUIDataclassConfigurationViewController *)&v5 viewDidLoad];
  [(ManageStorageAppsListViewModel *)self->_manageStorageAppsListViewModel fetchAppsListWithFetchHomeViewModel:0 loadImages:0 completionHandler:&__block_literal_global_2];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APP_LIST_VIEW_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [(ICSiCloudAppListViewController *)self setTitle:v4];
}

void __45__ICSiCloudAppListViewController_viewDidLoad__block_invoke()
{
  v0 = LogSubsystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __45__ICSiCloudAppListViewController_viewDidLoad__block_invoke_cold_1(v0);
  }
}

- (id)dataClassSpecifierProvider
{
  dataClassSpecifierProvider = self->_dataClassSpecifierProvider;
  if (dataClassSpecifierProvider)
  {
    goto LABEL_4;
  }

  v4 = [(ICSiCloudAppListViewController *)self homeViewModel];

  if (v4)
  {
    v5 = [ICSDataclassSpecifierProvider alloc];
    v6 = [(ICSDataclassViewController *)self accountManager];
    v7 = [(ICSiCloudAppListViewController *)self homeViewModel];
    v8 = [(ICSiCloudAppListViewController *)self manageStorageAppsListViewModel];
    v9 = [(ICSDataclassSpecifierProvider *)v5 initWithAccountManager:v6 presenter:self homeViewModel:v7 manageStorageAppsListViewModel:v8];
    v10 = self->_dataClassSpecifierProvider;
    self->_dataClassSpecifierProvider = v9;

    [(ICSDataclassSpecifierProvider *)self->_dataClassSpecifierProvider setDelegate:self];
    dataClassSpecifierProvider = self->_dataClassSpecifierProvider;
LABEL_4:
    v11 = dataClassSpecifierProvider;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (id)specifiers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.super.super.isa + v3))
  {
    v4 = LogSubsystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "ICSiCloudAppListViewController is loading specifiers.", buf, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(ICSiCloudAppListViewController *)self _specifiersForAppsGroup];
    [v5 addObjectsFromArray:v6];

    v7 = [v5 copy];
    v8 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = v7;
  }

  if ([(ICSiCloudAppListViewController *)self _shouldDisableiCloudUI])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      v13 = *MEMORY[0x277D3FF38];
      v14 = MEMORY[0x277CBEC28];
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v21 + 1) + 8 * v15++) setObject:v14 forKeyedSubscript:{v13, v21}];
        }

        while (v11 != v15);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }
  }

  v16 = LogSubsystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *buf = 138412290;
    v26 = v17;
    _os_log_impl(&dword_275819000, v16, OS_LOG_TYPE_DEFAULT, "ICSiCloudAppListViewController specifiers: returning %@", buf, 0xCu);
  }

  v18 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)cleanupDataclassSpecifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.super.super.isa + v3) = 0;

  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = 0;

  dataClassSpecifierProvider = self->_dataClassSpecifierProvider;

  [(ICSDataclassSpecifierProvider *)dataClassSpecifierProvider setSpecifiers:0];
}

- (id)_specifiersForAppsGroup
{
  appSpecifiers = self->_appSpecifiers;
  if (!appSpecifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
    v6 = [v5 specifiers];
    [v4 addObjectsFromArray:v6];

    v7 = [v4 copy];
    v8 = self->_appSpecifiers;
    self->_appSpecifiers = v7;

    appSpecifiers = self->_appSpecifiers;
  }

  return appSpecifiers;
}

- (BOOL)_shouldDisableiCloudUI
{
  v3 = [(ICSDataclassViewController *)self account];
  if ([v3 aa_needsToVerifyTerms])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICSDataclassViewController *)self account];
    if ([v5 aa_isPrimaryEmailVerified])
    {
      v6 = [(ICSDataclassViewController *)self account];
      v7 = [v6 aa_suspensionInfo];
      v4 = [v7 isiCloudSuspended];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICSDataclassViewController *)self activeSpecifier];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)accountDidChangeFromAccount:(id)a3 toAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = ICSiCloudAppListViewController;
  [(ICSDataclassViewController *)&v27 accountDidChangeFromAccount:v6 toAccount:v7];
  v8 = [v6 provisionedDataclasses];
  v9 = [v7 provisionedDataclasses];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
    [v11 resetAccount];

    [(ICSiCloudAppListViewController *)self cleanupDataclassSpecifiers];
    [(ICSiCloudAppListViewController *)self reloadSpecifiers];
  }

  v12 = [v6 enabledDataclasses];
  v13 = [v7 enabledDataclasses];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    v15 = LogSubsystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "Account enabled dataclasses changed. Will reload specifiers.", v26, 2u);
    }

    if (v7)
    {
      v16 = *MEMORY[0x277CB89C8];
      v17 = [v6 isEnabledForDataclass:*MEMORY[0x277CB89C8]];
      if (v17 != [v7 isEnabledForDataclass:v16])
      {
        v18 = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
        v19 = [v18 ubiquitySpecifierProvider];
        v20 = [v19 ubiquityAccessManager];
        [v20 setAppAccessGranted:objc_msgSend(v7 forBundleID:{"isEnabledForDataclass:", v16), @"com.apple.mobilemail"}];
      }

      v21 = *MEMORY[0x277CB8928];
      v22 = [v6 isEnabledForDataclass:*MEMORY[0x277CB8928]];
      if (v22 != [v7 isEnabledForDataclass:v21])
      {
        v23 = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
        v24 = [v23 ubiquitySpecifierProvider];
        v25 = [v24 ubiquityAccessManager];
        [v25 setAppAccessGranted:objc_msgSend(v7 forBundleID:{"isEnabledForDataclass:", v21), @"com.apple.mobilesafari"}];
      }
    }
  }
}

@end