@interface STLimitUsageGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4;
- (BOOL)showDemoModeAlertIfNeeded;
- (STLimitUsageGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (id)_subtitleTextForDeviceBedtime:(id)a3;
- (id)alwaysAllowedDetailText;
- (id)appLimitsDetailText;
- (id)limitUsageSpecifers;
- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)a3;
- (void)_isScreenTimeEnabledOrHasWatchOSDevicesOnlyDidChange;
- (void)_refreshBedtimeSpecifiersForBedtime:(id)a3;
- (void)alwaysAllowListController:(id)a3 didFinishEditingAlwaysAllowList:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)scheduleDowntimeRefreshAndReloadSpecifiersForBedtime:(id)a3;
- (void)scheduleDowntimeRefreshIfNeeded;
- (void)setCoordinator:(id)a3;
- (void)setUpAppAndWebsiteActivity:(id)a3;
- (void)setUpScreenDistance:(id)a3;
- (void)showAlwaysAllowedViewController:(id)a3;
- (void)showAppLimitsViewController:(id)a3;
- (void)showDeviceBedtimeViewController:(id)a3;
- (void)showScreenDistanceViewController:(id)a3;
@end

@implementation STLimitUsageGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4
{
  v5 = a4;
  v6 = [(STRootGroupSpecifierProvider *)STLimitUsageGroupSpecifierProvider providerWithCoordinator:a3];
  [v6 setRootViewController:v5];

  return v6;
}

