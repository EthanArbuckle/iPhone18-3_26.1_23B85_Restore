@interface STIntroDowntimeTableViewController
- (STIntroDowntimeTableViewController)initWithCoder:(id)coder;
- (STIntroDowntimeTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (STIntroDowntimeTableViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_tableRowForDatePicker;
- (int64_t)_tableRowForEndLabelRow;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_datePickerChanged:(id)changed;
- (void)_stIntroDowntimeTableViewControllerCommonInit;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation STIntroDowntimeTableViewController

- (STIntroDowntimeTableViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = STIntroDowntimeTableViewController;
  v3 = [(STIntroDowntimeTableViewController *)&v5 initWithStyle:style];
  [(STIntroDowntimeTableViewController *)v3 _stIntroDowntimeTableViewControllerCommonInit];
  return v3;
}

- (STIntroDowntimeTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = STIntroDowntimeTableViewController;
  v4 = [(STIntroDowntimeTableViewController *)&v6 initWithNibName:name bundle:bundle];
  [(STIntroDowntimeTableViewController *)v4 _stIntroDowntimeTableViewControllerCommonInit];
  return v4;
}

- (STIntroDowntimeTableViewController)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STIntroDowntimeTableViewController;
  v3 = [(STIntroDowntimeTableViewController *)&v5 initWithCoder:coder];
  [(STIntroDowntimeTableViewController *)v3 _stIntroDowntimeTableViewControllerCommonInit];
  return v3;
}

- (void)_stIntroDowntimeTableViewControllerCommonInit
{
  v3 = objc_opt_new();
  bedtime = self->_bedtime;
  self->_bedtime = v3;

  [(STDeviceBedtime *)self->_bedtime setAskForMoreTime:1];
  v5 = objc_opt_new();
  downtimeFormatter = self->_downtimeFormatter;
  self->_downtimeFormatter = v5;

  [(NSDateFormatter *)self->_downtimeFormatter setDateStyle:0];
  [(NSDateFormatter *)self->_downtimeFormatter setTimeStyle:1];
  v7 = self->_downtimeFormatter;

  [(NSDateFormatter *)v7 setFormattingContext:3];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(STIntroDowntimeTableViewController *)self datePickerVisibility:view])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = [pathCopy row];
  if (v9 == [(STIntroDowntimeTableViewController *)self _tableRowForStartLabelRow])
  {
    if ([(STIntroDowntimeTableViewController *)self datePickerVisibility]== 1)
    {
      v10 = @"Start Editing";
    }

    else
    {
      v10 = @"Start Not Editing";
    }

    v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    bedtime = [(STIntroDowntimeTableViewController *)self bedtime];
    simpleSchedule = [bedtime simpleSchedule];
    startTime = [simpleSchedule startTime];
LABEL_11:
    v17 = startTime;
    v18 = [currentCalendar dateFromComponents:startTime];

    downtimeFormatter = [(STIntroDowntimeTableViewController *)self downtimeFormatter];
    v20 = [downtimeFormatter stringFromDate:v18];
    detailTextLabel = [v11 detailTextLabel];
    [detailTextLabel setText:v20];

    goto LABEL_12;
  }

  if (v9 == [(STIntroDowntimeTableViewController *)self _tableRowForEndLabelRow])
  {
    if ([(STIntroDowntimeTableViewController *)self datePickerVisibility]== 2)
    {
      v16 = @"End Editing";
    }

    else
    {
      v16 = @"End Not Editing";
    }

    v11 = [viewCopy dequeueReusableCellWithIdentifier:v16 forIndexPath:pathCopy];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    bedtime = [(STIntroDowntimeTableViewController *)self bedtime];
    simpleSchedule = [bedtime simpleSchedule];
    startTime = [simpleSchedule endTime];
    goto LABEL_11;
  }

  if (v9 != [(STIntroDowntimeTableViewController *)self _tableRowForDatePicker])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STIntroDowntimeTableViewController.m" lineNumber:112 description:{@"Unhandled Downtime row %ld", v9}];

    v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    goto LABEL_12;
  }

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"Date Picker" forIndexPath:pathCopy];
  contentView = [v11 contentView];
  subviews = [contentView subviews];
  v25 = [subviews objectAtIndexedSubscript:0];

  datePickerVisibility = [(STIntroDowntimeTableViewController *)self datePickerVisibility];
  if (datePickerVisibility == 2)
  {
    calendar = [v25 calendar];
    bedtime2 = [(STIntroDowntimeTableViewController *)self bedtime];
    simpleSchedule2 = [bedtime2 simpleSchedule];
    endTime = [simpleSchedule2 endTime];
    goto LABEL_21;
  }

  if (datePickerVisibility == 1)
  {
    calendar = [v25 calendar];
    bedtime2 = [(STIntroDowntimeTableViewController *)self bedtime];
    simpleSchedule2 = [bedtime2 simpleSchedule];
    endTime = [simpleSchedule2 startTime];
LABEL_21:
    v32 = endTime;
    v33 = [calendar dateFromComponents:endTime];
    [v25 setDate:v33 animated:0];
  }

