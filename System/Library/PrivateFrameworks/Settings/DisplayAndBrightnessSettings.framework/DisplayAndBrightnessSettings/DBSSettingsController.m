@interface DBSSettingsController
+ (id)BOOLeanCapabilitiesToTest;
- (BOOL)proModeSupported;
- (BOOL)shouldShowAlwaysOn;
- (BOOL)shouldShowAutoLock;
- (BOOL)shouldShowCaseLock;
- (BOOL)shouldShowLockGroup;
- (DBSSettingsController)init;
- (DBSSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_darkAppearanceTimeString;
- (id)_deviceAppearanceScheduleSpecifier;
- (id)_deviceAppearanceScheduleString;
- (id)_initialAutoLock;
- (id)_lightAppearanceTimeString;
- (id)autoLock:(id)a3;
- (id)autoLockTitles;
- (id)autoLockValues:(id)a3;
- (id)blueLightSchedule:(id)a3;
- (id)boldTextEnabledForSpecifier:(id)a3;
- (id)connectedDisplaySpecifiers;
- (id)getAppearanceValueForSpecifier:(id)a3;
- (id)getAutomaticAppearanceEnabledForSpecifier:(id)a3;
- (id)liquidGlassLegibilitySettingForSpecifier:(id)a3;
- (id)localizedTimeForTime:(id)a3;
- (id)lockGroupFooterText;
- (id)locksAndUnlocksWithCase:(id)a3;
- (id)makeArrangementSpecifier;
- (id)specifiers;
- (void)_localizeAutoLockTitles;
- (void)_localizeAutoLockTitlesWithSpecifiers:(id)a3;
- (void)_reloadBlueLightSpecifiers:(id)a3 reloadUI:(BOOL)a4;
- (void)_updateAutoLockSpecifiers:(id)a3;
- (void)_updateDeviceAppearanceToNewInterfaceStyle:(int64_t)a3;
- (void)dealloc;
- (void)deviceAppearanceTableViewCellUserDidTapOnDarkAppearance:(id)a3;
- (void)deviceAppearanceTableViewCellUserDidTapOnLightAppearance:(id)a3;
- (void)externalDisplayMultitaskingTableViewCellUserDidSelectedExtendedDisplay:(id)a3;
- (void)externalDisplayMultitaskingTableViewCellUserDidSelectedScreenMirroring:(id)a3;
- (void)handleBlueLightStatusChanged:(id *)a3;
- (void)handleDBSExternalDisplayManagerCurrentModeDidChangeNotification:(id)a3;
- (void)handleDisplayServiceInfoUpdate;
- (void)insertArrangementSpecifier;
- (void)insertExternalDisplaySpecifiers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentArrangementController;
- (void)presentModalMagnifyController;
- (void)profileNotification:(id)a3;
- (void)removeExternalDisplaySpecifiers;
- (void)setAppearanceValue:(id)a3 forSpecifier:(id)a4;
- (void)setAutoLock:(id)a3 specifier:(id)a4;
- (void)setAutomaticAppearanceEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setBoldTextEnabled:(id)a3 specifier:(id)a4;
- (void)setLockGroupFooter:(id)a3;
- (void)setLocksAndUnlocksWithCase:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAutoLockSpecifier;
- (void)updateExternalDisplayInfoWithCompletionHandler:(id)a3;
- (void)updateForExternalMonitorAvailability:(BOOL)a3;
- (void)updateReferenceDependentUIElements;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DBSSettingsController

+ (id)BOOLeanCapabilitiesToTest
{
  v5[8] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D40098];
  v5[0] = *MEMORY[0x277D40060];
  v5[1] = v2;
  v5[2] = *MEMORY[0x277D3FF10];
  v5[3] = @"hall-effect-sensor";
  v5[4] = @"ambient-light-sensor";
  v5[5] = @"ipad";
  v5[6] = @"j8/Omm6s1lsmTDFsXjsBfA";
  v5[7] = @"DeviceSupportsEnhancedMultitasking";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];

  return v3;
}

- (DBSSettingsController)init
{
  v35.receiver = self;
  v35.super_class = DBSSettingsController;
  v2 = [(DBSSettingsController *)&v35 init];
  if (v2)
  {
    v3 = DBS_LocalizedStringForDisplays(@"DISPLAY_AND_BRIGHTNESS");
    [(DBSSettingsController *)v2 setTitle:v3];

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, apple_numbers_changed_notification, *MEMORY[0x277CBEEB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_profileNotification_ name:*MEMORY[0x277D26178] object:0];
    [v5 addObserver:v2 selector:sel_profileNotification_ name:*MEMORY[0x277D25CA0] object:0];
    v31 = v5;
    [v5 addObserver:v2 selector:sel_handleDBSExternalDisplayManagerCurrentModeDidChangeNotification_ name:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];
    if (PSGetCapabilityBoolAnswer())
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HasSeenACaseLatchCoverChanged, @"com.apple.springboard.HasSeenACaseLatchCoverNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v29 = objc_alloc(MEMORY[0x277CBEA60]);
    v34 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:30];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:60];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:120];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:180];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:240];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:300];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:600];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:900];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:1200];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:1800];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    v30 = [v29 initWithObjects:{v34, v33, v32, v28, v7, v8, v9, v10, v11, v12, v13, v14, 0}];

    v15 = [(DBSSettingsController *)v2 autoLockValues:v30];
    autoLockValues = v2->_autoLockValues;
    v2->_autoLockValues = v15;

    v17 = objc_alloc(MEMORY[0x277CBEAC0]);
    v18 = [(DBSSettingsController *)v2 autoLockTitles];
    v19 = [v17 initWithObjects:v18 forKeys:v30];
    autoLockTitleDictionary = v2->_autoLockTitleDictionary;
    v2->_autoLockTitleDictionary = v19;

    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v2->_autoLockTitleDictionary];
    localizedAutoLockTitleDictionary = v2->_localizedAutoLockTitleDictionary;
    v2->_localizedAutoLockTitleDictionary = v21;

    v23 = [objc_alloc(MEMORY[0x277D777F8]) initWithDelegate:v2];
    styleMode = v2->__styleMode;
    v2->__styleMode = v23;

    v25 = [MEMORY[0x277CD9E40] mainDisplay];
    v26 = NSStringFromSelector(sel_isReferenceLimited);
    [v25 addObserver:v2 forKeyPath:v26 options:1 context:0];
  }

  return v2;
}

- (DBSSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = DBSSettingsController;
  v8 = [(DBSSettingsController *)&v24 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CFD3A8]);
    brightnessClient = v8->__brightnessClient;
    v8->__brightnessClient = v9;

    objc_initWeak(&location, v8);
    v11 = [(DBSSettingsController *)v8 _brightnessClient];
    v12 = [v11 blueLightClient];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__DBSSettingsController_initWithNibName_bundle___block_invoke;
    v21[3] = &unk_278459440;
    objc_copyWeak(&v22, &location);
    [v12 setStatusNotificationBlock:v21];

    v13 = objc_opt_new();
    displayService = v8->_displayService;
    v8->_displayService = v13;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__DBSSettingsController_initWithNibName_bundle___block_invoke_2;
    v19[3] = &unk_278459558;
    v15 = v8;
    v20 = v15;
    [v15 updateExternalDisplayInfoWithCompletionHandler:v19];
    v16 = objc_alloc_init(MEMORY[0x277CCA968]);
    v17 = v15[185];
    v15[185] = v16;

    [v15[185] setTimeStyle:1];
    [v15[185] setDateStyle:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __48__DBSSettingsController_initWithNibName_bundle___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBlueLightStatusChanged:a2];
}

