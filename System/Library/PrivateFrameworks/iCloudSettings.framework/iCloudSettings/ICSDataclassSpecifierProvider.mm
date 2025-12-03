@interface ICSDataclassSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ACAccount)account;
- (BOOL)_shouldShowDeviceEnrollmentsSpecifier;
- (BOOL)_showSpecifierForDataclass:(id)dataclass;
- (BOOL)isRegularWatchPairing;
- (BOOL)shouldShowSpecifierForServiceType:(id)type;
- (ICSDataclassSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter homeViewModel:(id)model manageStorageAppsListViewModel:(id)viewModel;
- (NSArray)specifiers;
- (id)_buildAppGroupHeaderSpecifiers;
- (id)_buildAppSpecifiers;
- (id)_buildEmailSpecifier;
- (id)_buildHealthDataSpecifier;
- (id)_buildKeychainSpecifier;
- (id)_buildPhotosSpecifier;
- (id)_buildUbiquitySpecifier;
- (id)_dataclassState:(id)state;
- (id)_loadCalendarSpecifierProvider;
- (id)_loadSpecifierProviderWithClassName:(id)name inBundle:(id)bundle;
- (id)_specifierForDataclass:(id)dataclass;
- (id)_specifierForDataclass:(id)dataclass fromProvisionedSpecifiers:(id)specifiers;
- (id)_specifierForDataclass:(id)dataclass withCustomDetailClass:(Class)class;
- (id)_specifierForMessagesDataclass;
- (id)_specifiersForAppListVC;
- (id)_specifiersForProvisionedDataclasses;
- (id)getICloudMailSpecifier;
- (id)loadBundle:(id)bundle atPath:(id)path;
- (id)specifierForDataclass:(id)dataclass;
- (id)specifierForServiceType:(id)type;
- (id)valueForServiceSpecifier:(id)specifier;
- (void)_decorateDataclassSpecifier:(id)specifier forDataclass:(id)dataclass;
- (void)_decorateLiverpoolSpecifier:(id)specifier forBundleId:(id)id;
- (void)_decorateServiceSpecifier:(id)specifier forService:(id)service;
- (void)_initiateServiceAuthHandler;
- (void)_initiateSpecifiers;
- (void)_loadCalendarSpecifierProvider;
- (void)_performUpdateIfNeededOnSpecifier:(id)specifier forDataclass:(id)dataclass;
- (void)_showDeviceEnrollmentView:(id)view;
- (void)cleanupDataclassSpecifiers;
- (void)dealloc;
- (void)reloadSpecifier:(id)specifier animated:(BOOL)animated;
- (void)reloadSpecifiers;
- (void)setDelegate:(id)delegate;
- (void)setValue:(id)value forServiceSpecifier:(id)specifier;
@end

@implementation ICSDataclassSpecifierProvider

- (ICSDataclassSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter homeViewModel:(id)model manageStorageAppsListViewModel:(id)viewModel
{
  managerCopy = manager;
  presenterCopy = presenter;
  modelCopy = model;
  viewModelCopy = viewModel;
  v31.receiver = self;
  v31.super_class = ICSDataclassSpecifierProvider;
  v15 = [(ICSDataclassSpecifierProvider *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountManager, manager);
    objc_storeWeak(&v16->_listController, presenterCopy);
    objc_storeStrong(&v16->_homeViewModel, model);
    objc_storeStrong(&v16->_manageStorageAppsListViewModel, viewModel);
    v17 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8A08], *MEMORY[0x277CB8A58], *MEMORY[0x277CB89C8], *MEMORY[0x277CB89C0], *MEMORY[0x277CB8920], 0}];
    mainViewDataclasses = v16->_mainViewDataclasses;
    v16->_mainViewDataclasses = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.appleaccountsettings.accountwork", v19);
    accountWorkQueue = v16->_accountWorkQueue;
    v16->_accountWorkQueue = v20;

    objc_initWeak(&location, v16);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = +[_TtC14iCloudSettings30ManageStorageAppsListViewModel ViewModelDidUpdateNotificationName];
    manageStorageAppsListViewModel = v16->_manageStorageAppsListViewModel;
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __111__ICSDataclassSpecifierProvider_initWithAccountManager_presenter_homeViewModel_manageStorageAppsListViewModel___block_invoke;
    v28[3] = &unk_27A666378;
    objc_copyWeak(&v29, &location);
    v26 = [defaultCenter addObserverForName:v23 object:manageStorageAppsListViewModel queue:mainQueue usingBlock:v28];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __111__ICSDataclassSpecifierProvider_initWithAccountManager_presenter_homeViewModel_manageStorageAppsListViewModel___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[_TtC14iCloudSettings30ManageStorageAppsListViewModel ViewModelDidUpdateNotificationName];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%@ notification received. Reloading specifiers.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSDataclassSpecifierProvider;
  [(ICSDataclassSpecifierProvider *)&v4 dealloc];
}

- (ACAccount)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  [(ICSDataclassSpecifierProvider *)self _initiateServiceAuthHandler];

  [(ICSDataclassSpecifierProvider *)self _initiateSpecifiers];
}

- (void)_initiateServiceAuthHandler
{
  if (!self->_serviceAuthHandler)
  {
    v4 = [ICSServiceAuthHandler alloc];
    accountManager = self->_accountManager;
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v6 = [(ICSServiceAuthHandler *)v4 initWithAccountManager:accountManager presenter:WeakRetained];
    serviceAuthHandler = self->_serviceAuthHandler;
    self->_serviceAuthHandler = v6;
  }
}

