@interface PHCallBlockingAndIdentificationSettingsBundleController
- (BOOL)isHidden;
- (BOOL)shouldInsert;
- (PHCallBlockingAndIdentificationSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)_updateExtensions;
- (void)didChangeServiceProvidersForCallBlockingServiceProviderController:(id)controller;
- (void)extensionsChangedForCallDirectoryExtensionManager:(id)manager;
- (void)updateParentListController;
@end

@implementation PHCallBlockingAndIdentificationSettingsBundleController

- (PHCallBlockingAndIdentificationSettingsBundleController)initWithParentListController:(id)controller
{
  v15.receiver = self;
  v15.super_class = PHCallBlockingAndIdentificationSettingsBundleController;
  v3 = [(PHCallBlockingAndIdentificationSettingsBundleController *)&v15 initWithParentListController:controller];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBAF60]);
    extensionManager = v3->_extensionManager;
    v3->_extensionManager = v4;

    [(CXCallDirectoryExtensionManager *)v3->_extensionManager setDelegate:v3 queue:0];
    [(CXCallDirectoryExtensionManager *)v3->_extensionManager beginObservingExtensions];
    [(PHCallBlockingAndIdentificationSettingsBundleController *)v3 _updateExtensions];
    v6 = objc_alloc_init(PHCallBlockingServiceProviderController);
    serviceProviderController = v3->_serviceProviderController;
    v3->_serviceProviderController = v6;

    [(PHCallBlockingServiceProviderController *)v3->_serviceProviderController setDelegate:v3];
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("PHCallDirectorySettingsListControllerQueue", v8);
    v10 = [PHBusinessCallingController alloc];
    v11 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v9];
    v12 = [(PHBusinessCallingController *)v10 initWithCoreTelephonyClient:v11];
    businessCallingController = v3->_businessCallingController;
    v3->_businessCallingController = v12;
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  callDirectorySpecifier = [(PHCallBlockingAndIdentificationSettingsBundleController *)self callDirectorySpecifier];

  if (!callDirectorySpecifier)
  {
    v5 = MEMORY[0x277D3FAD8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CALL_DIRECTORY_NAV_TITLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v8 = [v5 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v8 setIdentifier:@"CALL_DIRECTORIES"];
    [(PHCallBlockingAndIdentificationSettingsBundleController *)self setCallDirectorySpecifier:v8];
  }

  if ([(PHCallBlockingAndIdentificationSettingsBundleController *)self isHidden])
  {
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CBEA60];
    callDirectorySpecifier2 = [(PHCallBlockingAndIdentificationSettingsBundleController *)self callDirectorySpecifier];
    v9 = [v10 arrayWithObject:callDirectorySpecifier2];
  }

  v12 = [v9 copy];

  return v12;
}

- (BOOL)isHidden
{
  v28 = *MEMORY[0x277D85DE8];
  extensions = [(PHCallBlockingAndIdentificationSettingsBundleController *)self extensions];
  v4 = [extensions count];

  serviceProviderController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self serviceProviderController];
  serviceProvidersSupportingSpamBlocking = [serviceProviderController serviceProvidersSupportingSpamBlocking];
  v7 = [serviceProvidersSupportingSpamBlocking count];

  businessCallingController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self businessCallingController];
  specifiers = [businessCallingController specifiers];
  v10 = [specifiers count];

  llextensions = [(PHCallBlockingAndIdentificationSettingsBundleController *)self llextensions];
  v12 = [llextensions count];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v15 = TPSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134219008;
    v19 = v4;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v12;
    v26 = 1024;
    v27 = userInterfaceIdiom == 1;
    _os_log_impl(&dword_21B8E9000, v15, OS_LOG_TYPE_DEFAULT, "shouldShow extensions=%ld service providers=%ld business calling specifiers=%ld liveLookupExtensionsCount=%ld deviceIsPad==%d", &v18, 0x30u);
  }

  result = userInterfaceIdiom == 1 || (v4 | v7 | v10 | v12) == 0;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateExtensions
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  extensionManager = [(PHCallBlockingAndIdentificationSettingsBundleController *)self extensionManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__PHCallBlockingAndIdentificationSettingsBundleController__updateExtensions__block_invoke;
  v4[3] = &unk_2782E38B0;
  v4[4] = self;
  [extensionManager extensionsWithCompletionHandler:v4];
}

void __76__PHCallBlockingAndIdentificationSettingsBundleController__updateExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PHCallBlockingAndIdentificationSettingsBundleController__updateExtensions__block_invoke_2;
  block[3] = &unk_2782E3888;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __76__PHCallBlockingAndIdentificationSettingsBundleController__updateExtensions__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = TPSLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Received call directory extensions %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__PHCallBlockingAndIdentificationSettingsBundleController__updateExtensions__block_invoke_2_cold_1(a1, v4);
  }

  v6 = *(a1 + 32);
  if (!v6 || ([*(a1 + 48) extensions], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToArray:", v7), v7, (v8 & 1) == 0))
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 48) setExtensions:v9];

    v10 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 48) setLlextensions:v10];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (([v16 state] - 1) <= 3)
          {
            v17 = [*(a1 + 48) extensions];
            [v17 addObject:v16];

            v18 = [*(a1 + 48) llextensions];
            [v18 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }
  }

  result = [*(a1 + 48) updateParentListController];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));

  return WeakRetained;
}

- (void)extensionsChangedForCallDirectoryExtensionManager:(id)manager
{
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Call directory extensions have changed", v5, 2u);
  }

  [(PHCallBlockingAndIdentificationSettingsBundleController *)self _updateExtensions];
}

- (void)didChangeServiceProvidersForCallBlockingServiceProviderController:(id)controller
{
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Call blocking service providers have changed", v5, 2u);
  }

  [(PHCallBlockingAndIdentificationSettingsBundleController *)self updateParentListController];
}

- (BOOL)shouldInsert
{
  parentListController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self parentListController];
  parentListController2 = [(PHCallBlockingAndIdentificationSettingsBundleController *)self parentListController];
  specifierID = [parentListController2 specifierID];

  v6 = [parentListController specifierForID:@"CALL_DIRECTORIES"];

  if (!v6)
  {
    if ([specifierID isEqualToString:@"com.apple.preferences.phone"])
    {
      LOBYTE(v7) = 1;
      goto LABEL_7;
    }

    if ([specifierID isEqualToString:@"com.apple.preferences.facetime"])
    {
      v7 = [MEMORY[0x277D6EDE8] supportsPrimaryCalling] ^ 1;
      goto LABEL_7;
    }
  }

  LOBYTE(v7) = 0;
LABEL_7:

  return v7;
}

- (void)updateParentListController
{
  parentListController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self parentListController];
  [parentListController beginUpdates];
  if ([(PHCallBlockingAndIdentificationSettingsBundleController *)self isHidden])
  {
    [parentListController removeSpecifierID:@"CALL_DIRECTORIES"];
  }

  else if ([(PHCallBlockingAndIdentificationSettingsBundleController *)self shouldInsert])
  {
    callDirectorySpecifier = [(PHCallBlockingAndIdentificationSettingsBundleController *)self callDirectorySpecifier];
    [parentListController insertSpecifier:callDirectorySpecifier afterSpecifierID:@"FILTER_SPAM"];
  }

  [parentListController endUpdates];
}

void __76__PHCallBlockingAndIdentificationSettingsBundleController__updateExtensions__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Error retrieving extensions: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end