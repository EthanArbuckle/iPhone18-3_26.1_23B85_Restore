@interface DBSExternalDisplayAdvancedPreferencesController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (DBSExternalDisplayAdvancedPreferencesController)init;
- (id)adaptiveSyncEnabled:(id)enabled;
- (id)adaptiveSyncSpecifiers;
- (id)adaptiveSyncSpecifiersFooterText;
- (id)currentHDRMode;
- (id)displayModeSpecifiers;
- (id)displayModeSpecifiersFooterText;
- (id)limitRefreshRateEnabled:(id)enabled;
- (id)limitRefreshRateSpecifiers;
- (id)matchContentEnabled:(id)enabled;
- (id)specifiers;
- (void)_updateAdaptiveSyncIfNecessary;
- (void)_updateCurrentHDRModeIfNecessary;
- (void)_updateLimitRefreshRateIfNecessary;
- (void)connectedDisplayDidUpdate:(id)update;
- (void)dealloc;
- (void)setAdaptiveSyncEnabled:(id)enabled specifier:(id)specifier;
- (void)setCurrentHDRMode:(id)mode;
- (void)setLimitRefreshRateEnabled:(id)enabled specifier:(id)specifier;
- (void)setMatchContentEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DBSExternalDisplayAdvancedPreferencesController