- (void)_initiateSpecifiers
{
  getICloudMailSpecifier = [(ICSDataclassSpecifierProvider *)self getICloudMailSpecifier];
  mailSpecifierProvider = self->_mailSpecifierProvider;
  self->_mailSpecifierProvider = getICloudMailSpecifier;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(AAUISpecifierProvider *)self->_mailSpecifierProvider setDelegate:WeakRetained];

  v6 = [ICSPrivateEmailSpecifierProvider alloc];
  accountManager = self->_accountManager;
  v8 = objc_loadWeakRetained(&self->_listController);
  v9 = [(ICSPrivateEmailSpecifierProvider *)v6 initWithAccountManager:accountManager presenter:v8];
  hmeSpecifierProvider = self->_hmeSpecifierProvider;
  self->_hmeSpecifierProvider = v9;

  v11 = objc_loadWeakRetained(&self->_delegate);
  [(AAUISpecifierProvider *)self->_hmeSpecifierProvider setDelegate:v11];

  v12 = [[ICSHealthDataSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
  healthDataSpecifierProvider = self->_healthDataSpecifierProvider;
  self->_healthDataSpecifierProvider = v12;

  v14 = objc_loadWeakRetained(&self->_delegate);
  [(AAUISpecifierProvider *)self->_healthDataSpecifierProvider setDelegate:v14];

  if (_os_feature_enabled_impl())
  {
    _loadCalendarSpecifierProvider = [(ICSDataclassSpecifierProvider *)self _loadCalendarSpecifierProvider];
    calendarSpecifierProvider = self->_calendarSpecifierProvider;
    self->_calendarSpecifierProvider = _loadCalendarSpecifierProvider;
  }

  else
  {
    v17 = LogSubsystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICSDataclassSpecifierProvider _initiateSpecifiers];
    }
  }

  v18 = [[ICSPhotoStreamSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
  photoStreamSpecifierProvider = self->_photoStreamSpecifierProvider;
  self->_photoStreamSpecifierProvider = v18;

  v20 = objc_loadWeakRetained(&self->_delegate);
  [(AAUISpecifierProvider *)self->_photoStreamSpecifierProvider setDelegate:v20];

  v21 = [[ICSKeychainSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
  keychainSpecifierProvider = self->_keychainSpecifierProvider;
  self->_keychainSpecifierProvider = v21;

  v23 = objc_loadWeakRetained(&self->_delegate);
  [(ICSKeychainSpecifierProvider *)self->_keychainSpecifierProvider setDelegate:v23];

  v24 = [[ICSUbiquitySpecifierProvider alloc] initWithAccountManager:self->_accountManager];
  ubiquitySpecifierProvider = self->_ubiquitySpecifierProvider;
  self->_ubiquitySpecifierProvider = v24;

  v26 = objc_loadWeakRetained(&self->_delegate);
  [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider setDelegate:v26];

  v27 = [[ICSOtherSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
  otherSpecifierProvider = self->_otherSpecifierProvider;
  self->_otherSpecifierProvider = v27;

  v29 = objc_loadWeakRetained(&self->_delegate);
  [(AAUISpecifierProvider *)self->_otherSpecifierProvider setDelegate:v29];
}

- (void)cleanupDataclassSpecifiers
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  appGroupSpecifiers = self->_appGroupSpecifiers;
  self->_appGroupSpecifiers = 0;

  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = 0;

  [(ICSKeychainSpecifierProvider *)self->_keychainSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_photoStreamSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mailSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_hmeSpecifierProvider setSpecifiers:0];
  [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_healthDataSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_otherSpecifierProvider setSpecifiers:0];
  if (_os_feature_enabled_impl())
  {
    calendarSpecifierProvider = self->_calendarSpecifierProvider;

    [(AAUISpecifierProvider *)calendarSpecifierProvider setSpecifiers:0];
  }
}

- (void)reloadSpecifiers
{
  v4 = [(NSArray *)self->_specifiers copy];
  [(ICSDataclassSpecifierProvider *)self cleanupDataclassSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v4 animated:0];
}

- (void)reloadSpecifier:(id)specifier animated:(BOOL)animated
{
  specifierCopy = specifier;
  cellType = [specifierCopy cellType];
  if (cellType == 6)
  {
    [specifierCopy removePropertyForKey:*MEMORY[0x277D401A8]];
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained reloadSpecifier:specifierCopy animated:cellType != 6];
}

- (BOOL)_showSpecifierForDataclass:(id)dataclass
{
  v4 = MEMORY[0x277CEC7A0];
  dataclassCopy = dataclass;
  sharedManager = [v4 sharedManager];
  account = [(ICSDataclassSpecifierProvider *)self account];
  v8 = [sharedManager shouldShowDataclass:dataclassCopy forAccount:account];

  return v8;
}

- (id)_buildPhotosSpecifier
{
  if ((-[ICSDataclassSpecifierProvider _showSpecifierForDataclass:](self, "_showSpecifierForDataclass:", *MEMORY[0x277CB89D0]) || -[ICSDataclassSpecifierProvider _showSpecifierForDataclass:](self, "_showSpecifierForDataclass:", *MEMORY[0x277CB8A38])) && (-[AAUISpecifierProvider specifiers](self->_photoStreamSpecifierProvider, "specifiers"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    specifiers = [(AAUISpecifierProvider *)self->_photoStreamSpecifierProvider specifiers];
    firstObject = [specifiers firstObject];

    [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:firstObject forDataclass:*MEMORY[0x277CB8A08]];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_buildHealthDataSpecifier
{
  specifiers = [(AAUISpecifierProvider *)self->_healthDataSpecifierProvider specifiers];
  v4 = [specifiers count];

  if (v4)
  {
    specifiers2 = [(AAUISpecifierProvider *)self->_healthDataSpecifierProvider specifiers];
    firstObject = [specifiers2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_buildUbiquitySpecifier
{
  ubiquityLinklistSpecifier = [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider ubiquityLinklistSpecifier];
  [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:ubiquityLinklistSpecifier forDataclass:*MEMORY[0x277CB8A58]];
  if ([(ICSDataclassSpecifierProvider *)self _showSpecifierForDataclass:*MEMORY[0x277CB91D8]])
  {
    v4 = ubiquityLinklistSpecifier == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = ubiquityLinklistSpecifier;
  }

  return v5;
}

- (id)_buildEmailSpecifier
{
  v3 = *MEMORY[0x277CB89C8];
  if (!-[ICSDataclassSpecifierProvider _showSpecifierForDataclass:](self, "_showSpecifierForDataclass:", *MEMORY[0x277CB89C8]) || (-[AAUISpecifierProvider specifiers](self->_mailSpecifierProvider, "specifiers"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, !v5))
  {
    firstObject = 0;
    goto LABEL_10;
  }

  if ([MEMORY[0x277CECA48] isAccountDataclassListRedesignEnabled])
  {
    account = [(ICSDataclassSpecifierProvider *)self account];
    if ([account aa_isAccountClass:*MEMORY[0x277CEC688]])
    {
    }

    else
    {
      account2 = [(ICSDataclassSpecifierProvider *)self account];
      aa_isManagedAppleID = [account2 aa_isManagedAppleID];

      if (!aa_isManagedAppleID)
      {
        firstObject = [(ICSDataclassSpecifierProvider *)self specifierForDataclass:v3];
        goto LABEL_9;
      }
    }
  }

  specifiers = [(AAUISpecifierProvider *)self->_mailSpecifierProvider specifiers];
  firstObject = [specifiers firstObject];

LABEL_9:
  [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:firstObject forDataclass:v3];
LABEL_10:

  return firstObject;
}

- (id)_buildKeychainSpecifier
{
  v3 = *MEMORY[0x277CB89C0];
  if (-[ICSDataclassSpecifierProvider _showSpecifierForDataclass:](self, "_showSpecifierForDataclass:", *MEMORY[0x277CB89C0]) && (-[ICSKeychainSpecifierProvider specifiers](self->_keychainSpecifierProvider, "specifiers"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    specifiers = [(ICSKeychainSpecifierProvider *)self->_keychainSpecifierProvider specifiers];
    firstObject = [specifiers firstObject];

    [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:firstObject forDataclass:v3];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_specifierForMessagesDataclass
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getCKCloudSettingsViewControllerClass_softClass;
  v12 = getCKCloudSettingsViewControllerClass_softClass;
  if (!getCKCloudSettingsViewControllerClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getCKCloudSettingsViewControllerClass_block_invoke;
    v8[3] = &unk_27A6664B0;
    v8[4] = &v9;
    __getCKCloudSettingsViewControllerClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = *MEMORY[0x277CB89D8];
  v5 = v3;
  _Block_object_dispose(&v9, 8);
  v6 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:v4 withCustomDetailClass:v3];
  [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:v6 forDataclass:v4];

  return v6;
}

- (BOOL)isRegularWatchPairing
{
  if (isRegularWatchPairing_onceToken != -1)
  {
    [ICSDataclassSpecifierProvider isRegularWatchPairing];
  }

  return 0;
}

- (id)_buildAppGroupHeaderSpecifiers
{
  v3 = objc_opt_new();
  v35 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APP_GROUP_HEADER_GROUP"];
  [v3 addObject:?];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"APPS_USING_ICLOUD_HEADER_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  traitCollection = [WeakRetained traitCollection];
  pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  if (pe_isSettingsFeatureDescriptionCellSupported)
  {
    [v7 setObject:@"com.apple.application-icon.icloud-apps" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    [v7 setIdentifier:@"AppsUsingiCloud"];
    [v7 setAccessibilityIdentifier:@"AppsUsingiCloud"];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DATACLASS_LIST_INFO_TEXT"];
    v13 = [v11 localizedStringForKey:v12 value:&stru_288487370 table:@"Localizable-AppleID"];

    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v15 localizedStringForKey:@"LEARN_MORE_PLACARD" value:&stru_288487370 table:@"Localizable-iCloud"];
    v17 = v16 = v3;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SAVED_TO_ICLOUD_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
    v20 = [v14 stringWithFormat:@"[%@](%@)", v17, v19];

    v3 = v16;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:v13, v20];
    [v7 setObject:v21 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"APPS_USING_ICLOUD_HEADER_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v7 setObject:v23 forKeyedSubscript:*MEMORY[0x277D40170]];

    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DATACLASS_LIST_INFO_TEXT"];
    v26 = [v24 localizedStringForKey:v25 value:&stru_288487370 table:@"Localizable-AppleID"];
    [v7 setObject:v26 forKeyedSubscript:*MEMORY[0x277D40160]];

    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SAVED_TO_ICLOUD_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v7 setObject:v28 forKeyedSubscript:@"AAUIDataclassAttributedLink"];

    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"LEARN_MORE" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v7 setObject:v30 forKeyedSubscript:@"AAUIDataclassAttributedLinkText"];

    [v7 setObject:&unk_28849FD58 forKeyedSubscript:*MEMORY[0x277D3FD78]];
    +[ICSDataclassSpecifierCell headerImageLength];
    v32 = v31;
    +[ICSDataclassSpecifierCell headerImageLength];
    v13 = [ICSDefaultIconLoader graphicIconWithType:9 size:v32, v33];
    [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  [v3 addObject:v7];

  return v3;
}

- (id)_buildAppSpecifiers
{
  appSpecifiers = self->_appSpecifiers;
  if (appSpecifiers)
  {
    goto LABEL_81;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _specifiersForProvisionedDataclasses = [(ICSDataclassSpecifierProvider *)self _specifiersForProvisionedDataclasses];
  if ([_specifiersForProvisionedDataclasses count])
  {
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_GROUP_0"];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      _buildAppGroupHeaderSpecifiers = [(ICSDataclassSpecifierProvider *)self _buildAppGroupHeaderSpecifiers];
      [v4 addObjectsFromArray:_buildAppGroupHeaderSpecifiers];
    }

    else
    {
      account = [(ICSDataclassSpecifierProvider *)self account];
      if ([account aa_isAccountClass:*MEMORY[0x277CEC688]])
      {
        account2 = [(ICSDataclassSpecifierProvider *)self account];
        aa_isManagedAppleID = [account2 aa_isManagedAppleID];

        if (!aa_isManagedAppleID)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v13 = MEMORY[0x277D3FAD8];
      _buildAppGroupHeaderSpecifiers = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [_buildAppGroupHeaderSpecifiers localizedStringForKey:@"SYNC_WITH_ICLOUD_GROUP_NAME" value:&stru_288487370 table:@"Localizable-AppleID"];
      v15 = [v13 groupSpecifierWithID:@"SYNC WITH ICLOUD" name:v14];

      v6 = v15;
    }

LABEL_11:
    [v4 addObject:v6];
  }

  if ([(ICSDataclassSpecifierProvider *)self isRegularWatchPairing])
  {
    _buildPhotosSpecifier = 0;
  }

  else
  {
    _buildPhotosSpecifier = [(ICSDataclassSpecifierProvider *)self _buildPhotosSpecifier];
    if (_buildPhotosSpecifier)
    {
      [v4 addObject:_buildPhotosSpecifier];
    }
  }

  if (self->_ubiquitySpecifierProvider)
  {
    _buildUbiquitySpecifier = [(ICSDataclassSpecifierProvider *)self _buildUbiquitySpecifier];
    if (_buildUbiquitySpecifier)
    {
      [v4 addObject:_buildUbiquitySpecifier];
    }
  }

  _buildEmailSpecifier = [(ICSDataclassSpecifierProvider *)self _buildEmailSpecifier];
  if (_buildEmailSpecifier)
  {
    [v4 addObject:_buildEmailSpecifier];
  }

  if (![(ICSDataclassSpecifierProvider *)self isRegularWatchPairing])
  {
    _buildKeychainSpecifier = [(ICSDataclassSpecifierProvider *)self _buildKeychainSpecifier];

    if (_buildKeychainSpecifier)
    {
      [v4 addObject:_buildKeychainSpecifier];
      _buildPhotosSpecifier = _buildKeychainSpecifier;
    }

    else
    {
      _buildPhotosSpecifier = 0;
    }
  }

  v20 = *MEMORY[0x277CB89F8];
  v21 = [_specifiersForProvisionedDataclasses specifierForID:*MEMORY[0x277CB89F8]];

  if (v21)
  {
    [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:v21 forDataclass:v20];
    [v4 addObject:v21];
  }

  if (![(ICSDataclassSpecifierProvider *)self isRegularWatchPairing])
  {
    v22 = *MEMORY[0x277CB89D8];
    v23 = [_specifiersForProvisionedDataclasses specifierForID:*MEMORY[0x277CB89D8]];

    if (v23)
    {
      [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:v23 forDataclass:v22];
      [v4 addObject:v23];
      v21 = v23;
    }

    else
    {
      v21 = 0;
    }
  }

  mEMORY[0x277CEC7A0] = [MEMORY[0x277CEC7A0] sharedManager];
  v25 = *MEMORY[0x277CB89A0];
  account3 = [(ICSDataclassSpecifierProvider *)self account];
  v27 = [mEMORY[0x277CEC7A0] shouldShowDataclass:v25 forAccount:account3];

  if (!v27)
  {
    goto LABEL_39;
  }

  mEMORY[0x277CEC7A0]2 = [MEMORY[0x277CEC7A0] sharedManager];
  v29 = [mEMORY[0x277CEC7A0]2 appIsNeitherInstalledOrPlaceholder:v25];

  if (!v29)
  {
    v31 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:v25 fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

    if (v31)
    {
      [v4 addObject:v31];
      v21 = v31;
      goto LABEL_39;
    }

LABEL_38:
    v21 = 0;
    goto LABEL_39;
  }

  _buildHealthDataSpecifier = [(ICSDataclassSpecifierProvider *)self _buildHealthDataSpecifier];

  if (!_buildHealthDataSpecifier)
  {
    goto LABEL_38;
  }

  [v4 addObject:_buildHealthDataSpecifier];
  [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:_buildHealthDataSpecifier forDataclass:v25];
  v21 = _buildHealthDataSpecifier;
LABEL_39:
  if (![(ICSDataclassSpecifierProvider *)self isRegularWatchPairing])
  {
    if (_os_feature_enabled_impl() && (-[ICSDataclassSpecifierProvider account](self, "account"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 aa_isAccountClass:*MEMORY[0x277CEC688]], v32, v33))
    {
      specifiers = [(AAUISpecifierProvider *)self->_calendarSpecifierProvider specifiers];
      v35 = [specifiers count];

      if (v35)
      {
        specifiers2 = [(AAUISpecifierProvider *)self->_calendarSpecifierProvider specifiers];
        [v4 addObjectsFromArray:specifiers2];

        specifiers3 = [(AAUISpecifierProvider *)self->_calendarSpecifierProvider specifiers];
        v38 = [specifiers3 count];

        if (v38)
        {
          specifiers4 = [(AAUISpecifierProvider *)self->_calendarSpecifierProvider specifiers];
          firstObject = [specifiers4 firstObject];

          [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:firstObject forDataclass:*MEMORY[0x277CB8958]];
        }
      }

      v41 = v21;
    }

    else
    {
      v41 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8958] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

      if (v41)
      {
        if (_os_feature_enabled_impl())
        {
          [v41 setName:@"iCloud Calendar"];
        }

        [v4 addObject:v41];
      }
    }

    if ([(ICSDataclassSpecifierProvider *)self _shouldShowDeviceEnrollmentsSpecifier])
    {
      v42 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8980] withCustomDetailClass:0];
      [v42 setControllerLoadAction:sel__showDeviceEnrollmentView_];
      [v4 addObject:v42];
    }

    v43 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8968] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

    if (v43)
    {
      [v4 addObject:v43];
    }

    v21 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8A18] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

    if (v21)
    {
      [v4 addObject:v21];
    }
  }

  v44 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8928] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v44)
  {
    [v4 addObject:v44];
  }

  v45 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB89F0] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v45)
  {
    [v4 addObject:v45];
  }

  v46 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8A50] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v46)
  {
    [v4 addObject:v46];
  }

  v47 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB89A8] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v47)
  {
    [v4 addObject:v47];
  }

  v48 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8990] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v48)
  {
    [v4 addObject:v48];
  }

  v49 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8A40] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v49)
  {
    [v4 addObject:v49];
  }

  v50 = *MEMORY[0x277CED1B0];
  v51 = [(ICSDataclassSpecifierProvider *)self specifierForServiceType:*MEMORY[0x277CED1B0]];

  if (v51)
  {
    [(ICSDataclassSpecifierProvider *)self _decorateServiceSpecifier:v51 forService:v50];
    [v4 addObject:v51];
  }

  v52 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8A48] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v52)
  {
    [v4 addObject:v52];
  }

  v53 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8998] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v53)
  {
    [v4 addObject:v53];
  }

  v54 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB89E0] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v54)
  {
    [v4 addObject:v54];
  }

  v55 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB8A00] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v55)
  {
    [v4 addObject:v55];
  }

  v56 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:*MEMORY[0x277CB89B0] fromProvisionedSpecifiers:_specifiersForProvisionedDataclasses];

  if (v56)
  {
    [v4 addObject:v56];
  }

  v57 = [v4 copy];
  v58 = self->_appSpecifiers;
  self->_appSpecifiers = v57;

  appSpecifiers = self->_appSpecifiers;
