@interface PSUICellularController
- (BOOL)_shouldShowCarrierItemGroup;
- (BOOL)deviceIsDualSIMCapableAndPlansExist;
- (BOOL)eSIMExistsInSubscriptionContexts;
- (BOOL)isCellularDisabled;
- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5 withCompletion:(id)a6;
- (BOOL)shouldDeferPushForSpecifierID:(id)a3 urlDictionary:(id)a4;
- (BOOL)shouldShowAddPlanButton;
- (BOOL)shouldShowCrossPlatformTransferOption;
- (BOOL)shouldShowDataPlans;
- (BOOL)shouldShowFaceTimeSetup;
- (BOOL)shouldShowNoSIMsOrActivatePlansUI;
- (BOOL)shouldShowPendingInstallPlan;
- (BOOL)shouldShowPrivateNetworkPlansList;
- (BOOL)shouldUpdateHeaderForSIM;
- (BOOL)showDataPlanOnly;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (PSUICellularController)init;
- (id)QRCodeGroupSpecifier;
- (id)_createESIMCardDataAlert:(id)a3;
- (id)_deadTelephonySpecifiers;
- (id)accountStore;
- (id)activeDataPlanCarrierName;
- (id)activeDataPlanLabel;
- (id)addOnPlanGroupSpecifier;
- (id)carrierItemGroupSpecifier;
- (id)cellularDataOptionsDetailText:(id)a3;
- (id)cellularPlacardSpecifier;
- (id)createPersonalHotspotSpecifier;
- (id)getTetheringStatus:(id)a3;
- (id)showLocalTime:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)targetCrossPlatformGroupSpecifier;
- (id)topAppUsageGroupTitle;
- (id)transferPlanGroupSpecifier;
- (void)_handleURL:(id)a3 withCompletion:(id)a4;
- (void)_maybeAddCrossPlatformSIMTransferSpecifier:(id)a3 toGroup:(id)a4;
- (void)addLocationFooterIfNecessary:(id)a3;
- (void)airplaneModeChanged;
- (void)carrierItemsChanged;
- (void)cellularDataSettingChanged;
- (void)cellularPlanChanged:(id)a3;
- (void)cellularUpdateLearnMoreTapped:(id)a3;
- (void)configureAddOnPlanTurnOnWifi:(id)a3;
- (void)createAddCellularPlanSpecifierIfNeeded;
- (void)createCrossPlatformGroupIfNeeded:(id)a3;
- (void)createOrUpdateSubscriptionContextMenuGroup:(id)a3;
- (void)createQRCodeGroupIfNeeded:(id)a3;
- (void)createTransferPlanGroupIfNeeded:(id)a3;
- (void)dealloc;
- (void)didFailToSetPolicyForSpecifier:(id)a3;
- (void)didResetStatistics;
- (void)disableSpecifiersIfNeeded:(id)a3;
- (void)emitNavigationEvent;
- (void)entitlementStatusChanged;
- (void)handleResourcesDictionaryDidChange:(id)a3;
- (void)handleURLHandlerErrorDidChange:(id)a3;
- (void)launchAddeSIMFlow;
- (void)launchCrossPlatformFlowWithCode:(id)a3;
- (void)launchDeferredDeepLinkIfNeeded;
- (void)launchSIMSetupFlow:(id)a3;
- (void)launchTravelFlow:(id)a3 withType:(id)a4;
- (void)learnMoreLinkTapped;
- (void)loadView;
- (void)newCarrierNotification;
- (void)perAppNetworkDataAccessPolicyChanged;
- (void)prefetchResourcesFor:(id)a3;
- (void)retryCarrierListFetch:(id)a3;
- (void)setDeferredURLState:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)setSubscriptionContextAndPlanProperties;
- (void)setUpActivationSpecifiers:(id)a3;
- (void)setUpAddPlanGroup:(id)a3;
- (void)setUpCellularDataOptionsGroup:(id)a3;
- (void)setUpCellularDiagnosticsGroup:(id)a3;
- (void)setUpCellularListGroup:(id)a3;
- (void)setUpDataOnlyPlanListGroupIfNeeded:(id)a3;
- (void)setUpDefaultVoiceGroup:(id)a3;
- (void)setUpFacetimeSetupGroup:(id)a3;
- (void)setUpMiscOptionsGroup:(id)a3;
- (void)setUpPlanPendingTransferListGroup:(id)a3;
- (void)setUpPrivateNetworkListGroup:(id)a3;
- (void)setUpSubscriptionContextMenusGroup:(id)a3;
- (void)setUpTopAppUsageGroup:(id)a3;
- (void)setupCellularFaceTime:(id)a3;
- (void)setupCrossPlatformTransferGroup:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)turnOnLocationServicesPressed:(id)a3;
- (void)turnOnWifiPressed:(id)a3;
- (void)updatePaneWithCellularDataState:(BOOL)a3;
- (void)updateStateMessageCloseTapped:(id)a3;
- (void)viewDidLoad;
- (void)wirelessDataUsageCacheRefreshed;
- (void)wirelessDataUsageChangedNotification;
@end

@implementation PSUICellularController

- (PSUICellularController)init
{
  v29.receiver = self;
  v29.super_class = PSUICellularController;
  v2 = [(PSUICellularController *)&v29 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v4;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    v6 = [PSUIAppsAndCategoriesDataUsageSubgroup alloc];
    v7 = [MEMORY[0x277D4D860] sharedInstance];
    v8 = [MEMORY[0x277D4D840] sharedInstance];
    v9 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v6 initWithPolicySpecifierDelegate:v2 statisticsCache:v7 policyCache:v8 usageType:0];

    v10 = [PSUITopAppUsageGroup alloc];
    v11 = [MEMORY[0x277D4D850] sharedInstance];
    v12 = [MEMORY[0x277D4D860] sharedInstance];
    v13 = +[PSUICarrierSpaceManager sharedManager];
    v14 = [(PSUITopAppUsageGroup *)v10 initWithHostController:v2 cellularManagementCache:v11 dataUsageStatisticsCache:v12 carrierSpaceManager:v13 appsAndCategoriesSubgroup:v9];
    topAppUsageGroup = v2->_topAppUsageGroup;
    v2->_topAppUsageGroup = v14;

    v16 = [MEMORY[0x277D4D860] sharedInstance];
    [v16 refreshCacheIfNeeded];

    v28.receiver = v2;
    v28.super_class = PSUICellularController;
    [(PSUICellularController *)&v28 setPrefetchingEnabled:1];
    v17 = +[PSUICarrierSpaceManager sharedManager];
    [v17 refresh];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v2 selector:sel_newCarrierNotification name:@"PSNewCarrierNotification" object:0];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v2 selector:sel_entitlementStatusChanged name:*MEMORY[0x277D07D80] object:0];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v2 selector:sel_cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v2 selector:sel_wirelessDataUsageChangedNotification name:*MEMORY[0x277D4D8A8] object:0];

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v2 selector:sel_carrierItemsChanged name:*MEMORY[0x277CF9678] object:0];

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v2 selector:sel_cellularDataSettingChanged name:0x287739418 object:0];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v2 selector:sel_airplaneModeChanged name:0x287739438 object:0];

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v2 selector:sel_perAppNetworkDataAccessPolicyChanged name:*MEMORY[0x277D4D880] object:0];

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v2 selector:sel_wirelessDataUsageCacheRefreshed name:*MEMORY[0x277D4D8A0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICellularController;
  [(PSUICellularController *)&v4 dealloc];
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:0x287737E18];
  [(PSUICellularController *)self setDeferredURLState:v5];

  v6.receiver = self;
  v6.super_class = PSUICellularController;
  [(PSUICellularController *)&v6 setSpecifier:v4];
}

- (void)setDeferredURLState:(id)a3
{
  v12 = a3;
  v5 = [(PSUICellularController *)self resourcesDictionaryObserver];

  if (v5)
  {
    v6 = [(PSUICellularController *)self resourcesDictionaryObserver];
    [(PSUICellularController *)self na_removeNotificationBlockObserver:v6];

    [(PSUICellularController *)self setResourcesDictionaryObserver:0];
  }

  v7 = [(PSUICellularController *)self urlHandlerErrorObserver];

  if (v7)
  {
    v8 = [(PSUICellularController *)self urlHandlerErrorObserver];
    [(PSUICellularController *)self na_removeNotificationBlockObserver:v8];

    [(PSUICellularController *)self setUrlHandlerErrorObserver:0];
  }

  objc_storeStrong(&self->_deferredURLState, a3);
  v9 = v12;
  if (v12)
  {
    v10 = [(PSUICellularController *)self na_addNotificationBlockObserverForObject:v12 keyPath:@"resourcesDictionary" options:7 usingBlock:&__block_literal_global_13];
    [(PSUICellularController *)self setResourcesDictionaryObserver:v10];

    v11 = [(PSUICellularController *)self na_addNotificationBlockObserverForObject:v12 keyPath:@"urlHandlerError" options:7 usingBlock:&__block_literal_global_92];
    [(PSUICellularController *)self setUrlHandlerErrorObserver:v11];

    v9 = v12;
  }
}

void __46__PSUICellularController_setDeferredURLState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v8 handleResourcesDictionaryDidChange:v7];
  }
}

void __46__PSUICellularController_setDeferredURLState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v8 handleURLHandlerErrorDidChange:v7];
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PSUICellularController;
  [(PSUICellularController *)&v5 loadView];
  v3 = objc_opt_new();
  v4 = [(PSUICellularController *)self navigationItem];
  [v4 setTitleView:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PSUICellularController;
  [(PSUICellularController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CELLULAR_TITLE" value:&stru_287733598 table:@"Cellular"];
  [(PSUICellularController *)self setTitle:v4];
}

void __41__PSUICellularController_viewWillAppear___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"failed";
    if (a2)
    {
      v4 = @"succeeded";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "provisioning start: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __40__PSUICellularController_viewDidAppear___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) hasPresentedPendingFlow] & 1) == 0)
  {
    v2 = [*(a1 + 32) pendingViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 32) view];
      v5 = [v4 window];

      if (v5)
      {
        [*(a1 + 32) setHasPresentedPendingFlow:1];
        v6 = objc_alloc(MEMORY[0x277D757A0]);
        v7 = [*(a1 + 32) pendingViewController];
        v8 = [v6 initWithRootViewController:v7];

        v9 = [*(a1 + 32) getLogger];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(a1 + 32) pendingViewController];
          v12 = 138412290;
          v13 = v10;
          _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "present pending view controller: %@", &v12, 0xCu);
        }

        [v8 setModalPresentationStyle:2];
        [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
        [*(a1 + 32) setPendingViewController:0];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)emitNavigationEvent
{
  v8 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Cellular"];
  v3 = objc_alloc(MEMORY[0x277CCAEB8]);
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 bundleURL];
  v7 = [v3 initWithKey:@"CELLULAR_TITLE" table:@"Cellular" locale:v4 bundleURL:v6];

  [(PSUICellularController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.cellular-settings" title:v7 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v8];
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5 withCompletion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (([v9 isEqualToString:@"CELLULAR"] & 1) != 0 || (objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "specifierForID:", v9), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = 1;
  }

  else
  {
    v15 = [[PSUIDeferredDeepLink alloc] initWithSpecifierID:v9 resourceDictionary:v10 completion:v11];
    [(PSUICellularController *)self setDeferredDeepLink:v15];

    v13 = 0;
  }

  return v13;
}

- (void)launchDeferredDeepLinkIfNeeded
{
  v3 = [(PSUICellularController *)self deferredDeepLink];
  if (v3)
  {
    v4 = v3;
    v5 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
    v6 = [(PSUICellularController *)self deferredDeepLink];
    v7 = [v6 specifierID];
    v8 = [v5 specifierForID:v7];

    if (v8)
    {
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x3032000000;
      v10[3] = __Block_byref_object_copy__1;
      v10[4] = __Block_byref_object_dispose__1;
      v11 = [(PSUICellularController *)self deferredDeepLink];
      [(PSUICellularController *)self setDeferredDeepLink:0];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __56__PSUICellularController_launchDeferredDeepLinkIfNeeded__block_invoke;
      v9[3] = &unk_279BAA490;
      v9[4] = self;
      v9[5] = v10;
      dispatch_async(MEMORY[0x277D85CD0], v9);
      _Block_object_dispose(v10, 8);
    }
  }
}

void __56__PSUICellularController_launchDeferredDeepLinkIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(*(*(a1 + 40) + 8) + 40) resourceDictionary];
  v3 = [*(*(*(a1 + 40) + 8) + 40) completion];
  [v2 handleURL:v4 withCompletion:v3];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3 urlDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"type"];
  if ([v8 isEqualToString:@"travelEducation"])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PSUICellularController;
    v9 = [(PSUICellularController *)&v11 shouldDeferPushForSpecifierID:v6 urlDictionary:v7];
  }

  return v9;
}

