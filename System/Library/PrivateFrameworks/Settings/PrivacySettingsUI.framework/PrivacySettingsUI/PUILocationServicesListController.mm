@interface PUILocationServicesListController
+ (BOOL)isCoreRoutineAuthorized;
- (BOOL)_isBundleBlacklisted:(id)a3;
- (BOOL)_isFindMyDeviceSpecifier:(id)a3;
- (BOOL)_shouldEnableLocationSharingSpecifier;
- (PUILocationServicesListController)init;
- (id)_iconForLocationUsage:(int)a3;
- (id)accountStore;
- (id)hiddenBundleIdentifiers;
- (id)isEntityAuthorized:(id)a3;
- (id)isLocationServicesEnabled:(id)a3;
- (id)loadSensorKitSpecifiersProvider;
- (id)localizedDisplayNameForBundleID:(id)a3;
- (id)locationDetailSpecifiersForAppsAndBundles;
- (id)locationDetailSpecifiersWithDetailsMatching:(id)a3;
- (id)locationSharingSpecifiers;
- (id)primaryAccount;
- (id)specifiers;
- (int)locationUsageBasedOnDetails:(id)a3;
- (int)locationUsageForEntity:(id)a3;
- (void)_cancelConfirmDisableForSpecifier:(id)a3;
- (void)_handleAuthenticationForSender:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_locationSharingSpecifierWasTapped:(id)a3;
- (void)_pushCoreRoutineViewController;
- (void)dealloc;
- (void)didChangeActiveLocationSharingDevice:(id)a3;
- (void)didUpdateHidingStatus:(BOOL)a3;
- (void)disableAfterLoginConfirmation:(id)a3;
- (void)mainThreadConnectionError:(id)a3;
- (void)mainThreadDidChangeActiveLocationSharingDevice:(id)a3;
- (void)mainThreadDidUpdateHidingStatus:(BOOL)a3;
- (void)profileNotification:(id)a3;
- (void)provideNavigationDonations;
- (void)setEntityAuthorized:(id)a3 specifier:(id)a4;
- (void)setLocationServicesEnabled:(id)a3 specifier:(id)a4;
- (void)setSOSEntityAuthorized:(id)a3 specifier:(id)a4;
- (void)showCoreRoutineSettings:(id)a3;
- (void)showLocationPrivacyPage;
- (void)startLocationStatusUpdates;
- (void)startUpdatingFindMyPreferences;
- (void)stopLocationStatusUpdates;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateAuthLevelStringForSpecifier:(id)a3 andCell:(id)a4;
- (void)updateFindMyFriendsStateBasedOnRestriction;
- (void)updateForApplicationDidBecomeActive:(id)a3;
- (void)updateLocationSharing;
- (void)updateLocationSharingSpecifiersWithReload:(BOOL)a3;
- (void)updateLocationUsage;
- (void)updateMutableStateBasedOnRestriction;
- (void)updateMutableStateForLocationSharing;
- (void)updateRecentlyUsedDate;
- (void)updateTribecaText;
- (void)willBecomeActive;
@end

@implementation PUILocationServicesListController

- (PUILocationServicesListController)init
{
  v11.receiver = self;
  v11.super_class = PUILocationServicesListController;
  v2 = [(PUILocationServicesListController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC17PrivacySettingsUI19FindMyLocateSession);
    locationSharingSession = v2->_locationSharingSession;
    v2->_locationSharingSession = v3;

    v5 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v2->_routineManager;
    v2->_routineManager = v5;

    [(PUILocationServicesListController *)v2 startUpdatingFindMyPreferences];
    [(PUILocationServicesListController *)v2 updateRecentlyUsedDate];
    v7 = dispatch_queue_create("com.apple.settings.PrivacySettingsUI.PUILocationServicesListController.locationServicesAccessQueue", 0);
    locationServicesAccessQueue = v2->locationServicesAccessQueue;
    v2->locationServicesAccessQueue = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel_updateForApplicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
    [v9 addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionEffectiveSettingsChangedNotification" object:0];
    [v9 addObserver:v2 selector:sel_updateAppClipsSpecifierCount_ name:@"com.apple.PrivacySettingsUI.LocationAppClipsStateChanged" object:0];
    [v9 addObserver:v2 selector:sel_updateCoreRoutineSettings_ name:@"PreferencesRoutineStateChanged" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(PUILocationServicesListController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PUILocationServicesListController *)self dismissViewControllerAnimated:0 completion:0];
  }

  [(PUILocationServicesListController *)self stopLocationStatusUpdates];
  [(FindMyLocateSession *)self->_locationSharingSession stopMonitoringPreferenceChangesWithCompletionHandler:&__block_literal_global_283];
  v6.receiver = self;
  v6.super_class = PUILocationServicesListController;
  [(PUILocationServicesListController *)&v6 dealloc];
}

void __44__PUILocationServicesListController_dealloc__block_invoke()
{
  v0 = _PUILoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2657FE000, v0, OS_LOG_TYPE_DEFAULT, "findmylocate: stopMonitoringPreferenceChanges completed ", v1, 2u);
  }
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = PUI_BundleForPrivacySettingsFramework();
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"LOCATION_SERVICES" table:@"Location Services" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCATION"];
  [(PUILocationServicesListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.location" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)profileNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PUILocationServicesListController_profileNotification___block_invoke;
  v6[3] = &unk_279BA10B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__PUILocationServicesListController_profileNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D26180]];

  LODWORD(v2) = [v3 intValue];
  if (v2 != getpid())
  {
    [*(a1 + 40) reloadSpecifiers];
  }
}

- (void)updateLocationUsage
{
  v3 = _PUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "locationManager:updateLocationUsage", buf, 2u);
  }

  v4 = PSUICLCopyAppsUsingLocation();
  v5 = [(NSDictionary *)self->_locationEntitiesDetails allKeys];
  v6 = [v4 allKeys];
  v7 = [v5 count];
  if (v7 == [v6 count] && (objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", v5), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", v6), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToSet:", v9), v9, v8, (v10 & 1) != 0))
  {
    objc_storeStrong(&self->_locationEntitiesDetails, v4);
    locationEntitiesDetails = self->_locationEntitiesDetails;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__PUILocationServicesListController_updateLocationUsage__block_invoke;
    v12[3] = &unk_279BA1B10;
    v12[4] = self;
    [(NSDictionary *)locationEntitiesDetails enumerateKeysAndObjectsUsingBlock:v12];
  }

  else
  {
    [(PUILocationServicesListController *)self reloadSpecifiers];
  }
}

void __56__PUILocationServicesListController_updateLocationUsage__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = v8;
  if (([*(*(a1 + 32) + 1512) containsObject:v9] & 1) == 0)
  {
    v11 = [*(a1 + 32) specifierForID:v9];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 propertyForKey:*MEMORY[0x277D40148]];
      [*(a1 + 32) setUsage:objc_msgSend(*(a1 + 32) forCell:{"locationUsageForEntity:", v9), v13}];
      [*(a1 + 32) updateAuthLevelStringForSpecifier:v12 andCell:v13];
      v14 = [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v10];
      v15 = [v12 propertyForKey:*MEMORY[0x277D3FEB0]];
      if (v14 != [v15 isOn])
      {
        [v15 setOn:v14 animated:1];
      }
    }

    else
    {
      v16 = _PUILoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __56__PUILocationServicesListController_updateLocationUsage__block_invoke_cold_1();
      }

      [*(a1 + 32) reloadSpecifiers];
      *a4 = 1;
    }
  }
}

