@interface PUILocationSystemServicesListController
+ (int)systemServicesLocationUsage;
- (BOOL)_areCoalescedBundlesAuthorized:(id)a3;
- (PSSpecifier)productImprovementGroup;
- (PUILocationSystemServicesListController)init;
- (id)_areLocationBasedAlertsAuthorized;
- (id)_homeKitBundles;
- (id)_improveLocationAccuracyBundles;
- (id)_isHomeKitAuthorized;
- (id)_isImproveLocationAccuracyAuthorized;
- (id)_isRoutingAndTrafficAuthorized;
- (id)_isSystemCustomizationAuthorized;
- (id)_isWirelessAuthorized;
- (id)_locationBasedAlertBundles;
- (id)_readAddressCorrectionAuthorizationStatus:(id)a3;
- (id)_routingAndTrafficBundles;
- (id)coreRoutineEnabledStatus:(id)a3;
- (id)isStatusEnabled:(id)a3;
- (id)specifiers;
- (void)_performConsistencyCheckValue:(id)a3 bundles:(id)a4 name:(id)a5;
- (void)_setAddressCorrectionAuthorizationStatus:(id)a3 specifier:(id)a4;
- (void)_setCoalescedBundlesAuthorized:(id)a3 bundles:(id)a4;
- (void)_setHomeKitAuthorized:(id)a3;
- (void)_setImproveLocationAccuracyAuthorized:(id)a3;
- (void)_setLocationBasedAlertsAuthorized:(id)a3;
- (void)_setRoutingAndTrafficAuthorized:(id)a3;
- (void)_setSystemCutomizationAuthorized:(id)a3;
- (void)_setWirelessAuthorized:(id)a3;
- (void)_showAddressCorrectionPage;
- (void)insertCoreRoutineSpecifier;
- (void)setStatusEnabled:(id)a3 specifier:(id)a4;
- (void)updateCoreRoutineEnabledStatusAndInsertSpecifier:(BOOL)a3;
- (void)updateCoreRoutineSettings:(id)a3;
- (void)updateImproveMapsSpecifierWithCompletion:(id)a3;
@end

@implementation PUILocationSystemServicesListController

- (PUILocationSystemServicesListController)init
{
  v27.receiver = self;
  v27.super_class = PUILocationSystemServicesListController;
  v2 = [(PUILocationServicesListController *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v4 = [(PUILocationSystemServicesListController *)v2 _locationBasedAlertBundles];
    v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];
    coalescedLocationBasedAlertsSystemServices = v2->super._coalescedLocationBasedAlertsSystemServices;
    v2->super._coalescedLocationBasedAlertsSystemServices = v5;

    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = [(PUILocationSystemServicesListController *)v2 _homeKitBundles];
    v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];
    coalescedHomeKitSystemServices = v2->super._coalescedHomeKitSystemServices;
    v2->super._coalescedHomeKitSystemServices = v9;

    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = [(PUILocationSystemServicesListController *)v2 _routingAndTrafficBundles];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];
    coalescedRoutingAndTrafficSystemServices = v2->super._coalescedRoutingAndTrafficSystemServices;
    v2->super._coalescedRoutingAndTrafficSystemServices = v13;

    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = [(PUILocationSystemServicesListController *)v2 _improveLocationAccuracyBundles];
    v17 = [v15 initWithCapacity:{objc_msgSend(v16, "count")}];
    coalescedImproveLocationAccuracySystemServices = v2->super._coalescedImproveLocationAccuracySystemServices;
    v2->super._coalescedImproveLocationAccuracySystemServices = v17;

    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    v20 = [objc_opt_class() wirelessBundles];
    v21 = [v19 initWithCapacity:{objc_msgSend(v20, "count")}];
    coalescedWirelessSystemServices = v2->super._coalescedWirelessSystemServices;
    v2->super._coalescedWirelessSystemServices = v21;

    v23 = objc_opt_new();
    coalescedSystemCutomizationSystemServices = v2->super._coalescedSystemCutomizationSystemServices;
    v2->super._coalescedSystemCutomizationSystemServices = v23;

    v25 = objc_opt_new();
    [(PUILocationServicesListController *)v2 setCoalescedImproveMapsServices:v25];
  }

  return v2;
}

+ (int)systemServicesLocationUsage
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PUILocationSystemServicesListController);
  [(PUILocationSystemServicesListController *)v2 specifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) identifier];
        v10 = [(PUILocationServicesListController *)v2 locationUsageForEntity:v9];

        if (v10 == 4)
        {
          v6 = 4;
        }

        else
        {
          if (v10 == 3)
          {
            v6 = 3;
            goto LABEL_20;
          }

          if (v6 != 4 && v10 == 2)
          {
            v6 = 2;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)isStatusEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [getCLLocationManagerClass_0() isStatusBarIconEnabledForLocationEntityClass:4];

  return [v3 numberWithBool:v4];
}

