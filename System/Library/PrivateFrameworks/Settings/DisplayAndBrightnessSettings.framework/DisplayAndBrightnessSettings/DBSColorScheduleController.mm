@interface DBSColorScheduleController
- (DBSColorScheduleController)initWithNibName:(id)name bundle:(id)bundle;
- (id)datePickerForSpecifier:(id)specifier;
- (id)endTime;
- (id)specifiers;
- (id)startTime;
- (int)blueLightMode;
- (void)datePickerChanged:(id)changed;
- (void)dealloc;
- (void)handleBlueLightStatusChanged:(id *)changed;
- (void)showScheduleSpecifiers:(BOOL)specifiers animated:(BOOL)animated;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)willResignActive;
@end

@implementation DBSColorScheduleController

- (DBSColorScheduleController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v21.receiver = self;
  v21.super_class = DBSColorScheduleController;
  v8 = [(DBSColorScheduleController *)&v21 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CFD3A8]);
    brightnessClient = v8->_brightnessClient;
    v8->_brightnessClient = v9;

    objc_initWeak(&location, v8);
    blueLightClient = [(CBClient *)v8->_brightnessClient blueLightClient];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __53__DBSColorScheduleController_initWithNibName_bundle___block_invoke;
    v18 = &unk_278459440;
    objc_copyWeak(&v19, &location);
    [blueLightClient setStatusNotificationBlock:&v15];

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
  blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient setStatusNotificationBlock:0];

  v4.receiver = self;
  v4.super_class = DBSColorScheduleController;
  [(DBSColorScheduleController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = DBSColorScheduleController;
  [(DBSColorScheduleController *)&v21 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/BLUE_LIGHT_REDUCTION/SCHEDULE"];
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
    v14 = [v10 initWithKey:@"BLUE_LIGHT_REDUCTION" defaultValue:0 table:@"Display" locale:currentLocale2 bundleURL:bundleURL2];

    v15 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    bundleURL3 = [v17 bundleURL];
    v19 = [v15 initWithKey:@"SCHEDULE_TITLE" defaultValue:0 table:@"ColorSchedule" locale:currentLocale3 bundleURL:bundleURL3];

    v22[0] = v9;
    v22[1] = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [(DBSColorScheduleController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v19 localizedNavigationComponents:v20 deepLink:v4];
  }
}

- (void)willResignActive
{
  view = [(DBSColorScheduleController *)self view];
  [view endEditing:1];
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
  blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient getBlueLightStatus:v45];

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

- (void)showScheduleSpecifiers:(BOOL)specifiers animated:(BOOL)animated
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (self->_showingScheduleSpecifiers != specifiers)
  {
    animatedCopy = animated;
    specifiersCopy = specifiers;
    self->_showingScheduleSpecifiers = specifiers;
    endTimePickerSpecifier = self->_endTimePickerSpecifier;
    v9[0] = self->_startTimePickerSpecifier;
    v9[1] = endTimePickerSpecifier;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    if (specifiersCopy)
    {
      [(DBSColorScheduleController *)self insertContiguousSpecifiers:v8 atIndex:[(DBSColorScheduleController *)self indexOfSpecifierID:@"TIME_GROUP"]+ 1 animated:animatedCopy];
    }

    else
    {
      [(DBSColorScheduleController *)self removeContiguousSpecifiers:v8 animated:animatedCopy];
    }
  }
}

- (id)startTime
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient getBlueLightStatus:v10];

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

- (void)handleBlueLightStatusChanged:(id *)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DBSColorScheduleController_handleBlueLightStatusChanged___block_invoke;
  block[3] = &unk_278459558;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  brightnessClient = self->_brightnessClient;
  viewCopy = view;
  blueLightClient = [(CBClient *)brightnessClient blueLightClient];
  [blueLightClient suspendNotifications:1];

  v10 = [(DBSColorScheduleController *)self indexForIndexPath:pathCopy];
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
    blueLightClient2 = [(CBClient *)self->_brightnessClient blueLightClient];
    [blueLightClient2 setMode:v12];
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  blueLightClient3 = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient3 getBlueLightStatus:v17];

  [(DBSColorScheduleController *)self showScheduleSpecifiers:DWORD1(v17[0]) == 2 animated:1];
  blueLightClient4 = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient4 suspendNotifications:0];

  v16.receiver = self;
  v16.super_class = DBSColorScheduleController;
  [(DBSColorScheduleController *)&v16 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient suspendNotifications:1];

  v6 = changedCopy;
  calendar = [(UIDatePicker *)v6 calendar];
  date = [(UIDatePicker *)v6 date];
  v9 = [calendar components:96 fromDate:date];

  hour = [v9 hour];
  minute = [v9 minute];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  blueLightClient2 = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient2 getBlueLightStatus:v17];

  v16 = *(v17 + 8);
  if (self->_startTimePicker == v6)
  {
    v13 = &v16 + 1;
    LODWORD(v16) = hour;
    goto LABEL_5;
  }

  if (self->_endTimePicker == v6)
  {
    v13 = (&v16 | 0xC);
    DWORD2(v16) = hour;
LABEL_5:
    *v13 = minute;
  }

  blueLightClient3 = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient3 setSchedule:&v16];

  blueLightClient4 = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient4 suspendNotifications:0];
}

- (id)datePickerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_alloc(MEMORY[0x277D753E8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setDatePickerMode:0];
  [v6 setPreferredDatePickerStyle:3];
  v7 = [(CBClient *)self->_brightnessClient blueLightClient:0];
  [v7 getBlueLightStatus:&v17];

  if (self->_startTimePickerSpecifier == specifierCopy)
  {
    v9 = (&v17 | 0xC);
    v8 = (&v17 + 8);
    v10 = &OBJC_IVAR___DBSColorScheduleController__startTimePicker;
  }

  else
  {
    if (self->_endTimePickerSpecifier != specifierCopy)
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
  calendar = [v6 calendar];
  v15 = [calendar dateFromComponents:v13];
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