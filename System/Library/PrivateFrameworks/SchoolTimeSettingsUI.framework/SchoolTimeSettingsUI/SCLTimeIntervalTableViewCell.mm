@interface SCLTimeIntervalTableViewCell
- (SCLTimeIntervalTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)constraintInterval;
- (id)dateConverter;
- (id)scheduleTimeFormatter;
- (id)snapshotForPickerState:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)timeInterval;
- (unint64_t)pickerState;
- (void)configureTimeCell:(id)a3 forRow:(unint64_t)a4;
- (void)configureTimePickerCell:(id)a3 forRow:(unint64_t)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)timePickerCell:(id)a3 didUpdateDate:(id)a4;
@end

@implementation SCLTimeIntervalTableViewCell

- (SCLTimeIntervalTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v45[4] = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = SCLTimeIntervalTableViewCell;
  v39 = a4;
  v40 = a5;
  v7 = [(PSTableCell *)&v44 initWithStyle:a3 reuseIdentifier:v39 specifier:?];
  if (v7)
  {
    v8 = [SCLSingleGroupTableView alloc];
    v9 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    [v9 bounds];
    v10 = [(SCLSingleGroupTableView *)v8 initWithFrame:?];
    tableView = v7->_tableView;
    v7->_tableView = v10;

    [(UITableView *)v7->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)v7->_tableView setDelegate:v7];
    objc_initWeak(&location, v7);
    v12 = objc_alloc(MEMORY[0x277D75B60]);
    v13 = v7->_tableView;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __72__SCLTimeIntervalTableViewCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
    v41[3] = &unk_279B6F028;
    objc_copyWeak(&v42, &location);
    v14 = [v12 initWithTableView:v13 cellProvider:v41];
    dataSource = v7->_dataSource;
    v7->_dataSource = v14;

    [(UITableViewDiffableDataSource *)v7->_dataSource setDefaultRowAnimation:0];
    [(UITableView *)v7->_tableView setDataSource:v7->_dataSource];
    v16 = v7->_dataSource;
    v17 = [(SCLTimeIntervalTableViewCell *)v7 snapshotForPickerState:0];
    [(UITableViewDiffableDataSource *)v16 applySnapshot:v17 animatingDifferences:0];

    v18 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    [v18 addSubview:v7->_tableView];

    v30 = MEMORY[0x277CCAAD0];
    v38 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    v37 = [v38 topAnchor];
    v36 = [(UITableView *)v7->_tableView topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v45[0] = v35;
    v34 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    v33 = [v34 bottomAnchor];
    v32 = [(UITableView *)v7->_tableView bottomAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v45[1] = v31;
    v19 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    v20 = [v19 leadingAnchor];
    v21 = [(UITableView *)v7->_tableView leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v45[2] = v22;
    v23 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    v24 = [v23 trailingAnchor];
    v25 = [(UITableView *)v7->_tableView trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v45[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    [v30 activateConstraints:v27];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v7;
}

id __72__SCLTimeIntervalTableViewCell_initWithStyle_reuseIdentifier_specifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained tableView:v9 cellForRowAtIndexPath:v8 itemIdentifier:v7];

  return v11;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCLTimeIntervalTableViewCell;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:a3];
  v4 = [(SCLTimeIntervalTableViewCell *)self snapshotForPickerState:[(SCLTimeIntervalTableViewCell *)self pickerState]];
  [v4 reloadItemsWithIdentifiers:&unk_28762D8C8];
  v5 = [(SCLTimeIntervalTableViewCell *)self dataSource];
  [v5 applySnapshot:v4 animatingDifferences:{-[SCLTimeIntervalTableViewCell isReloadingAnimated](self, "isReloadingAnimated")}];
}

- (id)timeInterval
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D401A8]];

  return v3;
}

- (id)constraintInterval
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellConstrainingInterval"];

  return v3;
}

- (unint64_t)pickerState
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellPickerState"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)dateConverter
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellDateConverter"];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  dataSource = self->_dataSource;
  v8 = a3;
  v9 = [(UITableViewDiffableDataSource *)dataSource itemIdentifierForIndexPath:a4];
  v10 = [v9 unsignedIntegerValue];

  if ((v10 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v11 = [v8 dequeueReusableCellWithIdentifier:@"DatePicker"];

    if (!v11)
    {
      v11 = [[SCLTimePickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"DatePicker"];
      v12 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      v13 = [v12 calendar];
      [(SCLTimePickerTableViewCell *)v11 setCalendar:v13];

      [(SCLTimePickerTableViewCell *)v11 setDelegate:self];
    }

    [(SCLTimeIntervalTableViewCell *)self configureTimePickerCell:v11 forRow:v10];
  }

  else
  {
    v11 = [v8 dequeueReusableCellWithIdentifier:@"kReuseIdentifier"];

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kReuseIdentifier"];
    }

    [(SCLTimeIntervalTableViewCell *)self configureTimeCell:v11 forRow:v10];
  }

  return v11;
}

