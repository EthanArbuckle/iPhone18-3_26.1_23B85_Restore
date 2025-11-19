@interface STHistoricalUsageViewController
+ (id)historicalUsageViewControllerOfType:(unint64_t)a3 graphHeight:(double)a4;
- (id)_dataSetFromUsageReport:(id)a3;
- (id)_dayGraphViewControllerForDay:(unint64_t)a3 week:(unint64_t)a4 usageReport:(id)a5;
- (id)_nextGraphViewControllerForPageViewController:(id)a3 currentGraphViewController:(id)a4 direction:(int64_t)a5;
- (id)_weekGraphViewControllerForWeek:(unint64_t)a3 usageReport:(id)a4;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)_selectedBarViewDidChangeFrom:(id)a3 to:(id)a4;
- (void)_selectedDayUsageReportDidChangeFrom:(id)a3 to:(id)a4;
- (void)_selectedWeekUsageReportDidChange:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)setCoordinator:(id)a3;
- (void)setMaximumYAxisLabelWidth:(double)a3;
- (void)setSelectedWeekGraphViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation STHistoricalUsageViewController

+ (id)historicalUsageViewControllerOfType:(unint64_t)a3 graphHeight:(double)a4
{
  v6 = MEMORY[0x277D75AC8];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v6 storyboardWithName:@"HistoricalUsage" bundle:v7];

  v9 = [v8 instantiateInitialViewController];
  *(v9 + 1016) = a3;
  *(v9 + 1024) = a4;

  return v9;
}

