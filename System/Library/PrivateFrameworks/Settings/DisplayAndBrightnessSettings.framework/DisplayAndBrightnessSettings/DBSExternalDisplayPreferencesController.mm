@interface DBSExternalDisplayPreferencesController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (DBSExternalDisplayPreferencesController)init;
- (SBSConnectedDisplayInfo)externalDisplayInfo;
- (id)connectedDisplayName;
- (id)currentHDRMode;
- (id)displayModeSpecifiers;
- (id)externalAutoBrightnessValueForSpecifier:(id)specifier;
- (id)externalBrightnessSpecifiers;
- (id)externalBrightnessValueForSpecifier:(id)specifier;
- (id)localizedMagnifyModeName;
- (id)matchContentEnabled:(id)enabled;
- (id)specifiers;
- (unint64_t)supportedZoomModesCount;
- (void)connectedDisplayDidUpdate:(id)update;
- (void)dealloc;
- (void)displayZoomDidUpdate;
- (void)externalBrightnessDidUpdate:(id)update;
- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification:(id)notification;
- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification:(id)notification;
- (void)handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification:(id)notification;
- (void)insertExternalBrightnessSpecifiers;
- (void)presentModalMagnifyController;
- (void)removeExternalBrightnessSpecifiers;
- (void)setCurrentHDRMode:(id)mode;
- (void)setExternalAutoBrightnessValue:(id)value specifier:(id)specifier;
- (void)setExternalBrightnessValue:(id)value specifier:(id)specifier;
- (void)setMatchContentEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DBSExternalDisplayPreferencesController

