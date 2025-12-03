@interface DBSDeviceAppearanceScheduleController
- (DBSDeviceAppearanceScheduleController)initWithNibName:(id)name bundle:(id)bundle;
- (UISUserInterfaceStyleMode)_styleMode;
- (id)_darkAppearanceTimeString;
- (id)_lightAppearanceTimeString;
- (id)datePickerForSpecifier:(id)specifier;
- (id)specifiers;
- (void)datePickerChanged:(id)changed;
- (void)setSpecifier:(id)specifier;
- (void)showScheduleSpecifiers:(BOOL)specifiers animated:(BOOL)animated;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)willResignActive;
@end

@implementation DBSDeviceAppearanceScheduleController

- (DBSDeviceAppearanceScheduleController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = DBSDeviceAppearanceScheduleController;
  v4 = [(DBSDeviceAppearanceScheduleController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    timeFormatter = v4->__timeFormatter;
    v4->__timeFormatter = v5;

    [(NSDateFormatter *)v4->__timeFormatter setTimeStyle:1];
    [(NSDateFormatter *)v4->__timeFormatter setDateStyle:0];
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSDeviceAppearanceScheduleController;
  [(DBSDeviceAppearanceScheduleController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/APPEARANCE_OPTIONS"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    bundleURL = [v7 bundleURL];
    v9 = [v5 initWithKey:@"DISPLAY_AND_BRIGHTNESS" defaultValue:0 table:@"Display" locale:currentLocale bundleURL:bundleURL];

    v10 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    bundleURL2 = [v12 bundleURL];
    v14 = [v10 initWithKey:@"APPEARANCE_SCHEDULE" defaultValue:0 table:@"DeviceAppearanceSchedule" locale:currentLocale2 bundleURL:bundleURL2];

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSDeviceAppearanceScheduleController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (void)setSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = DBSDeviceAppearanceScheduleController;
  specifierCopy = specifier;
  [(DBSDeviceAppearanceScheduleController *)&v6 setSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{DBSStyleModeKey[0], v6.receiver, v6.super_class}];

  [(DBSDeviceAppearanceScheduleController *)self set_styleMode:v5];
}

- (void)willResignActive
{
  view = [(DBSDeviceAppearanceScheduleController *)self view];
  [view endEditing:1];
}

- (id)specifiers
{
  v49[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(DBSDeviceAppearanceScheduleController *)self loadSpecifiersFromPlistName:@"DeviceAppearanceSchedule" target:self];
    v6 = [v5 specifierForID:@"APPEARANCE_SCHEDULE_FOOTER"];
    v7 = DBS_LocalizedStringForDeviceAppearance(@"APPEARANCE_SCHEDULE_FOOTER");
    v48 = v6;
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v8 = [v5 specifierForID:@"SCHEDULE_GROUP"];
    [(DBSDeviceAppearanceScheduleController *)self set_radioGroup:v8];

    v9 = [v5 specifierForID:@"TIME_GROUP"];
    [(DBSDeviceAppearanceScheduleController *)self set_timeGroup:v9];

    v10 = [v5 specifierForID:@"FROM_SUNSET_TO_SUNRISE"];
    v11 = [v5 specifierForID:@"SCHEDULE"];
    _styleMode = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    suggestedAutomaticModeValue = [_styleMode suggestedAutomaticModeValue];

    v46 = v11;
    v47 = v10;
    if (suggestedAutomaticModeValue == 100)
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14;
    _radioGroup = [(DBSDeviceAppearanceScheduleController *)self _radioGroup];
    v45 = v15;
    [_radioGroup setProperty:v15 forKey:*MEMORY[0x277D40090]];

    _styleMode2 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    -[DBSDeviceAppearanceScheduleController set_showingScheduleSpecifiers:](self, "set_showingScheduleSpecifiers:", [_styleMode2 modeValue] == 102);

    v18 = MEMORY[0x277D3FAD8];
    v19 = DBS_LocalizedStringForDeviceAppearance(@"LIGHT");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [(DBSDeviceAppearanceScheduleController *)self set_lightAppearanceTimePickerSpecifier:v20];

    _lightAppearanceTimePickerSpecifier = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v22 = *MEMORY[0x277D3FEE8];
    [_lightAppearanceTimePickerSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEE8]];

    _lightAppearanceTimePickerSpecifier2 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    [_lightAppearanceTimePickerSpecifier2 setIdentifier:@"STARTS"];

    _lightAppearanceTimePickerSpecifier3 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v25 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v26 = [v25 numberWithDouble:?];
    v27 = *MEMORY[0x277D40140];
    [_lightAppearanceTimePickerSpecifier3 setProperty:v26 forKey:*MEMORY[0x277D40140]];

    _lightAppearanceTimePickerSpecifier4 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v29 = objc_opt_class();
    v30 = *MEMORY[0x277D3FE58];
    [_lightAppearanceTimePickerSpecifier4 setProperty:v29 forKey:*MEMORY[0x277D3FE58]];

    v31 = MEMORY[0x277D3FAD8];
    v32 = DBS_LocalizedStringForDeviceAppearance(@"DARK");
    v33 = [v31 preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [(DBSDeviceAppearanceScheduleController *)self set_darkAppearanceTimePickerSpecifier:v33];

    _darkAppearanceTimePickerSpecifier = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    [_darkAppearanceTimePickerSpecifier setProperty:MEMORY[0x277CBEC38] forKey:v22];

    _darkAppearanceTimePickerSpecifier2 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    [_darkAppearanceTimePickerSpecifier2 setIdentifier:@"ENDS"];

    _darkAppearanceTimePickerSpecifier3 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    v37 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v38 = [v37 numberWithDouble:?];
    [_darkAppearanceTimePickerSpecifier3 setProperty:v38 forKey:v27];

    _darkAppearanceTimePickerSpecifier4 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    [_darkAppearanceTimePickerSpecifier4 setProperty:objc_opt_class() forKey:v30];

    if ([(DBSDeviceAppearanceScheduleController *)self _showingScheduleSpecifiers])
    {
      _lightAppearanceTimePickerSpecifier5 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
      v49[0] = _lightAppearanceTimePickerSpecifier5;
      _darkAppearanceTimePickerSpecifier5 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
      v49[1] = _darkAppearanceTimePickerSpecifier5;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
      [v5 addObjectsFromArray:v42];
    }

    v43 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(DBSDeviceAppearanceScheduleController *)self specifierAtIndexPath:pathCopy];
  identifier = [v8 identifier];
  v10 = [identifier isEqualToString:@"SCHEDULE"];

  if (v10)
  {
    _styleMode = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    [_styleMode setModeValue:102];

    _styleMode2 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    v13 = _styleMode2;
    if (_styleMode2)
    {
      [_styleMode2 customSchedule];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v17 = *(MEMORY[0x277D77858] + 16);
    v21[1] = *MEMORY[0x277D77858];
    v21[2] = v17;
    v18 = UISUserInterfaceStyleModeSchedulesEqual();

    if (v18)
    {
      _styleMode3 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
      v19 = *(MEMORY[0x277D77850] + 16);
      v22 = *MEMORY[0x277D77850];
      v23 = v19;
      [_styleMode3 setCustomSchedule:&v22];
      goto LABEL_9;
    }
  }

  else
  {
    identifier2 = [v8 identifier];
    v15 = [identifier2 isEqualToString:@"FROM_SUNSET_TO_SUNRISE"];

    if (v15)
    {
      _styleMode3 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
      [_styleMode3 setModeValue:100];
LABEL_9:
    }
  }

  _styleMode4 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  -[DBSDeviceAppearanceScheduleController showScheduleSpecifiers:animated:](self, "showScheduleSpecifiers:animated:", [_styleMode4 modeValue] == 102, 1);

  v21[0].receiver = self;
  v21[0].super_class = DBSDeviceAppearanceScheduleController;
  [(objc_super *)v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)showScheduleSpecifiers:(BOOL)specifiers animated:(BOOL)animated
{
  animatedCopy = animated;
  specifiersCopy = specifiers;
  v10[2] = *MEMORY[0x277D85DE8];
  if ([(DBSDeviceAppearanceScheduleController *)self _showingScheduleSpecifiers]!= specifiers)
  {
    [(DBSDeviceAppearanceScheduleController *)self set_showingScheduleSpecifiers:specifiersCopy];
    _lightAppearanceTimePickerSpecifier = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v10[0] = _lightAppearanceTimePickerSpecifier;
    _darkAppearanceTimePickerSpecifier = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    v10[1] = _darkAppearanceTimePickerSpecifier;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

    if (specifiersCopy)
    {
      [(DBSDeviceAppearanceScheduleController *)self insertContiguousSpecifiers:v9 atIndex:[(DBSDeviceAppearanceScheduleController *)self indexOfSpecifierID:@"TIME_GROUP"]+ 1 animated:animatedCopy];
    }

    else
    {
      [(DBSDeviceAppearanceScheduleController *)self removeContiguousSpecifiers:v9 animated:animatedCopy];
    }
  }
}

- (id)_lightAppearanceTimeString
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  _styleMode = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v5 = _styleMode;
  if (_styleMode)
  {
    [_styleMode customSchedule];
    v6 = v19;
  }

  else
  {
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  [v3 setHour:v6];

  _styleMode2 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v8 = _styleMode2;
  if (_styleMode2)
  {
    [_styleMode2 customSchedule];
    v9 = *(&v17 + 1);
  }

  else
  {
    v9 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  [v3 setMinute:{v9, v16, v17, v18, v19}];

  v10 = objc_alloc(MEMORY[0x277CBEA80]);
  v11 = [v10 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v12 = [v11 dateFromComponents:v3];
  _timeFormatter = [(DBSDeviceAppearanceScheduleController *)self _timeFormatter];
  v14 = [_timeFormatter stringFromDate:v12];

  return v14;
}

- (id)_darkAppearanceTimeString
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  _styleMode = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v5 = _styleMode;
  if (_styleMode)
  {
    [_styleMode customSchedule];
    v6 = v18;
  }

  else
  {
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  [v3 setHour:v6];

  _styleMode2 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v8 = _styleMode2;
  if (_styleMode2)
  {
    [_styleMode2 customSchedule];
    v9 = *(&v16 + 1);
  }

  else
  {
    v9 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  [v3 setMinute:{v9, v16, v17, v18, v19}];

  v10 = objc_alloc(MEMORY[0x277CBEA80]);
  v11 = [v10 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v12 = [v11 dateFromComponents:v3];
  _timeFormatter = [(DBSDeviceAppearanceScheduleController *)self _timeFormatter];
  v14 = [_timeFormatter stringFromDate:v12];

  return v14;
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  calendar = [changedCopy calendar];
  date = [changedCopy date];
  v7 = [calendar components:96 fromDate:date];

  hour = [v7 hour];
  minute = [v7 minute];
  v20 = 0u;
  v21 = 0u;
  _styleMode = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v11 = _styleMode;
  if (_styleMode)
  {
    [_styleMode customSchedule];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v12 = hour;

  _lightAppearanceTimePicker = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePicker];

  if (_lightAppearanceTimePicker == changedCopy)
  {
    v15 = &v21 + 8;
    *&v21 = v12;
    goto LABEL_8;
  }

  _darkAppearanceTimePicker = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePicker];

  if (_darkAppearanceTimePicker == changedCopy)
  {
    v15 = &v20 + 8;
    *&v20 = v12;
LABEL_8:
    *v15 = minute;
  }

  v18 = v20;
  v19 = v21;
  _styleMode2 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v17[0] = v18;
  v17[1] = v19;
  [_styleMode2 setCustomSchedule:v17];
}

- (id)datePickerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_alloc(MEMORY[0x277D753E8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setDatePickerMode:0];
  [v6 setPreferredDatePickerStyle:3];
  _darkAppearanceTimePickerSpecifier = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];

  if (_darkAppearanceTimePickerSpecifier == specifierCopy)
  {
    _styleMode = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    v14 = _styleMode;
    if (_styleMode)
    {
      [_styleMode customSchedule];
      v11 = v22;
      v12 = v21;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    [(DBSDeviceAppearanceScheduleController *)self set_darkAppearanceTimePicker:v6];
  }

  else
  {
    _lightAppearanceTimePickerSpecifier = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];

    if (_lightAppearanceTimePickerSpecifier != specifierCopy)
    {
      [DBSDeviceAppearanceScheduleController datePickerForSpecifier:];
    }

    _styleMode2 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    v10 = _styleMode2;
    if (_styleMode2)
    {
      [_styleMode2 customSchedule];
      v11 = v20;
      v12 = v19;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    [(DBSDeviceAppearanceScheduleController *)self set_lightAppearanceTimePicker:v6];
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v15 setHour:v12];
  [v15 setMinute:v11];
  calendar = [v6 calendar];
  v17 = [calendar dateFromComponents:v15];
  [v6 setDate:v17];

  return v6;
}

- (UISUserInterfaceStyleMode)_styleMode
{
  WeakRetained = objc_loadWeakRetained(&self->__styleMode);

  return WeakRetained;
}

- (void)datePickerForSpecifier:.cold.1()
{
  v0 = DBSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22102E000, v0, OS_LOG_TYPE_DEFAULT, "Trying to get date picker for invalid specifier.", v1, 2u);
  }

  __assert_rtn("[DBSDeviceAppearanceScheduleController datePickerForSpecifier:]", "DBSDeviceAppearanceScheduleController.m", 237, "0");
}

@end