@interface SCLTimeIntervalTableViewCell
- (SCLTimeIntervalTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)constraintInterval;
- (id)dateConverter;
- (id)scheduleTimeFormatter;
- (id)snapshotForPickerState:(unint64_t)state;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)timeInterval;
- (unint64_t)pickerState;
- (void)configureTimeCell:(id)cell forRow:(unint64_t)row;
- (void)configureTimePickerCell:(id)cell forRow:(unint64_t)row;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)timePickerCell:(id)cell didUpdateDate:(id)date;
@end

@implementation SCLTimeIntervalTableViewCell

- (SCLTimeIntervalTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v45[4] = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = SCLTimeIntervalTableViewCell;
  identifierCopy = identifier;
  specifierCopy = specifier;
  v7 = [(PSTableCell *)&v44 initWithStyle:style reuseIdentifier:identifierCopy specifier:?];
  if (v7)
  {
    v8 = [SCLSingleGroupTableView alloc];
    contentView = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    [contentView bounds];
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

    contentView2 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    [contentView2 addSubview:v7->_tableView];

    v30 = MEMORY[0x277CCAAD0];
    contentView3 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    topAnchor = [contentView3 topAnchor];
    topAnchor2 = [(UITableView *)v7->_tableView topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[0] = v35;
    contentView4 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    bottomAnchor2 = [(UITableView *)v7->_tableView bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[1] = v31;
    contentView5 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    leadingAnchor = [contentView5 leadingAnchor];
    leadingAnchor2 = [(UITableView *)v7->_tableView leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[2] = v22;
    contentView6 = [(SCLTimeIntervalTableViewCell *)v7 contentView];
    trailingAnchor = [contentView6 trailingAnchor];
    trailingAnchor2 = [(UITableView *)v7->_tableView trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = SCLTimeIntervalTableViewCell;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:specifier];
  v4 = [(SCLTimeIntervalTableViewCell *)self snapshotForPickerState:[(SCLTimeIntervalTableViewCell *)self pickerState]];
  [v4 reloadItemsWithIdentifiers:&unk_28762D8C8];
  dataSource = [(SCLTimeIntervalTableViewCell *)self dataSource];
  [dataSource applySnapshot:v4 animatingDifferences:{-[SCLTimeIntervalTableViewCell isReloadingAnimated](self, "isReloadingAnimated")}];
}

- (id)timeInterval
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier objectForKeyedSubscript:*MEMORY[0x277D401A8]];

  return v3;
}

- (id)constraintInterval
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellConstrainingInterval"];

  return v3;
}

- (unint64_t)pickerState
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellPickerState"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)dateConverter
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellDateConverter"];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  dataSource = self->_dataSource;
  viewCopy = view;
  v9 = [(UITableViewDiffableDataSource *)dataSource itemIdentifierForIndexPath:path];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  if ((unsignedIntegerValue & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"DatePicker"];

    if (!v11)
    {
      v11 = [[SCLTimePickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"DatePicker"];
      dateConverter = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      calendar = [dateConverter calendar];
      [(SCLTimePickerTableViewCell *)v11 setCalendar:calendar];

      [(SCLTimePickerTableViewCell *)v11 setDelegate:self];
    }

    [(SCLTimeIntervalTableViewCell *)self configureTimePickerCell:v11 forRow:unsignedIntegerValue];
  }

  else
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"kReuseIdentifier"];

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kReuseIdentifier"];
    }

    [(SCLTimeIntervalTableViewCell *)self configureTimeCell:v11 forRow:unsignedIntegerValue];
  }

  return v11;
}

- (void)configureTimePickerCell:(id)cell forRow:(unint64_t)row
{
  cellCopy = cell;
  dateConverter = [(SCLTimeIntervalTableViewCell *)self dateConverter];
  timeInterval = [(SCLTimeIntervalTableViewCell *)self timeInterval];
  v21 = [dateConverter canonicalDateIntervalForTimeInterval:timeInterval];

  constraintInterval = [(SCLTimeIntervalTableViewCell *)self constraintInterval];
  if (row == 3)
  {
    endDate = [v21 endDate];
    if (constraintInterval)
    {
      dateConverter2 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      calendar = [dateConverter2 calendar];

      startDate = [v21 startDate];
      startDate2 = [calendar dateByAddingUnit:64 value:1 toDate:startDate options:0];

      dateConverter3 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      v19 = [dateConverter3 canonicalDateIntervalForTimeInterval:constraintInterval];
      endDate2 = [v19 endDate];

      goto LABEL_9;
    }
  }

  else
  {
    if (row != 1)
    {
      endDate2 = 0;
      startDate2 = 0;
      endDate = 0;
      goto LABEL_9;
    }

    endDate = [v21 startDate];
    if (constraintInterval)
    {
      dateConverter4 = [(SCLTimeIntervalTableViewCell *)self dateConverter];
      v12 = [dateConverter4 canonicalDateIntervalForTimeInterval:constraintInterval];
      startDate2 = [v12 startDate];

      endDate2 = [v21 endDate];
      goto LABEL_9;
    }
  }

  endDate2 = 0;
  startDate2 = 0;
LABEL_9:
  v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate2 endDate:endDate2];
  [cellCopy setConstraintInterval:v20];

  [cellCopy setSelectedDate:endDate];
}

