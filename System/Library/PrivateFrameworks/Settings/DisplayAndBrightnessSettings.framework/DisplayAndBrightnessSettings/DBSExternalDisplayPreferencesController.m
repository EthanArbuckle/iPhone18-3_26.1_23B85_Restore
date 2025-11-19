@interface DBSExternalDisplayPreferencesController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (DBSExternalDisplayPreferencesController)init;
- (SBSConnectedDisplayInfo)externalDisplayInfo;
- (id)connectedDisplayName;
- (id)currentHDRMode;
- (id)displayModeSpecifiers;
- (id)externalAutoBrightnessValueForSpecifier:(id)a3;
- (id)externalBrightnessSpecifiers;
- (id)externalBrightnessValueForSpecifier:(id)a3;
- (id)localizedMagnifyModeName;
- (id)matchContentEnabled:(id)a3;
- (id)specifiers;
- (unint64_t)supportedZoomModesCount;
- (void)connectedDisplayDidUpdate:(id)a3;
- (void)dealloc;
- (void)displayZoomDidUpdate;
- (void)externalBrightnessDidUpdate:(id)a3;
- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification:(id)a3;
- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification:(id)a3;
- (void)handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification:(id)a3;
- (void)insertExternalBrightnessSpecifiers;
- (void)presentModalMagnifyController;
- (void)removeExternalBrightnessSpecifiers;
- (void)setCurrentHDRMode:(id)a3;
- (void)setExternalAutoBrightnessValue:(id)a3 specifier:(id)a4;
- (void)setExternalBrightnessValue:(id)a3 specifier:(id)a4;
- (void)setMatchContentEnabled:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_connectedDisplayDidUpdate_ name:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_externalBrightnessDidUpdate_ name:DBSExternalDisplayManagerExternalBrightnessValueDidChange[0] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification_ name:DBSExternalDisplayManagerExternalBrightnessAvailablityDidChange[0] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification_ name:DBSExternalDisplayManagerExternalAutoBrightnessAvailablityDidChange[0] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification_ name:DBSExternalDisplayManagerExternalAutoBrightnessValueDidChange[0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:DBSExternalDisplayManagerExternalBrightnessValueDidChange[0] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:DBSExternalDisplayManagerExternalBrightnessAvailablityDidChange[0] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:DBSExternalDisplayManagerExternalAutoBrightnessAvailablityDidChange[0] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:DBSExternalDisplayManagerExternalAutoBrightnessValueDidChange[0] object:0];

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
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = +[DBSExternalDisplayManager defaultManager];
    v7 = [v6 externalDisplayBrightnessAvailable];

    if (v7)
    {
      v8 = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
      [v5 addObjectsFromArray:v8];
    }

    if (DBSReverseZoomEnabled() && DBSChamoisEnabled() && [(DBSExternalDisplayPreferencesController *)self supportedZoomModesCount]>= 2)
    {
      v9 = objc_opt_new();
      [v9 setDelegate:self];
      v10 = [v9 specifiers];

      if (v10)
      {
        v11 = [v9 specifiers];
        [v5 addObjectsFromArray:v11];
      }

      [(DBSExternalDisplayPreferencesController *)self set_zoomAndProSpecifierVendor:v9];
    }

    v12 = +[DBSExternalDisplayManager defaultManager];
    v13 = [v12 supportedHDRModesWithHighRefreshRate];
    if ([v13 count])
    {
    }

    else
    {
      v14 = +[DBSExternalDisplayManager defaultManager];
      v15 = [v14 supportedHDRModesWithVRR];
      v16 = [v15 count];

      if (!v16)
      {
        v26 = [(DBSExternalDisplayPreferencesController *)self displayModeSpecifiers];
        [v5 addObjectsFromArray:v26];

        v17 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v27 = *MEMORY[0x277D3FFB8];
        [v17 setObject:@"MATCH_CONTENT_GROUP" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
        v28 = DBS_LocalizedStringForConnectedDisplays(@"MATCH_CONTENT_FOOTER");
        [v17 setObject:v28 forKeyedSubscript:*MEMORY[0x277D3FF88]];

        [v5 addObject:v17];
        v29 = MEMORY[0x277D3FAD8];
        v30 = DBS_LocalizedStringForConnectedDisplays(@"MATCH_CONTENT");
        v20 = [v29 preferenceSpecifierNamed:v30 target:self set:sel_setMatchContentEnabled_specifier_ get:sel_matchContentEnabled_ detail:0 cell:6 edit:0];

        v22 = v20;
        v23 = @"MATCH_CONTENT";
        v21 = v27;
        goto LABEL_14;
      }
    }

    v17 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADVANCED_LINK_GROUP_ID"];
    [v5 addObject:v17];
    v18 = MEMORY[0x277D3FAD8];
    v19 = DBS_LocalizedStringForDisplays(@"ADVANCED");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v21 = *MEMORY[0x277D3FFB8];
    v22 = v20;
    v23 = @"ADVANCED";
LABEL_14:
    [v22 setObject:v23 forKeyedSubscript:v21];
    [v5 addObject:v20];

    v24 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DBSExternalDisplayPreferencesController *)self specifierAtIndexPath:v7];
  v9 = [(DBSExternalDisplayPreferencesController *)self specifierForID:@"COLOR_SETTING"];
  v10 = [v8 objectForKeyedSubscript:@"HDRMode"];
  v11 = [(DBSExternalDisplayPreferencesController *)self currentHDRMode];
  v12 = [v11 isEqualToString:v10];

  if ((v12 & 1) == 0)
  {
    v13 = +[DBSExternalDisplayManager defaultManager];
    v14 = [v13 preferredHDRModes];

    if ([v14 containsObject:v10])
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
  [(DBSExternalDisplayPreferencesController *)&v26 tableView:v6 didSelectRowAtIndexPath:v7];
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DBSExternalDisplayPreferencesController *)self specifierAtIndexPath:v7];
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
    v11 = [(DBSExternalDisplayPreferencesController *)&v13 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  return v11;
}