- (void)startLocationStatusUpdates
{
  if (!self->_locationNotificationsEnabled)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = getCLAppStatusChangedNotification();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, entityStateCallback, v4, 0, 0);

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, self, appInstallCallback, @"com.apple.LaunchServices.applicationRegistered", 0, 0);
    v6 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(v6, self, appUninstallCallback, @"com.apple.LaunchServices.applicationUnregistered", 0, 0);
    self->_locationNotificationsEnabled = 1;
  }
}

- (void)stopLocationStatusUpdates
{
  if (self->_locationNotificationsEnabled)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = getCLAppStatusChangedNotification();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationRegistered", 0);
    v6 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterRemoveObserver(v6, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
    self->_locationNotificationsEnabled = 0;
  }
}

- (int)locationUsageBasedOnDetails:(id)a3
{
  v4 = a3;
  v5 = [getCLLocationManagerClass() activeLocationServiceTypesForLocationDictionary:v4];
  if ((v5 & 2) != 0)
  {
    v8 = 3;
  }

  else if (v5)
  {
    v8 = 4;
  }

  else
  {
    v6 = [getCLLocationManagerClass() dateLocationLastUsedForLocationDictionary:v4];
    if (v6)
    {
      v7 = [(NSDate *)self->_twentyFourHoursAgo laterDate:v6];
      if (v7 == v6)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int)locationUsageForEntity:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 isEqualToString:@"SYSTEM_SERVICES"])
  {
    if ([v4 isEqualToString:@"APP_CLIPS"])
    {
      v5 = +[PUILocationServicesClipsListController clipsLocationUsage];
      goto LABEL_5;
    }

    if ([v4 isEqualToString:@"LOCATION_BASED_ALERTS"])
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v7 = self->_coalescedLocationBasedAlertsSystemServices;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v67;
        v6 = -1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v67 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v66 + 1) + 8 * i)];
            v13 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v12];

            if (v13 > v6)
            {
              v6 = v13;
            }
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v9);
        goto LABEL_73;
      }
    }

    else if ([v4 isEqualToString:@"HOMEKIT"])
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = self->_coalescedHomeKitSystemServices;
      v14 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v63;
        v6 = -1;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v63 != v16)
            {
              objc_enumerationMutation(v7);
            }

            v18 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v62 + 1) + 8 * j)];
            v19 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v18];

            if (v19 > v6)
            {
              v6 = v19;
            }
          }

          v15 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v15);
        goto LABEL_73;
      }
    }

    else if ([v4 isEqualToString:@"NETWORKING_WIRELESS"])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v7 = self->_coalescedWirelessSystemServices;
      v20 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v58 objects:v73 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v59;
        v6 = -1;
        do
        {
          for (k = 0; k != v21; ++k)
          {
            if (*v59 != v22)
            {
              objc_enumerationMutation(v7);
            }

            v24 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v58 + 1) + 8 * k)];
            v25 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v24];

            if (v25 > v6)
            {
              v6 = v25;
            }
          }

          v21 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v58 objects:v73 count:16];
        }

        while (v21);
        goto LABEL_73;
      }
    }

    else if ([v4 isEqualToString:@"ROUTING_AND_TRAFFIC"])
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v7 = self->_coalescedRoutingAndTrafficSystemServices;
      v26 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v54 objects:v72 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v55;
        v6 = -1;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v55 != v28)
            {
              objc_enumerationMutation(v7);
            }

            v30 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v54 + 1) + 8 * m)];
            v31 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v30];

            if (v31 > v6)
            {
              v6 = v31;
            }
          }

          v27 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v54 objects:v72 count:16];
        }

        while (v27);
        goto LABEL_73;
      }
    }

    else if ([v4 isEqualToString:@"IMPROVE_LOCATION_ACCURACY"])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v7 = self->_coalescedImproveLocationAccuracySystemServices;
      v32 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v50 objects:v71 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v51;
        v6 = -1;
        do
        {
          for (n = 0; n != v33; ++n)
          {
            if (*v51 != v34)
            {
              objc_enumerationMutation(v7);
            }

            v36 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v50 + 1) + 8 * n)];
            v37 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v36];

            if (v37 > v6)
            {
              v6 = v37;
            }
          }

          v33 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v50 objects:v71 count:16];
        }

        while (v33);
        goto LABEL_73;
      }
    }

    else
    {
      if (![v4 isEqualToString:@"POLARIS"])
      {
        v7 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:v4];
        v6 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v7];
        goto LABEL_73;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = [(PUILocationServicesListController *)self coalescedImproveMapsServices];
      v38 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v46 objects:v70 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v47;
        v6 = -1;
        do
        {
          for (ii = 0; ii != v39; ++ii)
          {
            if (*v47 != v40)
            {
              objc_enumerationMutation(v7);
            }

            v42 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:*(*(&v46 + 1) + 8 * ii)];
            v43 = [(PUILocationServicesListController *)self locationUsageBasedOnDetails:v42];

            if (v43 > v6)
            {
              v6 = v43;
            }
          }

          v39 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v46 objects:v70 count:16];
        }

        while (v39);
        goto LABEL_73;
      }
    }

    v6 = -1;
LABEL_73:

    goto LABEL_74;
  }

  v5 = +[PUILocationSystemServicesListController systemServicesLocationUsage];
LABEL_5:
  v6 = v5;
LABEL_74:

  v44 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isCoreRoutineAuthorized
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = PSUICLCopyAppsUsingLocation();
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [v2 objectForKey:{*(*(&v9 + 1) + 8 * i), v9}];
        if ([getCLLocationManagerClass() primaryEntityClassForLocationDictionary:v6] == 16)
        {
          LOBYTE(v3) = [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v6];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)isLocationServicesEnabled:(id)a3
{
  isLocationServicesEnabled = self->_isLocationServicesEnabled;
  if (!isLocationServicesEnabled)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(getCLLocationManagerClass(), "locationServicesEnabled")}];
    v6 = self->_isLocationServicesEnabled;
    self->_isLocationServicesEnabled = v5;

    isLocationServicesEnabled = self->_isLocationServicesEnabled;
  }

  return isLocationServicesEnabled;
}