void __48__DBSSettingsController_initWithNibName_bundle___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) externalDisplayInfo];
  if (v2)
  {
    v3 = v2;
    v4 = DBSChamoisEnabled();

    if (v4)
    {
      v5 = *(a1 + 32);

      [v5 insertArrangementSpecifier];
    }
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = DBSSettingsController;
  [(DBSSettingsController *)&v9 viewDidLoad];
  v3 = [(DBSSettingsController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)DBSDeviceAppearanceTableViewCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(DBSSettingsController *)self table];
  v7 = objc_opt_class();
  v8 = +[(PSTableCell *)DBSExternalDisplayMultitaskingTableViewCell];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DBSSettingsController;
  [(DBSSettingsController *)&v6 viewWillAppear:a3];
  [(DBSSettingsController *)self updateAutoLockSpecifier];
  [(DBSSettingsController *)self reloadSpecifierID:@"APPEARANCE_OPTIONS"];
  [(DBSSettingsController *)self reloadSpecifierID:@"ALWAYS_ON"];
  [(DBSSettingsController *)self reloadSpecifierID:@"LIQUID_GLASS"];
  [(DBSSettingsController *)self updateReferenceDependentUIElements];
  v4 = [MEMORY[0x277D3F990] sharedManager];
  v5 = [v4 capabilityBoolAnswer:*MEMORY[0x277D40060]];

  if (v5)
  {
    [(DBSSettingsController *)self _reloadBlueLightSpecifiers:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) reloadUI:1];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = DBSSettingsController;
  [(DBSSettingsController *)&v10 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v8 = [v7 bundleURL];
    v9 = [v5 initWithKey:@"DISPLAY_AND_BRIGHTNESS" defaultValue:0 table:@"Display" locale:v6 bundleURL:v8];

    [(DBSSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v4];
  }
}

- (void)updateReferenceDependentUIElements
{
  v3 = [(DBSSettingsController *)self specifiers];
  v15 = [v3 specifierForID:@"BRIGHTNESS"];

  v4 = [(DBSSettingsController *)self specifiers];
  v5 = [v4 specifierForID:@"WHITE_BALANCE"];

  v6 = [(DBSSettingsController *)self specifiers];
  v7 = [v6 specifierForID:@"ADVANCED"];

  v8 = [MEMORY[0x277CD9E40] mainDisplay];
  v9 = [v8 isReference];

  v10 = *MEMORY[0x277D3FF38];
  if (v9)
  {
    v11 = MEMORY[0x277CBEC28];
  }

  else
  {
    v11 = MEMORY[0x277CBEC38];
  }

  [v15 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v5 setObject:v11 forKeyedSubscript:v10];
  v12 = MEMORY[0x277CCABB0];
  v13 = [MEMORY[0x277CD9E40] mainDisplay];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "isReferenceLimited")}];
  [v15 setObject:v14 forKeyedSubscript:@"brightnessLimited"];

  [(DBSSettingsController *)self reloadSpecifier:v15];
  [(DBSSettingsController *)self reloadSpecifier:v5];
  if (v7)
  {
    [(DBSSettingsController *)self reloadSpecifier:v7];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = DBSSettingsController;
  [(DBSSettingsController *)&v5 traitCollectionDidChange:a3];
  v4 = [(DBSSettingsController *)self specifierForID:@"APPEARANCE_OPTIONS"];

  if (v4)
  {
    [(DBSSettingsController *)self reloadSpecifierID:@"APPEARANCE_OPTIONS"];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(DBSSettingsController *)self _brightnessClient];
  v5 = [v4 blueLightClient];
  [v5 setStatusNotificationBlock:0];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277CBEEB0], 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboard.HasSeenACaseLatchCoverNotification", 0);
  v8 = [MEMORY[0x277CD9E40] mainDisplay];
  v9 = NSStringFromSelector(sel_isReferenceLimited);
  [v8 removeObserver:self forKeyPath:v9];

  v10.receiver = self;
  v10.super_class = DBSSettingsController;
  [(DBSSettingsController *)&v10 dealloc];
}

- (id)specifiers
{
  v56[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_36;
  }

  v5 = [(DBSSettingsController *)self loadSpecifiersFromPlistName:@"Display" target:self];
  if (_UIUpdatedVisualStyleEnabled())
  {
    v6 = [(DBSSettingsController *)self _styleMode];
    [v6 modeValue];
    IsAutomatic = UISUserInterfaceStyleModeValueIsAutomatic();

    if (!IsAutomatic)
    {
      goto LABEL_7;
    }

    v8 = [(DBSSettingsController *)self _deviceAppearanceScheduleSpecifier];
    v9 = [v5 specifierForID:@"APPEARANCE_GROUP"];
    [v5 ps_addSpecifier:v8 toGroup:v9];
  }

  else
  {
    v8 = [v5 specifierForID:@"APPEARANCE_GROUP"];
    v9 = [v5 specifierForID:@"DEVICE_APPEARANCE"];
    v10 = [v5 specifierForID:@"AUTOMATIC"];
    v56[0] = v8;
    v56[1] = v9;
    v56[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    [v5 removeObjectsInArray:v11];
  }

LABEL_7:
  v12 = [v5 specifierForID:@"LOCK_WAKE_GROUP"];
  v13 = [v5 specifierForID:@"AUTOLOCK"];
  v14 = [v5 specifierForID:@"SMART_CASE_LOCK_SPEC"];
  if ([(DBSSettingsController *)self shouldShowLockGroup])
  {
    if ([(DBSSettingsController *)self shouldShowAutoLock])
    {
      v15 = [(DBSSettingsController *)self _initialAutoLock];
      if (v15)
      {
        [v13 setProperty:v15 forKey:*MEMORY[0x277D3FEF0]];
      }

      if (_AXSAttentionAwarenessFeaturesEnabled())
      {
        v16 = PSLocalizablePearlStringForKey();
        [v13 setProperty:v16 forKey:*MEMORY[0x277D40118]];
      }
    }

    else
    {
      [v5 removeObject:v13];
    }

    if (![(DBSSettingsController *)self shouldShowCaseLock])
    {
      [v5 removeObject:v14];
    }

    [(DBSSettingsController *)self setLockGroupFooter:v12];
  }

  else
  {
    [v5 removeObject:v12];
    [v5 removeObject:v13];
    [v5 removeObject:v14];
  }

  if ([(DBSSettingsController *)self shouldShowAlwaysOn])
  {
    v51 = v14;
    v52 = v3;
    v17 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ALWAYS_ON_GROUP"];
    [v17 setProperty:@"j8/Omm6s1lsmTDFsXjsBfA" forKey:*MEMORY[0x277D400A0]];
    v18 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_DESCRIPTION");
    [v17 setProperty:v18 forKey:*MEMORY[0x277D3FF88]];

    v19 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_DISPLAY");
    v20 = [DBSAlwaysOnViewController alwaysOnSpecifierNamed:v19];

    [v20 setProperty:@"ALWAYS_ON" forKey:*MEMORY[0x277D3FFB8]];
    v21 = [v5 indexOfSpecifierWithID:@"LOCK_WAKE_GROUP"];
    v22 = v5;
    if ([v22 count] <= v21 || (objc_msgSend(v22, "objectAtIndexedSubscript:", v21), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "cellType"), v23, v24) || objc_msgSend(v22, "count") - 1 == v21)
    {
      v25 = [v22 count];
    }

    else
    {
      v48 = v21 + 1;
      do
      {
        v25 = v48;
        if (v48 >= [v22 count])
        {
          break;
        }

        v49 = [v22 objectAtIndexedSubscript:v25];
        v50 = [v49 cellType];

        v48 = v25 + 1;
      }

      while (v50);
    }

    v55[0] = v17;
    v55[1] = v20;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v27 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{v25, objc_msgSend(v26, "count")}];
    [v22 insertObjects:v26 atIndexes:v27];

    v14 = v51;
    v3 = v52;
  }

  v28 = [v5 indexOfSpecifierWithID:@"LOCK_WAKE_GROUP"];
  v29 = v5;
  if ([v29 count] > v28)
  {
    v30 = [v29 objectAtIndexedSubscript:v28];
    v31 = [v30 cellType];

    if (!v31)
    {
      if ([v29 count] - 1 == v28)
      {
      }

      else
      {
        v46 = [v29 objectAtIndexedSubscript:v28 + 1];
        v47 = [v46 cellType];

        if (v47)
        {
          goto LABEL_28;
        }
      }

      [v29 removeObjectAtIndex:v28];
      goto LABEL_28;
    }
  }

