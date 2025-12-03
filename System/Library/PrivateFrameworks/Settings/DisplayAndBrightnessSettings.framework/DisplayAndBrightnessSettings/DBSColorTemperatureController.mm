@interface DBSColorTemperatureController
- (DBSColorTemperatureController)initWithNibName:(id)name bundle:(id)bundle;
- (id)blueLightReductionFooter;
- (id)fromDetailForCell:(id)cell;
- (id)getBlueLightReductionManualEnabled:(id)enabled;
- (id)getBlueLightReductionScheduleEnabled:(id)enabled;
- (id)localizedTimeForTime:(id)time;
- (id)specifiers;
- (id)temperatureStrength:(id)strength;
- (id)toDetailForCell:(id)cell;
- (void)_printBlueLightStatus:(id *)status;
- (void)_setBlueLightReductionEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)colorTemperatureSliderDidChange;
- (void)dealloc;
- (void)handleBlueLightStatusChanged:(id *)changed;
- (void)setBlueLightReductionManualEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setBlueLightReductionSchedule:(id)schedule forSpecifier:(id)specifier;
- (void)setTemperatureStrength:(id)strength specifier:(id)specifier;
- (void)showAlertToDisableAccessibilityFiltersForBlueLightReduction:(id)reduction cancel:(id)cancel;
- (void)showScheduleRange:(BOOL)range animated:(BOOL)animated;
- (void)specifiers;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation DBSColorTemperatureController

- (DBSColorTemperatureController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v24.receiver = self;
  v24.super_class = DBSColorTemperatureController;
  v8 = [(DBSColorTemperatureController *)&v24 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CFD3A8]);
    brightnessClient = v8->__brightnessClient;
    v8->__brightnessClient = v9;

    objc_initWeak(&location, v8);
    _brightnessClient = [(DBSColorTemperatureController *)v8 _brightnessClient];
    blueLightClient = [_brightnessClient blueLightClient];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __56__DBSColorTemperatureController_initWithNibName_bundle___block_invoke;
    v21 = &unk_278459440;
    objc_copyWeak(&v22, &location);
    [blueLightClient setStatusNotificationBlock:&v18];

    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    timeFormatter = v8->_timeFormatter;
    v8->_timeFormatter = v13;

    [(NSDateFormatter *)v8->_timeFormatter setTimeStyle:1, v18, v19, v20, v21];
    [(NSDateFormatter *)v8->_timeFormatter setDateStyle:0];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice sf_isInternalInstall])
    {
      v16 = CFPreferencesGetAppBooleanValue(@"kShowColorTemperature", @"com.apple.Preferences", 0) != 0;
    }

    else
    {
      v16 = 0;
    }

    v8->_showColorTemperature = v16;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __56__DBSColorTemperatureController_initWithNibName_bundle___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBlueLightStatusChanged:a2];
}