- (void)setLocationServicesEnabled:(id)a3 specifier:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_isLocationServicesEnabled, a3);
  v9 = [v7 BOOLValue];
  v10 = _PUILoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[PUILocationServicesListController setLocationServicesEnabled:specifier:]";
    v38 = 1024;
    v39 = v9;
    _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "%s - enable: %d", buf, 0x12u);
  }

  if (v9 != [getCLLocationManagerClass() locationServicesEnabled])
  {
    if (v9)
    {
      [(PUILocationServicesListController *)self _setLocationServicesEnabled:1];
      if (isModificationAllowedForID(@"com.apple.findmy"))
      {
LABEL_22:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Maps.LocationAuthorizationChangedNotification", 0, 0, 1u);
        goto LABEL_23;
      }

      [v8 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      v11 = [v8 propertyForKey:*MEMORY[0x277D40148]];
      [v11 setCellEnabled:0];
    }

    else
    {
      if (PSIsInEDUMode())
      {
        v13 = @"CONFIRM_LOCATION_EDU_TITLE";
      }

      else
      {
        v13 = @"CONFIRM_LOCATION_TITLE";
      }

      v11 = PUI_LocalizedStringForLocationServices(v13);
      v14 = MEMORY[0x277D75110];
      v15 = [MEMORY[0x277D75418] currentDevice];
      v16 = [v15 userInterfaceIdiom];

      v17 = v16 & 0xFFFFFFFFFFFFFFFBLL;
      v18 = v11;
      if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v18 = [v8 name];
      }

      v19 = [MEMORY[0x277D75418] currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v21 = v11;
      }

      else
      {
        v21 = 0;
      }

      v22 = [MEMORY[0x277D75418] currentDevice];
      v23 = [v22 userInterfaceIdiom];

      v24 = [v14 alertControllerWithTitle:v18 message:v21 preferredStyle:(v23 & 0xFFFFFFFFFFFFFFFBLL) == 1];
      if (v17 == 1)
      {
      }

      v25 = MEMORY[0x277D750F8];
      v26 = PUI_LocalizedStringForLocationServices(@"CANCEL");
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __74__PUILocationServicesListController_setLocationServicesEnabled_specifier___block_invoke;
      v34[3] = &unk_279BA1178;
      v34[4] = self;
      v35 = v8;
      v27 = [v25 actionWithTitle:v26 style:1 handler:v34];
      [v24 addAction:v27];

      v28 = MEMORY[0x277D750F8];
      v29 = PUI_LocalizedStringForLocationServices(@"CONFIRM_LOCATION_TURN_OFF");
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __74__PUILocationServicesListController_setLocationServicesEnabled_specifier___block_invoke_2;
      v33[3] = &unk_279BA1B38;
      v33[4] = self;
      v30 = [v28 actionWithTitle:v29 style:2 handler:v33];
      [v24 addAction:v30];

      [(PUILocationServicesListController *)self presentViewController:v24 animated:1 completion:0];
    }

    goto LABEL_22;
  }

  v12 = _PUILoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[PUILocationServicesListController setLocationServicesEnabled:specifier:]";
    _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "%s - loc services were already enabled.", buf, 0xCu);
  }

LABEL_23:
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __74__PUILocationServicesListController_setLocationServicesEnabled_specifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1560);
  *(v2 + 1560) = MEMORY[0x277CBEC38];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _cancelConfirmDisableForSpecifier:v5];
}

- (void)_cancelConfirmDisableForSpecifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__PUILocationServicesListController__cancelConfirmDisableForSpecifier___block_invoke;
  v6[3] = &unk_279BA10B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __71__PUILocationServicesListController__cancelConfirmDisableForSpecifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1520] == 1)
  {
    result = [v2 reloadSpecifiers];
    *(*(a1 + 32) + 1520) = 0;
  }

  else
  {
    v4 = *(a1 + 40);

    return [v2 reloadSpecifier:v4 animated:1];
  }

  return result;
}

- (BOOL)_isFindMyDeviceSpecifier:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 hasSuffix:@"FindMyDevice.framework"];

  return v4;
}

- (id)isEntityAuthorized:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:v4];
  v6 = [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v5];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (void)setEntityAuthorized:(id)a3 specifier:(id)a4
{
  v9 = a4;
  v6 = [a3 BOOLValue];
  if ((v6 & 1) == 0 && -[PUILocationServicesListController _isFindMyDeviceSpecifier:](self, "_isFindMyDeviceSpecifier:", v9) && ([getPSGFindMyiPhoneControllerClass() shared], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isFindMyiPhoneEnabled"), v7, v8))
  {
    [(PUILocationServicesListController *)self disableAfterLoginConfirmation:v9];
  }

  else
  {
    [(PUILocationServicesListController *)self _setEntityAuthorized:v6 specifier:v9];
  }
}

- (void)setSOSEntityAuthorized:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 BOOLValue])
  {
    [(PUILocationServicesListController *)self setEntityAuthorized:v6 specifier:v7];
  }

  else
  {
    v8 = MEMORY[0x277D75110];
    v9 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_TITLE");
    v10 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_BODY");
    v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:0];

    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D750F8];
    v13 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_TURN_OFF_BUTTON");
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke;
    v21[3] = &unk_279BA1B60;
    objc_copyWeak(&v24, &location);
    v22 = v6;
    v14 = v7;
    v23 = v14;
    v15 = [v12 actionWithTitle:v13 style:0 handler:v21];
    [v11 addAction:v15];

    v16 = MEMORY[0x277D750F8];
    v17 = PUI_LocalizedStringForLocationServices(@"SOS_DISABLE_LOCATION_SERVICES_CONFIRMATION_CANCEL_BUTTON");
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke_2;
    v19[3] = &unk_279BA1B38;
    v20 = v14;
    v18 = [v16 actionWithTitle:v17 style:1 handler:v19];
    [v11 addAction:v18];

    if (PSIsiPad())
    {
      [v11 setPreferredStyle:1];
    }

    [(PUILocationServicesListController *)self presentViewController:v11 animated:1 completion:0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setEntityAuthorized:*(a1 + 32) specifier:*(a1 + 40)];
}

void __70__PUILocationServicesListController_setSOSEntityAuthorized_specifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyForKey:*MEMORY[0x277D3FEB0]];
  [v1 setOn:1 animated:1];
}

- (void)disableAfterLoginConfirmation:(id)a3
{
  v4 = a3;
  v5 = [getPSGFindMyiPhoneControllerClass() shared];
  v6 = [v5 preferredFindMyiPhoneAccount];
  v7 = [v6 username];

  v8 = PUI_LocalizedStringForLocationServices(@"CONFIRM_FMIP_LOCATION_TITLE");
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v7];
  v10 = PUI_LocalizedStringForLocationServices(@"CONFIRM_LOCATION_TURN_OFF");
  v11 = [getPSGFindMyiPhoneControllerClass() shared];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__PUILocationServicesListController_disableAfterLoginConfirmation___block_invoke;
  v13[3] = &unk_279BA1B88;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v11 disablePhoneLocatorWithMessageString:v9 buttonTitle:v10 presentingViewController:self completion:v13];
}

void __67__PUILocationServicesListController_disableAfterLoginConfirmation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if ([v6 length])
    {
      v15 = _PUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "########## authenticated - disable FMiP location service", &buf, 2u);
      }

      [*(a1 + 32) _setEntityAuthorized:0 specifier:*(a1 + 40)];
    }

    goto LABEL_19;
  }

  v8 = [v5 domain];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr;
  v21 = getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr;
  if (!getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v23 = __getFindMyiPhoneControllerErrorDomainSymbolLoc_block_invoke;
    v24 = &unk_279BA0D08;
    v25 = &v18;
    v10 = GeneralSettingsUILibrary();
    v11 = dlsym(v10, "FindMyiPhoneControllerErrorDomain");
    *(v25[1] + 24) = v11;
    getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr = *(v25[1] + 24);
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v9)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    __break(1u);
  }

  v12 = [v8 isEqualToString:{*v9, v18}];

  if (!v12)
  {
    v16 = _PUILoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "*** Unknown error: %@. Cancelling out of disabling FMiP location service", &buf, 0xCu);
    }

    goto LABEL_18;
  }

  v13 = [v5 code];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = _PUILoggingFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "########## already disabled - disable FMiP location service", &buf, 2u);
      }

      goto LABEL_11;
    }

    if (v13 != 3)
    {
      goto LABEL_19;
    }

    v16 = _PUILoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "########## FMiP state in flux - canceling out of disabling FMiP location service", &buf, 2u);
    }

LABEL_18:

    [*(a1 + 32) _cancelConfirmDisableForSpecifier:*(a1 + 40)];
    goto LABEL_19;
  }

  if (!v13)
  {
    v16 = _PUILoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "########## User canceled out of disabling FMiP location service", &buf, 2u);
    }

    goto LABEL_18;
  }

  if (v13 == 1)
  {
    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "########## no account - disable FMiP location service", &buf, 2u);
    }

