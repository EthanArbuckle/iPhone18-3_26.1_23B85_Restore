@interface STDeviceBedtimeListController
- (STDeviceBedtimeListController)init;
- (id)_createDefaultCustomScheduleFromSimpleSchedule:(id)schedule;
- (id)_customScheduleTime:(id)time;
- (id)_deviceBedtimeSpecifierWithBedtime:(id)bedtime downtimeGroupSpecifier:(id)specifier;
- (id)_simpleScheduleTime:(id)time;
- (id)askForMoreTime:(id)time;
- (id)atDowntimeFooterText;
- (id)deviceBedtimeEnabled:(id)enabled;
- (id)specifiers;
- (id)timeFooterText;
- (void)_actuallyToggleDowntimeEnabled;
- (void)_saveDowntimeAndReloadSpecifiers:(BOOL)specifiers;
- (void)_showCustomizeDailyScheduleListController:(id)controller;
- (void)_showEditSimpleScheduleListController:(id)controller;
- (void)_toggleDowntimeEnabled;
- (void)customizeDailyScheduleListController:(id)controller didSaveDailySchedule:(id)schedule forWeekdayIndex:(unint64_t)index;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scheduleDowntimeRefreshAndReloadSpecifiers;
- (void)scheduleDowntimeRefreshIfNeeded;
- (void)setAskForMoreTime:(id)time specifier:(id)specifier;
- (void)setCoordinator:(id)coordinator;
- (void)setDeviceBedtimeEnabled:(id)enabled specifier:(id)specifier;
- (void)simpleScheduleListController:(id)controller didSaveSimpleSchedule:(id)schedule;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STDeviceBedtimeListController

- (STDeviceBedtimeListController)init
{
  v26.receiver = self;
  v26.super_class = STDeviceBedtimeListController;
  v2 = [(STDeviceBedtimeListController *)&v26 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [v3 localizedStringForKey:@"DeviceDowntimeSpecifierName" value:&stru_28766E5A8 table:0];
    [(STDeviceBedtimeListController *)v2 setTitle:v4];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    standaloneWeekdaySymbols = [currentCalendar standaloneWeekdaySymbols];
    v7 = [standaloneWeekdaySymbols count];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v10 = [currentCalendar firstWeekday] - 1;
    v11 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, v7}];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__STDeviceBedtimeListController_init__block_invoke;
    v20[3] = &unk_279B7D6E0;
    v24 = v10;
    v25 = v7;
    v12 = v8;
    v21 = v12;
    v13 = v9;
    v22 = v13;
    v23 = standaloneWeekdaySymbols;
    v14 = standaloneWeekdaySymbols;
    [v11 enumerateIndexesUsingBlock:v20];
    orderedLocalizedWeekdayNames = v2->_orderedLocalizedWeekdayNames;
    v2->_orderedLocalizedWeekdayNames = v13;
    v16 = v13;

    orderedWeekdayIndexes = v2->_orderedWeekdayIndexes;
    v2->_orderedWeekdayIndexes = v12;
    v18 = v12;

    [(STDeviceBedtimeListController *)v2 scheduleDowntimeRefreshIfNeeded];
  }

  return v2;
}

void __37__STDeviceBedtimeListController_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 56) + a2) % *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [v4 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) objectAtIndexedSubscript:v3];
  [v6 addObject:v7];
}

- (void)scheduleDowntimeRefreshAndReloadSpecifiers
{
  [(STDeviceBedtimeListController *)self scheduleDowntimeRefreshIfNeeded];

  [(STDeviceBedtimeListController *)self reloadSpecifiers];
}

