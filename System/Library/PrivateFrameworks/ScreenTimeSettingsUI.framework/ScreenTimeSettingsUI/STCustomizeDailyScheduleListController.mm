@interface STCustomizeDailyScheduleListController
- (STCustomizeDailyScheduleListController)initWithDailySchedule:(id)a3 weekdayIndex:(unint64_t)a4 weekdayName:(id)a5 minimumStartTime:(id)a6;
- (STCustomizeDailyScheduleListControllerDelegate)delegate;
- (id)_endTime:(id)a3;
- (id)_getWeekdayEnabled:(id)a3;
- (id)_startTime:(id)a3;
- (id)datePickerForSpecifier:(id)a3;
- (id)specifiers;
- (void)_setWeekdayEnabled:(id)a3 specifier:(id)a4;
- (void)_updateTimeSpecifierDetailTextLabelColors:(BOOL)a3 selectedSpecifier:(id)a4 unselectedSpecifier:(id)a5;
- (void)cancelButtonTapped:(id)a3;
- (void)datePickerChanged:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation STCustomizeDailyScheduleListController

- (STCustomizeDailyScheduleListController)initWithDailySchedule:(id)a3 weekdayIndex:(unint64_t)a4 weekdayName:(id)a5 minimumStartTime:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v52.receiver = self;
  v52.super_class = STCustomizeDailyScheduleListController;
  v13 = [(STCustomizeDailyScheduleListController *)&v52 init];
  v14 = v13;
  if (v13)
  {
    [(STCustomizeDailyScheduleListController *)v13 setTitle:v11];
    v15 = [(STCustomizeDailyScheduleListController *)v14 navigationItem];
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel_cancelButtonTapped_];
    [v15 setLeftBarButtonItem:v16];

    v49 = v15;
    if (_UISolariumEnabled())
    {
      v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v14 action:sel_doneButtonTapped_];
      [v15 setRightBarButtonItem:v17];
    }

    else
    {
      v18 = +[STScreenTimeSettingsUIBundle bundle];
      v17 = [v18 localizedStringForKey:@"DeviceDowntimeScheduleDoneBarButtonItemTitle" value:&stru_28766E5A8 table:0];

      v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v17 style:2 target:v14 action:sel_doneButtonTapped_];
      [v15 setRightBarButtonItem:v19];
    }

    v14->_weekdayEnabled = v10 != 0;
    v20 = [v10 copy];
    dailySchedule = v14->_dailySchedule;
    v14->_dailySchedule = v20;

    v14->_weekdayIndex = a4;
    v22 = [v12 copy];
    minimumStartTime = v14->_minimumStartTime;
    v14->_minimumStartTime = v22;

    v50 = v12;
    v24 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    dailyScheduleGroupSpecifier = v14->_dailyScheduleGroupSpecifier;
    v14->_dailyScheduleGroupSpecifier = v24;

    v26 = +[STScreenTimeSettingsUIBundle bundle];
    v51 = v10;
    v27 = [v26 localizedStringForKey:@"DeviceDowntimeFromSpecifierName" value:&stru_28766E5A8 table:0];
    v28 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v27 target:v14 set:0 get:sel__startTime_ detail:0 cell:4 edit:0];
    startTimeSpecifier = v14->_startTimeSpecifier;
    v14->_startTimeSpecifier = v28;

    v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v14 set:0 get:0 detail:0 cell:4 edit:0];
    startTimePickerSpecifier = v14->_startTimePickerSpecifier;
    v14->_startTimePickerSpecifier = v30;

    v32 = objc_opt_new();
    v33 = [v32 UUIDString];
    [(PSSpecifier *)v14->_startTimePickerSpecifier setIdentifier:v33];

    v34 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v35 = [v34 numberWithDouble:?];
    v36 = *MEMORY[0x277D40140];
    [(PSSpecifier *)v14->_startTimePickerSpecifier setObject:v35 forKeyedSubscript:*MEMORY[0x277D40140]];

    v37 = objc_opt_class();
    v38 = *MEMORY[0x277D3FE58];
    [(PSSpecifier *)v14->_startTimePickerSpecifier setObject:v37 forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v39 = [v26 localizedStringForKey:@"DeviceDowntimeToSpecifierName" value:&stru_28766E5A8 table:0];
    v40 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v39 target:v14 set:0 get:sel__endTime_ detail:0 cell:4 edit:0];
    endTimeSpecifier = v14->_endTimeSpecifier;
    v14->_endTimeSpecifier = v40;

    v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v14 set:0 get:0 detail:0 cell:4 edit:0];
    endTimePickerSpecifier = v14->_endTimePickerSpecifier;
    v14->_endTimePickerSpecifier = v42;

    v44 = objc_opt_new();
    v45 = [v44 UUIDString];
    [(PSSpecifier *)v14->_endTimePickerSpecifier setIdentifier:v45];

    v10 = v51;
    v46 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v47 = [v46 numberWithDouble:?];
    [(PSSpecifier *)v14->_endTimePickerSpecifier setObject:v47 forKeyedSubscript:v36];

    v12 = v50;
    [(PSSpecifier *)v14->_endTimePickerSpecifier setObject:objc_opt_class() forKeyedSubscript:v38];
  }

  return v14;
}