LABEL_11:

    [*(a1 + 32) _setEntityAuthorized:0 specifier:*(a1 + 40)];
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateMutableStateBasedOnRestriction
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{+[PUILocationServicesListController isLocationRestricted](PUILocationServicesListController, "isLocationRestricted") ^ 1}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = *MEMORY[0x277D3FF38];
    v23 = *MEMORY[0x277D40148];
    v8 = MEMORY[0x277D3FC90];
    v22 = *MEMORY[0x277D3FF38];
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        if (*&v10[*v8] == 6 || (v11 = [*(*(&v25 + 1) + 8 * v9) detailControllerClass], v11 == objc_opt_class()))
        {
          v12 = [v10 propertyForKey:v7];
          if (!v12)
          {
            goto LABEL_10;
          }

          v13 = v12;
          [v10 propertyForKey:v7];
          v14 = v5;
          v15 = v6;
          v17 = v16 = v8;
          v18 = [v17 BOOLValue];
          v19 = [v3 BOOLValue];

          v8 = v16;
          v6 = v15;
          v5 = v14;
          v7 = v22;

          if (v18 != v19)
          {
LABEL_10:
            [v10 setProperty:v3 forKey:v7];
            v20 = [v10 propertyForKey:v23];
            [v20 setCellEnabled:{objc_msgSend(v3, "BOOLValue")}];
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateFindMyFriendsStateBasedOnRestriction
{
  if ((isModificationAllowedForID(@"com.apple.findmy") & 1) == 0)
  {
    v5 = [(PUILocationServicesListController *)self specifierForID:@"com.apple.findmy"];
    v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v5 setProperty:v3 forKey:*MEMORY[0x277D3FF38]];

    v4 = [v5 propertyForKey:*MEMORY[0x277D40148]];
    [v4 setCellEnabled:0];
  }
}

- (void)updateMutableStateForLocationSharing
{
  if ((isModificationAllowedForID(@"com.apple.findmy") & 1) == 0)
  {
    v3 = [(PUILocationServicesListController *)self isLocationServicesEnabled:0];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      v6 = [(PUILocationServicesListController *)self specifierForID:@"LOCATION_SERVICES_MASTER"];
      [v6 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      v5 = [v6 propertyForKey:*MEMORY[0x277D40148]];
      [v5 setCellEnabled:0];
    }
  }
}

- (void)updateRecentlyUsedDate
{
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setHour:-24];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v8 dateByAddingComponents:v4 toDate:v5 options:0];
  twentyFourHoursAgo = self->_twentyFourHoursAgo;
  self->_twentyFourHoursAgo = v6;
}

- (void)updateForApplicationDidBecomeActive:(id)a3
{
  [(PUILocationServicesListController *)self updateRecentlyUsedDate];
  v4 = [(PUILocationServicesListController *)self table];
  [v4 reloadData];
}

- (void)willBecomeActive
{
  v4.receiver = self;
  v4.super_class = PUILocationServicesListController;
  [(PUILocationServicesListController *)&v4 willBecomeActive];
  v3 = [(PUILocationServicesListController *)self presentedViewController];

  if (v3)
  {
    [(PUILocationServicesListController *)self reloadSpecifiers];
  }

  else
  {
    self->_deferredRefreshDueToConfirm = 1;
  }
}

- (void)showLocationPrivacyPage
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.locationservices"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (id)hiddenBundleIdentifiers
{
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.siri", @"/System/Library/LocationBundles/ClipServicesLocation.bundle", 0}];
  if (PSIsInEDUMode())
  {
    v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"/System/Library/PrivateFrameworks/FMF.framework", 0}];
    v4 = [v2 setByAddingObjectsFromSet:v3];
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (id)localizedDisplayNameForBundleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mobilesafari"])
  {
    v4 = PUI_LocalizedStringForLocationServices(@"SAFARI_WEBSITES");
  }

  else
  {
    v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v3];
    v4 = [v5 localizedName];
  }

  return v4;
}

- (BOOL)_isBundleBlacklisted:(id)a3
{
  v3 = a3;
  if (_isBundleBlacklisted__onceToken != -1)
  {
    [PUILocationServicesListController _isBundleBlacklisted:];
  }

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 effectiveBlacklistedAppBundleIDs];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v7 = [v6 lastPathComponent];

  v8 = [_isBundleBlacklisted__appForBundle objectForKeyedSubscript:v7];
  if ([v8 length])
  {
    v9 = [v5 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __58__PUILocationServicesListController__isBundleBlacklisted___block_invoke()
{
  v0 = _isBundleBlacklisted__appForBundle;
  _isBundleBlacklisted__appForBundle = &unk_28772B6A8;
}

- (id)locationDetailSpecifiersForAppsAndBundles
{
  v3 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__PUILocationServicesListController_locationDetailSpecifiersForAppsAndBundles__block_invoke;
  v25[3] = &unk_279BA1BB0;
  v25[4] = &v26;
  v4 = [(PUILocationServicesListController *)self locationDetailSpecifiersWithDetailsMatching:v25];
  [v3 addObjectsFromArray:v4];

  v5 = _os_feature_enabled_impl();
  v6 = MEMORY[0x277D3FE58];
  v7 = MEMORY[0x277D40020];
  v8 = MEMORY[0x277D3FFD8];
  if (v5)
  {
    v9 = [MEMORY[0x277D262A0] sharedConnection];
    v10 = [v9 isAppClipsAllowed];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(v27 + 6)];
      v12 = PUI_LocalizedStringForPrivacy(v11);
      [(PUILocationServicesListController *)self setAppClipsCount:v12];

      v13 = MEMORY[0x277D3FAD8];
      v14 = PUI_LocalizedStringForDimSum(@"APP_CLIPS");
      v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:sel_getAppClipsCount_ detail:objc_opt_class() cell:2 edit:0];

      [v15 setIdentifier:@"APP_CLIPS"];
      [v15 setProperty:objc_opt_class() forKey:*v6];
      [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v7];
      [v15 setObject:@"com.apple.graphic-icon.app-clips" forKeyedSubscript:*v8];
      [v3 insertObject:v15 atIndex:1];
    }
  }

  v16 = MEMORY[0x277D3FAD8];
  v17 = PUI_LocalizedStringForLocationServices(@"SYSTEM_SERVICES");
  v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v18 setIdentifier:@"SYSTEM_SERVICES"];
  [v18 setProperty:objc_opt_class() forKey:*v6];
  [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v7];
  [v18 setObject:@"com.apple.graphic-icon.gear" forKeyedSubscript:*v8];
  [v3 addObject:v18];
  v19 = [MEMORY[0x277D75418] currentDevice];
  v20 = [v19 sf_isiPhone];

  if (v20)
  {
    v21 = [(PUILocationServicesListController *)self loadSensorKitSpecifiersProvider];
    sensorKitSpecifiersProvider = self->_sensorKitSpecifiersProvider;
    self->_sensorKitSpecifiersProvider = v21;

    v23 = [(SRRelatedSettingsProvider *)self->_sensorKitSpecifiersProvider specifiersForRelatedSettings:@"Location"];
    if (v23)
    {
      [v3 addObjectsFromArray:v23];
    }
  }

  _Block_object_dispose(&v26, 8);

  return v3;
}

BOOL __78__PUILocationServicesListController_locationDetailSpecifiersForAppsAndBundles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"BundleId"];
  v5 = PUIIsAppClip(v4);

  if (v5 && [getCLLocationManagerClass() isEntityAuthorizedForLocationDictionary:v3])
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return !v5;
}

