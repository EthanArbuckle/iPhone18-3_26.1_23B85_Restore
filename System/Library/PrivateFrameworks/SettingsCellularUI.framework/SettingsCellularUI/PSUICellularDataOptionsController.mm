@interface PSUICellularDataOptionsController
- (PSUICellularDataOptionsController)init;
- (PSUICellularDataOptionsController)initWithParentSpecifier:(id)specifier;
- (PSUICellularDataOptionsController)initWithParentSpecifier:(id)specifier simStatusCache:(id)cache planManagerCache:(id)managerCache dataCache:(id)dataCache;
- (id)getCDMARoamingStatus:(id)status;
- (id)getDataRoamingStatus:(id)status;
- (id)getDataRoamingStatusForService:(id)service;
- (id)roamingSettingsDescription:(id)description;
- (id)roamingSpecifiers;
- (id)specifiers;
- (void)createSatelliteSubgroupIfRequired:(id)required;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)launchDataRoamingWarningFlow;
- (void)roamingOptionsDidChange;
- (void)setCDMARoamingEnabled:(id)enabled specifier:(id)specifier;
- (void)setDataRoamingEnabled:(id)enabled specifier:(id)specifier;
- (void)setDataRoamingEnabledForService:(id)service specifier:(id)specifier;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)viewDidLoad;
@end

@implementation PSUICellularDataOptionsController

- (PSUICellularDataOptionsController)init
{
  v18.receiver = self;
  v18.super_class = PSUICellularDataOptionsController;
  v2 = [(PSUICellularDataOptionsController *)&v18 init];
  if (v2)
  {
    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    simStatusCache = v2->_simStatusCache;
    v2->_simStatusCache = mEMORY[0x277D4D868];

    v5 = +[PSUICellularPlanManagerCache sharedInstance];
    planManagerCache = v2->_planManagerCache;
    v2->_planManagerCache = v5;

    v7 = +[PSUICoreTelephonyDataCache sharedInstance];
    dataCache = v2->_dataCache;
    v2->_dataCache = v7;

    v9 = +[PSUICoreTelephonyRadioCache sharedInstance];
    radioCache = v2->_radioCache;
    v2->_radioCache = v9;

    v11 = *MEMORY[0x277CBECE8];
    v12 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"cellular_data_options_controller"];
    v2->_serverConnection = _CTServerConnectionCreateOnTargetQueue();

    v13 = objc_alloc(MEMORY[0x277CC37B0]);
    v14 = [v13 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v2->_ctClient;
    v2->_ctClient = v14;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_airplaneModeChanged name:0x287739438 object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PSUICellularDataOptionsController;
  [(PSUICellularDataOptionsController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CELLULAR_DATA_OPTIONS" value:&stru_287733598 table:@"Cellular"];
  [(PSUICellularDataOptionsController *)self setTitle:v4];
}

- (void)emitNavigationEvent
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Cellular/CELLULAR_DATA_OPTIONS"];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CELLULAR_DATA_OPTIONS" value:&stru_287733598 table:@"Cellular"];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v8 bundleURL];
  v10 = [v4 initWithKey:v6 table:0 locale:currentLocale bundleURL:bundleURL];

  v11 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v13 bundleURL];
  v15 = [v11 initWithKey:@"Cellular" table:0 locale:currentLocale2 bundleURL:bundleURL2];

  v18[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [(PSUICellularDataOptionsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.cellular-settings" title:v10 localizedNavigationComponents:v16 deepLink:v3];

  v17 = *MEMORY[0x277D85DE8];
}

- (PSUICellularDataOptionsController)initWithParentSpecifier:(id)specifier
{
  v4 = MEMORY[0x277D4D868];
  specifierCopy = specifier;
  sharedInstance = [v4 sharedInstance];
  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  v8 = +[PSUICoreTelephonyDataCache sharedInstance];
  v9 = [(PSUICellularDataOptionsController *)self initWithParentSpecifier:specifierCopy simStatusCache:sharedInstance planManagerCache:v7 dataCache:v8];

  return v9;
}

- (PSUICellularDataOptionsController)initWithParentSpecifier:(id)specifier simStatusCache:(id)cache planManagerCache:(id)managerCache dataCache:(id)dataCache
{
  specifierCopy = specifier;
  cacheCopy = cache;
  managerCacheCopy = managerCache;
  dataCacheCopy = dataCache;
  v27.receiver = self;
  v27.super_class = PSUICellularDataOptionsController;
  v15 = [(PSUICellularDataOptionsController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_parentSpecifier, specifier);
    v17 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    v18 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v17];
    serviceDescriptor = v16->_serviceDescriptor;
    v16->_serviceDescriptor = v18;

    objc_storeStrong(&v16->_simStatusCache, cache);
    objc_storeStrong(&v16->_planManagerCache, managerCache);
    objc_storeStrong(&v16->_dataCache, dataCache);
    v20 = *MEMORY[0x277CBECE8];
    v21 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"cellular_data_options_controller"];
    v16->_serverConnection = _CTServerConnectionCreateOnTargetQueue();

    v22 = objc_alloc(MEMORY[0x277CC37B0]);
    v23 = [v22 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v16->_ctClient;
    v16->_ctClient = v23;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel_airplaneModeChanged name:0x287739438 object:0];
  }

  return v16;
}