- (void)dealloc
{
  [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedWeekUsageReport" context:"KVOContextHistoricalUsageViewController"];
  [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedDayUsageReport" context:"KVOContextHistoricalUsageViewController"];
  [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedCoreDuetIdentifier" context:"KVOContextHistoricalUsageViewController"];
  [(STUsageGraphViewController *)self->_selectedWeekGraphViewController removeObserver:self forKeyPath:@"selectedBarView" context:"KVOContextHistoricalUsageViewController"];
  v3.receiver = self;
  v3.super_class = STHistoricalUsageViewController;
  [(STHistoricalUsageViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = STHistoricalUsageViewController;
  [(STHistoricalUsageViewController *)&v10 viewDidLoad];
  v3 = [(STHistoricalUsageViewController *)self type];
  v4 = [(STHistoricalUsageViewController *)self titleView];
  [v4 setUsageItemType:v3];

  v5 = [(STHistoricalUsageViewController *)self coordinator];
  v6 = [v5 viewModel];

  if (v6)
  {
    v7 = [v6 selectedWeekUsageReport];
    [(STHistoricalUsageViewController *)self _selectedWeekUsageReportDidChange:v7];

    v8 = [v6 selectedDayUsageReport];
    [(STHistoricalUsageViewController *)self _selectedDayUsageReportDidChangeFrom:0 to:v8];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STHistoricalUsageViewController.viewDidLoad", v9, 2u);
  }
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v7 = a3;
  v5 = [v7 identifier];
  if ([v5 isEqualToString:@"WeekGraph"])
  {
    v6 = [v7 destinationViewController];
    [v6 setDataSource:self];
    [v6 setDelegate:self];
    [(STHistoricalUsageViewController *)self setWeekGraphPageViewController:v6];
  }

  else
  {
    if (![v5 isEqualToString:@"DayGraph"])
    {
      goto LABEL_6;
    }

    v6 = [v7 destinationViewController];
    [v6 setDataSource:self];
    [v6 setDelegate:self];
    [(STHistoricalUsageViewController *)self setDayGraphPageViewController:v6];
  }

LABEL_6:
}

- (void)setCoordinator:(id)a3
{
  v5 = a3;
  coordinator = self->_coordinator;
  if (coordinator != v5)
  {
    v11 = v5;
    coordinator = [(STUsageDetailsViewModelCoordinator *)coordinator isEqual:v5];
    v5 = v11;
    if ((coordinator & 1) == 0)
    {
      [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedWeekUsageReport" context:"KVOContextHistoricalUsageViewController"];
      [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedDayUsageReport" context:"KVOContextHistoricalUsageViewController"];
      [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedCoreDuetIdentifier" context:"KVOContextHistoricalUsageViewController"];
      v7 = [(STUsageDetailsViewModelCoordinator *)self->_coordinator viewModel];
      v8 = [v7 selectedDayUsageReport];

      objc_storeStrong(&self->_coordinator, a3);
      v9 = [(STUsageDetailsViewModelCoordinator *)v11 viewModel];
      v10 = [v9 selectedDayUsageReport];

      [(STUsageDetailsViewModelCoordinator *)v11 addObserver:self forKeyPath:@"viewModel.selectedWeekUsageReport" options:5 context:"KVOContextHistoricalUsageViewController"];
      [(STHistoricalUsageViewController *)self _selectedDayUsageReportDidChangeFrom:v8 to:v10];
      [(STUsageDetailsViewModelCoordinator *)v11 addObserver:self forKeyPath:@"viewModel.selectedDayUsageReport" options:3 context:"KVOContextHistoricalUsageViewController"];
      [(STUsageDetailsViewModelCoordinator *)v11 addObserver:self forKeyPath:@"viewModel.selectedCoreDuetIdentifier" options:3 context:"KVOContextHistoricalUsageViewController"];

      v5 = v11;
    }
  }

  MEMORY[0x2821F96F8](coordinator, v5);
}

- (void)setSelectedWeekGraphViewController:(id)a3
{
  v4 = a3;
  [(STUsageGraphViewController *)self->_selectedWeekGraphViewController removeObserver:self forKeyPath:@"selectedBarView" context:"KVOContextHistoricalUsageViewController"];
  selectedWeekGraphViewController = self->_selectedWeekGraphViewController;
  self->_selectedWeekGraphViewController = v4;
  v6 = v4;

  [(STUsageGraphViewController *)v6 addObserver:self forKeyPath:@"selectedBarView" options:3 context:"KVOContextHistoricalUsageViewController"];
}

- (void)setMaximumYAxisLabelWidth:(double)a3
{
  self->_maximumYAxisLabelWidth = a3;
  v5 = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
  [v5 setYAxisLabelSectionWidth:a3];

  v6 = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
  [v6 setYAxisLabelSectionWidth:a3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextHistoricalUsageViewController")
  {
    [(STHistoricalUsageViewController *)self coordinator];

    if ([v10 isEqualToString:@"viewModel.selectedCoreDuetIdentifier"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v12 == v14)
      {

        v12 = 0;
      }

      v15 = [MEMORY[0x277CBEB68] null];

      if (v13 == v15)
      {

        v13 = 0;
      }

      if (v12 != v13 && ([v12 isEqual:v13] & 1) == 0)
      {
        [(STHistoricalUsageViewController *)self setSelectedWeekGraphViewController:0];
        [(STHistoricalUsageViewController *)self setSelectedDayGraphViewController:0];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v23 = v12;
          v24 = 2114;
          v25 = v13;
          _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STHistoricalUsageViewController selectedCoreDuetIdentifier change %{public}@ %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      [(STHistoricalUsageViewController *)self coordinator];

      if ([v10 isEqualToString:@"viewModel.selectedWeekUsageReport"])
      {
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v16 = [MEMORY[0x277CBEB68] null];

        if (v12 == v16)
        {

          v12 = 0;
        }

        [(STHistoricalUsageViewController *)self _selectedWeekUsageReportDidChange:v12];
        goto LABEL_29;
      }

      [(STHistoricalUsageViewController *)self coordinator];

      if ([v10 isEqualToString:@"viewModel.selectedDayUsageReport"])
      {
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v17 = [MEMORY[0x277CBEB68] null];

        if (v12 == v17)
        {

          v12 = 0;
        }

        v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v18 = [MEMORY[0x277CBEB68] null];

        if (v13 == v18)
        {

          v13 = 0;
        }

        [(STHistoricalUsageViewController *)self _selectedDayUsageReportDidChangeFrom:v12 to:v13];
      }

      else
      {
        if (![v10 isEqualToString:@"selectedBarView"])
        {
          goto LABEL_30;
        }

        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v19 = [MEMORY[0x277CBEB68] null];

        if (v12 == v19)
        {

          v12 = 0;
        }

        v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v20 = [MEMORY[0x277CBEB68] null];

        if (v13 == v20)
        {

          v13 = 0;
        }

        [(STHistoricalUsageViewController *)self _selectedBarViewDidChangeFrom:v12 to:v13];
      }
    }

LABEL_29:
    goto LABEL_30;
  }

  v21.receiver = self;
  v21.super_class = STHistoricalUsageViewController;
  [(STHistoricalUsageViewController *)&v21 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_30:
}

- (void)_selectedWeekUsageReportDidChange:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STHistoricalUsageViewController *)self isViewLoaded];
  if (v4 && v5)
  {
    v6 = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 week];
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [(STHistoricalUsageViewController *)self coordinator];
    v10 = [v9 viewModel];

    if ([v10 selectedDay] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(STHistoricalUsageViewController *)self titleView];
      [v11 setUsageReport:v4];
    }

    v12 = [v10 selectedWeek];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 != v12)
    {
      v15 = v12 > v8;
      v14 = [(STHistoricalUsageViewController *)self _weekGraphViewControllerForWeek:v12 usageReport:v4];

      [(STHistoricalUsageViewController *)self setSelectedWeekGraphViewController:v14];
      v16 = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
      v19[0] = v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      [v16 setViewControllers:v17 direction:v15 animated:v8 != 0x7FFFFFFFFFFFFFFFLL completion:0];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 67109120;
        v18[1] = v8 == 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STHistoricalUsageViewController _selectedWeekUsageReportDidChange setViewControllers, isInitialLoad : %d", v18, 8u);
      }
    }

    else
    {
      v13 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:v4];
      [v7 setDataSet:v13 animated:1];

      v14 = v7;
    }

    [v14 setSelectedWeekday:{objc_msgSend(v10, "selectedDay")}];
  }
}

- (void)_selectedDayUsageReportDidChangeFrom:(id)a3 to:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (-[STHistoricalUsageViewController isViewLoaded](self, "isViewLoaded") && ([v6 isEqual:v7] & 1) == 0)
  {
    v8 = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
    if (!v7)
    {
LABEL_14:
      v27 = [(STHistoricalUsageViewController *)self dayGraphContainerView];
      [v27 setHidden:v7 == 0];

      [(STHistoricalUsageViewController *)self setCurrentViewMode:v7 != 0];
      [(STHistoricalUsageViewController *)self setSelectedDayGraphViewController:v8];

      goto LABEL_15;
    }

    v9 = [(STHistoricalUsageViewController *)self titleView];
    [v9 setUsageReport:v7];

    v10 = [(STHistoricalUsageViewController *)self coordinator];
    v11 = [v10 viewModel];

    v12 = [v11 selectedDay];
    v13 = [v11 selectedWeek];
    if (v8)
    {
      v14 = [v8 day];
      v15 = [v8 week];
      if (v15 == v13)
      {
        [v8 setWeek:v13];
        [v8 setDay:v12];
        v16 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:v7];
        [v8 setDataSet:v16 animated:1];
        [(STHistoricalUsageViewController *)self maximumYAxisLabelWidth];
        v18 = v17;
        [v8 maximumYAxisLabelWidth];
        if (v18 >= v19)
        {
          v19 = v18;
        }

        [(STHistoricalUsageViewController *)self setMaximumYAxisLabelWidth:v19];

        if (v14 == v12)
        {
          goto LABEL_13;
        }

        v20 = 0;
        v21 = v13;
      }

      else
      {
        v21 = v15;
        v22 = [(STHistoricalUsageViewController *)self _dayGraphViewControllerForDay:v12 week:v13 usageReport:v7];

        v20 = 1;
        v8 = v22;
      }
    }

    else
    {
      v8 = [(STHistoricalUsageViewController *)self _dayGraphViewControllerForDay:v12 week:v13 usageReport:v7];
      v20 = 1;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v23 = v13 > v21;
    v24 = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v28[0] = v8;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [v24 setViewControllers:v25 direction:v23 animated:v20 completion:0];

LABEL_13:
    v26 = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
    [v26 setSelectedWeekday:v12];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_selectedBarViewDidChangeFrom:(id)a3 to:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14 != v6 && ([v14 isEqual:v6] & 1) == 0)
  {
    v7 = [(STHistoricalUsageViewController *)self coordinator];
    v8 = v7;
    if (v6)
    {
      v9 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [v6 dataPoint];
      v11 = [v10 date];
      v12 = [v9 component:512 fromDate:v11];
      v13 = [v8 viewModel];
      [v13 setSelectedDay:v12];
    }

    else
    {
      v9 = [v7 viewModel];
      [v9 setSelectedDay:0x7FFFFFFFFFFFFFFFLL];
    }
  }
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [STHistoricalUsageViewController pageViewController:viewControllerBeforeViewController:];
  }

  v8 = [(STHistoricalUsageViewController *)self _nextGraphViewControllerForPageViewController:v6 currentGraphViewController:v7 direction:1];

  return v8;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [STHistoricalUsageViewController pageViewController:viewControllerAfterViewController:];
  }

  v8 = [(STHistoricalUsageViewController *)self _nextGraphViewControllerForPageViewController:v6 currentGraphViewController:v7 direction:0];

  return v8;
}