- (id)locationDetailSpecifiersWithDetailsMatching:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a3;
  obj = PSUICLCopyAppsUsingLocation();
  v4 = _PUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v76 = obj;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "specifiers -- CLCopyAppsUsingLocation:\n%@", buf, 0xCu);
  }

  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](obj, "count")}];
  objc_storeStrong(&self->_locationEntitiesDetails, obj);
  v44 = PUIGetActivePairedDevice();
  v53 = [MEMORY[0x277D2BD58] sharedInstance];
  ScreenScale();
  if (v5 == 2)
  {
    v6 = 47;
  }

  else
  {
    v6 = 48;
  }

  v52 = v6;
  v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([obj count])
  {
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v65 = [v7 effectiveBlacklistedAppBundleIDs];

    v8 = MEMORY[0x277CBEB98];
    v9 = [(PUILocationServicesListController *)self hiddenBundleIdentifiers];
    v63 = [v8 setWithSet:v9];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v10 = obj;
    v11 = [v10 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (!v11)
    {
      goto LABEL_74;
    }

    v67 = *v72;
    v49 = *MEMORY[0x277CBEC40];
    v48 = *MEMORY[0x277D40020];
    v47 = *MEMORY[0x277D40008];
    v51 = *MEMORY[0x277D3FFC0];
    v54 = *MEMORY[0x277D3FE58];
    v55 = *MEMORY[0x277D3FFB8];
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v72 != v67)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v71 + 1) + 8 * v12);
        v14 = [v10 objectForKey:v13];
        if (v3 && (v3[2](v3, v14) & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = [v14 objectForKeyedSubscript:@"BundleId"];
        if ([v65 containsObject:v15])
        {

LABEL_20:
          [(NSArray *)v66 addObject:v13];
          goto LABEL_66;
        }

        v16 = [v14 objectForKeyedSubscript:@"BundlePath"];
        v17 = [(PUILocationServicesListController *)self _isBundleBlacklisted:v16];

        if (v17 || [v63 containsObject:v13])
        {
          goto LABEL_20;
        }

        v18 = [getCLLocationManagerClass() primaryEntityClassForLocationDictionary:v14];
        v19 = v18;
        v20 = 0;
        v21 = 0;
        if (v18 > 3)
        {
          if (v18 == 4)
          {
            goto LABEL_20;
          }

          if (v18 == 16)
          {
            goto LABEL_20;
          }

          v58 = 0;
          v57 = 0;
          v60 = 0;
          oslog = 0;
          v59 = 0;
          if (v18 == 32)
          {
            goto LABEL_20;
          }

          goto LABEL_55;
        }

        if (!v18)
        {
          v23 = _PUILoggingFacility();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v76 = v13;
            v77 = 2112;
            v78 = v14;
            _os_log_impl(&dword_2657FE000, v23, OS_LOG_TYPE_DEFAULT, "EntityClassUnknown:\n%@\n%@", buf, 0x16u);
          }

          goto LABEL_20;
        }

        if (v18 != 1)
        {
          v58 = 0;
          v57 = 0;
          v60 = 0;
          oslog = 0;
          v59 = 0;
          if (v18 == 2)
          {
            v59 = [v14 objectForKey:@"BundlePath"];
            osloga = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v59];
            v22 = [osloga objectForInfoDictionaryKey:v49];
            if ([v22 length])
            {
              v57 = [osloga bundleURL];
              v21 = 0;
              v20 = 0;
              v58 = 0;
              v60 = 0;
            }

            else
            {
              v45 = [v59 lastPathComponent];

              v27 = _PUILoggingFacility();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v76 = v59;
                _os_log_impl(&dword_2657FE000, v27, OS_LOG_TYPE_DEFAULT, "No display name found for bundle: %@", buf, 0xCu);
              }

              v21 = 0;
              v20 = 0;
              v58 = 0;
              v57 = 0;
              v60 = 0;
              v22 = v45;
            }

LABEL_54:

            oslog = v22;
            goto LABEL_55;
          }

          goto LABEL_55;
        }

        v60 = [v14 objectForKey:@"BundleId"];
        v58 = [MEMORY[0x277D75D70] bundleIdentifierContainsWebClipIdentifier:v60];
        if (v58)
        {
          oslog = [(PUILocationServicesListController *)self localizedDisplayNameForBundleID:v60];
          if (![oslog length])
          {
            goto LABEL_37;
          }
        }

        else
        {
          v24 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v60];
          v25 = [v24 appState];
          v26 = [v25 isInstalled];

          if (!v26)
          {
            if (!v44)
            {
              [(NSArray *)v66 addObject:v13];

              goto LABEL_66;
            }

            oslog = PUIDisplayNameForWatchApp(v60);
            if (oslog)
            {
              v21 = v60;
            }

            else
            {
              v21 = PUIWatchBundleIDForBundleID(v60);
              oslog = PUIDisplayNameForWatchApp(v21);
            }

            if (!v21)
            {
LABEL_37:
              [(NSArray *)v66 addObject:v13];

              goto LABEL_66;
            }

            v20 = 1;
            goto LABEL_41;
          }

          oslog = [(PUILocationServicesListController *)self localizedDisplayNameForBundleID:v60];
        }

        v21 = 0;
        v20 = 0;
LABEL_41:
        if (![oslog length])
        {
          v28 = v60;
          if (v21)
          {
            v28 = v21;
          }

          v22 = v28;

          osloga = _PUILoggingFacility();
          if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v76 = v22;
            _os_log_impl(&dword_2657FE000, osloga, OS_LOG_TYPE_DEFAULT, "No display name found for application: %@", buf, 0xCu);
          }

          v57 = 0;
          v59 = 0;
          goto LABEL_54;
        }

        v57 = 0;
        v59 = 0;
LABEL_55:
        v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:oslog target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
        if (v20)
        {
          v30 = PSBlankIconImage();
          [v29 setProperty:v30 forKey:v51];

          objc_initWeak(buf, self);
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke;
          v68[3] = &unk_279BA1900;
          v69 = v29;
          objc_copyWeak(&v70, buf);
          [v53 getIconForBundleID:v21 iconVariant:v52 block:v68 timeout:-1.0];
          objc_destroyWeak(&v70);

          objc_destroyWeak(buf);
        }

        else if (v19 == 1)
        {
          v31 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v29 setProperty:v31 forKey:v48];

          [v29 setProperty:v60 forKey:v47];
        }

        else if (v19 == 2 && v57)
        {
          v32 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v29 setProperty:v32 forKey:v48];

          v33 = [MEMORY[0x277CCA8D8] bundleWithURL:v57];
          v34 = [v33 bundleIdentifier];

          if ([v34 isEqualToString:@"com.apple.AssistantServices"])
          {
            [v29 setProperty:@"com.apple.siri" forKey:v47];
          }

          else
          {
            [v29 setProperty:v57 forKey:@"_BundleUrl_"];
          }
        }

        [v29 setProperty:v13 forKey:v55];
        v35 = [MEMORY[0x277CCABB0] numberWithBool:v58];
        [v29 setProperty:v35 forKey:@"WebApp"];

        [v29 setProperty:objc_opt_class() forKey:v54];
        [v56 addObject:v29];