- (void)setStatusEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  CLLocationManagerClass_0 = getCLLocationManagerClass_0();
  v6 = [v4 BOOLValue];

  [CLLocationManagerClass_0 setStatusBarIconEnabled:v6 forLocationEntityClass:4];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"com.apple.PrivacySettingsUI.LocationServicesStateChanged" object:0];
}

- (void)updateCoreRoutineSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUILocationSystemServicesListController;
  [(PUILocationServicesListController *)&v4 updateCoreRoutineSettings:a3];
  [(PUILocationSystemServicesListController *)self updateCoreRoutineEnabledStatusAndInsertSpecifier:0];
}

- (void)updateCoreRoutineEnabledStatusAndInsertSpecifier:(BOOL)a3
{
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__PUILocationSystemServicesListController_updateCoreRoutineEnabledStatusAndInsertSpecifier___block_invoke;
  v6[3] = &unk_279BA1850;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __92__PUILocationSystemServicesListController_updateCoreRoutineEnabledStatusAndInsertSpecifier___block_invoke(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v2 = [*(a1 + 32) routineManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__PUILocationSystemServicesListController_updateCoreRoutineEnabledStatusAndInsertSpecifier___block_invoke_2;
  v3[3] = &unk_279BA1D60;
  v3[4] = *(a1 + 32);
  v3[5] = v5;
  v4 = *(a1 + 40);
  [v2 fetchRoutineStateWithHandler:v3];

  _Block_object_dispose(v5, 8);
}

void __92__PUILocationSystemServicesListController_updateCoreRoutineEnabledStatusAndInsertSpecifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2 == 2;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = @"On";
  }

  else
  {
    v3 = @"Off";
  }

  v4 = PUI_LocalizedStringForPrivacy(v3);
  [*(a1 + 32) setCurrentCoreRoutineStatus:v4];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"com.apple.PrivacySettingsUI.LocationServicesStateChanged" object:0];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__PUILocationSystemServicesListController_updateCoreRoutineEnabledStatusAndInsertSpecifier___block_invoke_3;
  v6[3] = &unk_279BA1850;
  v7 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __92__PUILocationSystemServicesListController_updateCoreRoutineEnabledStatusAndInsertSpecifier___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);

    [v2 insertCoreRoutineSpecifier];
  }

  else
  {
    v4 = [*(a1 + 32) coreRoutineAppKey];
    v5 = [v1 specifierForID:v4];

    [*(a1 + 32) reloadSpecifier:v5];
  }
}

- (void)insertCoreRoutineSpecifier
{
  v11 = [(PUILocationSystemServicesListController *)self specifiers];
  if ([v11 count])
  {
    v3 = [(PUILocationSystemServicesListController *)self specifierIDBeforeCoreRoutine];

    if (!v3)
    {
      return;
    }

    v12 = PUI_LocalizedStringForLocationServices(@"CORE_ROUTINE");
    if (_os_feature_enabled_impl())
    {
      v4 = PUI_LocalizedStringForLocationServices(@"CORE_ROUTINE_LOCATION_PLUS");

      v5 = v4;
    }

    else
    {
      v5 = v12;
    }

    v11 = v5;
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:sel_coreRoutineEnabledStatus_ detail:0 cell:2 edit:0];
    v7 = [(PUILocationSystemServicesListController *)self coreRoutineAppKey];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FFB8]];

    [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v6 setButtonAction:sel_showCoreRoutineSettings_];
    v8 = [(PUILocationSystemServicesListController *)self specifierIDBeforeCoreRoutine];
    v9 = [(PUILocationSystemServicesListController *)self view];
    v10 = [v9 window];
    [(PUILocationSystemServicesListController *)self insertSpecifier:v6 afterSpecifierID:v8 animated:v10 != 0];
  }
}

- (id)coreRoutineEnabledStatus:(id)a3
{
  v4 = [(PUILocationServicesListController *)self currentCoreRoutineStatus];
  if ([v4 length])
  {
    v5 = [(PUILocationServicesListController *)self currentCoreRoutineStatus];
  }

  else
  {
    v5 = &stru_28771E540;
  }

  return v5;
}

- (id)_locationBasedAlertBundles
{
  v2 = objc_opt_class();

  return [v2 locationBasedAlertBundles];
}

- (id)_improveLocationAccuracyBundles
{
  v2 = objc_opt_class();

  return [v2 improveLocationAccuracyBundles];
}

- (id)_homeKitBundles
{
  v2 = objc_opt_class();

  return [v2 homeKitBundles];
}

- (id)_routingAndTrafficBundles
{
  v2 = objc_opt_class();

  return [v2 routingAndTrafficBundles];
}