- (DBSExternalDisplayAdvancedPreferencesController)init
{
  v5.receiver = self;
  v5.super_class = DBSExternalDisplayAdvancedPreferencesController;
  v2 = [(DBSExternalDisplayAdvancedPreferencesController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_connectedDisplayDidUpdate_ name:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

  v4.receiver = self;
  v4.super_class = DBSExternalDisplayAdvancedPreferencesController;
  [(DBSExternalDisplayAdvancedPreferencesController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DBSExternalDisplayAdvancedPreferencesController;
  [(DBSExternalDisplayAdvancedPreferencesController *)&v4 viewDidLoad];
  v3 = DBS_LocalizedStringForDisplays(@"ADVANCED");
  [(DBSExternalDisplayAdvancedPreferencesController *)self setTitle:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = DBSExternalDisplayAdvancedPreferencesController;
  [(DBSExternalDisplayAdvancedPreferencesController *)&v3 viewWillAppear:appear];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    displayModeSpecifiers = [(DBSExternalDisplayAdvancedPreferencesController *)self displayModeSpecifiers];
    [array addObjectsFromArray:displayModeSpecifiers];

    adaptiveSyncSpecifiers = [(DBSExternalDisplayAdvancedPreferencesController *)self adaptiveSyncSpecifiers];
    [array addObjectsFromArray:adaptiveSyncSpecifiers];

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v9 = *MEMORY[0x277D3FFB8];
    [emptyGroupSpecifier setObject:@"MATCH_CONTENT_GROUP" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v10 = DBS_LocalizedStringForConnectedDisplays(@"MATCH_CONTENT_FOOTER");
    [emptyGroupSpecifier setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v11 = MEMORY[0x277D3FAD8];
    v12 = DBS_LocalizedStringForConnectedDisplays(@"MATCH_CONTENT");
    v13 = [v11 preferenceSpecifierNamed:v12 target:self set:sel_setMatchContentEnabled_specifier_ get:sel_matchContentEnabled_ detail:0 cell:6 edit:0];

    [v13 setObject:@"MATCH_CONTENT" forKeyedSubscript:v9];
    [array addObject:v13];
    limitRefreshRateSpecifiers = [(DBSExternalDisplayAdvancedPreferencesController *)self limitRefreshRateSpecifiers];
    [array addObjectsFromArray:limitRefreshRateSpecifiers];

    v15 = *(&self->super.super.super.super.super.isa + v3);
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
  v8 = [(DBSExternalDisplayAdvancedPreferencesController *)self specifierAtIndexPath:pathCopy];
  v9 = [(DBSExternalDisplayAdvancedPreferencesController *)self specifierForID:@"COLOR_SETTING"];
  v10 = [v8 objectForKeyedSubscript:@"HDRMode"];
  currentHDRMode = [(DBSExternalDisplayAdvancedPreferencesController *)self currentHDRMode];
  v12 = [currentHDRMode isEqualToString:v10];

  if ((v12 & 1) == 0)
  {
    v13 = +[DBSExternalDisplayManager defaultManager];
    preferredHDRModes = [v13 preferredHDRModes];

    if ([preferredHDRModes containsObject:v10])
    {
      [(DBSExternalDisplayAdvancedPreferencesController *)self setCurrentHDRMode:v10];
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
      [(DBSExternalDisplayAdvancedPreferencesController *)self reloadSpecifier:v9];
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
      v27[2] = __85__DBSExternalDisplayAdvancedPreferencesController_tableView_didSelectRowAtIndexPath___block_invoke;
      v27[3] = &unk_278459618;
      objc_copyWeak(&v31, location);
      v28 = v10;
      v29 = v9;
      v30 = v8;
      v21 = [v19 actionWithTitle:v20 style:0 handler:v27];
      [v18 addAction:v21];

      v22 = MEMORY[0x277D750F8];
      v23 = DBS_LocalizedStringForConnectedDisplays(@"LIMIT_REFRESH_RATE_CANCEL");
      v24 = [v22 actionWithTitle:v23 style:1 handler:&__block_literal_global_8];
      [v18 addAction:v24];

      [(DBSExternalDisplayAdvancedPreferencesController *)self presentViewController:v18 animated:1 completion:0];
      objc_destroyWeak(&v31);
      objc_destroyWeak(location);
    }
  }

  v26.receiver = self;
  v26.super_class = DBSExternalDisplayAdvancedPreferencesController;
  [(DBSExternalDisplayAdvancedPreferencesController *)&v26 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

void __85__DBSExternalDisplayAdvancedPreferencesController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
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
  v8 = [(DBSExternalDisplayAdvancedPreferencesController *)self specifierAtIndexPath:pathCopy];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v10 = [v9 isEqualToString:@"MATCH_CONTENT"];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DBSExternalDisplayAdvancedPreferencesController;
    v11 = [(DBSExternalDisplayAdvancedPreferencesController *)&v13 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
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
    block[2] = __77__DBSExternalDisplayAdvancedPreferencesController_connectedDisplayDidUpdate___block_invoke;
    block[3] = &unk_278459558;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)displayModeSpecifiers
{
  v52[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v37 = *MEMORY[0x277CDA160];
  v51[0] = *MEMORY[0x277CDA160];
  v4 = DBS_LocalizedStringForConnectedDisplays(@"DOLBY_VISION");
  v52[0] = v4;
  v34 = *MEMORY[0x277CDA168];
  v51[1] = *MEMORY[0x277CDA168];
  v5 = DBS_LocalizedStringForConnectedDisplays(@"HIGH_DYNAMIC_RANGE");
  v52[1] = v5;
  v40 = *MEMORY[0x277CDA178];
  v51[2] = *MEMORY[0x277CDA178];
  v6 = DBS_LocalizedStringForConnectedDisplays(@"STANDARD_DYNAMIC_RANGE");
  v52[2] = v6;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

  v7 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModes = [v7 supportedHDRModes];

  v9 = +[DBSExternalDisplayManager defaultManager];
  preferredHDRModes = [v9 preferredHDRModes];

  v10 = [supportedHDRModes count];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v42 = *MEMORY[0x277D3FFB8];
  [emptyGroupSpecifier setObject:@"COLOR_SETTING" forKeyedSubscript:?];
  [emptyGroupSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  displayModeSpecifiersFooterText = [(DBSExternalDisplayAdvancedPreferencesController *)self displayModeSpecifiersFooterText];
  [emptyGroupSpecifier setObject:displayModeSpecifiersFooterText forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v43 = v10;
  if (v10 <= 1)
  {
    v13 = @"COLOR_SETTING";
  }

  else
  {
    v13 = @"PREFERRED_COLOR_SETTING";
  }

  v14 = DBS_LocalizedStringForConnectedDisplays(v13);
  [emptyGroupSpecifier setName:v14];

  v45 = array;
  v33 = emptyGroupSpecifier;
  [array addObject:emptyGroupSpecifier];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = supportedHDRModes;
  v15 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v15)
  {
    v44 = 0;
    v19 = v36;
    goto LABEL_28;
  }

  v16 = v15;
  v44 = 0;
  v17 = *v47;
  v18 = *MEMORY[0x277D3FE58];
  v39 = *MEMORY[0x277D3FF38];
  v38 = *MEMORY[0x277D3FE18];
  v19 = v36;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v47 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v46 + 1) + 8 * i);
      v22 = MEMORY[0x277D3FAD8];
      v23 = [v19 objectForKeyedSubscript:v21];
      v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:3 edit:0];

      [v24 setObject:v21 forKeyedSubscript:v42];
      [v24 setObject:v21 forKeyedSubscript:@"HDRMode"];
      [v24 setObject:objc_opt_class() forKeyedSubscript:v18];
      if (v43 < 2)
      {
        [v24 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v39];
        goto LABEL_22;
      }

      if ([v21 isEqualToString:v40])
      {
        v25 = @"MOST_COMPATIBLE";
      }

      else
      {
        if (([obj containsObject:v37] & 1) == 0 && objc_msgSend(v21, "isEqualToString:", v34))
        {
LABEL_20:
          v25 = @"RECOMMENDED";
          goto LABEL_21;
        }

        v26 = [preferredHDRModes containsObject:v37];
        v27 = [v21 isEqualToString:v37];
        if (v26)
        {
          v19 = v36;
          if (v27)
          {
            goto LABEL_20;
          }

          v25 = @"GOOD";
        }

        else
        {
          v19 = v36;
          if (!v27)
          {
            goto LABEL_20;
          }

          v25 = @"REFRESH_RATE_LIMITED";
        }
      }

LABEL_21:
      v28 = DBS_LocalizedStringForConnectedDisplays(v25);
      [v24 setObject:v28 forKeyedSubscript:v38];

LABEL_22:
      currentHDRMode = [(DBSExternalDisplayAdvancedPreferencesController *)self currentHDRMode];
      v30 = [currentHDRMode isEqualToString:v21];

      if (v30)
      {
        v31 = v24;

        v44 = v31;
      }

      [v45 addObject:v24];
    }

    v16 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v16);
LABEL_28:

  [v33 setProperty:v44 forKey:*MEMORY[0x277D40090]];

  return v45;
}

- (id)displayModeSpecifiersFooterText
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModes = [v2 supportedHDRModes];

  if ([supportedHDRModes count] < 2)
  {
    v4 = @"SDR_COLOR_SETTING_FOOTER";
  }

  else if ([supportedHDRModes containsObject:*MEMORY[0x277CDA160]])
  {
    v4 = @"DOLBY_COLOR_SETTING_FOOTER";
  }

  else
  {
    v4 = @"HDR_COLOR_SETTING_FOOTER";
  }

  v5 = DBS_LocalizedStringForConnectedDisplays(v4);
  v6 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModesWithHighRefreshRate = [v6 supportedHDRModesWithHighRefreshRate];

  if (![supportedHDRModesWithHighRefreshRate count])
  {
    goto LABEL_23;
  }

  if ([supportedHDRModesWithHighRefreshRate count] == 1)
  {
    if ([supportedHDRModesWithHighRefreshRate containsObject:*MEMORY[0x277CDA178]])
    {
      v8 = @"COLOR_SETTING_FOOTER_REQUIRE_SDR";
    }

    else if ([supportedHDRModesWithHighRefreshRate containsObject:*MEMORY[0x277CDA168]])
    {
      v8 = @"COLOR_SETTING_FOOTER_REQUIRE_HDR";
    }

    else
    {
      if (([supportedHDRModesWithHighRefreshRate containsObject:*MEMORY[0x277CDA160]] & 1) == 0)
      {
        goto LABEL_23;
      }

      v8 = @"COLOR_SETTING_FOOTER_REQUIRE_DOLBY_VISION";
    }
  }

  else
  {
    if ([supportedHDRModesWithHighRefreshRate count] != 2)
    {
      goto LABEL_23;
    }

    if ([supportedHDRModesWithHighRefreshRate containsObject:*MEMORY[0x277CDA178]])
    {
      if ([supportedHDRModesWithHighRefreshRate containsObject:*MEMORY[0x277CDA168]])
      {
        if ([supportedHDRModesWithHighRefreshRate containsObject:*MEMORY[0x277CDA160]])
        {
          goto LABEL_23;
        }

        v8 = @"COLOR_SETTING_FOOTER_NOT_SUPPORT_DOLBY_VISION";
      }

      else
      {
        v8 = @"COLOR_SETTING_FOOTER_NOT_SUPPORT_HDR";
      }
    }

    else
    {
      v8 = @"COLOR_SETTING_FOOTER_NOT_SUPPORT_SDR";
    }
  }

  v9 = DBS_LocalizedStringForConnectedDisplays_J8xx(v8);
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v5, v9];

    goto LABEL_24;
  }

LABEL_23:
  v11 = v5;
LABEL_24:

  return v11;
}

- (id)limitRefreshRateSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModesWithHighRefreshRate = [v4 supportedHDRModesWithHighRefreshRate];

  if ([supportedHDRModesWithHighRefreshRate count])
  {
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LIMIT_REFRESH_RATE_GROUP"];
    v7 = DBS_LocalizedStringForConnectedDisplays_J8xx(@"LIMIT_REFRESH_RATE_FOOTER");
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [array addObject:v6];
    v8 = MEMORY[0x277D3FAD8];
    v9 = DBS_LocalizedStringForConnectedDisplays_J8xx(@"LIMIT_REFRESH_RATE");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setLimitRefreshRateEnabled_specifier_ get:sel_limitRefreshRateEnabled_ detail:0 cell:6 edit:0];

    [v10 setObject:@"LIMIT_REFRESH_RATE" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [array addObject:v10];
  }

  return array;
}

- (id)adaptiveSyncSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModesWithVRR = [v4 supportedHDRModesWithVRR];

  if ([supportedHDRModesWithVRR count])
  {
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADAPTIVE_SYNC_GROUP"];
    adaptiveSyncSpecifiersFooterText = [(DBSExternalDisplayAdvancedPreferencesController *)self adaptiveSyncSpecifiersFooterText];
    [v6 setObject:adaptiveSyncSpecifiersFooterText forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [array addObject:v6];
    v8 = MEMORY[0x277D3FAD8];
    v9 = DBS_LocalizedStringForConnectedDisplays_J8xx(@"ADAPTIVE_SYNC");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setAdaptiveSyncEnabled_specifier_ get:sel_adaptiveSyncEnabled_ detail:0 cell:6 edit:0];

    [v10 setObject:@"ADAPTIVE_SYNC" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [array addObject:v10];
  }

  return array;
}

- (id)adaptiveSyncSpecifiersFooterText
{
  v2 = DBS_LocalizedStringForConnectedDisplays_J8xx(@"ADAPTIVE_SYNC_FOOTER");
  v3 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModesWithVRR = [v3 supportedHDRModesWithVRR];

  if (![supportedHDRModesWithVRR count])
  {
    goto LABEL_18;
  }

  if ([supportedHDRModesWithVRR count] == 1)
  {
    if ([supportedHDRModesWithVRR containsObject:*MEMORY[0x277CDA178]])
    {
      v5 = @"ADAPTIVE_SYNC_FOOTER_REQUIRE_SDR";
    }

    else if ([supportedHDRModesWithVRR containsObject:*MEMORY[0x277CDA168]])
    {
      v5 = @"ADAPTIVE_SYNC_FOOTER_REQUIRE_HDR";
    }

    else
    {
      if (([supportedHDRModesWithVRR containsObject:*MEMORY[0x277CDA160]] & 1) == 0)
      {
        goto LABEL_18;
      }

      v5 = @"ADAPTIVE_SYNC_FOOTER_REQUIRE_DOLBY_VISION";
    }
  }

  else
  {
    if ([supportedHDRModesWithVRR count] != 2)
    {
      goto LABEL_18;
    }

    if ([supportedHDRModesWithVRR containsObject:*MEMORY[0x277CDA178]])
    {
      if ([supportedHDRModesWithVRR containsObject:*MEMORY[0x277CDA168]])
      {
        if ([supportedHDRModesWithVRR containsObject:*MEMORY[0x277CDA160]])
        {
          goto LABEL_18;
        }

        v5 = @"ADAPTIVE_SYNC_FOOTER_NOT_SUPPORT_DOLBY_VISION";
      }

      else
      {
        v5 = @"ADAPTIVE_SYNC_FOOTER_NOT_SUPPORT_HDR";
      }
    }

    else
    {
      v5 = @"ADAPTIVE_SYNC_FOOTER_NOT_SUPPORT_SDR";
    }
  }

  v6 = DBS_LocalizedStringForConnectedDisplays_J8xx(v5);
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v2, v6];

    goto LABEL_19;
  }

LABEL_18:
  v8 = v2;
LABEL_19:

  return v8;
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
  v5 = +[DBSExternalDisplayManager defaultManager];
  [v5 setCurrentHDRMode:modeCopy];

  [(DBSExternalDisplayAdvancedPreferencesController *)self _updateAdaptiveSyncIfNecessary];
}