- (STLimitUsageGroupSpecifierProvider)init
{
  v47.receiver = self;
  v47.super_class = STLimitUsageGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v47 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = MEMORY[0x277D3FAD8];
    v5 = [v3 localizedStringForKey:@"LimitUsageGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v6 = [v4 groupSpecifierWithName:v5];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];

    v39 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    v7 = [v3 localizedStringForKey:@"AppAndWebsiteActivitySpecifierName" value:&stru_28766E5A8 table:0];
    v37 = [v3 localizedStringForKey:@"AppAndWebsiteActivitySpecifierSubtitleText" value:&stru_28766E5A8 table:0];
    v38 = v7;
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:v2 set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v8 setIdentifier:@"APP_AND_WEBSITE_ACTIVITY"];
    v41 = *MEMORY[0x277D40170];
    [v8 setObject:v7 forKeyedSubscript:?];
    v44 = *MEMORY[0x277D40160];
    [v8 setObject:v37 forKeyedSubscript:?];
    v40 = *MEMORY[0x277D3FFB8];
    v36 = v8;
    [v8 setObject:@"APP_AND_WEBSITE_ACTIVITY" forKeyedSubscript:?];
    v9 = objc_opt_class();
    v46 = *MEMORY[0x277D3FE58];
    [v8 setObject:v9 forKeyedSubscript:?];
    v45 = *MEMORY[0x277D40020];
    v10 = MEMORY[0x277CBEC38];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:?];
    v11 = *MEMORY[0x277D3FFD8];
    v43 = *MEMORY[0x277D3FFD8];
    [v8 setObject:@"com.apple.graphic-icon.analytics-and-improvements" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v33 = *MEMORY[0x277D400B8];
    [v8 setObject:v13 forKeyedSubscript:?];

    v14 = *MEMORY[0x277D401C0];
    [v8 setObject:&unk_28769CF80 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [v8 setObject:v10 forKeyedSubscript:0x287675A28];
    [v8 setControllerLoadAction:sel_setUpAppAndWebsiteActivity_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setAppAndWebsiteActivitySpecifier:v8];
    v15 = v3;
    v35 = [v3 localizedStringForKey:@"DeviceDowntimeSpecifierName" value:&stru_28766E5A8 table:0];
    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v35 target:v2 set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v16 setIdentifier:@"DOWNTIME"];
    [v16 setObject:v35 forKeyedSubscript:v41];
    v32 = v16;
    [v16 setObject:@"DOWNTIME" forKeyedSubscript:v40];
    [v16 setObject:objc_opt_class() forKeyedSubscript:v46];
    v17 = MEMORY[0x277CBEC38];
    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v45];
    [v16 setObject:@"com.apple.graphic-icon.downtime" forKeyedSubscript:v11];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v16 setObject:v19 forKeyedSubscript:v33];

    [v16 setObject:&unk_28769CF80 forKeyedSubscript:v14];
    [v16 setObject:v17 forKeyedSubscript:0x287675A28];
    [v16 setControllerLoadAction:sel_showDeviceBedtimeViewController_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setDeviceBedtimeSpecifier:v16];
    v20 = v15;
    v42 = v15;
    v34 = [v15 localizedStringForKey:@"AppLimitsSpecifierName" value:? table:?];
    v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v34 target:v2 set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v21 setIdentifier:@"APP_LIMITS"];
    [v21 setObject:v34 forKeyedSubscript:v41];
    [v21 setObject:@"APP_LIMITS" forKeyedSubscript:v40];
    v22 = [(STLimitUsageGroupSpecifierProvider *)v2 appLimitsDetailText];
    [v21 setObject:v22 forKeyedSubscript:v44];

    [v21 setObject:objc_opt_class() forKeyedSubscript:v46];
    [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v45];
    [v21 setObject:@"com.apple.graphic-icon.app-limits" forKeyedSubscript:v43];
    [v21 setControllerLoadAction:sel_showAppLimitsViewController_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setAppLimitsSpecifier:v21];
    v23 = [v20 localizedStringForKey:@"AlwaysAllowedSpecifierName" value:&stru_28766E5A8 table:0];
    v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v23 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
    [v24 setIdentifier:@"ALWAYS_ALLOWED"];
    [v24 setObject:v23 forKeyedSubscript:v41];
    [v24 setObject:@"ALWAYS_ALLOWED" forKeyedSubscript:v40];
    v25 = [(STLimitUsageGroupSpecifierProvider *)v2 alwaysAllowedDetailText];
    [v24 setObject:v25 forKeyedSubscript:v44];

    [v24 setObject:objc_opt_class() forKeyedSubscript:v46];
    v26 = MEMORY[0x277CBEC38];
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v45];
    [v24 setObject:@"com.apple.graphic-icon.always-allowed" forKeyedSubscript:v43];
    [v24 setControllerLoadAction:sel_showAlwaysAllowedViewController_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setAlwaysAllowedSpecifier:v24];
    v27 = [v42 localizedStringForKey:@"ScreenDistanceSpecifierName" value:&stru_28766E5A8 table:0];
    v28 = [v42 localizedStringForKey:@"ScreenDistanceSpecifierSubtitleText" value:&stru_28766E5A8 table:0];
    v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v27 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v29 setIdentifier:@"EYE_DISTANCE"];
    [v29 setObject:@"EYE_DISTANCE" forKeyedSubscript:v40];
    [v29 setObject:v27 forKeyedSubscript:v41];
    [v29 setObject:v28 forKeyedSubscript:v44];
    [v29 setObject:objc_opt_class() forKeyedSubscript:v46];
    [v29 setObject:v26 forKeyedSubscript:v45];
    [v29 setObject:@"com.apple.screen-time.screen-distance" forKeyedSubscript:v43];
    [v29 setControllerLoadAction:sel_setUpScreenDistance_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setScreenDistanceSpecifier:v29];
    [(STLimitUsageGroupSpecifierProvider *)v2 scheduleDowntimeRefreshIfNeeded];
    v30 = [MEMORY[0x277D262A0] sharedConnection];
    [v30 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STLimitUsageGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STLimitUsageGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"viewModel.screenTimeEnabled" context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly"];
  v6.receiver = self;
  v6.super_class = STLimitUsageGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" options:4 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" options:5 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.screenTimeEnabled" options:4 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly" options:5 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "STLimitUsageGroupSpecifierProviderObservationContext")
  {
    v12 = [(STRootGroupSpecifierProvider *)self coordinator];
    if ([v10 isEqualToString:@"timeAllowancesCoordinator.viewModel.bedtime"])
    {
      v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      [(STLimitUsageGroupSpecifierProvider *)self _deviceBedtimeDidChange:v13];
    }

    else
    {
      v15 = [MEMORY[0x277D262A0] sharedConnection];
      v16 = [v15 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      if ([v10 isEqualToString:@"viewModel.isLocalOrRemotelyManagedUser"])
      {
        v17 = [(STRootGroupSpecifierProvider *)self coordinator];
        v18 = [v17 viewModel];
        v19 = [v18 isLocalOrRemotelyManagedUser] ^ 1;
        if (v16 == 2)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        [(STGroupSpecifierProvider *)self setIsHidden:v20];
      }

      else if (([v10 isEqualToString:@"viewModel.screenTimeEnabled"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"viewModel.hasWatchOSDevicesOnly"))
      {
        [(STLimitUsageGroupSpecifierProvider *)self _isScreenTimeEnabledOrHasWatchOSDevicesOnlyDidChange];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = STLimitUsageGroupSpecifierProvider;
    [(STLimitUsageGroupSpecifierProvider *)&v21 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  v10 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [v10 viewModel];
  v8 = [v7 isLocalOrRemotelyManagedUser] ^ 1;
  if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v9];
}

- (void)_isScreenTimeEnabledOrHasWatchOSDevicesOnlyDidChange
{
  v4 = [(STLimitUsageGroupSpecifierProvider *)self limitUsageSpecifers];
  v3 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  if (([v4 isEqualToArray:v3] & 1) == 0)
  {
    [v3 replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(v3, "count"), v4}];
  }
}

- (id)limitUsageSpecifers
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v4 = [v3 viewModel];
  v5 = [v4 isScreenTimeEnabled];

  v6 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [v6 viewModel];
  v8 = [v7 hasWatchOSDevicesOnly];

  v9 = MEMORY[0x277CBEB18];
  if (v5)
  {
    v10 = [(STLimitUsageGroupSpecifierProvider *)self deviceBedtimeSpecifier];
    v11 = v10;
    if (v8)
    {
      v20[0] = v10;
      v12 = [(STLimitUsageGroupSpecifierProvider *)self alwaysAllowedSpecifier];
      v20[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v14 = [v9 arrayWithArray:v13];
    }

    else
    {
      v21[0] = v10;
      v12 = [(STLimitUsageGroupSpecifierProvider *)self appLimitsSpecifier];
      v21[1] = v12;
      v13 = [(STLimitUsageGroupSpecifierProvider *)self alwaysAllowedSpecifier];
      v21[2] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
      v14 = [v9 arrayWithArray:v15];
    }
  }

  else
  {
    v11 = [(STLimitUsageGroupSpecifierProvider *)self appAndWebsiteActivitySpecifier];
    v19 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v14 = [v9 arrayWithArray:v12];
  }

  v16 = [(STLimitUsageGroupSpecifierProvider *)self screenDistanceSpecifier];

  if (v16)
  {
    v17 = [(STLimitUsageGroupSpecifierProvider *)self screenDistanceSpecifier];
    [v14 addObject:v17];
  }

  return v14;
}

- (void)setUpAppAndWebsiteActivity:(id)a3
{
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  v5 = objc_opt_new();
  [(STLimitUsageGroupSpecifierProvider *)self setAppAndWebsiteActivityOnboardingController:v5];

  v6 = [(STLimitUsageGroupSpecifierProvider *)self appAndWebsiteActivityOnboardingController];
  v7 = [(STLimitUsageGroupSpecifierProvider *)self rootViewController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke;
  v9[3] = &unk_279B7CC68;
  v10 = v4;
  v8 = v4;
  [v6 presentOverViewController:v7 completionBlock:v9];
}

uint64_t __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setScreenTimeEnabled:1 completionHandler:&__block_literal_global_0];
  }

  return result;
}

void __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke_2_cold_1(v2, v3);
    }
  }
}

