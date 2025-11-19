@interface DBSColorScheduleController
- (DBSColorScheduleController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)datePickerForSpecifier:(id)a3;
- (id)endTime;
- (id)specifiers;
- (id)startTime;
- (int)blueLightMode;
- (void)datePickerChanged:(id)a3;
- (void)dealloc;
- (void)handleBlueLightStatusChanged:(id *)a3;
- (void)showScheduleSpecifiers:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation DBSColorScheduleController

- (DBSColorScheduleController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = DBSColorScheduleController;
  v8 = [(DBSColorScheduleController *)&v21 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CFD3A8]);
    brightnessClient = v8->_brightnessClient;
    v8->_brightnessClient = v9;

    objc_initWeak(&location, v8);
    v11 = [(CBClient *)v8->_brightnessClient blueLightClient];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __53__DBSColorScheduleController_initWithNibName_bundle___block_invoke;
    v18 = &unk_278459440;
    objc_copyWeak(&v19, &location);
    [v11 setStatusNotificationBlock:&v15];

    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    timeFormatter = v8->_timeFormatter;
    v8->_timeFormatter = v12;

    [(NSDateFormatter *)v8->_timeFormatter setTimeStyle:1, v15, v16, v17, v18];
    [(NSDateFormatter *)v8->_timeFormatter setDateStyle:0];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __53__DBSColorScheduleController_initWithNibName_bundle___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBlueLightStatusChanged:a2];
}

