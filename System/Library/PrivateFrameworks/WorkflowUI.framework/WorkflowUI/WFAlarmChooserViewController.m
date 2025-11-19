@interface WFAlarmChooserViewController
- (WFAlarmChooserViewController)initWithAlarmDataSource:(id)a3 checkedAlarmIDs:(id)a4;
- (WFAlarmChooserViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel:(id)a3;
- (void)checkForValidCheckedAlarmIDs;
- (void)dataSourceDidReload:(id)a3;
- (void)finish:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDoneButtonEnabled;
- (void)viewDidLoad;
@end

@implementation WFAlarmChooserViewController

- (WFAlarmChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancel:(id)a3
{
  v4 = [(WFAlarmChooserViewController *)self delegate];
  [v4 alarmChooserViewControllerDidCancel:self];
}

- (void)finish:(id)a3
{
  v4 = [(WFAlarmChooserViewController *)self delegate];
  if (v4)
  {
    v16 = v4;
    v5 = objc_opt_new();
    v6 = [(WFAlarmChooserViewController *)self alarmDataSource];
    v7 = [v6 numberOfAlarms];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [(WFAlarmChooserViewController *)self alarmDataSource];
        v10 = [v9 alarmAtRow:v8];

        v11 = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
        v12 = [v10 alarmID];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          [v5 addObject:v10];
        }

        ++v8;
        v14 = [(WFAlarmChooserViewController *)self alarmDataSource];
        v15 = [v14 numberOfAlarms];
      }

      while (v8 < v15);
    }

    [v16 alarmChooserViewController:self didFinishWithChosenAlarms:v5];

    v4 = v16;
  }
}

- (void)updateDoneButtonEnabled
{
  v6 = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  v3 = [v6 count] != 0;
  v4 = [(WFAlarmChooserViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:v3];
}

- (void)checkForValidCheckedAlarmIDs
{
  v12 = objc_opt_new();
  v3 = [(WFAlarmChooserViewController *)self alarmDataSource];
  v4 = [v3 numberOfAlarms];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(WFAlarmChooserViewController *)self alarmDataSource];
      v7 = [v6 alarmAtRow:v5];

      v8 = [v7 alarmID];
      [v12 addObject:v8];

      ++v5;
      v9 = [(WFAlarmChooserViewController *)self alarmDataSource];
      v10 = [v9 numberOfAlarms];
    }

    while (v5 < v10);
  }

  v11 = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  [v11 intersectSet:v12];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  v5 = [(WFAlarmChooserViewController *)self alarmDataSource];
  v6 = [v5 alarmAtRow:{objc_msgSend(v16, "row")}];
  v7 = [v6 alarmID];

  v8 = [(WFAlarmChooserViewController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v16];

  v10 = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  v11 = [v10 containsObject:v7];

  v12 = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  v13 = v12;
  if (v11)
  {
    [v12 removeObject:v7];
    v14 = 0;
  }

  else
  {
    [v12 addObject:v7];
    v14 = 3;
  }

  [v9 setAccessoryType:v14];
  v15 = [(WFAlarmChooserViewController *)self tableView];
  [v15 deselectRowAtIndexPath:v16 animated:1];

  [(WFAlarmChooserViewController *)self updateDoneButtonEnabled];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFAlarmChooserViewController *)self alarmDataSource];
  v9 = [v8 alarmAtRow:{objc_msgSend(v6, "row")}];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v6];

  [v12 refreshUI:v9 animated:0];
  v13 = [(WFAlarmChooserViewController *)self checkedAlarmIDs];
  v14 = [v9 alarmID];
  LODWORD(v7) = [v13 containsObject:v14];

  if (v7)
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFAlarmChooserViewController *)self alarmDataSource:a3];
  v5 = [v4 numberOfAlarms];

  return v5;
}

- (void)dataSourceDidReload:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(WFAlarmChooserViewController *)self alarmDataSource];
    v6 = [(WFAlarmChooserViewController *)self alarmDataSource];
    v8 = 136315650;
    v9 = "[WFAlarmChooserViewController dataSourceDidReload:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = [v6 numberOfAlarms];
    _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_INFO, "%s alarmDataSource: %@ has %lu alarms", &v8, 0x20u);
  }

  [(WFAlarmChooserViewController *)self checkForValidCheckedAlarmIDs];
  [(WFAlarmChooserViewController *)self updateDoneButtonEnabled];
  v7 = [(WFAlarmChooserViewController *)self tableView];
  [v7 reloadData];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WFAlarmChooserViewController;
  [(WFAlarmChooserViewController *)&v5 viewDidLoad];
  v3 = [(WFAlarmChooserViewController *)self alarmDataSource];
  v4 = [v3 reloadAlarms];
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
  v11 = [(WFAlarmChooserViewController *)self navigationItem];
  [v11 setLeftBarButtonItem:v10];

  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_finish_];
  v13 = [(WFAlarmChooserViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v12];

  v14 = self->_tableView;

  [(WFAlarmChooserViewController *)self setView:v14];
}

- (WFAlarmChooserViewController)initWithAlarmDataSource:(id)a3 checkedAlarmIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WFAlarmChooserViewController;
  v9 = [(WFAlarmChooserViewController *)&v16 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = WFLocalizedString(@"Choose Alarms");
    [(WFAlarmChooserViewController *)v9 setTitle:v10];

    objc_storeStrong(&v9->_alarmDataSource, a3);
    v11 = [(WFAlarmChooserViewController *)v9 alarmDataSource];
    [v11 registerObserver:v9];

    v12 = [MEMORY[0x277CBEB40] orderedSetWithArray:v8];
    checkedAlarmIDs = v9->_checkedAlarmIDs;
    v9->_checkedAlarmIDs = v12;

    v14 = v9;
  }

  return v9;
}

@end