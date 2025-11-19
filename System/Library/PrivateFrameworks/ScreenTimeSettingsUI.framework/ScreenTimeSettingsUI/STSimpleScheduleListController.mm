@interface STSimpleScheduleListController
- (STSimpleScheduleListController)initWithSimpleSchedule:(id)a3;
- (STSimpleScheduleListControllerDelegate)delegate;
- (id)_endTime:(id)a3;
- (id)_startTime:(id)a3;
- (id)datePickerForSpecifier:(id)a3;
- (id)specifiers;
- (void)_updateTimeSpecifierDetailTextLabelColors:(BOOL)a3 selectedSpecifier:(id)a4 unselectedSpecifier:(id)a5;
- (void)cancelButtonTapped:(id)a3;
- (void)datePickerChanged:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation STSimpleScheduleListController

- (STSimpleScheduleListController)initWithSimpleSchedule:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = STSimpleScheduleListController;
  v5 = [(STSimpleScheduleListController *)&v42 init];
  if (v5)
  {
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"DeviceDowntimeEditScheduleTitle" value:&stru_28766E5A8 table:0];
    [(STSimpleScheduleListController *)v5 setTitle:v7];

    v8 = [(STSimpleScheduleListController *)v5 navigationItem];
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v5 action:sel_cancelButtonTapped_];
    [v8 setLeftBarButtonItem:v9];

    v40 = v8;
    if (_UISolariumEnabled())
    {
      v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel_doneButtonTapped_];
      [v8 setRightBarButtonItem:v10];
    }

    else
    {
      v11 = +[STScreenTimeSettingsUIBundle bundle];
      v10 = [v11 localizedStringForKey:@"DeviceDowntimeScheduleDoneBarButtonItemTitle" value:&stru_28766E5A8 table:0];

      v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v10 style:2 target:v5 action:sel_doneButtonTapped_];
      [v8 setRightBarButtonItem:v12];
    }

    v13 = [v4 copy];
    simpleSchedule = v5->_simpleSchedule;
    v5->_simpleSchedule = v13;

    v15 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    simpleScheduleGroupSpecifier = v5->_simpleScheduleGroupSpecifier;
    v5->_simpleScheduleGroupSpecifier = v15;

    v17 = [v6 localizedStringForKey:@"DeviceDowntimeFromSpecifierName" value:&stru_28766E5A8 table:0];
    v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v17 target:v5 set:0 get:sel__startTime_ detail:0 cell:4 edit:0];
    startTimeSpecifier = v5->_startTimeSpecifier;
    v5->_startTimeSpecifier = v18;

    v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v5 set:0 get:0 detail:0 cell:4 edit:0];
    startTimePickerSpecifier = v5->_startTimePickerSpecifier;
    v5->_startTimePickerSpecifier = v20;

    v41 = v4;
    v22 = objc_opt_new();
    v23 = [v22 UUIDString];
    [(PSSpecifier *)v5->_startTimePickerSpecifier setIdentifier:v23];

    v24 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v25 = [v24 numberWithDouble:?];
    v26 = *MEMORY[0x277D40140];
    [(PSSpecifier *)v5->_startTimePickerSpecifier setObject:v25 forKeyedSubscript:*MEMORY[0x277D40140]];

    v27 = objc_opt_class();
    v28 = *MEMORY[0x277D3FE58];
    [(PSSpecifier *)v5->_startTimePickerSpecifier setObject:v27 forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v29 = [v6 localizedStringForKey:@"DeviceDowntimeToSpecifierName" value:&stru_28766E5A8 table:0];
    v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v29 target:v5 set:0 get:sel__endTime_ detail:0 cell:4 edit:0];
    endTimeSpecifier = v5->_endTimeSpecifier;
    v5->_endTimeSpecifier = v30;

    v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v5 set:0 get:0 detail:0 cell:4 edit:0];
    endTimePickerSpecifier = v5->_endTimePickerSpecifier;
    v5->_endTimePickerSpecifier = v32;

    v34 = objc_opt_new();
    v35 = [v34 UUIDString];
    [(PSSpecifier *)v5->_endTimePickerSpecifier setIdentifier:v35];

    v36 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v37 = [v36 numberWithDouble:?];
    v38 = v26;
    v4 = v41;
    [(PSSpecifier *)v5->_endTimePickerSpecifier setObject:v37 forKeyedSubscript:v38];

    [(PSSpecifier *)v5->_endTimePickerSpecifier setObject:objc_opt_class() forKeyedSubscript:v28];
  }

  return v5;
}

- (void)doneButtonTapped:(id)a3
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User saved edited simple Downtime schedule", v7, 2u);
  }

  v5 = [(STSimpleScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(STSimpleScheduleListController *)self simpleSchedule];
    [v5 simpleScheduleListController:self didSaveSimpleSchedule:v6];
  }
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User cancelled editing simple Downtime schedule", v6, 2u);
  }

  v5 = [(STSimpleScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 simpleScheduleListControllerDidCancel:self];
  }
}

- (id)specifiers
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(STSimpleScheduleListController *)self simpleScheduleGroupSpecifier];
    v12[0] = v5;
    v6 = [(STSimpleScheduleListController *)self startTimeSpecifier];
    v12[1] = v6;
    v7 = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
    v12[2] = v7;
    v8 = [(STSimpleScheduleListController *)self endTimeSpecifier];
    v12[3] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_startTime:(id)a3
{
  v4 = objc_opt_new();
  [v4 setTimeStyle:1];
  [v4 setDateStyle:0];
  [v4 setFormattingContext:1];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [(STSimpleScheduleListController *)self simpleSchedule];
  v7 = [v6 startTime];
  v8 = [v5 dateFromComponents:v7];

  v9 = [v4 stringFromDate:v8];

  return v9;
}