- (id)_readAddressCorrectionAuthorizationStatus:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D0E7A0];
  v5 = GEOGetDefaultInteger();
  v6 = _PUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5 == 2)
    {
      v7 = @"YES";
    }

    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "read GEOAddressCorrectionAuthorizationStatus enabled: %@", &v15, 0xCu);
  }

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 sf_isInternalInstall];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 2];
    v11 = [(PUILocationServicesListController *)self coalescedImproveMapsServices];
    [(PUILocationSystemServicesListController *)self _performConsistencyCheckValue:v10 bundles:v11 name:@"Improve Maps"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 2];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_setAddressCorrectionAuthorizationStatus:(id)a3 specifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 BOOLValue])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = *MEMORY[0x277D0E7A0];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  GEOSetDefault();

  v9 = _PUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v6;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "set GEOAddressCorrectionAuthorizationStatus: %ld", &v12, 0xCu);
  }

  v10 = [(PUILocationServicesListController *)self coalescedImproveMapsServices];
  [(PUILocationSystemServicesListController *)self _setCoalescedBundlesAuthorized:v5 bundles:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_showAddressCorrectionPage
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improvemaps"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_setCoalescedBundlesAuthorized:(id)a3 bundles:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = *MEMORY[0x277D3FFB8];
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v14 setProperty:v13 forKey:v11];
        [(PUILocationServicesListController *)self setEntityAuthorized:v6 specifier:v14];

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_setLocationBasedAlertsAuthorized:(id)a3
{
  [(PUILocationSystemServicesListController *)self _setCoalescedBundlesAuthorized:a3 bundles:self->super._coalescedLocationBasedAlertsSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {

    [(PUILocationSystemServicesListController *)self _performLocationBasedAlertsConsistencyCheck];
  }
}

- (void)_setHomeKitAuthorized:(id)a3
{
  [(PUILocationSystemServicesListController *)self _setCoalescedBundlesAuthorized:a3 bundles:self->super._coalescedHomeKitSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {

    [(PUILocationSystemServicesListController *)self _performHomeKitConsistencyCheck];
  }
}

- (void)_setRoutingAndTrafficAuthorized:(id)a3
{
  [(PUILocationSystemServicesListController *)self _setCoalescedBundlesAuthorized:a3 bundles:self->super._coalescedRoutingAndTrafficSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {

    [(PUILocationSystemServicesListController *)self _performRoutingAndTrafficConsistencyCheck];
  }
}

- (void)_setImproveLocationAccuracyAuthorized:(id)a3
{
  [(PUILocationSystemServicesListController *)self _setCoalescedBundlesAuthorized:a3 bundles:self->super._coalescedImproveLocationAccuracySystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {

    [(PUILocationSystemServicesListController *)self _performRoutingAndTrafficConsistencyCheck];
  }
}

- (void)_setSystemCutomizationAuthorized:(id)a3
{
  [(PUILocationSystemServicesListController *)self _setCoalescedBundlesAuthorized:a3 bundles:self->super._coalescedSystemCutomizationSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {

    [(PUILocationSystemServicesListController *)self _performSystemCustomizationConsistencyCheck];
  }
}

- (void)_setWirelessAuthorized:(id)a3
{
  v4 = a3;
  v5 = self->super._coalescedWirelessSystemServices;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PUILocationSystemServicesListController__setWirelessAuthorized___block_invoke;
  aBlock[3] = &unk_279BA1D88;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  if ([v4 BOOLValue])
  {
    v6[2](v6, v4, v5);
  }

  else
  {
    v7 = PUI_LocalizedStringForLocationServicesPrivacy(@"WIRELESS_DISABLE_TITLE");
    [(PUILocationSystemServicesListController *)self hasUltraWideBand];
    v8 = SFLocalizableWAPIStringKeyForKey();
    v9 = PUI_LocalizedStringForLocationServicesPrivacy(v8);

    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 sf_isiPad];

    v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v9 preferredStyle:v11];
    v13 = MEMORY[0x277D750F8];
    v14 = PUI_LocalizedStringForLocationServicesPrivacy(@"WIRELESS_DISABLE_CONFIRM");
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__PUILocationSystemServicesListController__setWirelessAuthorized___block_invoke_2;
    v22[3] = &unk_279BA1DB0;
    v25 = v6;
    v23 = v4;
    v24 = v5;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v22];
    [v12 addAction:v15];

    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D750F8];
    v17 = PUI_LocalizedStringForLocationServicesPrivacy(@"WIRELESS_DISABLE_CANCEL");
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__PUILocationSystemServicesListController__setWirelessAuthorized___block_invoke_3;
    v19[3] = &unk_279BA1DD8;
    objc_copyWeak(&v20, &location);
    v18 = [v16 actionWithTitle:v17 style:1 handler:v19];
    [v12 addAction:v18];

    [(PUILocationSystemServicesListController *)self presentViewController:v12 animated:1 completion:0];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __66__PUILocationSystemServicesListController__setWirelessAuthorized___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _setCoalescedBundlesAuthorized:a2 bundles:a3];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    v6 = *(a1 + 32);

    [v6 _performWirelessConsistencyCheck];
  }
}