LABEL_28:
  v32 = objc_opt_new();
  [(DBSSettingsController *)self set_zoomAndProSpecifierVendor:v32];

  v33 = [(DBSSettingsController *)self _zoomAndProSpecifierVendor];
  [v33 setDelegate:self];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __35__DBSSettingsController_specifiers__block_invoke;
  v53[3] = &unk_2784594B8;
  v53[4] = self;
  v34 = v29;
  v54 = v34;
  v35 = MEMORY[0x223D9E740](v53);
  v36 = +[DBSExternalDisplayManager defaultManager];
  v37 = [v36 externalDisplayAvailable];

  if (v37)
  {
    v38 = [(DBSSettingsController *)self connectedDisplaySpecifiers];
    v39 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{objc_msgSend(v34, "indexOfSpecifierWithID:", @"BOLD_TEXT", objc_msgSend(v38, "count")}];
    v40 = [(DBSSettingsController *)self connectedDisplaySpecifiers];
    [v34 insertObjects:v40 atIndexes:v39];

    if ((DBSChamoisEnabled() & 1) == 0)
    {
      v35[2](v35);
    }
  }

  else
  {
    v35[2](v35);
  }

  [(DBSSettingsController *)self _updateAutoLockSpecifiers:v34];
  [(DBSSettingsController *)self _localizeAutoLockTitlesWithSpecifiers:v34];
  v41 = [MEMORY[0x277D3F990] sharedManager];
  v42 = [v41 capabilityBoolAnswer:*MEMORY[0x277D40060]];

  if (v42)
  {
    [(DBSSettingsController *)self _reloadBlueLightSpecifiers:v34 reloadUI:0];
  }

  v43 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v34;
  v44 = v34;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_36:

  return v4;
}

void __35__DBSSettingsController_specifiers__block_invoke(uint64_t a1)
{
  v2 = +[DBSBrightnessManager defaultManager];
  [v2 setDelegate:*(a1 + 32)];

  v3 = +[DBSBrightnessManager defaultManager];
  v10 = [v3 mainDisplayBrightnessSpecifiers];

  v4 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{objc_msgSend(*(a1 + 40), "indexOfSpecifierWithID:", @"BOLD_TEXT", objc_msgSend(v10, "count")}];
  [*(a1 + 40) insertObjects:v10 atIndexes:v4];
  v5 = [*(a1 + 32) _zoomAndProSpecifierVendor];
  v6 = [v5 specifiers];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) _zoomAndProSpecifierVendor];
    v9 = [v8 specifiers];
    [v7 addObjectsFromArray:v9];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setDelegate:self];
    [v6 setSelectionStyle:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setDelegate:self];
    [v6 setSelectionStyle:0];
  }
}

- (BOOL)shouldShowAlwaysOn
{
  v2 = PSGetCapabilityBoolAnswer();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (id)lockGroupFooterText
{
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  if (PSGetCapabilityBoolAnswer())
  {
    v2 = CFPreferencesGetAppBooleanValue(@"SBHasSeenACaseLatchCoverOnce", @"com.apple.springboard", 0) != 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  if (v2 && v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = DBS_LocalizedStringForDisplays(@"SMART_CASE_LOCK_FOOTER");
    v7 = DBS_LocalizedStringForDisplays(@"AUTOLOCK_LPM_FOOTER");
    v8 = [v5 stringWithFormat:@"%@\n\n%@", v6, v7];

    goto LABEL_13;
  }

  if (v2)
  {
    v9 = @"SMART_CASE_LOCK_FOOTER";
LABEL_11:
    v8 = DBS_LocalizedStringForDisplays(v9);
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = @"AUTOLOCK_LPM_FOOTER";
    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (void)setLockGroupFooter:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBSSettingsController *)self lockGroupFooterText];
  if (v5)
  {
    [v4 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

    v4 = DBSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_22102E000, v4, OS_LOG_TYPE_DEFAULT, "Setting Lock group footer: '%@'", &v6, 0xCu);
    }
  }

  else
  {
    [v4 removePropertyForKey:*MEMORY[0x277D3FF88]];
  }
}

- (BOOL)shouldShowLockGroup
{
  if ([(DBSSettingsController *)self shouldShowAutoLock])
  {
    return 1;
  }

  return [(DBSSettingsController *)self shouldShowCaseLock];
}

- (id)autoLock:(id)a3
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 autoLockTime];

  return v4;
}

- (void)setAutoLock:(id)a3 specifier:(id)a4
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v6 = [v4 sharedConnection];
  [v6 setAutoLockTime:v5];
}

- (BOOL)shouldShowAutoLock
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isAutoLockEnabled];

  return v3;
}

- (void)_localizeAutoLockTitles
{
  v3 = [(DBSSettingsController *)self specifiers];
  [(DBSSettingsController *)self _localizeAutoLockTitlesWithSpecifiers:v3];
}