- (void)dealloc
{
  _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient = [_brightnessClient blueLightClient];
  [blueLightClient setStatusNotificationBlock:0];

  [(NSTimer *)self->_blueLightReductionLabelRefreshTimer invalidate];
  v5.receiver = self;
  v5.super_class = DBSColorTemperatureController;
  [(DBSColorTemperatureController *)&v5 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSColorTemperatureController;
  [(DBSColorTemperatureController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/BLUE_LIGHT_REDUCTION"];
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

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSColorTemperatureController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    self->_showingScheduleRange = 0;
    v5 = [(DBSColorTemperatureController *)self loadSpecifiersFromPlistName:@"ColorTemperature" target:self];
    v6 = [v5 specifierForID:@"BLUE_LIGHT_REDUCTION_COLOR_TEMP"];
    [(DBSColorTemperatureController *)self set_temperatureSlider:v6];

    _temperatureSlider = [(DBSColorTemperatureController *)self _temperatureSlider];
    if (!_temperatureSlider)
    {
      [DBSColorTemperatureController specifiers];
    }

    v8 = [v5 specifierForID:@"SCHEDULED"];
    [(DBSColorTemperatureController *)self set_scheduleSwitchSpecifier:v8];

    _scheduleSwitchSpecifier = [(DBSColorTemperatureController *)self _scheduleSwitchSpecifier];
    if (!_scheduleSwitchSpecifier)
    {
      [DBSColorTemperatureController specifiers];
    }

    v10 = [v5 specifierForID:@"MANUAL"];
    [(DBSColorTemperatureController *)self set_manualSwitchSpecifier:v10];

    _manualSwitchSpecifier = [(DBSColorTemperatureController *)self _manualSwitchSpecifier];
    if (!_manualSwitchSpecifier)
    {
      [DBSColorTemperatureController specifiers];
    }

    v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_2834977A0 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [(DBSColorTemperatureController *)self set_scheduleRangeSpecifier:v12];

    _scheduleRangeSpecifier = [(DBSColorTemperatureController *)self _scheduleRangeSpecifier];
    [_scheduleRangeSpecifier setIdentifier:@"SCHEDULE_RANGE"];

    _scheduleRangeSpecifier2 = [(DBSColorTemperatureController *)self _scheduleRangeSpecifier];
    [_scheduleRangeSpecifier2 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];

    v15 = [v5 specifierForID:@"COLOR_TEMPERATURE"];
    if (!v15)
    {
      [DBSColorTemperatureController specifiers];
    }

    v16 = v15;
    blueLightReductionFooter = [(DBSColorTemperatureController *)self blueLightReductionFooter];
    [v16 setProperty:blueLightReductionFooter forKey:*MEMORY[0x277D3FF88]];

    v27 = 0;
    memset(v26, 0, sizeof(v26));
    _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
    blueLightClient = [_brightnessClient blueLightClient];
    v20 = [blueLightClient getBlueLightStatus:v26];

    if ((v20 & 1) == 0)
    {
      [DBSColorTemperatureController specifiers];
    }

    v21 = DWORD1(v26[0]);
    self->_showingScheduleRange = DWORD1(v26[0]) != 0;
    _scheduleRangeSpecifier3 = [(DBSColorTemperatureController *)self _scheduleRangeSpecifier];
    if (v21)
    {
      _scheduleSwitchSpecifier2 = [(DBSColorTemperatureController *)self _scheduleSwitchSpecifier];
      [v5 ps_insertObject:_scheduleRangeSpecifier3 afterObject:_scheduleSwitchSpecifier2];
    }

    else
    {
      [v5 removeObject:_scheduleRangeSpecifier3];
    }

    v24 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_printBlueLightStatus:(id *)status
{
  v26 = *MEMORY[0x277D85DE8];
  if (status)
  {
    v4 = DBSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22102E000, v4, OS_LOG_TYPE_DEFAULT, "\\[T]/ STATUS:", &v18, 2u);
    }

    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      var0 = status->var0;
      v18 = 67109120;
      v19 = var0;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "Active: %d\n", &v18, 8u);
    }

    v7 = DBSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      var1 = status->var1;
      v18 = 67109120;
      v19 = var1;
      _os_log_impl(&dword_22102E000, v7, OS_LOG_TYPE_DEFAULT, "Enabled: %d\n", &v18, 8u);
    }

    v9 = DBSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      var3 = status->var3;
      v18 = 67109120;
      v19 = var3;
      _os_log_impl(&dword_22102E000, v9, OS_LOG_TYPE_DEFAULT, "Mode: %d\n", &v18, 8u);
    }

    v11 = DBSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = status->var4.var0.var0;
      v13 = status->var4.var0.var1;
      v14 = status->var4.var1.var0;
      v15 = status->var4.var1.var1;
      v18 = 67109888;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&dword_22102E000, v11, OS_LOG_TYPE_DEFAULT, "Schedule: From %02d:%02d to %02d:%02d\n", &v18, 0x1Au);
    }

    v16 = DBSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      var2 = status->var2;
      v18 = 67109120;
      v19 = var2;
      _os_log_impl(&dword_22102E000, v16, OS_LOG_TYPE_DEFAULT, "Sunrise/sunset allowed: %d\n\n", &v18, 8u);
    }
  }
}