- (void)scheduleDowntimeRefreshAndReloadSpecifiersForBedtime:(id)a3
{
  v4 = a3;
  [(STLimitUsageGroupSpecifierProvider *)self scheduleDowntimeRefreshIfNeeded];
  [(STLimitUsageGroupSpecifierProvider *)self _refreshBedtimeSpecifiersForBedtime:v4];
}

- (void)scheduleDowntimeRefreshIfNeeded
{
  v3 = [(STLimitUsageGroupSpecifierProvider *)self downtimeScheduleRefreshTimer];

  if (v3)
  {
    v4 = [(STLimitUsageGroupSpecifierProvider *)self downtimeScheduleRefreshTimer];
    [v4 invalidate];

    [(STLimitUsageGroupSpecifierProvider *)self setDowntimeScheduleRefreshTimer:0];
  }

  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = [v5 timeAllowancesCoordinator];
  [v6 timeToNextExpectedStateChange];
  v8 = v7;

  if (v8 >= 0.0)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277CBEBB8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __69__STLimitUsageGroupSpecifierProvider_scheduleDowntimeRefreshIfNeeded__block_invoke;
    v14 = &unk_279B7CC90;
    objc_copyWeak(&v15, &location);
    v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:&v11 block:v8];
    [(STLimitUsageGroupSpecifierProvider *)self setDowntimeScheduleRefreshTimer:v10, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __69__STLimitUsageGroupSpecifierProvider_scheduleDowntimeRefreshIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained coordinator];
  v4 = [v3 timeAllowancesCoordinator];
  v5 = [v4 viewModel];
  v7 = [v5 bedtime];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 scheduleDowntimeRefreshAndReloadSpecifiersForBedtime:v7];
}

