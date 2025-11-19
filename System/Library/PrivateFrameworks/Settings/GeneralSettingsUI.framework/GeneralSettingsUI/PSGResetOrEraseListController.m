@interface PSGResetOrEraseListController
+ (BOOL)isLargeTextEnabled;
- (BOOL)_networkConnectivityAvailable;
- (BOOL)isRatchetFeatureAvailableAndEnabled;
- (PSGResetOrEraseListController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_resetWithMode:(int64_t)a3 andOptions:(id)a4 withSpecifier:(id)a5;
- (void)_showStockholmLocallyStoredValueOfflineWarningIfNeeded:(id)a3;
- (void)carrierBundleChange:(id)a3;
- (void)confirmEraseCellularSettings;
- (void)confirmationSpecifierConfirmed:(id)a3;
- (void)dealloc;
- (void)didAcceptEnteredPIN:(id)a3;
- (void)didAppear;
- (void)didSelectAlertAction:(id)a3;
- (void)eraseCellularSettings;
- (void)eraseSettings:(id)a3;
- (void)loadView;
- (void)prepareMutableSpecifiers;
- (void)refreshLocationServicesAvailable;
- (void)resetAllCellularNetworks:(id)a3;
- (void)resetContacts;
- (void)resetImproveSiriAndDictation;
- (void)resetKeyboardDictionary:(id)a3;
- (void)resetNetworkPrivacy;
- (void)resetNetworkSettings:(id)a3;
- (void)resetPersonalHandwritingStyle:(id)a3;
- (void)resetPrivacyWarnings:(id)a3;
- (void)resetSceneUnderstandingData:(id)a3;
- (void)showPINSheetFromParentViewController:(id)a3;
- (void)showResetActionSheet:(id)a3;
- (void)subscriberOptions:(id)a3;
- (void)updateLocationResetSpecifier;
- (void)viewDidLoad;
@end

@implementation PSGResetOrEraseListController

- (PSGResetOrEraseListController)init
{
  v7.receiver = self;
  v7.super_class = PSGResetOrEraseListController;
  v2 = [(PSGResetOrEraseListController *)&v7 init];
  if (v2)
  {
    v2->_requireRestrictionsCode = [MEMORY[0x277D4D8E8] settingEnabled];
    v2->_requirePasscode = [MEMORY[0x277D3F910] settingEnabled];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionRestrictionChangedNotification" object:0];

    v4 = objc_alloc_init(MEMORY[0x277CC37B0]);
    client = v2->__client;
    v2->__client = v4;

    [(CoreTelephonyClient *)v2->__client setDelegate:v2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = PSGResetOrEraseListController;
  [(PSGResetOrEraseListController *)&v27 viewDidLoad];
  v3 = [(PSGResetOrEraseListController *)self table];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = MEMORY[0x277CCAAD0];
  v26 = [(PSGResetOrEraseListController *)self table];
  v24 = [v26 leadingAnchor];
  v25 = [(PSGResetOrEraseListController *)self view];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v28[0] = v22;
  v21 = [(PSGResetOrEraseListController *)self table];
  v19 = [v21 trailingAnchor];
  v20 = [(PSGResetOrEraseListController *)self view];
  v18 = [v20 trailingAnchor];
  v16 = [v19 constraintEqualToAnchor:v18];
  v28[1] = v16;
  v15 = [(PSGResetOrEraseListController *)self table];
  v4 = [v15 topAnchor];
  v5 = [(PSGResetOrEraseListController *)self view];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v28[2] = v7;
  v8 = [(PSGResetOrEraseListController *)self table];
  v9 = [v8 bottomAnchor];
  v10 = [(PSGResetOrEraseListController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v28[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v17 activateConstraints:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PSGResetOrEraseListController;
  [(PSGResetOrEraseListController *)&v5 loadView];
  v3 = [(PSGResetOrEraseListController *)self table];
  [v3 setScrollEnabled:0];

  v4 = [(PSGResetOrEraseListController *)self table];
  [v4 _setTopPadding:0.0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSGResetOrEraseListController;
  [(PSGResetOrEraseListController *)&v4 dealloc];
}

- (void)updateLocationResetSpecifier
{
  v3 = [(PSGResetOrEraseListController *)self _cachedLocationServicesAvailableValue];

  if (!v3)
  {
    [(PSGResetOrEraseListController *)self refreshLocationServicesAvailable];
  }

  v4 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  v5 = [(PSGResetOrEraseListController *)self _cachedLocationServicesAvailableValue];
  v6 = [v5 BOOLValue];

  v7 = [(PSGResetOrEraseListController *)self containsSpecifier:self->_locationSpecifier];
  v8 = v6 ^ 1 | v4;
  if ((v8 & 1) != 0 && v7)
  {
    locationSpecifier = self->_locationSpecifier;

    [(PSGResetOrEraseListController *)self removeSpecifier:locationSpecifier];
  }

  else if (((v8 | v7) & 1) == 0)
  {
    v10 = self->_locationSpecifier;
    locationSpecifierIndex = self->_locationSpecifierIndex;

    [(PSGResetOrEraseListController *)self insertSpecifier:v10 atIndex:locationSpecifierIndex];
  }
}

- (void)didAcceptEnteredPIN:(id)a3
{
  v4 = a3;
  ++self->_codesEntered;
  v5 = [(PSSpecifier *)self->_currentSpecifier propertyForKey:*MEMORY[0x277D400B8]];
  v6 = [v5 isEqualToString:@"DevicePINController"];

  passcode = _PSGLoggingFacility();
  v8 = os_log_type_enabled(passcode, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, passcode, OS_LOG_TYPE_DEFAULT, "Accepted passcode.", buf, 2u);
    }

    v9 = v4;
    passcode = self->_passcode;
    self->_passcode = v9;
  }

  else if (v8)
  {
    *v10 = 0;
    _os_log_impl(&dword_21CF20000, passcode, OS_LOG_TYPE_DEFAULT, "Accepted restrictions passcode.", v10, 2u);
  }

  self->_returningFromPINSheetWithSuccess = 1;
}

- (void)didAppear
{
  if (self->_returningFromPINSheetWithSuccess)
  {
    currentSpecifier = self->_currentSpecifier;
    if (self->_codesEntered >= self->_codesNeeded)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = self->_currentSpecifier;
      if (isKindOfClass)
      {
        [(PSGResetOrEraseListController *)self showConfirmationViewForSpecifier:v5];
      }

      else
      {
        [(PSGResetOrEraseListController *)self performButtonActionForSpecifier:v5];
      }
    }

    else
    {
      [(PSSpecifier *)self->_currentSpecifier setProperty:@"PSRestrictionsPINController" forKey:*MEMORY[0x277D400B8]];
      [(PSSpecifier *)self->_currentSpecifier setProperty:MEMORY[0x277CBEC38] forKey:@"screenTimePinEntry"];
      [(PSGResetOrEraseListController *)self performSelector:sel_showPINSheetFromParentViewController_ withObject:self->_currentSpecifier afterDelay:0.0];
    }
  }

  self->_returningFromPINSheetWithSuccess = 0;
}

- (void)resetKeyboardDictionary:(id)a3
{
  v3 = _PSGLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "Resetting keyboard dictionary", v4, 2u);
  }

  [MEMORY[0x277D75658] removeAllDynamicDictionaries];
}

void __52__PSGResetOrEraseListController_resetIconPositions___block_invoke(uint64_t a1, int a2)
{
  v3 = _PSGLoggingFacility();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      v7 = 0;
      v5 = "SBSResetHomeScreenLayout completed successfully.";
      v6 = &v7;
LABEL_6:
      _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    *buf = 0;
    v5 = "SBSResetHomeScreenLayout failed.";
    v6 = buf;
    goto LABEL_6;
  }
}

- (void)resetNetworkPrivacy
{
  v2 = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  [v2 repopulateNetworkPrivacyConfigurationResetAll:1];
}

- (void)resetPrivacyWarnings:(id)a3
{
  v4 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D4D8F8], self, 0, 1u);
  v6 = objc_alloc_init(MEMORY[0x277CC6370]);
  [v6 revokeAccessToAllBundles];
  v7 = [MEMORY[0x277CBFC10] sharedManager];
  [v7 resetApps];

  v8 = [MEMORY[0x277D75D80] sharedPolicyDecider];
  [v8 clearAllCaches];

  v55 = 0;
  v56 = &v55;
  v57 = 0x2050000000;
  v9 = getFMDFMIPManagerClass_softClass;
  v58 = getFMDFMIPManagerClass_softClass;
  if (!getFMDFMIPManagerClass_softClass)
  {
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __getFMDFMIPManagerClass_block_invoke;
    v53 = &unk_278325308;
    v54 = &v55;
    __getFMDFMIPManagerClass_block_invoke(&v50);
    v9 = v56[3];
  }

  v10 = v9;
  _Block_object_dispose(&v55, 8);
  v11 = [v9 sharedInstance];
  [v11 clearData:1 completion:&__block_literal_global_67];

  [(PSGResetOrEraseListController *)self resetNetworkPrivacy];
  [(PSGResetOrEraseListController *)self resetContacts];
  TCCAccessResetAll();
  v12 = *MEMORY[0x277D6C100];
  TCCAccessReset();
  v13 = *MEMORY[0x277D6C118];
  TCCAccessReset();
  v14 = *MEMORY[0x277D6C1D0];
  TCCAccessReset();
  v15 = *MEMORY[0x277D6C1D8];
  TCCAccessReset();
  v16 = *MEMORY[0x277D6C1E0];
  TCCAccessReset();
  v17 = MEMORY[0x277D6C110];
  v18 = *MEMORY[0x277D6C110];
  TCCAccessReset();
  v19 = *v17;
  TCCAccessReset();
  v20 = *MEMORY[0x277D6C1A8];
  TCCAccessReset();
  v21 = *MEMORY[0x277D6C218];
  TCCAccessReset();
  v22 = *MEMORY[0x277D6C120];
  TCCAccessReset();
  v23 = *MEMORY[0x277D6C168];
  TCCAccessReset();
  v24 = *MEMORY[0x277D6C180];
  TCCAccessReset();
  v25 = *MEMORY[0x277D6C190];
  TCCAccessReset();
  v26 = *MEMORY[0x277D6C200];
  TCCAccessReset();
  v27 = MEMORY[0x277D6C1B0];
  v28 = *MEMORY[0x277D6C1B0];
  TCCAccessReset();
  v29 = *MEMORY[0x277D6C188];
  TCCAccessReset();
  v30 = *MEMORY[0x277D6C258];
  TCCAccessReset();
  v31 = *MEMORY[0x277D6C148];
  TCCAccessReset();
  v32 = *MEMORY[0x277D6C1A0];
  TCCAccessReset();
  v33 = *MEMORY[0x277D6C210];
  TCCAccessReset();
  v34 = MEMORY[0x277D6C158];
  v35 = *MEMORY[0x277D6C158];
  TCCAccessReset();
  v36 = *MEMORY[0x277D6C248];
  TCCAccessReset();
  v37 = *v27;
  TCCAccessSetOverride();
  v38 = *v34;
  TCCAccessSetOverride();
  if (SensorKitLibraryCore())
  {
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v39 = getSRResetAllAuthorizationsSymbolLoc_ptr;
    v58 = getSRResetAllAuthorizationsSymbolLoc_ptr;
    if (!getSRResetAllAuthorizationsSymbolLoc_ptr)
    {
      v50 = MEMORY[0x277D85DD0];
      v51 = 3221225472;
      v52 = __getSRResetAllAuthorizationsSymbolLoc_block_invoke;
      v53 = &unk_278325308;
      v54 = &v55;
      v40 = SensorKitLibrary();
      v41 = dlsym(v40, "SRResetAllAuthorizations");
      *(v54[1] + 24) = v41;
      getSRResetAllAuthorizationsSymbolLoc_ptr = *(v54[1] + 24);
      v39 = v56[3];
    }

    _Block_object_dispose(&v55, 8);
    if (!v39)
    {
      v49 = [PSGResetOrEraseListController resetPrivacyWarnings:];
      _Block_object_dispose(&v55, 8);
      _Unwind_Resume(v49);
    }

    v39();
    v55 = 0;
    v56 = &v55;
    v57 = 0x2050000000;
    v42 = getSRAuthorizationClientClass_softClass;
    v58 = getSRAuthorizationClientClass_softClass;
    if (!getSRAuthorizationClientClass_softClass)
    {
      v50 = MEMORY[0x277D85DD0];
      v51 = 3221225472;
      v52 = __getSRAuthorizationClientClass_block_invoke;
      v53 = &unk_278325308;
      v54 = &v55;
      __getSRAuthorizationClientClass_block_invoke(&v50);
      v42 = v56[3];
    }

    v43 = v42;
    _Block_object_dispose(&v55, 8);
    v44 = [v42 sharedInstance];
    [v44 setFirstRunOnboardingCompleted:0];
  }

  [(PSGResetOrEraseListController *)self resetImproveSiriAndDictation];
  v45 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  if (([v45 containsObject:@"advertising"] & 1) == 0)
  {
    v46 = [MEMORY[0x277D262A0] sharedConnection];
    [v46 setBoolValue:0 forSetting:*MEMORY[0x277D25F40]];
  }

  v47 = [MEMORY[0x277D262A0] sharedConnection];
  [v47 setBoolValue:0 forSetting:*MEMORY[0x277D25E58]];

  v48 = [MEMORY[0x277D262A0] sharedConnection];
  [v48 setBoolValue:0 forSetting:*MEMORY[0x277D25D00]];

  lockdown_delete_pair_records();
}