LABEL_66:
        ++v12;
      }

      while (v11 != v12);
      v36 = [v10 countByEnumeratingWithState:&v71 objects:v79 count:16];
      v11 = v36;
      if (!v36)
      {
LABEL_74:

        [v56 sortUsingFunction:PUICompareSpecifiersByName context:0];
        break;
      }
    }
  }

  v37 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v38 = [(PUILocationServicesListController *)self specifier];
  v39 = [v38 identifier];
  if ([v39 isEqualToString:@"APP_CLIPS"])
  {
    v40 = @"PUIClipLocationIndicatorExplanationView";
  }

  else
  {
    v40 = @"PUILocationIndicatorExplanationView";
  }

  [v37 setProperty:v40 forKey:*MEMORY[0x277D3FF48]];

  [v37 setProperty:@"APP" forKey:@"_ExplanationIdSuffix_"];
  [v46 addObject:v37];
  [v46 addObjectsFromArray:v56];
  ignoredLocationEntities = self->_ignoredLocationEntities;
  self->_ignoredLocationEntities = v66;

  [(PUILocationServicesListController *)self startLocationStatusUpdates];
  v42 = *MEMORY[0x277D85DE8];

  return v46;
}

void __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __81__PUILocationServicesListController_locationDetailSpecifiersWithDetailsMatching___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

- (id)loadSensorKitSpecifiersProvider
{
  v2 = PSBundlePathForPreferenceBundle();
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  v4 = v3;
  if (v3 && (v5 = [v3 classNamed:@"SRRelatedSpecifiers"]) != 0)
  {
    v6 = objc_alloc_init(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_locationSharingSpecifierWasTapped:(id)a3
{
  v4 = MEMORY[0x277D07C40];
  v5 = a3;
  v7 = objc_alloc_init(v4);
  [v7 setSpecifier:v5];

  [v7 setParentController:self];
  v6 = [(PUILocationServicesListController *)self rootController];
  [v7 setRootController:v6];

  [(PUILocationServicesListController *)self showController:v7 animate:1];
}

- (id)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)primaryAccount
{
  primaryAccount = self->_primaryAccount;
  if (!primaryAccount)
  {
    v4 = [(PUILocationServicesListController *)self accountStore];
    v5 = [v4 aa_primaryAppleAccount];
    v6 = self->_primaryAccount;
    self->_primaryAccount = v5;

    primaryAccount = self->_primaryAccount;
  }

  return primaryAccount;
}

- (BOOL)_shouldEnableLocationSharingSpecifier
{
  if ([objc_opt_class() isLocationRestricted])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(PUILocationServicesListController *)self primaryAccount];
    if ([v4 aa_isPrimaryEmailVerified])
    {
      v5 = [(PUILocationServicesListController *)self primaryAccount];
      v3 = [v5 aa_needsToVerifyTerms] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)locationSharingSpecifiers
{
  if (!PSIsInEDUMode())
  {
    v5 = [(PUILocationServicesListController *)self _shouldEnableLocationSharingSpecifier];
    v4 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 setProperty:@"LOCATION_SHARING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    [v4 addObject:v6];
    v7 = MEMORY[0x277D3FAD8];
    v8 = PUI_LocalizedStringForLocationServices(@"LOCATION_SHARING");
    v9 = [v7 preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:2 edit:0];

    [v9 setControllerLoadAction:sel__locationSharingSpecifierWasTapped_];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [v9 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

    [v9 setIdentifier:@"LOCATION_SHARING"];
    [v4 addObject:v9];
    if (!v5 || ![(PUILocationServicesListController *)self isLocationSharingEnabled])
    {
      goto LABEL_16;
    }

    v11 = [(PUILocationServicesListController *)self locationSharingDevice];
    if ([v11 isThisDevice])
    {
      if ([getCLLocationManagerClass() locationServicesEnabled])
      {
        v12 = @"LOCATION_SHARING_FOOTER";
      }

      else
      {
        v12 = @"LOCATION_SHARING_DISABLED_FOOTER";
      }

      v13 = PUI_LocalizedStringForLocationServices(v12);
    }

    else
    {
      v14 = [v11 deviceName];

      if (!v14)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = PUI_LocalizedStringForLocationServices(@"LOCATION_SHARING_FOOTER_OTHER_DEVICE");
      v17 = [v11 deviceName];
      v13 = [v15 stringWithFormat:v16, v17];
    }

    [v6 setProperty:v13 forKey:*MEMORY[0x277D3FF88]];

    goto LABEL_15;
  }

  v3 = _PUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "Configuration does not want location sharing specifiers.", buf, 2u);
  }

  v4 = 0;
LABEL_17:

  return v4;
}

- (void)updateLocationSharingSpecifiersWithReload:(BOOL)a3
{
  v3 = a3;
  self->receivedAppListFromCoreLocation = 0;
  locationSharingAppList = self->locationSharingAppList;
  self->locationSharingAppList = 0;

  if (v3)
  {
    v6 = [(PUILocationServicesListController *)self indexOfSpecifierID:@"LOCATION_SHARING_GROUP"];
    v7 = [(PUILocationServicesListController *)self locationSharingSpecifiers];
    v8 = v7;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7)
    {
      v9 = [v7 count];
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = *MEMORY[0x277D3FFB8];
        do
        {
          v12 = [(PUILocationServicesListController *)self specifierAtIndex:v6 + v10];
          v13 = [v12 propertyForKey:v11];

          if (v13)
          {
            v14 = [v8 objectAtIndexedSubscript:v10];
            [v14 setProperty:v13 forKey:v11];
          }

          ++v10;
        }

        while (v9 != v10);
      }

      [(PUILocationServicesListController *)self updateSpecifiersInRange:v6 withSpecifiers:v9, v8];
    }
  }

  v15 = [(PUILocationServicesListController *)self specifierForID:@"/System/Library/PrivateFrameworks/FMF.framework"];
  if (v15)
  {
    v18 = v15;
    v16 = !+[PUILocationServicesListController isLocationRestricted]&& [(PUILocationServicesListController *)self isLocationSharingModificationAllowed];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v18 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

    v15 = v18;
    if (v3)
    {
      [(PUILocationServicesListController *)self reloadSpecifier:v18 animated:1];
      v15 = v18;
    }
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = MGGetBoolAnswer();
    v8 = PUI_LocalizedStringForLocationServices(@"ABOUT_LOCATION_AND_PRIVACY");
    v9 = MEMORY[0x277CCACA8];
    v10 = SFLocalizableWAPIStringKeyForKey();
    v11 = PUI_LocalizedStringForLocationServices(v10);
    v37 = v8;
    v12 = [v9 stringWithFormat:@"%@ %@", v11, v8];

    if ((v7 & 1) == 0 && ([MEMORY[0x277D3FB28] wifiEnabled] & 1) == 0)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = SFLocalizableWAPIStringKeyForKey();
      v15 = PUI_LocalizedStringForLocationServices(v14);
      v16 = [v13 stringWithFormat:@"%@\n\n%@", v15, v12];

      v12 = v16;
    }

    v17 = [MEMORY[0x277D2BCF8] sharedInstance];
    v18 = [v17 isPaired];

    if (v18)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = PUI_LocalizedStringForLocationServices(@"DESCRIPTION_WATCH");
      v21 = [v19 stringWithFormat:@"%@\n\n%@", v12, v20];

      v12 = v21;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v6 setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

    [v6 setProperty:v12 forKey:*MEMORY[0x277D3FF70]];
    v43.location = [v12 rangeOfString:v8];
    v24 = NSStringFromRange(v43);
    [v6 setProperty:v24 forKey:*MEMORY[0x277D3FF58]];

    v25 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v6 setProperty:v25 forKey:*MEMORY[0x277D3FF68]];

    [v6 setProperty:@"showLocationPrivacyPage" forKey:*MEMORY[0x277D3FF50]];
    [v5 addObject:v6];
    v26 = MEMORY[0x277D3FAD8];
    v27 = PUI_LocalizedStringForLocationServices(@"LOCATION_SERVICES");
    v28 = [v26 preferenceSpecifierNamed:v27 target:self set:sel_setLocationServicesEnabled_specifier_ get:sel_isLocationServicesEnabled_ detail:0 cell:6 edit:0];

    [v5 addObject:v28];
    v29 = MEMORY[0x277D3FAD8];
    v30 = PUI_LocalizedStringForLocationServices(@"PRIVACY_ALERTS");
    v31 = [v29 preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v31 setIdentifier:@"LOCATION_ALERTS"];
    [v5 addObject:v31];
    v32 = [v5 lastObject];
    [v32 setProperty:@"LOCATION_SERVICES_MASTER" forKey:*MEMORY[0x277D3FFB8]];
    objc_initWeak(&location, self);
    if (self->receivedAppListFromCoreLocation)
    {
      [v5 addObjectsFromArray:self->locationSharingAppList];
    }

    else
    {
      v33 = [MEMORY[0x277CBEB18] array];
      locationServicesAccessQueue = self->locationServicesAccessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__PUILocationServicesListController_specifiers__block_invoke;
      block[3] = &unk_279BA18D8;
      block[4] = self;
      v39 = v33;
      v35 = v33;
      objc_copyWeak(&v40, &location);
      dispatch_async(locationServicesAccessQueue, block);
      objc_destroyWeak(&v40);
    }

    objc_storeStrong((&self->super.super.super.super.super.isa + v3), v5);
    [(PUILocationServicesListController *)self updateSpecifiersForImposedSettingsWithReload:0];
    [(PUILocationServicesListController *)self updateLocationSharing];
    [(PUILocationServicesListController *)self updateTribecaText];
    objc_destroyWeak(&location);

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __47__PUILocationServicesListController_specifiers__block_invoke(id *a1)
{
  v2 = [getCLLocationManagerClass() locationServicesEnabled];
  v3 = [a1[4] locationSharingSpecifiers];
  v4 = v3;
  if (!v2)
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [a1[4] locationDetailSpecifiersForAppsAndBundles];
  if (v4)
  {
LABEL_5:
    [a1[5] addObjectsFromArray:v4];
  }

LABEL_6:
  if (v5)
  {
    [a1[5] addObjectsFromArray:v5];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PUILocationServicesListController_specifiers__block_invoke_2;
  v6[3] = &unk_279BA1060;
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
}

void __47__PUILocationServicesListController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) copy];
    v3 = WeakRetained[199];
    WeakRetained[199] = v2;

    *(WeakRetained + 1584) = 1;
  }

  [WeakRetained reloadSpecifiers];
}