- (DBSExternalDisplayPreferencesController)init
{
  v9.receiver = self;
  v9.super_class = DBSExternalDisplayPreferencesController;
  v2 = [(DBSExternalDisplayPreferencesController *)&v9 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_connectedDisplayDidUpdate_ name:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_externalBrightnessDidUpdate_ name:DBSExternalDisplayManagerExternalBrightnessValueDidChange[0] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification_ name:DBSExternalDisplayManagerExternalBrightnessAvailablityDidChange[0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification_ name:DBSExternalDisplayManagerExternalAutoBrightnessAvailablityDidChange[0] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v2 selector:sel_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification_ name:DBSExternalDisplayManagerExternalAutoBrightnessValueDidChange[0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:DBSExternalDisplayManagerExternalBrightnessValueDidChange[0] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:DBSExternalDisplayManagerExternalBrightnessAvailablityDidChange[0] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:DBSExternalDisplayManagerExternalAutoBrightnessAvailablityDidChange[0] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 removeObserver:self name:DBSExternalDisplayManagerExternalAutoBrightnessValueDidChange[0] object:0];

  v8.receiver = self;
  v8.super_class = DBSExternalDisplayPreferencesController;
  [(DBSExternalDisplayPreferencesController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = DBSExternalDisplayPreferencesController;
  [(DBSExternalDisplayPreferencesController *)&v2 viewDidLoad];
  ADClientAddValueForScalarKey();
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = +[DBSExternalDisplayManager defaultManager];
    externalDisplayBrightnessAvailable = [v6 externalDisplayBrightnessAvailable];

    if (externalDisplayBrightnessAvailable)
    {
      externalBrightnessSpecifiers = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
      [array addObjectsFromArray:externalBrightnessSpecifiers];
    }

    if (DBSReverseZoomEnabled() && DBSChamoisEnabled() && [(DBSExternalDisplayPreferencesController *)self supportedZoomModesCount]>= 2)
    {
      v9 = objc_opt_new();
      [v9 setDelegate:self];
      specifiers = [v9 specifiers];

      if (specifiers)
      {
        specifiers2 = [v9 specifiers];
        [array addObjectsFromArray:specifiers2];
      }

      [(DBSExternalDisplayPreferencesController *)self set_zoomAndProSpecifierVendor:v9];
    }

    v12 = +[DBSExternalDisplayManager defaultManager];
    supportedHDRModesWithHighRefreshRate = [v12 supportedHDRModesWithHighRefreshRate];
    if ([supportedHDRModesWithHighRefreshRate count])
    {
    }

    else
    {
      v14 = +[DBSExternalDisplayManager defaultManager];
      supportedHDRModesWithVRR = [v14 supportedHDRModesWithVRR];
      v16 = [supportedHDRModesWithVRR count];

      if (!v16)
      {
        displayModeSpecifiers = [(DBSExternalDisplayPreferencesController *)self displayModeSpecifiers];
        [array addObjectsFromArray:displayModeSpecifiers];

        emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v27 = *MEMORY[0x277D3FFB8];
        [emptyGroupSpecifier setObject:@"MATCH_CONTENT_GROUP" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
        v28 = DBS_LocalizedStringForConnectedDisplays(@"MATCH_CONTENT_FOOTER");
        [emptyGroupSpecifier setObject:v28 forKeyedSubscript:*MEMORY[0x277D3FF88]];

        [array addObject:emptyGroupSpecifier];
        v29 = MEMORY[0x277D3FAD8];
        v30 = DBS_LocalizedStringForConnectedDisplays(@"MATCH_CONTENT");
        v20 = [v29 preferenceSpecifierNamed:v30 target:self set:sel_setMatchContentEnabled_specifier_ get:sel_matchContentEnabled_ detail:0 cell:6 edit:0];

        v22 = v20;
        v23 = @"MATCH_CONTENT";
        v21 = v27;
        goto LABEL_14;
      }
    }

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADVANCED_LINK_GROUP_ID"];
    [array addObject:emptyGroupSpecifier];
    v18 = MEMORY[0x277D3FAD8];
    v19 = DBS_LocalizedStringForDisplays(@"ADVANCED");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v21 = *MEMORY[0x277D3FFB8];
    v22 = v20;
    v23 = @"ADVANCED";
LABEL_14:
    [v22 setObject:v23 forKeyedSubscript:v21];
    [array addObject:v20];

    v24 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  location[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = [(DBSExternalDisplayPreferencesController *)self specifierAtIndexPath:pathCopy];
  v9 = [(DBSExternalDisplayPreferencesController *)self specifierForID:@"COLOR_SETTING"];
  v10 = [v8 objectForKeyedSubscript:@"HDRMode"];
  currentHDRMode = [(DBSExternalDisplayPreferencesController *)self currentHDRMode];
  v12 = [currentHDRMode isEqualToString:v10];

  if ((v12 & 1) == 0)
  {
    v13 = +[DBSExternalDisplayManager defaultManager];
    preferredHDRModes = [v13 preferredHDRModes];

    if ([preferredHDRModes containsObject:v10])
    {
      [(DBSExternalDisplayPreferencesController *)self setCurrentHDRMode:v10];
      if ([v10 isEqualToString:*MEMORY[0x277CDA160]] || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CDA168]) || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CDA178]))
      {
        ADClientAddValueForScalarKey();
      }

      else
      {
        v25 = DBSLogForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138543362;
          *(location + 4) = self;
          _os_log_impl(&dword_22102E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: unexcepted HDR mode.", location, 0xCu);
        }
      }

      [v9 setProperty:v8 forKey:*MEMORY[0x277D40090]];
      [(DBSExternalDisplayPreferencesController *)self reloadSpecifier:v9];
    }

    else if (v10)
    {
      v15 = MEMORY[0x277D75110];
      v16 = DBS_LocalizedStringForConnectedDisplays(@"LIMIT_REFRESH_RATE_TITLE");
      v17 = DBS_LocalizedStringForConnectedDisplays(@"LIMIT_REFRESH_RATE_MESSAGE");
      v18 = [v15 alertControllerWithTitle:v16 message:v17 preferredStyle:1];

      objc_initWeak(location, self);
      v19 = MEMORY[0x277D750F8];
      v20 = DBS_LocalizedStringForConnectedDisplays(@"LIMIT_REFRESH_RATE_CONFIRM");
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __77__DBSExternalDisplayPreferencesController_tableView_didSelectRowAtIndexPath___block_invoke;
      v27[3] = &unk_278459618;
      objc_copyWeak(&v31, location);
      v28 = v10;
      v29 = v9;
      v30 = v8;
      v21 = [v19 actionWithTitle:v20 style:0 handler:v27];
      [v18 addAction:v21];

      v22 = MEMORY[0x277D750F8];
      v23 = DBS_LocalizedStringForConnectedDisplays(@"LIMIT_REFRESH_RATE_CANCEL");
      v24 = [v22 actionWithTitle:v23 style:1 handler:&__block_literal_global_1];
      [v18 addAction:v24];

      [(DBSExternalDisplayPreferencesController *)self presentViewController:v18 animated:1 completion:0];
      objc_destroyWeak(&v31);
      objc_destroyWeak(location);
    }
  }

  v26.receiver = self;
  v26.super_class = DBSExternalDisplayPreferencesController;
  [(DBSExternalDisplayPreferencesController *)&v26 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

void __77__DBSExternalDisplayPreferencesController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setCurrentHDRMode:*(a1 + 32)];
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CDA160]])
  {
    ADClientAddValueForScalarKey();
  }

  else
  {
    v3 = DBSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_22102E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: unexcepted limited refresh rate HDR mode.", &v4, 0xCu);
    }
  }

  [*(a1 + 40) setProperty:*(a1 + 48) forKey:*MEMORY[0x277D40090]];
  [WeakRetained reloadSpecifier:*(a1 + 40)];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DBSExternalDisplayPreferencesController *)self specifierAtIndexPath:pathCopy];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v10 = [v9 isEqualToString:@"MATCH_CONTENT"];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DBSExternalDisplayPreferencesController;
    v11 = [(DBSExternalDisplayPreferencesController *)&v13 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v11;
}