void __54__PSGResetOrEraseListController_resetPrivacyWarnings___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _PSGLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "Error clearing FMDFMIPManager %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resetContacts
{
  [MEMORY[0x277CBDC88] resetLog];
  v2 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  if (objc_opt_respondsToSelector())
  {
    [v2 dropAllLimitedAccessRowsAndSyncNotify];
  }
}

- (void)resetImproveSiriAndDictation
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__PSGResetOrEraseListController_resetImproveSiriAndDictation__block_invoke;
  v3[3] = &unk_2783251F0;
  objc_copyWeak(&v4, &location);
  [v2 setSiriDataSharingOptInStatus:0 propagateToHomeAccessories:0 source:7 reason:@"Reset" completion:v3];
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
}

void __61__PSGResetOrEraseListController_resetImproveSiriAndDictation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__PSGResetOrEraseListController_resetImproveSiriAndDictation__block_invoke_2;
  v5[3] = &unk_2783251C8;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __61__PSGResetOrEraseListController_resetImproveSiriAndDictation__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _PSGLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__PSGResetOrEraseListController_resetImproveSiriAndDictation__block_invoke_2_cold_1(a1, v1, v3);
    }
  }
}

- (void)resetPersonalHandwritingStyle:(id)a3
{
  v3 = a3;
  v4 = _PSGLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_21CF20000, v4, OS_LOG_TYPE_DEFAULT, "Resetting personal handwriting style", v7, 2u);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = getCHResetInventorySymbolLoc_ptr;
  v11 = getCHResetInventorySymbolLoc_ptr;
  if (!getCHResetInventorySymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getCHResetInventorySymbolLoc_block_invoke;
    v7[3] = &unk_278325308;
    v7[4] = &v8;
    __getCHResetInventorySymbolLoc_block_invoke(v7);
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    v6 = [PSGResetOrEraseListController resetPrivacyWarnings:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v5();
}

- (void)_resetWithMode:(int64_t)a3 andOptions:(id)a4 withSpecifier:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v10 = getDDRResetOptionsClass_softClass;
    v30 = getDDRResetOptionsClass_softClass;
    if (!getDDRResetOptionsClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&v32 = 3221225472;
      *(&v32 + 1) = __getDDRResetOptionsClass_block_invoke;
      v33 = &unk_278325308;
      v34 = &v27;
      __getDDRResetOptionsClass_block_invoke(buf);
      v10 = v28[3];
    }

    v11 = v10;
    _Block_object_dispose(&v27, 8);
    v8 = objc_alloc_init(v10);
  }

  passcode = self->_passcode;
  if (a3 == 3)
  {
    if (passcode)
    {
      v13 = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [v13 isPasscodeRequiredByProfiles];

      if ((v14 & 1) == 0)
      {
        v15 = [MEMORY[0x277D262A0] sharedConnection];
        [v15 changePasscodeFrom:self->_passcode to:0 outError:0];
      }

      v16 = self->_passcode;
      self->_passcode = 0;
    }

    [(PSGResetOrEraseListController *)self resetPrivacyWarnings:0];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v17 = getMBManagerClass_softClass;
    v30 = getMBManagerClass_softClass;
    if (!getMBManagerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&v32 = 3221225472;
      *(&v32 + 1) = __getMBManagerClass_block_invoke;
      v33 = &unk_278325308;
      v34 = &v27;
      __getMBManagerClass_block_invoke(buf);
      v17 = v28[3];
    }

    v18 = v17;
    _Block_object_dispose(&v27, 8);
    v19 = [[v17 alloc] initWithDelegate:self];
    [v19 unsetLocalBackupPasswordWithError:0];
  }

  else
  {
    self->_passcode = 0;

    if (a3 != 2)
    {
      goto LABEL_16;
    }

    v19 = [MEMORY[0x277D262A0] sharedConnection];
    [v19 checkCarrierProfileForceInstallation:1];
  }