- (void)scheduleDowntimeRefreshIfNeeded
{
  downtimeScheduleRefreshTimer = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];

  if (downtimeScheduleRefreshTimer)
  {
    downtimeScheduleRefreshTimer2 = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];
    [downtimeScheduleRefreshTimer2 invalidate];

    [(STDeviceBedtimeListController *)self setDowntimeScheduleRefreshTimer:0];
  }

  coordinator = [(STDeviceBedtimeListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  [timeAllowancesCoordinator timeToNextExpectedStateChange];
  v8 = v7;

  if (v8 >= 0.0)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277CBEBB8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __64__STDeviceBedtimeListController_scheduleDowntimeRefreshIfNeeded__block_invoke;
    v14 = &unk_279B7CC90;
    objc_copyWeak(&v15, &location);
    v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:&v11 block:v8];
    [(STDeviceBedtimeListController *)self setDowntimeScheduleRefreshTimer:v10, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __64__STDeviceBedtimeListController_scheduleDowntimeRefreshIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleDowntimeRefreshAndReloadSpecifiers];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    [(STDeviceBedtimeListController *)self reloadSpecifiers];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STDeviceBedtimeListController.viewWillAppear", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = STDeviceBedtimeListController;
  [(STDeviceBedtimeListController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STDeviceBedtimeListController;
  [(STDeviceBedtimeListController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/DOWNTIME"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"DeviceDowntimeSpecifierName" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STDeviceBedtimeListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (id)specifiers
{
  v103 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    bedtime = [(STDeviceBedtimeListController *)self bedtime];
    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = [v7 localizedStringForKey:@"DeviceDowntimeTitleFooterText" value:&stru_28766E5A8 table:0];
    v9 = *MEMORY[0x277D3FF88];
    [st_emptyGroupSpecifier setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v90 = st_emptyGroupSpecifier;
    [(STDeviceBedtimeListController *)self setInformativeTextGroupSpecifier:st_emptyGroupSpecifier];
    st_emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [(STDeviceBedtimeListController *)self setDownTimeGroupSpecifier:?];
    bedtime2 = [(STDeviceBedtimeListController *)self bedtime];
    downTimeGroupSpecifier = [(STDeviceBedtimeListController *)self downTimeGroupSpecifier];
    v12 = [(STDeviceBedtimeListController *)self _deviceBedtimeSpecifierWithBedtime:bedtime2 downtimeGroupSpecifier:downTimeGroupSpecifier];

    v91 = v12;
    [(STDeviceBedtimeListController *)self setDeviceBedtimeSpecifier:v12];
    st_emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v14 = [v7 localizedStringForKey:@"DeviceDowntimeScheduledFooterText" value:&stru_28766E5A8 table:0];
    [st_emptyGroupSpecifier3 setObject:v14 forKeyedSubscript:v9];

    v88 = st_emptyGroupSpecifier3;
    [(STDeviceBedtimeListController *)self setScheduleSwitchGroupSpecifier:st_emptyGroupSpecifier3];
    v87 = [v7 localizedStringForKey:@"DeviceDowntimeScheduledSpecifierName" value:&stru_28766E5A8 table:0];
    v86 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(STDeviceBedtimeListController *)self setScheduledSwitchSpecifier:?];
    st_emptyGroupSpecifier4 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    atDowntimeFooterText = [(STDeviceBedtimeListController *)self atDowntimeFooterText];
    [st_emptyGroupSpecifier4 setObject:atDowntimeFooterText forKeyedSubscript:v9];

    v85 = st_emptyGroupSpecifier4;
    [(STDeviceBedtimeListController *)self setAtBedtimeGroupSpecifier:st_emptyGroupSpecifier4];
    v84 = [v7 localizedStringForKey:@"BlockAtDowntime" value:&stru_28766E5A8 table:0];
    v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    v83 = v17;
    [(STDeviceBedtimeListController *)self setAtBedtimeSpecifier:v17];
    if ([bedtime deviceBedtimeEnabled])
    {
      v80 = bedtime;
      v78 = v3;
      st_emptyGroupSpecifier5 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
      [(STDeviceBedtimeListController *)self setScheduleTypeGroupSpecifier:?];
      v76 = [v7 localizedStringForKey:@"DeviceDowntimeEveryDaySpecifierName" value:&stru_28766E5A8 table:0];
      v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
      v19 = *MEMORY[0x277D3FF38];
      v20 = MEMORY[0x277CBEC38];
      [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      v75 = v18;
      [(STDeviceBedtimeListController *)self setEveryDaySpecifier:v18];
      v74 = [v7 localizedStringForKey:@"DeviceDowntimeCustomizeDaysSpecifierName" value:&stru_28766E5A8 table:0];
      v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
      v92 = v19;
      [v21 setObject:v20 forKeyedSubscript:v19];
      v73 = v21;
      [(STDeviceBedtimeListController *)self setCustomizeDaysSpecifier:v21];
      st_emptyGroupSpecifier6 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
      timeFooterText = [(STDeviceBedtimeListController *)self timeFooterText];
      [st_emptyGroupSpecifier6 setObject:timeFooterText forKeyedSubscript:v9];

      v72 = st_emptyGroupSpecifier6;
      [(STDeviceBedtimeListController *)self setTimeGroupSpecifier:st_emptyGroupSpecifier6];
      v79 = v7;
      v71 = [v7 localizedStringForKey:@"DeviceDowntimeDailyScheduleSpecifierName" value:&stru_28766E5A8 table:0];
      v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
      [v24 setControllerLoadAction:sel__showEditSimpleScheduleListController_];
      v70 = v24;
      [(STDeviceBedtimeListController *)self setDailyScheduleSpecifier:v24];
      orderedLocalizedWeekdayNames = [(STDeviceBedtimeListController *)self orderedLocalizedWeekdayNames];
      v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(orderedLocalizedWeekdayNames, "count")}];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v27 = orderedLocalizedWeekdayNames;
      v28 = [v27 countByEnumeratingWithState:&v97 objects:v102 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v98;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v98 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:*(*(&v97 + 1) + 8 * i) target:self set:0 get:sel__customScheduleTime_ detail:0 cell:2 edit:0];
            [v32 setControllerLoadAction:sel__showCustomizeDailyScheduleListController_];
            [v26 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v97 objects:v102 count:16];
        }

        while (v29);
      }

      [(STDeviceBedtimeListController *)self setWeekdaySpecifiers:v26];
      v68 = objc_alloc(MEMORY[0x277CBEB18]);
      informativeTextGroupSpecifier = [(STDeviceBedtimeListController *)self informativeTextGroupSpecifier];
      downTimeGroupSpecifier2 = [(STDeviceBedtimeListController *)self downTimeGroupSpecifier];
      deviceBedtimeSpecifier = [(STDeviceBedtimeListController *)self deviceBedtimeSpecifier];
      scheduleSwitchGroupSpecifier = [(STDeviceBedtimeListController *)self scheduleSwitchGroupSpecifier];
      scheduledSwitchSpecifier = [(STDeviceBedtimeListController *)self scheduledSwitchSpecifier];
      scheduleTypeGroupSpecifier = [(STDeviceBedtimeListController *)self scheduleTypeGroupSpecifier];
      everyDaySpecifier = [(STDeviceBedtimeListController *)self everyDaySpecifier];
      customizeDaysSpecifier = [(STDeviceBedtimeListController *)self customizeDaysSpecifier];
      timeGroupSpecifier = [(STDeviceBedtimeListController *)self timeGroupSpecifier];
      v69 = [v68 initWithObjects:{informativeTextGroupSpecifier, downTimeGroupSpecifier2, deviceBedtimeSpecifier, scheduleSwitchGroupSpecifier, scheduledSwitchSpecifier, scheduleTypeGroupSpecifier, everyDaySpecifier, customizeDaysSpecifier, timeGroupSpecifier, 0}];

      bedtime = v80;
      scheduleByWeekdayIndex = [v80 scheduleByWeekdayIndex];

      if (scheduleByWeekdayIndex)
      {
        weekdaySpecifiers = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
        v42 = v69;
        [v69 addObjectsFromArray:weekdaySpecifiers];
      }

      else
      {
        weekdaySpecifiers = [(STDeviceBedtimeListController *)self dailyScheduleSpecifier];
        v42 = v69;
        [v69 addObject:weekdaySpecifiers];
      }

      v3 = v78;
      v57 = v91;

      v56 = v79;
      if ([(STDeviceBedtimeListController *)self canAskForMoreTime])
      {
        atBedtimeGroupSpecifier = [(STDeviceBedtimeListController *)self atBedtimeGroupSpecifier];
        [v42 addObject:atBedtimeGroupSpecifier];

        atBedtimeSpecifier = [(STDeviceBedtimeListController *)self atBedtimeSpecifier];
        [v42 addObject:atBedtimeSpecifier];
      }

      if (([v80 shouldAllowEditing] & 1) == 0)
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v60 = v42;
        v61 = [v60 countByEnumeratingWithState:&v93 objects:v101 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v94;
          v64 = MEMORY[0x277CBEC28];
          do
          {
            for (j = 0; j != v62; ++j)
            {
              if (*v94 != v63)
              {
                objc_enumerationMutation(v60);
              }

              [*(*(&v93 + 1) + 8 * j) setObject:v64 forKeyedSubscript:v92];
            }

            v62 = [v60 countByEnumeratingWithState:&v93 objects:v101 count:16];
          }

          while (v62);
        }

        v56 = v79;
        bedtime = v80;
        v57 = v91;
      }

      v66 = *(&self->super.super.super.super.super.isa + v78);
      *(&self->super.super.super.super.super.isa + v78) = v42;

      v55 = st_emptyGroupSpecifier2;
      v54 = v90;
    }

    else
    {
      v43 = v7;
      v44 = objc_alloc(MEMORY[0x277CBEB18]);
      informativeTextGroupSpecifier2 = [(STDeviceBedtimeListController *)self informativeTextGroupSpecifier];
      downTimeGroupSpecifier3 = [(STDeviceBedtimeListController *)self downTimeGroupSpecifier];
      deviceBedtimeSpecifier2 = [(STDeviceBedtimeListController *)self deviceBedtimeSpecifier];
      scheduleSwitchGroupSpecifier2 = [(STDeviceBedtimeListController *)self scheduleSwitchGroupSpecifier];
      scheduledSwitchSpecifier2 = [(STDeviceBedtimeListController *)self scheduledSwitchSpecifier];
      v50 = [v44 initWithObjects:{informativeTextGroupSpecifier2, downTimeGroupSpecifier3, deviceBedtimeSpecifier2, scheduleSwitchGroupSpecifier2, scheduledSwitchSpecifier2, 0}];

      if ([(STDeviceBedtimeListController *)self canAskForMoreTime])
      {
        atBedtimeGroupSpecifier2 = [(STDeviceBedtimeListController *)self atBedtimeGroupSpecifier];
        [v50 addObject:atBedtimeGroupSpecifier2];

        atBedtimeSpecifier2 = [(STDeviceBedtimeListController *)self atBedtimeSpecifier];
        [v50 addObject:atBedtimeSpecifier2];
      }

      v53 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v50;

      v55 = st_emptyGroupSpecifier2;
      v54 = v90;
      v56 = v43;
      v57 = v91;
    }

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_deviceBedtimeSpecifierWithBedtime:(id)bedtime downtimeGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bedtimeCopy = bedtime;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  deviceBedtimeEnabled = [bedtimeCopy deviceBedtimeEnabled];
  affectedUser = [(STDeviceBedtimeListController *)self affectedUser];
  isRemoteUser = [affectedUser isRemoteUser];
  askForMoreTime = [bedtimeCopy askForMoreTime];

  coordinator = [(STDeviceBedtimeListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  isDowntimeActive = [timeAllowancesCoordinator isDowntimeActive];

  v16 = MEMORY[0x277D3FAD8];
  if (isDowntimeActive)
  {
    if (deviceBedtimeEnabled)
    {
      v17 = @"DeviceDowntimeDisableButtonWithScheduleName";
    }

    else
    {
      v17 = @"DeviceDowntimeDisableButtonWithoutScheduleName";
    }

    if (deviceBedtimeEnabled)
    {
      v18 = @"WithSchedule";
    }

    else
    {
      v18 = @"WithoutSchedule";
    }

    v19 = [v8 localizedStringForKey:v17 value:&stru_28766E5A8 table:0];
    v20 = [v16 deleteButtonSpecifierWithName:v19 target:self action:sel__toggleDowntimeEnabled];

    [v20 setObject:&unk_28769D250 forKeyedSubscript:*MEMORY[0x277D3FD78]];
    v21 = @"RemoteUser";
    if (!isRemoteUser)
    {
      v21 = @"LocalUser";
    }

    v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"DeviceDowntimeDisableButton%@%@Footer", v21, v18];
    v23 = MEMORY[0x277CCACA8];
    v24 = [v8 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
    givenName = [affectedUser givenName];
    v26 = [v23 localizedStringWithFormat:v24, givenName];
    [specifierCopy setObject:v26 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  else
  {
    if (deviceBedtimeEnabled)
    {
      v27 = @"DeviceDowntimeEnableButtonWithScheduleName";
    }

    else
    {
      v27 = @"DeviceDowntimeEnableButtonWithoutScheduleName";
    }

    if (deviceBedtimeEnabled)
    {
      v28 = @"WithSchedule";
    }

    else
    {
      v28 = @"WithoutSchedule";
    }

    v29 = [v8 localizedStringForKey:v27 value:&stru_28766E5A8 table:0];
    v20 = [v16 preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v30 = @"BlockedUser";
    if (!askForMoreTime)
    {
      v30 = @"UnblockedUser";
    }

    v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"DeviceDowntimeEnableButton%@%@Footer", v30, v28];
    v31 = [v8 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
    [specifierCopy setObject:v31 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v20 setButtonAction:sel__toggleDowntimeEnabled];
  }

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];

  return v20;
}

- (void)_saveDowntimeAndReloadSpecifiers:(BOOL)specifiers
{
  specifiersCopy = specifiers;
  coordinator = [(STDeviceBedtimeListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    coordinator2 = [(STDeviceBedtimeListController *)self coordinator];
    timeAllowancesCoordinator2 = [coordinator2 timeAllowancesCoordinator];
    bedtime = [(STDeviceBedtimeListController *)self bedtime];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__STDeviceBedtimeListController__saveDowntimeAndReloadSpecifiers___block_invoke;
    v11[3] = &unk_279B7D090;
    v12 = specifiersCopy;
    v11[4] = self;
    [timeAllowancesCoordinator2 saveDeviceBedtime:bedtime completionHandler:v11];
  }

  else if (specifiersCopy)
  {

    [(STDeviceBedtimeListController *)self reloadSpecifiers];
  }
}

void __66__STDeviceBedtimeListController__saveDowntimeAndReloadSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __66__STDeviceBedtimeListController__saveDowntimeAndReloadSpecifiers___block_invoke_cold_1(v3);
  }

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) reloadSpecifiers];
  }
}

- (void)simpleScheduleListController:(id)controller didSaveSimpleSchedule:(id)schedule
{
  scheduleCopy = schedule;
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  [bedtime setSimpleSchedule:scheduleCopy];

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];

  [(STDeviceBedtimeListController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)customizeDailyScheduleListController:(id)controller didSaveDailySchedule:(id)schedule forWeekdayIndex:(unint64_t)index
{
  scheduleCopy = schedule;
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  scheduleByWeekdayIndex = [bedtime scheduleByWeekdayIndex];
  v29 = [scheduleByWeekdayIndex mutableCopy];

  if (!v29)
  {
    bedtime2 = [(STDeviceBedtimeListController *)self bedtime];
    simpleSchedule = [bedtime2 simpleSchedule];
    v29 = [(STDeviceBedtimeListController *)self _createDefaultCustomScheduleFromSimpleSchedule:simpleSchedule];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [v29 setObject:scheduleCopy forKeyedSubscript:v12];

  orderedWeekdayIndexes = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
  v14 = [orderedWeekdayIndexes count];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(index + 1) % v14];
  endTime = [scheduleCopy endTime];
  startTime = [scheduleCopy startTime];

  v18 = STCompareHourMinuteTimeComponents();
  if (v18 == 1)
  {
    v19 = [v29 objectForKeyedSubscript:v15];
    v20 = v19;
    if (v19 && ([v19 startTime], v21 = objc_claimAutoreleasedReturnValue(), v22 = STCompareHourMinuteTimeComponents(), v21, v22 == 1))
    {
      [v20 setStartTime:endTime];
      [v29 setObject:v20 forKeyedSubscript:v15];
    }

    else
    {
      LODWORD(v22) = 0;
    }
  }

  else
  {
    LODWORD(v22) = 0;
  }

  bedtime3 = [(STDeviceBedtimeListController *)self bedtime];
  [bedtime3 setScheduleByWeekdayIndex:v29];

  weekdaySpecifiers = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v26 = [orderedWeekdayIndexes indexOfObject:v25];

  v27 = [weekdaySpecifiers objectAtIndexedSubscript:v26];
  [(STDeviceBedtimeListController *)self reloadSpecifier:v27];

  if (v22)
  {
    v28 = [weekdaySpecifiers objectAtIndexedSubscript:{objc_msgSend(orderedWeekdayIndexes, "indexOfObject:", v15)}];
    [(STDeviceBedtimeListController *)self reloadSpecifier:v28];
  }

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];
  [(STDeviceBedtimeListController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)dealloc
{
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" context:@"TimeAllowanceViewModelBlueprintContext"];
  downtimeScheduleRefreshTimer = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];

  if (downtimeScheduleRefreshTimer)
  {
    downtimeScheduleRefreshTimer2 = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];
    [downtimeScheduleRefreshTimer2 invalidate];
  }

  v5.receiver = self;
  v5.super_class = STDeviceBedtimeListController;
  [(STDeviceBedtimeListController *)&v5 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = self->_coordinator;
  if (coordinator != coordinatorCopy)
  {
    v7 = coordinatorCopy;
    [(STRootViewModelCoordinator *)coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" context:@"TimeAllowanceViewModelBlueprintContext"];
    objc_storeStrong(&self->_coordinator, coordinator);
    coordinator = [(STRootViewModelCoordinator *)self->_coordinator addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" options:0 context:@"TimeAllowanceViewModelBlueprintContext"];
    coordinatorCopy = v7;
  }

  MEMORY[0x2821F96F8](coordinator, coordinatorCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"TimeAllowanceViewModelBlueprintContext")
  {
    if ([(STDeviceBedtimeListController *)self isViewLoaded:path])
    {
      view = [(STDeviceBedtimeListController *)self view];
      window = [view window];

      if (window)
      {
        coordinator = [(STDeviceBedtimeListController *)self coordinator];
        timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
        viewModel = [timeAllowancesCoordinator viewModel];
        bedtime = [viewModel bedtime];

        v12 = bedtime;
        if (bedtime)
        {
          [(STDeviceBedtimeListController *)self setBedtime:bedtime];
          [(STDeviceBedtimeListController *)self reloadSpecifiers];
          [(STDeviceBedtimeListController *)self scheduleDowntimeRefreshIfNeeded];
          v12 = bedtime;
        }
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = STDeviceBedtimeListController;
    [(STDeviceBedtimeListController *)&v14 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setDeviceBedtimeEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  bedtime = [(STDeviceBedtimeListController *)self bedtime];

  if (!bedtime)
  {
    v6 = objc_opt_new();
    [v6 setAskForMoreTime:{-[STDeviceBedtimeListController canAskForMoreTime](self, "canAskForMoreTime")}];
    [(STDeviceBedtimeListController *)self setBedtime:v6];
  }

  bOOLValue = [enabledCopy BOOLValue];
  bedtime2 = [(STDeviceBedtimeListController *)self bedtime];
  [bedtime2 setDeviceBedtimeEnabled:bOOLValue];

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];
}

- (id)deviceBedtimeEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  v5 = [v3 numberWithBool:{objc_msgSend(bedtime, "deviceBedtimeEnabled")}];

  return v5;
}

- (id)_createDefaultCustomScheduleFromSimpleSchedule:(id)schedule
{
  v23 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  orderedWeekdayIndexes = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
  startTime = [scheduleCopy startTime];
  v17 = scheduleCopy;
  endTime = [scheduleCopy endTime];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(orderedWeekdayIndexes, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = orderedWeekdayIndexes;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = objc_opt_new();
        [v15 setStartTime:startTime];
        [v15 setEndTime:endTime];
        [v15 setDay:{objc_msgSend(v14, "unsignedIntegerValue")}];
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)_toggleDowntimeEnabled
{
  mEMORY[0x277D4B898] = [MEMORY[0x277D4B898] sharedController];
  viewContext = [mEMORY[0x277D4B898] viewContext];

  v5 = objc_alloc(MEMORY[0x277D4BAE0]);
  affectedUser = [(STDeviceBedtimeListController *)self affectedUser];
  dsid = [affectedUser dsid];
  v8 = [v5 initWithDSID:dsid];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__STDeviceBedtimeListController__toggleDowntimeEnabled__block_invoke;
  v11[3] = &unk_279B7D708;
  v12 = v8;
  v13 = viewContext;
  selfCopy = self;
  v9 = viewContext;
  v10 = v8;
  [v9 performBlockAndWait:v11];
}

void __55__STDeviceBedtimeListController__toggleDowntimeEnabled__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D4B988];
  v3 = [*(a1 + 32) dsid];
  v4 = *(a1 + 40);
  v9 = 0;
  v5 = [v2 fetchUserWithDSID:v3 inContext:v4 error:&v9];
  v6 = v9;

  v7 = [[STIOSAlertPresenter alloc] initWithPresentingViewController:*(a1 + 48)];
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__STDeviceBedtimeListController__toggleDowntimeEnabled__block_invoke_2;
    v8[3] = &unk_279B7C998;
    v8[4] = *(a1 + 48);
    [STTimeAllowancesCompatibilityController showOnDemandDowntimeCompatibilityAlertIfNeededForUser:v5 alertPresenter:v7 completionHandler:v8];
  }

  else
  {
    [*(a1 + 48) _actuallyToggleDowntimeEnabled];
  }
}

- (void)_actuallyToggleDowntimeEnabled
{
  coordinator = [(STDeviceBedtimeListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    coordinator2 = [(STDeviceBedtimeListController *)self coordinator];
    timeAllowancesCoordinator2 = [coordinator2 timeAllowancesCoordinator];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__STDeviceBedtimeListController__actuallyToggleDowntimeEnabled__block_invoke;
    v8[3] = &unk_279B7CC18;
    v8[4] = self;
    [timeAllowancesCoordinator2 toggleDowntimeWithCompletionHandler:v8];
  }

  else
  {

    [(STDeviceBedtimeListController *)self reloadSpecifiers];
  }
}

- (id)_simpleScheduleTime:(id)time
{
  v4 = MEMORY[0x277D4B928];
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  simpleSchedule = [bedtime simpleSchedule];
  startTime = [simpleSchedule startTime];
  bedtime2 = [(STDeviceBedtimeListController *)self bedtime];
  simpleSchedule2 = [bedtime2 simpleSchedule];
  endTime = [simpleSchedule2 endTime];
  v11 = [v4 simpleScheduleTimeRangeWithStartTimeComponents:startTime endTimeComponents:endTime];

  return v11;
}

- (void)_showEditSimpleScheduleListController:(id)controller
{
  controllerCopy = controller;
  v11 = objc_opt_new();
  [v11 setParentController:self];
  rootController = [(STDeviceBedtimeListController *)self rootController];
  [v11 setRootController:rootController];

  [v11 setSpecifier:controllerCopy];
  v6 = [STSimpleScheduleListController alloc];
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  simpleSchedule = [bedtime simpleSchedule];
  v9 = [(STSimpleScheduleListController *)v6 initWithSimpleSchedule:simpleSchedule];

  [(STSimpleScheduleListController *)v9 setDelegate:self];
  [(STSimpleScheduleListController *)v9 setParentController:v11];
  rootController2 = [v11 rootController];
  [(STSimpleScheduleListController *)v9 setRootController:rootController2];

  [(STSimpleScheduleListController *)v9 setSpecifier:controllerCopy];
  [v11 showController:v9];
  [(STDeviceBedtimeListController *)self showController:v11];
}

- (id)_customScheduleTime:(id)time
{
  timeCopy = time;
  weekdaySpecifiers = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
  v6 = [weekdaySpecifiers indexOfObject:timeCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[STScreenTimeSettingsUIBundle bundle];
    orderedWeekdayIndexes = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
    v10 = [orderedWeekdayIndexes objectAtIndexedSubscript:v6];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    bedtime = [(STDeviceBedtimeListController *)self bedtime];
    scheduleByWeekdayIndex = [bedtime scheduleByWeekdayIndex];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    v15 = [scheduleByWeekdayIndex objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = MEMORY[0x277D4B928];
      startTime = [v15 startTime];
      endTime = [v15 endTime];
      v7 = [v16 simpleScheduleTimeRangeWithStartTimeComponents:startTime endTimeComponents:endTime];
    }

    else
    {
      v7 = [v8 localizedStringForKey:@"DeviceDowntimeDailyScheduleOff" value:&stru_28766E5A8 table:0];
    }
  }

  return v7;
}

- (void)_showCustomizeDailyScheduleListController:(id)controller
{
  controllerCopy = controller;
  weekdaySpecifiers = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
  v5 = [weekdaySpecifiers indexOfObject:controllerCopy];

  orderedWeekdayIndexes = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
  v7 = [orderedWeekdayIndexes objectAtIndexedSubscript:v5];
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  scheduleByWeekdayIndex = [bedtime scheduleByWeekdayIndex];

  v24 = [scheduleByWeekdayIndex objectForKeyedSubscript:v7];
  unsignedIntegerValue = [v7 unsignedIntegerValue];
  v11 = unsignedIntegerValue;
  if (!unsignedIntegerValue)
  {
    unsignedIntegerValue = [orderedWeekdayIndexes count];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue - 1];
  v13 = [scheduleByWeekdayIndex objectForKeyedSubscript:v12];

  endTime = [v13 endTime];
  v25 = orderedWeekdayIndexes;
  if (v13 && ([v13 startTime], v15 = objc_claimAutoreleasedReturnValue(), v16 = STCompareHourMinuteTimeComponents(), v15, v16 == 1))
  {
    v17 = endTime;
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_opt_new();
  [v18 setParentController:self];
  rootController = [(STDeviceBedtimeListController *)self rootController];
  [v18 setRootController:rootController];

  [v18 setSpecifier:controllerCopy];
  v20 = [STCustomizeDailyScheduleListController alloc];
  name = [controllerCopy name];
  v22 = [(STCustomizeDailyScheduleListController *)v20 initWithDailySchedule:v24 weekdayIndex:v11 weekdayName:name minimumStartTime:v17];

  [(STCustomizeDailyScheduleListController *)v22 setDelegate:self];
  [(STCustomizeDailyScheduleListController *)v22 setParentController:v18];
  rootController2 = [v18 rootController];
  [(STCustomizeDailyScheduleListController *)v22 setRootController:rootController2];

  [(STCustomizeDailyScheduleListController *)v22 setSpecifier:controllerCopy];
  [v18 showController:v22];
  [(STDeviceBedtimeListController *)self showController:v18];
}

- (id)timeFooterText
{
  affectedUser = [(STDeviceBedtimeListController *)self affectedUser];
  if ([affectedUser isRemoteUser])
  {
    givenName = [affectedUser givenName];
    if (givenName)
    {
      v5 = givenName;
      v6 = MEMORY[0x277CCACA8];
      v7 = +[STScreenTimeSettingsUIBundle bundle];
      v8 = [v7 localizedStringForKey:@"DeviceDowntimeScheduleFooterTextRemote" value:&stru_28766E5A8 table:0];
      v9 = [v6 localizedStringWithFormat:v8, v5];

      goto LABEL_8;
    }
  }

  else
  {
    coordinator = [(STDeviceBedtimeListController *)self coordinator];
    viewModel = [coordinator viewModel];
    isCloudSyncEnabled = [viewModel isCloudSyncEnabled];

    if (!isCloudSyncEnabled)
    {
      v13 = +[STScreenTimeSettingsUIBundle bundle];
      v5 = v13;
      v14 = @"DeviceDowntimeScheduleFooterTextLocal";
      goto LABEL_7;
    }
  }

  v13 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = v13;
  v14 = @"DeviceDowntimeScheduleFooterTextCloud";
LABEL_7:
  v9 = [v13 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_8:

  return v9;
}

- (void)setAskForMoreTime:(id)time specifier:(id)specifier
{
  bOOLValue = [time BOOLValue];
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  [bedtime setAskForMoreTime:bOOLValue];

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];
}

- (id)askForMoreTime:(id)time
{
  v3 = MEMORY[0x277CCABB0];
  bedtime = [(STDeviceBedtimeListController *)self bedtime];
  v5 = [v3 numberWithBool:{objc_msgSend(bedtime, "askForMoreTime")}];

  return v5;
}

- (id)atDowntimeFooterText
{
  affectedUser = [(STDeviceBedtimeListController *)self affectedUser];
  if ([affectedUser isRemoteUser])
  {
    name = [affectedUser name];

    if (name)
    {
      v4 = objc_opt_new();
      name2 = [affectedUser name];
      v6 = [v4 personNameComponentsFromString:name2];

      givenName = [v6 givenName];
      if ([givenName length])
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = +[STScreenTimeSettingsUIBundle bundle];
        v10 = [v9 localizedStringForKey:@"AtDowntimeRemoteFooterText" value:&stru_28766E5A8 table:0];
        givenName2 = [v6 givenName];
        v12 = [v8 localizedStringWithFormat:v10, givenName2];

        goto LABEL_9;
      }
    }

    v13 = +[STScreenTimeSettingsUIBundle bundle];
    v6 = v13;
    v14 = @"AtDowntimeRemoteGenericFooterText";
  }

  else
  {
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    v6 = v13;
    v14 = @"AtDowntimeLocalFooterText";
  }

  v12 = [v13 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v33[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = [(STDeviceBedtimeListController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
  }

  dailyScheduleSpecifier = [(STDeviceBedtimeListController *)self dailyScheduleSpecifier];
  everyDaySpecifier = [(STDeviceBedtimeListController *)self everyDaySpecifier];
  customizeDaysSpecifier = [(STDeviceBedtimeListController *)self customizeDaysSpecifier];
  v13 = customizeDaysSpecifier;
  if (v9 == everyDaySpecifier)
  {
    v21 = *MEMORY[0x277D40148];
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    if ([v15 accessoryType] != 3)
    {
      [v15 setAccessoryType:3];
      v20 = [v13 objectForKeyedSubscript:v21];
      [v20 setAccessoryType:0];
      weekdaySpecifiers = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
      v23 = dailyScheduleSpecifier;
      v24 = weekdaySpecifiers;
      v30 = v23;
      v33[0] = v23;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [(STDeviceBedtimeListController *)self replaceContiguousSpecifiers:v24 withSpecifiers:v25 animated:1];

      bedtime = [(STDeviceBedtimeListController *)self bedtime];
      [bedtime setScheduleByWeekdayIndex:0];

      [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:0];
LABEL_12:

      dailyScheduleSpecifier = v30;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v9 == customizeDaysSpecifier)
  {
    v14 = *MEMORY[0x277D40148];
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    if ([v15 accessoryType] != 3)
    {
      [v15 setAccessoryType:3];
      v27 = [everyDaySpecifier objectForKeyedSubscript:v14];
      [v27 setAccessoryType:0];
      bedtime2 = [(STDeviceBedtimeListController *)self bedtime];
      scheduleByWeekdayIndex = [bedtime2 scheduleByWeekdayIndex];

      if (!scheduleByWeekdayIndex)
      {
        simpleSchedule = [bedtime2 simpleSchedule];
        v17 = [(STDeviceBedtimeListController *)self _createDefaultCustomScheduleFromSimpleSchedule:simpleSchedule];
        [bedtime2 setScheduleByWeekdayIndex:v17];
      }

      v30 = dailyScheduleSpecifier;
      v32 = dailyScheduleSpecifier;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      weekdaySpecifiers2 = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
      [(STDeviceBedtimeListController *)self replaceContiguousSpecifiers:v18 withSpecifiers:weekdaySpecifiers2 animated:1];

      v20 = v27;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
  v31.receiver = self;
  v31.super_class = STDeviceBedtimeListController;
  [(STDeviceBedtimeListController *)&v31 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  everyDaySpecifier = [(STDeviceBedtimeListController *)self everyDaySpecifier];
  v9 = [(STDeviceBedtimeListController *)self indexPathForSpecifier:everyDaySpecifier];
  v10 = [pathCopy isEqual:v9];

  if (v10)
  {
    bedtime = [(STDeviceBedtimeListController *)self bedtime];
    scheduleByWeekdayIndex = [bedtime scheduleByWeekdayIndex];

    if (scheduleByWeekdayIndex)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    customizeDaysSpecifier = [(STDeviceBedtimeListController *)self customizeDaysSpecifier];
    v15 = [(STDeviceBedtimeListController *)self indexPathForSpecifier:customizeDaysSpecifier];
    v16 = [pathCopy isEqual:v15];

    if (!v16)
    {
      goto LABEL_10;
    }

    bedtime2 = [(STDeviceBedtimeListController *)self bedtime];
    scheduleByWeekdayIndex2 = [bedtime2 scheduleByWeekdayIndex];

    if (scheduleByWeekdayIndex2)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

  [cellCopy setAccessoryType:v13];
LABEL_10:
}

void __66__STDeviceBedtimeListController__saveDowntimeAndReloadSpecifiers___block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error saving device bedtime: %@", &v1, 0xCu);
}

@end