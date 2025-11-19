@interface WFTimeRangePickerViewController
- (WFTimeRangePickerViewController)initWithStartTime:(id)a3 endTime:(id)a4;
- (WFTimeRangePickerViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
- (void)endTimeChanged:(id)a3;
- (void)loadView;
- (void)startTimeChanged:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFTimeRangePickerViewController

- (WFTimeRangePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)done:(id)a3
{
  v6 = [(WFTimeRangePickerViewController *)self delegate];
  v4 = [(WFTimeRangePickerViewController *)self startTime];
  v5 = [(WFTimeRangePickerViewController *)self endTime];
  [v6 timeRangePickerViewController:self didPickStartTime:v4 endTime:v5];
}

- (void)cancel:(id)a3
{
  v4 = [(WFTimeRangePickerViewController *)self delegate];
  [v4 timeRangePickerViewControllerDidCancel:self];
}

- (void)endTimeChanged:(id)a3
{
  v4 = [a3 date];
  [(WFTimeRangePickerViewController *)self setEndTime:v4];
}

- (void)startTimeChanged:(id)a3
{
  v4 = [a3 date];
  [(WFTimeRangePickerViewController *)self setStartTime:v4];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WFTimeRangePickerViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 objectForKeyedSubscript:@"sectionTitle"];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFTimeRangePickerViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v6];

  v13 = [v9 objectForKeyedSubscript:@"identifier"];
  LODWORD(v7) = [v13 isEqual:@"start"];

  if (v7)
  {
    v14 = [(WFTimeRangePickerViewController *)self startTime];
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

    v14 = [(WFTimeRangePickerViewController *)self endTime];
    v15 = &selRef_endTimeChanged_;
  }

  v18 = [v12 datePicker];
  [v18 setDate:v14];

  v19 = [v12 datePicker];
  [v19 addTarget:self action:*v15 forControlEvents:4096];

LABEL_6:

  return v12;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTimeRangePickerViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = [(WFTimeRangePickerViewController *)self tableView];
  [v3 reloadData];
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFTimeRangePickerViewController;
  [(WFTimeRangePickerViewController *)&v11 loadView];
  v3 = [(WFTimeRangePickerViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  [v3 setLeftBarButtonItem:v4];

  v5 = [(WFTimeRangePickerViewController *)self navigationItem];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  [v5 setRightBarButtonItem:v6];

  v7 = [(WFTimeRangePickerViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v7 registerClass:v8 forCellReuseIdentifier:v10];
}

- (WFTimeRangePickerViewController)initWithStartTime:(id)a3 endTime:(id)a4
{
  v34[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = WFTimeRangePickerViewController;
  v9 = [(WFTimeRangePickerViewController *)&v29 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startTime, a3);
    if (!v10->_startTime)
    {
      v11 = [MEMORY[0x277CBEA80] currentCalendar];
      v12 = [MEMORY[0x277CBEAA8] date];
      v13 = [v11 components:96 fromDate:v12];

      [v13 setHour:9];
      [v13 setMinute:0];
      v14 = [v11 dateFromComponents:v13];
      startTime = v10->_startTime;
      v10->_startTime = v14;
    }

    objc_storeStrong(&v10->_endTime, a4);
    if (!v10->_endTime)
    {
      v16 = [MEMORY[0x277CBEA80] currentCalendar];
      v17 = [MEMORY[0x277CBEAA8] date];
      v18 = [v16 components:96 fromDate:v17];

      [v18 setHour:17];
      [v18 setMinute:0];
      v19 = [v16 dateFromComponents:v18];
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