LABEL_16:
  if (v9)
  {
    [(PSGResetOrEraseListController *)self configureSpin:1 ofCellForSpecifier:v9 setEnabled:0];
  }

  v20 = _PSGLoggingFacility();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = a3;
    LOWORD(v32) = 2112;
    *(&v32 + 2) = v8;
    _os_log_impl(&dword_21CF20000, v20, OS_LOG_TYPE_DEFAULT, "########### Calling DDRReset with mode: %d; options: %@", buf, 0x12u);
  }

  v21 = dispatch_get_global_queue(0, 0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__PSGResetOrEraseListController__resetWithMode_andOptions_withSpecifier___block_invoke;
  v24[3] = &unk_278325218;
  v25 = v8;
  v26 = a3;
  v22 = v8;
  dispatch_async(v21, v24);

  v23 = *MEMORY[0x277D85DE8];
}

void __73__PSGResetOrEraseListController__resetWithMode_andOptions_withSpecifier___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v2 = getDDRResetRequestClass_softClass;
  v16 = getDDRResetRequestClass_softClass;
  if (!getDDRResetRequestClass_softClass)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __getDDRResetRequestClass_block_invoke;
    v11 = &unk_278325308;
    v12 = &v13;
    __getDDRResetRequestClass_block_invoke(&v8);
    v2 = v14[3];
  }

  v3 = v2;
  _Block_object_dispose(&v13, 8);
  v4 = [[v2 alloc] initWithMode:*(a1 + 40) options:*(a1 + 32) reason:@"EACS-Settings"];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getDDRResetServiceClass_softClass;
  v16 = getDDRResetServiceClass_softClass;
  if (!getDDRResetServiceClass_softClass)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __getDDRResetServiceClass_block_invoke;
    v11 = &unk_278325308;
    v12 = &v13;
    __getDDRResetServiceClass_block_invoke(&v8);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  v7 = [v5 sharedInstance];
  [v7 resetWithRequest:v4 completion:0];
}