- (void)connectedDisplayDidUpdate:(id)a3
{
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v4 externalDisplayAvailable];

  if ((v5 & 1) == 0)
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v4 externalDisplayBrightnessAvailable];

  if (v5)
  {
    v6 = *MEMORY[0x277D3FC48];
    if (!*(&self->super.super.super.super.super.isa + v6) || ([(DBSExternalDisplayPreferencesController *)self specifierForID:@"BRIGHTNESS_GROUP"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BRIGHTNESS_GROUP"];
      v8 = DBS_LocalizedStringForConnectedDisplays(@"BRIGHTNESS_GROUP");
      [v7 setName:v8];
    }

    [v3 addObject:v7];
    if (!*(&self->super.super.super.super.super.isa + v6) || ([(DBSExternalDisplayPreferencesController *)self specifierForID:@"EXTERNAL_BRIGHTNESS"], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setExternalBrightnessValue_specifier_ get:sel_externalBrightnessValueForSpecifier_ detail:0 cell:5 edit:0];
      [v9 setObject:@"EXTERNAL_BRIGHTNESS" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      v10 = [MEMORY[0x277D755B8] dbs_minSliderImage];
      [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D400D0]];

      v11 = [MEMORY[0x277D755B8] dbs_maxSliderImage];
      [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277D400E0]];

      [v9 setObject:&unk_28349F658 forKeyedSubscript:*MEMORY[0x277D3FEC0]];
      [v9 setObject:&unk_28349F668 forKeyedSubscript:*MEMORY[0x277D3FEB8]];
      [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D400C0]];
    }

    [v3 addObject:v9];
    v12 = +[DBSExternalDisplayManager defaultManager];
    v13 = [v12 externalDisplayAutoBrightnessAvailable];

    if (v13)
    {
      if (!*(&self->super.super.super.super.super.isa + v6) || ([(DBSExternalDisplayPreferencesController *)self specifierForID:@"EXTERNAL_AUTO_BRIGHTNESS"], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v15 = MEMORY[0x277D3FAD8];
        v16 = DBS_LocalizedStringForConnectedDisplays(@"EXTERNAL_AUTO_BRIGHTNESS");
        v14 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setExternalAutoBrightnessValue_specifier_ get:sel_externalAutoBrightnessValueForSpecifier_ detail:0 cell:6 edit:0];

        [v14 setObject:@"EXTERNAL_AUTO_BRIGHTNESS" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      }

      [v3 addObject:v14];
    }
  }

  return v3;
}

- (void)externalBrightnessDidUpdate:(id)a3
{
  v4 = a3;
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
    v7 = v4;
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

- (void)handleDBSExternalDisplayManagerExternalBrightnessAvailablityDidChangeNotification:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[DBSExternalDisplayManager defaultManager];
    v6 = [v5 externalDisplayBrightnessAvailable];

    if (v6)
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
    v8 = v4;
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

- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessAvailablityDidChangeNotification:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[DBSExternalDisplayManager defaultManager];
    v6 = [v5 externalDisplayAutoBrightnessAvailable];

    if (v6)
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
    v8 = v4;
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

- (void)handleDBSExternalDBSDisplayPreferencesControllerExternalDisplayManagerExternalAutoBrightnessValueDidChangeNotification:(id)a3
{
  v4 = a3;
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
    v7 = v4;
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
  v4 = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
  [(DBSExternalDisplayPreferencesController *)self removeContiguousSpecifiers:v4 animated:0];
  v3 = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
  [(DBSExternalDisplayPreferencesController *)self insertContiguousSpecifiers:v3 afterSpecifierID:0 animated:1];
}

- (void)removeExternalBrightnessSpecifiers
{
  v3 = [(DBSExternalDisplayPreferencesController *)self externalBrightnessSpecifiers];
  [(DBSExternalDisplayPreferencesController *)self removeContiguousSpecifiers:v3 animated:1];
}

- (SBSConnectedDisplayInfo)externalDisplayInfo
{
  v3 = [(DBSExternalDisplayPreferencesController *)self parentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(DBSExternalDisplayPreferencesController *)self parentController];
    v6 = [v5 externalDisplayInfo];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)supportedZoomModesCount
{
  v2 = [(DBSExternalDisplayPreferencesController *)self externalDisplayInfo];
  v3 = [v2 supportedScales];

  return ((v3 >> 1) & 1) + (v3 & 1) + ((v3 >> 2) & 1);
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
  v7 = [v12 controller];
  v8 = [(DBSExternalDisplayPreferencesController *)self parentController];
  objc_opt_class();
  LOBYTE(v3) = objc_opt_isKindOfClass();

  if (v3)
  {
    v9 = [(DBSExternalDisplayPreferencesController *)self parentController];
    v10 = [v9 displayService];
    [v7 setDisplayService:v10];

    v11 = [v9 externalDisplayInfo];
    [v7 setExternalDisplayInfo:v11];
  }

  [v7 setDelegate:self];
  [(DBSExternalDisplayPreferencesController *)self presentViewController:v12 animated:1 completion:0];
}

- (id)localizedMagnifyModeName
{
  v2 = [(DBSExternalDisplayPreferencesController *)self externalDisplayInfo];
  v3 = [v2 displayModeSettings];
  v4 = [v3 scale];

  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = DBS_LocalizedStringForMagnify(off_278459680[v4]);
  }

  return v5;
}

