@interface STDeviceBedtimeListController
- (STDeviceBedtimeListController)init;
- (id)_createDefaultCustomScheduleFromSimpleSchedule:(id)a3;
- (id)_customScheduleTime:(id)a3;
- (id)_deviceBedtimeSpecifierWithBedtime:(id)a3 downtimeGroupSpecifier:(id)a4;
- (id)_simpleScheduleTime:(id)a3;
- (id)askForMoreTime:(id)a3;
- (id)atDowntimeFooterText;
- (id)deviceBedtimeEnabled:(id)a3;
- (id)specifiers;
- (id)timeFooterText;
- (void)_actuallyToggleDowntimeEnabled;
- (void)_saveDowntimeAndReloadSpecifiers:(BOOL)a3;
- (void)_showCustomizeDailyScheduleListController:(id)a3;
- (void)_showEditSimpleScheduleListController:(id)a3;
- (void)_toggleDowntimeEnabled;
- (void)customizeDailyScheduleListController:(id)a3 didSaveDailySchedule:(id)a4 forWeekdayIndex:(unint64_t)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scheduleDowntimeRefreshAndReloadSpecifiers;
- (void)scheduleDowntimeRefreshIfNeeded;
- (void)setAskForMoreTime:(id)a3 specifier:(id)a4;
- (void)setCoordinator:(id)a3;
- (void)setDeviceBedtimeEnabled:(id)a3 specifier:(id)a4;
- (void)simpleScheduleListController:(id)a3 didSaveSimpleSchedule:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
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

    v5 = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [v5 standaloneWeekdaySymbols];
    v7 = [v6 count];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v10 = [v5 firstWeekday] - 1;
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
    v23 = v6;
    v14 = v6;
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
  v3 = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];

  if (v3)
  {
    v4 = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];
    [v4 invalidate];

    [(STDeviceBedtimeListController *)self setDowntimeScheduleRefreshTimer:0];
  }

  v5 = [(STDeviceBedtimeListController *)self coordinator];
  v6 = [v5 timeAllowancesCoordinator];
  [v6 timeToNextExpectedStateChange];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
  [(STDeviceBedtimeListController *)&v5 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STDeviceBedtimeListController;
  [(STDeviceBedtimeListController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/DOWNTIME"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"DeviceDowntimeSpecifierName" table:@"Localizable" locale:v6 bundleURL:v8];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:v11 bundleURL:v13];

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
    v5 = [(STDeviceBedtimeListController *)self bedtime];
    v6 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = [v7 localizedStringForKey:@"DeviceDowntimeTitleFooterText" value:&stru_28766E5A8 table:0];
    v9 = *MEMORY[0x277D3FF88];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v90 = v6;
    [(STDeviceBedtimeListController *)self setInformativeTextGroupSpecifier:v6];
    v89 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [(STDeviceBedtimeListController *)self setDownTimeGroupSpecifier:?];
    v10 = [(STDeviceBedtimeListController *)self bedtime];
    v11 = [(STDeviceBedtimeListController *)self downTimeGroupSpecifier];
    v12 = [(STDeviceBedtimeListController *)self _deviceBedtimeSpecifierWithBedtime:v10 downtimeGroupSpecifier:v11];

    v91 = v12;
    [(STDeviceBedtimeListController *)self setDeviceBedtimeSpecifier:v12];
    v13 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v14 = [v7 localizedStringForKey:@"DeviceDowntimeScheduledFooterText" value:&stru_28766E5A8 table:0];
    [v13 setObject:v14 forKeyedSubscript:v9];

    v88 = v13;
    [(STDeviceBedtimeListController *)self setScheduleSwitchGroupSpecifier:v13];
    v87 = [v7 localizedStringForKey:@"DeviceDowntimeScheduledSpecifierName" value:&stru_28766E5A8 table:0];
    v86 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(STDeviceBedtimeListController *)self setScheduledSwitchSpecifier:?];
    v15 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v16 = [(STDeviceBedtimeListController *)self atDowntimeFooterText];
    [v15 setObject:v16 forKeyedSubscript:v9];

    v85 = v15;
    [(STDeviceBedtimeListController *)self setAtBedtimeGroupSpecifier:v15];
    v84 = [v7 localizedStringForKey:@"BlockAtDowntime" value:&stru_28766E5A8 table:0];
    v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    v83 = v17;
    [(STDeviceBedtimeListController *)self setAtBedtimeSpecifier:v17];
    if ([v5 deviceBedtimeEnabled])
    {
      v80 = v5;
      v78 = v3;
      v77 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
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
      v22 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
      v23 = [(STDeviceBedtimeListController *)self timeFooterText];
      [v22 setObject:v23 forKeyedSubscript:v9];

      v72 = v22;
      [(STDeviceBedtimeListController *)self setTimeGroupSpecifier:v22];
      v79 = v7;
      v71 = [v7 localizedStringForKey:@"DeviceDowntimeDailyScheduleSpecifierName" value:&stru_28766E5A8 table:0];
      v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
      [v24 setControllerLoadAction:sel__showEditSimpleScheduleListController_];
      v70 = v24;
      [(STDeviceBedtimeListController *)self setDailyScheduleSpecifier:v24];
      v25 = [(STDeviceBedtimeListController *)self orderedLocalizedWeekdayNames];
      v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v25, "count")}];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v27 = v25;
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
      v82 = [(STDeviceBedtimeListController *)self informativeTextGroupSpecifier];
      v81 = [(STDeviceBedtimeListController *)self downTimeGroupSpecifier];
      v33 = [(STDeviceBedtimeListController *)self deviceBedtimeSpecifier];
      v34 = [(STDeviceBedtimeListController *)self scheduleSwitchGroupSpecifier];
      v35 = [(STDeviceBedtimeListController *)self scheduledSwitchSpecifier];
      v36 = [(STDeviceBedtimeListController *)self scheduleTypeGroupSpecifier];
      v37 = [(STDeviceBedtimeListController *)self everyDaySpecifier];
      v38 = [(STDeviceBedtimeListController *)self customizeDaysSpecifier];
      v39 = [(STDeviceBedtimeListController *)self timeGroupSpecifier];
      v69 = [v68 initWithObjects:{v82, v81, v33, v34, v35, v36, v37, v38, v39, 0}];

      v5 = v80;
      v40 = [v80 scheduleByWeekdayIndex];

      if (v40)
      {
        v41 = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
        v42 = v69;
        [v69 addObjectsFromArray:v41];
      }

      else
      {
        v41 = [(STDeviceBedtimeListController *)self dailyScheduleSpecifier];
        v42 = v69;
        [v69 addObject:v41];
      }

      v3 = v78;
      v57 = v91;

      v56 = v79;
      if ([(STDeviceBedtimeListController *)self canAskForMoreTime])
      {
        v58 = [(STDeviceBedtimeListController *)self atBedtimeGroupSpecifier];
        [v42 addObject:v58];

        v59 = [(STDeviceBedtimeListController *)self atBedtimeSpecifier];
        [v42 addObject:v59];
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
        v5 = v80;
        v57 = v91;
      }

      v66 = *(&self->super.super.super.super.super.isa + v78);
      *(&self->super.super.super.super.super.isa + v78) = v42;

      v55 = v89;
      v54 = v90;
    }

    else
    {
      v43 = v7;
      v44 = objc_alloc(MEMORY[0x277CBEB18]);
      v45 = [(STDeviceBedtimeListController *)self informativeTextGroupSpecifier];
      v46 = [(STDeviceBedtimeListController *)self downTimeGroupSpecifier];
      v47 = [(STDeviceBedtimeListController *)self deviceBedtimeSpecifier];
      v48 = [(STDeviceBedtimeListController *)self scheduleSwitchGroupSpecifier];
      v49 = [(STDeviceBedtimeListController *)self scheduledSwitchSpecifier];
      v50 = [v44 initWithObjects:{v45, v46, v47, v48, v49, 0}];

      if ([(STDeviceBedtimeListController *)self canAskForMoreTime])
      {
        v51 = [(STDeviceBedtimeListController *)self atBedtimeGroupSpecifier];
        [v50 addObject:v51];

        v52 = [(STDeviceBedtimeListController *)self atBedtimeSpecifier];
        [v50 addObject:v52];
      }

      v53 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v50;

      v55 = v89;
      v54 = v90;
      v56 = v43;
      v57 = v91;
    }

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_deviceBedtimeSpecifierWithBedtime:(id)a3 downtimeGroupSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v7 deviceBedtimeEnabled];
  v10 = [(STDeviceBedtimeListController *)self affectedUser];
  v11 = [v10 isRemoteUser];
  v12 = [v7 askForMoreTime];

  v13 = [(STDeviceBedtimeListController *)self coordinator];
  v14 = [v13 timeAllowancesCoordinator];
  v15 = [v14 isDowntimeActive];

  v16 = MEMORY[0x277D3FAD8];
  if (v15)
  {
    if (v9)
    {
      v17 = @"DeviceDowntimeDisableButtonWithScheduleName";
    }

    else
    {
      v17 = @"DeviceDowntimeDisableButtonWithoutScheduleName";
    }

    if (v9)
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
    if (!v11)
    {
      v21 = @"LocalUser";
    }

    v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"DeviceDowntimeDisableButton%@%@Footer", v21, v18];
    v23 = MEMORY[0x277CCACA8];
    v24 = [v8 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
    v25 = [v10 givenName];
    v26 = [v23 localizedStringWithFormat:v24, v25];
    [v6 setObject:v26 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  else
  {
    if (v9)
    {
      v27 = @"DeviceDowntimeEnableButtonWithScheduleName";
    }

    else
    {
      v27 = @"DeviceDowntimeEnableButtonWithoutScheduleName";
    }

    if (v9)
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
    if (!v12)
    {
      v30 = @"UnblockedUser";
    }

    v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"DeviceDowntimeEnableButton%@%@Footer", v30, v28];
    v31 = [v8 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
    [v6 setObject:v31 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v20 setButtonAction:sel__toggleDowntimeEnabled];
  }

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];

  return v20;
}