- (void)dealloc
{
  v3 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v3 setStatusNotificationBlock:0];

  v4.receiver = self;
  v4.super_class = DBSColorScheduleController;
  [(DBSColorScheduleController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = DBSColorScheduleController;
  [(DBSColorScheduleController *)&v21 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/BLUE_LIGHT_REDUCTION/SCHEDULE"];
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
    v14 = [v10 initWithKey:@"BLUE_LIGHT_REDUCTION" defaultValue:0 table:@"Display" locale:v11 bundleURL:v13];

    v15 = objc_alloc(MEMORY[0x277CCAEB8]);
    v16 = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v18 = [v17 bundleURL];
    v19 = [v15 initWithKey:@"SCHEDULE_TITLE" defaultValue:0 table:@"ColorSchedule" locale:v16 bundleURL:v18];

    v22[0] = v9;
    v22[1] = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [(DBSColorScheduleController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v19 localizedNavigationComponents:v20 deepLink:v4];
  }
}

- (void)willResignActive
{
  v2 = [(DBSColorScheduleController *)self view];
  [v2 endEditing:1];
}

- (id)specifiers
{
  v47[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = [(DBSColorScheduleController *)self loadSpecifiersFromPlistName:@"ColorSchedule" target:self];
  v6 = [v5 specifierForID:@"SCHEDULE_GROUP"];
  radioGroup = self->_radioGroup;
  self->_radioGroup = v6;

  if (!self->_radioGroup)
  {
    [DBSColorScheduleController specifiers];
  }

  v8 = [v5 specifierForID:@"FROM_SUNSET_TO_SUNRISE"];
  p_sunsetToSunriseRadioSpecifier = &self->_sunsetToSunriseRadioSpecifier;
  sunsetToSunriseRadioSpecifier = self->_sunsetToSunriseRadioSpecifier;
  self->_sunsetToSunriseRadioSpecifier = v8;

  if (!self->_sunsetToSunriseRadioSpecifier)
  {
    [DBSColorScheduleController specifiers];
  }

  v11 = [v5 specifierForID:@"SCHEDULE"];
  scheduleRadioSpecifier = self->_scheduleRadioSpecifier;
  self->_scheduleRadioSpecifier = v11;

  if (!self->_scheduleRadioSpecifier)
  {
    [DBSColorScheduleController specifiers];
  }

  v13 = [v5 specifierForID:@"TIME_GROUP"];
  timeGroup = self->_timeGroup;
  self->_timeGroup = v13;

  if (!self->_timeGroup)
  {
    [DBSColorScheduleController specifiers];
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v15 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v15 getBlueLightStatus:v45];

  if ((BYTE2(v45[0]) & 1) == 0)
  {
    [v5 removeObject:*p_sunsetToSunriseRadioSpecifier];
    [v5 removeObject:self->_scheduleRadioSpecifier];
    [v5 removeObject:self->_radioGroup];
    v16 = self->_timeGroup;
    v17 = DBS_LocalizedStringForColorSchedule(@"BLUE_LIGHT_REDUCTION_SCHEDULE");
    [(PSSpecifier *)v16 setProperty:v17 forKey:*MEMORY[0x277D40170]];
  }

  v44 = v3;
  if (DWORD1(v45[0]) != 1)
  {
    if (DWORD1(v45[0]) != 2)
    {
      v18 = 0;
      goto LABEL_13;
    }

    p_sunsetToSunriseRadioSpecifier = &self->_scheduleRadioSpecifier;
  }

  v18 = *p_sunsetToSunriseRadioSpecifier;
LABEL_13:
  v43 = v18;
  [(PSSpecifier *)self->_radioGroup setProperty:v18 forKey:*MEMORY[0x277D40090]];
  self->_showingScheduleSpecifiers = DWORD1(v45[0]) == 2;
  v19 = MEMORY[0x277D3FAD8];
  v20 = DBS_LocalizedStringForColorSchedule(@"TURN_ON");
  v21 = [v19 preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:4 edit:0];
  startTimePickerSpecifier = self->_startTimePickerSpecifier;
  self->_startTimePickerSpecifier = v21;

  v23 = *MEMORY[0x277D3FEE8];
  [(PSSpecifier *)self->_startTimePickerSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEE8]];
  [(PSSpecifier *)self->_startTimePickerSpecifier setIdentifier:@"STARTS"];
  v24 = self->_startTimePickerSpecifier;
  v25 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F9E0] preferredHeight];
  v26 = [v25 numberWithDouble:?];
  v27 = *MEMORY[0x277D40140];
  [(PSSpecifier *)v24 setProperty:v26 forKey:*MEMORY[0x277D40140]];

  v28 = self->_startTimePickerSpecifier;
  v29 = objc_opt_class();
  v30 = *MEMORY[0x277D3FE58];
  [(PSSpecifier *)v28 setProperty:v29 forKey:*MEMORY[0x277D3FE58]];
  v31 = MEMORY[0x277D3FAD8];
  v32 = DBS_LocalizedStringForColorSchedule(@"TURN_OFF");
  v33 = [v31 preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:0 cell:4 edit:0];
  endTimePickerSpecifier = self->_endTimePickerSpecifier;
  self->_endTimePickerSpecifier = v33;

  [(PSSpecifier *)self->_endTimePickerSpecifier setProperty:MEMORY[0x277CBEC38] forKey:v23];
  [(PSSpecifier *)self->_endTimePickerSpecifier setIdentifier:@"ENDS"];
  v35 = self->_endTimePickerSpecifier;
  v36 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F9E0] preferredHeight];
  v37 = [v36 numberWithDouble:?];
  [(PSSpecifier *)v35 setProperty:v37 forKey:v27];

  [(PSSpecifier *)self->_endTimePickerSpecifier setProperty:objc_opt_class() forKey:v30];
  if (self->_showingScheduleSpecifiers)
  {
    v38 = self->_endTimePickerSpecifier;
    v47[0] = self->_startTimePickerSpecifier;
    v47[1] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [v5 addObjectsFromArray:v39];
  }

  v40 = *(&self->super.super.super.super.super.isa + v44);
  *(&self->super.super.super.super.super.isa + v44) = v5;
  v41 = v5;

  v4 = *(&self->super.super.super.super.super.isa + v44);
LABEL_16:

  return v4;
}

- (void)showScheduleSpecifiers:(BOOL)a3 animated:(BOOL)a4
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (self->_showingScheduleSpecifiers != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_showingScheduleSpecifiers = a3;
    endTimePickerSpecifier = self->_endTimePickerSpecifier;
    v9[0] = self->_startTimePickerSpecifier;
    v9[1] = endTimePickerSpecifier;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    if (v5)
    {
      [(DBSColorScheduleController *)self insertContiguousSpecifiers:v8 atIndex:[(DBSColorScheduleController *)self indexOfSpecifierID:@"TIME_GROUP"]+ 1 animated:v4];
    }

    else
    {
      [(DBSColorScheduleController *)self removeContiguousSpecifiers:v8 animated:v4];
    }
  }
}