- (void)connectedDisplayDidUpdate:(id)update
{
  v4 = +[DBSExternalDisplayManager defaultManager];
  externalDisplayAvailable = [v4 externalDisplayAvailable];

  if ((externalDisplayAvailable & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__DBSExternalDisplayPreferencesController_connectedDisplayDidUpdate___block_invoke;
    block[3] = &unk_278459558;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)externalBrightnessSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[DBSExternalDisplayManager defaultManager];
  externalDisplayBrightnessAvailable = [v4 externalDisplayBrightnessAvailable];

  if (externalDisplayBrightnessAvailable)
  {
    v6 = *MEMORY[0x277D3FC48];
    if (!*(&self->super.super.super.super.super.isa + v6) || ([(DBSExternalDisplayPreferencesController *)self specifierForID:@"BRIGHTNESS_GROUP"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BRIGHTNESS_GROUP"];
      v8 = DBS_LocalizedStringForConnectedDisplays(@"BRIGHTNESS_GROUP");
      [v7 setName:v8];
    }

    [array addObject:v7];
    if (!*(&self->super.super.super.super.super.isa + v6) || ([(DBSExternalDisplayPreferencesController *)self specifierForID:@"EXTERNAL_BRIGHTNESS"], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setExternalBrightnessValue_specifier_ get:sel_externalBrightnessValueForSpecifier_ detail:0 cell:5 edit:0];
      [v9 setObject:@"EXTERNAL_BRIGHTNESS" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      dbs_minSliderImage = [MEMORY[0x277D755B8] dbs_minSliderImage];
      [v9 setObject:dbs_minSliderImage forKeyedSubscript:*MEMORY[0x277D400D0]];

      dbs_maxSliderImage = [MEMORY[0x277D755B8] dbs_maxSliderImage];
      [v9 setObject:dbs_maxSliderImage forKeyedSubscript:*MEMORY[0x277D400E0]];

      [v9 setObject:&unk_28349F658 forKeyedSubscript:*MEMORY[0x277D3FEC0]];
      [v9 setObject:&unk_28349F668 forKeyedSubscript:*MEMORY[0x277D3FEB8]];
      [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D400C0]];
    }

    [array addObject:v9];
    v12 = +[DBSExternalDisplayManager defaultManager];
    externalDisplayAutoBrightnessAvailable = [v12 externalDisplayAutoBrightnessAvailable];

    if (externalDisplayAutoBrightnessAvailable)
    {
      if (!*(&self->super.super.super.super.super.isa + v6) || ([(DBSExternalDisplayPreferencesController *)self specifierForID:@"EXTERNAL_AUTO_BRIGHTNESS"], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v15 = MEMORY[0x277D3FAD8];
        v16 = DBS_LocalizedStringForConnectedDisplays(@"EXTERNAL_AUTO_BRIGHTNESS");
        v14 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setExternalAutoBrightnessValue_specifier_ get:sel_externalAutoBrightnessValueForSpecifier_ detail:0 cell:6 edit:0];

        [v14 setObject:@"EXTERNAL_AUTO_BRIGHTNESS" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      }

      [array addObject:v14];
    }
  }

  return array;
}

- (void)externalBrightnessDidUpdate:(id)update
{
  updateCopy = update;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = [(DBSExternalDisplayPreferencesController *)self specifierForID:@"EXTERNAL_BRIGHTNESS"];
    [(DBSExternalDisplayPreferencesController *)self reloadSpecifier:v5];
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DBSExternalDisplayPreferencesController_externalBrightnessDidUpdate___block_invoke;
    block[3] = &unk_278459660;
    objc_copyWeak(&v8, &location);
    v7 = updateCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __71__DBSExternalDisplayPreferencesController_externalBrightnessDidUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained externalBrightnessDidUpdate:*(a1 + 32)];
}

- (void)handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[DBSExternalDisplayManager defaultManager];
    externalDisplayBrightnessAvailable = [v5 externalDisplayBrightnessAvailable];

    if (externalDisplayBrightnessAvailable)
    {
      [(DBSExternalDisplayPreferencesController *)self insertExternalBrightnessSpecifiers];
    }

    else
    {
      [(DBSExternalDisplayPreferencesController *)self removeExternalBrightnessSpecifiers];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __125__DBSExternalDisplayPreferencesController_handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification___block_invoke;
    block[3] = &unk_278459660;
    objc_copyWeak(&v9, &location);
    v8 = notificationCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __125__DBSExternalDisplayPreferencesController_handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification:*(a1 + 32)];
}

- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[DBSExternalDisplayManager defaultManager];
    externalDisplayAutoBrightnessAvailable = [v5 externalDisplayAutoBrightnessAvailable];

    if (externalDisplayAutoBrightnessAvailable)
    {
      [(DBSExternalDisplayPreferencesController *)self insertExternalBrightnessSpecifiers];
    }

    else
    {
      [(DBSExternalDisplayPreferencesController *)self removeExternalBrightnessSpecifiers];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __168__DBSExternalDisplayPreferencesController_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification___block_invoke;
    block[3] = &unk_278459660;
    objc_copyWeak(&v9, &location);
    v8 = notificationCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __168__DBSExternalDisplayPreferencesController_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification:*(a1 + 32)];
}

- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = [(DBSExternalDisplayPreferencesController *)self specifierForID:@"EXTERNAL_AUTO_BRIGHTNESS"];
    if (v5)
    {
      [(DBSExternalDisplayPreferencesController *)self reloadSpecifier:v5];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __162__DBSExternalDisplayPreferencesController_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification___block_invoke;
    block[3] = &unk_278459660;
    objc_copyWeak(&v8, &location);
    v7 = notificationCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __162__DBSExternalDisplayPreferencesController_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification:*(a1 + 32)];
}