- (void)showScheduleRange:(BOOL)range animated:(BOOL)animated
{
  if (self->_showingScheduleRange != range)
  {
    animatedCopy = animated;
    rangeCopy = range;
    self->_showingScheduleRange = range;
    _scheduleRangeSpecifier = [(DBSColorTemperatureController *)self _scheduleRangeSpecifier];
    if (rangeCopy)
    {
      _scheduleSwitchSpecifier = [(DBSColorTemperatureController *)self _scheduleSwitchSpecifier];
      [(DBSColorTemperatureController *)self insertSpecifier:_scheduleRangeSpecifier afterSpecifier:_scheduleSwitchSpecifier animated:animatedCopy];
    }

    else
    {
      [(DBSColorTemperatureController *)self removeSpecifier:_scheduleRangeSpecifier animated:animatedCopy];
    }
  }
}

- (void)handleBlueLightStatusChanged:(id *)changed
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__DBSColorTemperatureController_handleBlueLightStatusChanged___block_invoke;
  block[3] = &unk_278459468;
  objc_copyWeak(v5, &location);
  v5[1] = changed;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __62__DBSColorTemperatureController_handleBlueLightStatusChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _brightnessClient];
  v3 = [v2 blueLightClient];
  v4 = [v3 getBlueLightStatus:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    __62__DBSColorTemperatureController_handleBlueLightStatusChanged___block_invoke_cold_1();
  }

  [WeakRetained _printBlueLightStatus:*(a1 + 40)];
  v5 = [WeakRetained _scheduleSwitchSpecifier];
  [WeakRetained reloadSpecifier:v5 animated:1];

  v6 = [WeakRetained _scheduleRangeSpecifier];
  [WeakRetained reloadSpecifier:v6 animated:1];

  v7 = [WeakRetained _manualSwitchSpecifier];
  [WeakRetained reloadSpecifier:v7 animated:1];

  [WeakRetained showScheduleRange:*(*(a1 + 40) + 4) != 0 animated:1];
}

- (id)getBlueLightReductionManualEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [(DBSColorTemperatureController *)self _brightnessClient:0];
  blueLightClient = [v5 blueLightClient];
  v7 = [blueLightClient getBlueLightStatus:v11];

  [(DBSColorTemperatureController *)self _printBlueLightStatus:v11];
  if (!v7)
  {
    [DBSColorTemperatureController getBlueLightReductionManualEnabled:];
  }

  if (v12)
  {
    v8 = 0;
  }

  else
  {
    v8 = v11[1];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];

  return v9;
}

- (void)setBlueLightReductionManualEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient = [_brightnessClient blueLightClient];
  v10 = blueLightClient;
  if (bOOLValue)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  [blueLightClient setMode:v11];

  if (bOOLValue)
  {
    [(DBSColorTemperatureController *)self _setBlueLightReductionEnabled:enabledCopy forSpecifier:specifierCopy];
  }
}

- (void)_setBlueLightReductionEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DBSColorTemperatureController__setBlueLightReductionEnabled_forSpecifier___block_invoke;
  v12[3] = &unk_278459490;
  objc_copyWeak(&v13, &location);
  v14 = bOOLValue;
  v9 = MEMORY[0x223D9E740](v12);
  if (bOOLValue && _AXSScreenFilterApplied())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__DBSColorTemperatureController__setBlueLightReductionEnabled_forSpecifier___block_invoke_2;
    v10[3] = &unk_2784594B8;
    v10[4] = self;
    v11 = specifierCopy;
    [(DBSColorTemperatureController *)self showAlertToDisableAccessibilityFiltersForBlueLightReduction:v9 cancel:v10];
  }

  else
  {
    v9[2](v9);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __76__DBSColorTemperatureController__setBlueLightReductionEnabled_forSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _brightnessClient];
  v3 = [v2 blueLightClient];
  [v3 setEnabled:*(a1 + 40)];
}

- (id)getBlueLightReductionScheduleEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [(DBSColorTemperatureController *)self _brightnessClient:0];
  blueLightClient = [v5 blueLightClient];
  v7 = [blueLightClient getBlueLightStatus:&v10];

  if ((v7 & 1) == 0)
  {
    [DBSColorTemperatureController getBlueLightReductionScheduleEnabled:];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:DWORD1(v10) != 0];

  return v8;
}

- (void)setBlueLightReductionSchedule:(id)schedule forSpecifier:(id)specifier
{
  scheduleCopy = schedule;
  specifierCopy = specifier;
  bOOLValue = [scheduleCopy BOOLValue];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DBSColorTemperatureController_setBlueLightReductionSchedule_forSpecifier___block_invoke;
  v12[3] = &unk_278459490;
  objc_copyWeak(&v13, &location);
  v14 = bOOLValue;
  v9 = MEMORY[0x223D9E740](v12);
  if (bOOLValue && _AXSScreenFilterApplied())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__DBSColorTemperatureController_setBlueLightReductionSchedule_forSpecifier___block_invoke_2;
    v10[3] = &unk_2784594B8;
    v10[4] = self;
    v11 = specifierCopy;
    [(DBSColorTemperatureController *)self showAlertToDisableAccessibilityFiltersForBlueLightReduction:v9 cancel:v10];
  }

  else
  {
    v9[2](v9);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __76__DBSColorTemperatureController_setBlueLightReductionSchedule_forSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _brightnessClient];
  v3 = [v2 blueLightClient];
  v4 = v3;
  if (*(a1 + 40))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [v3 setMode:v5];

  [WeakRetained showScheduleRange:*(a1 + 40) animated:1];
  v6 = [WeakRetained _manualSwitchSpecifier];
  [WeakRetained reloadSpecifier:v6 animated:1];
}

- (void)showAlertToDisableAccessibilityFiltersForBlueLightReduction:(id)reduction cancel:(id)cancel
{
  reductionCopy = reduction;
  cancelCopy = cancel;
  v8 = MEMORY[0x277D75110];
  v9 = DBS_LocalizedStringForColorTemperature(@"DISABLE_AX_FILTERS_TITLE");
  v10 = DBS_LocalizedStringForColorTemperature(@"DISABLE_AX_FILTERS_MESSAGE");
  v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = DBS_LocalizedStringForColorTemperature(@"DISABLE_AX_FILTERS_ENABLE");
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __100__DBSColorTemperatureController_showAlertToDisableAccessibilityFiltersForBlueLightReduction_cancel___block_invoke;
  v25[3] = &unk_2784594E0;
  v26 = reductionCopy;
  v14 = reductionCopy;
  v15 = [v12 actionWithTitle:v13 style:0 handler:v25];
  [v11 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = DBS_LocalizedStringForColorTemperature(@"DISABLE_AX_FILTERS_CANCEL");
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __100__DBSColorTemperatureController_showAlertToDisableAccessibilityFiltersForBlueLightReduction_cancel___block_invoke_2;
  v23 = &unk_2784594E0;
  v24 = cancelCopy;
  v18 = cancelCopy;
  v19 = [v16 actionWithTitle:v17 style:1 handler:&v20];
  [v11 addAction:{v19, v20, v21, v22, v23}];

  [(DBSColorTemperatureController *)self presentViewController:v11 animated:1 completion:0];
}

uint64_t __100__DBSColorTemperatureController_showAlertToDisableAccessibilityFiltersForBlueLightReduction_cancel___block_invoke(uint64_t a1)
{
  _AXSDisableScreenFilters();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (id)temperatureStrength:(id)strength
{
  strengthCopy = strength;
  v11 = 0;
  _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient = [_brightnessClient blueLightClient];
  v7 = [blueLightClient getStrength:&v11];

  if ((v7 & 1) == 0)
  {
    [DBSColorTemperatureController temperatureStrength:];
  }

  LODWORD(v8) = v11;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];

  return v9;
}

- (void)setTemperatureStrength:(id)strength specifier:(id)specifier
{
  strengthCopy = strength;
  specifierCopy = specifier;
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D3FEB0]];
  [strengthCopy floatValue];
  v9 = v8;
  isTracking = [v7 isTracking];
  _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient = [_brightnessClient blueLightClient];
  v13 = blueLightClient;
  if (isTracking)
  {
    [blueLightClient suspendNotifications:1];

    _brightnessClient2 = [(DBSColorTemperatureController *)self _brightnessClient];
    blueLightClient2 = [_brightnessClient2 blueLightClient];
    LODWORD(v16) = v9;
    v17 = [blueLightClient2 setStrength:0 commit:v16];
  }

  else
  {
    [blueLightClient suspendNotifications:0];

    temperatureSliderWasTracking = self->_temperatureSliderWasTracking;
    _brightnessClient2 = [(DBSColorTemperatureController *)self _brightnessClient];
    blueLightClient3 = [_brightnessClient2 blueLightClient];
    blueLightClient2 = blueLightClient3;
    if (temperatureSliderWasTracking)
    {
      LODWORD(v21) = 1.0;
      LODWORD(v20) = v9;
      v22 = 1;
    }

    else
    {
      LODWORD(v21) = 1045220557;
      LODWORD(v20) = v9;
      v22 = 0;
    }

    v17 = [blueLightClient3 setStrength:v22 withPeriod:v20 commit:v21];
  }

  v23 = v17;

  [(NSTimer *)self->_blueLightReductionLabelRefreshTimer invalidate];
  v24 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_colorTemperatureSliderDidChange selector:0 userInfo:0 repeats:0.2];
  blueLightReductionLabelRefreshTimer = self->_blueLightReductionLabelRefreshTimer;
  self->_blueLightReductionLabelRefreshTimer = v24;

  if ((v23 & 1) == 0)
  {
    [DBSColorTemperatureController setTemperatureStrength:specifier:];
  }

  self->_temperatureSliderWasTracking = isTracking;
}