- (BOOL)_networkConnectivityAvailable
{
  v6 = *MEMORY[0x277D85DE8];
  flags = 0;
  address = xmmword_21CF58A90;
  _networkConnectivityAvailable_reachability = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &address);
  if (SCNetworkReachabilityGetFlags(_networkConnectivityAvailable_reachability, &flags))
  {
    result = (flags & 2) != 0;
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_showStockholmLocallyStoredValueOfflineWarningIfNeeded:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSGResetOrEraseListController *)self _networkConnectivityAvailable];
  v6 = PSStockholmLocallyStoredValuePassNames();
  v7 = [v6 count];
  v8 = _PSGLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v33 = !v5;
    v34 = 1024;
    v35 = v7 != 0;
    _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "isOffline: %d, hasLocallyStoredValue: %d", buf, 0xEu);
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1;
  }

  v10 = _PSGLoggingFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v10, OS_LOG_TYPE_DEFAULT, "_showStockholmLocallyStoredValueOfflineWarningIfNeeded completed directly", buf, 2u);
    }

    v4[2](v4, 1);
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v10, OS_LOG_TYPE_DEFAULT, "Showing payment card warning.", buf, 2u);
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = PSG_LocalizedStringForReset(@"ERASE_STOCKHOLM_STORED_VALUE_OFFLINE_TITLE_SINGLE");
    v14 = [v6 firstObject];
    v15 = [v12 stringWithFormat:v13, v14];

    v16 = PSG_LocalizedStringForReset(@"ERASE_STOCKHOLM_STORED_VALUE_OFFLINE_MSG_SINGLE");
    if ([v6 count] >= 2)
    {
      v17 = PSG_LocalizedStringForReset(@"ERASE_STOCKHOLM_STORED_VALUE_OFFLINE_TITLE_MULTIPLE");

      v18 = PSG_LocalizedStringForReset(@"ERASE_STOCKHOLM_STORED_VALUE_OFFLINE_MSG_MULTIPLE");

      v16 = v18;
      v15 = v17;
    }

    v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:v16 preferredStyle:1];
    v20 = MEMORY[0x277D750F8];
    v21 = PSG_LocalizedStringForReset(@"ERASE_STOCKHOLM_STORED_VALUE_OFFLINE_ALERT_CANCEL");
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __88__PSGResetOrEraseListController__showStockholmLocallyStoredValueOfflineWarningIfNeeded___block_invoke;
    v30[3] = &unk_278325240;
    v22 = v4;
    v31 = v22;
    v23 = [v20 actionWithTitle:v21 style:0 handler:v30];
    [v19 addAction:v23];

    v24 = MEMORY[0x277D750F8];
    v25 = PSG_LocalizedStringForReset(@"ERASE_STOCKHOLM_STORED_VALUE_OFFLINE_ALERT_ACCEPT");
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __88__PSGResetOrEraseListController__showStockholmLocallyStoredValueOfflineWarningIfNeeded___block_invoke_112;
    v28[3] = &unk_278325240;
    v29 = v22;
    v26 = [v24 actionWithTitle:v25 style:2 handler:v28];
    [v19 addAction:v26];

    [(PSGResetOrEraseListController *)self presentViewController:v19 animated:1 completion:0];
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __88__PSGResetOrEraseListController__showStockholmLocallyStoredValueOfflineWarningIfNeeded___block_invoke(uint64_t a1)
{
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "Payment card warning: Cancelled.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __88__PSGResetOrEraseListController__showStockholmLocallyStoredValueOfflineWarningIfNeeded___block_invoke_112(uint64_t a1)
{
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "Payment card warning: Erase.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)confirmationSpecifierConfirmed:(id)a3
{
  v4 = a3;
  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "Confirmed.", buf, 2u);
  }

  self->_shouldEraseCellularPlans = 0;
  v6 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v7 = PSG_LocalizedStringForReset(@"RESET_CONFIRMATION_CANCEL");
  [v6 setCancelButton:v7];

  [v6 setProperty:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277D3FE80]];
  v8 = [v4 identifier];
  v9 = [v8 isEqualToString:@"settingsErase"];

  if (v9)
  {
    [v6 setConfirmationAction:sel_eraseSettings_];
    v10 = PSG_LocalizedStringForReset(@"RESET_CONFIRMATION_ALERT_ACCEPT");
    [v6 setOkButton:v10];

    v11 = PSG_LocalizedStringForReset(@"CLEAR_TITLE");
    [v6 setTitle:v11];

    v12 = @"CLEAR_SETTINGS_MSG_CONFIRM";
    if (PSHasStockholmPass())
    {
      v13 = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [v13 isPasscodeRequiredByProfiles];

      if (!v14)
      {
        v12 = @"CLEAR_SETTINGS_MSG_CONFIRM_STOCKHOLM";
      }
    }

    v15 = PSG_LocalizedStringForReset(v12);
    [v6 setPrompt:v15];

    v16 = _PSGLoggingFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v25 = 0;
    v17 = "Showing second confirmation for Settings Erase.";
    v18 = &v25;
    goto LABEL_12;
  }

  v19 = [v4 identifier];
  v20 = [v19 isEqualToString:@"cellularErase"];

  if (v20)
  {
    [v6 setConfirmationAction:sel_resetAllCellularNetworks_];
    v21 = PSG_LocalizedStringForReset(@"RESET_CONFIRMATION_ALERT_ACCEPT");
    [v6 setOkButton:v21];

    v22 = PSG_LocalizedStringForReset(@"REMOVE_ALL_CELLULAR_PLANS_LABEL");
    [v6 setTitle:v22];

    v23 = PSG_LocalizedStringForReset(@"REMOVE_ALL_CELLULAR_PLANS_MSG_CONFIRM");
    [v6 setPrompt:v23];

    v16 = _PSGLoggingFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      [(PSGResetOrEraseListController *)self showConfirmationViewForSpecifier:v6];
      goto LABEL_14;
    }

    *v24 = 0;
    v17 = "Showing second confirmation for Erase All Cellular Networks.";
    v18 = v24;