- (void)_saveDowntimeAndReloadSpecifiers:(BOOL)a3
{
  v3 = a3;
  v5 = [(STDeviceBedtimeListController *)self coordinator];
  v6 = [v5 timeAllowancesCoordinator];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(STDeviceBedtimeListController *)self coordinator];
    v9 = [v8 timeAllowancesCoordinator];
    v10 = [(STDeviceBedtimeListController *)self bedtime];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__STDeviceBedtimeListController__saveDowntimeAndReloadSpecifiers___block_invoke;
    v11[3] = &unk_279B7D090;
    v12 = v3;
    v11[4] = self;
    [v9 saveDeviceBedtime:v10 completionHandler:v11];
  }

  else if (v3)
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

- (void)simpleScheduleListController:(id)a3 didSaveSimpleSchedule:(id)a4
{
  v5 = a4;
  v6 = [(STDeviceBedtimeListController *)self bedtime];
  [v6 setSimpleSchedule:v5];

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];

  [(STDeviceBedtimeListController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)customizeDailyScheduleListController:(id)a3 didSaveDailySchedule:(id)a4 forWeekdayIndex:(unint64_t)a5
{
  v7 = a4;
  v8 = [(STDeviceBedtimeListController *)self bedtime];
  v9 = [v8 scheduleByWeekdayIndex];
  v29 = [v9 mutableCopy];

  if (!v29)
  {
    v10 = [(STDeviceBedtimeListController *)self bedtime];
    v11 = [v10 simpleSchedule];
    v29 = [(STDeviceBedtimeListController *)self _createDefaultCustomScheduleFromSimpleSchedule:v11];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v29 setObject:v7 forKeyedSubscript:v12];

  v13 = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
  v14 = [v13 count];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(a5 + 1) % v14];
  v16 = [v7 endTime];
  v17 = [v7 startTime];

  v18 = STCompareHourMinuteTimeComponents();
  if (v18 == 1)
  {
    v19 = [v29 objectForKeyedSubscript:v15];
    v20 = v19;
    if (v19 && ([v19 startTime], v21 = objc_claimAutoreleasedReturnValue(), v22 = STCompareHourMinuteTimeComponents(), v21, v22 == 1))
    {
      [v20 setStartTime:v16];
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

  v23 = [(STDeviceBedtimeListController *)self bedtime];
  [v23 setScheduleByWeekdayIndex:v29];

  v24 = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v26 = [v13 indexOfObject:v25];

  v27 = [v24 objectAtIndexedSubscript:v26];
  [(STDeviceBedtimeListController *)self reloadSpecifier:v27];

  if (v22)
  {
    v28 = [v24 objectAtIndexedSubscript:{objc_msgSend(v13, "indexOfObject:", v15)}];
    [(STDeviceBedtimeListController *)self reloadSpecifier:v28];
  }

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];
  [(STDeviceBedtimeListController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)dealloc
{
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" context:@"TimeAllowanceViewModelBlueprintContext"];
  v3 = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];

  if (v3)
  {
    v4 = [(STDeviceBedtimeListController *)self downtimeScheduleRefreshTimer];
    [v4 invalidate];
  }

  v5.receiver = self;
  v5.super_class = STDeviceBedtimeListController;
  [(STDeviceBedtimeListController *)&v5 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v5 = a3;
  coordinator = self->_coordinator;
  if (coordinator != v5)
  {
    v7 = v5;
    [(STRootViewModelCoordinator *)coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" context:@"TimeAllowanceViewModelBlueprintContext"];
    objc_storeStrong(&self->_coordinator, a3);
    coordinator = [(STRootViewModelCoordinator *)self->_coordinator addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" options:0 context:@"TimeAllowanceViewModelBlueprintContext"];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](coordinator, v5);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"TimeAllowanceViewModelBlueprintContext")
  {
    if ([(STDeviceBedtimeListController *)self isViewLoaded:a3])
    {
      v7 = [(STDeviceBedtimeListController *)self view];
      v8 = [v7 window];

      if (v8)
      {
        v9 = [(STDeviceBedtimeListController *)self coordinator];
        v10 = [v9 timeAllowancesCoordinator];
        v11 = [v10 viewModel];
        v13 = [v11 bedtime];

        v12 = v13;
        if (v13)
        {
          [(STDeviceBedtimeListController *)self setBedtime:v13];
          [(STDeviceBedtimeListController *)self reloadSpecifiers];
          [(STDeviceBedtimeListController *)self scheduleDowntimeRefreshIfNeeded];
          v12 = v13;
        }
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = STDeviceBedtimeListController;
    [(STDeviceBedtimeListController *)&v14 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setDeviceBedtimeEnabled:(id)a3 specifier:(id)a4
{
  v9 = a3;
  v5 = [(STDeviceBedtimeListController *)self bedtime];

  if (!v5)
  {
    v6 = objc_opt_new();
    [v6 setAskForMoreTime:{-[STDeviceBedtimeListController canAskForMoreTime](self, "canAskForMoreTime")}];
    [(STDeviceBedtimeListController *)self setBedtime:v6];
  }

  v7 = [v9 BOOLValue];
  v8 = [(STDeviceBedtimeListController *)self bedtime];
  [v8 setDeviceBedtimeEnabled:v7];

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];
}

- (id)deviceBedtimeEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STDeviceBedtimeListController *)self bedtime];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "deviceBedtimeEnabled")}];

  return v5;
}

- (id)_createDefaultCustomScheduleFromSimpleSchedule:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
  v6 = [v4 startTime];
  v17 = v4;
  v7 = [v4 endTime];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
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
        [v15 setStartTime:v6];
        [v15 setEndTime:v7];
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
  v3 = [MEMORY[0x277D4B898] sharedController];
  v4 = [v3 viewContext];

  v5 = objc_alloc(MEMORY[0x277D4BAE0]);
  v6 = [(STDeviceBedtimeListController *)self affectedUser];
  v7 = [v6 dsid];
  v8 = [v5 initWithDSID:v7];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__STDeviceBedtimeListController__toggleDowntimeEnabled__block_invoke;
  v11[3] = &unk_279B7D708;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
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
  v3 = [(STDeviceBedtimeListController *)self coordinator];
  v4 = [v3 timeAllowancesCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(STDeviceBedtimeListController *)self coordinator];
    v7 = [v6 timeAllowancesCoordinator];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__STDeviceBedtimeListController__actuallyToggleDowntimeEnabled__block_invoke;
    v8[3] = &unk_279B7CC18;
    v8[4] = self;
    [v7 toggleDowntimeWithCompletionHandler:v8];
  }

  else
  {

    [(STDeviceBedtimeListController *)self reloadSpecifiers];
  }
}

- (id)_simpleScheduleTime:(id)a3
{
  v4 = MEMORY[0x277D4B928];
  v5 = [(STDeviceBedtimeListController *)self bedtime];
  v6 = [v5 simpleSchedule];
  v7 = [v6 startTime];
  v8 = [(STDeviceBedtimeListController *)self bedtime];
  v9 = [v8 simpleSchedule];
  v10 = [v9 endTime];
  v11 = [v4 simpleScheduleTimeRangeWithStartTimeComponents:v7 endTimeComponents:v10];

  return v11;
}

- (void)_showEditSimpleScheduleListController:(id)a3
{
  v4 = a3;
  v11 = objc_opt_new();
  [v11 setParentController:self];
  v5 = [(STDeviceBedtimeListController *)self rootController];
  [v11 setRootController:v5];

  [v11 setSpecifier:v4];
  v6 = [STSimpleScheduleListController alloc];
  v7 = [(STDeviceBedtimeListController *)self bedtime];
  v8 = [v7 simpleSchedule];
  v9 = [(STSimpleScheduleListController *)v6 initWithSimpleSchedule:v8];

  [(STSimpleScheduleListController *)v9 setDelegate:self];
  [(STSimpleScheduleListController *)v9 setParentController:v11];
  v10 = [v11 rootController];
  [(STSimpleScheduleListController *)v9 setRootController:v10];

  [(STSimpleScheduleListController *)v9 setSpecifier:v4];
  [v11 showController:v9];
  [(STDeviceBedtimeListController *)self showController:v11];
}

- (id)_customScheduleTime:(id)a3
{
  v4 = a3;
  v5 = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
    v10 = [v9 objectAtIndexedSubscript:v6];
    v11 = [v10 unsignedIntegerValue];

    v12 = [(STDeviceBedtimeListController *)self bedtime];
    v13 = [v12 scheduleByWeekdayIndex];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = MEMORY[0x277D4B928];
      v17 = [v15 startTime];
      v18 = [v15 endTime];
      v7 = [v16 simpleScheduleTimeRangeWithStartTimeComponents:v17 endTimeComponents:v18];
    }

    else
    {
      v7 = [v8 localizedStringForKey:@"DeviceDowntimeDailyScheduleOff" value:&stru_28766E5A8 table:0];
    }
  }

  return v7;
}