- (void)configureTimeCell:(id)cell forRow:(unint64_t)row
{
  cellCopy = cell;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (row)
  {
    v8 = [v6 localizedStringForKey:@"REPEATED_SCHEDULE_TO_TIME_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];
    scheduleTimeFormatter = [(SCLTimeIntervalTableViewCell *)self scheduleTimeFormatter];
    timeInterval = [(SCLTimeIntervalTableViewCell *)self timeInterval];
    endTime = [timeInterval endTime];
    v12 = [scheduleTimeFormatter stringForObjectValue:endTime];
    v13 = 2;
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"REPEATED_SCHEDULE_FROM_TIME_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];
    scheduleTimeFormatter = [(SCLTimeIntervalTableViewCell *)self scheduleTimeFormatter];
    timeInterval = [(SCLTimeIntervalTableViewCell *)self timeInterval];
    endTime = [timeInterval startTime];
    v12 = [scheduleTimeFormatter stringForObjectValue:endTime];
    v13 = 1;
  }

  pickerState = [(SCLTimeIntervalTableViewCell *)self pickerState];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v8];

  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setText:v12];

  if (pickerState == v13)
  {
    [MEMORY[0x277D75348] systemOrangeColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v17 = ;
  detailTextLabel2 = [cellCopy detailTextLabel];
  [detailTextLabel2 setTextColor:v17];
}

- (id)snapshotForPickerState:(unint64_t)state
{
  v4 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v4 appendSectionsWithIdentifiers:&unk_28762D8E0];
  if (state <= 2)
  {
    [v4 appendItemsWithIdentifiers:qword_279B6F048[state]];
  }

  return v4;
}

- (id)scheduleTimeFormatter
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier propertyForKey:@"SCLTimeIntervalTableViewCellScheduleTimeFormatter"];

  return v3;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  if (([v6 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v13 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];

  unsignedIntegerValue = [v13 unsignedIntegerValue];
  if ([(SCLTimeIntervalTableViewCell *)self pickerState]== 2 && unsignedIntegerValue == 2)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SCLTimeIntervalTableViewCell *)self pickerState]== 1;
    if (unsignedIntegerValue == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = unsignedIntegerValue == 0;
    }

    if (v9 && unsignedIntegerValue == 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v10;
    }
  }

  specifier = [(PSTableCell *)self specifier];
  v12 = [specifier objectForKeyedSubscript:@"SCLTimeIntervalTableViewCellPickerStateHandler"];

  if (v12)
  {
    (v12)[2](v12, self, v8);
  }
}

- (void)timePickerCell:(id)cell didUpdateDate:(id)date
{
  dateCopy = date;
  cellCopy = cell;
  tableView = [(SCLTimeIntervalTableViewCell *)self tableView];
  v25 = [tableView indexPathForCell:cellCopy];

  dataSource = [(SCLTimeIntervalTableViewCell *)self dataSource];
  v10 = [dataSource itemIdentifierForIndexPath:v25];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  dateConverter = [(SCLTimeIntervalTableViewCell *)self dateConverter];
  v13 = [dateConverter scheduleTimeWithDate:dateCopy];

  timeInterval = [(SCLTimeIntervalTableViewCell *)self timeInterval];
  if (unsignedIntegerValue == 3)
  {
    v20 = objc_alloc(MEMORY[0x277D4B778]);
    startTime = [timeInterval startTime];
    v17 = v20;
    v18 = startTime;
    v19 = v13;
  }

  else
  {
    if (unsignedIntegerValue != 1)
    {
      goto LABEL_6;
    }

    v15 = objc_alloc(MEMORY[0x277D4B778]);
    startTime = [timeInterval endTime];
    v17 = v15;
    v18 = v13;
    v19 = startTime;
  }

  v21 = [v17 initWithStartTime:v18 endTime:v19];

  timeInterval = v21;
LABEL_6:
  specifier = [(PSTableCell *)self specifier];
  hasValidSetter = [specifier hasValidSetter];

  if (hasValidSetter)
  {
    specifier2 = [(PSTableCell *)self specifier];
    [specifier2 performSetterWithValue:timeInterval];
  }
}

@end