- (void)handleResourcesDictionaryDidChange:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  if (([v5 isEqualToString:@"travelEducation"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"travelMode"))
  {
    v6 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "launching SIMSetup Travel Flow", v24, 2u);
    }

    if ([v5 isEqualToString:@"travelEducation"])
    {
      v7 = &unk_2877490C8;
    }

    else
    {
      v7 = &unk_2877490E0;
    }

    [(PSUICellularController *)self launchTravelFlow:v4 withType:v7];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"enablement"])
  {
    v10 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "launching SIMSetup enablement flow", v24, 2u);
    }

    v11 = [v4 objectForKeyedSubscript:@"simIccidToEnable"];
    v12 = v11;
    if (!v11)
    {
      goto LABEL_21;
    }

    v29[0] = *MEMORY[0x277D49548];
    v29[1] = @"IccidToEnable";
    v30[0] = &unk_2877490F8;
    v30[1] = v11;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v30;
    v15 = v29;
    v16 = 2;
LABEL_20:
    v20 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
    [(PSUICellularController *)self launchSIMSetupFlow:v20];

LABEL_21:
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"cross_platform_provisioning"])
  {
    v17 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEFAULT, "launching cross platform flow", v24, 2u);
    }

    v18 = [v4 objectForKeyedSubscript:@"DCTCode"];
    v12 = v18;
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = *MEMORY[0x277D49558];
    v27[0] = *MEMORY[0x277D49548];
    v27[1] = v19;
    v28[0] = &unk_287749110;
    v28[1] = MEMORY[0x277CBEC38];
    v27[2] = *MEMORY[0x277D49568];
    v28[2] = v18;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v28;
    v15 = v27;
    v16 = 3;
    goto LABEL_20;
  }

  if ([v5 isEqualToString:@"addeSIM"])
  {
    v21 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_2658DE000, v21, OS_LOG_TYPE_DEFAULT, "launching add eSIM Flow", v24, 2u);
    }

    v25 = *MEMORY[0x277D49548];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    v26 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

    [(PSUICellularController *)self launchSIMSetupFlow:v23];
  }

LABEL_9:
  v8 = [(PSUICellularController *)self deferredURLState];
  [v8 setResourcesDictionary:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleURLHandlerErrorDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "url handle error:%@", &v9, 0xCu);
  }

  v6 = [(PSUICellularController *)self _createESIMCardDataAlert:v4];
  [(PSUICellularController *)self presentViewController:v6 animated:1 completion:0];
  v7 = [(PSUICellularController *)self deferredURLState];
  [v7 setUrlHandlerError:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleURL:(id)a3 withCompletion:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "[PSUICellularController _handleURL:withCompletion:]";
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [(PSUICellularController *)self viewIfLoaded];
  v10 = [v9 window];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"type"];
    if (([v11 isEqualToString:@"travelEducation"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"travelMode") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"enablement"))
    {
      v12 = [v6 objectForKeyedSubscript:@"client"];
      v13 = [v12 isEqualToString:@"com.apple.CommCenter"];

      v14 = [(PSUICellularController *)self getLogger];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          *buf = 0;
          _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "launching SIMSetup Flow", buf, 2u);
        }

        if ([v11 isEqualToString:@"travelEducation"])
        {
          v16 = *MEMORY[0x277D49590];
          v40[0] = *MEMORY[0x277D49548];
          v40[1] = v16;
          v41[0] = &unk_2877490C8;
          v41[1] = v6;
          v17 = MEMORY[0x277CBEAC0];
          v18 = v41;
          v19 = v40;
        }

        else
        {
          if (![v11 isEqualToString:@"travelMode"])
          {
            if ([v11 isEqualToString:@"enablement"])
            {
              v25 = [v6 objectForKeyedSubscript:@"simIccidToEnable"];
              v26 = v25;
              if (v25)
              {
                v36[0] = *MEMORY[0x277D49548];
                v36[1] = @"IccidToEnable";
                v37[0] = &unk_2877490F8;
                v37[1] = v25;
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
              }

              else
              {
                v22 = 0;
              }

              if (v22)
              {
                goto LABEL_19;
              }
            }

LABEL_39:
            v33 = [(PSUICellularController *)self getLogger];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v43 = v6;
              _os_log_fault_impl(&dword_2658DE000, v33, OS_LOG_TYPE_FAULT, "invalid launch option. dict: %@", buf, 0xCu);
            }

            goto LABEL_42;
          }

          v21 = *MEMORY[0x277D49590];
          v38[0] = *MEMORY[0x277D49548];
          v38[1] = v21;
          v39[0] = &unk_2877490E0;
          v39[1] = v6;
          v17 = MEMORY[0x277CBEAC0];
          v18 = v39;
          v19 = v38;
        }

        v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:2];
        if (v22)
        {
LABEL_19:
          [(PSUICellularController *)self launchSIMSetupFlow:v22];
          v7[2](v7);

LABEL_43:
          goto LABEL_44;
        }

        goto LABEL_39;
      }

      if (!v15)
      {
        goto LABEL_15;
      }

      *buf = 0;
      v20 = "invalid client";
    }

    else
    {
      if ([SettingsCellularUtils isCaseInsensitiveEqual:v11 withString:@"esim_qrcode_provisioning"])
      {
        v23 = [v6 objectForKeyedSubscript:@"carddata"];
        if ([v23 length])
        {
          coreTelephonyClient = self->_coreTelephonyClient;
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __52__PSUICellularController__handleURL_withCompletion___block_invoke;
          v35[3] = &unk_279BAA4D8;
          v35[4] = self;
          [(CoreTelephonyClient *)coreTelephonyClient getActionForCardData:v23 completionHandler:v35];
          v7[2](v7);
        }

        else
        {
          v30 = [(PSUICellularController *)self getLogger];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2658DE000, v30, OS_LOG_TYPE_DEFAULT, "Emtpy eSIM QR code data", buf, 2u);
          }

          v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          v32 = [(PSUICellularController *)self _createESIMCardDataAlert:v31];

          [(PSUICellularController *)self presentViewController:v32 animated:1 completion:0];
          v7[2](v7);
        }

        goto LABEL_43;
      }

      if ([SettingsCellularUtils isCaseInsensitiveEqual:v11 withString:@"cross_platform_provisioning"])
      {
        v14 = [v6 objectForKeyedSubscript:@"DCTCode"];
        [(PSUICellularController *)self launchCrossPlatformFlowWithCode:v14];
        goto LABEL_15;
      }

      if (![v11 isEqualToString:@"addeSIM"])
      {
        goto LABEL_42;
      }

      v27 = [v6 objectForKeyedSubscript:@"client"];
      v28 = [v27 isEqualToString:@"com.apple.Siri"];

      v14 = [(PSUICellularController *)self getLogger];
      v29 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "launching add eSIM Flow", buf, 2u);
        }

        [(PSUICellularController *)self launchAddeSIMFlow];
        goto LABEL_42;
      }

      if (!v29)
      {
LABEL_15:

LABEL_42:
        v7[2](v7);
        goto LABEL_43;
      }

      *buf = 0;
      v20 = "invalid add eSIM client";
    }

    _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    goto LABEL_15;
  }

LABEL_44:

  v34 = *MEMORY[0x277D85DE8];
}

void __52__PSUICellularController__handleURL_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) getLogger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "getActionForCardData callback: Success - %@", &v11, 0xCu);
    }

    [v5 performWithCompletionHandler:&__block_literal_global_195];
  }

  else
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Failed getActionForCardData with error %@", &v11, 0xCu);
    }

    v9 = [*(a1 + 32) _createESIMCardDataAlert:v6];
    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_createESIMCardDataAlert:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ESIM_ACTIVATION_FAILED_ACTION_TITLE" value:&stru_287733598 table:@"Cellular"];

  if ([v3 code] == 22)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"ESIM_ACTIVATION_FAILED_PARSE_MESSAGE";
  }

  else if ([v3 code] == 19)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"ESIM_ACTIVATION_DEVICE_NOT_SUPPORTED_MESSAGE";
  }

  else
  {
    v9 = [v3 code];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v9 == 45)
    {
      v8 = @"ESIM_ACTIVATION_POLICY_MISMATCH_MESSAGE";
    }

    else
    {
      v8 = @"ESIM_ACTIVATION_FAILED_ACTION_MESSAGE";
    }
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"Cellular"];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v10 preferredStyle:1];
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OK_BUTTON" value:&stru_287733598 table:@"Cellular"];
  v15 = [v12 actionWithTitle:v14 style:2 handler:&__block_literal_global_222];

  [v11 addAction:v15];

  return v11;
}