- (void)_showCustomizeDailyScheduleListController:(id)a3
{
  v26 = a3;
  v4 = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
  v5 = [v4 indexOfObject:v26];

  v6 = [(STDeviceBedtimeListController *)self orderedWeekdayIndexes];
  v7 = [v6 objectAtIndexedSubscript:v5];
  v8 = [(STDeviceBedtimeListController *)self bedtime];
  v9 = [v8 scheduleByWeekdayIndex];

  v24 = [v9 objectForKeyedSubscript:v7];
  v10 = [v7 unsignedIntegerValue];
  v11 = v10;
  if (!v10)
  {
    v10 = [v6 count];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10 - 1];
  v13 = [v9 objectForKeyedSubscript:v12];

  v14 = [v13 endTime];
  v25 = v6;
  if (v13 && ([v13 startTime], v15 = objc_claimAutoreleasedReturnValue(), v16 = STCompareHourMinuteTimeComponents(), v15, v16 == 1))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_opt_new();
  [v18 setParentController:self];
  v19 = [(STDeviceBedtimeListController *)self rootController];
  [v18 setRootController:v19];

  [v18 setSpecifier:v26];
  v20 = [STCustomizeDailyScheduleListController alloc];
  v21 = [v26 name];
  v22 = [(STCustomizeDailyScheduleListController *)v20 initWithDailySchedule:v24 weekdayIndex:v11 weekdayName:v21 minimumStartTime:v17];

  [(STCustomizeDailyScheduleListController *)v22 setDelegate:self];
  [(STCustomizeDailyScheduleListController *)v22 setParentController:v18];
  v23 = [v18 rootController];
  [(STCustomizeDailyScheduleListController *)v22 setRootController:v23];

  [(STCustomizeDailyScheduleListController *)v22 setSpecifier:v26];
  [v18 showController:v22];
  [(STDeviceBedtimeListController *)self showController:v18];
}