LABEL_12:
    _os_log_impl(&dword_21CF20000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)eraseSettings:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PSGResetOrEraseListController_eraseSettings___block_invoke;
  v3[3] = &unk_278325070;
  v3[4] = self;
  [(PSGResetOrEraseListController *)self _showStockholmLocallyStoredValueOfflineWarningIfNeeded:v3];
}

void __47__PSGResetOrEraseListController_eraseSettings___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) specifierForID:@"settingsErase"];
    [*(a1 + 32) _resetWithMode:3 andOptions:0 withSpecifier:v3];
  }
}

- (void)resetNetworkSettings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D6B500]);
  v6 = [v5 initWorkspaceWithService:*MEMORY[0x277D6B6A0]];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D6B6E8]) initWithWorkspace:v6];
    if (v7)
    {
      v8 = dispatch_semaphore_create(0);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__PSGResetOrEraseListController_resetNetworkSettings___block_invoke;
      v14[3] = &unk_278325070;
      v9 = v8;
      v15 = v9;
      if (([v7 resetDataForKeys:0 reply:v14]& 1) != 0)
      {
        v10 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(v9, v10))
        {
          v11 = _PSGLoggingFacility();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_DEFAULT, "resetDataForKeys did not complete. Bailing to avoid a hang", buf, 2u);
          }
        }

        lockdown_delete_pair_records();
        v12 = _PSGLoggingFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21CF20000, v12, OS_LOG_TYPE_DEFAULT, "Proceed reset network settings", buf, 2u);
        }

        [(PSGResetOrEraseListController *)self _resetWithMode:2 andOptions:0 withSpecifier:v4];
      }

      else
      {
        v13 = _PSGLoggingFacility();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21CF20000, v13, OS_LOG_TYPE_DEFAULT, "resetDataForKeys unable to contact service", buf, 2u);
        }
      }
    }

    else
    {
      v9 = _PSGLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21CF20000, v9, OS_LOG_TYPE_DEFAULT, "Unable to create NetworkPerformanceFeed", buf, 2u);
      }
    }
  }

  else
  {
    v7 = _PSGLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "Unable to create AnalyticsWorkspace", buf, 2u);
    }
  }
}

intptr_t __54__PSGResetOrEraseListController_resetNetworkSettings___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = _PSGLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "resetDataForKeys failure", v5, 2u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)resetSceneUnderstandingData:(id)a3
{
  v4 = a3;
  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "Resetting scene understanding data", v6, 2u);
  }

  [(PSGResetOrEraseListController *)self _resetWithMode:1 andOptions:0 withSpecifier:v4];
}

