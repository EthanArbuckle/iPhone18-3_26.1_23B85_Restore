@interface WFAlarmChooserViewController
- (WFAlarmChooserViewController)initWithAlarmDataSource:(id)source checkedAlarmIDs:(id)ds;
- (WFAlarmChooserViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel:(id)cancel;
- (void)checkForValidCheckedAlarmIDs;
- (void)dataSourceDidReload:(id)reload;
- (void)finish:(id)finish;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDoneButtonEnabled;
- (void)viewDidLoad;
@end

@implementation WFAlarmChooserViewController

- (WFAlarmChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancel:(id)cancel
{
  delegate = [(WFAlarmChooserViewController *)self delegate];
  [delegate alarmChooserViewControllerDidCancel:self];
}

- (void)finish:(id)finish
{
  delegate = [(WFAlarmChooserViewController *)self delegate];
  if (delegate)
  {
    v16 = delegate;
    v5 = objc_opt_new();
    alarmDataSource = [(WFAlarmChooserViewController *)self alarmDataSource];
    numberOfAlarms = [alarmDataSource numberOfAlarms];

    if (numberOfAlarms)
    {
      v8 = 0;
      do
      {
        alarmDataSource2 = [(WFAlarmChooserViewController *)self alarmDataSource];
        v10 = [alarmDataSource2 alarmAtRow:v8];

        checkedAlarmIDs = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
        alarmID = [v10 alarmID];
        v13 = [checkedAlarmIDs containsObject:alarmID];

        if (v13)
        {
          [v5 addObject:v10];
        }

        ++v8;
        alarmDataSource3 = [(WFAlarmChooserViewController *)self alarmDataSource];
        numberOfAlarms2 = [alarmDataSource3 numberOfAlarms];
      }

      while (v8 < numberOfAlarms2);
    }

    [v16 alarmChooserViewController:self didFinishWithChosenAlarms:v5];

    delegate = v16;
  }
}

- (void)updateDoneButtonEnabled
{
  checkedAlarmIDs = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  v3 = [checkedAlarmIDs count] != 0;
  navigationItem = [(WFAlarmChooserViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v3];
}

- (void)checkForValidCheckedAlarmIDs
{
  v12 = objc_opt_new();
  alarmDataSource = [(WFAlarmChooserViewController *)self alarmDataSource];
  numberOfAlarms = [alarmDataSource numberOfAlarms];

  if (numberOfAlarms)
  {
    v5 = 0;
    do
    {
      alarmDataSource2 = [(WFAlarmChooserViewController *)self alarmDataSource];
      v7 = [alarmDataSource2 alarmAtRow:v5];

      alarmID = [v7 alarmID];
      [v12 addObject:alarmID];

      ++v5;
      alarmDataSource3 = [(WFAlarmChooserViewController *)self alarmDataSource];
      numberOfAlarms2 = [alarmDataSource3 numberOfAlarms];
    }

    while (v5 < numberOfAlarms2);
  }

  checkedAlarmIDs = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  [checkedAlarmIDs intersectSet:v12];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  alarmDataSource = [(WFAlarmChooserViewController *)self alarmDataSource];
  v6 = [alarmDataSource alarmAtRow:{objc_msgSend(pathCopy, "row")}];
  alarmID = [v6 alarmID];

  tableView = [(WFAlarmChooserViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:pathCopy];

  checkedAlarmIDs = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  v11 = [checkedAlarmIDs containsObject:alarmID];

  checkedAlarmIDs2 = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  v13 = checkedAlarmIDs2;
  if (v11)
  {
    [checkedAlarmIDs2 removeObject:alarmID];
    v14 = 0;
  }

  else
  {
    [checkedAlarmIDs2 addObject:alarmID];
    v14 = 3;
  }

  [v9 setAccessoryType:v14];
  tableView2 = [(WFAlarmChooserViewController *)self tableView];
  [tableView2 deselectRowAtIndexPath:pathCopy animated:1];

  [(WFAlarmChooserViewController *)self updateDoneButtonEnabled];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  alarmDataSource = [(WFAlarmChooserViewController *)self alarmDataSource];
  v9 = [alarmDataSource alarmAtRow:{objc_msgSend(pathCopy, "row")}];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];

  [v12 refreshUI:v9 animated:0];
  checkedAlarmIDs = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  alarmID = [v9 alarmID];
  LODWORD(viewCopy) = [checkedAlarmIDs containsObject:alarmID];

  if (viewCopy)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v12 setAccessoryType:v15];

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFAlarmChooserViewController *)self alarmDataSource:view];
  numberOfAlarms = [v4 numberOfAlarms];

  return numberOfAlarms;
}

- (void)dataSourceDidReload:(id)reload
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    alarmDataSource = [(WFAlarmChooserViewController *)self alarmDataSource];
    alarmDataSource2 = [(WFAlarmChooserViewController *)self alarmDataSource];
    v8 = 136315650;
    v9 = "[WFAlarmChooserViewController dataSourceDidReload:]";
    v10 = 2112;
    v11 = alarmDataSource;
    v12 = 2048;
    numberOfAlarms = [alarmDataSource2 numberOfAlarms];
    _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_INFO, "%s alarmDataSource: %@ has %lu alarms", &v8, 0x20u);
  }

  [(WFAlarmChooserViewController *)self checkForValidCheckedAlarmIDs];
  [(WFAlarmChooserViewController *)self updateDoneButtonEnabled];
  tableView = [(WFAlarmChooserViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WFAlarmChooserViewController;
  [(WFAlarmChooserViewController *)&v5 viewDidLoad];
  alarmDataSource = [(WFAlarmChooserViewController *)self alarmDataSource];
  reloadAlarms = [alarmDataSource reloadAlarms];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v4;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:1];
  [(UITableView *)self->_tableView setAllowsSelection:1];
  [(UITableView *)self->_tableView setAllowsMultipleSelection:1];
  [(UITableView *)self->_tableView setEstimatedRowHeight:96.0];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x277D76F30]];
  v6 = self->_tableView;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(UITableView *)v6 registerClass:v7 forCellReuseIdentifier:v9];

  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  navigationItem = [(WFAlarmChooserViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v10];

  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_finish_];
  navigationItem2 = [(WFAlarmChooserViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v12];

  v14 = self->_tableView;

  [(WFAlarmChooserViewController *)self setView:v14];
}

- (WFAlarmChooserViewController)initWithAlarmDataSource:(id)source checkedAlarmIDs:(id)ds
{
  sourceCopy = source;
  dsCopy = ds;
  v16.receiver = self;
  v16.super_class = WFAlarmChooserViewController;
  v9 = [(WFAlarmChooserViewController *)&v16 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = WFLocalizedString(@"Choose Alarms");
    [(WFAlarmChooserViewController *)v9 setTitle:v10];

    objc_storeStrong(&v9->_alarmDataSource, source);
    alarmDataSource = [(WFAlarmChooserViewController *)v9 alarmDataSource];
    [alarmDataSource registerObserver:v9];

    v12 = [MEMORY[0x277CBEB40] orderedSetWithArray:dsCopy];
    checkedAlarmIDs = v9->_checkedAlarmIDs;
    v9->_checkedAlarmIDs = v12;

    v14 = v9;
  }

  return v9;
}

@end