@interface STWeeklyReportViewController
- (STWeeklyReportViewController)initWithData:(id)data;
- (STWeeklyReportViewController)initWithUsageReport:(id)report;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_heightDidChange:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)viewDidLoad;
@end

@implementation STWeeklyReportViewController

- (STWeeklyReportViewController)initWithData:(id)data
{
  v4 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v11 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];

  v7 = v11;
  if (v7)
  {
    v8 = +[STUILog usage];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(STWeeklyReportViewController *)v7 initWithData:v8];
    }
  }

  if (v6)
  {
    self = [(STWeeklyReportViewController *)self initWithUsageReport:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (STWeeklyReportViewController)initWithUsageReport:(id)report
{
  reportCopy = report;
  v16.receiver = self;
  v16.super_class = STWeeklyReportViewController;
  v6 = [(STWeeklyReportViewController *)&v16 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_report, report);
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v9 = [[STDailyAverageSummaryTableViewCell alloc] initWithUsageReport:v7->_report];
    [v8 addObject:v9];
    v10 = [[STWeeklyReportAppUsageTableViewCell alloc] initWithUsageReport:v7->_report];
    [v8 addObject:v10];
    v11 = [[STNotificationsPickupSummaryTableViewCell alloc] initWithUsageReport:v7->_report];
    [v8 addObject:v11];
    v12 = [v8 copy];
    tableViewCells = v7->_tableViewCells;
    v7->_tableViewCells = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__heightDidChange_ name:0x287673468 object:v9];
  }

  return v7;
}

- (void)dealloc
{
  tableView = [(STWeeklyReportViewController *)self tableView];
  [tableView removeObserver:self forKeyPath:@"contentSize" context:@"KVOContextWeeklyReportViewController"];

  v4.receiver = self;
  v4.super_class = STWeeklyReportViewController;
  [(STWeeklyReportViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = STWeeklyReportViewController;
  [(STWeeklyReportViewController *)&v9 viewDidLoad];
  tableView = [(STWeeklyReportViewController *)self tableView];
  [tableView setRowHeight:*MEMORY[0x277D76F30]];
  [tableView setEstimatedRowHeight:75.0];
  [tableView setShowsVerticalScrollIndicator:0];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CELL"];
  [tableView addObserver:self forKeyPath:@"contentSize" options:3 context:@"KVOContextWeeklyReportViewController"];
  view = [(STWeeklyReportViewController *)self view];
  heightAnchor = [view heightAnchor];
  [tableView contentSize];
  v7 = [heightAnchor constraintEqualToConstant:v6];

  [v7 setActive:1];
  [(STWeeklyReportViewController *)self setHeightConstraint:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STWeeklyReportViewController.viewDidLoad", v8, 2u);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == @"KVOContextWeeklyReportViewController")
  {
    pathCopy = path;
    [(STWeeklyReportViewController *)self tableView];

    v13 = [pathCopy isEqualToString:@"contentSize"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      [v14 CGSizeValue];
      v17 = v16;
      heightConstraint = [(STWeeklyReportViewController *)self heightConstraint];
      [heightConstraint setConstant:v17];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = STWeeklyReportViewController;
    pathCopy2 = path;
    [(STWeeklyReportViewController *)&v19 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = [(STWeeklyReportViewController *)self tableViewCells:view];
  v7 = [v6 count];

  if (v7 < 0)
  {
    [(STWeeklyReportViewController *)a2 tableView:v7 numberOfRowsInSection:?];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [path row];
  v6 = v5 & ~(v5 >> 63);
  tableViewCells = [(STWeeklyReportViewController *)self tableViewCells];
  if (v6 >= [tableViewCells count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [tableViewCells objectAtIndexedSubscript:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setParentViewController:self];
  }

  else if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  }

  return v8;
}

- (void)_heightDidChange:(id)change
{
  tableView = [(STWeeklyReportViewController *)self tableView];
  [tableView reloadData];
}

- (void)initWithData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving %@", &v2, 0xCu);
}

- (void)tableView:(uint64_t)a3 numberOfRowsInSection:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STWeeklyReportViewController.m" lineNumber:111 description:{@"number of rows overflowed %lu", a3}];
}

@end