- (id)limitRefreshRateEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "limitRefreshRate")}];

  return v5;
}

- (void)setLimitRefreshRateEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[DBSExternalDisplayManager defaultManager];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setLimitRefreshRate:bOOLValue];

  [(DBSExternalDisplayAdvancedPreferencesController *)self _updateAdaptiveSyncIfNecessary];
}

- (id)adaptiveSyncEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "adaptiveSyncEnabled")}];

  return v5;
}

- (void)setAdaptiveSyncEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[DBSExternalDisplayManager defaultManager];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setAdaptiveSyncEnabled:bOOLValue];
  [(DBSExternalDisplayAdvancedPreferencesController *)self _updateCurrentHDRModeIfNecessary];

  [(DBSExternalDisplayAdvancedPreferencesController *)self _updateLimitRefreshRateIfNecessary];
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

- (void)_updateCurrentHDRModeIfNecessary
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModesWithVRR = [v3 supportedHDRModesWithVRR];
  v5 = [supportedHDRModesWithVRR count];

  v6 = +[DBSExternalDisplayManager defaultManager];
  v7 = v6;
  if (v5)
  {
    supportedHDRModesWithVRR2 = [v6 supportedHDRModesWithVRR];
  }

  else
  {
    supportedHDRModesWithHighRefreshRate = [v6 supportedHDRModesWithHighRefreshRate];
    v10 = [supportedHDRModesWithHighRefreshRate count];

    v11 = +[DBSExternalDisplayManager defaultManager];
    v7 = v11;
    if (v10)
    {
      [v11 supportedHDRModesWithHighRefreshRate];
    }

    else
    {
      [v11 supportedHDRModes];
    }
    supportedHDRModesWithVRR2 = ;
  }

  v19 = supportedHDRModesWithVRR2;

  currentHDRMode = [(DBSExternalDisplayAdvancedPreferencesController *)self currentHDRMode];
  v13 = [v19 containsObject:currentHDRMode];

  if ((v13 & 1) == 0)
  {
    v14 = *MEMORY[0x277CDA160];
    if ([v19 containsObject:*MEMORY[0x277CDA160]] & 1) != 0 || (v14 = *MEMORY[0x277CDA168], (objc_msgSend(v19, "containsObject:", *MEMORY[0x277CDA168])) || (v14 = *MEMORY[0x277CDA178], objc_msgSend(v19, "containsObject:", *MEMORY[0x277CDA178])))
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = +[DBSExternalDisplayManager defaultManager];
    [v16 setCurrentHDRMode:v15];

    v17 = [(DBSExternalDisplayAdvancedPreferencesController *)self specifierForID:@"COLOR_SETTING"];
    v18 = [(DBSExternalDisplayAdvancedPreferencesController *)self specifierForID:v15];
    [v17 setProperty:v18 forKey:*MEMORY[0x277D40090]];
    [(DBSExternalDisplayAdvancedPreferencesController *)self reloadSpecifier:v17 animated:1];
  }
}