- (void)insertExternalBrightnessSpecifiers
{
  externalBrightnessSpecifiers = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
  [(DBSExternalDisplayPreferencesController *)self removeContiguousSpecifiers:externalBrightnessSpecifiers animated:0];
  externalBrightnessSpecifiers2 = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
  [(DBSExternalDisplayPreferencesController *)self insertContiguousSpecifiers:externalBrightnessSpecifiers2 afterSpecifierID:0 animated:1];
}

- (void)removeExternalBrightnessSpecifiers
{
  externalBrightnessSpecifiers = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
  [(DBSExternalDisplayPreferencesController *)self removeContiguousSpecifiers:externalBrightnessSpecifiers animated:1];
}

- (SBSConnectedDisplayInfo)externalDisplayInfo
{
  parentController = [(DBSExternalDisplayPreferencesController *)self parentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    parentController2 = [(DBSExternalDisplayPreferencesController *)self parentController];
    externalDisplayInfo = [parentController2 externalDisplayInfo];
  }

  else
  {
    externalDisplayInfo = 0;
  }

  return externalDisplayInfo;
}

- (unint64_t)supportedZoomModesCount
{
  externalDisplayInfo = [(DBSExternalDisplayPreferencesController *)self externalDisplayInfo];
  supportedScales = [externalDisplayInfo supportedScales];

  return ((supportedScales >> 1) & 1) + (supportedScales & 1) + ((supportedScales >> 2) & 1);
}