- (void)learnMoreLinkTapped
{
  v2 = *MEMORY[0x277D76620];
  v3 = MEMORY[0x277CBEBC0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v6 localizedStringForKey:@"LEARN_MORE_AT_LINK" value:&stru_287733598 table:@"Cellular"];
  v5 = [v3 URLWithString:v4];
  [v2 openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)_deadTelephonySpecifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[PSUICellularController _deadTelephonySpecifiers]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v18, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PSUICellularController *)self setUpCellularDiagnosticsGroup:v4];
  if (![v4 count])
  {
    v5 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "No Cellular Diagnostics. Fall back", &v18, 2u);
    }

    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"UPDATE_REQUIRED_FOR_CELLULAR"];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"UPDATE_REQUIRED_FOR_CELLULAR" value:&stru_287733598 table:@"Cellular"];
    [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

    [v6 setProperty:&unk_287749128 forKey:*MEMORY[0x277D3FF40]];
    v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LEARN_MORE_AT"];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"LEARN_MORE" value:&stru_287733598 table:@"Cellular"];

    [v9 setProperty:v11 forKey:*MEMORY[0x277D3FF70]];
    v22.location = [v11 rangeOfString:v11];
    v12 = NSStringFromRange(v22);
    [v9 setProperty:v12 forKey:*MEMORY[0x277D3FF58]];

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v9 setProperty:v14 forKey:*MEMORY[0x277D3FF48]];

    [v9 setProperty:&unk_287749128 forKey:*MEMORY[0x277D3FD78]];
    v15 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v9 setProperty:v15 forKey:*MEMORY[0x277D3FF68]];

    [v9 setProperty:@"learnMoreLinkTapped" forKey:*MEMORY[0x277D3FF50]];
    [v4 addObject:v6];
    [v4 addObject:v9];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)retryCarrierListFetch:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PSUICellularController retryCarrierListFetch:]";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  [v5 clearCachedCarrierItemsAndRemotePlans];

  [(PSUICellularController *)self reloadSpecifiers];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)turnOnLocationServicesPressed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 URL];
    v10 = 136315394;
    v11 = "[PSUICellularController turnOnLocationServicesPressed:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v8 = [v4 URL];
  [v7 openSensitiveURL:v8 withOptions:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)turnOnWifiPressed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 URL];
    v10 = 136315394;
    v11 = "[PSUICellularController turnOnWifiPressed:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v8 = [v4 URL];
  [v7 openSensitiveURL:v8 withOptions:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[PSUICellularController specifiers]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v18, 0xCu);
  }

  v4 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v4))
  {
    v5 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[PSUICellularController specifiers]";
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s (re)loading specifiers", &v18, 0xCu);
    }

    if (PSIsTelephonyDead())
    {
      v6 = [(PSUICellularController *)self _deadTelephonySpecifiers];
      v7 = *(&self->super.super.super.super.super.isa + v4);
      *(&self->super.super.super.super.super.isa + v4) = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = [(PSUICellularController *)self cellularPlacardSpecifier];
      if (v7)
      {
        v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PLACARD_GROUP"];
        [v8 addObject:v9];
        [v8 ps_addSpecifier:v7 toGroup:v9];
      }

      [(PSUICellularController *)self setUpCellularDiagnosticsGroup:v8];
      v10 = [(PSUICellularController *)self shouldShowNoSIMsOrActivatePlansUI];
      v11 = [(PSUICellularController *)self getLogger];
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v18 = 136315138;
          v19 = "[PSUICellularController specifiers]";
          _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "%s Setting up the no SIMs or activated plans specifiers", &v18, 0xCu);
        }

        [(PSUICellularController *)self setUpActivationSpecifiers:v8];
        if (+[SettingsCellularUtils shouldShowPendingTransferPlanOnPad])
        {
          [(PSUICellularController *)self setUpPlanPendingTransferListGroup:v8];
        }
      }

      else
      {
        if (v12)
        {
          v18 = 136315138;
          v19 = "[PSUICellularController specifiers]";
          _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "%s plan items count is non-zero; continuing with normal specifier layout", &v18, 0xCu);
        }

        [(PSUICellularController *)self setUpCellularDataOptionsGroup:v8];
        [(PSUICellularController *)self setUpDefaultVoiceGroup:v8];
        if (+[SettingsCellularUtils isUIDualSIM])
        {
          [(PSUICellularController *)self setUpCellularListGroup:v8];
          [(PSUICellularController *)self setUpPrivateNetworkListGroup:v8];
        }

        else
        {
          v13 = [(PSUICellularController *)self getLogger];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315138;
            v19 = "[PSUICellularController specifiers]";
            _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s showing single sim specifiers", &v18, 0xCu);
          }

          [(PSUICellularController *)self setUpDataOnlyPlanListGroupIfNeeded:v8];
          [(PSUICellularController *)self setSubscriptionContextAndPlanProperties];
          [(PSUICellularController *)self setUpSubscriptionContextMenusGroup:v8];
          [(PSUICellularController *)self setUpAddPlanGroup:v8];
        }

        [(PSUICellularController *)self setUpFacetimeSetupGroup:v8];
        [(PSUICellularController *)self setUpTopAppUsageGroup:v8];
        [(PSUICellularController *)self setUpMiscOptionsGroup:v8];
        [(PSUICellularController *)self setupCrossPlatformTransferGroup:v8];
      }

      [(PSUICellularController *)self disableSpecifiersIfNeeded:v8];
      [MEMORY[0x277D4D878] logSpecifiers:v8 origin:@"[PSUICellularController specifiers] end"];
      v14 = *(&self->super.super.super.super.super.isa + v4);
      *(&self->super.super.super.super.super.isa + v4) = v8;
    }
  }

  [(PSUICellularController *)self launchDeferredDeepLinkIfNeeded];
  v15 = *(&self->super.super.super.super.super.isa + v4);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)cellularPlacardSpecifier
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isChinaRegionCellularDevice];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"CELLULAR_SETTINGS_SUBTITLE_WLAN";
  }

  else
  {
    v7 = @"CELLULAR_SETTINGS_SUBTITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];

  v9 = MEMORY[0x277D3FAD8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CELLULAR_TITLE" value:&stru_287733598 table:@"Cellular"];
  v12 = [v9 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v12 setProperty:v8 forKey:*MEMORY[0x277D40160]];
  [v12 setProperty:@"com.apple.graphic-icon.cellular-settings" forKey:*MEMORY[0x277D3FFD8]];
  [v12 setIdentifier:@"CELLULAR_PLACARD"];

  return v12;
}

- (void)setUpActivationSpecifiers:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v54 = 136315138;
    v55 = "[PSUICellularController setUpActivationSpecifiers:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v54, 0xCu);
  }

  v6 = _os_feature_enabled_impl();
  if (v6 && [(PSUICellularController *)self shouldShowPendingInstallPlan])
  {
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PENDING_INSTALL_GROUP"];
    [v4 addObject:v7];
    v8 = [[PSUIPendingInstallPlanGroup alloc] initWithListController:self groupSpecifier:v7];
    [(PSUICellularController *)self setPendingInstallPlanGroup:v8];

    v9 = [(PSUICellularController *)self pendingInstallPlanGroup];
    v10 = [v9 specifiers];
    [v4 ps_addSpecifiers:v10 toGroup:v7];

    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"OTHER_OPTIONS_GROUP"];
    [v4 addObject:v11];
    v12 = [[PSUIOtherOptionsGroup alloc] initWithListController:self groupSpecifier:v11];
    [(PSUICellularController *)self setOtherOptionsGroup:v12];

    v13 = [(PSUICellularController *)self otherOptionsGroup];
LABEL_44:
    v51 = v13;
    v52 = [v13 specifiers];
    [v4 ps_addSpecifiers:v52 toGroup:v11];

    goto LABEL_45;
  }

  if (![(PSUICellularController *)self deviceIsDualSIMCapableAndPlansExist])
  {
    if (![(PSUICellularController *)self shouldShowAddPlanButton])
    {
      v7 = 0;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v14 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v54 = 136315138;
    v55 = "[PSUICellularController setUpActivationSpecifiers:]";
    _os_log_debug_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEBUG, "%s device is dual sim capable, and plan items count is non-zero", &v54, 0xCu);
  }

  v15 = MEMORY[0x277D3FAD8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
  v7 = [v15 groupSpecifierWithName:v17];

  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  [v4 addObject:v7];
  v18 = [[PSUICellularPlanListGroup alloc] initWithListController:self groupSpecifier:v7 isPrivateNetworkPlansList:0];
  cellularPlanListGroup = self->_cellularPlanListGroup;
  self->_cellularPlanListGroup = v18;

  v20 = [(PSUICellularPlanListGroup *)self->_cellularPlanListGroup specifiers];
  [v4 ps_addSpecifiers:v20 toGroup:v7];

  [(PSUICellularController *)self setUpPrivateNetworkListGroup:v4];
  if ([(PSUICellularController *)self shouldShowAddPlanButton])
  {
    if (v7)
    {
LABEL_16:
      [(PSUICellularController *)self createAddCellularPlanSpecifierIfNeeded];
      [v4 ps_addSpecifier:self->_addCellularPlanSpecifier toGroup:v7];
      [(PSUICellularController *)self addLocationFooterIfNecessary:v7];
      goto LABEL_18;
    }

LABEL_13:
    v21 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v54 = 136315138;
      v55 = "[PSUICellularController setUpActivationSpecifiers:]";
      _os_log_debug_impl(&dword_2658DE000, v21, OS_LOG_TYPE_DEBUG, "%s device is not dual sim capable, or plan items count is zero; showing separate add cellular plan group", &v54, 0xCu);
    }

    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADD_CELLULAR_PLAN_GROUP"];
    [v4 addObject:v7];
    goto LABEL_16;
  }

LABEL_18:
  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 sf_isiPad];

  if (v23)
  {
    if (!v7)
    {
      v7 = [(PSUICellularController *)self transferPlanGroupSpecifier];
      [(PSUICellularController *)self createTransferPlanGroupIfNeeded:v7];
      v24 = [(PSUICellularController *)self planPendingTransferGroup];
      v25 = [v24 specifiers];
      v26 = [v25 count];

      if (v26)
      {
        [v4 addObject:v7];
        v27 = [(PSUICellularController *)self planPendingTransferGroup];
        v28 = [v27 specifiers];
        [v4 ps_addSpecifiers:v28 toGroup:v7];
      }
    }
  }

  v29 = [MEMORY[0x277D75418] currentDevice];
  v30 = [v29 sf_isiPad];

  if (v30)
  {
    v31 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v54 = 136315138;
      v55 = "[PSUICellularController setUpActivationSpecifiers:]";
      _os_log_debug_impl(&dword_2658DE000, v31, OS_LOG_TYPE_DEBUG, "%s showing add on plan group", &v54, 0xCu);
    }

    v32 = [(PSUICellularController *)self addOnPlanGroupSpecifier];
    [v4 addObject:v32];
    [(PSUICellularController *)self createAddOnPlanGroupIfNeeded:v32 showAddOnPlans:v6 ^ 1u];
    v33 = [(PSUICellularController *)self addOnPlanGroup];
    v34 = [v33 specifiers];
    [v4 ps_addSpecifiers:v34 toGroup:v32];

    if (((v6 ^ 1) & 1) == 0)
    {
      v35 = [(PSUICellularController *)self addOnPlanGroup];
      v36 = [v35 specifiers];
      v37 = [v36 count];

      if (!v37)
      {
        [v4 removeObject:v32];
      }
    }
  }

  v38 = +[PSUICellularPlanManagerCache sharedInstance];
  v39 = [v38 isCarrierItemFlowSupported];

  if (v39)
  {
    v40 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v54 = 136315138;
      v55 = "[PSUICellularController setUpActivationSpecifiers:]";
      _os_log_debug_impl(&dword_2658DE000, v40, OS_LOG_TYPE_DEBUG, "%s showing add new network group", &v54, 0xCu);
    }

    v41 = [(PSUICellularController *)self carrierItemGroupSpecifier];
    [(PSUICellularController *)self createCarrierItemGroupIfNeeded:v41 showCarrierItems:v6 ^ 1u];
    if ([(PSUICellularController *)self _shouldShowCarrierItemGroup])
    {
      [v4 addObject:v41];
      v42 = [(PSUICellularController *)self carrierItemGroup];
      v43 = [v42 specifiers];
      [v4 ps_addSpecifiers:v43 toGroup:v41];
    }
  }

  v44 = +[PSUICellularPlanManagerCache sharedInstance];
  if ([v44 isActivationCodeFlowSupported])
  {
    v45 = [MEMORY[0x277D75418] currentDevice];
    v46 = [v45 sf_isiPad];

    if (!v46)
    {
      goto LABEL_41;
    }

    v47 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v54) = 0;
      _os_log_debug_impl(&dword_2658DE000, v47, OS_LOG_TYPE_DEBUG, "showing QR code group", &v54, 2u);
    }

    v44 = [(PSUICellularController *)self QRCodeGroupSpecifier];
    [v4 addObject:v44];
    [(PSUICellularController *)self createQRCodeGroupIfNeeded:v44];
    v48 = [(PSUICellularController *)self QRCodeGroup];
    v49 = [v48 specifiers];
    [v4 ps_addSpecifiers:v49 toGroup:v44];
  }

LABEL_41:
  v11 = [MEMORY[0x277D75418] currentDevice];
  if (![v11 sf_isiPad])
  {
LABEL_45:

    goto LABEL_46;
  }

  v50 = [(PSUICellularController *)self shouldShowCrossPlatformTransferOption];

  if (v50)
  {
    v11 = [(PSUICellularController *)self targetCrossPlatformGroupSpecifier];
    [v4 addObject:v11];
    [(PSUICellularController *)self createCrossPlatformGroupIfNeeded:v11];
    v13 = [(PSUICellularController *)self targetCrossPlatformGroup];
    goto LABEL_44;
  }

