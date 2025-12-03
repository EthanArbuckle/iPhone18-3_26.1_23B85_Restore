@interface SCLPhoneSettingsViewController
- (NRDevice)device;
- (id)viewModelForSettings:(id)settings;
- (void)applicationDidBecomeActive:(id)active;
- (void)beginObservingViewModel:(id)model;
- (void)dealloc;
- (void)endObservingViewModel:(id)model;
- (void)loadSchoolModeIfNeeded;
- (void)loadSpecifierSource;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scheduleDidChange;
- (void)setSpecifier:(id)specifier;
- (void)updateSchedule;
@end

@implementation SCLPhoneSettingsViewController

- (void)dealloc
{
  viewModel = [(SCLPhoneSettingsViewController *)self viewModel];
  [(SCLPhoneSettingsViewController *)self endObservingViewModel:viewModel];

  v4.receiver = self;
  v4.super_class = SCLPhoneSettingsViewController;
  [(SCLListViewController *)&v4 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = SCLPhoneSettingsViewController;
  specifierCopy = specifier;
  [(SCLPhoneSettingsViewController *)&v7 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"COSAssociatedDevice", v7.receiver, v7.super_class}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCLPhoneSettingsViewController *)self setDevice:v5];
  }

  else if (v5)
  {
    v6 = scl_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCLPhoneSettingsViewController *)v5 setSpecifier:v6];
    }
  }
}

- (NRDevice)device
{
  device = self->_device;
  if (!device)
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
    v6 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
    firstObject = [v6 firstObject];
    v8 = self->_device;
    self->_device = firstObject;

    device = self->_device;
  }

  return device;
}