- (void)presentModalMagnifyController
{
  v12 = objc_alloc_init(MEMORY[0x277D3FAC8]);
  v3 = *MEMORY[0x277D3FD20];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x277D400B8]];

  [v12 setSpecifier:*(&self->super.super.super.super.super.isa + v3)];
  [v12 setParentController:self];
  [v12 setupController];
  [v12 setModalPresentationStyle:2];
  controller = [v12 controller];
  parentController = [(DBSExternalDisplayPreferencesController *)self parentController];
  objc_opt_class();
  LOBYTE(v3) = objc_opt_isKindOfClass();

  if (v3)
  {
    parentController2 = [(DBSExternalDisplayPreferencesController *)self parentController];
    displayService = [parentController2 displayService];
    [controller setDisplayService:displayService];

    externalDisplayInfo = [parentController2 externalDisplayInfo];
    [controller setExternalDisplayInfo:externalDisplayInfo];
  }

  [controller setDelegate:self];
  [(DBSExternalDisplayPreferencesController *)self presentViewController:v12 animated:1 completion:0];
}

- (id)localizedMagnifyModeName
{
  externalDisplayInfo = [(DBSExternalDisplayPreferencesController *)self externalDisplayInfo];
  displayModeSettings = [externalDisplayInfo displayModeSettings];
  scale = [displayModeSettings scale];

  if (scale > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = DBS_LocalizedStringForMagnify(off_278459680[scale]);
  }

  return v5;
}

- (void)displayZoomDidUpdate
{
  [(DBSExternalDisplayPreferencesController *)self dismissViewControllerAnimated:1 completion:0];
  parentController = [(DBSExternalDisplayPreferencesController *)self parentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    parentController2 = [(DBSExternalDisplayPreferencesController *)self parentController];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__DBSExternalDisplayPreferencesController_displayZoomDidUpdate__block_invoke;
    v6[3] = &unk_278459558;
    v6[4] = self;
    [parentController2 updateExternalDisplayInfoWithCompletionHandler:v6];
  }
}

- (id)displayModeSpecifiers
{
  v52[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v2 = *MEMORY[0x277CDA160];
  v51[0] = *MEMORY[0x277CDA160];
  v3 = DBS_LocalizedStringForConnectedDisplays(@"DOLBY_VISION");
  v52[0] = v3;
  v35 = *MEMORY[0x277CDA168];
  v51[1] = *MEMORY[0x277CDA168];
  v4 = DBS_LocalizedStringForConnectedDisplays(@"HIGH_DYNAMIC_RANGE");
  v52[1] = v4;
  v40 = *MEMORY[0x277CDA178];
  v51[2] = *MEMORY[0x277CDA178];
  v5 = DBS_LocalizedStringForConnectedDisplays(@"STANDARD_DYNAMIC_RANGE");
  v52[2] = v5;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

  v6 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModes = [v6 supportedHDRModes];

  v8 = +[DBSExternalDisplayManager defaultManager];
  preferredHDRModes = [v8 preferredHDRModes];

  v9 = [supportedHDRModes count];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier setObject:@"COLOR_SETTING" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [emptyGroupSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  v42 = v9;
  if (v9 < 2)
  {
    v13 = DBS_LocalizedStringForConnectedDisplays(@"COLOR_SETTING");
    [emptyGroupSpecifier setName:v13];

    v12 = @"SDR_COLOR_SETTING_FOOTER";
  }

  else
  {
    v11 = DBS_LocalizedStringForConnectedDisplays(@"PREFERRED_COLOR_SETTING");
    [emptyGroupSpecifier setName:v11];

    if ([supportedHDRModes containsObject:v2])
    {
      v12 = @"DOLBY_COLOR_SETTING_FOOTER";
    }

    else
    {
      v12 = @"HDR_COLOR_SETTING_FOOTER";
    }
  }

  v14 = DBS_LocalizedStringForConnectedDisplays(v12);
  [emptyGroupSpecifier setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v34 = emptyGroupSpecifier;
  [array addObject:emptyGroupSpecifier];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = supportedHDRModes;
  v15 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_30;
  }

  v16 = v15;
  v37 = v2;
  v17 = 0;
  v18 = *v47;
  v19 = *MEMORY[0x277D3FE58];
  v39 = *MEMORY[0x277D3FF38];
  v38 = *MEMORY[0x277D3FE18];
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v47 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v46 + 1) + 8 * i);
      v22 = MEMORY[0x277D3FAD8];
      v23 = [v44 objectForKeyedSubscript:v21];
      v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:3 edit:0];

      [v24 setObject:v21 forKeyedSubscript:@"HDRMode"];
      [v24 setObject:objc_opt_class() forKeyedSubscript:v19];
      if (v42 < 2)
      {
        [v24 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v39];
        goto LABEL_24;
      }

      if ([v21 isEqualToString:v40])
      {
        v25 = @"MOST_COMPATIBLE";
      }

      else
      {
        if (([obj containsObject:v37] & 1) == 0 && objc_msgSend(v21, "isEqualToString:", v35))
        {
LABEL_22:
          v25 = @"RECOMMENDED";
          goto LABEL_23;
        }

        v26 = [preferredHDRModes containsObject:v37];
        v27 = [v21 isEqualToString:v37];
        if (v26)
        {
          if (v27)
          {
            goto LABEL_22;
          }

          v25 = @"GOOD";
        }

        else
        {
          if (!v27)
          {
            goto LABEL_22;
          }

          v25 = @"REFRESH_RATE_LIMITED";
        }
      }