LABEL_81:

  return appSpecifiers;
}

- (BOOL)_shouldShowDeviceEnrollmentsSpecifier
{
  account = [(ICSDataclassSpecifierProvider *)self account];
  v4 = [account aa_isAccountClass:*MEMORY[0x277CEC688]];

  if (v4)
  {
    account2 = [(ICSDataclassSpecifierProvider *)self account];
    provisionedDataclasses = [account2 provisionedDataclasses];
    v7 = *MEMORY[0x277CB8980];
    v8 = [provisionedDataclasses containsObject:*MEMORY[0x277CB8980]];

    if (v8)
    {
      mEMORY[0x277CEC7A0] = [MEMORY[0x277CEC7A0] sharedManager];
      account3 = [(ICSDataclassSpecifierProvider *)self account];
      v11 = [mEMORY[0x277CEC7A0] shouldShowDataclass:v7 forAccount:account3];

      if (v11)
      {
        if (+[ICSDeviceEnrollmentSettings showDeviceEnrollmentDataclass])
        {
          return 1;
        }

        v13 = LogSubsystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [ICSDataclassSpecifierProvider _shouldShowDeviceEnrollmentsSpecifier];
        }
      }

      else
      {
        v13 = LogSubsystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [ICSDataclassSpecifierProvider _shouldShowDeviceEnrollmentsSpecifier];
        }
      }
    }

    else
    {
      v13 = LogSubsystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ICSDataclassSpecifierProvider _shouldShowDeviceEnrollmentsSpecifier];
      }
    }
  }

  else
  {
    v13 = LogSubsystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICSDataclassSpecifierProvider _shouldShowDeviceEnrollmentsSpecifier];
    }
  }

  return 0;
}