LABEL_46:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)setUpCellularDiagnosticsGroup:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PSUICellularDiagnosticsSpecifier);
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 stringForKey:@"CellularSettings.BasebandConfigUpdateTime"];

  v8 = [(PSUICellularDiagnosticsSpecifier *)v5 getCellularUpdatedTime];
  basebandConfigUpdateTimestamp = self->_basebandConfigUpdateTimestamp;
  self->_basebandConfigUpdateTimestamp = v8;

  v10 = [(PSUICellularDiagnosticsSpecifier *)v5 getCellularUpdatedDetailsLink];
  basebandConfigUpdateDetailsLink = self->_basebandConfigUpdateDetailsLink;
  self->_basebandConfigUpdateDetailsLink = v10;

  v12 = self->_basebandConfigUpdateTimestamp;
  if (v12)
  {
    if (v7 && [(NSString *)v12 compare:v7]== NSOrderedSame)
    {
      v26 = [(PSUICellularController *)self getLogger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, v26, OS_LOG_TYPE_DEFAULT, "Skip to show as user already confirmed", buf, 2u);
      }
    }

    else
    {
      v31 = v7;
      v13 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_UPDATE_STATE_GROUP"];
      [v4 addObject:v13];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v14 localizedStringForKey:@"CELLULAR_UPDATED_MESSAGE_DETAILS" value:&stru_287733598 table:@"Cellular"];
      v16 = v15 = v4;
      v17 = [(PSUICellularController *)self showLocalTime:self->_basebandConfigUpdateTimestamp];
      v18 = [v16 stringByAppendingString:v17];

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CELLULAR_UPDATED_MESSAGE" value:&stru_287733598 table:@"Cellular"];
      v30 = v18;
      v21 = [PSUICellularUpdateStateMessageTableCell specifierForUpdateState:v20 details:v18 target:self action:sel_updateStateMessageCloseTapped_];

      v4 = v15;
      [v15 ps_addSpecifier:v21 toGroup:v13];
      if (self->_basebandConfigUpdateDetailsLink)
      {
        v22 = MEMORY[0x277D3FAD8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"CELLULAR_UPDATED_MESSAGE_LEARN_MORE" value:&stru_287733598 table:@"Cellular"];
        v25 = [v22 preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v25 setButtonAction:sel_cellularUpdateLearnMoreTapped_];
        [v15 ps_addSpecifier:v25 toGroup:v13];
      }

      v7 = v31;
    }
  }

  if ([(PSUICellularDiagnosticsSpecifier *)v5 cellularIssueFound])
  {
    v27 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_DIAGNOSTICS_GROUP"];
    [v4 addObject:v27];
    [v4 ps_addSpecifier:v5 toGroup:v27];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_GROUP_FOOTER" value:&stru_287733598 table:@"Cellular"];
    [v27 setProperty:v29 forKey:*MEMORY[0x277D3FF88]];
  }

  else
  {
    v27 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_2658DE000, v27, OS_LOG_TYPE_DEFAULT, "Cellular Diagnostics: No cellular issue detected and not add Diagnostics menu", v32, 2u);
    }
  }
}

- (void)cellularUpdateLearnMoreTapped:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    basebandConfigUpdateDetailsLink = self->_basebandConfigUpdateDetailsLink;
    v9 = 138412290;
    v10 = basebandConfigUpdateDetailsLink;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Learn More link tapped %@", &v9, 0xCu);
  }

  if (self->_basebandConfigUpdateDetailsLink)
  {
    v6 = *MEMORY[0x277D76620];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:?];
    [v6 openURL:v7 options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpCellularDataOptionsGroup:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[PSUICellularController setUpCellularDataOptionsGroup:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s showing cellular data options group", buf, 0xCu);
  }

  v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_DATA_OPTIONS_GROUP"];
  [v4 addObject:v6];
  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  v8 = [v7 isAnyPlanActivating];

  v9 = [[PSUICellularDataSpecifier alloc] initWithHostController:self];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8 ^ 1u];
  v11 = *MEMORY[0x277D3FF38];
  [(PSUICellularDataSpecifier *)v9 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

  [v4 ps_addSpecifier:v9 toGroup:v6];
  v12 = +[SettingsCellularUtils isUIDualSIM];
  v13 = 0x277CCA000;
  v14 = 0x279BA9000;
  if (!v12)
  {
    v15 = +[PSUICellularPlanManagerCache sharedInstance];
    v16 = [v15 selectedPlanItem];

    v14 = 0x279BA9000uLL;
    v13 = 0x277CCA000uLL;
    if (v16)
    {
      v17 = MEMORY[0x277D3FAD8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"CELLULAR_DATA_OPTIONS" value:&stru_287733598 table:@"Cellular"];
      v20 = [v17 preferenceSpecifierNamed:v19 target:self set:0 get:sel_cellularDataOptionsDetailText_ detail:objc_opt_class() cell:2 edit:0];

      [v20 setIdentifier:@"CELLULAR_DATA_OPTIONS"];
      v21 = [MEMORY[0x277CCABB0] numberWithBool:v8 ^ 1u];
      [v20 setProperty:v21 forKey:v11];

      [v4 ps_addSpecifier:v20 toGroup:v6];
      v14 = 0x279BA9000uLL;
      v13 = 0x277CCA000uLL;
    }
  }

  v22 = *(v14 + 824);
  v23 = [*(v13 + 2264) bundleForClass:objc_opt_class()];
  v24 = SFLocalizableWAPIStringKeyForKey();
  v25 = [v23 localizedStringForKey:v24 value:&stru_287733598 table:@"Cellular"];

  [v6 setProperty:v25 forKey:*MEMORY[0x277D3FF88]];
  v26 = [(PSUICellularController *)self createPersonalHotspotSpecifier];
  personalHotspotSpecifier = self->_personalHotspotSpecifier;
  self->_personalHotspotSpecifier = v26;

  v28 = self->_personalHotspotSpecifier;
  if (v28)
  {
    [v4 ps_addSpecifier:v28 toGroup:v6];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)setUpDefaultVoiceGroup:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[SettingsCellularUtils isUIDualSIM])
  {
    v5 = +[PSUICellularPlanManagerCache sharedInstance];
    v6 = [v5 planItems];
    v7 = [v6 count];

    if (v7 >= 2)
    {
      v8 = [(PSUICellularController *)self getLogger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[PSUICellularController setUpDefaultVoiceGroup:]";
        _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s showing default voice group", &v12, 0xCu);
      }

      v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEFAULT_VOICE_LINE"];
      [v4 addObject:v9];
      v10 = [[PSUIDefaultVoiceLineSpecifier alloc] initSpecifier];
      [v4 ps_addSpecifier:v10 toGroup:v9];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setUpPlanPendingTransferListGroup:(id)a3
{
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "showing plan pending transfer list group", v13, 2u);
  }

  v6 = MEMORY[0x277D3FAD8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
  v9 = [v6 groupSpecifierWithName:v8];

  [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  [v4 addObject:v9];
  v10 = [[PSUIPlanPendingTransferListGroup alloc] initWithListController:self groupSpecifier:v9];
  planPendingTransferGroup = self->_planPendingTransferGroup;
  self->_planPendingTransferGroup = v10;

  v12 = [(PSUIPlanPendingTransferListGroup *)self->_planPendingTransferGroup specifiers];
  [v4 ps_addSpecifiers:v12 toGroup:v9];
}

- (void)setUpCellularListGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[PSUICellularController setUpCellularListGroup:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s showing dual sim cellular plans list group", &v15, 0xCu);
  }

  v6 = MEMORY[0x277D3FAD8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
  v9 = [v6 groupSpecifierWithName:v8];

  [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  [v4 addObject:v9];
  v10 = [[PSUICellularPlanListGroup alloc] initWithListController:self groupSpecifier:v9 isPrivateNetworkPlansList:0];
  cellularPlanListGroup = self->_cellularPlanListGroup;
  self->_cellularPlanListGroup = v10;

  v12 = [(PSUICellularPlanListGroup *)self->_cellularPlanListGroup specifiers];
  [v4 ps_addSpecifiers:v12 toGroup:v9];

  v13 = +[PSUICellularPlanManagerCache sharedInstance];
  LODWORD(v8) = [v13 isActivationCodeFlowSupported];

  if (v8)
  {
    [(PSUICellularController *)self createAddCellularPlanSpecifierIfNeeded];
    [(PSUICellularController *)self addLocationFooterIfNecessary:v9];
    [v4 ps_addSpecifier:self->_addCellularPlanSpecifier toGroup:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowCrossPlatformTransferOption
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 sf_isChinaRegionCellularDevice];

    LOBYTE(v2) = v4 ^ 1;
  }

  return v2;
}

- (void)setupCrossPlatformTransferGroup:(id)a3
{
  v10 = a3;
  if ([(PSUICellularController *)self shouldShowCrossPlatformTransferOption])
  {
    v4 = +[PSUICellularPlanManagerCache sharedInstance];
    v5 = [v4 planItems];

    if ([v5 indexOfObjectPassingTest:&__block_literal_global_328] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = MEMORY[0x277D3FAD8];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"CROSS_PLATFORM_TRANSFER" value:&stru_287733598 table:@"Cellular"];
      v9 = [v6 groupSpecifierWithName:v8];

      [v10 addObject:v9];
      [(PSUICellularController *)self _maybeAddCrossPlatformSIMTransferSpecifier:v10 toGroup:v9];
    }
  }
}

uint64_t __58__PSUICellularController_setupCrossPlatformTransferGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 supportedTransferOption];
  if ((v5 & 4) != 0)
  {
    *a4 = 1;
  }

  return (v5 >> 2) & 1;
}

- (void)setUpPrivateNetworkListGroup:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PSUICellularController *)self shouldShowPrivateNetworkPlansList])
  {
    v5 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[PSUICellularController setUpPrivateNetworkListGroup:]";
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s showing dual sim private network plans list group", &v17, 0xCu);
    }

    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NON_PUBLIC_NETWORK_PLANS" value:&stru_287733598 table:@"Cellular"];
    v9 = [v6 groupSpecifierWithName:v8];

    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [v4 addObject:v9];
    v10 = [[PSUICellularPlanListGroup alloc] initWithListController:self groupSpecifier:v9 isPrivateNetworkPlansList:1];
    privateNetworkPlanListGroup = self->_privateNetworkPlanListGroup;
    self->_privateNetworkPlanListGroup = v10;

    v12 = [(PSUICellularPlanListGroup *)self->_privateNetworkPlanListGroup specifiers];
    [v4 ps_addSpecifiers:v12 toGroup:v9];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = SFLocalizableWAPIStringKeyForKey();
    v15 = [v13 localizedStringForKey:v14 value:&stru_287733598 table:@"Cellular"];

    [v9 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setUpDataOnlyPlanListGroupIfNeeded:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PSUICellularController *)self shouldShowDataPlans])
  {
    v5 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[PSUICellularController setUpDataOnlyPlanListGroupIfNeeded:]";
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s showing data plans", buf, 0xCu);
    }

    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
    v9 = [v6 groupSpecifierWithName:v8];

    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v10 = +[PSUICellularPlanManagerCache sharedInstance];
    v11 = [v10 isAnyPlanActivating];

    v12 = [PSUICellularDataPlanListGroup groupWithListController:self groupSpecifier:v9];
    cellularDataPlanListGroup = self->_cellularDataPlanListGroup;
    self->_cellularDataPlanListGroup = v12;

    v14 = [(PSUICellularDataPlanListGroup *)self->_cellularDataPlanListGroup specifiers];
    if ([v14 count])
    {
      if (v11)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          v19 = *MEMORY[0x277D3FF38];
          v20 = MEMORY[0x277CBEC28];
          do
          {
            v21 = 0;
            do
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v24 + 1) + 8 * v21++) setProperty:v20 forKey:{v19, v24}];
            }

            while (v17 != v21);
            v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v17);
        }
      }

      [v4 addObject:{v9, v24}];
      [v4 ps_addSpecifiers:v14 toGroup:v9];
    }

    else
    {
      v22 = self->_cellularDataPlanListGroup;
      self->_cellularDataPlanListGroup = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setSubscriptionContextAndPlanProperties
{
  v3 = [MEMORY[0x277D4D868] sharedInstance];
  v22 = [v3 subscriptionsInUse];

  if ([v22 count])
  {
    v4 = [v22 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = [MEMORY[0x277D4D868] sharedInstance];
    v6 = [v5 subscriptionContexts];
    v4 = [v6 objectAtIndexedSubscript:0];
  }

  v7 = *MEMORY[0x277D3FD20];
  [*(&self->super.super.super.super.super.isa + v7) setProperty:v4 forKey:*MEMORY[0x277D40128]];
  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  v9 = [v8 selectedPlanItem];

  v10 = +[PSUICellularPlanManagerCache sharedInstance];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 selectedPlanItem];

    v13 = *(&self->super.super.super.super.super.isa + v7);
    v14 = [PSUICellularPlanUniversalReference referenceFromPlanItem:v12];
    [v13 setProperty:v14 forKey:*MEMORY[0x277D3FE70]];
  }

  else
  {
    v15 = [v10 planItems];
    v16 = [v15 count];

    if (v16 == 1)
    {
      v17 = +[PSUICellularPlanManagerCache sharedInstance];
      v18 = [v17 planItems];
      v19 = [v18 objectAtIndexedSubscript:0];

      v20 = *(&self->super.super.super.super.super.isa + v7);
      v21 = [PSUICellularPlanUniversalReference referenceFromPlanItem:v19];
      [v20 setProperty:v21 forKey:*MEMORY[0x277D3FE70]];
    }

    else
    {
      [*(&self->super.super.super.super.super.isa + v7) removePropertyForKey:*MEMORY[0x277D3FE70]];
    }
  }
}