- (void)_localizeAutoLockTitlesWithSpecifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [a3 specifierForID:@"AUTOLOCK"];
  v5 = v4;
  if (v4)
  {
    v23 = v4;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [(NSMutableDictionary *)self->_localizedAutoLockTitleDictionary allKeys];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    v9 = *v25;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 intValue];
        v13 = [(NSDictionary *)self->_autoLockTitleDictionary objectForKey:v11];
        if (v13)
        {
          v14 = v13;
          if (v12 >= 1)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
            v16 = v15;
            if (v12 > 0x3B)
            {
              [v15 setMinute:v12 / 0x3C];
            }

            else
            {
              [v15 setSecond:v12];
            }

            v20 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v16 unitsStyle:3];

            [(NSMutableDictionary *)self->_localizedAutoLockTitleDictionary setObject:v20 forKey:v11];
            v14 = v20;
            goto LABEL_23;
          }

          if (v12 == -1)
          {
            localizedAutoLockTitleDictionary = self->_localizedAutoLockTitleDictionary;
            v19 = @"NEVER";
          }

          else
          {
            if (v12)
            {
              goto LABEL_24;
            }

            localizedAutoLockTitleDictionary = self->_localizedAutoLockTitleDictionary;
            v19 = @"IMMEDIATELY";
          }

          v16 = DBS_LocalizedStringForDisplays(v19);
          v21 = localizedAutoLockTitleDictionary;
          v22 = v16;
        }

        else
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          v16 = v17;
          if (v12 > 59)
          {
            [v17 setMinute:v12 / 0x3C];
          }

          else
          {
            [v17 setSecond:v12];
          }

          v14 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v16 unitsStyle:3];
          v21 = self->_localizedAutoLockTitleDictionary;
          v22 = v14;
        }

        [(NSMutableDictionary *)v21 setObject:v22 forKey:v11];
LABEL_23:

LABEL_24:
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v8)
      {
LABEL_26:

        v5 = v23;
        [v23 setTitleDictionary:self->_localizedAutoLockTitleDictionary];
        break;
      }
    }
  }
}

- (void)updateAutoLockSpecifier
{
  v3 = [(DBSSettingsController *)self specifiers];
  [(DBSSettingsController *)self _updateAutoLockSpecifiers:v3];
}

- (void)_updateAutoLockSpecifiers:(id)a3
{
  v27 = a3;
  v4 = [v27 specifierForID:@"AUTOLOCK"];
  v5 = [v27 specifierForID:@"LOCK_WAKE_GROUP"];
  v6 = [MEMORY[0x277CCAC38] processInfo];
  v7 = [v6 isLowPowerModeEnabled];

  v8 = *MEMORY[0x277D3FF38];
  if (v7)
  {
    v9 = &unk_28349F508;
  }

  else
  {
    v9 = &unk_28349F520;
  }

  [v4 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];
  [(DBSSettingsController *)self setLockGroupFooter:v5];
  v10 = [MEMORY[0x277D262A0] sharedConnection];
  v11 = [v10 autoLockTimeMaximum];
  if (v11)
  {
    v12 = [v10 autoLockTime];
    v25 = [v12 intValue];
    v13 = [v11 intValue];
    v14 = [v10 isAutoLockRestricted];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v14 ^ 1u];
    [v4 setProperty:v15 forKey:v8];

    v16 = [MEMORY[0x277CBEB18] arrayWithArray:self->_autoLockValues];
    v17 = [v16 count];
    if (v17 - 1 >= 0)
    {
      v18 = v17;
      do
      {
        v19 = [v16 objectAtIndex:--v18];
        v20 = [v19 intValue];
        if (v20 > v13 || v20 == -1)
        {
          [v16 removeObjectAtIndex:v18];
        }
      }

      while (v18 > 0);
    }

    if (([v10 isAutoLockOn:v12] & 1) != 0 && (objc_msgSend(v16, "containsObject:", v12) & 1) == 0)
    {
      [v16 addObject:v12];
      [v16 sortUsingSelector:sel_compare_];
      v22 = [(NSMutableDictionary *)self->_localizedAutoLockTitleDictionary objectForKey:v12];
      if (!v22)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v24 = v23;
        if (v25 > 59)
        {
          [v23 setMinute:v25 / 0x3CuLL];
        }

        else
        {
          [v23 setSecond:v25];
        }

        [MEMORY[0x277CCA958] localizedStringFromDateComponents:v24 unitsStyle:3];
        v22 = v26 = v24;
        [(NSMutableDictionary *)self->_localizedAutoLockTitleDictionary setObject:v22 forKey:v12];
      }
    }

    [v4 setValues:v16];
    [v4 setTitleDictionary:self->_localizedAutoLockTitleDictionary];
  }

  else
  {
    [v4 setValues:self->_autoLockValues];
    [v4 setTitleDictionary:self->_localizedAutoLockTitleDictionary];
  }
}

- (id)_initialAutoLock
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sf_isiPad];

  if (v3)
  {
    return &unk_28349F538;
  }

  if (_AXSAttentionAwarenessFeaturesEnabled())
  {
    return &unk_28349F550;
  }

  return 0;
}

- (id)autoLockValues:(id)a3
{
  v3 = MEMORY[0x277D75418];
  v4 = a3;
  v5 = [v3 currentDevice];
  v6 = [v5 sf_isiPad];

  v7 = objc_alloc(MEMORY[0x277CBEA60]);
  if (v6)
  {
    v8 = [v4 objectAtIndex:3];
    v9 = [v4 objectAtIndex:6];
    v10 = [v4 objectAtIndex:7];
    v11 = [v4 objectAtIndex:8];
    v12 = [v4 objectAtIndex:11];

    v13 = [v7 initWithObjects:{v8, v9, v10, v11, v12, 0}];
  }

  else
  {
    v8 = [v4 objectAtIndex:1];
    v9 = [v4 objectAtIndex:2];
    v10 = [v4 objectAtIndex:3];
    v11 = [v4 objectAtIndex:4];
    v12 = [v4 objectAtIndex:5];
    v14 = [v4 objectAtIndex:6];
    v15 = [v4 objectAtIndex:11];

    v13 = [v7 initWithObjects:{v8, v9, v10, v11, v12, v14, v15, 0}];
  }

  return v13;
}

- (id)autoLockTitles
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = DBS_LocalizedStringForDisplays(@"IMMEDIATELY");
  [v2 na_safeAddObject:v3];

  v25 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v25 setSecond:30];
  v4 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v25 unitsStyle:3];
  [v2 na_safeAddObject:v4];

  v24 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v24 setMinute:1];
  v5 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v24 unitsStyle:3];
  [v2 na_safeAddObject:v5];

  v23 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v23 setMinute:2];
  v6 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v23 unitsStyle:3];
  [v2 na_safeAddObject:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v7 setMinute:3];
  v8 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v7 unitsStyle:3];
  [v2 na_safeAddObject:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setMinute:4];
  v10 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v9 unitsStyle:3];
  [v2 na_safeAddObject:v10];

  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v11 setMinute:5];
  v12 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v11 unitsStyle:3];
  [v2 na_safeAddObject:v12];

  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v13 setMinute:10];
  v14 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v13 unitsStyle:3];
  [v2 na_safeAddObject:v14];

  v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v15 setMinute:15];
  v16 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v15 unitsStyle:3];
  [v2 na_safeAddObject:v16];

  v17 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v17 setMinute:20];
  v18 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v17 unitsStyle:3];
  [v2 na_safeAddObject:v18];

  v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v19 setMinute:30];
  v20 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v19 unitsStyle:3];
  [v2 na_safeAddObject:v20];

  v21 = DBS_LocalizedStringForDisplays(@"NEVER");
  [v2 na_safeAddObject:v21];

  return v2;
}