- (void)_refreshBedtimeSpecifiersForBedtime:(id)a3
{
  v4 = a3;
  v5 = [(STLimitUsageGroupSpecifierProvider *)self deviceBedtimeSpecifier];
  v15 = v5;
  if (v4 && (-[STRootGroupSpecifierProvider coordinator](self, "coordinator"), v6 = objc_claimAutoreleasedReturnValue(), [v6 viewModel], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isScreenTimeEnabled"), v7, v6, v5 = v15, (v8 & 1) != 0))
  {
    v9 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = [v9 localizedStringForKey:@"DeviceDowntimeAlternateCustomScheduleDetailText" value:&stru_28766E5A8 table:0];

    [v15 setObject:v10 forKeyedSubscript:0x287678E68];
    [v15 setObject:&unk_28769CF98 forKeyedSubscript:0x287678E88];
  }

  else
  {
    [v5 removePropertyForKey:0x287678E68];
    [v15 removePropertyForKey:0x287678E88];
  }

  v11 = *MEMORY[0x277D40160];
  v12 = [v15 objectForKeyedSubscript:*MEMORY[0x277D40160]];
  v13 = [(STLimitUsageGroupSpecifierProvider *)self _subtitleTextForDeviceBedtime:v4];

  if (([v12 isEqualToString:v13] & 1) == 0)
  {
    [v15 setObject:v13 forKeyedSubscript:v11];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v15 animated:0];
    v14 = [v15 propertyForKey:v11];
    if (([v14 isEqualToString:v13] & 1) == 0)
    {
      [(STGroupSpecifierProvider *)self reloadSpecifier:v15 animated:0];
    }
  }
}

- (id)_subtitleTextForDeviceBedtime:(id)a3
{
  v4 = a3;
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if (!v4 || (-[STRootGroupSpecifierProvider coordinator](self, "coordinator"), v6 = objc_claimAutoreleasedReturnValue(), [v6 viewModel], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isScreenTimeEnabled"), v7, v6, !v8))
  {
    v13 = @"DeviceDowntimeDetailText";
    goto LABEL_7;
  }

  v9 = [v4 deviceBedtimeEnabled];
  v10 = [(STRootGroupSpecifierProvider *)self coordinator];
  v11 = [v10 timeAllowancesCoordinator];
  v12 = [v11 currentDowntimeState];

  if ((v9 & 1) == 0)
  {
    if (v12 == 4)
    {
      v13 = @"DeviceDowntimeStatusScheduleOffWithOverrideOn";
    }

    else
    {
      v13 = @"DeviceDowntimeDailyScheduleOff";
    }

    goto LABEL_7;
  }

  if (v12 <= 4)
  {
    v13 = off_279B7CCD8[v12];
LABEL_7:
    v14 = [v5 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
    goto LABEL_8;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)showDeviceBedtimeViewController:(id)a3
{
  v16 = a3;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v4 = objc_opt_new();
    v5 = [(STRootGroupSpecifierProvider *)self coordinator];
    v6 = [v5 timeAllowancesCoordinator];
    v7 = [v6 viewModel];
    v8 = [v7 bedtime];
    [v4 setBedtime:v8];

    v9 = [(STRootGroupSpecifierProvider *)self coordinator];
    v10 = [v9 viewModel];
    v11 = [v10 me];
    [v4 setAffectedUser:v11];

    v12 = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCanAskForMoreTime:{objc_msgSend(v12, "isPasscodeEnabled")}];

    v13 = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCoordinator:v13];

    v14 = [(STGroupSpecifierProvider *)self delegate];
    [v4 setParentController:v14];
    v15 = [v14 rootController];
    [v4 setRootController:v15];

    [v4 setSpecifier:v16];
    [(STGroupSpecifierProvider *)self showController:v4 animated:1];
  }
}

- (id)appLimitsDetailText
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v2 localizedStringForKey:@"AppLimitsDetailText" value:&stru_28766E5A8 table:0];

  return v3;
}