- (void)resetAllCellularNetworks:(id)a3
{
  v3 = dispatch_semaphore_create(0);
  v4 = [MEMORY[0x277CF96D8] sharedManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__PSGResetOrEraseListController_resetAllCellularNetworks___block_invoke;
  v6[3] = &unk_278325268;
  v7 = v3;
  v5 = v3;
  [v4 eraseAllPlans:v6];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __58__PSGResetOrEraseListController_resetAllCellularNetworks___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _PSGLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__PSGResetOrEraseListController_resetAllCellularNetworks___block_invoke_cold_1(v4, v5);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v6 = [(PSGResetOrEraseListController *)self loadSpecifiersFromPlistName:@"Reset" target:self];
    v7 = [v5 initWithArray:v6];
    mutableSpecifiers = self->_mutableSpecifiers;
    self->_mutableSpecifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = MEMORY[0x277D3FAD8];
    v11 = PSG_LocalizedStringForReset(@"RESET");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v12 setButtonAction:sel_showResetActionSheet_];
    v13 = [(NSMutableArray *)self->_mutableSpecifiers specifierForID:@"fullErase"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        v15 = PSG_LocalizedStringForReset(@"ERASE_OK");
        [v14 setTitle:v15];

        v16 = PSG_LocalizedStringForReset(@"FULL_RESET_QUICK_MSG");
        [v14 setPrompt:v16];
      }
    }

    v17 = [MEMORY[0x277D262A0] sharedConnection];
    v18 = [v17 effectiveBoolValueForSetting:*MEMORY[0x277D25E88]];

    if (v18 == 2)
    {
      [v13 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    [v9 addObject:v12];
    [v9 addObject:v13];
    v19 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)prepareMutableSpecifiers
{
  if ([(PSGResetOrEraseListController *)self customizedMutableSpecifiers:self->_mutableSpecifiers])
  {
    return;
  }

  v3 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (v3)
  {
    mutableSpecifiers = self->_mutableSpecifiers;
    v5 = [(NSMutableArray *)mutableSpecifiers specifierForID:@"settingsErase"];
    [(NSMutableArray *)mutableSpecifiers removeObject:v5];

    v6 = self->_mutableSpecifiers;
    v7 = [(NSMutableArray *)v6 specifierForID:@"fullErase"];
    [(NSMutableArray *)v6 removeObject:v7];

    v8 = self->_mutableSpecifiers;
    v9 = [(NSMutableArray *)v8 specifierForID:@"fullEraseIPod"];
    [(NSMutableArray *)v8 removeObject:v9];

    v10 = self->_mutableSpecifiers;
    v11 = [(NSMutableArray *)v10 specifierForID:@"RESET_KEYBOARD_DICTIONARY_LABEL"];
    [(NSMutableArray *)v10 removeObject:v11];

    v12 = self->_mutableSpecifiers;
    v13 = [(NSMutableArray *)v12 specifierForID:@"RESET_NETWORK_LABEL"];
    [(NSMutableArray *)v12 removeObject:v13];

    v14 = self->_mutableSpecifiers;
    v15 = [(NSMutableArray *)v14 specifierForID:@"cellularErase"];
    [(NSMutableArray *)v14 removeObject:v15];

    v16 = self->_mutableSpecifiers;
    v17 = [(NSMutableArray *)v16 specifierForID:@"SUBSCRIBER_SERVICES_ID"];
    [(NSMutableArray *)v16 removeObject:v17];
  }

  v18 = [(PSGResetOrEraseListController *)self _cachedLocationServicesAvailableValue];

  if (!v18)
  {
    [(PSGResetOrEraseListController *)self refreshLocationServicesAvailable];
  }

  v19 = [(PSGResetOrEraseListController *)self _cachedLocationServicesAvailableValue];
  v20 = [v19 BOOLValue];

  v21 = [(NSMutableArray *)self->_mutableSpecifiers specifierForID:@"RESET_PRIVACY_LABEL"];
  locationSpecifier = self->_locationSpecifier;
  self->_locationSpecifier = v21;

  self->_locationSpecifierIndex = [(NSMutableArray *)self->_mutableSpecifiers indexOfObject:self->_locationSpecifier];
  if ((v3 | v20 ^ 1) == 1)
  {
    [(NSMutableArray *)self->_mutableSpecifiers removeObject:self->_locationSpecifier];
  }

  v33 = [(NSMutableArray *)self->_mutableSpecifiers specifierForID:@"settingsErase"];
  if (v33)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (PSHasStockholmPass())
      {
        v23 = [MEMORY[0x277D262A0] sharedConnection];
        v24 = [v23 isPasscodeRequiredByProfiles];

        if ((v24 & 1) == 0)
        {
          v25 = v33;
          v26 = PSG_LocalizedStringForReset(@"CLEAR_SETTINGS_MSG_STOCKHOLM");
          [v25 setPrompt:v26];
        }
      }
    }
  }

  v27 = [MEMORY[0x277D4D8C0] sharedInstance];
  v28 = [v27 embeddedPlanItems];
  if ([v28 count])
  {
    v29 = [MEMORY[0x277D4D8C0] sharedInstance];
    v30 = [v29 isAnyLocalFlowTypeSupported];

    if (v30)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v31 = self->_mutableSpecifiers;
  v32 = [(NSMutableArray *)v31 specifierForID:@"cellularErase"];
  [(NSMutableArray *)v31 removeObject:v32];

LABEL_18:
}

- (void)showResetActionSheet:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  [(PSGResetOrEraseListController *)self prepareMutableSpecifiers];
  mutableSpecifiers = self->_mutableSpecifiers;
  v6 = [(NSMutableArray *)mutableSpecifiers specifierForID:@"fullErase"];
  [(NSMutableArray *)mutableSpecifiers removeObject:v6];

  v7 = self->_mutableSpecifiers;
  v8 = [(NSMutableArray *)v7 specifierForID:@"fullEraseIPod"];
  [(NSMutableArray *)v7 removeObject:v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self;
  v10 = self->_mutableSpecifiers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if ([v15 cellType] == 13)
        {
          v16 = MEMORY[0x277D750F8];
          v17 = [v15 name];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __54__PSGResetOrEraseListController_showResetActionSheet___block_invoke;
          v24[3] = &unk_2783250E0;
          v24[4] = v9;
          v24[5] = v15;
          v18 = [v16 actionWithTitle:v17 style:0 handler:v24];
          [v4 addAction:v18];
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v19 = MEMORY[0x277D750F8];
  v20 = PSG_LocalizedStringForReset(@"RESET_CONFIRMATION_CANCEL");
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__PSGResetOrEraseListController_showResetActionSheet___block_invoke_2;
  v23[3] = &unk_278325290;
  v23[4] = v9;
  v21 = [v19 actionWithTitle:v20 style:1 handler:v23];
  [v4 addAction:v21];

  [(PSGResetOrEraseListController *)v9 presentViewController:v4 animated:1 completion:0];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)didSelectAlertAction:(id)a3
{
  v5 = a3;
  passcode = self->_passcode;
  self->_passcode = 0;

  if (!self->_requirePasscode && !self->_requireRestrictionsCode)
  {
    goto LABEL_23;
  }

  v7 = [v5 propertyForKey:@"pane"];
  v8 = [v7 isEqualToString:@"DevicePINPane"];

  if (!v8)
  {
    goto LABEL_23;
  }

  self->_codesNeeded = 0;
  self->_codesEntered = 0;
  v9 = _PSGLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21CF20000, v9, OS_LOG_TYPE_DEFAULT, "erase require user enter passcode", buf, 2u);
  }

  if (!self->_requireRestrictionsCode)
  {
    goto LABEL_17;
  }

  v10 = _PSGLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_21CF20000, v10, OS_LOG_TYPE_DEFAULT, "Restrictions passcode required.", v21, 2u);
  }

  v11 = [(PSGResetOrEraseListController *)self specifierForID:@"RESET_KEYBOARD_DICTIONARY_LABEL"];
  if (v11 == v5)
  {
LABEL_14:

    goto LABEL_17;
  }

  v12 = [(PSGResetOrEraseListController *)self specifierForID:@"RESET_NETWORK_LABEL"];
  v13 = v12;
  if (v12 == v5)
  {

    goto LABEL_14;
  }

  v14 = [(PSGResetOrEraseListController *)self specifierForID:@"RESET_PRIVACY_LABEL"];
  v15 = v14;
  if (v14 == v5)
  {
    v16 = PSIsLocationRestricted();

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  ++self->_codesNeeded;
  v17 = [MEMORY[0x277CCABB0] numberWithInt:3];
  [v5 setProperty:v17 forKey:@"mode"];

  [v5 setProperty:@"PSRestrictionsPINController" forKey:*MEMORY[0x277D400B8]];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:@"screenTimePinEntry"];