- (id)locksAndUnlocksWithCase:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"SBLockAndUnlockWithCase", @"com.apple.springboard", &keyExistsAndHasValidFormat))
  {
    v3 = 1;
  }

  else
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];

  return v5;
}

- (void)setLocksAndUnlocksWithCase:(id)a3 specifier:(id)a4
{
  if (a3)
  {
    v4 = *MEMORY[0x277CBF040];
    v5 = *MEMORY[0x277CBF010];
    CFPreferencesSetValue(@"SBLockAndUnlockWithCase", a3, @"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    CFPreferencesSynchronize(@"com.apple.springboard", v4, v5);

    MEMORY[0x282167578](@"com.apple.springboard", @"SBLockAndUnlockWithCase");
  }
}

- (BOOL)shouldShowCaseLock
{
  if (PSIsInEDUMode())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = PSGetCapabilityBoolAnswer();
    if (v2)
    {
      CFPreferencesAppSynchronize(@"com.apple.springboard");
      LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"SBHasSeenACaseLatchCoverOnce", @"com.apple.springboard", 0) != 0;
    }
  }

  return v2;
}

- (void)profileNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__DBSSettingsController_profileNotification___block_invoke;
  v6[3] = &unk_2784594B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __45__DBSSettingsController_profileNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 objectForKey:*MEMORY[0x277D26180]];

  LODWORD(v2) = [v5 intValue];
  if (v2 != getpid())
  {
    [*(a1 + 40) reload];
  }

  [*(a1 + 40) updateAutoLockSpecifier];
  v3 = *(a1 + 40);
  v4 = [v3 specifierForID:@"AUTOLOCK"];
  [v3 reloadSpecifier:v4];
}

- (void)presentModalMagnifyController
{
  v8 = objc_alloc_init(MEMORY[0x277D3FAC8]);
  v3 = *MEMORY[0x277D3FD20];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x277D400B8]];

  [v8 setSpecifier:*(&self->super.super.super.super.super.isa + v3)];
  [v8 setParentController:self];
  [v8 setupController];
  if (DBSReverseZoomEnabled())
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v8 setModalPresentationStyle:v7];
  [(DBSSettingsController *)self presentViewController:v8 animated:1 completion:0];
}

- (BOOL)proModeSupported
{
  v2 = [MEMORY[0x277CD9E40] mainDisplay];
  v3 = [v2 availablePresets];
  v4 = v3 != 0;

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CD9E40] mainDisplay];
  if ([v13 isEqual:v11])
  {
    v14 = [(DBSSettingsController *)self specifiers];
    v15 = [v14 specifierForID:@"BRIGHTNESS"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isReferenceLimited")}];
    [v15 setObject:v16 forKeyedSubscript:@"brightnessLimited"];

    [(DBSSettingsController *)self reloadSpecifier:v15];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = DBSSettingsController;
    [(DBSSettingsController *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setBoldTextEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  [v4 BOOLValue];
  _AXSSetEnhanceTextLegibilityEnabled();
  v5 = [v4 BOOLValue];

  [DBSAnalytics logBoldTextEvent:v5];

  DBSPurgeKeyboardCache();
}

- (id)boldTextEnabledForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = _AXSEnhanceTextLegibilityEnabled();

  return [v3 numberWithUnsignedChar:v4];
}

- (void)updateForExternalMonitorAvailability:(BOOL)a3
{
  v3 = a3;
  if (DBSChamoisEnabled())
  {
    v5 = *MEMORY[0x277D3FC48];
    if (*(&self->super.super.super.super.super.isa + v5))
    {
      if (v3)
      {
        [DBSBrightnessManager removeSpecifiersFrom:self];

        [DBSZoomAndProSpecifiers removeSpecifiersFrom:self];
      }

      else
      {
        if (![DBSBrightnessManager specifiersPresentIn:self])
        {
          v6 = +[DBSBrightnessManager defaultManager];
          [v6 setDelegate:self];

          v7 = +[DBSBrightnessManager defaultManager];
          v8 = [v7 mainDisplayBrightnessSpecifiers];
          v9 = [*(&self->super.super.super.super.super.isa + v5) specifierForID:@"BOLD_TEXT"];
          [(DBSSettingsController *)self insertContiguousSpecifiers:v8 afterSpecifier:v9 animated:1];
        }

        if (![DBSZoomAndProSpecifiers specifiersPresentIn:self])
        {
          v12 = [(DBSSettingsController *)self _zoomAndProSpecifierVendor];
          v10 = [v12 specifiers];
          v11 = [(DBSSettingsController *)self specifiers];
          -[DBSSettingsController insertContiguousSpecifiers:atIndex:](self, "insertContiguousSpecifiers:atIndex:", v10, [v11 count]);
        }
      }
    }
  }
}

- (void)_reloadBlueLightSpecifiers:(id)a3 reloadUI:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21 = 0;
  v20 = 0u;
  v7 = [(DBSSettingsController *)self _brightnessClient:0];
  v8 = [v7 blueLightClient];
  v9 = [v8 getBlueLightStatus:&v19];

  if ((v9 & 1) == 0)
  {
    [DBSSettingsController _reloadBlueLightSpecifiers:reloadUI:];
  }

  v10 = *(&v20 + 1);
  v11 = *(&v20 + 1) != 0;
  v12 = [v6 specifierForID:@"BLUE_LIGHT_REDUCTION"];
  v13 = [MEMORY[0x277CD9E40] mainDisplay];
  v14 = [v13 isReference];

  if ((v11 | v14))
  {
    v15 = MEMORY[0x277CBEC28];
  }

  else
  {
    v15 = MEMORY[0x277CBEC38];
  }

  [v12 setProperty:v15 forKey:*MEMORY[0x277D3FF38]];
  v16 = [v6 specifierForID:@"BLUE_LIGHT_GROUP"];
  v17 = v16;
  if (!v10)
  {
    [v16 setProperty:&stru_2834977A0 forKey:*MEMORY[0x277D3FF88]];
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = DBS_LocalizedStringForDisplays(@"BLUE_LIGHT_LOW_POWER_MODE_FOOTER");
  [v17 setProperty:v18 forKey:*MEMORY[0x277D3FF88]];

  if (v4)
  {
LABEL_7:
    [(DBSSettingsController *)self reloadSpecifier:v12];
    [(DBSSettingsController *)self reloadSpecifier:v17];
  }

LABEL_8:
}

- (void)handleBlueLightStatusChanged:(id *)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DBSSettingsController_handleBlueLightStatusChanged___block_invoke;
  block[3] = &unk_278459558;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__DBSSettingsController_handleBlueLightStatusChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 specifiers];
  [v1 _reloadBlueLightSpecifiers:v2 reloadUI:1];
}