- (id)startTime
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v3 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v3 getBlueLightStatus:v10];

  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setHour:SDWORD2(v10[0])];
  [v4 setMinute:SHIDWORD(v10[0])];
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 dateFromComponents:v4];
  v8 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v7];

  return v8;
}

- (id)endTime
{
  v12 = 0;
  v11 = 0u;
  v3 = [(CBClient *)self->_brightnessClient blueLightClient:0];
  [v3 getBlueLightStatus:&v10];

  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setHour:v11];
  [v4 setMinute:SDWORD1(v11)];
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 dateFromComponents:v4];
  v8 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v7];

  return v8;
}

- (int)blueLightMode
{
  v2 = [(CBClient *)self->_brightnessClient blueLightClient:0];
  [v2 getBlueLightStatus:&v4];

  return DWORD1(v4);
}

- (void)handleBlueLightStatusChanged:(id *)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DBSColorScheduleController_handleBlueLightStatusChanged___block_invoke;
  block[3] = &unk_278459558;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  brightnessClient = self->_brightnessClient;
  v8 = a3;
  v9 = [(CBClient *)brightnessClient blueLightClient];
  [v9 suspendNotifications:1];

  v10 = [(DBSColorScheduleController *)self indexForIndexPath:v6];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v10];
  }

  if (v11 == self->_sunsetToSunriseRadioSpecifier)
  {
    v12 = 1;
    goto LABEL_8;
  }

  if (v11 == self->_scheduleRadioSpecifier)
  {
    v12 = 2;
LABEL_8:
    v13 = [(CBClient *)self->_brightnessClient blueLightClient];
    [v13 setMode:v12];
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v14 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v14 getBlueLightStatus:v17];

  [(DBSColorScheduleController *)self showScheduleSpecifiers:DWORD1(v17[0]) == 2 animated:1];
  v15 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v15 suspendNotifications:0];

  v16.receiver = self;
  v16.super_class = DBSColorScheduleController;
  [(DBSColorScheduleController *)&v16 tableView:v8 didSelectRowAtIndexPath:v6];
}

- (void)datePickerChanged:(id)a3
{
  v4 = a3;
  v5 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v5 suspendNotifications:1];

  v6 = v4;
  v7 = [(UIDatePicker *)v6 calendar];
  v8 = [(UIDatePicker *)v6 date];
  v9 = [v7 components:96 fromDate:v8];

  v10 = [v9 hour];
  v11 = [v9 minute];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v12 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v12 getBlueLightStatus:v17];

  v16 = *(v17 + 8);
  if (self->_startTimePicker == v6)
  {
    v13 = &v16 + 1;
    LODWORD(v16) = v10;
    goto LABEL_5;
  }

  if (self->_endTimePicker == v6)
  {
    v13 = (&v16 | 0xC);
    DWORD2(v16) = v10;
LABEL_5:
    *v13 = v11;
  }

  v14 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v14 setSchedule:&v16];

  v15 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v15 suspendNotifications:0];
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D753E8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setDatePickerMode:0];
  [v6 setPreferredDatePickerStyle:3];
  v7 = [(CBClient *)self->_brightnessClient blueLightClient:0];
  [v7 getBlueLightStatus:&v17];

  if (self->_startTimePickerSpecifier == v4)
  {
    v9 = (&v17 | 0xC);
    v8 = (&v17 + 8);
    v10 = &OBJC_IVAR___DBSColorScheduleController__startTimePicker;
  }

  else
  {
    if (self->_endTimePickerSpecifier != v4)
    {
      [DBSColorScheduleController datePickerForSpecifier:];
    }

    v8 = &v18;
    v9 = &v18 + 1;
    v10 = &OBJC_IVAR___DBSColorScheduleController__endTimePicker;
  }

  v11 = *v8;
  v12 = *v9;
  objc_storeStrong((&self->super.super.super.super.super.isa + *v10), v6);
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v13 setHour:v11];
  [v13 setMinute:v12];
  v14 = [v6 calendar];
  v15 = [v14 dateFromComponents:v13];
  [v6 setDate:v15];

  return v6;
}

- (void)datePickerForSpecifier:.cold.1()
{
  v0 = DBSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22102E000, v0, OS_LOG_TYPE_DEFAULT, "Trying to get date picker for invalid specifier.", v1, 2u);
  }

  __assert_rtn("[DBSColorScheduleController datePickerForSpecifier:]", "DBSColorScheduleController.m", 288, "0");
}

@end