- (id)_endTime:(id)a3
{
  v4 = objc_opt_new();
  [v4 setTimeStyle:1];
  [v4 setDateStyle:0];
  [v4 setFormattingContext:1];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [(STSimpleScheduleListController *)self simpleSchedule];
  v7 = [v6 endTime];
  v8 = [v5 dateFromComponents:v7];

  v9 = [v4 stringFromDate:v8];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STSimpleScheduleListController *)self specifierAtIndexPath:v7];
  v9 = [(STSimpleScheduleListController *)self startTimeSpecifier];
  v10 = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
  v11 = [(STSimpleScheduleListController *)self endTimeSpecifier];
  v12 = [(STSimpleScheduleListController *)self endTimePickerSpecifier];
  if (v8 == v9)
  {
    if ([(STSimpleScheduleListController *)self containsSpecifier:v12])
    {
      v14 = 1;
      [(STSimpleScheduleListController *)self removeSpecifier:v12 animated:1];
    }

    else
    {
      if ([(STSimpleScheduleListController *)self containsSpecifier:v10])
      {
        [(STSimpleScheduleListController *)self removeSpecifier:v10 animated:1];
        v14 = 0;
LABEL_13:
        v15 = self;
        v16 = v14;
        v17 = v9;
        v18 = v11;
LABEL_17:
        [(STSimpleScheduleListController *)v15 _updateTimeSpecifierDetailTextLabelColors:v16 selectedSpecifier:v17 unselectedSpecifier:v18];
        v19 = [v8 identifier];
        [(STSimpleScheduleListController *)self highlightSpecifierWithID:v19];

        goto LABEL_18;
      }

      v14 = 1;
    }

    [(STSimpleScheduleListController *)self insertSpecifier:v10 afterSpecifier:v9 animated:1];
    goto LABEL_13;
  }

  if (v8 == v11)
  {
    if ([(STSimpleScheduleListController *)self containsSpecifier:v10])
    {
      v13 = 1;
      [(STSimpleScheduleListController *)self removeSpecifier:v10 animated:1];
    }

    else
    {
      if ([(STSimpleScheduleListController *)self containsSpecifier:v12])
      {
        [(STSimpleScheduleListController *)self removeSpecifier:v12 animated:1];
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

    [(STSimpleScheduleListController *)self insertSpecifier:v12 afterSpecifier:v11 animated:1];
    goto LABEL_16;
  }

LABEL_18:
  v20.receiver = self;
  v20.super_class = STSimpleScheduleListController;
  [(STSimpleScheduleListController *)&v20 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v18 = a4;
  v8 = a5;
  v9 = [(STSimpleScheduleListController *)self startTimeSpecifier];
  v10 = [(STSimpleScheduleListController *)self indexPathForSpecifier:v9];
  v11 = [v8 isEqual:v10];
  if (v11)
  {
    v5 = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
    if ([(STSimpleScheduleListController *)self containsSpecifier:v5])
    {

      goto LABEL_11;
    }
  }

  v12 = [(STSimpleScheduleListController *)self endTimeSpecifier];
  v13 = [(STSimpleScheduleListController *)self indexPathForSpecifier:v12];
  if ([v8 isEqual:v13])
  {
    v14 = [(STSimpleScheduleListController *)self endTimePickerSpecifier];
    v15 = [(STSimpleScheduleListController *)self containsSpecifier:v14];
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
  v4 = a3;
  v5 = [v4 calendar];
  v6 = [v4 date];

  v15 = [v5 components:96 fromDate:v6];

  v7 = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
  LODWORD(v5) = [(STSimpleScheduleListController *)self containsSpecifier:v7];

  if (v5)
  {
    v8 = [(STSimpleScheduleListController *)self startTimeSpecifier];
    v9 = [(STSimpleScheduleListController *)self simpleSchedule];
    [v9 setStartTime:v15];
  }

  else
  {
    v10 = [(STSimpleScheduleListController *)self endTimePickerSpecifier];
    v11 = [(STSimpleScheduleListController *)self containsSpecifier:v10];

    if (!v11)
    {
      goto LABEL_7;
    }

    v8 = [(STSimpleScheduleListController *)self endTimeSpecifier];
    v9 = [(STSimpleScheduleListController *)self simpleSchedule];
    [v9 setEndTime:v15];
  }

  if (v8)
  {
    [(STSimpleScheduleListController *)self reloadSpecifier:v8];
    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    v13 = [MEMORY[0x277D75348] tableCellBlueTextColor];
    v14 = [v12 detailTextLabel];
    [v14 setTextColor:v13];
  }

LABEL_7:
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setPreferredDatePickerStyle:1];
  [v5 setDatePickerMode:0];
  v6 = [(STSimpleScheduleListController *)self startTimePickerSpecifier];

  if (v6 == v4)
  {
    v8 = [v5 calendar];
    v9 = [(STSimpleScheduleListController *)self simpleSchedule];
    v10 = [v9 startTime];
  }

  else
  {
    v7 = [(STSimpleScheduleListController *)self endTimePickerSpecifier];

    if (v7 != v4)
    {
      goto LABEL_6;
    }

    v8 = [v5 calendar];
    v9 = [(STSimpleScheduleListController *)self simpleSchedule];
    v10 = [v9 endTime];
  }

  v11 = v10;
  v12 = [v8 dateFromComponents:v10];
  [v5 setDate:v12];

LABEL_6:

  return v5;
}

- (STSimpleScheduleListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end