- (id)_nextGraphViewControllerForPageViewController:(id)a3 currentGraphViewController:(id)a4 direction:(int64_t)a5
{
  v7 = a3;
  v8 = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
  v9 = [v7 isEqual:v8];

  if (!v9)
  {
    v19 = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v20 = [v7 isEqual:v19];

    if (!v20)
    {
      v18 = 0;
      goto LABEL_40;
    }

    v16 = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
    v21 = [v16 week];
    v22 = [v16 day];
    v17 = [MEMORY[0x277CBEA80] currentCalendar];
    v23 = [v17 maximumRangeOfUnit:512];
    v25 = v24 + v23 - 1;
    v26 = [v17 firstWeekday];
    v27 = v26 - 1;
    if (v26 == v23)
    {
      v27 = v25;
    }

    if (v22 == v25)
    {
      v28 = v23;
    }

    else
    {
      v28 = v22 + 1;
    }

    v29 = v21 - (v22 == v27);
    v30 = v22 - 1;
    if (v22 == v23)
    {
      v30 = v25;
    }

    if (v22 == v26)
    {
      v31 = v21 + 1;
    }

    else
    {
      v31 = v21;
    }

    if (a5 != 1)
    {
      v30 = 0;
      v31 = 0;
    }

    if (a5)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    if (a5)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    v34 = [(STHistoricalUsageViewController *)self coordinator];
    v35 = [v34 viewModel];

    v36 = [v35 weekUsageReports];
    v37 = [v36 count];

    if (v33 >= v37)
    {
      v18 = 0;
    }

    else
    {
      v42 = [v35 dayUsageReportByWeekdays];
      v38 = [v42 objectAtIndexedSubscript:v33];
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
      v40 = [v38 objectForKeyedSubscript:v39];

      if (v40)
      {
        v18 = [(STHistoricalUsageViewController *)self _dayGraphViewControllerForDay:v32 week:v33 usageReport:v40];
      }

      else
      {
        v18 = 0;
      }
    }

    goto LABEL_38;
  }

  v10 = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
  v11 = [v10 week];

  if (a5 == 1)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  if (a5)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11 - 1;
  }

  v14 = [(STHistoricalUsageViewController *)self coordinator];
  v15 = [v14 viewModel];
  v16 = [v15 weekUsageReports];

  if (v13 < [v16 count])
  {
    v17 = [v16 objectAtIndexedSubscript:v13];
    v18 = [(STHistoricalUsageViewController *)self _weekGraphViewControllerForWeek:v13 usageReport:v17];
LABEL_38:

    goto LABEL_39;
  }

  v18 = 0;