- (void)_updateLimitRefreshRateIfNecessary
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  adaptiveSyncEnabled = [v3 adaptiveSyncEnabled];

  if (adaptiveSyncEnabled)
  {
    v5 = +[DBSExternalDisplayManager defaultManager];
    [v5 setLimitRefreshRate:0];

    v6 = [(DBSExternalDisplayAdvancedPreferencesController *)self specifierForID:@"LIMIT_REFRESH_RATE_GROUP"];
    [(DBSExternalDisplayAdvancedPreferencesController *)self reloadSpecifier:v6 animated:1];
  }
}

- (void)_updateAdaptiveSyncIfNecessary
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  limitRefreshRate = [v3 limitRefreshRate];

  if (limitRefreshRate)
  {
LABEL_4:
    v8 = +[DBSExternalDisplayManager defaultManager];
    [v8 setAdaptiveSyncEnabled:0];

    supportedHDRModesWithVRR = [(DBSExternalDisplayAdvancedPreferencesController *)self specifierForID:@"ADAPTIVE_SYNC_GROUP"];
    [DBSExternalDisplayAdvancedPreferencesController reloadSpecifier:"reloadSpecifier:animated:" animated:?];
    goto LABEL_5;
  }

  v5 = +[DBSExternalDisplayManager defaultManager];
  supportedHDRModesWithVRR = [v5 supportedHDRModesWithVRR];

  if ([supportedHDRModesWithVRR count])
  {
    currentHDRMode = [(DBSExternalDisplayAdvancedPreferencesController *)self currentHDRMode];
    v7 = [supportedHDRModesWithVRR containsObject:currentHDRMode];

    if (v7)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_5:
}

@end