- (void)setUpSubscriptionContextMenusGroup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sf_isiPhone];

  if (v6)
  {
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CARRIER_SPACE_CARRIER" value:&stru_287733598 table:@"Cellular"];
    v10 = [v7 groupSpecifierWithID:@"SUBSCRIPTION_CONTEXT_MENUS_GROUP" name:v9];

    [(PSUICellularController *)self createOrUpdateSubscriptionContextMenuGroup:v10];
    v11 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus specifiers];
    if ([v11 count])
    {
      v12 = [(PSUICellularController *)self getLogger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[PSUICellularController setUpSubscriptionContextMenusGroup:]";
        _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "%s showing subscription context menus group", &v14, 0xCu);
      }

      [v4 addObject:v10];
      [v4 ps_addSpecifiers:v11 toGroup:v10];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUpAddPlanGroup:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D4D868] sharedInstance];
  if (([v5 isDualSimCapable] & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 isActivationCodeFlowSupported];

  if (v7)
  {
    v8 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[PSUICellularController setUpAddPlanGroup:]";
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s showing add plan group", &v10, 0xCu);
    }

    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADD_CELLULAR_PLAN_GROUP"];
    [v4 addObject:v5];
    [(PSUICellularController *)self createAddCellularPlanSpecifierIfNeeded];
    [(PSUICellularController *)self addLocationFooterIfNecessary:v5];
    [v4 ps_addSpecifier:self->_addCellularPlanSpecifier toGroup:v5];
    goto LABEL_6;
  }

LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setUpFacetimeSetupGroup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_facetimeSetupGroup)
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SETUP_FACETIME_CELLULAR_GROUP"];
    facetimeSetupGroup = self->_facetimeSetupGroup;
    self->_facetimeSetupGroup = v5;
  }

  if (!self->_facetimeSetupButton)
  {
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SETUP_FACETIME_CELLULAR" value:&stru_287733598 table:@"Cellular"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];
    facetimeSetupButton = self->_facetimeSetupButton;
    self->_facetimeSetupButton = v10;

    [(PSSpecifier *)self->_facetimeSetupButton setIdentifier:@"SETUP_FACETIME_CELLULAR"];
    [(PSSpecifier *)self->_facetimeSetupButton setButtonAction:sel_setupCellularFaceTime_];
    [(PSSpecifier *)self->_facetimeSetupButton setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400F8]];
  }

  if ([(PSUICellularController *)self shouldShowFaceTimeSetup])
  {
    v12 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[PSUICellularController setUpFacetimeSetupGroup:]";
      _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "%s showing facetime setup group", buf, 0xCu);
    }

    [v4 addObject:self->_facetimeSetupButton];
    [v4 addObject:self->_facetimeSetupGroup];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUpTopAppUsageGroup:(id)a3
{
  topAppUsageGroup = self->_topAppUsageGroup;
  v5 = a3;
  v6 = [(PSUICellularController *)self topAppUsageGroupTitle];
  [(PSUITopAppUsageGroup *)topAppUsageGroup setGroupSpecifierTitle:v6];

  v7 = [(PSUITopAppUsageGroup *)self->_topAppUsageGroup specifiers];
  [v5 addObjectsFromArray:v7];
}

- (void)setUpMiscOptionsGroup:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_miscOptionsGroup)
  {
    v22 = [PSUIMiscOptionsGroup alloc];
    v5 = [MEMORY[0x277D4D850] sharedInstance];
    v6 = +[PSUICarrierSpaceManager sharedManager];
    v7 = +[PSUICoreTelephonyDataCache sharedInstance];
    v8 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    v9 = objc_alloc_init(PSUIMBManagerWrapper);
    v10 = objc_alloc_init(MEMORY[0x277CF7D40]);
    v11 = [(PSUICellularController *)self accountStore];
    v12 = [(PSUIMiscOptionsGroup *)v22 initWithHostController:self cellularManagementCache:v5 carrierSpaceManager:v6 dataCache:v7 carrierBundleCache:v8 backupManagerWrapper:v9 callHistoryManager:v10 appleAccountStore:v11 resetStatisticsDelegate:self];
    miscOptionsGroup = self->_miscOptionsGroup;
    self->_miscOptionsGroup = v12;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PSUIMiscOptionsGroup *)self->_miscOptionsGroup setBillingPeriodSource:v19];
          goto LABEL_13;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v20 = [(PSUIMiscOptionsGroup *)self->_miscOptionsGroup specifiers];
  [v14 addObjectsFromArray:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)disableSpecifiersIfNeeded:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sf_isiPad];

  if (v6)
  {
    v7 = [(PSUICellularController *)self isCellularDisabled];
    self->_disabled = v7;
    if (v7)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = v4;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        v12 = *MEMORY[0x277D3FF38];
        v13 = *MEMORY[0x277D40148];
        v14 = MEMORY[0x277CBEC28];
        v22 = v8;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            v17 = [(PSUICellularController *)self getLogger];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v19 = [v16 name];
              *buf = 136315394;
              v28 = "[PSUICellularController disableSpecifiersIfNeeded:]";
              v29 = 2112;
              v30 = v19;
              _os_log_debug_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEBUG, "%s disabling specifier: %@", buf, 0x16u);

              v8 = v22;
            }

            [v16 setProperty:v14 forKey:v12];
            v18 = [v16 propertyForKey:v13];
            [v18 setCellEnabled:0];

            ++v15;
          }

          while (v10 != v15);
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v10);
      }

      v4 = v21;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)createPersonalHotspotSpecifier
{
  v3 = PSBundlePathForPreferenceBundle();
  v4 = MEMORY[0x277CCA8D8];
  v6 = v5 = v3;
  v7 = [v4 bundleWithPath:v6];

  v8 = [objc_alloc(objc_msgSend(v7 "principalClass"))];
  personalHotspotBundleController = self->_personalHotspotBundleController;
  self->_personalHotspotBundleController = v8;

  v10 = self->_personalHotspotBundleController;
  if (v10)
  {
    v11 = [(PSBundleController *)v10 specifiersWithSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
    v12 = [v11 firstObject];
  }

  else
  {
    v13 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "Failed to load Wireless Modem Settings aka Personal Hotspot bundle controller", v15, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)createOrUpdateSubscriptionContextMenuGroup:(id)a3
{
  v18 = a3;
  if (self->_subscriptionContextMenus)
  {
    v4 = *MEMORY[0x277D3FD20];
    v5 = *MEMORY[0x277D40128];
    v6 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D40128]];

    if (v6)
    {
      v7 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus parentSpecifier];
      v8 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:v5];
      [v7 setProperty:v8 forKey:v5];
    }

    v9 = *MEMORY[0x277D3FE70];
    v10 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D3FE70]];

    if (v10)
    {
      v11 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus parentSpecifier];
      v12 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:v9];
      [v11 setProperty:v12 forKey:v9];
    }

    [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus setGroupSpecifier:v18];
  }

  else
  {
    v13 = [PSUISubscriptionContextMenusGroup alloc];
    v14 = [PSUISubscriptionContextMenusProductionFactory alloc];
    v15 = [(PSUISubscriptionContextMenusProductionFactory *)v14 initWithHostController:self parentSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) groupSpecifier:v18 popViewControllerOnPlanRemoval:0];
    v16 = [(PSUISubscriptionContextMenusGroup *)v13 initWithFactory:v15];
    subscriptionContextMenus = self->_subscriptionContextMenus;
    self->_subscriptionContextMenus = v16;
  }
}

- (id)transferPlanGroupSpecifier
{
  v3 = [(PSUICellularController *)self planPendingTransferGroup];

  if (v3)
  {
    v4 = [(PSUICellularController *)self planPendingTransferGroup];
    v5 = [v4 groupSpecifier];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TRANSFER_PLAN_GROUP"];
  }

  return v5;
}

- (void)createTransferPlanGroupIfNeeded:(id)a3
{
  v6 = a3;
  v4 = [(PSUICellularController *)self planPendingTransferGroup];

  if (!v4)
  {
    v5 = [[PSUIPlanPendingTransferListGroup alloc] initWithListController:self groupSpecifier:v6];
    [(PSUICellularController *)self setPlanPendingTransferGroup:v5];
  }
}

- (id)addOnPlanGroupSpecifier
{
  v3 = [(PSUICellularController *)self addOnPlanGroup];

  if (v3)
  {
    v4 = [(PSUICellularController *)self addOnPlanGroup];
    v5 = [v4 groupSpecifier];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADD_ON_PLAN_GROUP"];
  }

  return v5;
}

- (id)carrierItemGroupSpecifier
{
  v3 = [(PSUICellularController *)self carrierItemGroup];

  if (v3)
  {
    v4 = [(PSUICellularController *)self carrierItemGroup];
    v5 = [v4 groupSpecifier];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADD_NEW_NETWORK_GROUP"];
  }

  return v5;
}

- (void)createAddCellularPlanSpecifierIfNeeded
{
  if (!self->_addCellularPlanSpecifier)
  {
    v3 = [[PSUIAddCellularPlanSpecifier alloc] initWithHostController:self isEmbeddedInCarrierList:0];
    addCellularPlanSpecifier = self->_addCellularPlanSpecifier;
    self->_addCellularPlanSpecifier = &v3->super;

    MEMORY[0x2821F96F8]();
  }
}

- (id)QRCodeGroupSpecifier
{
  v3 = [(PSUICellularController *)self QRCodeGroup];

  if (v3)
  {
    v4 = [(PSUICellularController *)self QRCodeGroup];
    v5 = [v4 groupSpecifier];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"QR_CODE_GROUP"];
  }

  return v5;
}

- (void)createQRCodeGroupIfNeeded:(id)a3
{
  v6 = a3;
  v4 = [(PSUICellularController *)self QRCodeGroup];

  if (!v4)
  {
    v5 = [[PSUIQRCodeGroup alloc] initWithListController:self groupSpecifier:v6];
    [(PSUICellularController *)self setQRCodeGroup:v5];
  }
}

- (id)targetCrossPlatformGroupSpecifier
{
  v3 = [(PSUICellularController *)self targetCrossPlatformGroup];

  if (v3)
  {
    v4 = [(PSUICellularController *)self targetCrossPlatformGroup];
    v5 = [v4 groupSpecifier];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TARGET_CROSS_PLATFORM_GROUP"];
  }

  return v5;
}

- (void)createCrossPlatformGroupIfNeeded:(id)a3
{
  v6 = a3;
  v4 = [(PSUICellularController *)self targetCrossPlatformGroup];

  if (!v4)
  {
    v5 = [[PSUICrossPlatformGroup alloc] initWithListController:self groupSpecifier:v6];
    [(PSUICellularController *)self setTargetCrossPlatformGroup:v5];
  }
}

- (void)_maybeAddCrossPlatformSIMTransferSpecifier:(id)a3 toGroup:(id)a4
{
  v12 = a3;
  v6 = a4;
  crossPlatformSIMTransferSpecifier = self->_crossPlatformSIMTransferSpecifier;
  if (crossPlatformSIMTransferSpecifier || ([PSUICrossPlatformSIMTransferSpecifier specifierWithHostController:self], v8 = objc_claimAutoreleasedReturnValue(), v9 = self->_crossPlatformSIMTransferSpecifier, self->_crossPlatformSIMTransferSpecifier = v8, v9, (crossPlatformSIMTransferSpecifier = self->_crossPlatformSIMTransferSpecifier) != 0))
  {
    [v12 ps_addSpecifier:crossPlatformSIMTransferSpecifier toGroup:v6];
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CROSS_PLATFORM_SIM_TRANSFER_FOOTER" value:&stru_287733598 table:@"Cellular"];
  [v6 setProperty:v11 forKey:*MEMORY[0x277D3FF88]];
}

- (void)configureAddOnPlanTurnOnWifi:(id)a3
{
  v4 = a3;
  v5 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Cellular: Wifi off", buf, 2u);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TURN_ON_WIFI_FAUX_CARD_SCANNER_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Cellular"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TURN_ON_WIFI_FAUX_CARD_SCANNER_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
  v11 = [v8 stringWithFormat:v10, v7];

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 sf_isChinaRegionCellularDevice];

  if (v13)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v14 localizedStringForKey:@"TURN_ON_WLAN_FAUX_CARD_SCANNER_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Cellular"];
    v16 = v15 = self;

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"TURN_ON_WLAN_FAUX_CARD_SCANNER_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
    v20 = [v17 stringWithFormat:v19, v16];

    v11 = v20;
    v7 = v16;
    self = v15;
  }

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [v4 setProperty:v22 forKey:*MEMORY[0x277D3FF48]];

  [v4 setProperty:v11 forKey:*MEMORY[0x277D3FF70]];
  v27.location = [v11 rangeOfString:v7];
  v23 = NSStringFromRange(v27);
  [v4 setProperty:v23 forKey:*MEMORY[0x277D3FF58]];

  v24 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI"];
  [v4 setProperty:v24 forKey:*MEMORY[0x277D3FF78]];

  v25 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v4 setProperty:v25 forKey:*MEMORY[0x277D3FF68]];

  [v4 setProperty:@"turnOnWifiPressed:" forKey:*MEMORY[0x277D3FF50]];
}