- (void)showAppLimitsViewController:(id)a3
{
  v12 = a3;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [(STRootGroupSpecifierProvider *)self coordinator];
      v5 = [v4 viewModel];
      v6 = [v5 me];
      v7 = [v6 altDSID];

      v8 = [[_TtC20ScreenTimeSettingsUI24STAppLimitViewController alloc] initWithAltDSID:v7];
      v9 = v8;
    }

    else
    {
      v8 = objc_opt_new();
      v10 = [(STRootGroupSpecifierProvider *)self coordinator];
      [(STAppLimitViewController *)v8 setCoordinator:v10];

      v9 = [(STGroupSpecifierProvider *)self delegate];
      [(STAppLimitViewController *)v8 setParentController:v9];
      v11 = [v9 rootController];
      [(STAppLimitViewController *)v8 setRootController:v11];

      [(STAppLimitViewController *)v8 setSpecifier:v12];
      v7 = v8;
    }

    [(STGroupSpecifierProvider *)self showController:v8 animated:1];
  }
}

- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)a3
{
  v3 = a3;
  v8 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  v5 = [(STLimitUsageGroupSpecifierProvider *)self appLimitsSpecifier];
  v6 = [v8 containsObject:v5];
  if (v6 && v3)
  {
    [v8 removeObject:v5];
  }

  else if (((v6 | v3) & 1) == 0)
  {
    v7 = [(STLimitUsageGroupSpecifierProvider *)self deviceBedtimeSpecifier];
    [v8 ps_insertObject:v5 afterObject:v7];
  }
}

- (id)alwaysAllowedDetailText
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v2 localizedStringForKey:@"AlwaysAllowDetailText" value:&stru_28766E5A8 table:0];

  return v3;
}

- (void)showAlwaysAllowedViewController:(id)a3
{
  v4 = a3;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v5 = [(STRootGroupSpecifierProvider *)self coordinator];
    v6 = [v5 timeAllowancesCoordinator];
    v7 = [v6 viewModel];

    v28 = v7;
    v8 = [v7 alwaysAllowList];
    if (!v8)
    {
      v9 = +[STUILog alwaysAllowed];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264BA2000, v9, OS_LOG_TYPE_DEFAULT, "View model has no existing Always Allow list. Creating view controller with default Always Allow list.", buf, 2u);
      }

      v8 = objc_opt_new();
    }

    v10 = objc_opt_new();
    [v10 setAlwaysAllowList:v8];
    v29 = v5;
    [v10 setCoordinator:v5];
    [v10 setDelegate:self];
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CF9650] systemUnblockableBundleIdentifiersForDeviceFamily:102];
    if (v12)
    {
      [v11 unionSet:v12];
    }

    else
    {
      v13 = objc_opt_new();
      [v11 unionSet:v13];
    }

    v14 = [MEMORY[0x277CF9650] systemBlockableBundleIdentifiersForDeviceFamily:102];
    if (v14)
    {
      [v11 unionSet:v14];
    }

    else
    {
      v15 = objc_opt_new();
      [v11 unionSet:v15];
    }

    v16 = [MEMORY[0x277CF9650] systemHiddenBundleIdentifiersForDeviceFamily:102];
    if (v16)
    {
      [v11 unionSet:v16];
    }

    else
    {
      v17 = objc_opt_new();
      [v11 unionSet:v17];
    }

    v18 = objc_alloc(MEMORY[0x277CBEB58]);
    v19 = [v8 allowedBundleIDs];
    v20 = [v18 initWithArray:v19];

    [v20 unionSet:v11];
    v21 = [(STRootGroupSpecifierProvider *)self coordinator];
    v22 = [v21 viewModel];
    v23 = [v22 installedBundleIDs];

    [v10 setInstalledBundleIDs:v23];
    v24 = [v23 mutableCopy];
    [v24 minusSet:v20];
    v25 = [v24 allObjects];
    [v10 setChooseBundleIDs:v25];

    v26 = [(STGroupSpecifierProvider *)self delegate];
    [v10 setParentController:v26];
    v27 = [v26 rootController];
    [v10 setRootController:v27];

    [v10 setSpecifier:v4];
    [(STGroupSpecifierProvider *)self showController:v10 animated:1];
  }
}