LABEL_17:
  if (self->_requirePasscode)
  {
    v18 = _PSGLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_21CF20000, v18, OS_LOG_TYPE_DEFAULT, "Passcode required.", v20, 2u);
    }

    ++self->_codesNeeded;
    v19 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [v5 setProperty:v19 forKey:@"mode"];

    [(PSSpecifier *)self->_currentSpecifier setProperty:MEMORY[0x277CBEC28] forKey:@"screenTimePinEntry"];
    [v5 setProperty:@"DevicePINController" forKey:*MEMORY[0x277D400B8]];
  }

  objc_storeStrong(&self->_currentSpecifier, a3);
  if (self->_codesNeeded)
  {
    [(PSGResetOrEraseListController *)self showPINSheetFromParentViewController:self->_currentSpecifier];
    goto LABEL_26;
  }

LABEL_23:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PSGResetOrEraseListController *)self showConfirmationViewForSpecifier:v5];
  }

  else
  {
    [(PSGResetOrEraseListController *)self performButtonActionForSpecifier:v5];
  }

LABEL_26:
}

- (void)showPINSheetFromParentViewController:(id)a3
{
  v24[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__PSGResetOrEraseListController_showPINSheetFromParentViewController___block_invoke;
  v21[3] = &unk_278324FE8;
  v21[4] = self;
  v5 = v4;
  v22 = v5;
  v6 = MEMORY[0x223D38F60](v21);
  v7 = [(PSGResetOrEraseListController *)self isRatchetFeatureAvailableAndEnabled];
  v8 = [v5 identifier];
  v9 = [v8 isEqualToString:@"settingsErase"];

  if (v9 && v7)
  {
    v10 = [objc_alloc(MEMORY[0x277CD47A8]) initWithIdentifier:@"ResetAllSettings"];
    v23[0] = &unk_282E8FE48;
    v11 = PSG_LocalizedStringForReset(@"DTO_GENERIC_SECURITY_DELAY_BEGIN_TITLE");
    v24[0] = v11;
    v23[1] = &unk_282E8FE60;
    v12 = PSG_LocalizedStringForReset(@"DTO_GENERIC_SECURITY_DELAY_BEGIN_DESCRIPTION");
    v24[1] = v12;
    v23[2] = &unk_282E8FE78;
    v13 = PSG_LocalizedStringForReset(@"DTO_GENERIC_IN_PROGRESS_COUNTDOWN_DESCRIPTION");
    v24[2] = v13;
    v23[3] = &unk_282E8FE30;
    v14 = PSG_LocalizedStringForReset(@"DTO_GENERIC_SECURITY_DELAY_BEGIN_DESCRIPTION");
    v24[3] = v14;
    v23[4] = &unk_282E8FE90;
    v15 = PSG_LocalizedStringForReset(@"DTO_NOTIFICATION_DESCRIPTION_DEFAULT");
    v24[4] = v15;
    v23[5] = &unk_282E8FEA8;
    v16 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=PASSCODE"];
    v23[6] = &unk_282E8FEC0;
    v24[5] = v16;
    v24[6] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__PSGResetOrEraseListController_showPINSheetFromParentViewController___block_invoke_225;
    v19[3] = &unk_2783252E0;
    v20 = v6;
    [v10 armWithOptions:v17 completion:v19];
  }

  else
  {
    v6[2](v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __70__PSGResetOrEraseListController_showPINSheetFromParentViewController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D3F920];
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(v2);
  [v4 setAllowOptionsButton:0];
  *(*(a1 + 32) + *MEMORY[0x277D3FC38]) = 1;
  [v4 setParentController:v3];
  [*(a1 + 40) setProperty:v3 forKey:*MEMORY[0x277D401B8]];
  [v4 setSpecifier:*(a1 + 40)];
  objc_storeWeak((*(a1 + 40) + *MEMORY[0x277D3FCB8]), *(a1 + 32));
  [*(a1 + 32) showController:v4];
}

void __70__PSGResetOrEraseListController_showPINSheetFromParentViewController___block_invoke_225(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:&unk_282E8FED8];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = _PSGLoggingFacility();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v10, OS_LOG_TYPE_DEFAULT, "Ratchet: Proceeding to perform critical operation as gating was successful", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PSGResetOrEraseListController_showPINSheetFromParentViewController___block_invoke_230;
    block[3] = &unk_2783252B8;
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v10 = v12;
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __70__PSGResetOrEraseListController_showPINSheetFromParentViewController___block_invoke_225_cold_1(v6, v5, v10);
  }
}