- (void)addLocationFooterIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  if ([v5 sf_isiPad])
  {
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    if (([v8 sf_isChinaRegionCellularDevice] & 1) == 0)
    {
      goto LABEL_21;
    }

    v15 = [(PSUICellularController *)self shouldShowAddPlanButton];

    if (!v15)
    {
      goto LABEL_22;
    }
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v6 = getCLCopyAppsUsingLocationSymbolLoc_ptr_1;
  v37 = getCLCopyAppsUsingLocationSymbolLoc_ptr_1;
  if (!getCLCopyAppsUsingLocationSymbolLoc_ptr_1)
  {
    *buf = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getCLCopyAppsUsingLocationSymbolLoc_block_invoke_1;
    v32 = &unk_279BA9F68;
    v33 = &v34;
    v7 = CoreLocationLibrary_1();
    v35[3] = dlsym(v7, "CLCopyAppsUsingLocation");
    getCLCopyAppsUsingLocationSymbolLoc_ptr_1 = *(v33[1] + 24);
    v6 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v6)
  {
    dlerror();
    v27 = abort_report_np();
    _Block_object_dispose(&v34, 8);
    _Unwind_Resume(v27);
  }

  v5 = v6();
  v8 = [v5 objectForKey:@"/System/Library/Frameworks/CoreTelephony.framework"];
  v9 = [getCLLocationManagerClass_1() locationServicesEnabled];
  v10 = [getCLLocationManagerClass_1() isEntityAuthorizedForLocationDictionary:v8];
  if (!v9 || (v10 & 1) == 0)
  {
    v16 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v16, OS_LOG_TYPE_DEFAULT, "Cellular: Location Services off", buf, 2u);
    }

    v17 = @"prefs:root=Privacy&path=LOCATION";
    if (v9)
    {
      v17 = @"prefs:root=Privacy&path=LOCATION/SYSTEM_SERVICES";
    }

    v28 = v17;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v18 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_FAUX_CARD_SCANNER_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Cellular"];

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_FAUX_CARD_SCANNER_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
    v14 = [v19 stringWithFormat:v21, v11];

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v4 setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

    [v4 setProperty:v14 forKey:*MEMORY[0x277D3FF70]];
    v38.location = [v14 rangeOfString:v11];
    v24 = NSStringFromRange(v38);
    [v4 setProperty:v24 forKey:*MEMORY[0x277D3FF58]];

    v25 = [MEMORY[0x277CBEBC0] URLWithString:v28];
    [v4 setProperty:v25 forKey:*MEMORY[0x277D3FF78]];

    v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v4 setProperty:v26 forKey:*MEMORY[0x277D3FF68]];

    [v4 setProperty:@"turnOnLocationServicesPressed:" forKey:*MEMORY[0x277D3FF50]];
    goto LABEL_19;
  }

  v11 = +[PSUICellularPlanManagerCache sharedInstance];
  if (![v11 isActivationCodeFlowSupported])
  {
LABEL_20:

    goto LABEL_21;
  }

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 sf_isChinaRegionCellularDevice];

  if (v13)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v11 localizedStringForKey:@"CELLULAR_SETUP_DATA_COLLECTION_DISCLOSURE" value:&stru_287733598 table:@"Cellular"];
LABEL_19:
    [v4 setProperty:v14 forKey:*MEMORY[0x277D3FF88]];

    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
}

- (id)topAppUsageGroupTitle
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isChinaRegionCellularDevice];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"APP_WIRELESS_DATA_USAGE";
  }

  else
  {
    v7 = @"APP_DATA_USAGE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];

  v9 = [(PSUICellularController *)self activeDataPlanLabel];
  v10 = [MEMORY[0x277D4D868] sharedInstance];
  if (![v10 isDualSimCapable])
  {
    goto LABEL_9;
  }

  v11 = +[PSUICellularPlanManagerCache sharedInstance];
  v12 = [v11 planItems];
  if ([v12 count] <= 1)
  {

LABEL_9:
    goto LABEL_10;
  }

  v13 = [v9 length];

  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"APP_DATA_USAGE_FOR_%@" value:&stru_287733598 table:@"Cellular"];
    v17 = [v14 stringWithFormat:v16, v9];
LABEL_13:

    v8 = v17;
    goto LABEL_14;
  }

LABEL_10:
  v18 = [MEMORY[0x277D75418] currentDevice];
  v19 = [v18 sf_isiPad];

  if (!v19)
  {
    goto LABEL_15;
  }

  v15 = [(PSUICellularController *)self activeDataPlanCarrierName];
  if ([v15 length])
  {
    v20 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v16 localizedStringForKey:@"APP_DATA_USAGE_FOR_%@" value:&stru_287733598 table:@"Cellular"];
    v17 = [v20 stringWithFormat:v21, v15];

    v8 = v21;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:

  return v8;
}

- (id)activeDataPlanLabel
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 planItems];

  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 136315394;
    v18 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 isActiveDataPlan])
        {
          v15 = [v10 userLabel];
          v14 = [v15 label];

          goto LABEL_13;
        }

        v11 = [(PSUICellularController *)self getLogger];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 userLabel];
          v13 = [v12 label];
          *buf = v18;
          v24 = "[PSUICellularController activeDataPlanLabel]";
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "%s Not adding app data usage for plan %@ because it's not active", buf, 0x16u);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)activeDataPlanCarrierName
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[PSUICellularPlanManagerCache sharedInstance];
  v3 = [v2 planItems];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isActiveDataPlan])
        {
          v4 = [v7 carrierName];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)accountStore
{
  if (qword_28156A608 != -1)
  {
    dispatch_once(&qword_28156A608, &__block_literal_global_440);
  }

  v3 = qword_28156A600;

  return v3;
}

uint64_t __38__PSUICellularController_accountStore__block_invoke()
{
  qword_28156A600 = objc_alloc_init(MEMORY[0x277CB8F48]);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)shouldShowNoSIMsOrActivatePlansUI
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isiPad];

  if (!v4)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v23 = 0;
    v9 = [(CoreTelephonyClient *)coreTelephonyClient isEmbeddedSIMOnlyConfig:&v23];
    v10 = v23;
    if (v10)
    {
      v11 = [(PSUICellularController *)self getLogger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v10;
        _os_log_error_impl(&dword_2658DE000, v11, OS_LOG_TYPE_ERROR, "Embedded SIM config error: %@", buf, 0xCu);
      }
    }

    else if ([v9 BOOLValue])
    {
      v12 = +[PSUICellularPlanManagerCache sharedInstance];
      v13 = [v12 planItems];
      v14 = [v13 count];

      if (!v14)
      {
        goto LABEL_13;
      }

      if (v14 == 1)
      {
        v15 = +[PSUICellularPlanManagerCache sharedInstance];
        v16 = [v15 isAnyPlanActivating];

        if (v16)
        {
          goto LABEL_13;
        }
      }
    }

    v17 = [MEMORY[0x277D4D868] sharedInstance];
    v18 = [v17 subscriptionsInUse];
    v19 = [v18 count];

    if (v19)
    {
      v7 = 0;
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    subscriptionContextMenus = self->_subscriptionContextMenus;
    self->_subscriptionContextMenus = 0;

    v7 = 1;
    goto LABEL_14;
  }

  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  v6 = [v5 planItems];
  v7 = [v6 count] == 0;