- (void)colorTemperatureSliderDidChange
{
  _temperatureSlider = [(DBSColorTemperatureController *)self _temperatureSlider];
  v4 = [_temperatureSlider propertyForKey:*MEMORY[0x277D3FEB0]];

  [v4 value];
  v6 = v5;
  _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient = [_brightnessClient blueLightClient];
  LODWORD(v9) = 1.0;
  LODWORD(v10) = v6;
  [blueLightClient setStrength:1 withPeriod:v10 commit:v9];

  v11 = [(DBSColorTemperatureController *)self specifierForID:@"COLOR_TEMPERATURE"];
  v12 = *MEMORY[0x277D3FF88];
  v13 = [v11 propertyForKey:*MEMORY[0x277D3FF88]];
  blueLightReductionFooter = [(DBSColorTemperatureController *)self blueLightReductionFooter];
  if (([v13 isEqualToString:blueLightReductionFooter] & 1) == 0)
  {
    [v11 setProperty:blueLightReductionFooter forKey:v12];
    v17 = 0;
    v18 = 0;
    [(DBSColorTemperatureController *)self getGroup:&v18 row:&v17 ofSpecifier:v11];
    table = [(DBSColorTemperatureController *)self table];
    v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:v18];
    [table _reloadSectionHeaderFooters:v16 withRowAnimation:0];
  }
}

- (id)blueLightReductionFooter
{
  v18 = 0.0;
  _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient = [_brightnessClient blueLightClient];
  [blueLightClient getStrength:&v18];

  v17 = 1056964608;
  _brightnessClient2 = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient2 = [_brightnessClient2 blueLightClient];
  v7 = [blueLightClient2 getWarningStrength:&v17];

  if (v7)
  {
    v8 = *&v17;
  }

  else
  {
    v17 = 1056964608;
    v8 = 0.5;
  }

  if (v18 <= v8)
  {
    v9 = &stru_2834977A0;
  }

  else
  {
    v9 = DBS_LocalizedStringForColorTemperature(@"COLOR_TEMPERATURE_MOTION_WARNING");
  }

  if (self->_showColorTemperature)
  {
    v16 = 0.0;
    _brightnessClient3 = [(DBSColorTemperatureController *)self _brightnessClient];
    blueLightClient3 = [_brightnessClient3 blueLightClient];
    [blueLightClient3 getCCT:&v16];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"INTERNAL ONLY:\nWhen Night Shift is enabled, your display's white point is %.0fK.", v16];
    if ([(__CFString *)v9 length])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v9, v12];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;

    v9 = v14;
  }

  return v9;
}

