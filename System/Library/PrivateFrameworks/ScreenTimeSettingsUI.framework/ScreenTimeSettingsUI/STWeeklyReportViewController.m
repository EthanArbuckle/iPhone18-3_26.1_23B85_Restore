@interface STWeeklyReportViewController
- (STWeeklyReportViewController)initWithData:(id)a3;
- (STWeeklyReportViewController)initWithUsageReport:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_heightDidChange:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)viewDidLoad;
@end

@implementation STWeeklyReportViewController

- (STWeeklyReportViewController)initWithData:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v11 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];

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
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (STWeeklyReportViewController)initWithUsageReport:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = STWeeklyReportViewController;
  v6 = [(STWeeklyReportViewController *)&v16 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_report, a3);
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

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v7 selector:sel__heightDidChange_ name:0x287673468 object:v9];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(STWeeklyReportViewController *)self tableView];
  [v3 removeObserver:self forKeyPath:@"contentSize" context:@"KVOContextWeeklyReportViewController"];

  v4.receiver = self;
  v4.super_class = STWeeklyReportViewController;
  [(STWeeklyReportViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = STWeeklyReportViewController;
  [(STWeeklyReportViewController *)&v9 viewDidLoad];
  v3 = [(STWeeklyReportViewController *)self tableView];
  [v3 setRowHeight:*MEMORY[0x277D76F30]];
  [v3 setEstimatedRowHeight:75.0];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CELL"];
  [v3 addObserver:self forKeyPath:@"contentSize" options:3 context:@"KVOContextWeeklyReportViewController"];
  v4 = [(STWeeklyReportViewController *)self view];
  v5 = [v4 heightAnchor];
  [v3 contentSize];
  v7 = [v5 constraintEqualToConstant:v6];

  [v7 setActive:1];
  [(STWeeklyReportViewController *)self setHeightConstraint:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STWeeklyReportViewController.viewDidLoad", v8, 2u);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == @"KVOContextWeeklyReportViewController")
  {
    v12 = a3;
    [(STWeeklyReportViewController *)self tableView];

    v13 = [v12 isEqualToString:@"contentSize"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
      {

        v14 = 0;
      }

      [v14 CGSizeValue];
      v17 = v16;
      v18 = [(STWeeklyReportViewController *)self heightConstraint];
      [v18 setConstant:v17];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = STWeeklyReportViewController;
    v11 = a3;
    [(STWeeklyReportViewController *)&v19 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(STWeeklyReportViewController *)self tableViewCells:a3];
  v7 = [v6 count];

  if (v7 < 0)
  {
    [(STWeeklyReportViewController *)a2 tableView:v7 numberOfRowsInSection:?];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a4 row];
  v6 = v5 & ~(v5 >> 63);
  v7 = [(STWeeklyReportViewController *)self tableViewCells];
  if (v6 >= [v7 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:v6];
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

- (void)_heightDidChange:(id)a3
{
  v3 = [(STWeeklyReportViewController *)self tableView];
  [v3 reloadData];
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