- (id)blueLightSchedule:(id)a3
{
  v4 = a3;
  v5 = [(DBSSettingsController *)self _brightnessClient];
  v6 = [v5 blueLightClient];
  v7 = [v6 supported];

  if (!v7)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v8 = [(DBSSettingsController *)self _brightnessClient];
  v9 = [v8 blueLightClient];
  v10 = [v9 getBlueLightStatus:&v18];

  if ((v10 & 1) == 0)
  {
    [DBSSettingsController blueLightSchedule:];
  }

  if (*(&v19 + 1))
  {
    goto LABEL_4;
  }

  if (DWORD1(v18) != 2)
  {
    if (DWORD1(v18) == 1)
    {
      v11 = @"SUNSET_TO_SUNRISE";
      goto LABEL_5;
    }

    if (!DWORD1(v18))
    {
      if (BYTE1(v18))
      {
        v11 = @"ON";
        goto LABEL_5;
      }

LABEL_4:
      v11 = @"OFF";
LABEL_5:
      v12 = DBS_LocalizedStringForDisplays(v11);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = DBS_LocalizedStringForDisplays(@"START_TIME_TO_STOP_TIME");
  v16 = [(DBSSettingsController *)self localizedTimeForTime:*(&v18 + 1)];
  v17 = [(DBSSettingsController *)self localizedTimeForTime:v19];
  v12 = [v14 stringWithFormat:v15, v16, v17];

LABEL_12:

  return v12;
}

- (id)localizedTimeForTime:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setHour:a3.var0];
  [v5 setMinute:*&a3 >> 32];
  v6 = objc_alloc(MEMORY[0x277CBEA80]);
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v8 = [v7 dateFromComponents:v5];
  v9 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v8];

  return v9;
}

- (id)connectedDisplaySpecifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v4) || ([(DBSSettingsController *)self specifierForID:@"CONNECTED_DISPLAYS"], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = MEMORY[0x277D3FAD8];
    if (DBSChamoisEnabled())
    {
      v7 = @"CONNECTED_DISPLAYS";
    }

    else
    {
      v7 = @"CONNECTED_DISPLAYS_LEGACY";
    }

    v8 = DBS_LocalizedStringForConnectedDisplays(v7);
    v5 = [v6 groupSpecifierWithID:@"CONNECTED_DISPLAYS" name:v8];

    [v3 addObject:v5];
  }

  if (DBSChamoisEnabled())
  {
    if (DBSFlexibleWindowingEnabled())
    {
      v9 = +[DBSExternalDisplayManager defaultManager];
      v10 = [v9 deviceSupportsChamoisExternalDisplay];

      if (v10)
      {
        if (!*(&self->super.super.super.super.super.isa + v4) || ([(DBSSettingsController *)self specifierForID:@"DISPLAY_MULTITASKING"], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
          [v11 setProperty:@"DISPLAY_MULTITASKING" forKey:*MEMORY[0x277D3FFB8]];
          [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
          [v3 addObject:v11];
        }
      }
    }

    if (!*(&self->super.super.super.super.super.isa + v4) || ([(DBSSettingsController *)self specifierForID:@"MAIN_DISPLAY"], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v13 = MEMORY[0x277D3FAD8];
      v14 = +[DBSExternalDisplayManager defaultManager];
      v15 = [v14 mainDisplayName];
      v12 = [v13 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      [v12 setProperty:@"MAIN_DISPLAY" forKey:*MEMORY[0x277D3FFB8]];
      if (DBSFlexibleWindowingEnabled())
      {
        v16 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad.landscape" compatibleWithTraitCollection:0];
        [v12 setProperty:v16 forKey:*MEMORY[0x277D3FFC0]];
      }

      else
      {
        v20 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad" compatibleWithTraitCollection:0];
        v21 = [MEMORY[0x277D755D0] configurationWithPointSize:40.0];
        v22 = [v20 imageWithSymbolConfiguration:v21];
        [v12 setProperty:v22 forKey:*MEMORY[0x277D3FFC0]];

        [v12 setProperty:&unk_28349F6E8 forKey:*MEMORY[0x277D40140]];
        [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      }

      [v3 addObject:v12];
    }

    if (!*(&self->super.super.super.super.super.isa + v4) || ([(DBSSettingsController *)self specifierForID:@"EXTERNAL_DISPLAY"], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v24 = MEMORY[0x277D3FAD8];
      v25 = +[DBSExternalDisplayManager defaultManager];
      v26 = [v25 externalDisplayName];
      v23 = [v24 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      [v23 setProperty:@"EXTERNAL_DISPLAY" forKey:*MEMORY[0x277D3FFB8]];
      LODWORD(v26) = DBSFlexibleWindowingEnabled();
      v27 = [MEMORY[0x277D755B8] systemImageNamed:@"display" compatibleWithTraitCollection:0];
      if (v26)
      {
        [v23 setProperty:v27 forKey:*MEMORY[0x277D3FFC0]];
      }

      else
      {
        v28 = [MEMORY[0x277D755D0] configurationWithPointSize:50.0];
        v29 = [v27 imageWithSymbolConfiguration:v28];
        [v23 setProperty:v29 forKey:*MEMORY[0x277D3FFC0]];

        [v23 setProperty:&unk_28349F6E8 forKey:*MEMORY[0x277D40140]];
        [v23 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      }

      [v3 addObject:v23];
    }

    v30 = [(DBSSettingsController *)self externalDisplayInfo];

    if (v30)
    {
      if (!*(&self->super.super.super.super.super.isa + v4) || ([(DBSSettingsController *)self specifierForID:@"DISPLAY_ARRANGEMENT"], (v31 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v31 = [(DBSSettingsController *)self makeArrangementSpecifier];
        [v3 addObject:v31];
      }
    }
  }

  else if (!*(&self->super.super.super.super.super.isa + v4) || ([(DBSSettingsController *)self specifierForID:@"EXTERNAL_DISPLAY"], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = MEMORY[0x277D3FAD8];
    v18 = +[DBSExternalDisplayManager defaultManager];
    v19 = [v18 externalDisplayName];
    v12 = [v17 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v12 setProperty:@"EXTERNAL_DISPLAY" forKey:*MEMORY[0x277D3FFB8]];
    [v3 addObject:v12];
  }

  return v3;
}

- (id)makeArrangementSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = DBS_LocalizedStringForConnectedDisplays(@"DISPLAY_ARRANGEMENT");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v5 setProperty:@"DISPLAY_ARRANGEMENT" forKey:*MEMORY[0x277D3FFB8]];
  if (DBSFlexibleWindowingEnabled())
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.on.rectangle" compatibleWithTraitCollection:0];
    [v5 setProperty:v6 forKey:*MEMORY[0x277D3FFC0]];
  }

  [v5 setButtonAction:sel_presentArrangementController];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v5;
}

- (void)insertArrangementSpecifier
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v3) || ([(DBSSettingsController *)self specifierForID:@"DISPLAY_ARRANGEMENT"], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(DBSSettingsController *)self makeArrangementSpecifier];
    if (*(&self->super.super.super.super.super.isa + v3))
    {
      v6 = [(DBSSettingsController *)self specifierForID:@"EXTERNAL_DISPLAY"];
      if (v6)
      {
        v7 = v6;
        [(DBSSettingsController *)self insertSpecifier:v5 afterSpecifier:v6];
      }
    }

    v4 = 0;
  }
}

- (void)insertExternalDisplaySpecifiers
{
  v4 = [(DBSSettingsController *)self connectedDisplaySpecifiers];
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) specifierForID:@"BOLD_TEXT"];
  [(DBSSettingsController *)self insertContiguousSpecifiers:v4 afterSpecifier:v3 animated:1];
}

- (void)removeExternalDisplaySpecifiers
{
  v14 = [MEMORY[0x277CBEB18] array];
  v3 = *MEMORY[0x277D3FC48];
  if (*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = [(DBSSettingsController *)self specifierForID:@"CONNECTED_DISPLAYS"];
    if (v4)
    {
      v5 = v4;
      [v14 addObject:v4];
    }
  }

  if (*(&self->super.super.super.super.super.isa + v3))
  {
    v6 = [(DBSSettingsController *)self specifierForID:@"DISPLAY_MULTITASKING"];
    if (v6)
    {
      v7 = v6;
      [v14 addObject:v6];
    }
  }

  if (*(&self->super.super.super.super.super.isa + v3))
  {
    v8 = [(DBSSettingsController *)self specifierForID:@"MAIN_DISPLAY"];
    if (v8)
    {
      v9 = v8;
      [v14 addObject:v8];
    }
  }

  if (*(&self->super.super.super.super.super.isa + v3))
  {
    v10 = [(DBSSettingsController *)self specifierForID:@"EXTERNAL_DISPLAY"];
    if (v10)
    {
      v11 = v10;
      [v14 addObject:v10];
    }
  }

  if (*(&self->super.super.super.super.super.isa + v3))
  {
    v12 = [(DBSSettingsController *)self specifierForID:@"DISPLAY_ARRANGEMENT"];
    if (v12)
    {
      v13 = v12;
      [v14 addObject:v12];
    }
  }

  if ([v14 count])
  {
    [(DBSSettingsController *)self removeContiguousSpecifiers:v14 animated:1];
  }
}

- (void)presentArrangementController
{
  v3 = objc_alloc_init(MEMORY[0x277D3FAC8]);
  v4 = [(DBSSettingsController *)self specifierForID:@"DISPLAY_ARRANGEMENT"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x277D400B8]];

  [v3 setSpecifier:v4];
  [v3 setParentController:self];
  [v3 setupController];
  [v3 setModalPresentationStyle:2];
  v7 = [v3 viewControllers];
  v8 = [v7 firstObject];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__DBSSettingsController_presentArrangementController__block_invoke;
  v11[3] = &unk_2784597B0;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v3;
  v13 = v10;
  [(DBSSettingsController *)self updateExternalDisplayInfoWithCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __53__DBSSettingsController_presentArrangementController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained externalDisplayInfo];
  [*(a1 + 32) setExternalDisplayInfo:v2];

  v3 = [WeakRetained displayService];
  [*(a1 + 32) setDisplayService:v3];

  [*(a1 + 32) setDelegate:WeakRetained];
  [WeakRetained presentViewController:*(a1 + 40) animated:1 completion:0];
  [WeakRetained setArrangementViewController:*(a1 + 40)];
}

- (void)updateExternalDisplayInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DBSSettingsController *)self displayService];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__DBSSettingsController_updateExternalDisplayInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_278459800;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 getConnectedDisplayInfoWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__DBSSettingsController_updateExternalDisplayInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__DBSSettingsController_updateExternalDisplayInfoWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_2784597D8;
  objc_copyWeak(&v11, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  objc_destroyWeak(&v11);
}