- (id)_specifierForDataclass:(id)dataclass fromProvisionedSpecifiers:(id)specifiers
{
  dataclassCopy = dataclass;
  v7 = [specifiers specifierForID:dataclassCopy];
  if (v7)
  {
    [(ICSDataclassSpecifierProvider *)self _decorateDataclassSpecifier:v7 forDataclass:dataclassCopy];
    v8 = v7;
  }

  return v7;
}

- (void)_decorateDataclassSpecifier:(id)specifier forDataclass:(id)dataclass
{
  specifierCopy = specifier;
  dataclassCopy = dataclass;
  manageStorageAppsListViewModel = [(ICSDataclassSpecifierProvider *)self manageStorageAppsListViewModel];
  v8 = [manageStorageAppsListViewModel expandedSubTitleForDataclass:dataclassCopy];

  if (([dataclassCopy isEqualToString:*MEMORY[0x277CB8A08]] & 1) != 0 || (objc_msgSend(dataclassCopy, "isEqualToString:", *MEMORY[0x277CB8960]) & 1) != 0 || (objc_msgSend(dataclassCopy, "isEqualToString:", *MEMORY[0x277CB89F8]) & 1) != 0 || objc_msgSend(dataclassCopy, "isEqualToString:", *MEMORY[0x277CB89C0]))
  {
    homeViewModel = [(ICSDataclassSpecifierProvider *)self homeViewModel];
    v10 = [homeViewModel expandedSubTitleForDataclass:dataclassCopy];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"SUBTITLE_ON" value:&stru_288487370 table:@"Localizable-iCloud"];
    if ([v10 isEqualToString:v12])
    {
    }

    else
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"SUBTITLE_OFF" value:&stru_288487370 table:@"Localizable-iCloud"];
      v15 = [v10 isEqualToString:v14];

      if (!v15)
      {
        if (v8 && v10)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ • %@", v10, v8];
          goto LABEL_11;
        }

        if (!v8)
        {
          if (!v10)
          {
            v16 = 0;
            goto LABEL_12;
          }

          v17 = v10;
          v10 = v17;
          goto LABEL_11;
        }