LABEL_39:

LABEL_40:

  return v18;
}

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v6 count];

  if (v8 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [STHistoricalUsageViewController pageViewController:willTransitionToViewControllers:];
  }

  v9 = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
  v10 = [v13 isEqual:v9];

  if (v10)
  {
    [(STHistoricalUsageViewController *)self setSelectedWeekGraphViewController:v7];
  }

  else
  {
    v11 = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v12 = [v13 isEqual:v11];

    if (v12)
    {
      [(STHistoricalUsageViewController *)self setSelectedDayGraphViewController:v7];
    }
  }
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v6 = a6;
  v21 = a3;
  v9 = a5;
  v10 = [v9 firstObject];
  v11 = [v9 count];

  if (v11 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [STHistoricalUsageViewController pageViewController:didFinishAnimating:previousViewControllers:transitionCompleted:];
  }

  v12 = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
  v13 = [v21 isEqual:v12];

  if (v13)
  {
    if (v6)
    {
      v14 = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
      v15 = [v14 week];
      v16 = [(STHistoricalUsageViewController *)self coordinator];
      v17 = [v16 viewModel];
      [v17 setSelectedWeek:v15];

LABEL_9:
      goto LABEL_12;
    }

    [(STHistoricalUsageViewController *)self setSelectedWeekGraphViewController:v10];
  }

  else
  {
    v18 = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v19 = [v21 isEqual:v18];

    if (!v19)
    {
      goto LABEL_12;
    }

    if (v6)
    {
      v14 = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
      v16 = [(STHistoricalUsageViewController *)self coordinator];
      v20 = [v16 viewModel];
      [v20 setSelectedWeek:objc_msgSend(v14 selectedDay:{"week"), objc_msgSend(v14, "day")}];

      goto LABEL_9;
    }

    [(STHistoricalUsageViewController *)self setSelectedDayGraphViewController:v10];
  }

LABEL_12:
}