void __72__DBSSettingsController_updateExternalDisplayInfoWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) count];
  v4 = DBSLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_22102E000, v4, OS_LOG_TYPE_DEFAULT, "Received valid external display", buf, 2u);
    }

    v6 = [*(a1 + 32) firstObject];
    [WeakRetained setExternalDisplayInfo:v6];
  }

  else
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_impl(&dword_22102E000, v4, OS_LOG_TYPE_DEFAULT, "No valid display", v10, 2u);
    }

    [WeakRetained setExternalDisplayInfo:0];
    if (*(*(a1 + 40) + *MEMORY[0x277D3FC48]))
    {
      v6 = [WeakRetained specifierForID:@"DISPLAY_ARRANGEMENT"];
    }

    else
    {
      v6 = 0;
    }

    [WeakRetained removeSpecifier:v6];
    v7 = [WeakRetained presentedViewController];
    v8 = [WeakRetained arrangementViewController];

    if (v7 == v8)
    {
      [WeakRetained dismissViewControllerAnimated:1 completion:0];
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)handleDBSExternalDisplayManagerCurrentModeDidChangeNotification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__DBSSettingsController_handleDBSExternalDisplayManagerCurrentModeDidChangeNotification___block_invoke;
  v5[3] = &unk_278459828;
  objc_copyWeak(&v6, &location);
  [(DBSSettingsController *)self updateExternalDisplayInfoWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __89__DBSSettingsController_handleDBSExternalDisplayManagerCurrentModeDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDisplayServiceInfoUpdate];
}

- (void)handleDisplayServiceInfoUpdate
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = DBSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22102E000, v3, OS_LOG_TYPE_DEFAULT, "Received", buf, 2u);
    }

    v4 = +[DBSExternalDisplayManager defaultManager];
    v5 = [v4 externalDisplayAvailable];

    if (v5)
    {
      [(DBSSettingsController *)self insertExternalDisplaySpecifiers];
    }

    else
    {
      [(DBSSettingsController *)self removeExternalDisplaySpecifiers];
    }

    v6 = +[DBSExternalDisplayManager defaultManager];
    -[DBSSettingsController updateForExternalMonitorAvailability:](self, "updateForExternalMonitorAvailability:", [v6 externalDisplayAvailable]);
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DBSSettingsController_handleDisplayServiceInfoUpdate__block_invoke;
    block[3] = &unk_278459828;
    objc_copyWeak(&v8, buf);
    dispatch_sync(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __55__DBSSettingsController_handleDisplayServiceInfoUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDisplayServiceInfoUpdate];
}

- (id)_deviceAppearanceScheduleSpecifier
{
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) && ([(DBSSettingsController *)self specifierForID:@"APPEARANCE_OPTIONS"], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(DBSSettingsController *)self specifierForID:@"APPEARANCE_OPTIONS"];
  }

  else
  {
    v5 = MEMORY[0x277D3FAD8];
    v6 = DBS_LocalizedStringForDisplays(@"APPEARANCE_OPTIONS");
    v4 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:sel__deviceAppearanceScheduleString detail:objc_opt_class() cell:2 edit:0];

    [v4 setObject:@"APPEARANCE_OPTIONS" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v7 = [(DBSSettingsController *)self _styleMode];
    [v4 setObject:v7 forKeyedSubscript:DBSStyleModeKey[0]];
  }

  return v4;
}