- (void)dealloc
{
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    CFRelease(serverConnection);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PSUICellularDataOptionsController;
  [(PSUICellularDataOptionsController *)&v5 dealloc];
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_24;
  }

  v33 = *MEMORY[0x277D3FC48];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATA_RATE_GROUP"];
  [v4 addObject:v5];
  v6 = v5;
  subscriptionsInUse = [(PSSimStatusCache *)self->_simStatusCache subscriptionsInUse];
  v32 = subscriptionsInUse;
  if ([subscriptionsInUse count])
  {
    v8 = [subscriptionsInUse objectAtIndexedSubscript:0];
  }

  else
  {
    subscriptionContexts = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
    v8 = [subscriptionContexts objectAtIndexedSubscript:0];
  }

  v10 = *MEMORY[0x277D3FD20];
  [*(&self->super.super.super.super.super.isa + v10) setProperty:v8 forKey:*MEMORY[0x277D40128]];
  subscriptionContexts2 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  if ([subscriptionContexts2 count] <= 1)
  {

    goto LABEL_9;
  }

  planItems = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  v13 = [planItems count];

  if (v13 < 2)
  {
LABEL_9:
    if (![(PSUICoreTelephonyDataCache *)self->_dataCache isAirplaneModeEnabled])
    {
      getLogger = [(PSUICellularDataOptionsController *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Adding enable LTE/3G/etc group", buf, 2u);
      }

      v15 = [[PSUIVoiceAndDataSpecifier alloc] initWithHostController:self subscriptionContext:v8 groupSpecifierToUpdateFooterFor:0];
      if (v15)
      {
        [v4 ps_insertObject:v15 afterObject:v6];
      }
    }

    v31 = 1;
    goto LABEL_16;
  }

  v31 = 0;
LABEL_16:
  if ([(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled]|| PSIsVoiceRoamingOptionAvailable())
  {
    roamingSpecifiers = [(PSUICellularDataOptionsController *)self roamingSpecifiers];
    if ([roamingSpecifiers count])
    {
      [v4 ps_insertObjectsFromArray:roamingSpecifiers afterObject:v6];
    }
  }

  v17 = [PSUIDataModeSubgroup alloc];
  v18 = *(&self->super.super.super.super.super.isa + v10);
  dataCache = self->_dataCache;
  radioCache = self->_radioCache;
  v21 = objc_alloc(MEMORY[0x277CC37B0]);
  v22 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"data_options_controller"];
  v23 = [v21 initWithQueue:v22];
  v24 = [(PSUIDataModeSubgroup *)v17 initWithHostController:self parentSpecifier:v18 dataCache:dataCache radioCache:radioCache context:v8 ctClient:v23];
  dataModeSubgroup = self->_dataModeSubgroup;
  self->_dataModeSubgroup = v24;

  specifiers = [(PSUIDataModeSubgroup *)self->_dataModeSubgroup specifiers];
  [v4 addObjectsFromArray:specifiers];

  [MEMORY[0x277D4D878] logSpecifiers:v4 origin:@"[PSUICellularDataOptionsController specifiers] end"];
  v27 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  LODWORD(v17) = [v27 canSetSatelliteCapability:v8];

  if ((v31 & v17) == 1)
  {
    [(PSUICellularDataOptionsController *)self createSatelliteSubgroupIfRequired:v8];
    specifiers2 = [(PSUISatelliteSubgroup *)self->_satelliteSubgroup specifiers];
    [v4 addObjectsFromArray:specifiers2];
  }

  v29 = *(&self->super.super.super.super.super.isa + v33);
  *(&self->super.super.super.super.super.isa + v33) = v4;

  v3 = *(&self->super.super.super.super.super.isa + v33);
LABEL_24:

  return v3;
}