- (void)doneButtonTapped:(id)a3
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User saved edited custom Downtime schedule", v8, 2u);
  }

  v5 = [(STCustomizeDailyScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(STCustomizeDailyScheduleListController *)self isWeekdayEnabled];
    if (v6)
    {
      v7 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    }

    else
    {
      v7 = 0;
    }

    [v5 customizeDailyScheduleListController:self didSaveDailySchedule:v7 forWeekdayIndex:{-[STCustomizeDailyScheduleListController weekdayIndex](self, "weekdayIndex")}];
    if (v6)
    {
    }
  }
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User cancelled editing custom Downtime schedule", v6, 2u);
  }

  v5 = [(STCustomizeDailyScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 customizeDailyScheduleListControllerDidCancel:self];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v6 = MEMORY[0x277D3FAD8];
    v7 = [(STCustomizeDailyScheduleListController *)self title];
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:sel__setWeekdayEnabled_specifier_ get:sel__getWeekdayEnabled_ detail:0 cell:6 edit:0];

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, v8, 0}];
    if ([(STCustomizeDailyScheduleListController *)self isWeekdayEnabled])
    {
      v10 = [(STCustomizeDailyScheduleListController *)self dailyScheduleGroupSpecifier];
      [v9 addObject:v10];

      v11 = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
      [v9 addObject:v11];

      v12 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
      [v9 addObject:v12];

      v13 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
      [v9 addObject:v13];
    }

    v14 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_getWeekdayEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STCustomizeDailyScheduleListController *)self isWeekdayEnabled];

  return [v3 numberWithBool:v4];
}

- (void)_setWeekdayEnabled:(id)a3 specifier:(id)a4
{
  v26[4] = *MEMORY[0x277D85DE8];
  v5 = [a3 BOOLValue];
  [(STCustomizeDailyScheduleListController *)self setWeekdayEnabled:v5];
  if (v5)
  {
    v6 = [(STCustomizeDailyScheduleListController *)self dailySchedule];

    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = +[STDeviceBedtime defaultBedtimeSchedule];
      v9 = [v8 startTime];
      v10 = [(STCustomizeDailyScheduleListController *)self minimumStartTime];
      if (v10 && STCompareHourMinuteTimeComponents() == 1)
      {
        v11 = v7;
        v12 = v10;
      }

      else
      {
        v11 = v7;
        v12 = v9;
      }

      [v11 setStartTime:v12];
      v19 = [v8 endTime];
      [v7 setEndTime:v19];

      [v7 setDay:{-[STCustomizeDailyScheduleListController weekdayIndex](self, "weekdayIndex")}];
      [(STCustomizeDailyScheduleListController *)self setDailySchedule:v7];
    }

    v20 = [(STCustomizeDailyScheduleListController *)self dailyScheduleGroupSpecifier];
    v26[0] = v20;
    v21 = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
    v26[1] = v21;
    v22 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
    v26[2] = v22;
    v23 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
    v26[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];

    [(STCustomizeDailyScheduleListController *)self addSpecifiersFromArray:v24 animated:1];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = [(STCustomizeDailyScheduleListController *)self dailyScheduleGroupSpecifier];
    v15 = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
    v25 = [v13 initWithObjects:{v14, v15, 0}];

    v16 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:v16])
    {
      [v25 addObject:v16];
    }

    v17 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
    [v25 addObject:v17];

    v18 = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:v18])
    {
      [v25 addObject:v18];
    }

    [(STCustomizeDailyScheduleListController *)self removeContiguousSpecifiers:v25 animated:1];
  }
}