- (id)localizedTimeForTime:(id)time
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setHour:time.var0];
  [v5 setMinute:*&time >> 32];
  v6 = objc_alloc(MEMORY[0x277CBEA80]);
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v8 = [v7 dateFromComponents:v5];
  v9 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v8];

  return v9;
}

- (id)fromDetailForCell:(id)cell
{
  cellCopy = cell;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  _brightnessClient = [(DBSColorTemperatureController *)self _brightnessClient];
  blueLightClient = [_brightnessClient blueLightClient];
  v7 = [blueLightClient getBlueLightStatus:v11];

  if ((v7 & 1) == 0)
  {
    [DBSColorTemperatureController fromDetailForCell:];
  }

  if (!DWORD1(v11[0]) || DWORD1(v11[0]) == 2)
  {
    v8 = [(DBSColorTemperatureController *)self localizedTimeForTime:*(&v11[0] + 1)];
    goto LABEL_7;
  }

  if (DWORD1(v11[0]) == 1)
  {
    v8 = DBS_LocalizedStringForColorTemperature(@"SUNSET");
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)toDetailForCell:(id)cell
{
  cellCopy = cell;
  v13 = 0;
  v12 = 0u;
  v5 = [(DBSColorTemperatureController *)self _brightnessClient:0];
  blueLightClient = [v5 blueLightClient];
  v7 = [blueLightClient getBlueLightStatus:&v11];

  if ((v7 & 1) == 0)
  {
    [DBSColorTemperatureController toDetailForCell:];
  }

  if (!DWORD1(v11) || DWORD1(v11) == 2)
  {
    v8 = [(DBSColorTemperatureController *)self localizedTimeForTime:v12];
    goto LABEL_7;
  }

  if (DWORD1(v11) == 1)
  {
    v8 = DBS_LocalizedStringForColorTemperature(@"SUNRISE");
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)specifiers
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "Could not get blue light status.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController specifiers]", "DBSColorTemperatureController.m", 128, "0");
}

void __62__DBSColorTemperatureController_handleBlueLightStatusChanged___block_invoke_cold_1()
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "Could not get blue light status.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController handleBlueLightStatusChanged:]_block_invoke", "DBSColorTemperatureController.m", 177, "0");
}

- (void)getBlueLightReductionManualEnabled:.cold.1()
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "Could not get blue light status.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController getBlueLightReductionManualEnabled:]", "DBSColorTemperatureController.m", 199, "0");
}

- (void)getBlueLightReductionScheduleEnabled:.cold.1()
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "Could not get blue light status.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController getBlueLightReductionScheduleEnabled:]", "DBSColorTemperatureController.m", 236, "0");
}

- (void)temperatureStrength:.cold.1()
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "BLR strength could not be queried.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController temperatureStrength:]", "DBSColorTemperatureController.m", 292, "0");
}

- (void)setTemperatureStrength:specifier:.cold.1()
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "BLR strength could not be set.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController setTemperatureStrength:specifier:]", "DBSColorTemperatureController.m", 324, "0");
}

- (void)fromDetailForCell:.cold.1()
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "Could not get blue light status.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController fromDetailForCell:]", "DBSColorTemperatureController.m", 399, "0");
}

- (void)toDetailForCell:.cold.1()
{
  v1 = DBSLogForCategory(0);
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_22102E000, v2, v3, "Could not get blue light status.", v4, v5, v6, v7, 0);
  }

  __assert_rtn("[DBSColorTemperatureController toDetailForCell:]", "DBSColorTemperatureController.m", 424, "0");
}

@end