- (void)createSatelliteSubgroupIfRequired:(id)required
{
  if (!self->_satelliteSubgroup)
  {
    planManagerCache = self->_planManagerCache;
    requiredCopy = required;
    selectedPlanItem = [(PSUICellularPlanManagerCache *)planManagerCache selectedPlanItem];
    v9 = [PSUICellularPlanUniversalReference referenceFromPlanItem:selectedPlanItem];

    v7 = [[PSUISatelliteSubgroup alloc] initWithHostController:self context:requiredCopy planReference:v9 mode:1];
    satelliteSubgroup = self->_satelliteSubgroup;
    self->_satelliteSubgroup = v7;
  }
}

- (id)roamingSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled]|| PSIsVoiceRoamingOptionAvailable())
  {
    if (PSIsVoiceRoamingOptionAvailable())
    {
      getLogger = [(PSUICellularDataOptionsController *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Adding voice roaming specifiers", buf, 2u);
      }

      v5 = PSRoamingSubMenuSpecifiers(self);
LABEL_15:
      v9 = v5;
      [array addObjectsFromArray:v5];

      goto LABEL_16;
    }

    if (PSIsDataRoamingOptionAvailable())
    {
      getLogger2 = [(PSUICellularDataOptionsController *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "Adding data roaming specifiers", v12, 2u);
      }

      v7 = PSDataRoamingSpecifiers(self);
      [array addObjectsFromArray:v7];
    }

    if (PSIsCDMARoamingOptionAvailable())
    {
      getLogger3 = [(PSUICellularDataOptionsController *)self getLogger];
      if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_debug_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEBUG, "Adding CDMA roaming specifiers", v11, 2u);
      }

      v5 = PSCDMARoamingSpecifiers(self);
      goto LABEL_15;
    }
  }

LABEL_16:

  return array;
}

- (id)roamingSettingsDescription:(id)description
{
  isCellularDataEnabled = [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled];
  v4 = PSIsVoiceRoamingEnabled();
  if (isCellularDataEnabled && (v4 & PSIsDataRoamingEnabled()) == 1)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"VOICE_AND_DATA_ROAMING";
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v4)
    {
      v7 = @"VOICE_ONLY_ROAMING";
    }

    else
    {
      v7 = @"NONE_ROAMING";
    }
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];

  return v8;
}