- (void)alwaysAllowListController:(id)a3 didFinishEditingAlwaysAllowList:(id)a4
{
  v5 = a4;
  v6 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [v6 timeAllowancesCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__STLimitUsageGroupSpecifierProvider_alwaysAllowListController_didFinishEditingAlwaysAllowList___block_invoke;
  v8[3] = &unk_279B7CC18;
  v8[4] = self;
  [v7 saveAlwaysAllowList:v5 completionHandler:v8];
}

void __96__STLimitUsageGroupSpecifierProvider_alwaysAllowListController_didFinishEditingAlwaysAllowList___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alwaysAllowedDetailText];
  v3 = [*(a1 + 32) alwaysAllowedSpecifier];
  [v3 setObject:v2 forKeyedSubscript:*MEMORY[0x277D40160]];

  v4 = *(a1 + 32);
  v5 = [v4 alwaysAllowedSpecifier];
  [v4 reloadSpecifier:v5 animated:1];
}

- (void)setUpScreenDistance:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = [v5 eyeReliefCoordinator];
  v7 = [v6 viewModel];

  v8 = [v7 hasAcknowledgedIntroScreens];
  v9 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 isEyeReliefEnabled];
    v11 = @"no";
    if (v10)
    {
      v12 = @"yes";
    }

    else
    {
      v12 = @"no";
    }

    if (v8)
    {
      v11 = @"yes";
    }

    *buf = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_264BA2000, v9, OS_LOG_TYPE_DEFAULT, "isEyeReliefEnabled: %@, hasAcknowledgedIntroScreens: %@", buf, 0x16u);
  }

  if ((([v7 isEyeReliefEnabled] | v8) & 1) != 0 && (objc_msgSend(v7, "inDemoMode") & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      [v7 acknowledgeIntroScreens];
    }

    [(STLimitUsageGroupSpecifierProvider *)self showScreenDistanceViewController:v4];
  }

  else
  {
    v13 = [[STEyeReliefOnboardingController alloc] initWithCoordinator:v5];
    [(STLimitUsageGroupSpecifierProvider *)self setEyeReliefOnboardingController:v13];

    objc_initWeak(buf, self);
    v14 = [(STLimitUsageGroupSpecifierProvider *)self eyeReliefOnboardingController];
    v15 = [(STLimitUsageGroupSpecifierProvider *)self rootViewController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__STLimitUsageGroupSpecifierProvider_setUpScreenDistance___block_invoke;
    v16[3] = &unk_279B7CCB8;
    objc_copyWeak(&v17, buf);
    [v14 presentOverViewController:v15 completionHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __58__STLimitUsageGroupSpecifierProvider_setUpScreenDistance___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 == 1)
    {
      v14 = WeakRetained;
      v10 = [WeakRetained coordinator];
      v11 = [v10 eyeReliefCoordinator];
      [v11 persistEyeReliefState:0];

      v9 = [v14 coordinator];
      v12 = [v9 eyeReliefCoordinator];
      v13 = [v12 viewModel];
      [v13 acknowledgeIntroScreens];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_7;
      }

      v14 = WeakRetained;
      v4 = [WeakRetained coordinator];
      v5 = [v4 eyeReliefCoordinator];
      [v5 persistEyeReliefState:1];

      v6 = [v14 coordinator];
      v7 = [v6 eyeReliefCoordinator];
      v8 = [v7 viewModel];
      [v8 acknowledgeIntroScreens];

      v9 = [v14 screenDistanceSpecifier];
      [v14 showScreenDistanceViewController:v9];
    }

    WeakRetained = v14;
  }

LABEL_7:
}

- (void)showScreenDistanceViewController:(id)a3
{
  v8 = a3;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v4 = objc_opt_new();
    v5 = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCoordinator:v5];

    v6 = [(STGroupSpecifierProvider *)self delegate];
    [v4 setParentController:v6];
    v7 = [v6 rootController];
    [v4 setRootController:v7];

    [v4 setSpecifier:v8];
    [(STGroupSpecifierProvider *)self showController:v4 animated:1];
  }
}

- (BOOL)showDemoModeAlertIfNeeded
{
  v3 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (v3)
  {
    [(STGroupSpecifierProvider *)self showStoreDemoAlert];
  }

  return v3;
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

void __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "failed to set screen time enabled: %{public}@", &v2, 0xCu);
}

@end