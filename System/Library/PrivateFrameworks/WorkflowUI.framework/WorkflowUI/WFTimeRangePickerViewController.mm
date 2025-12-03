@interface WFTimeRangePickerViewController
- (WFTimeRangePickerViewController)initWithStartTime:(id)time endTime:(id)endTime;
- (WFTimeRangePickerViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)endTimeChanged:(id)changed;
- (void)loadView;
- (void)startTimeChanged:(id)changed;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFTimeRangePickerViewController

- (WFTimeRangePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)done:(id)done
{
  delegate = [(WFTimeRangePickerViewController *)self delegate];
  startTime = [(WFTimeRangePickerViewController *)self startTime];
  endTime = [(WFTimeRangePickerViewController *)self endTime];
  [delegate timeRangePickerViewController:self didPickStartTime:startTime endTime:endTime];
}

- (void)cancel:(id)cancel
{
  delegate = [(WFTimeRangePickerViewController *)self delegate];
  [delegate timeRangePickerViewControllerDidCancel:self];
}

- (void)endTimeChanged:(id)changed
{
  date = [changed date];
  [(WFTimeRangePickerViewController *)self setEndTime:date];
}

- (void)startTimeChanged:(id)changed
{
  date = [changed date];
  [(WFTimeRangePickerViewController *)self setStartTime:date];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WFTimeRangePickerViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  v7 = [v6 objectForKeyedSubscript:@"sectionTitle"];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sections = [(WFTimeRangePickerViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];

  v13 = [v9 objectForKeyedSubscript:@"identifier"];
  LODWORD(viewCopy) = [v13 isEqual:@"start"];

  if (viewCopy)
  {
    startTime = [(WFTimeRangePickerViewController *)self startTime];
    v15 = &selRef_startTimeChanged_;
  }

  else
  {
    v16 = [v9 objectForKeyedSubscript:@"identifier"];
    v17 = [v16 isEqual:@"end"];

    if (!v17)
    {
      goto LABEL_6;
    }

    startTime = [(WFTimeRangePickerViewController *)self endTime];
    v15 = &selRef_endTimeChanged_;
  }

  datePicker = [v12 datePicker];
  [datePicker setDate:startTime];

  datePicker2 = [v12 datePicker];
  [datePicker2 addTarget:self action:*v15 forControlEvents:4096];

LABEL_6:

  return v12;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTimeRangePickerViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  tableView = [(WFTimeRangePickerViewController *)self tableView];
  [tableView reloadData];
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFTimeRangePickerViewController;
  [(WFTimeRangePickerViewController *)&v11 loadView];
  navigationItem = [(WFTimeRangePickerViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  [navigationItem setLeftBarButtonItem:v4];

  navigationItem2 = [(WFTimeRangePickerViewController *)self navigationItem];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  [navigationItem2 setRightBarButtonItem:v6];

  tableView = [(WFTimeRangePickerViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [tableView registerClass:v8 forCellReuseIdentifier:v10];
}

- (WFTimeRangePickerViewController)initWithStartTime:(id)time endTime:(id)endTime
{
  v34[2] = *MEMORY[0x277D85DE8];
  timeCopy = time;
  endTimeCopy = endTime;
  v29.receiver = self;
  v29.super_class = WFTimeRangePickerViewController;
  v9 = [(WFTimeRangePickerViewController *)&v29 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startTime, time);
    if (!v10->_startTime)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      date = [MEMORY[0x277CBEAA8] date];
      v13 = [currentCalendar components:96 fromDate:date];

      [v13 setHour:9];
      [v13 setMinute:0];
      v14 = [currentCalendar dateFromComponents:v13];
      startTime = v10->_startTime;
      v10->_startTime = v14;
    }

    objc_storeStrong(&v10->_endTime, endTime);
    if (!v10->_endTime)
    {
      currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
      date2 = [MEMORY[0x277CBEAA8] date];
      v18 = [currentCalendar2 components:96 fromDate:date2];

      [v18 setHour:17];
      [v18 setMinute:0];
      v19 = [currentCalendar2 dateFromComponents:v18];
      endTime = v10->_endTime;
      v10->_endTime = v19;
    }

    v32[0] = @"identifier";
    v32[1] = @"sectionTitle";
    v33[0] = @"start";
    v21 = WFLocalizedString(@"Start");
    v33[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v34[0] = v22;
    v30[1] = @"sectionTitle";
    v31[0] = @"end";
    v30[0] = @"identifier";
    v23 = WFLocalizedString(@"End");
    v31[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v34[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    sections = v10->_sections;
    v10->_sections = v25;

    v27 = v10;
  }

  return v10;
}

@end