LABEL_10:
        v17 = v8;
LABEL_11:
        v16 = v17;
        goto LABEL_12;
      }
    }
  }

  v10 = 0;
  v16 = 0;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  v18 = objc_opt_class();
  v19 = *MEMORY[0x277D3FE58];
  [specifierCopy setObject:v18 forKeyedSubscript:*MEMORY[0x277D3FE58]];
  if ([specifierCopy cellType] == 2 && ((objc_msgSend(dataclassCopy, "isEqualToString:", *MEMORY[0x277CB89C8]) & 1) != 0 || objc_msgSend(dataclassCopy, "isEqualToString:", *MEMORY[0x277CB89A0])))
  {
    [specifierCopy setObject:objc_opt_class() forKeyedSubscript:v19];
  }

  if (v16)
  {
    [specifierCopy setObject:v16 forKeyedSubscript:*MEMORY[0x277D40160]];
  }
}

- (void)_decorateLiverpoolSpecifier:(id)specifier forBundleId:(id)id
{
  specifierCopy = specifier;
  idCopy = id;
  manageStorageAppsListViewModel = [(ICSDataclassSpecifierProvider *)self manageStorageAppsListViewModel];
  v8 = [manageStorageAppsListViewModel expandedSubTitleForLiverpoolBundleId:idCopy];

  if (v8)
  {
    [specifierCopy setObject:v8 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  [specifierCopy setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
}

- (void)_decorateServiceSpecifier:(id)specifier forService:(id)service
{
  serviceCopy = service;
  specifierCopy = specifier;
  [specifierCopy setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  homeViewModel = [(ICSDataclassSpecifierProvider *)self homeViewModel];
  v8 = [homeViewModel expandedSubTitleForService:serviceCopy];

  [specifierCopy setObject:v8 forKeyedSubscript:*MEMORY[0x277D40160]];
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    _specifiersForAppListVC = [(ICSDataclassSpecifierProvider *)self _specifiersForAppListVC];
    v5 = self->_specifiers;
    self->_specifiers = _specifiersForAppListVC;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_specifiersForAppListVC
{
  v35 = *MEMORY[0x277D85DE8];
  appGroupSpecifiers = self->_appGroupSpecifiers;
  if (!appGroupSpecifiers)
  {
    v4 = objc_opt_new();
    if (!self->_appSpecifiers)
    {
      _buildAppSpecifiers = [(ICSDataclassSpecifierProvider *)self _buildAppSpecifiers];
      [v4 addObjectsFromArray:_buildAppSpecifiers];
    }

    specifiers = [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider specifiers];
    v7 = [specifiers count];

    if (v7)
    {
      specifiers2 = [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider specifiers];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __56__ICSDataclassSpecifierProvider__specifiersForAppListVC__block_invoke;
      v33[3] = &unk_27A666170;
      v33[4] = self;
      [specifiers2 enumerateObjectsUsingBlock:v33];

      specifiers3 = [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider specifiers];
      [v4 addObjectsFromArray:specifiers3];
    }

    account = [(ICSDataclassSpecifierProvider *)self account];
    v11 = [account aa_isAccountClass:*MEMORY[0x277CEC688]];

    if (v11)
    {
      specifiers4 = [(AAUISpecifierProvider *)self->_hmeSpecifierProvider specifiers];
      if ([specifiers4 count])
      {
        emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v4 addObject:emptyGroupSpecifier];

        [v4 addObjectsFromArray:specifiers4];
      }
    }

    specifiers5 = [(AAUISpecifierProvider *)self->_otherSpecifierProvider specifiers];
    v15 = [specifiers5 count];

    if (v15)
    {
      specifiers6 = [(AAUISpecifierProvider *)self->_otherSpecifierProvider specifiers];
      [v4 addObjectsFromArray:specifiers6];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v4;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      v21 = *MEMORY[0x277D3FFB8];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          v24 = [v23 objectForKeyedSubscript:{v21, v29}];
          [(ICSDataclassSpecifierProvider *)self _performUpdateIfNeededOnSpecifier:v23 forDataclass:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v19);
    }

    v25 = [v17 copy];
    v26 = self->_appGroupSpecifiers;
    self->_appGroupSpecifiers = v25;

    appGroupSpecifiers = self->_appGroupSpecifiers;
  }

  v27 = *MEMORY[0x277D85DE8];

  return appGroupSpecifiers;
}

void __56__ICSDataclassSpecifierProvider__specifiersForAppListVC__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 _decorateLiverpoolSpecifier:v3 forBundleId:v4];
}

- (id)_specifiersForProvisionedDataclasses
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  account = [(ICSDataclassSpecifierProvider *)self account];
  provisionedDataclasses = [account provisionedDataclasses];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = provisionedDataclasses;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        mEMORY[0x277CEC7A0] = [MEMORY[0x277CEC7A0] sharedManager];
        account2 = [(ICSDataclassSpecifierProvider *)self account];
        v13 = [mEMORY[0x277CEC7A0] shouldShowDataclass:v10 forAccount:account2];

        if (v13)
        {
          v14 = [(ICSDataclassSpecifierProvider *)self specifierForDataclass:v10];
          if (v14)
          {
            [v18 addObject:v14];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = LogSubsystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v18;
    _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "Returning specifiers: %@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)specifierForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  if (([dataclassCopy isEqualToString:*MEMORY[0x277CB89D0]] & 1) != 0 || objc_msgSend(dataclassCopy, "isEqualToString:", *MEMORY[0x277CB8A38]))
  {
    specifiers = [(AAUISpecifierProvider *)self->_photoStreamSpecifierProvider specifiers];
    v6 = [specifiers count];

    if (v6)
    {
      photoStreamSpecifierProvider = self->_photoStreamSpecifierProvider;
LABEL_5:
      WeakRetained = [photoStreamSpecifierProvider specifiers];
      firstObject = [WeakRetained firstObject];
LABEL_6:
      v10 = firstObject;

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v11 = *MEMORY[0x277CB89A0];
  if ([dataclassCopy isEqualToString:*MEMORY[0x277CB89A0]])
  {
    mEMORY[0x277CEC7A0] = [MEMORY[0x277CEC7A0] sharedManager];
    v13 = [mEMORY[0x277CEC7A0] appIsNeitherInstalledOrPlaceholder:v11];

    if (v13)
    {
      specifiers2 = [(AAUISpecifierProvider *)self->_healthDataSpecifierProvider specifiers];
      v15 = [specifiers2 count];

      if (v15)
      {
        photoStreamSpecifierProvider = self->_healthDataSpecifierProvider;
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if ([dataclassCopy isEqualToString:*MEMORY[0x277CB89C0]])
    {
      specifiers3 = [(ICSKeychainSpecifierProvider *)self->_keychainSpecifierProvider specifiers];
      v17 = [specifiers3 count];

      if (v17)
      {
        photoStreamSpecifierProvider = self->_keychainSpecifierProvider;
        goto LABEL_5;
      }

LABEL_14:
      v10 = 0;
      goto LABEL_18;
    }

    if (![dataclassCopy isEqualToString:*MEMORY[0x277CB89F8]])
    {
      if (![dataclassCopy isEqualToString:*MEMORY[0x277CB89D8]])
      {
        WeakRetained = objc_loadWeakRetained(&self->_listController);
        firstObject = [WeakRetained specifierForDataclass:dataclassCopy];
        goto LABEL_6;
      }

      _specifierForMessagesDataclass = [(ICSDataclassSpecifierProvider *)self _specifierForMessagesDataclass];
      goto LABEL_17;
    }
  }

  _specifierForMessagesDataclass = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:dataclassCopy];
LABEL_17:
  v10 = _specifierForMessagesDataclass;
LABEL_18:

  return v10;
}

- (void)_performUpdateIfNeededOnSpecifier:(id)specifier forDataclass:(id)dataclass
{
  specifierCopy = specifier;
  dataclassCopy = dataclass;
  account = [(ICSDataclassSpecifierProvider *)self account];
  v8 = [account aa_serverDisabledDataclass:dataclassCopy];

  if (v8)
  {
    cellType = [specifierCopy cellType];
    v10 = 0x277D3FB00;
    if (cellType != 2)
    {
      v10 = 0x277D3FB08;
    }

    v11 = *v10;
    [specifierCopy setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifierCopy setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"MANAGED_BY_APPLE_ID" value:&stru_288487370 table:@"Localizable-AppleID"];
    [specifierCopy setProperty:v13 forKey:*MEMORY[0x277D40160]];
  }

  name = [specifierCopy name];
  v15 = [name isEqualToString:@"AppsUsingiCloudHeader"];

  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x277CCABB0];
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v19 = *MEMORY[0x277D76F30];
    if (!IsAccessibilityCategory)
    {
      v19 = 60.0;
    }

    v20 = [v16 numberWithDouble:v19];
    [specifierCopy setProperty:v20 forKey:*MEMORY[0x277D40140]];
  }
}

- (id)_specifierForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v5 = [(ICSDataclassSpecifierProvider *)self _specifierForDataclass:dataclassCopy withCustomDetailClass:objc_opt_class()];

  return v5;
}

- (id)_specifierForDataclass:(id)dataclass withCustomDetailClass:(Class)class
{
  v6 = MEMORY[0x277D3FAD8];
  dataclassCopy = dataclass;
  account = [(ICSDataclassSpecifierProvider *)self account];
  v9 = [v6 acui_linkListCellSpecifierForDataclass:dataclassCopy account:account target:self set:0 get:sel__dataclassState_ detail:class];

  [v9 setObject:dataclassCopy forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [v9 setObject:self->_accountManager forKeyedSubscript:@"icloudAccountManager"];

  return v9;
}

- (id)_dataclassState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained specifierProvider:self dataclassSwitchStateForSpecifier:stateCopy];

  LODWORD(stateCopy) = [v6 BOOLValue];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (stateCopy)
  {
    v9 = @"ON";
  }

  else
  {
    v9 = @"OFF";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_288487370 table:@"Localizable-AppleID"];

  return v10;
}

- (BOOL)shouldShowSpecifierForServiceType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (([MEMORY[0x277CEC7B8] isMultiUserMode] & 1) != 0 || (-[ICSDataclassSpecifierProvider account](self, "account"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "aa_isAccountClass:", *MEMORY[0x277CEC688]), v5, !v6))
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  serviceOwnersManager = [(ICSServiceAuthHandler *)self->_serviceAuthHandler serviceOwnersManager];
  supportedServices = [objc_opt_class() supportedServices];
  v9 = [supportedServices containsObject:typeCopy];

  if ((v9 & 1) == 0)
  {
    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = typeCopy;
      _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "Could not find a service owner for %@", &v14, 0xCu);
    }

    goto LABEL_8;
  }

  v10 = 1;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)specifierForServiceType:(id)type
{
  typeCopy = type;
  if ([(ICSDataclassSpecifierProvider *)self shouldShowSpecifierForServiceType:typeCopy])
  {
    v5 = MEMORY[0x277D3FAD8];
    v6 = AALocalizedStringForServiceType();
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:sel_setValue_forServiceSpecifier_ get:sel_valueForServiceSpecifier_ detail:0 cell:6 edit:0];

    if ([typeCopy isEqualToString:*MEMORY[0x277CED1B0]])
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      v8 = +[_TtC14iCloudSettings19ICSIconBundleIdKeys GameCenterIconKey];
      [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40008]];
    }

    [v7 setProperty:typeCopy forKey:@"com.apple.appleaccount.ServiceType"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setValue:(id)value forServiceSpecifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [specifierCopy propertyForKey:@"com.apple.appleaccount.ServiceType"];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  activeSpecifier = [WeakRetained activeSpecifier];

  if (!activeSpecifier)
  {
    v11 = objc_loadWeakRetained(&self->_listController);
    [v11 startSpinnerInSpecifier:specifierCopy];

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __62__ICSDataclassSpecifierProvider_setValue_forServiceSpecifier___block_invoke;
    v18 = &unk_27A666488;
    selfCopy = self;
    v20 = specifierCopy;
    v12 = _Block_copy(&v15);
    bOOLValue = [valueCopy BOOLValue];
    serviceAuthHandler = self->_serviceAuthHandler;
    if (bOOLValue)
    {
      [(ICSServiceAuthHandler *)serviceAuthHandler signInAccountForService:v8 completion:v12];
    }

    else
    {
      [(ICSServiceAuthHandler *)serviceAuthHandler signOutAccountForService:v8 completion:v12];
    }
  }
}