void __66__PUILocationSystemServicesListController__setWirelessAuthorized___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"NETWORKING_WIRELESS"];
}

- (BOOL)_areCoalescedBundlesAuthorized:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x277D3FFB8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v11 setProperty:v10 forKey:v8];
        v12 = [(PUILocationServicesListController *)self isEntityAuthorized:v11];
        v13 = [v12 BOOLValue];

        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_areLocationBasedAlertsAuthorized
{
  v3 = [(PUILocationSystemServicesListController *)self _areCoalescedBundlesAuthorized:self->super._coalescedLocationBasedAlertsSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    [(PUILocationSystemServicesListController *)self _performLocationBasedAlertsConsistencyCheck];
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v3];
}

- (id)_isWirelessAuthorized
{
  v3 = [(PUILocationSystemServicesListController *)self _areCoalescedBundlesAuthorized:self->super._coalescedWirelessSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    [(PUILocationSystemServicesListController *)self _performWirelessConsistencyCheck];
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v3];
}

- (id)_isHomeKitAuthorized
{
  v3 = [(PUILocationSystemServicesListController *)self _areCoalescedBundlesAuthorized:self->super._coalescedHomeKitSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    [(PUILocationSystemServicesListController *)self _performHomeKitConsistencyCheck];
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v3];
}

- (id)_isRoutingAndTrafficAuthorized
{
  v3 = [(PUILocationSystemServicesListController *)self _areCoalescedBundlesAuthorized:self->super._coalescedRoutingAndTrafficSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    [(PUILocationSystemServicesListController *)self _performRoutingAndTrafficConsistencyCheck];
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v3];
}

- (id)_isImproveLocationAccuracyAuthorized
{
  v3 = [(PUILocationSystemServicesListController *)self _areCoalescedBundlesAuthorized:self->super._coalescedImproveLocationAccuracySystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    [(PUILocationSystemServicesListController *)self _performImproveLocationAccuracyConsistencyCheck];
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v3];
}

- (id)_isSystemCustomizationAuthorized
{
  v3 = [(PUILocationSystemServicesListController *)self _areCoalescedBundlesAuthorized:self->super._coalescedSystemCutomizationSystemServices];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    [(PUILocationSystemServicesListController *)self _performSystemCustomizationConsistencyCheck];
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v3];
}