- (id)getDataRoamingStatus:(id)status
{
  v13 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularDataOptionsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PSIsDataRoamingEnabled();
    v5 = @"disabled";
    if (v4)
    {
      v5 = @"enabled";
    }

    v9 = 136315394;
    v10 = "[PSUICellularDataOptionsController getDataRoamingStatus:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s roaming is %@", &v9, 0x16u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:PSIsDataRoamingEnabled()];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getDataRoamingStatusForService:(id)service
{
  v17 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularDataOptionsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    serviceDescriptor = self->_serviceDescriptor;
    v6 = PSIsDataRoamingEnabledForService(serviceDescriptor);
    v7 = @"disabled";
    v12 = "[PSUICellularDataOptionsController getDataRoamingStatusForService:]";
    v11 = 136315650;
    v13 = 2112;
    v14 = serviceDescriptor;
    if (v6)
    {
      v7 = @"enabled";
    }

    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s For service %@, roaming is %@", &v11, 0x20u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:PSIsDataRoamingEnabledForService(self->_serviceDescriptor)];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setDataRoamingEnabled:(id)enabled specifier:(id)specifier
{
  v25 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  bOOLValue = [enabled BOOLValue];
  objc_storeStrong(&self->_roamingSpecifier, specifier);
  getLogger = [(PSUICellularDataOptionsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"disabled";
    if (bOOLValue)
    {
      v10 = @"enabled";
    }

    *buf = 136315394;
    v22 = "[PSUICellularDataOptionsController setDataRoamingEnabled:specifier:]";
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting roaming = %@", buf, 0x16u);
  }

  if (bOOLValue)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice sf_isiPad])
    {

LABEL_13:
      selfCopy2 = self;
      v13 = 1;
      goto LABEL_14;
    }

    v14 = _os_feature_enabled_impl();

    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }

    ctClient = self->_ctClient;
    v20 = 0;
    v16 = [(CoreTelephonyClient *)ctClient shouldShowRoamingEducation:&v20];
    v17 = v20;
    if (v16)
    {
      if ([v16 BOOLValue])
      {
        [(PSUICellularDataOptionsController *)self launchDataRoamingWarningFlow];
LABEL_21:

        goto LABEL_15;
      }

      getLogger2 = [(PSUICellularDataOptionsController *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Rate limited", buf, 2u);
      }
    }

    else
    {
      getLogger2 = [(PSUICellularDataOptionsController *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v17;
        _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Error with checking setup eSIM: %@", buf, 0xCu);
      }
    }

    [(PSUICellularDataOptionsController *)self _setDataRoamingEnabledHelper:1 specifier:specifierCopy];
    goto LABEL_21;
  }

  selfCopy2 = self;
  v13 = 0;
LABEL_14:
  [(PSUICellularDataOptionsController *)selfCopy2 _setDataRoamingEnabledHelper:v13 specifier:specifierCopy];
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setDataRoamingEnabledForService:(id)service specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  bOOLValue = [service BOOLValue];
  getLogger = [(PSUICellularDataOptionsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    serviceDescriptor = self->_serviceDescriptor;
    v8 = @"disabled";
    v11 = "[PSUICellularDataOptionsController setDataRoamingEnabledForService:specifier:]";
    v10 = 136315650;
    if (bOOLValue)
    {
      v8 = @"enabled";
    }

    v12 = 2112;
    v13 = serviceDescriptor;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s For service %@, setting roaming = %@", &v10, 0x20u);
  }

  PSSetDataRoamingEnabledForService(self->_serviceDescriptor, bOOLValue);
  [(PSUICellularDataOptionsController *)self roamingOptionsDidChange];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCDMARoamingEnabled:(id)enabled specifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  getLogger = [(PSUICellularDataOptionsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [enabledCopy BOOLValue];
    v8 = @"disabled";
    if (bOOLValue)
    {
      v8 = @"enabled";
    }

    v10 = 136315394;
    v11 = "[PSUICellularDataOptionsController setCDMARoamingEnabled:specifier:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting CDMA roaming = %@", &v10, 0x16u);
  }

  [enabledCopy BOOLValue];
  PSSetCDMARoamingEnabled();
  [(PSUICellularDataOptionsController *)self roamingOptionsDidChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getCDMARoamingStatus:(id)status
{
  v17 = *MEMORY[0x277D85DE8];
  selectedPlanItem = [(PSUICellularPlanManagerCache *)self->_planManagerCache selectedPlanItem];
  [selectedPlanItem isBackedByCellularPlan];

  serverConnection = self->_serverConnection;
  CDMAInternationalRoaming = _CTServerConnectionGetCDMAInternationalRoaming();
  v7 = HIDWORD(CDMAInternationalRoaming);
  if (HIDWORD(CDMAInternationalRoaming))
  {
    v9 = CDMAInternationalRoaming;
    getLogger = [(PSUICellularDataOptionsController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v14 = v9;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Failed to get CDMAInternationalRoaming setting with error %i:%i", buf, 0xEu);
    }

    v8 = MEMORY[0x277CBEC28];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)roamingOptionsDidChange
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
}

- (void)launchDataRoamingWarningFlow
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D49590];
  v12[0] = *MEMORY[0x277D49548];
  v12[1] = v3;
  v13[0] = &unk_287748F60;
  v13[1] = &unk_287749230;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v5 = [MEMORY[0x277D49530] flowWithOptions:v4];
  flow = self->_flow;
  self->_flow = v5;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  objc_initWeak(&location, self);
  v7 = self->_flow;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__PSUICellularDataOptionsController_launchDataRoamingWarningFlow__block_invoke;
  v9[3] = &unk_279BA9EC8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [(TSSIMSetupFlow *)v7 firstViewController:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  v8 = *MEMORY[0x277D85DE8];
}

void __65__PSUICellularDataOptionsController_launchDataRoamingWarningFlow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658DE000, v6, OS_LOG_TYPE_ERROR, "Invalid PSUICellularDataOptionsController", v7, 2u);
    }

    goto LABEL_7;
  }

  if (![WeakRetained isModalInPresentation])
  {
    v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
    [v6 setModalPresentationStyle:2];
    [v5 presentViewController:v6 animated:1 completion:0];
LABEL_7:

    goto LABEL_8;
  }

  [v5 showController:v3 animate:1];
LABEL_8:
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v11 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularDataOptionsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    completedCopy = completed;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Data roaming warning flow completed with type %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PSUICellularDataOptionsController_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9FE0;
  objc_copyWeak(v8, buf);
  v8[1] = completed;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PSUICellularDataOptionsController_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) _setDataRoamingEnabledHelper:*(a1 + 48) != 1 specifier:WeakRetained[184]];
    [*(a1 + 32) reloadSpecifiers];
    v3 = v5[192];
    v5[192] = 0;

    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  return MEMORY[0x2821F96F8]();
}

@end