- (id)_weekGraphViewControllerForWeek:(unint64_t)a3 usageReport:(id)a4
{
  v6 = a4;
  v7 = [STUsageGraphViewController alloc];
  [(STHistoricalUsageViewController *)self graphHeight];
  v8 = [(STUsageGraphViewController *)v7 initWithTitleView:0 graphHeight:0 includePaddle:0 useVibrancy:?];
  [(STUsageGraphViewController *)v8 setWeek:a3];
  v9 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:v6];

  [(STUsageGraphViewController *)v8 setDataSet:v9 animated:0];
  v10 = [(STHistoricalUsageViewController *)self coordinator];
  v11 = [v10 viewModel];
  -[STUsageGraphViewController setSelectedWeekday:](v8, "setSelectedWeekday:", [v11 selectedDay]);

  v12 = [(STHistoricalUsageViewController *)self weekGraphContainerHeightConstraint];
  if (!v12)
  {
    v13 = [(STUsageGraphViewController *)v8 view];
    [v13 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v15 = v14;

    v16 = [(STHistoricalUsageViewController *)self weekGraphContainerView];
    v17 = [v16 heightAnchor];
    v12 = [v17 constraintEqualToConstant:v15];

    [v12 setActive:1];
    [(STHistoricalUsageViewController *)self setWeekGraphContainerHeightConstraint:v12];
  }

  [(STHistoricalUsageViewController *)self maximumYAxisLabelWidth];
  v19 = v18;
  [(STUsageGraphViewController *)v8 maximumYAxisLabelWidth];
  if (v19 < v20)
  {
    v19 = v20;
  }

  [(STHistoricalUsageViewController *)self setMaximumYAxisLabelWidth:v19];
  [(STUsageGraphViewController *)v8 setYAxisLabelSectionWidth:v19];

  return v8;
}

- (id)_dayGraphViewControllerForDay:(unint64_t)a3 week:(unint64_t)a4 usageReport:(id)a5
{
  v8 = a5;
  v9 = [STUsageGraphViewController alloc];
  [(STHistoricalUsageViewController *)self graphHeight];
  v10 = [(STUsageGraphViewController *)v9 initWithTitleView:0 graphHeight:0 includePaddle:0 useVibrancy:?];
  [(STUsageGraphViewController *)v10 setWeek:a4];
  [(STUsageGraphViewController *)v10 setDay:a3];
  v11 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:v8];

  [(STUsageGraphViewController *)v10 setDataSet:v11 animated:0];
  v12 = [(STHistoricalUsageViewController *)self dayGraphContainerHeightConstraint];
  if (!v12)
  {
    v13 = [(STUsageGraphViewController *)v10 view];
    [v13 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v15 = v14;

    v16 = [(STHistoricalUsageViewController *)self dayGraphContainerView];
    v17 = [v16 heightAnchor];
    v12 = [v17 constraintEqualToConstant:v15];

    [v12 setActive:1];
    [(STHistoricalUsageViewController *)self setDayGraphContainerHeightConstraint:v12];
  }

  [(STHistoricalUsageViewController *)self maximumYAxisLabelWidth];
  v19 = v18;
  [(STUsageGraphViewController *)v10 maximumYAxisLabelWidth];
  if (v19 < v20)
  {
    v19 = v20;
  }

  [(STHistoricalUsageViewController *)self setMaximumYAxisLabelWidth:v19];
  [(STUsageGraphViewController *)v10 setYAxisLabelSectionWidth:v19];

  return v10;
}

- (id)_dataSetFromUsageReport:(id)a3
{
  v5 = a3;
  v6 = [(STHistoricalUsageViewController *)self type];
  v7 = v6;
  v8 = 0;
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v10 = [v5 notificationsDataSet];
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_11;
      }

      v10 = [v5 pickupsDataSet];
    }

    goto LABEL_10;
  }

  if ((v6 - 2) < 3)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"STHistoricalUsageViewController.m" lineNumber:468 description:{@"Unexpected type: %lu", v7}];

    v8 = 0;
    goto LABEL_11;
  }

  if (v6 == 1)
  {
    v10 = [v5 categoryUsageDataSet];
LABEL_10:
    v8 = v10;
  }

LABEL_11:

  return v8;
}

- (void)pageViewController:viewControllerBeforeViewController:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[viewController isKindOfClass:[STUsageGraphViewController class]]" object:? file:? lineNumber:? description:?];
}

- (void)pageViewController:viewControllerAfterViewController:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[viewController isKindOfClass:[STUsageGraphViewController class]]" object:? file:? lineNumber:? description:?];
}

- (void)pageViewController:willTransitionToViewControllers:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"(pendingViewControllers.count == 1) && [pendingGraphViewController isKindOfClass:[STUsageGraphViewController class]]" object:? file:? lineNumber:? description:?];
}

- (void)pageViewController:didFinishAnimating:previousViewControllers:transitionCompleted:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"(previousViewControllers.count == 1) && [previousGraphViewController isKindOfClass:[STUsageGraphViewController class]]" object:? file:? lineNumber:? description:?];
}

@end