- (void)subscriberOptions:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v47[5] = 0;
  v48 = 0u;
  v49 = 0;
  v47[6] = self;
  v4 = *MEMORY[0x277CBECE8];
  v5 = _CTServerConnectionCreate();
  if (v5)
  {
    v6 = v5;
    buf[0] = 0;
    _CTServerConnectionGetResetCellularAccountSettingsIsAllowed();
    CFRelease(v6);
  }

  v7 = MEMORY[0x277D75110];
  v8 = PSG_LocalizedStringForReset(@"SUBSCRIBER_SERVICES");
  v9 = [v7 alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = 0x277D75000uLL;
  v11 = MEMORY[0x277D750F8];
  v12 = PSG_LocalizedStringForReset(@"SUBSCRIBER_SERVICES_CANCEL");
  v13 = [v11 actionWithTitle:v12 style:1 handler:0];
  [v9 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = PSG_LocalizedStringForReset(@"REPROVISION_ACCOUNT");
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __51__PSGResetOrEraseListController_subscriberOptions___block_invoke;
  v47[3] = &unk_278325290;
  v47[4] = self;
  v16 = [v14 actionWithTitle:v15 style:0 handler:v47];
  [v9 addAction:v16];

  v17 = [(PSGResetOrEraseListController *)self _client];
  v46 = 0;
  v18 = [v17 getSubscriptionInfoWithError:&v46];
  v19 = v46;

  if (v19)
  {
    v20 = _PSGLoggingFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PSGResetOrEraseListController subscriberOptions:];
    }
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [v18 subscriptions];
    v22 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v37 = v18;
      v38 = v9;
      v19 = 0;
      v24 = *v43;
      while (2)
      {
        v25 = 0;
        v26 = v19;
        do
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v42 + 1) + 8 * v25);
          v28 = [(PSGResetOrEraseListController *)self _client];
          v41 = v26;
          v29 = [v28 copyCarrierBundleValueWithDefault:v27 key:@"AllowAKEYEditing" bundleType:v21 error:&v41];
          v19 = v41;

          if (v29)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v31 = v29;
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;
              }

              else
              {
                v32 = 0;
              }

              v20 = v32;

              goto LABEL_24;
            }
          }

          if (v19)
          {
            v30 = _PSGLoggingFacility();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "[PSGResetOrEraseListController subscriberOptions:]";
              v52 = 2114;
              v53 = v19;
              _os_log_error_impl(&dword_21CF20000, v30, OS_LOG_TYPE_ERROR, "%s: Error retrieving value: %{public}@.", buf, 0x16u);
            }
          }

          ++v25;
          v26 = v19;
        }

        while (v23 != v25);
        v23 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_24:
      v9 = v38;
      v18 = v37;
      v10 = 0x277D75000;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    if ([v20 BOOLValue])
    {
      v33 = *(v10 + 248);
      v34 = PSG_LocalizedStringForReset(@"RESET_AKEY");
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __51__PSGResetOrEraseListController_subscriberOptions___block_invoke_248;
      v40[3] = &unk_278325290;
      v40[4] = self;
      v35 = [v33 actionWithTitle:v34 style:0 handler:v40];
      [v9 addAction:v35];
    }

    [(PSGResetOrEraseListController *)self presentViewController:v9 animated:1 completion:0];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)eraseCellularSettings
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = _CTServerConnectionCreate();
  if (v3)
  {
    v4 = v3;
    _CTServerConnectionEraseBasebandSettings();
    _CTServerConnectionResetModem();
    CFRelease(v4);
  }
}

- (void)confirmEraseCellularSettings
{
  v7 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v3 = PSG_LocalizedStringForReset(@"ERASE_ACCOUNT_CONFIRMATION_CANCEL");
  [v7 setCancelButton:v3];

  [v7 setProperty:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277D3FE80]];
  [v7 setConfirmationAction:sel_eraseCellularSettings];
  v4 = PSG_LocalizedStringForReset(@"ERASE_ACCOUNT_CONFIRMATION_ALERT_ACCEPT");
  [v7 setOkButton:v4];

  v5 = PSG_LocalizedStringForReset(@"ERASE_ACCOUNT_TITLE");
  [v7 setTitle:v5];

  v6 = PSG_LocalizedStringForReset(@"ERASE_ACCOUNT_MSG_CONFIRM");
  [v7 setPrompt:v6];

  [(PSGResetOrEraseListController *)self showConfirmationViewForSpecifier:v7];
}

- (void)refreshLocationServicesAvailable
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_21CF20000, v0, OS_LOG_TYPE_ERROR, "%s: Error retrieving subscription info: %{public}@.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(PSGResetOrEraseListController *)self set_cachedLocationServicesAvailableValue:0];
    [(PSGResetOrEraseListController *)self updateLocationResetSpecifier];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__PSGResetOrEraseListController_carrierBundleChange___block_invoke;
    v5[3] = &unk_278324FE8;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

uint64_t __53__PSGResetOrEraseListController_carrierBundleChange___block_invoke(uint64_t a1)
{
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "carrier bundle change", v4, 2u);
  }

  return [*(a1 + 32) carrierBundleChange:*(a1 + 40)];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = PSGResetOrEraseListController;
  v4 = [(PSGResetOrEraseListController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  if ([objc_opt_class() isLargeTextEnabled])
  {
    v5 = MEMORY[0x277D74300];
    v6 = *MEMORY[0x277D76918];
    v7 = [objc_opt_class() maximumSupportedContentSizeCategory];
    v8 = [v5 _preferredFontForTextStyle:v6 maximumContentSizeCategory:v7];
    v9 = [v4 textLabel];
    [v9 setFont:v8];
  }

  return v4;
}

+ (BOOL)isLargeTextEnabled
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (BOOL)isRatchetFeatureAvailableAndEnabled
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = [MEMORY[0x277CD47B0] sharedInstance];
  v3 = [v2 isFeatureSupported];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CD47B0] sharedInstance];
  v5 = [v4 isFeatureAvailable];

  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CD47B0] sharedInstance];
  v7 = [v6 isFeatureEnabled];

  return v7;
}

- (uint64_t)resetPrivacyWarnings:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return __61__PSGResetOrEraseListController_resetImproveSiriAndDictation__block_invoke_2_cold_1(v0);
}

void __61__PSGResetOrEraseListController_resetImproveSiriAndDictation__block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *a2;
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = &unk_282E8FE30;
  v14 = 2112;
  v15 = v8;
  _os_log_error_impl(&dword_21CF20000, a3, OS_LOG_TYPE_ERROR, "%@: Encountered error while setting Siri Analytics Status to '%@': %@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __58__PSGResetOrEraseListController_resetAllCellularNetworks___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "Failed to reset cellular plans: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __70__PSGResetOrEraseListController_showPINSheetFromParentViewController___block_invoke_225_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 description];
  v7 = 138543618;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_21CF20000, a3, OS_LOG_TYPE_ERROR, "Ratchet: Cannot proceed to perform critical operation as gating failed - Error: %{public}@ - %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscriberOptions:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_21CF20000, v0, OS_LOG_TYPE_ERROR, "%s: Error retrieving subscription info: %{public}@.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end