- (id)_iconForLocationUsage:(int)a3
{
  switch(a3)
  {
    case 2:
      v3 = MEMORY[0x277D755B8];
      v4 = MEMORY[0x277D755D0];
      v5 = [MEMORY[0x277D75348] secondaryLabelColor];
      goto LABEL_7;
    case 4:
      v3 = MEMORY[0x277D755B8];
      v6 = MEMORY[0x277D755D0];
      v7 = [MEMORY[0x277D75348] systemPurpleColor];
      v8 = [v6 configurationWithHierarchicalColor:v7];
      v9 = @"location";
LABEL_8:
      v10 = [v3 systemImageNamed:v9 withConfiguration:v8];

      goto LABEL_10;
    case 3:
      v3 = MEMORY[0x277D755B8];
      v4 = MEMORY[0x277D755D0];
      v5 = [MEMORY[0x277D75348] systemPurpleColor];
LABEL_7:
      v7 = v5;
      v8 = [v4 configurationWithHierarchicalColor:v5];
      v9 = @"location.fill";
      goto LABEL_8;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(PUILocationServicesListController *)self indexForIndexPath:a5];
  v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
  v10 = [v9 identifier];
  v11 = [(PUILocationServicesListController *)self locationUsageForEntity:v10];

  objc_opt_class();
  v18 = v7;
  if (objc_opt_isKindOfClass())
  {
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if ([v9 cellType] == 6)
  {
    v14 = [(PUILocationServicesListController *)self _iconForLocationUsage:v11];
    if (v14)
    {
      [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277D40180]];
    }

    else
    {
      [v9 removePropertyForKey:*MEMORY[0x277D40180]];
    }

    [v13 refreshCellContentsWithSpecifier:v9];
  }

  else
  {
    [(PUILocationServicesListController *)self setUsage:v11 forCell:v13];
    if ([v18 isMemberOfClass:objc_opt_class()])
    {
      v15 = [v9 identifier];
      if ([v15 isEqualToString:@"SYSTEM_SERVICES"])
      {
      }

      else
      {
        v16 = [v9 identifier];
        v17 = [v16 isEqualToString:@"APP_CLIPS"];

        if ((v17 & 1) == 0)
        {
          [(PUILocationServicesListController *)self updateAuthLevelStringForSpecifier:v9 andCell:v13];
        }
      }
    }
  }
}

- (void)updateAuthLevelStringForSpecifier:(id)a3 andCell:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [(NSDictionary *)self->_locationEntitiesDetails objectForKey:v7];
  if (v8)
  {
    v9 = [getCLLocationManagerClass() entityAuthorizationForLocationDictionary:v8];
  }

  else
  {
    v10 = _PUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    v9 = 1;
  }

  v23 = 0;
  v11 = [getCLLocationManagerClass() getVisitHistoryAccess:&v23 + 4 forBundleIdentifier:v7];
  v12 = [getCLLocationManagerClass() getLearnedRoutesAccess:&v23 forBundleIdentifier:v7];
  if ((v11 & 1) == 0)
  {
    v13 = _PUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    HIDWORD(v23) = 0;
  }

  if ((v12 & 1) == 0)
  {
    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    LODWORD(v23) = 0;
  }

  if ([v7 isEqualToString:@"com.apple.Maps"])
  {
    v15 = _PUILoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v25 = v9;
      v26 = 2048;
      v27 = v23;
      v28 = 2048;
      v29 = HIDWORD(v23);
      _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "[153673845] Setting auth level to %lu %lu %lu", buf, 0x20u);
    }
  }

  [(PUILocationServicesListController *)self setAuthLevel:v9 learnedRoutesAccess:v23 visitHistoryAccess:HIDWORD(v23) forCell:v6];
  if ([v7 isEqualToString:@"com.apple.Maps"])
  {
    v16 = [v6 location];
    v17 = [v16 authLevelString];
    v18 = v17;
    v19 = @"(nil)";
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    v21 = _PUILoggingFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&dword_2657FE000, v21, OS_LOG_TYPE_DEFAULT, "[153673845] Set auth level string: %@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)startUpdatingFindMyPreferences
{
  objc_initWeak(&location, self);
  [(FindMyLocateSession *)self->_locationSharingSession startMonitoringPrefrenceChangesWithCompletionHandler:&__block_literal_global_514];
  locationSharingSession = self->_locationSharingSession;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_515;
  v7[3] = &unk_279BA1BD8;
  objc_copyWeak(&v8, &location);
  [(FindMyLocateSession *)locationSharingSession setMeDeviceUpdateCallback:v7];
  v4 = self->_locationSharingSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_517;
  v5[3] = &unk_279BA1C00;
  objc_copyWeak(&v6, &location);
  [(FindMyLocateSession *)v4 setShareMyLocationUpdateCallback:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _PUILoggingFacility();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: startMonitoringPrefrenceChanges completed successfully", v5, 2u);
  }
}

void __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_515(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: didUpdateMeDevice: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didChangeActiveLocationSharingDevice:v3];

  v6 = *MEMORY[0x277D85DE8];
}