- (id)timeFooterText
{
  v3 = [(STDeviceBedtimeListController *)self affectedUser];
  if ([v3 isRemoteUser])
  {
    v4 = [v3 givenName];
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x277CCACA8];
      v7 = +[STScreenTimeSettingsUIBundle bundle];
      v8 = [v7 localizedStringForKey:@"DeviceDowntimeScheduleFooterTextRemote" value:&stru_28766E5A8 table:0];
      v9 = [v6 localizedStringWithFormat:v8, v5];

      goto LABEL_8;
    }
  }

  else
  {
    v10 = [(STDeviceBedtimeListController *)self coordinator];
    v11 = [v10 viewModel];
    v12 = [v11 isCloudSyncEnabled];

    if (!v12)
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

- (void)setAskForMoreTime:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(STDeviceBedtimeListController *)self bedtime];
  [v6 setAskForMoreTime:v5];

  [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:1];
}

- (id)askForMoreTime:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STDeviceBedtimeListController *)self bedtime];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "askForMoreTime")}];

  return v5;
}

- (id)atDowntimeFooterText
{
  v2 = [(STDeviceBedtimeListController *)self affectedUser];
  if ([v2 isRemoteUser])
  {
    v3 = [v2 name];

    if (v3)
    {
      v4 = objc_opt_new();
      v5 = [v2 name];
      v6 = [v4 personNameComponentsFromString:v5];

      v7 = [v6 givenName];
      if ([v7 length])
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = +[STScreenTimeSettingsUIBundle bundle];
        v10 = [v9 localizedStringForKey:@"AtDowntimeRemoteFooterText" value:&stru_28766E5A8 table:0];
        v11 = [v6 givenName];
        v12 = [v8 localizedStringWithFormat:v10, v11];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(STDeviceBedtimeListController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
  }

  v10 = [(STDeviceBedtimeListController *)self dailyScheduleSpecifier];
  v11 = [(STDeviceBedtimeListController *)self everyDaySpecifier];
  v12 = [(STDeviceBedtimeListController *)self customizeDaysSpecifier];
  v13 = v12;
  if (v9 == v11)
  {
    v21 = *MEMORY[0x277D40148];
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    if ([v15 accessoryType] != 3)
    {
      [v15 setAccessoryType:3];
      v20 = [v13 objectForKeyedSubscript:v21];
      [v20 setAccessoryType:0];
      v22 = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
      v23 = v10;
      v24 = v22;
      v30 = v23;
      v33[0] = v23;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [(STDeviceBedtimeListController *)self replaceContiguousSpecifiers:v24 withSpecifiers:v25 animated:1];

      v26 = [(STDeviceBedtimeListController *)self bedtime];
      [v26 setScheduleByWeekdayIndex:0];

      [(STDeviceBedtimeListController *)self _saveDowntimeAndReloadSpecifiers:0];
LABEL_12:

      v10 = v30;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v9 == v12)
  {
    v14 = *MEMORY[0x277D40148];
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    if ([v15 accessoryType] != 3)
    {
      [v15 setAccessoryType:3];
      v27 = [v11 objectForKeyedSubscript:v14];
      [v27 setAccessoryType:0];
      v28 = [(STDeviceBedtimeListController *)self bedtime];
      v16 = [v28 scheduleByWeekdayIndex];

      if (!v16)
      {
        v29 = [v28 simpleSchedule];
        v17 = [(STDeviceBedtimeListController *)self _createDefaultCustomScheduleFromSimpleSchedule:v29];
        [v28 setScheduleByWeekdayIndex:v17];
      }

      v30 = v10;
      v32 = v10;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      v19 = [(STDeviceBedtimeListController *)self weekdaySpecifiers];
      [(STDeviceBedtimeListController *)self replaceContiguousSpecifiers:v18 withSpecifiers:v19 animated:1];

      v20 = v27;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
  v31.receiver = self;
  v31.super_class = STDeviceBedtimeListController;
  [(STDeviceBedtimeListController *)&v31 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v19 = a4;
  v7 = a5;
  v8 = [(STDeviceBedtimeListController *)self everyDaySpecifier];
  v9 = [(STDeviceBedtimeListController *)self indexPathForSpecifier:v8];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [(STDeviceBedtimeListController *)self bedtime];
    v12 = [v11 scheduleByWeekdayIndex];

    if (v12)
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
    v14 = [(STDeviceBedtimeListController *)self customizeDaysSpecifier];
    v15 = [(STDeviceBedtimeListController *)self indexPathForSpecifier:v14];
    v16 = [v7 isEqual:v15];

    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = [(STDeviceBedtimeListController *)self bedtime];
    v18 = [v17 scheduleByWeekdayIndex];

    if (v18)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

  [v19 setAccessoryType:v13];
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