void __62__ICSDataclassSpecifierProvider_setValue_forServiceSpecifier___block_invoke(uint64_t a1, char a2)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained stopSpinnerInActiveSpecifier];

  if ((a2 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v5 reloadSpecifier:*(a1 + 40)];
  }
}

- (id)valueForServiceSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"com.apple.appleaccount.ServiceType"];
  serviceOwnersManager = [(ICSServiceAuthHandler *)self->_serviceAuthHandler serviceOwnersManager];
  v6 = [serviceOwnersManager accountForService:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICSServiceAuthHandler accountMatchesPrimaryAccount:service:](self->_serviceAuthHandler, "accountMatchesPrimaryAccount:service:", v6, v4)}];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  return v7;
}

- (id)_loadCalendarSpecifierProvider
{
  v3 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"icloudCalendarSettings.bundle" atPath:@"System/Library/PreferenceBundles/AccountSettings"];
  v4 = NSClassFromString(&cfstr_Calendarsettin.isa);
  if ([(objc_class *)v4 conformsToProtocol:&unk_2884BC2B8])
  {
    v5 = [v4 alloc];
    accountManager = self->_accountManager;
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v8 = [v5 initWithAccountManager:accountManager presenter:WeakRetained];

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v8 setDelegate:v9];
  }

  else
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ICSDataclassSpecifierProvider *)self _loadCalendarSpecifierProvider];
    }

    v8 = 0;
  }

  return v8;
}