void __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_517(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _PUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: didUpdaLocationSharingStatus. Sharing?: %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateHidingStatus:a2 ^ 1u];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateLocationSharing
{
  objc_initWeak(&location, self);
  locationSharingSession = self->_locationSharingSession;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PUILocationServicesListController_updateLocationSharing__block_invoke;
  v7[3] = &unk_279BA1C28;
  objc_copyWeak(&v8, &location);
  [(FindMyLocateSession *)locationSharingSession isMyLocationEnabledWithCompletionHandler:v7];
  v4 = self->_locationSharingSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PUILocationServicesListController_updateLocationSharing__block_invoke_520;
  v5[3] = &unk_279BA1C50;
  objc_copyWeak(&v6, &location);
  [(FindMyLocateSession *)v4 getActiveLocationSharingDeviceWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__PUILocationServicesListController_updateLocationSharing__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _PUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "findmylocate: locationSharingEnabled error %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateHidingStatus:a2 ^ 1u];

  v8 = *MEMORY[0x277D85DE8];
}

void __58__PUILocationServicesListController_updateLocationSharing__block_invoke_520(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "findmylocate: locationSharingDevice error %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didChangeActiveLocationSharingDevice:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)mainThreadConnectionError:(id)a3
{
  locationSharingSession = self->_locationSharingSession;
  self->_locationSharingSession = 0;

  [(PUILocationServicesListController *)self mainThreadDidChangeActiveLocationSharingDevice:0];
}

- (void)mainThreadDidChangeActiveLocationSharingDevice:(id)a3
{
  v5 = a3;
  if (self->_locationSharingDevice != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_locationSharingDevice, a3);
    [(PUILocationServicesListController *)self updateLocationSharingSpecifiersWithReload:1];
    v5 = v6;
  }
}

- (void)mainThreadDidUpdateHidingStatus:(BOOL)a3
{
  v3 = a3;
  locationSharingEnabled = self->_locationSharingEnabled;
  if (!locationSharingEnabled || [(NSNumber *)locationSharingEnabled BOOLValue]== a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:!v3];
    v7 = self->_locationSharingEnabled;
    self->_locationSharingEnabled = v6;

    [(PUILocationServicesListController *)self updateLocationSharingSpecifiersWithReload:1];
  }
}

- (void)didChangeActiveLocationSharingDevice:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__PUILocationServicesListController_didChangeActiveLocationSharingDevice___block_invoke;
  v6[3] = &unk_279BA10B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)didUpdateHidingStatus:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__PUILocationServicesListController_didUpdateHidingStatus___block_invoke;
  v3[3] = &unk_279BA1850;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)updateTribecaText
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isInternalInstall];

  if (v4)
  {
    v5 = [MEMORY[0x277D08F78] sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__PUILocationServicesListController_updateTribecaText__block_invoke;
    v6[3] = &unk_279BA1C78;
    v6[4] = self;
    [v5 fmipStateWithCompletion:v6];
  }
}

void __54__PUILocationServicesListController_updateTribecaText__block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    if (a2 >= 3)
    {
      v7 = _PUILoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[PUILocationServicesListController updateTribecaText]_block_invoke";
        _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%s: FMIP state is off or unknown.", buf, 0xCu);
      }

      v6 = PUITribecaSupportedText();
    }

    else
    {
      v6 = 0;
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__PUILocationServicesListController_updateTribecaText__block_invoke_523;
    v10[3] = &unk_279BA10B0;
    v10[4] = *(a1 + 32);
    v11 = v6;
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__PUILocationServicesListController_updateTribecaText__block_invoke_523(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tribecaSpecifier];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 tribecaSpecifier];
    [v3 removeSpecifier:v4 animated:1];
  }

  v5 = *(a1 + 40);
  v6 = _PUILoggingFacility();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[PUILocationServicesListController updateTribecaText]_block_invoke";
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%s: showing tribeca text", &v13, 0xCu);
    }

    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TRIBECA_GROUP"];
    [v7 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x277D3FF88]];
    [*(a1 + 32) setTribecaSpecifier:v7];
    v8 = *(a1 + 32);
    v9 = [v8 tribecaSpecifier];
    v10 = [*(a1 + 32) specifiers];
    v11 = [v10 lastObject];
    [v8 insertSpecifier:v9 afterSpecifier:v11];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __54__PUILocationServicesListController_updateTribecaText__block_invoke_523_cold_1();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)showCoreRoutineSettings:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FrequentLocationsDisableAuthentication", @"com.apple.routined", &keyExistsAndHasValidFormat);
  v6 = [MEMORY[0x277D75418] currentDevice];
  if ([v6 sf_isInternalInstall])
  {
    v7 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {

    goto LABEL_8;
  }

  if (!AppBooleanValue)
  {
LABEL_8:
    v8 = objc_alloc_init(MEMORY[0x277CD4790]);
    v22 = 0;
    v9 = [v8 canEvaluatePolicy:2 error:&v22];
    v10 = v22;
    v11 = v10;
    if (v9)
    {
      v12 = PUI_LocalizedStringForLocationServices(@"VIEW_CORE_ROUTINE");
      if (_os_feature_enabled_impl())
      {
        v13 = PUI_LocalizedStringForLocationServices(@"VIEW_CORE_ROUTINE_LOCATION_PLUS");

        v12 = v13;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke_543;
      v19[3] = &unk_279BA1CC8;
      v19[4] = self;
      v20 = v4;
      [v8 evaluatePolicy:2 localizedReason:v12 reply:v19];

LABEL_21:
      goto LABEL_22;
    }

    v14 = [v10 domain];
    if ([v14 isEqualToString:*MEMORY[0x277CD4770]])
    {
      v15 = [v11 code];

      if (v15 == -5)
      {
        v16 = _PUILoggingFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "Cannot evaluate authentication policy for significant locations, no passcode set, allowing access.", buf, 2u);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke;
        block[3] = &unk_279BA0B28;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        goto LABEL_21;
      }
    }

    else
    {
    }

    v17 = _PUILoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_2657FE000, v17, OS_LOG_TYPE_DEFAULT, "Cannot evaluate authentication policy for significant locations, error %@, returning.", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
}

void __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke_543(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__PUILocationServicesListController_showCoreRoutineSettings___block_invoke_2;
  v8[3] = &unk_279BA1CA0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)_handleAuthenticationForSender:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v7 || !a4)
  {
    v8 = _PUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v9 = [v7 description];
      }

      else
      {
        v9 = &stru_28771E540;
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "Autentication policy did not evaluate successfully, returning, %@", &v11, 0xCu);
      if (v7)
      {
      }
    }
  }

  else
  {
    [(PUILocationServicesListController *)self _pushCoreRoutineViewController];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_pushCoreRoutineViewController
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v10 = [v3 objectAtIndex:0];

  v4 = [v10 stringByAppendingPathComponent:@"PreferenceBundles/CoreRoutineSettings.bundle"];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  v6 = [v5 load];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277D75AC8] storyboardWithName:@"Main" bundle:v5];
    v9 = [v8 instantiateInitialViewController];
    if (v9)
    {
      [(PUILocationServicesListController *)self showController:v9 animate:1];
    }
  }
}

void __56__PUILocationServicesListController_updateLocationUsage__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateAuthLevelStringForSpecifier:andCell:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAuthLevelStringForSpecifier:andCell:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAuthLevelStringForSpecifier:andCell:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__PUILocationServicesListController_startUpdatingFindMyPreferences__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__PUILocationServicesListController_updateTribecaText__block_invoke_523_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end