- (void)_performConsistencyCheckValue:(id)a3 bundles:(id)a4 name:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
  v10 = [v8 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = v9;
    v30 = v7;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v34;
    v16 = *MEMORY[0x277D3FFB8];
    do
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * v17);
        v20 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v20 setProperty:v19 forKey:v16];
        v12 = [(PUILocationServicesListController *)self isEntityAuthorized:v20];

        v21 = [v12 BOOLValue];
        v13 |= v21;
        v14 |= v21 ^ 1;

        ++v17;
        v18 = v12;
      }

      while (v11 != v17);
      v11 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v11);
    v9 = v29;
    v7 = v30;
    if ((v13 & v14 & 1) != 0 || v30 && v12 && (v28 = [v30 BOOLValue], v28 != objc_msgSend(v12, "BOOLValue")))
    {
      v22 = _PUILoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138544131;
        v38 = v29;
        v39 = 2113;
        v40 = obj;
        v41 = 2113;
        v42 = v12;
        v43 = 2113;
        v44 = v30;
        _os_log_fault_impl(&dword_2657FE000, v22, OS_LOG_TYPE_FAULT, "Muxed '%{public}@' values were not consistent. Please file a radar with a sysdiagnose to Settings - Privacy | iOS. bundles: %{private}@, authorized: %{private}@, value: %{private}@", buf, 0x2Au);
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Inconsistent Values For '%@'", v29];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"The muxed values for '%@' were inconsistent. Please file a radar with a sysdiagnose to Settings - Privacy | iOS.", v29];
      v25 = [MEMORY[0x277D75110] alertControllerWithTitle:v23 message:v24 preferredStyle:1];
      v26 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
      [v25 addAction:v26];

      [(PUILocationSystemServicesListController *)self presentViewController:v25 animated:1 completion:0];
    }
  }

  else
  {
    v12 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v95 = *MEMORY[0x277D3FC48];
    v111 = self;
    v100 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v94 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v93 = [(PUILocationSystemServicesListController *)v111 productImprovementGroup];
    v116 = 0;
    v117 = &v116;
    v118 = 0x2020000000;
    v4 = getCLCopyAppsUsingLocationSymbolLoc_ptr_1;
    v119 = getCLCopyAppsUsingLocationSymbolLoc_ptr_1;
    if (!getCLCopyAppsUsingLocationSymbolLoc_ptr_1)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCLCopyAppsUsingLocationSymbolLoc_block_invoke_1;
      v122 = &unk_279BA0D08;
      v123 = &v116;
      v5 = CoreLocationLibrary_0();
      v6 = dlsym(v5, "CLCopyAppsUsingLocation");
      *(v123[1] + 24) = v6;
      getCLCopyAppsUsingLocationSymbolLoc_ptr_1 = *(v123[1] + 24);
      v4 = v117[3];
    }

    _Block_object_dispose(&v116, 8);
    if (!v4)
    {
      [PUILockdownModeController getEligibleDevicesWithCompletion:];
      __break(1u);
    }

    obj = v4();
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = obj;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "specifiers -- CLCopyAppsUsingLocation:\n%@", buf, 0xCu);
    }

    objc_storeStrong(&v111->super._locationEntitiesDetails, obj);
    v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(PUILocationSystemServicesListController *)v111 setCoreRoutineAppKey:0];
    [(PUILocationSystemServicesListController *)v111 setSpecifierIDBeforeCoreRoutine:0];
    if (![obj count])
    {
      goto LABEL_85;
    }

    v8 = MEMORY[0x277CBEB98];
    v9 = [(PUILocationServicesListController *)v111 hiddenBundleIdentifiers];
    v110 = [v8 setWithSet:v9];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v10 = obj;
    v11 = [v10 countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (v11)
    {
      v96 = 0;
      v99 = 0;
      v108 = 0;
      v104 = 0;
      v107 = 0;
      v12 = *v113;
      v101 = *MEMORY[0x277CBEC40];
      v13 = *MEMORY[0x277D3FEF0];
      v102 = *MEMORY[0x277D3FEF0];
      v103 = *MEMORY[0x277D3FFB8];
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v113 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v112 + 1) + 8 * v14);
          v16 = [v10 objectForKey:v15];
          if ([v110 containsObject:v15])
          {
            [(NSArray *)v109 addObject:v15];
            v17 = 0;
            v18 = 0;
            goto LABEL_48;
          }

          v18 = [v16 objectForKey:@"BundlePath"];
          if (v18)
          {
            v19 = [(PUILocationSystemServicesListController *)v111 _locationBasedAlertBundles];
            v20 = [v19 containsString:v18];

            if (v20)
            {
              [(NSArray *)v109 addObject:v15];
              [(NSMutableArray *)v111->super._coalescedLocationBasedAlertsSystemServices addObject:v15];
              v17 = 0;
              BYTE4(v108) = 1;
              goto LABEL_48;
            }
          }

          v21 = [v16 objectForKey:@"BundlePath"];

          if (v21)
          {
            v22 = [(PUILocationSystemServicesListController *)v111 _improveLocationAccuracyBundles];
            v23 = [v22 containsString:v21];

            if (v23)
            {
              [(NSArray *)v109 addObject:v15];
              [(NSMutableArray *)v111->super._coalescedImproveLocationAccuracySystemServices addObject:v15];
              v17 = 0;
              LOBYTE(v108) = 1;
              goto LABEL_47;
            }

            v24 = [(PUILocationSystemServicesListController *)v111 _homeKitBundles];
            v25 = [v24 containsString:v21];

            if (v25)
            {
              [(NSArray *)v109 addObject:v15];
              [(NSMutableArray *)v111->super._coalescedHomeKitSystemServices addObject:v15];
              v17 = 0;
              v107 = 1;
              goto LABEL_47;
            }

            v26 = [(PUILocationSystemServicesListController *)v111 _routingAndTrafficBundles];
            v27 = [v26 containsString:v21];

            if (v27)
            {
              [(NSArray *)v109 addObject:v15];
              [(NSMutableArray *)v111->super._coalescedRoutingAndTrafficSystemServices addObject:v15];
              v17 = 0;
              v104 = 1;
              goto LABEL_47;
            }

            v28 = [objc_opt_class() wirelessBundles];
            v29 = [v28 containsString:v21];

            if (v29)
            {
              [(NSArray *)v109 addObject:v15];
              [(NSMutableArray *)v111->super._coalescedWirelessSystemServices addObject:v15];
              v17 = 0;
              v99 = 1;
              goto LABEL_47;
            }

            v30 = [objc_opt_class() systemCustomizationBundles];
            v31 = [v30 containsString:v21];

            if (v31)
            {
              [(NSArray *)v109 addObject:v15];
              [(NSMutableArray *)v111->super._coalescedSystemCutomizationSystemServices addObject:v15];
              v17 = 0;
              v96 = 1;
              goto LABEL_47;
            }

            v32 = [objc_opt_class() improveMapsBundles];
            v33 = [v32 containsString:v21];

            if (v33)
            {
              [(NSArray *)v109 addObject:v15];
              v34 = [(PUILocationServicesListController *)v111 coalescedImproveMapsServices];
              [v34 addObject:v15];

              goto LABEL_46;
            }
          }

          v35 = [getCLLocationManagerClass_0() primaryEntityClassForLocationDictionary:v16];
          v36 = v35;
          v17 = 0;
          if (v35 <= 3)
          {
            if ((v35 - 1) < 2)
            {
              goto LABEL_45;
            }

            if (!v35)
            {
              v37 = _PUILoggingFacility();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v15;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                _os_log_impl(&dword_2657FE000, v37, OS_LOG_TYPE_DEFAULT, "EntityClassUnknown:\n%@\n%@", buf, 0x16u);
              }

LABEL_45:
              [(NSArray *)v109 addObject:v15];
LABEL_46:
              v17 = 0;
LABEL_47:
              v18 = v21;
              goto LABEL_48;
            }

            goto LABEL_51;
          }

          if (v35 == 32)
          {
            goto LABEL_45;
          }

          if (v35 == 16)
          {
            [(PUILocationSystemServicesListController *)v111 setCoreRoutineAppKey:v15];
            v17 = 0;
LABEL_51:
            v18 = v21;
            goto LABEL_52;
          }

          if (v35 != 4)
          {
            goto LABEL_51;
          }

          v18 = [v16 objectForKey:@"BundlePath"];

          v38 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v18];
          v17 = [v38 objectForInfoDictionaryKey:v101];
          if (![v17 length])
          {
            v98 = [v18 lastPathComponent];

            v39 = _PUILoggingFacility();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v18;
              _os_log_impl(&dword_2657FE000, v39, OS_LOG_TYPE_DEFAULT, "No display name found for system service: %@", buf, 0xCu);
            }

            v17 = v98;
          }