LABEL_15:
  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)eSIMExistsInSubscriptionContexts
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [MEMORY[0x277D4D868] sharedInstance];
  v3 = [v2 subscriptionContexts];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [MEMORY[0x277D4D868] sharedInstance];
        v9 = [v8 simHardwareInfo:v7];

        if (v9 == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)deviceIsDualSIMCapableAndPlansExist
{
  v2 = [MEMORY[0x277D4D868] sharedInstance];
  if ([v2 isDualSimCapable])
  {
    v3 = +[PSUICellularPlanManagerCache sharedInstance];
    v4 = [v3 planItems];
    if ([v4 count])
    {
      v5 = 1;
    }

    else
    {
      v6 = +[PSUICellularPlanManagerCache sharedInstance];
      v7 = [v6 danglingPlanItems];
      if ([v7 count])
      {
        v5 = 1;
      }

      else
      {
        v8 = +[PSUICellularPlanManagerCache sharedInstance];
        v9 = [v8 plansPendingTransfer];
        v5 = [v9 count] != 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowAddPlanButton
{
  v2 = +[PSUICellularPlanManagerCache sharedInstance];
  if ([v2 isCarrierItemFlowSupported])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = +[PSUICellularPlanManagerCache sharedInstance];
    if ([v4 isActivationCodeFlowSupported])
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v3 = [v5 sf_isiPad] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)shouldShowDataPlans
{
  v3 = [MEMORY[0x277D4D868] sharedInstance];
  v4 = [v3 isDualSimCapable];

  if ((v4 & 1) == 0)
  {
    v5 = +[PSUICellularPlanManagerCache sharedInstance];
    v6 = [v5 planItems];
    v7 = [v6 count];

    if (v7)
    {
      v8 = +[PSUICellularPlanManagerCache sharedInstance];
      v9 = [v8 planItems];
      v10 = [v9 count];

      if (v10 > 1)
      {
        return 1;
      }

      if ([(PSUICellularController *)self eSIMExistsInSubscriptionContexts])
      {
        return 1;
      }

      v11 = +[PSUICellularPlanManagerCache sharedInstance];
      v12 = [v11 isAnyLocalFlowTypeSupported];

      if (v12)
      {
        return 1;
      }

      v13 = [MEMORY[0x277D75418] currentDevice];
      v14 = [v13 sf_isChinaRegionCellularDevice];

      if (v14)
      {
        return 1;
      }

      v16 = [(PSUICellularController *)self getLogger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_2658DE000, v16, OS_LOG_TYPE_DEFAULT, "No cellular plans shown", v17, 2u);
      }
    }
  }

  return 0;
}

- (BOOL)shouldUpdateHeaderForSIM
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSUICellularController_shouldUpdateHeaderForSIM__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  if (qword_28156A610 != -1)
  {
    dispatch_once(&qword_28156A610, block);
  }

  return _MergedGlobals_1_2;
}

void __50__PSUICellularController_shouldUpdateHeaderForSIM__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 1656);
  v7 = 0;
  v3 = [v2 isEmbeddedSIMOnlyConfig:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "Embedded SIM config error: %@", buf, 0xCu);
    }
  }

  else
  {
    _MergedGlobals_1_2 = [v3 BOOLValue];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowPendingInstallPlan
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 sf_isiPad])
  {
    v3 = +[PSUICellularPlanManagerCache sharedInstance];
    v4 = [v3 planItems];
    if ([v4 count])
    {
      v5 = 0;
    }

    else
    {
      v6 = +[PSUICellularPlanManagerCache sharedInstance];
      v7 = [v6 pendingInstallPlans];
      v8 = [v7 plans];
      v5 = [v8 count] != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v25 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v25;
    v7 = [v6 textLabel];
    v8 = [v7 text];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
    v11 = [v10 uppercaseString];

    if (v8 == v11)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
      v21 = [v6 textLabel];
      [v21 setText:v20];

      if (![(PSUICellularController *)self shouldUpdateHeaderForSIM])
      {
LABEL_8:

        goto LABEL_9;
      }

      v15 = @"CELLULAR_PLANS_eSIMs";
    }

    else
    {
      v12 = [v6 textLabel];
      v13 = [v12 text];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = @"NON_PUBLIC_NETWORK_PLANS";
      v16 = [v14 localizedStringForKey:@"NON_PUBLIC_NETWORK_PLANS" value:&stru_287733598 table:@"Cellular"];
      v17 = [v16 uppercaseString];
      v18 = [v13 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_8;
      }
    }

    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v15 value:&stru_287733598 table:@"Cellular"];
    v24 = [v6 textLabel];
    [v24 setText:v23];

    goto LABEL_8;
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (BOOL)shouldShowPrivateNetworkPlansList
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 planItems];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      if (![v9 settingsMode] || objc_msgSend(v9, "settingsMode") == 1)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v16 = [(PSUICellularController *)self getLogger];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136315138;
    v30 = "[PSUICellularController shouldShowPrivateNetworkPlansList]";
    v17 = "%s Private network SIM exists on device, show private network plans list";
  }

  else
  {
LABEL_10:

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = +[PSUICellularPlanManagerCache sharedInstance];
    v4 = [v10 danglingPlanItems];

    v11 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (!v11)
    {
LABEL_18:
      v15 = 0;
      goto LABEL_25;
    }

    v12 = v11;
    v13 = *v21;
LABEL_12:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(*(&v20 + 1) + 8 * v14) isPrivateNetworkSim])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    v16 = [(PSUICellularController *)self getLogger];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136315138;
    v30 = "[PSUICellularController shouldShowPrivateNetworkPlansList]";
    v17 = "%s Private network dangling plan exists on device, show private network plans list";
  }

  _os_log_impl(&dword_2658DE000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
LABEL_24:

  v15 = 1;
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)prefetchResourcesFor:(id)a3
{
  v16 = a3;
  v7 = [(PSUICellularController *)self getGroupSpecifierForSpecifier:?];
  v8 = v7;
  if (v7)
  {
    v3 = [v7 identifier];
    if ([v3 isEqualToString:@"APP_DATA_USAGE"])
    {
      v4 = [v16 identifier];
      if ([v4 isEqualToString:@"DATA_USAGE_IN_PERIOD"])
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v5 = [v16 identifier];
        if (([v5 isEqualToString:@"ROAMING_DATA_USAGE_IN_PERIOD"] & 1) == 0)
        {

          goto LABEL_25;
        }

        v10 = 1;
        v9 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = [v16 identifier];
  if ([v11 isEqualToString:0x287738C18])
  {

    v12 = 1;
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = [v16 identifier];
  if ([v13 isEqualToString:0x287734A58])
  {

    v12 = 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = [v16 identifier];
    v12 = [v14 isEqualToString:0x287733AF8];

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_9:

  if (v10)
  {
LABEL_16:
  }

LABEL_17:
  if (v8)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    v15 = [v16 performGetter];
    goto LABEL_26;
  }

  if (v12)
  {
    goto LABEL_25;
  }

LABEL_26:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = PSUICellularController;
  v6 = a4;
  [(PSUICellularController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(PSUICellularController *)self indexForIndexPath:v6, v10.receiver, v10.super_class];

  v8 = [(PSUICellularController *)self specifierAtIndex:v7];
  v9 = [(PSUICellularController *)self cellularDataPlanListGroup];
  [v9 listController:self didSelectSpecifier:v8];
}

- (void)entitlementStatusChanged
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277D07D80];
    v6 = 136315394;
    v7 = "[PSUICellularController entitlementStatusChanged]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", &v6, 0x16u);
  }

  if (self->_ignoreNextEntitlementStatusChange)
  {
    self->_ignoreNextEntitlementStatusChange = 0;
  }

  else
  {
    self->_ignoreNextEntitlementStatusChange = 1;
    [(PSUICellularController *)self reloadSpecifiers];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCellularDisabled
{
  v2 = [MEMORY[0x277D4D868] sharedInstance];
  if ([v2 isSIMMissing] && PSSimIsRequired())
  {
    v3 = +[PSUICellularPlanManagerCache sharedInstance];
    v4 = [v3 isCellularDisabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updatePaneWithCellularDataState:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) animated:1];

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 shouldShowAccountSetup];

  if (!v3 || (v7 & 1) != 0 || [(PSUICellularController *)self showDataPlanOnly])
  {
    personalHotspotSpecifier = self->_personalHotspotSpecifier;
    if (personalHotspotSpecifier)
    {
      v9 = [(PSSpecifier *)personalHotspotSpecifier identifier];
      v10 = [(PSUICellularController *)self specifierForID:v9];

      if (v10)
      {
        v11 = [(PSUICellularController *)self getLogger];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = "[PSUICellularController updatePaneWithCellularDataState:]";
          _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "%s Removing personal hotspot", buf, 0xCu);
        }

        [(PSUICellularController *)self removeSpecifier:self->_personalHotspotSpecifier animated:1];
      }
    }

    if ([(PSUICellularController *)self containsSpecifier:self->_facetimeSetupButton])
    {
      facetimeSetupButton = self->_facetimeSetupButton;
      v22[0] = self->_facetimeSetupGroup;
      v22[1] = facetimeSetupButton;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      [(PSUICellularController *)self removeContiguousSpecifiers:v13 animated:1];
LABEL_11:
    }
  }

  else
  {
    v14 = self->_personalHotspotSpecifier;
    if (v14)
    {
      v15 = [(PSSpecifier *)v14 identifier];
      v16 = [(PSUICellularController *)self specifierForID:v15];

      if (!v16)
      {
        v17 = [(PSUICellularController *)self getLogger];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = "[PSUICellularController updatePaneWithCellularDataState:]";
          _os_log_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEFAULT, "%s Adding personal hotspot back", buf, 0xCu);
        }

        [(PSUICellularController *)self insertSpecifier:self->_personalHotspotSpecifier afterSpecifierID:@"CELLULAR_DATA_OPTIONS" animated:1];
      }
    }

    if ([(PSUICellularController *)self shouldShowFaceTimeSetup])
    {
      if (([(PSUICellularController *)self containsSpecifier:self->_facetimeSetupButton]& 1) == 0)
      {
        v18 = self->_facetimeSetupButton;
        if (v18)
        {
          if (self->_facetimeSetupGroup)
          {
            v23[0] = self->_facetimeSetupGroup;
            v23[1] = v18;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
            [(PSUICellularController *)self insertContiguousSpecifiers:v13 afterSpecifierID:@"VIEW_ACCOUNT" animated:1];
            goto LABEL_11;
          }
        }
      }
    }
  }

  v19 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[PSUICellularController updatePaneWithCellularDataState:]";
    _os_log_impl(&dword_2658DE000, v19, OS_LOG_TYPE_DEFAULT, "%s Reloading cellular data options", buf, 0xCu);
  }

  v20 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) specifierForID:@"CELLULAR_DATA_OPTIONS"];
  [(PSUICellularController *)self reloadSpecifier:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)showDataPlanOnly
{
  v2 = +[PSUICellularPlanManagerCache sharedInstance];
  v3 = [v2 isMultipleDataPlanSupportAvailable];

  if (!v3)
  {
    return 0;
  }

  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  if ([v4 isSelectedPlanActivating])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    if ([v6 shouldShowPlanSelector])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[PSUICellularPlanManagerCache sharedInstance];
      v5 = [v7 shouldShowAccountSetup];
    }
  }

  return v5;
}

- (id)cellularDataOptionsDetailText:(id)a3
{
  v3 = +[PSUICoreTelephonyDataCache sharedInstance];
  v4 = [v3 isCellularDataEnabled];

  if (PSIsVoiceRoamingOptionAvailable())
  {
    v5 = PSIsVoiceRoamingEnabled();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (PSIsVoiceRoamingEnabled())
    {
      v6 = PSIsDataRoamingEnabled();
    }

    else
    {
      v6 = 0;
    }

    PSIsVoiceRoamingOptionAvailable();
    goto LABEL_11;
  }

  v5 = 0;
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (PSIsVoiceRoamingOptionAvailable())
  {
    v6 = 0;
LABEL_11:
    v8 = v5 | v6;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (v8)
    {
      v11 = @"CELLULAR_ACCOUNT_OPTIONS_ROAMING_ON";
    }

    else
    {
      v11 = @"CELLULAR_ACCOUNT_OPTIONS_ROAMING_OFF";
    }

    v7 = [v9 localizedStringForKey:v11 value:&stru_287733598 table:@"Cellular"];

    goto LABEL_15;
  }

  v7 = &stru_287733598;
LABEL_15:

  return v7;
}

- (id)getTetheringStatus:(id)a3
{
  v3 = [MEMORY[0x277D3FB20] sharedManager];
  if ([v3 isTetheringEnabled])
  {
    v4 = &stru_287733598;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"OFF" value:&stru_287733598 table:@"Cellular"];
  }

  return v4;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 sf_isiPad];

  if (v7)
  {
    v8 = [(PSUICellularController *)self specifierAtIndexPath:v5];
    v9 = [v8 propertyForKey:*MEMORY[0x277D3FE70]];
    v11 = +[PSUICellularPlanManagerCache sharedInstance];
    v10 = [v11 planFromReferenceSafe:v9];

    LOBYTE(v11) = 0;
    if (v8 && v10)
    {
      v12 = [v10 plan];
      if (v12)
      {
        v13 = [v10 plan];
        LODWORD(v11) = [v13 isDeleteNotAllowed] ^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 sf_isiPad];

  if (v9)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__1;
    v47 = __Block_byref_object_dispose__1;
    v48 = [(PSUICellularController *)self specifierAtIndexPath:v7];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__1;
    v41 = __Block_byref_object_dispose__1;
    v42 = [v44[5] propertyForKey:*MEMORY[0x277D3FE70]];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__1;
    v35 = __Block_byref_object_dispose__1;
    v10 = +[PSUICellularPlanManagerCache sharedInstance];
    v36 = [v10 planFromReference:v38[5]];

    if (!v44[5])
    {
      goto LABEL_6;
    }

    v11 = v32[5];
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = [v11 plan];
    if (v12 && ([v32[5] plan], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isDeleteNotAllowed"), v13, v12, (v14 & 1) == 0))
    {
      objc_initWeak(&location, self);
      v18 = MEMORY[0x277D753C0];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"REMOVE" value:&stru_287733598 table:@"Cellular"];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
      v24[3] = &unk_279BAA598;
      v26 = &v31;
      v27 = &v37;
      v24[4] = self;
      v25 = v7;
      v28 = &v43;
      objc_copyWeak(&v29, &location);
      v21 = [v18 contextualActionWithStyle:1 title:v20 handler:v24];

      v22 = MEMORY[0x277D75AD8];
      v49[0] = v21;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
      v15 = [v22 configurationWithActions:v23];

      [v15 setPerformsFirstActionWithFullSwipe:0];
      objc_destroyWeak(&v29);

      objc_destroyWeak(&location);
    }

    else
    {
LABEL_6:
      v15 = 0;
    }

    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:*(*(*(a1 + 56) + 8) + 40)];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 64) + 8) + 40);
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = *(a1 + 40);
    v14 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136316162;
    v38 = "[PSUICellularController tableView:trailingSwipeActionsConfigurationForRowAtIndexPath:]_block_invoke";
    v39 = 2112;
    v40 = v13;
    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = v12;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "%s remove plan: %@, %@, %@, %@", buf, 0x34u);
  }

  v15 = MEMORY[0x277D75110];
  v16 = [SettingsCellularUtils removePlanConfirmationTitle:*(*(*(a1 + 48) + 8) + 40)];
  v17 = [SettingsCellularUtils removePlanConfirmationMessage:*(*(*(a1 + 48) + 8) + 40)];
  v18 = [v15 alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"REMOVE" value:&stru_287733598 table:@"Cellular"];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_472;
  v34[3] = &unk_279BAA548;
  v22 = *(a1 + 48);
  v34[4] = *(a1 + 32);
  v36 = v22;
  v23 = v5;
  v35 = v23;
  v24 = [v19 actionWithTitle:v21 style:2 handler:v34];

  [v18 addAction:v24];
  v25 = MEMORY[0x277D750F8];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_478;
  v32[3] = &unk_279BAA570;
  v32[4] = *(a1 + 32);
  v33 = v23;
  v28 = v23;
  v29 = [v25 actionWithTitle:v27 style:1 handler:v32];

  [v18 addAction:v29];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained presentViewController:v18 animated:1 completion:0];

  v31 = *MEMORY[0x277D85DE8];
}

