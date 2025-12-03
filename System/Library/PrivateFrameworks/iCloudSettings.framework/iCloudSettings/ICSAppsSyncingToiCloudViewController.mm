@interface ICSAppsSyncingToiCloudViewController
- (ICSAppsSyncingToiCloudViewController)initWithAccountManager:(id)manager;
- (id)_specifiersForAppsSyncingToDrive;
- (id)account;
- (id)specifiers;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation ICSAppsSyncingToiCloudViewController

- (ICSAppsSyncingToiCloudViewController)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v5 = [(ICSDataclassViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(ICSDataclassViewController *)v5 setAccountManager:managerCopy];
    v7 = [ICSAppsSyncingToDriveSpecifierProvider alloc];
    accountManager = [(ICSDataclassViewController *)v6 accountManager];
    v9 = [(ICSAppsSyncingToDriveSpecifierProvider *)v7 initWithAccountManager:accountManager presenter:v6];
    appsSyncingToDriveSpecifierProvider = v6->_appsSyncingToDriveSpecifierProvider;
    v6->_appsSyncingToDriveSpecifierProvider = v9;

    [(ICSAppsSyncingToDriveSpecifierProvider *)v6->_appsSyncingToDriveSpecifierProvider setDelegate:v6];
  }

  return v6;
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
  v9 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "AAUISyncingToiCloudViewController dealloc %@", buf, 0xCu);
  }

  [(ICSAppsSyncingToDriveSpecifierProvider *)self->_appsSyncingToDriveSpecifierProvider setDelegate:0];
  appsSyncingToDriveSpecifierProvider = self->_appsSyncingToDriveSpecifierProvider;
  self->_appsSyncingToDriveSpecifierProvider = 0;

  v6.receiver = self;
  v6.super_class = ICSAppsSyncingToiCloudViewController;
  [(ICSDataclassViewController *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ICSAppsSyncingToiCloudViewController;
  [(ACUIDataclassConfigurationViewController *)&v2 viewDidLoad];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = ICSAppsSyncingToiCloudViewController;
  [(ICSAppsSyncingToiCloudViewController *)&v11 setSpecifier:specifierCopy];
  v5 = [ICSAppsSyncingToDriveSpecifierProvider alloc];
  accountManager = [(ICSDataclassViewController *)self accountManager];
  v7 = [(ICSAppsSyncingToDriveSpecifierProvider *)v5 initWithAccountManager:accountManager presenter:self];
  appsSyncingToDriveSpecifierProvider = self->_appsSyncingToDriveSpecifierProvider;
  self->_appsSyncingToDriveSpecifierProvider = v7;

  [(ICSAppsSyncingToDriveSpecifierProvider *)self->_appsSyncingToDriveSpecifierProvider setDelegate:self];
  v9 = [specifierCopy objectForKeyedSubscript:@"icloudAccountManager"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [ICSAppsSyncingToiCloudViewController setSpecifier:];
  }

  if (!v9)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ICSAppsSyncingToiCloudViewController setSpecifier:v10];
    }
  }
}

- (id)specifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.super.super.isa + v3))
  {
    v4 = LogSubsystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "ICSAppsSyncingToiCloudViewController is loading specifiers.", &v17, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"THIRD_PARTY_APPS"];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"APPS_SYNCING_TO_ICLOUD_DESC" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    if (self->_appsSyncingToDriveSpecifierProvider)
    {
      _specifiersForAppsSyncingToDrive = [(ICSAppsSyncingToiCloudViewController *)self _specifiersForAppsSyncingToDrive];
      [v5 addObjectsFromArray:_specifiersForAppsSyncingToDrive];
    }

    v10 = [v5 copy];
    v11 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = v10;
  }

  v12 = LogSubsystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    v17 = 138412290;
    v18 = v13;
    _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "ICSAppsSyncingToiCloudViewController specifiers: returning %@", &v17, 0xCu);
  }

  v14 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_specifiersForAppsSyncingToDrive
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_appsSyncingToDriveSpecifierProvider)
  {
    v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS SYNCING"];
    [v3 addObject:v4];

    specifiers = [(ICSAppsSyncingToDriveSpecifierProvider *)self->_appsSyncingToDriveSpecifierProvider specifiers];
    [v3 addObjectsFromArray:specifiers];
  }

  v6 = [v3 copy];

  return v6;
}

@end