LABEL_52:
          if (specifiers_onceToken != -1)
          {
            [PUILocationSystemServicesListController specifiers];
          }

          [v18 rangeOfString:@"WifiCalling.bundle" options:1];
          if (v40)
          {
            if (([getTUCallCapabilitiesClass() isWiFiCallingEnabled] & 1) == 0 && (objc_msgSend(getTUCallCapabilitiesClass(), "isThumperCallingEnabled") & 1) == 0)
            {
              [(NSArray *)v109 addObject:v15];
              goto LABEL_48;
            }

            if (specifiers___hasWAPI == 1)
            {
              v41 = PUI_LocalizedStringForLocationServices(@"WLAN_CALLING");

              v17 = v41;
            }
          }

          [v18 rangeOfString:@"WirelessDiagnostics.framework"];
          if (v42)
          {
            v43 = PUI_LocalizedStringForLocationServices(@"WIRELESS_DIAGNOSTICS");

            v17 = v43;
          }

          if (v36 != 16)
          {
            if ([v18 hasSuffix:@"Emergency SOS.bundle"])
            {
              v44 = sel_setSOSEntityAuthorized_specifier_;
            }

            else
            {
              v44 = sel_setEntityAuthorized_specifier_;
            }

            v45 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v17 target:v111 set:v44 get:sel_isEntityAuthorized_ detail:0 cell:6 edit:0];
            [v45 setProperty:v15 forKey:v103];
            v46 = [(PUILocationServicesListController *)v111 isEntityAuthorized:v45];
            [v45 setProperty:v46 forKey:v102];

            v47 = [(PUILocationSystemServicesListController *)v111 _productImprovementByBundlePath];
            v48 = [v47 containsString:v18];

            if (v48)
            {
              v49 = v106;
            }

            else
            {
              v49 = v105;
            }

            [v49 addObject:v45];
          }