void __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_472(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136315394;
    v11 = "[PSUICellularController tableView:trailingSwipeActionsConfigurationForRowAtIndexPath:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "%s confirm remove plan: %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x277CF96D8] sharedManager];
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_473;
  v8[3] = &unk_279BAA520;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  [v4 didDeletePlanItem:v5 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_473(uint64_t a1, unsigned int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Failed to delete plan item: %@", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v7);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __87__PSUICellularController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_478(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUICellularController tableView:trailingSwipeActionsConfigurationForRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "%s cancel remove plan", &v5, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldShowFaceTimeSetup
{
  if (MGGetBoolAnswer())
  {
    v2 = +[PSUICoreTelephonyDataCache sharedInstance];
    if ([v2 isCellularDataEnabled])
    {
      v3 = [MEMORY[0x277D07DB8] sharedInstance];
      v4 = [v3 faceTimeNonWiFiEntitled] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setupCellularFaceTime:(id)a3
{
  v11 = [MEMORY[0x277CFB9C0] controllerForServiceType:0];
  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 activeDataSubscriptionContext];

  v6 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  v7 = [(CoreTelephonyClient *)self->_coreTelephonyClient copyCarrierBundleValueWithDefault:v5 key:@"CarrierName" bundleType:v6 error:0];
  v8 = [(CoreTelephonyClient *)self->_coreTelephonyClient copyCarrierBundleValueWithDefault:v5 key:@"TetheringPhoneNumber" bundleType:v6 error:0];
  v9 = [(CoreTelephonyClient *)self->_coreTelephonyClient copyCarrierBundleValueWithDefault:v5 key:@"TetheringURL" bundleType:v6 error:0];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  [v11 showSetupFaceTimeOverCellularAlertForServiceProviderName:v7 serviceProviderPhoneNumber:v8 serviceProviderURL:v10 completion:0];
}

- (void)newCarrierNotification
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PSUICellularController newCarrierNotification]";
    v7 = 2112;
    v8 = @"PSNewCarrierNotification";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", &v5, 0x16u);
  }

  [(PSUICellularController *)self reloadSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cellularDataSettingChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PSUICellularController cellularDataSettingChanged]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification", &v6, 0xCu);
  }

  [(PSUICellularController *)self reloadSpecifierID:@"MOBILE_DATA_SETTINGS" animated:1];
  v4 = +[PSUICoreTelephonyDataCache sharedInstance];
  -[PSUICellularController updatePaneWithCellularDataState:](self, "updatePaneWithCellularDataState:", [v4 isCellularDataEnabled]);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(PSUICellularController *)self getLogger:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[PSUICellularController simStatusDidChange:status:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PSUITopAppUsageGroup *)self->_topAppUsageGroup clearStoredSpecifiers];
  v6 = [(PSUICellularController *)self isCellularDisabled];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    v8 = [WeakRetained popToRootViewControllerAnimated:1];
  }

  else if (self->_disabled)
  {
    [(PSUICellularController *)self reloadSpecifiers];
  }

  self->_disabled = v6;
  v9 = [(PSUITopAppUsageGroup *)self->_topAppUsageGroup specifiers];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    v14 = *MEMORY[0x277D3FF38];
    v15 = *MEMORY[0x277D40148];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (([v9 containsObject:{v17, v21}] & 1) == 0)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithBool:!v6];
          [v17 setProperty:v18 forKey:v14];

          v19 = [v17 propertyForKey:v15];
          [v19 setCellEnabled:!v6];
          [v19 setNeedsDisplay];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)airplaneModeChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[PSUICellularController airplaneModeChanged]";
    _os_log_error_impl(&dword_2658DE000, v3, OS_LOG_TYPE_ERROR, "%s Airplane mode changed", &v6, 0xCu);
  }

  [(PSUICellularController *)self reloadSpecifierID:@"MOBILE_DATA_SETTINGS" animated:1];
  v4 = +[PSUICoreTelephonyDataCache sharedInstance];
  -[PSUICellularController updatePaneWithCellularDataState:](self, "updatePaneWithCellularDataState:", [v4 isCellularDataEnabled]);

  [(PSUICellularController *)self reloadSpecifiers];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cellularPlanChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[PSUICellularController cellularPlanChanged:]";
    v9 = 2112;
    v10 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s received notification %@", buf, 0x16u);
  }

  [(PSUITopAppUsageGroup *)self->_topAppUsageGroup clearStoredSpecifiers];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PSUICellularController_cellularPlanChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)wirelessDataUsageChangedNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277D4D8A8];
    *buf = 136315394;
    v8 = "[PSUICellularController wirelessDataUsageChangedNotification]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", buf, 0x16u);
  }

  [(PSUITopAppUsageGroup *)self->_topAppUsageGroup clearStoredSpecifiers];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PSUICellularController_wirelessDataUsageChangedNotification__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)wirelessDataUsageCacheRefreshed
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277D4D8A0];
    *buf = 136315394;
    v8 = "[PSUICellularController wirelessDataUsageCacheRefreshed]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", buf, 0x16u);
  }

  [(PSUITopAppUsageGroup *)self->_topAppUsageGroup clearStoredSpecifiers];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PSUICellularController_wirelessDataUsageCacheRefreshed__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)carrierItemsChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF9678];
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "received notification %@", buf, 0xCu);
  }

  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  v6 = [v5 planItems];
  if ([v6 count])
  {
  }

  else
  {
    v7 = +[PSUICellularPlanManagerCache sharedInstance];
    v8 = [v7 isAnyLocalFlowTypeSupported];

    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__PSUICellularController_carrierItemsChanged__block_invoke;
      block[3] = &unk_279BA9D58;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)perAppNetworkDataAccessPolicyChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277D4D880];
    *buf = 136315394;
    v10 = "[PSUICellularController perAppNetworkDataAccessPolicyChanged]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v5 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PSUICellularController_perAppNetworkDataAccessPolicyChanged__block_invoke;
  block[3] = &unk_279BA9EA0;
  objc_copyWeak(&v8, buf);
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__PSUICellularController_perAppNetworkDataAccessPolicyChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 reloadSpecifiers];
  }
}

- (BOOL)_shouldShowCarrierItemGroup
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isChinaRegionCellularDevice];

  if (v4 && (-[PSUICellularController carrierItemGroup](self, "carrierItemGroup"), v5 = objc_claimAutoreleasedReturnValue(), [v5 specifiers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
  {
    v10 = [(PSUICellularController *)self getLogger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[PSUICellularController _shouldShowCarrierItemGroup]";
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "%s No carrier items available for ChinaRegionCellularDevice", &v11, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)launchTravelFlow:(id)a3 withType:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D49590];
  v16[0] = *MEMORY[0x277D49548];
  v16[1] = v6;
  v17[0] = a4;
  v17[1] = a3;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v11 = [MEMORY[0x277D49530] flowWithOptions:v10];
  flow = self->_flow;
  self->_flow = v11;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  v13 = self->_flow;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__PSUICellularController_launchTravelFlow_withType___block_invoke;
  v15[3] = &unk_279BAA5C0;
  v15[4] = self;
  [(TSSIMSetupFlow *)v13 firstViewController:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __52__PSUICellularController_launchTravelFlow_withType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PSUICellularController_launchTravelFlow_withType___block_invoke_2;
  v6[3] = &unk_279BA9D30;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __52__PSUICellularController_launchTravelFlow_withType___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) view];
    v3 = [v2 window];

    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:*(a1 + 32)];
      [v4 setModalPresentationStyle:2];
      v5 = [*(a1 + 40) getLogger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "present view controller: %@", &v10, 0xCu);
      }

      [*(a1 + 40) presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v7 = [*(a1 + 40) getLogger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Pending view controller: %@", &v10, 0xCu);
      }

      [*(a1 + 40) setPendingViewController:*(a1 + 32)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)launchSIMSetupFlow:(id)a3
{
  v4 = [MEMORY[0x277D49530] flowWithOptions:a3];
  flow = self->_flow;
  self->_flow = v4;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  v6 = self->_flow;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PSUICellularController_launchSIMSetupFlow___block_invoke;
  v7[3] = &unk_279BAA5C0;
  v7[4] = self;
  [(TSSIMSetupFlow *)v6 firstViewController:v7];
}

void __45__PSUICellularController_launchSIMSetupFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PSUICellularController_launchSIMSetupFlow___block_invoke_2;
  v6[3] = &unk_279BA9D30;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __45__PSUICellularController_launchSIMSetupFlow___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) view];
    v3 = [v2 window];

    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:*(a1 + 32)];
      [v4 setModalPresentationStyle:2];
      v5 = [*(a1 + 40) getLogger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "present view controller: %@", &v10, 0xCu);
      }

      [*(a1 + 40) presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v7 = [*(a1 + 40) getLogger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Pending view controller: %@", &v10, 0xCu);
      }

      [*(a1 + 40) setPendingViewController:*(a1 + 32)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)launchCrossPlatformFlowWithCode:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D49558];
  v13[0] = *MEMORY[0x277D49548];
  v13[1] = v4;
  v14[0] = &unk_287749110;
  v14[1] = MEMORY[0x277CBEC38];
  v13[2] = *MEMORY[0x277D49568];
  v14[2] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v14 forKeys:v13 count:3];
  v8 = [MEMORY[0x277D49530] flowWithOptions:v7];
  flow = self->_flow;
  self->_flow = v8;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  v10 = self->_flow;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__PSUICellularController_launchCrossPlatformFlowWithCode___block_invoke;
  v12[3] = &unk_279BAA5C0;
  v12[4] = self;
  [(TSSIMSetupFlow *)v10 firstViewController:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __58__PSUICellularController_launchCrossPlatformFlowWithCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__PSUICellularController_launchCrossPlatformFlowWithCode___block_invoke_2;
  v6[3] = &unk_279BA9D30;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__PSUICellularController_launchCrossPlatformFlowWithCode___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:*(a1 + 32)];
    [v2 setModalPresentationStyle:2];
    [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
  }
}

- (void)launchAddeSIMFlow
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277D49548];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v5 = [MEMORY[0x277D49530] flowWithOptions:v4];
  flow = self->_flow;
  self->_flow = v5;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  objc_initWeak(&location, self);
  v7 = self->_flow;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PSUICellularController_launchAddeSIMFlow__block_invoke;
  v9[3] = &unk_279BAA5C0;
  v9[4] = self;
  [(TSSIMSetupFlow *)v7 firstViewController:v9];
  objc_destroyWeak(&location);

  v8 = *MEMORY[0x277D85DE8];
}

void __43__PSUICellularController_launchAddeSIMFlow__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D757A0];
    v4 = a2;
    v5 = [[v3 alloc] initWithRootViewController:v4];

    [v5 setModalPresentationStyle:2];
    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PSUICellularController_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BAA050;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__PSUICellularController_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[208];
    WeakRetained[208] = 0;
    v5 = WeakRetained;

    v4 = [v5 presentedViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    [*(a1 + 32) setHasPresentedPendingFlow:0];
    WeakRetained = v5;
  }
}

- (void)didResetStatistics
{
  v3 = [(PSUICellularController *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v5;

  v7 = [(PSUICellularController *)self table];
  [v7 setContentOffset:0 animated:{0.0, -v6}];
}

void __52__PSUICellularController_didModifyStatisticsSetting__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4D8A8] object:0];
}

- (id)showLocalTime:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateStyle:2];
  v6 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v4 longLongValue];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v9 = [v5 stringFromDate:v8];

  return v9;
}

- (void)updateStateMessageCloseTapped:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(PSUICellularController *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    basebandConfigUpdateTimestamp = self->_basebandConfigUpdateTimestamp;
    v8 = 138412290;
    v9 = basebandConfigUpdateTimestamp;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Confirmed by user for the cellular config update %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setObject:self->_basebandConfigUpdateTimestamp forKey:@"CellularSettings.BasebandConfigUpdateTime"];
  [(PSUICellularController *)self reloadSpecifiers];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didFailToSetPolicyForSpecifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PSUICellularController_didFailToSetPolicyForSpecifier___block_invoke;
  v6[3] = &unk_279BA9D30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

@end