- (id)getICloudMailSpecifier
{
  v3 = [(ICSDataclassSpecifierProvider *)self loadBundle:@"icloudMailSettings.bundle" atPath:@"System/Library/PreferenceBundles/AccountSettings"];
  v4 = [(ICSDataclassSpecifierProvider *)self _loadSpecifierProviderWithClassName:@"MailSettingsSpecifierProvider" inBundle:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = LogSubsystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSDataclassSpecifierProvider getICloudMailSpecifier];
    }
  }

  return v5;
}

- (id)loadBundle:(id)bundle atPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  pathCopy = path;
  v7 = MEMORY[0x277C84CF0]();
  v8 = [v7 stringByAppendingPathComponent:pathCopy];

  v9 = [v8 stringByAppendingPathComponent:bundleCopy];
  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:v9];
  if (([v10 isLoaded] & 1) == 0)
  {
    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = bundleCopy;
      _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "%@ not loaded. Loading...", &v14, 0xCu);
    }

    [v10 load];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_loadSpecifierProviderWithClassName:(id)name inBundle:(id)bundle
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
  v8 = NSClassFromString(nameCopy);
  if ([(objc_class *)v8 conformsToProtocol:&unk_2884BC2B8])
  {
    v9 = [v8 alloc];
    accountManager = self->_accountManager;
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v12 = [v9 initWithAccountManager:accountManager presenter:WeakRetained];
  }

  else
  {
    v13 = LogSubsystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543874;
      selfCopy = self;
      v18 = 2114;
      v19 = nameCopy;
      v20 = 2114;
      v21 = bundleCopy;
      _os_log_error_impl(&dword_275819000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load %{public}@ from bundle: %{public}@", &v16, 0x20u);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_showDeviceEnrollmentView:(id)view
{
  accountManager = self->_accountManager;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [ICSDataclassSheetPresenter presentDeviceEnrollmentSheetWithAccountManager:accountManager presenter:WeakRetained];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadCalendarSpecifierProvider
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  v3 = *MEMORY[0x277D85DE8];
}

@end