- (void)configureTimePickerCell:(id)a3 forRow:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
  v8 = [(SCLTimeIntervalTableViewCell *)self timeInterval];
  v21 = [v7 canonicalDateIntervalForTimeInterval:v8];

  v9 = [(SCLTimeIntervalTableViewCell *)self constraintInterval];
  if (a4 == 3)
  {
    v10 = [v21 endDate];
    if (v9)
    {
      v15 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      v16 = [v15 calendar];

      v17 = [v21 startDate];
      v13 = [v16 dateByAddingUnit:64 value:1 toDate:v17 options:0];

      v18 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      v19 = [v18 canonicalDateIntervalForTimeInterval:v9];
      v14 = [v19 endDate];

      goto LABEL_9;
    }
  }

  else
  {
    if (a4 != 1)
    {
      v14 = 0;
      v13 = 0;
      v10 = 0;
      goto LABEL_9;
    }

    v10 = [v21 startDate];
    if (v9)
    {
      v11 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      v12 = [v11 canonicalDateIntervalForTimeInterval:v9];
      v13 = [v12 startDate];

      v14 = [v21 endDate];
      goto LABEL_9;
    }
  }

  v14 = 0;
  v13 = 0;
LABEL_9:
  v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v14];
  [v6 setConstraintInterval:v20];

  [v6 setSelectedDate:v10];
}

- (void)configureTimeCell:(id)a3 forRow:(unint64_t)a4
{
  v19 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (a4)
  {
    v8 = [v6 localizedStringForKey:@"REPEATED_SCHEDULE_TO_TIME_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];
    v9 = [(SCLTimeIntervalTableViewCell *)self scheduleTimeFormatter];
    v10 = [(SCLTimeIntervalTableViewCell *)self timeInterval];
    v11 = [v10 endTime];
    v12 = [v9 stringForObjectValue:v11];
    v13 = 2;
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"REPEATED_SCHEDULE_FROM_TIME_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];
    v9 = [(SCLTimeIntervalTableViewCell *)self scheduleTimeFormatter];
    v10 = [(SCLTimeIntervalTableViewCell *)self timeInterval];
    v11 = [v10 startTime];
    v12 = [v9 stringForObjectValue:v11];
    v13 = 1;
  }

  v14 = [(SCLTimeIntervalTableViewCell *)self pickerState];
  v15 = [v19 textLabel];
  [v15 setText:v8];

  v16 = [v19 detailTextLabel];
  [v16 setText:v12];

  if (v14 == v13)
  {
    [MEMORY[0x277D75348] systemOrangeColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v17 = ;
  v18 = [v19 detailTextLabel];
  [v18 setTextColor:v17];
}

- (id)snapshotForPickerState:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v4 appendSectionsWithIdentifiers:&unk_28762D8E0];
  if (a3 <= 2)
  {
    [v4 appendItemsWithIdentifiers:qword_279B6F048[a3]];
  }

  return v4;
}

- (id)scheduleTimeFormatter
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 propertyForKey:@"SCLTimeIntervalTableViewCellScheduleTimeFormatter"];

  return v3;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v5];
  if (([v6 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v13 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v6];

  v7 = [v13 unsignedIntegerValue];
  if ([(SCLTimeIntervalTableViewCell *)self pickerState]== 2 && v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SCLTimeIntervalTableViewCell *)self pickerState]== 1;
    if (v7 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v7 == 0;
    }

    if (v9 && v7 == 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v10;
    }
  }

  v11 = [(PSTableCell *)self specifier];
  v12 = [v11 objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellPickerStateHandler"];

  if (v12)
  {
    (v12)[2](v12, self, v8);
  }
}

- (void)timePickerCell:(id)a3 didUpdateDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCLTimeIntervalTableViewCell *)self tableView];
  v25 = [v8 indexPathForCell:v7];

  v9 = [(SCLTimeIntervalTableViewCell *)self dataSource];
  v10 = [v9 itemIdentifierForIndexPath:v25];
  v11 = [v10 unsignedIntegerValue];

  v12 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
  v13 = [v12 scheduleTimeWithDate:v6];

  v14 = [(SCLTimeIntervalTableViewCell *)self timeInterval];
  if (v11 == 3)
  {
    v20 = objc_alloc(MEMORY[0x277D4B778]);
    v16 = [v14 startTime];
    v17 = v20;
    v18 = v16;
    v19 = v13;
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_6;
    }

    v15 = objc_alloc(MEMORY[0x277D4B778]);
    v16 = [v14 endTime];
    v17 = v15;
    v18 = v13;
    v19 = v16;
  }

  v21 = [v17 initWithStartTime:v18 endTime:v19];

  v14 = v21;
LABEL_6:
  v22 = [(PSTableCell *)self specifier];
  v23 = [v22 hasValidSetter];

  if (v23)
  {
    v24 = [(PSTableCell *)self specifier];
    [v24 performSetterWithValue:v14];
  }
}

@end