LABEL_12:

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [path row];
  if (v7 == [(STIntroDowntimeTableViewController *)self _tableRowForStartLabelRow])
  {
    v8 = 1;
LABEL_5:
    if ([(STIntroDowntimeTableViewController *)self datePickerVisibility]== v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    [(STIntroDowntimeTableViewController *)self setDatePickerVisibility:v9];
    goto LABEL_9;
  }

  if (v7 == [(STIntroDowntimeTableViewController *)self _tableRowForEndLabelRow])
  {
    v8 = 2;
    goto LABEL_5;
  }

LABEL_9:
  v10 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:0];
  [viewCopy reloadSections:v10 withRowAnimation:100];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v5 = [path row];
  _tableRowForDatePicker = [(STIntroDowntimeTableViewController *)self _tableRowForDatePicker];
  result = *MEMORY[0x277D76F30];
  if (v5 != _tableRowForDatePicker)
  {
    return 61.0;
  }

  return result;
}

- (int64_t)_tableRowForEndLabelRow
{
  datePickerVisibility = [(STIntroDowntimeTableViewController *)self datePickerVisibility];
  switch(datePickerVisibility)
  {
    case 2:
      return 1;
    case 1:
      return [(STIntroDowntimeTableViewController *)self _tableRowForDatePicker]+ 1;
    case 0:
      return 1;
  }

  return 0;
}

- (int64_t)_tableRowForDatePicker
{
  datePickerVisibility = [(STIntroDowntimeTableViewController *)self datePickerVisibility];
  if (datePickerVisibility == 2)
  {
    _tableRowForEndLabelRow = [(STIntroDowntimeTableViewController *)self _tableRowForEndLabelRow];
    return _tableRowForEndLabelRow + 1;
  }

  if (datePickerVisibility == 1)
  {
    _tableRowForEndLabelRow = [(STIntroDowntimeTableViewController *)self _tableRowForStartLabelRow];
    return _tableRowForEndLabelRow + 1;
  }

  if (datePickerVisibility)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)_datePickerChanged:(id)changed
{
  v20[1] = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  datePickerVisibility = [(STIntroDowntimeTableViewController *)self datePickerVisibility];
  if (datePickerVisibility == 2)
  {
    calendar = [changedCopy calendar];
    date = [changedCopy date];
    v8 = [calendar components:96 fromDate:date];

    bedtime = [(STIntroDowntimeTableViewController *)self bedtime];
    simpleSchedule = [bedtime simpleSchedule];
    [simpleSchedule setEndTime:v8];

    v11 = [MEMORY[0x277CCAA70] indexPathForRow:-[STIntroDowntimeTableViewController _tableRowForEndLabelRow](self inSection:{"_tableRowForEndLabelRow"), 0}];
    tableView = [(STIntroDowntimeTableViewController *)self tableView];
    v19 = v11;
    v13 = &v19;
    goto LABEL_5;
  }

  if (datePickerVisibility == 1)
  {
    calendar2 = [changedCopy calendar];
    date2 = [changedCopy date];
    v8 = [calendar2 components:96 fromDate:date2];

    bedtime2 = [(STIntroDowntimeTableViewController *)self bedtime];
    simpleSchedule2 = [bedtime2 simpleSchedule];
    [simpleSchedule2 setStartTime:v8];

    v11 = [MEMORY[0x277CCAA70] indexPathForRow:-[STIntroDowntimeTableViewController _tableRowForStartLabelRow](self inSection:{"_tableRowForStartLabelRow"), 0}];
    tableView = [(STIntroDowntimeTableViewController *)self tableView];
    v20[0] = v11;
    v13 = v20;
LABEL_5:
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [tableView reloadRowsAtIndexPaths:v18 withRowAnimation:100];
  }
}

@end