- (id)_startTime:(id)a3
{
  v3 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 startTime];
    v6 = [v5 copy];

    [v6 setWeekday:{objc_msgSend(v4, "day") + 1}];
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = objc_opt_new();
    v9 = [v7 nextDateAfterDate:v8 matchingComponents:v6 options:1024];

    v10 = v9;
    v11 = objc_opt_new();
    [v11 setFormattingContext:3];
    [v11 setLocalizedDateFormatFromTemplate:@"EEEEjmm"];
    v12 = [v11 stringFromDate:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_endTime:(id)a3
{
  v3 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 endTime];
    v6 = [v5 copy];

    v7 = [v4 startTime];
    v8 = STCompareHourMinuteTimeComponents();

    v9 = [v4 day] + 1;
    if (v8 == 1)
    {
      v10 = [MEMORY[0x277CBEA80] currentCalendar];
      [v10 maximumRangeOfUnit:512];
      v12 = v9 % v11;

      v9 = v12 + 1;
    }

    [v6 setWeekday:v9];
    v13 = [MEMORY[0x277CBEA80] currentCalendar];
    v14 = objc_opt_new();
    v15 = [v13 nextDateAfterDate:v14 matchingComponents:v6 options:1024];

    v16 = v15;
    v17 = objc_opt_new();
    [v17 setFormattingContext:3];
    [v17 setLocalizedDateFormatFromTemplate:@"EEEEjmm"];
    v18 = [v17 stringFromDate:v16];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STCustomizeDailyScheduleListController *)self specifierAtIndexPath:v7];
  v9 = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
  v10 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
  v11 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
  v12 = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
  if (v8 == v9)
  {
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:v12])
    {
      v14 = 1;
      [(STCustomizeDailyScheduleListController *)self removeSpecifier:v12 animated:1];
    }

    else
    {
      if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:v10])
      {
        [(STCustomizeDailyScheduleListController *)self removeSpecifier:v10 animated:1];
        v14 = 0;
LABEL_13:
        v15 = self;
        v16 = v14;
        v17 = v9;
        v18 = v11;
LABEL_17:
        [(STCustomizeDailyScheduleListController *)v15 _updateTimeSpecifierDetailTextLabelColors:v16 selectedSpecifier:v17 unselectedSpecifier:v18];
        v19 = [v8 identifier];
        [(STCustomizeDailyScheduleListController *)self highlightSpecifierWithID:v19];

        goto LABEL_18;
      }

      v14 = 1;
    }

    [(STCustomizeDailyScheduleListController *)self insertSpecifier:v10 afterSpecifier:v9 animated:1];
    goto LABEL_13;
  }

  if (v8 == v11)
  {
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:v10])
    {
      v13 = 1;
      [(STCustomizeDailyScheduleListController *)self removeSpecifier:v10 animated:1];
    }

    else
    {
      if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:v12])
      {
        [(STCustomizeDailyScheduleListController *)self removeSpecifier:v12 animated:1];
        v13 = 0;
LABEL_16:
        v15 = self;
        v16 = v13;
        v17 = v11;
        v18 = v9;
        goto LABEL_17;
      }

      v13 = 1;
    }

    [(STCustomizeDailyScheduleListController *)self insertSpecifier:v12 afterSpecifier:v11 animated:1];
    goto LABEL_16;
  }