- (void)displayZoomDidUpdate
{
  [(DBSExternalDisplayPreferencesController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = [(DBSExternalDisplayPreferencesController *)self parentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(DBSExternalDisplayPreferencesController *)self parentController];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__DBSExternalDisplayPreferencesController_displayZoomDidUpdate__block_invoke;
    v6[3] = &unk_278459558;
    v6[4] = self;
    [v5 updateExternalDisplayInfoWithCompletionHandler:v6];
  }
}

- (id)displayModeSpecifiers
{
  v52[3] = *MEMORY[0x277D85DE8];
  v45 = [MEMORY[0x277CBEB18] array];
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
  v7 = [v6 supportedHDRModes];

  v8 = +[DBSExternalDisplayManager defaultManager];
  v36 = [v8 preferredHDRModes];

  v9 = [v7 count];
  v10 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v10 setObject:@"COLOR_SETTING" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  v42 = v9;
  if (v9 < 2)
  {
    v13 = DBS_LocalizedStringForConnectedDisplays(@"COLOR_SETTING");
    [v10 setName:v13];

    v12 = @"SDR_COLOR_SETTING_FOOTER";
  }

  else
  {
    v11 = DBS_LocalizedStringForConnectedDisplays(@"PREFERRED_COLOR_SETTING");
    [v10 setName:v11];

    if ([v7 containsObject:v2])
    {
      v12 = @"DOLBY_COLOR_SETTING_FOOTER";
    }

    else
    {
      v12 = @"HDR_COLOR_SETTING_FOOTER";
    }
  }

  v14 = DBS_LocalizedStringForConnectedDisplays(v12);
  [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v34 = v10;
  [v45 addObject:v10];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v7;
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

        v26 = [v36 containsObject:v37];
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
      v30 = [v29 currentHDRMode];
      v31 = [v30 isEqualToString:v21];

      if (v31)
      {
        v32 = v24;

        v17 = v32;
      }

      [v45 addObject:v24];
    }

    v16 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v16);
LABEL_30:

  [v34 setProperty:v17 forKey:*MEMORY[0x277D40090]];

  return v45;
}

- (id)externalBrightnessValueForSpecifier:(id)a3
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  v4 = [v3 externalDisplayBrightness];

  return v4;
}

- (void)setExternalBrightnessValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v11 = [(DBSExternalDisplayPreferencesController *)self indexPathForSpecifier:a4];
  v7 = [(DBSExternalDisplayPreferencesController *)self table];
  v8 = [v7 cellForRowAtIndexPath:v11];

  v9 = [v8 control];
  v10 = +[DBSExternalDisplayManager defaultManager];
  [v10 setExternalDisplayBrightness:v6 shouldCommit:{objc_msgSend(v9, "isTracking") ^ 1}];

  ADClientAddValueForScalarKey();
}

- (id)externalAutoBrightnessValueForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "autoBrightnessEnabled")}];

  return v5;
}

- (void)setExternalAutoBrightnessValue:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v4 BOOLValue];

  [v6 setAutoBrightnessEnabled:v5];
}

- (id)connectedDisplayName
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  v3 = [v2 externalDisplayName];

  return v3;
}

- (id)currentHDRMode
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  v3 = [v2 currentHDRMode];

  return v3;
}

- (void)setCurrentHDRMode:(id)a3
{
  v3 = a3;
  v4 = +[DBSExternalDisplayManager defaultManager];
  [v4 setCurrentHDRMode:v3];
}

- (id)matchContentEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "matchContent")}];

  return v5;
}

- (void)setMatchContentEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v5 = +[DBSExternalDisplayManager defaultManager];
  [v5 setMatchContent:{objc_msgSend(v4, "BOOLValue")}];

  [v4 BOOLValue];

  ADClientAddValueForScalarKey();
}

@end