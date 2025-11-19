@interface DBSDeviceAppearanceScheduleController
- (DBSDeviceAppearanceScheduleController)initWithNibName:(id)a3 bundle:(id)a4;
- (UISUserInterfaceStyleMode)_styleMode;
- (id)_darkAppearanceTimeString;
- (id)_lightAppearanceTimeString;
- (id)datePickerForSpecifier:(id)a3;
- (id)specifiers;
- (void)datePickerChanged:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)showScheduleSpecifiers:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation DBSDeviceAppearanceScheduleController

- (DBSDeviceAppearanceScheduleController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = DBSDeviceAppearanceScheduleController;
  v4 = [(DBSDeviceAppearanceScheduleController *)&v8 initWithNibName:a3 bundle:a4];
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

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSDeviceAppearanceScheduleController;
  [(DBSDeviceAppearanceScheduleController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/APPEARANCE_OPTIONS"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v8 = [v7 bundleURL];
    v9 = [v5 initWithKey:@"DISPLAY_AND_BRIGHTNESS" defaultValue:0 table:@"Display" locale:v6 bundleURL:v8];

    v10 = objc_alloc(MEMORY[0x277CCAEB8]);
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v13 = [v12 bundleURL];
    v14 = [v10 initWithKey:@"APPEARANCE_SCHEDULE" defaultValue:0 table:@"DeviceAppearanceSchedule" locale:v11 bundleURL:v13];

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSDeviceAppearanceScheduleController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (void)setSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = DBSDeviceAppearanceScheduleController;
  v4 = a3;
  [(DBSDeviceAppearanceScheduleController *)&v6 setSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{DBSStyleModeKey[0], v6.receiver, v6.super_class}];

  [(DBSDeviceAppearanceScheduleController *)self set_styleMode:v5];
}

- (void)willResignActive
{
  v2 = [(DBSDeviceAppearanceScheduleController *)self view];
  [v2 endEditing:1];
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
    v12 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    v13 = [v12 suggestedAutomaticModeValue];

    v46 = v11;
    v47 = v10;
    if (v13 == 100)
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14;
    v16 = [(DBSDeviceAppearanceScheduleController *)self _radioGroup];
    v45 = v15;
    [v16 setProperty:v15 forKey:*MEMORY[0x277D40090]];

    v17 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    -[DBSDeviceAppearanceScheduleController set_showingScheduleSpecifiers:](self, "set_showingScheduleSpecifiers:", [v17 modeValue] == 102);

    v18 = MEMORY[0x277D3FAD8];
    v19 = DBS_LocalizedStringForDeviceAppearance(@"LIGHT");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [(DBSDeviceAppearanceScheduleController *)self set_lightAppearanceTimePickerSpecifier:v20];

    v21 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v22 = *MEMORY[0x277D3FEE8];
    [v21 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEE8]];

    v23 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    [v23 setIdentifier:@"STARTS"];

    v24 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v25 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v26 = [v25 numberWithDouble:?];
    v27 = *MEMORY[0x277D40140];
    [v24 setProperty:v26 forKey:*MEMORY[0x277D40140]];

    v28 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v29 = objc_opt_class();
    v30 = *MEMORY[0x277D3FE58];
    [v28 setProperty:v29 forKey:*MEMORY[0x277D3FE58]];

    v31 = MEMORY[0x277D3FAD8];
    v32 = DBS_LocalizedStringForDeviceAppearance(@"DARK");
    v33 = [v31 preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [(DBSDeviceAppearanceScheduleController *)self set_darkAppearanceTimePickerSpecifier:v33];

    v34 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    [v34 setProperty:MEMORY[0x277CBEC38] forKey:v22];

    v35 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    [v35 setIdentifier:@"ENDS"];

    v36 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    v37 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v38 = [v37 numberWithDouble:?];
    [v36 setProperty:v38 forKey:v27];

    v39 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    [v39 setProperty:objc_opt_class() forKey:v30];

    if ([(DBSDeviceAppearanceScheduleController *)self _showingScheduleSpecifiers])
    {
      v40 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
      v49[0] = v40;
      v41 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
      v49[1] = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
      [v5 addObjectsFromArray:v42];
    }

    v43 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBSDeviceAppearanceScheduleController *)self specifierAtIndexPath:v6];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:@"SCHEDULE"];

  if (v10)
  {
    v11 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    [v11 setModeValue:102];

    v12 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    v13 = v12;
    if (v12)
    {
      [v12 customSchedule];
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
      v16 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
      v19 = *(MEMORY[0x277D77850] + 16);
      v22 = *MEMORY[0x277D77850];
      v23 = v19;
      [v16 setCustomSchedule:&v22];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = [v8 identifier];
    v15 = [v14 isEqualToString:@"FROM_SUNSET_TO_SUNRISE"];

    if (v15)
    {
      v16 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
      [v16 setModeValue:100];
LABEL_9:
    }
  }

  v20 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  -[DBSDeviceAppearanceScheduleController showScheduleSpecifiers:animated:](self, "showScheduleSpecifiers:animated:", [v20 modeValue] == 102, 1);

  v21[0].receiver = self;
  v21[0].super_class = DBSDeviceAppearanceScheduleController;
  [(objc_super *)v21 tableView:v7 didSelectRowAtIndexPath:v6];
}