- (id)_deviceAppearanceScheduleString
{
  v3 = [(DBSSettingsController *)self _styleMode];
  v4 = [v3 suggestedAutomaticModeValue];

  if (v4 == 100)
  {
    v5 = [(DBSSettingsController *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    if (v6 == 2)
    {
      v7 = @"DARK_UNTIL_SUNRISE";
    }

    else
    {
      v7 = @"LIGHT_UNTIL_SUNSET";
    }

    v14 = DBS_LocalizedStringForDisplays(v7);
  }

  else
  {
    v8 = [(DBSSettingsController *)self _styleMode];
    v9 = [v8 suggestedAutomaticModeValue];

    if (v9 == 102)
    {
      v10 = [(DBSSettingsController *)self traitCollection];
      v11 = [v10 userInterfaceStyle];

      v12 = MEMORY[0x277CCACA8];
      if (v11 == 2)
      {
        v13 = DBS_LocalizedStringForDisplays(@"CUSTOM_SCHEDULE_DARK");
        [(DBSSettingsController *)self _lightAppearanceTimeString];
      }

      else
      {
        v13 = DBS_LocalizedStringForDisplays(@"CUSTOM_SCHEDULE_LIGHT");
        [(DBSSettingsController *)self _darkAppearanceTimeString];
      }
      v15 = ;
      v14 = [v12 stringWithFormat:v13, v15];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)_darkAppearanceTimeString
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v4 = [(DBSSettingsController *)self _styleMode];
  v5 = v4;
  if (v4)
  {
    [v4 customSchedule];
    v6 = v17;
  }

  else
  {
    v6 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  [v3 setHour:v6];

  v7 = [(DBSSettingsController *)self _styleMode];
  v8 = v7;
  if (v7)
  {
    [v7 customSchedule];
    v9 = *(&v15 + 1);
  }

  else
  {
    v9 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  [v3 setMinute:{v9, v15, v16, v17, v18}];

  v10 = objc_alloc(MEMORY[0x277CBEA80]);
  v11 = [v10 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v12 = [v11 dateFromComponents:v3];
  v13 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v12];

  return v13;
}

- (id)_lightAppearanceTimeString
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v4 = [(DBSSettingsController *)self _styleMode];
  v5 = v4;
  if (v4)
  {
    [v4 customSchedule];
    v6 = v18;
  }

  else
  {
    v6 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  [v3 setHour:v6];

  v7 = [(DBSSettingsController *)self _styleMode];
  v8 = v7;
  if (v7)
  {
    [v7 customSchedule];
    v9 = *(&v16 + 1);
  }

  else
  {
    v9 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  [v3 setMinute:{v9, v15, v16, v17, v18}];

  v10 = objc_alloc(MEMORY[0x277CBEA80]);
  v11 = [v10 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v12 = [v11 dateFromComponents:v3];
  v13 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v12];

  return v13;
}

- (id)getAppearanceValueForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(DBSSettingsController *)self _styleMode];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "modeValue")}];

  return v5;
}

- (void)setAppearanceValue:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 integerValue];
  v6 = [(DBSSettingsController *)self _styleMode];
  [v6 setModeValue:v5];
}

- (id)getAutomaticAppearanceEnabledForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(DBSSettingsController *)self _styleMode];
  [v4 modeValue];
  v5 = [v3 numberWithBool:UISUserInterfaceStyleModeValueIsAutomatic()];

  return v5;
}

- (void)setAutomaticAppearanceEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__DBSSettingsController_setAutomaticAppearanceEnabled_forSpecifier___block_invoke;
  block[3] = &unk_278459558;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  v7 = [v5 BOOLValue];

  [DBSAnalytics logAutomaticDarkModeEvent:v7];
}

void __68__DBSSettingsController_setAutomaticAppearanceEnabled_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _styleMode];
  [v2 modeValue];
  IsAutomatic = UISUserInterfaceStyleModeValueIsAutomatic();

  v4 = *(a1 + 32);
  if (IsAutomatic)
  {
    v5 = [v4 traitCollection];
    if ([v5 userInterfaceStyle] == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = [*(a1 + 32) _styleMode];
    [v7 setModeValue:v6];

    v8 = *MEMORY[0x277D77848];
    v9 = *(MEMORY[0x277D77848] + 8);
    v10 = [*(a1 + 32) _styleMode];
    [v10 setOverride:{v8, v9}];

    v11 = *(a1 + 32);

    [v11 removeSpecifierID:@"APPEARANCE_OPTIONS" animated:1];
  }

  else
  {
    v12 = [v4 _styleMode];
    v13 = [v12 suggestedAutomaticModeValue];
    v14 = [*(a1 + 32) _styleMode];
    [v14 setModeValue:v13];

    v15 = *(a1 + 32);
    v16 = [v15 _deviceAppearanceScheduleSpecifier];
    [v15 insertSpecifier:v16 afterSpecifierID:@"AUTOMATIC"];
  }
}

- (void)_updateDeviceAppearanceToNewInterfaceStyle:(int64_t)a3
{
  v5 = [(DBSSettingsController *)self _styleMode];
  [v5 modeValue];
  IsAutomatic = UISUserInterfaceStyleModeValueIsAutomatic();

  if (a3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [(DBSSettingsController *)self _styleMode];
  v9 = v8;
  if (IsAutomatic)
  {
    v10 = [v8 override];

    if (v10 == v7)
    {
      return;
    }

    v12 = [(DBSSettingsController *)self _styleMode];
    [v12 setOverride:{v7, 1}];
  }

  else
  {
    v11 = [v8 modeValue];

    if (v11 == v7)
    {
      return;
    }

    v12 = [(DBSSettingsController *)self _styleMode];
    [v12 setModeValue:v7];
  }
}

- (void)deviceAppearanceTableViewCellUserDidTapOnLightAppearance:(id)a3
{
  [(DBSSettingsController *)self _updateDeviceAppearanceToNewInterfaceStyle:1];

  [DBSAnalytics logDarkModeEvent:0];
}

- (void)deviceAppearanceTableViewCellUserDidTapOnDarkAppearance:(id)a3
{
  [(DBSSettingsController *)self _updateDeviceAppearanceToNewInterfaceStyle:2];

  [DBSAnalytics logDarkModeEvent:1];
}

- (void)externalDisplayMultitaskingTableViewCellUserDidSelectedScreenMirroring:(id)a3
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  [v3 setMirroringEnabled:1];
}

- (void)externalDisplayMultitaskingTableViewCellUserDidSelectedExtendedDisplay:(id)a3
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  [v3 setMirroringEnabled:0];
}

- (id)liquidGlassLegibilitySettingForSpecifier:(id)a3
{
  v3 = +[DBSLiquidGlassController glassLegibilitySetting];
  if (!v3)
  {
    v4 = @"CLEAR";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"TINTED";
LABEL_5:
    v5 = DBS_LocalizedStringForDisplays(v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_reloadBlueLightSpecifiers:reloadUI:.cold.1()
{
  v0 = DBSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v1, v2, "Could not get Night Shift capability from CoreBrightness.", v3, v4, v5, v6, 0);
  }

  __assert_rtn("[DBSSettingsController _reloadBlueLightSpecifiers:reloadUI:]", "DBSSettingsController.m", 883, "0");
}

- (void)blueLightSchedule:.cold.1()
{
  v0 = DBSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v1, v2, "Could not get blr status.", v3, v4, v5, v6, 0);
  }

  __assert_rtn("[DBSSettingsController blueLightSchedule:]", "DBSSettingsController.m", 919, "0");
}

@end