- (void)loadSchoolModeIfNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_schoolMode)
  {
    device = [(SCLPhoneSettingsViewController *)self device];
    v4 = [device valueForProperty:*MEMORY[0x277D2BB28]];
    bOOLValue = [v4 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
      v7 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global_1];

      v8 = scl_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        specifier = [(SCLPhoneSettingsViewController *)self specifier];
        v15 = [specifier propertyForKey:@"COSAssociatedDevice"];
        v16 = 138412802;
        v17 = device;
        v18 = 2112;
        v19 = v15;
        v20 = 2112;
        v21 = v7;
        _os_log_fault_impl(&dword_26486D000, v8, OS_LOG_TYPE_FAULT, "Selected device is not a Tinker device: %@; Specifier Device: %@;\n%@", &v16, 0x20u);
      }
    }

    pairingID = [device pairingID];
    if (pairingID)
    {
      v10 = objc_alloc_init(MEMORY[0x277D4B770]);
      [v10 setIdentifier:@"SchoolTimeSettings"];
      [v10 setPairingID:pairingID];
      [v10 setLoadsSynchronously:1];
      v11 = [objc_alloc(MEMORY[0x277D4B768]) initWithConfiguration:v10];
      schoolMode = self->_schoolMode;
      self->_schoolMode = v11;

      [(SCLSchoolMode *)self->_schoolMode resume];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)loadSpecifierSource
{
  v20[2] = *MEMORY[0x277D85DE8];
  [(SCLPhoneSettingsViewController *)self loadSchoolModeIfNeeded];
  schoolMode = [(SCLPhoneSettingsViewController *)self schoolMode];

  if (schoolMode)
  {
    schoolMode2 = [(SCLPhoneSettingsViewController *)self schoolMode];
    scheduleSettings = [schoolMode2 scheduleSettings];

    [(SCLPhoneSettingsViewController *)self setScheduleSettings:scheduleSettings];
    v6 = [(SCLPhoneSettingsViewController *)self viewModelForSettings:scheduleSettings];
    [(SCLPhoneSettingsViewController *)self setViewModel:v6];
    [(SCLPhoneSettingsViewController *)self beginObservingViewModel:v6];
    v7 = [[SCLSpecifierDataSource alloc] initWithListController:self viewModel:v6];
    [(SCLSpecifierDataSource *)v7 setActive:1];
    v8 = [[SCLActiveSpecifierDataSource alloc] initWithListController:self viewModel:v6];
    [(SCLSpecifierDataSource *)v8 setActive:1];
    [(SCLPhoneSettingsViewController *)self setActiveSpecifierSource:v8];
    v9 = [[SCLHistoryDaysDataSource alloc] initWithListController:self viewModel:v6];
    [(SCLSpecifierDataSource *)v9 setActive:1];
    v20[0] = v8;
    v20[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [(SCLSpecifierDataSource *)v7 setChildDataSources:v10];

    [(SCLListViewController *)self setSpecifierSource:v7];
    schoolMode3 = [(SCLPhoneSettingsViewController *)self schoolMode];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__SCLPhoneSettingsViewController_loadSpecifierSource__block_invoke;
    v17[3] = &unk_279B6F258;
    v18 = v6;
    v12 = v6;
    [schoolMode3 fetchRecentUnlockHistoryItemsWithCompletion:v17];
  }

  else
  {
    scheduleSettings = objc_alloc_init(SCLSettingsViewModel);
    v7 = [[SCLSpecifierDataSource alloc] initWithListController:self viewModel:scheduleSettings];
    [(SCLSpecifierDataSource *)v7 setActive:1];
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SCHOOLTIME_UNAVAILABLE_GROUP"];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v13 localizedStringForKey:@"SCHOOLTIME_UNAVAILABLE_ERROR" value:&stru_28762AB68 table:@"SchoolTimeSettings"];

    if (os_variant_has_internal_ui())
    {
      v14 = [(SCLHistoryDaysDataSource *)v9 stringByAppendingString:@"\n\n[Internal Only]\nBridge should have provided an NRDevice and users should not be able to reach the Schooltime settings UI in this state. See <rdar://problem/66326901>"];

      v9 = v14;
    }

    [(SCLActiveSpecifierDataSource *)v8 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
    v19 = v8;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [(SCLSpecifierDataSource *)v7 setSpecifiers:v15];

    [(SCLListViewController *)self setSpecifierSource:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __53__SCLPhoneSettingsViewController_loadSpecifierSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = scl_framework_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__SCLPhoneSettingsViewController_loadSpecifierSource__block_invoke_cold_1(v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v14 = [v5 count];
    _os_log_impl(&dword_26486D000, v8, OS_LOG_TYPE_INFO, "Fetched %d history items", buf, 8u);
  }

  if ([v5 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__SCLPhoneSettingsViewController_loadSpecifierSource__block_invoke_24;
    v10[3] = &unk_279B6F230;
    v11 = *(a1 + 32);
    v12 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SCLPhoneSettingsViewController_loadSpecifierSource__block_invoke_24(uint64_t a1)
{
  [*(a1 + 32) setHistoryItems:*(a1 + 40)];

  return SCLLogHistoryViewed();
}

- (id)viewModelForSettings:(id)settings
{
  v29[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v4 = objc_alloc_init(SCLSettingsViewModel);
  -[SCLSettingsViewModel setEnabled:](v4, "setEnabled:", [settingsCopy isEnabled]);
  schedule = [settingsCopy schedule];

  scheduledDays = [schedule scheduledDays];
  uniformTimeIntervals = [schedule uniformTimeIntervals];
  v8 = uniformTimeIntervals;
  if (!scheduledDays)
  {
    v13 = +[SCLTimeIntervalModel defaultTimeInterval];
    v29[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    sCL_nonWeekendDays = [currentCalendar SCL_nonWeekendDays];

    [(SCLSettingsViewModel *)v4 setScheduleType:2];
    [(SCLSettingsViewModel *)v4 setRepeatSchedule:sCL_nonWeekendDays];
    [(SCLSettingsViewModel *)v4 setTimeIntervals:v14];
    v17 = [objc_alloc(MEMORY[0x277D4B738]) initWithTimeIntervals:v14 repeatSchedule:sCL_nonWeekendDays];
    [(SCLSettingsViewModel *)v4 setCustomSchedule:v17];

    goto LABEL_12;
  }

  if (![uniformTimeIntervals count])
  {
    [(SCLSettingsViewModel *)v4 setScheduleType:3];
    v18 = objc_alloc(MEMORY[0x277D4B738]);
    recurrences = [schedule recurrences];
    v20 = [v18 initWithRecurrences:recurrences];
    [(SCLSettingsViewModel *)v4 setCustomSchedule:v20];

    v21 = +[SCLTimeIntervalModel defaultTimeInterval];
    v28 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

    [(SCLSettingsViewModel *)v4 setTimeIntervals:v22];
    goto LABEL_12;
  }

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  sCL_nonWeekendDays2 = [currentCalendar2 SCL_nonWeekendDays];

  if (scheduledDays == 127)
  {
    [(SCLSettingsViewModel *)v4 setScheduleType:1];
    v11 = v4;
    v12 = 127;
  }

  else
  {
    if (scheduledDays != sCL_nonWeekendDays2)
    {
      [(SCLSettingsViewModel *)v4 setScheduleType:3];
      goto LABEL_11;
    }

    [(SCLSettingsViewModel *)v4 setScheduleType:2];
    v11 = v4;
    v12 = scheduledDays;
  }

  [(SCLSettingsViewModel *)v11 setRepeatSchedule:v12];
LABEL_11:
  v23 = objc_alloc(MEMORY[0x277D4B738]);
  recurrences2 = [schedule recurrences];
  v25 = [v23 initWithRecurrences:recurrences2];
  [(SCLSettingsViewModel *)v4 setCustomSchedule:v25];

  [(SCLSettingsViewModel *)v4 setTimeIntervals:v8];
LABEL_12:

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)beginObservingViewModel:(id)model
{
  modelCopy = model;
  [(SCLPhoneSettingsViewController *)self setObservingViewModel:1];
  [modelCopy addObserver:self forKeyPath:@"enabled" options:3 context:kScheduleContext];
  [modelCopy addObserver:self forKeyPath:@"scheduleType" options:3 context:kScheduleContext];
  [modelCopy addObserver:self forKeyPath:@"customSchedule" options:3 context:kScheduleContext];
  [modelCopy addObserver:self forKeyPath:@"repeatSchedule" options:3 context:kScheduleContext];
  [modelCopy addObserver:self forKeyPath:@"timeIntervals" options:3 context:kScheduleContext];
}

- (void)endObservingViewModel:(id)model
{
  modelCopy = model;
  if ([(SCLPhoneSettingsViewController *)self isObservingViewModel])
  {
    [(SCLPhoneSettingsViewController *)self setObservingViewModel:0];
    [modelCopy removeObserver:self forKeyPath:@"enabled" context:kScheduleContext];
    [modelCopy removeObserver:self forKeyPath:@"scheduleType" context:kScheduleContext];
    [modelCopy removeObserver:self forKeyPath:@"customSchedule" context:kScheduleContext];
    [modelCopy removeObserver:self forKeyPath:@"repeatSchedule" context:kScheduleContext];
    [modelCopy removeObserver:self forKeyPath:@"timeIntervals" context:kScheduleContext];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kScheduleContext == context)
  {
    v11 = *MEMORY[0x277CCA2F0];
    changeCopy = change;
    v14 = [changeCopy objectForKeyedSubscript:v11];
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];

    if (([v14 isEqual:v13] & 1) == 0)
    {
      [(SCLPhoneSettingsViewController *)self scheduleDidChange];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SCLPhoneSettingsViewController;
    changeCopy2 = change;
    [(SCLListViewController *)&v15 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = _os_activity_create(&dword_26486D000, "ApplicationDidBecomeActive", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = scl_framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26486D000, v6, OS_LOG_TYPE_DEFAULT, "ApplicationDidBecomeActive", v8, 2u);
  }

  schoolMode = [(SCLPhoneSettingsViewController *)self schoolMode];
  [schoolMode noteSignificantUserInteraction];

  os_activity_scope_leave(&state);
}

- (void)scheduleDidChange
{
  v3 = scl_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26486D000, v3, OS_LOG_TYPE_DEFAULT, "Schedule did change", v4, 2u);
  }

  [(SCLPhoneSettingsViewController *)self updateSchedule];
}

- (void)updateSchedule
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = scl_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26486D000, v3, OS_LOG_TYPE_DEFAULT, "Commit schedule update if needed", &buf, 2u);
  }

  v4 = MEMORY[0x277D4B730];
  viewModel = [(SCLPhoneSettingsViewController *)self viewModel];
  v6 = [v4 scheduleSettingsWithViewModel:viewModel];

  scheduleSettings = [(SCLPhoneSettingsViewController *)self scheduleSettings];
  v8 = [scheduleSettings isEqual:v6];

  if ((v8 & 1) == 0)
  {
    v9 = scl_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_26486D000, v9, OS_LOG_TYPE_DEFAULT, "Updated schedule: %@", &buf, 0xCu);
    }

    [(SCLPhoneSettingsViewController *)self setScheduleSettings:v6];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = *MEMORY[0x277D767B0];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__SCLPhoneSettingsViewController_updateSchedule__block_invoke;
    v16[3] = &unk_279B6F280;
    v16[4] = &buf;
    v11 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:@"Commit Schooltime Schedule" expirationHandler:v16];
    *(*(&buf + 1) + 24) = v11;

    schoolMode = [(SCLPhoneSettingsViewController *)self schoolMode];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__SCLPhoneSettingsViewController_updateSchedule__block_invoke_67;
    v15[3] = &unk_279B6F2A8;
    v15[4] = &buf;
    [schoolMode applyScheduleSettings:v6 completion:v15];

    viewModel2 = [(SCLPhoneSettingsViewController *)self viewModel];
    SCLLogViewModelCommit(viewModel2, v6);

    _Block_object_dispose(&buf, 8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__SCLPhoneSettingsViewController_updateSchedule__block_invoke(uint64_t a1)
{
  v2 = scl_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__SCLPhoneSettingsViewController_updateSchedule__block_invoke_cold_1(v2);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x277D767B0];
}

void __48__SCLPhoneSettingsViewController_updateSchedule__block_invoke_67(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_ERROR;
  }

  v7 = scl_framework_log();
  if (os_log_type_enabled(v7, v6))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_26486D000, v7, v6, "Applied settings: %{BOOL}u; %@", v10, 0x12u);
  }

  v8 = [MEMORY[0x277D75128] sharedApplication];
  [v8 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setSpecifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_26486D000, a2, OS_LOG_TYPE_FAULT, "Associated device is not an NRDevice: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__SCLPhoneSettingsViewController_loadSpecifierSource__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26486D000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch items with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end