LABEL_23:
      v28 = DBS_LocalizedStringForConnectedDisplays(v25);
      [v24 setObject:v28 forKeyedSubscript:v38];

LABEL_24:
      v29 = +[DBSExternalDisplayManager defaultManager];
      currentHDRMode = [v29 currentHDRMode];
      v31 = [currentHDRMode isEqualToString:v21];

      if (v31)
      {
        v32 = v24;

        v17 = v32;
      }

      [array addObject:v24];
    }

    v16 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v16);
LABEL_30:

  [v34 setProperty:v17 forKey:*MEMORY[0x277D40090]];

  return array;
}

- (id)externalBrightnessValueForSpecifier:(id)specifier
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  externalDisplayBrightness = [v3 externalDisplayBrightness];

  return externalDisplayBrightness;
}

- (void)setExternalBrightnessValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v11 = [(DBSExternalDisplayPreferencesController *)self indexPathForSpecifier:specifier];
  table = [(DBSExternalDisplayPreferencesController *)self table];
  v8 = [table cellForRowAtIndexPath:v11];

  control = [v8 control];
  v10 = +[DBSExternalDisplayManager defaultManager];
  [v10 setExternalDisplayBrightness:valueCopy shouldCommit:{objc_msgSend(control, "isTracking") ^ 1}];

  ADClientAddValueForScalarKey();
}

- (id)externalAutoBrightnessValueForSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "autoBrightnessEnabled")}];

  return v5;
}

- (void)setExternalAutoBrightnessValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v6 = +[DBSExternalDisplayManager defaultManager];
  bOOLValue = [valueCopy BOOLValue];

  [v6 setAutoBrightnessEnabled:bOOLValue];
}

- (id)connectedDisplayName
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  externalDisplayName = [v2 externalDisplayName];

  return externalDisplayName;
}

- (id)currentHDRMode
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  currentHDRMode = [v2 currentHDRMode];

  return currentHDRMode;
}

- (void)setCurrentHDRMode:(id)mode
{
  modeCopy = mode;
  v4 = +[DBSExternalDisplayManager defaultManager];
  [v4 setCurrentHDRMode:modeCopy];
}

- (id)matchContentEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "matchContent")}];

  return v5;
}

- (void)setMatchContentEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = +[DBSExternalDisplayManager defaultManager];
  [v5 setMatchContent:{objc_msgSend(enabledCopy, "BOOLValue")}];

  [enabledCopy BOOLValue];

  ADClientAddValueForScalarKey();
}

@end