LABEL_18:
  v20.receiver = self;
  v20.super_class = STCustomizeDailyScheduleListController;
  [(STCustomizeDailyScheduleListController *)&v20 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v18 = a4;
  v8 = a5;
  v9 = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
  v10 = [(STCustomizeDailyScheduleListController *)self indexPathForSpecifier:v9];
  v11 = [v8 isEqual:v10];
  if (v11)
  {
    v5 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:v5])
    {

      goto LABEL_11;
    }
  }

  v12 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
  v13 = [(STCustomizeDailyScheduleListController *)self indexPathForSpecifier:v12];
  if ([v8 isEqual:v13])
  {
    v14 = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
    v15 = [(STCustomizeDailyScheduleListController *)self containsSpecifier:v14];
  }

  else
  {
    v15 = 0;
  }

  if (!v11)
  {

    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v15)
  {
LABEL_11:
    v16 = [MEMORY[0x277D75348] tableCellBlueTextColor];
    v17 = [v18 detailTextLabel];
    [v17 setTextColor:v16];
  }

LABEL_12:
}

- (void)_updateTimeSpecifierDetailTextLabelColors:(BOOL)a3 selectedSpecifier:(id)a4 unselectedSpecifier:(id)a5
{
  v6 = a3;
  v7 = *MEMORY[0x277D40148];
  v8 = a5;
  v9 = [a4 objectForKeyedSubscript:v7];
  v15 = [v9 detailTextLabel];

  v10 = [v8 objectForKeyedSubscript:v7];

  v11 = [v10 detailTextLabel];

  if (v6)
  {
    v12 = [v15 textColor];
    v13 = [MEMORY[0x277D75348] tableCellBlueTextColor];
    [v15 setTextColor:v13];

    v14 = v11;
  }

  else
  {
    v12 = [v11 textColor];
    v14 = v15;
  }

  [v14 setTextColor:v12];
}

- (void)datePickerChanged:(id)a3
{
  v21 = a3;
  v4 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
  v5 = [(STCustomizeDailyScheduleListController *)self containsSpecifier:v4];

  if (v5)
  {
    v6 = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
    v7 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    v8 = [v7 startTime];
    v9 = [v7 endTime];
    v10 = [v21 calendar];
    v11 = [v21 date];
    v12 = [v10 components:96 fromDate:v11];

    v13 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    [v13 setStartTime:v12];

    v14 = STCompareHourMinuteTimeComponents();
    if (v14 != STCompareHourMinuteTimeComponents())
    {
      v15 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
      [(STCustomizeDailyScheduleListController *)self reloadSpecifier:v15];
    }
  }

  else
  {
    v16 = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
    v17 = [(STCustomizeDailyScheduleListController *)self containsSpecifier:v16];

    if (!v17)
    {
      goto LABEL_8;
    }

    v6 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
    v7 = [v21 calendar];
    v8 = [v21 date];
    v9 = [v7 components:96 fromDate:v8];
    v12 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    [v12 setEndTime:v9];
  }

  if (v6)
  {
    [(STCustomizeDailyScheduleListController *)self reloadSpecifier:v6];
    v18 = [v6 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    v19 = [MEMORY[0x277D75348] tableCellBlueTextColor];
    v20 = [v18 detailTextLabel];
    [v20 setTextColor:v19];
  }

LABEL_8:
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setPreferredDatePickerStyle:1];
  [v5 setDatePickerMode:0];
  v6 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];

  if (v6 == v4)
  {
    v8 = [v5 calendar];
    v12 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    v13 = [v12 startTime];
    v14 = [v8 dateFromComponents:v13];
    [v5 setDate:v14];

    v9 = [(STCustomizeDailyScheduleListController *)self minimumStartTime];
    v10 = [v8 dateFromComponents:v9];
    [v5 setMinimumDate:v10];
  }

  else
  {
    v7 = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];

    if (v7 != v4)
    {
      goto LABEL_6;
    }

    v8 = [v5 calendar];
    v9 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    v10 = [v9 endTime];
    v11 = [v8 dateFromComponents:v10];
    [v5 setDate:v11];
  }

LABEL_6:

  return v5;
}

- (STCustomizeDailyScheduleListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end