- (void)showScheduleSpecifiers:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10[2] = *MEMORY[0x277D85DE8];
  if ([(DBSDeviceAppearanceScheduleController *)self _showingScheduleSpecifiers]!= a3)
  {
    [(DBSDeviceAppearanceScheduleController *)self set_showingScheduleSpecifiers:v5];
    v7 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];
    v10[0] = v7;
    v8 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];
    v10[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

    if (v5)
    {
      [(DBSDeviceAppearanceScheduleController *)self insertContiguousSpecifiers:v9 atIndex:[(DBSDeviceAppearanceScheduleController *)self indexOfSpecifierID:@"TIME_GROUP"]+ 1 animated:v4];
    }

    else
    {
      [(DBSDeviceAppearanceScheduleController *)self removeContiguousSpecifiers:v9 animated:v4];
    }
  }
}

- (id)_lightAppearanceTimeString
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v4 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v5 = v4;
  if (v4)
  {
    [v4 customSchedule];
    v6 = v19;
  }

  else
  {
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  [v3 setHour:v6];

  v7 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v8 = v7;
  if (v7)
  {
    [v7 customSchedule];
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
  v13 = [(DBSDeviceAppearanceScheduleController *)self _timeFormatter];
  v14 = [v13 stringFromDate:v12];

  return v14;
}

- (id)_darkAppearanceTimeString
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v4 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v5 = v4;
  if (v4)
  {
    [v4 customSchedule];
    v6 = v18;
  }

  else
  {
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  [v3 setHour:v6];

  v7 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v8 = v7;
  if (v7)
  {
    [v7 customSchedule];
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
  v13 = [(DBSDeviceAppearanceScheduleController *)self _timeFormatter];
  v14 = [v13 stringFromDate:v12];

  return v14;
}

- (void)datePickerChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 calendar];
  v6 = [v4 date];
  v7 = [v5 components:96 fromDate:v6];

  v8 = [v7 hour];
  v9 = [v7 minute];
  v20 = 0u;
  v21 = 0u;
  v10 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v11 = v10;
  if (v10)
  {
    [v10 customSchedule];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v12 = v8;

  v13 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePicker];

  if (v13 == v4)
  {
    v15 = &v21 + 8;
    *&v21 = v12;
    goto LABEL_8;
  }

  v14 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePicker];

  if (v14 == v4)
  {
    v15 = &v20 + 8;
    *&v20 = v12;
LABEL_8:
    *v15 = v9;
  }

  v18 = v20;
  v19 = v21;
  v16 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
  v17[0] = v18;
  v17[1] = v19;
  [v16 setCustomSchedule:v17];
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D753E8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setDatePickerMode:0];
  [v6 setPreferredDatePickerStyle:3];
  v7 = [(DBSDeviceAppearanceScheduleController *)self _darkAppearanceTimePickerSpecifier];

  if (v7 == v4)
  {
    v13 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    v14 = v13;
    if (v13)
    {
      [v13 customSchedule];
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
    v8 = [(DBSDeviceAppearanceScheduleController *)self _lightAppearanceTimePickerSpecifier];

    if (v8 != v4)
    {
      [DBSDeviceAppearanceScheduleController datePickerForSpecifier:];
    }

    v9 = [(DBSDeviceAppearanceScheduleController *)self _styleMode];
    v10 = v9;
    if (v9)
    {
      [v9 customSchedule];
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
  v16 = [v6 calendar];
  v17 = [v16 dateFromComponents:v15];
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