LABEL_48:

          ++v14;
        }

        while (v11 != v14);
        v50 = [v10 countByEnumeratingWithState:&v112 objects:v120 count:16];
        v11 = v50;
        if (!v50)
        {

          if ((v108 & 0x100000000) != 0)
          {
            v51 = MEMORY[0x277D3FAD8];
            v52 = PUI_LocalizedStringForLocationServicesPrivacy(@"LOCATION_BASED_ALERTS");
            v53 = [v51 preferenceSpecifierNamed:v52 target:v111 set:sel__setLocationBasedAlertsAuthorized_ get:sel__areLocationBasedAlertsAuthorized detail:0 cell:6 edit:0];

            [v53 setProperty:@"LOCATION_BASED_ALERTS" forKey:v103];
            v54 = [(PUILocationSystemServicesListController *)v111 _areLocationBasedAlertsAuthorized];
            [v53 setProperty:v54 forKey:v102];

            [v53 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
            [v105 addObject:v53];
          }

          if (v107)
          {
            v55 = MEMORY[0x277D3FAD8];
            v56 = PUI_LocalizedStringForLocationServicesPrivacy(@"HOMEKIT");
            v57 = [v55 preferenceSpecifierNamed:v56 target:v111 set:sel__setHomeKitAuthorized_ get:sel__isHomeKitAuthorized detail:0 cell:6 edit:0];

            [v57 setProperty:@"HOMEKIT" forKey:v103];
            v58 = [(PUILocationSystemServicesListController *)v111 _isHomeKitAuthorized];
            [v57 setProperty:v58 forKey:v102];

            [v105 addObject:v57];
          }

          if (v99)
          {
            v59 = MEMORY[0x277D3FAD8];
            v60 = PUI_LocalizedStringForLocationServicesPrivacy(@"NETWORKING_WIRELESS");
            v61 = [v59 preferenceSpecifierNamed:v60 target:v111 set:sel__setWirelessAuthorized_ get:sel__isWirelessAuthorized detail:0 cell:6 edit:0];

            [v61 setProperty:@"NETWORKING_WIRELESS" forKey:v103];
            v62 = [(PUILocationSystemServicesListController *)v111 _isWirelessAuthorized];
            [v61 setProperty:v62 forKey:v102];

            [v105 addObject:v61];
          }

          if (v104)
          {
            v63 = MEMORY[0x277D3FAD8];
            v64 = PUI_LocalizedStringForLocationServicesPrivacy(@"ROUTING_AND_TRAFFIC");
            v65 = [v63 preferenceSpecifierNamed:v64 target:v111 set:sel__setRoutingAndTrafficAuthorized_ get:sel__isRoutingAndTrafficAuthorized detail:0 cell:6 edit:0];

            [v65 setProperty:@"ROUTING_AND_TRAFFIC" forKey:v103];
            v66 = [(PUILocationSystemServicesListController *)v111 _isRoutingAndTrafficAuthorized];
            [v65 setProperty:v66 forKey:v102];

            [v106 addObject:v65];
          }

          if (v108)
          {
            v67 = MEMORY[0x277D3FAD8];
            v68 = PUI_LocalizedStringForLocationServicesPrivacy(@"IMPROVE_LOCATION_ACCURACY");
            v69 = [v67 preferenceSpecifierNamed:v68 target:v111 set:sel__setImproveLocationAccuracyAuthorized_ get:sel__isImproveLocationAccuracyAuthorized detail:0 cell:6 edit:0];

            [v69 setProperty:@"IMPROVE_LOCATION_ACCURACY" forKey:v103];
            v70 = [(PUILocationSystemServicesListController *)v111 _isImproveLocationAccuracyAuthorized];
            [v69 setProperty:v70 forKey:v102];

            [v106 addObject:v69];
          }

          if (v96)
          {
            v71 = MEMORY[0x277D3FAD8];
            v72 = PUI_LocalizedStringForLocationServicesPrivacy(@"SYSTEM_CUSTOMIZATION");
            v110 = [v71 preferenceSpecifierNamed:v72 target:v111 set:sel__setSystemCutomizationAuthorized_ get:sel__isSystemCustomizationAuthorized detail:0 cell:6 edit:0];

            [v110 setProperty:@"SYSTEM_CUSTOMIZATION" forKey:v103];
            v73 = [(PUILocationSystemServicesListController *)v111 _isSystemCustomizationAuthorized];
            [v110 setProperty:v73 forKey:v102];

            [v105 addObject:v110];
            goto LABEL_84;
          }

          goto LABEL_85;
        }
      }
    }

LABEL_84:
LABEL_85:
    [v105 sortUsingFunction:PUICompareSpecifiersByName context:0];
    [v106 sortUsingFunction:PUICompareSpecifiersByName context:0];
    v74 = MEMORY[0x277D3FAD8];
    v75 = PUI_LocalizedStringForLocationServices(@"POLARIS_TITLE");
    v76 = [v74 preferenceSpecifierNamed:v75 target:v111 set:sel__setAddressCorrectionAuthorizationStatus_specifier_ get:sel__readAddressCorrectionAuthorizationStatus_ detail:0 cell:6 edit:0];

    [v76 setIdentifier:@"POLARIS"];
    [v106 addObject:v76];
    v77 = [(PUILocationSystemServicesListController *)v111 coreRoutineAppKey];

    if (v77)
    {
      v78 = [v105 lastObject];
      v79 = [v78 identifier];
      [(PUILocationSystemServicesListController *)v111 setSpecifierIDBeforeCoreRoutine:v79];

      [(PUILocationSystemServicesListController *)v111 updateCoreRoutineEnabledStatusAndInsertSpecifier:1];
    }

    if ([v105 count])
    {
      [v100 addObject:v94];
      [v100 addObjectsFromArray:v105];
    }

    if ([v106 count])
    {
      [v100 addObject:v93];
      [v100 addObjectsFromArray:v106];
    }

    v80 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"INDICATOR_EXPLANATION"];
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    [v80 setProperty:v82 forKey:*MEMORY[0x277D3FF48]];

    [v80 setProperty:@"SERVICE" forKey:@"_ExplanationIdSuffix_"];
    [v100 addObject:v80];
    if ([v106 count] || objc_msgSend(v105, "count"))
    {
      v83 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"STATUS_BAR_GROUP"];
      v84 = PUI_LocalizedStringForLocationServices(@"SYSTEM_SERVICES_STATUS_BAR_ICON_EXPLANATION");
      [v83 setProperty:v84 forKey:*MEMORY[0x277D3FF88]];

      [v100 addObject:v83];
      v85 = MEMORY[0x277D3FAD8];
      v86 = PUI_LocalizedStringForLocationServices(@"STATUS_BAR_ICON");
      v87 = [v85 preferenceSpecifierNamed:v86 target:v111 set:sel_setStatusEnabled_specifier_ get:sel_isStatusEnabled_ detail:0 cell:6 edit:0];
      [v100 addObject:v87];
    }

    ignoredLocationEntities = v111->super._ignoredLocationEntities;
    v111->super._ignoredLocationEntities = v109;
    v89 = v109;

    v90 = *(&v111->super.super.super.super.super.super.isa + v95);
    *(&v111->super.super.super.super.super.super.isa + v95) = v100;

    [(PUILocationServicesListController *)v111 updateSpecifiersForImposedSettingsWithReload:0];
    [(PUILocationSystemServicesListController *)v111 updateImproveMapsSpecifierWithCompletion:0];

    v3 = *(&v111->super.super.super.super.super.super.isa + v95);
  }

  v91 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __53__PUILocationSystemServicesListController_specifiers__block_invoke()
{
  result = MGGetBoolAnswer();
  specifiers___hasWAPI = result;
  return result;
}

- (void)updateImproveMapsSpecifierWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D3FDD8];
  v6 = SFIsAppWithBundleIDInstalled();
  v7 = _PUILoggingFacility();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315138;
      v14 = "[PUILocationSystemServicesListController updateImproveMapsSpecifierWithCompletion:]";
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%s: fetching routine state", buf, 0xCu);
    }

    v9 = [(PUILocationServicesListController *)self routineManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__PUILocationSystemServicesListController_updateImproveMapsSpecifierWithCompletion___block_invoke;
    v11[3] = &unk_279BA1E28;
    v11[4] = self;
    v12 = v4;
    [v9 fetchRoutineStateWithHandler:v11];
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v14 = "[PUILocationSystemServicesListController updateImproveMapsSpecifierWithCompletion:]";
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%s: Maps is not installed", buf, 0xCu);
    }

    [(PUILocationSystemServicesListController *)self _setAddressCorrectionAuthorizationStatus:MEMORY[0x277CBEC28] specifier:0];
    if (v4)
    {
      v4[2](v4);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __84__PUILocationSystemServicesListController_updateImproveMapsSpecifierWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __84__PUILocationSystemServicesListController_updateImproveMapsSpecifierWithCompletion___block_invoke_2;
  v2[3] = &unk_279BA1E00;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __84__PUILocationSystemServicesListController_updateImproveMapsSpecifierWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x277D0E7B0];
  GEOGetDefaultBOOL();
  v3 = [MEMORY[0x277D0EC70] sharedPlatform];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v5 = *MEMORY[0x277D0E7A8];
    GEOGetDefaultBOOL();
  }

  [*(a1 + 32) updateSpecifiersForImposedSettingsWithReload:0];
  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (PSSpecifier)productImprovementGroup
{
  productImprovementGroup = self->_productImprovementGroup;
  if (!productImprovementGroup)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = PUI_LocalizedStringForLocationServices(@"PRODUCT_IMPROVEMENT");
    v6 = [v4 groupSpecifierWithID:@"PRODUCT_IMPROVEMENT" name:v5];
    v7 = self->_productImprovementGroup;
    self->_productImprovementGroup = v6;

    v8 = self->_productImprovementGroup;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(PSSpecifier *)v8 setProperty:v10 forKey:*MEMORY[0x277D3FF48]];

    v11 = PUI_LocalizedStringForLocationServices(@"POLARIS_FOOTER");
    v12 = PUI_LocalizedStringForLocationServices(@"LEARN_MORE");
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v12];

    [(PSSpecifier *)self->_productImprovementGroup setProperty:v13 forKey:*MEMORY[0x277D3FF70]];
    v14 = self->_productImprovementGroup;
    v20.location = [v13 rangeOfString:v12];
    v15 = NSStringFromRange(v20);
    [(PSSpecifier *)v14 setProperty:v15 forKey:*MEMORY[0x277D3FF58]];

    v16 = self->_productImprovementGroup;
    v17 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [(PSSpecifier *)v16 setProperty:v17 forKey:*MEMORY[0x277D3FF68]];

    [(PSSpecifier *)self->_productImprovementGroup setProperty:@"_showAddressCorrectionPage" forKey:*MEMORY[0x277D3FF50]];
    productImprovementGroup = self->_productImprovementGroup;
  }

  return productImprovementGroup;
}

@end