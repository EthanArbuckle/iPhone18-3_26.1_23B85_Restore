@interface STHistoricalUsageViewController
+ (id)historicalUsageViewControllerOfType:(unint64_t)type graphHeight:(double)height;
- (id)_dataSetFromUsageReport:(id)report;
- (id)_dayGraphViewControllerForDay:(unint64_t)day week:(unint64_t)week usageReport:(id)report;
- (id)_nextGraphViewControllerForPageViewController:(id)controller currentGraphViewController:(id)viewController direction:(int64_t)direction;
- (id)_weekGraphViewControllerForWeek:(unint64_t)week usageReport:(id)report;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)_selectedBarViewDidChangeFrom:(id)from to:(id)to;
- (void)_selectedDayUsageReportDidChangeFrom:(id)from to:(id)to;
- (void)_selectedWeekUsageReportDidChange:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)setCoordinator:(id)coordinator;
- (void)setMaximumYAxisLabelWidth:(double)width;
- (void)setSelectedWeekGraphViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation STHistoricalUsageViewController

+ (id)historicalUsageViewControllerOfType:(unint64_t)type graphHeight:(double)height
{
  v6 = MEMORY[0x277D75AC8];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v6 storyboardWithName:@"HistoricalUsage" bundle:v7];

  instantiateInitialViewController = [v8 instantiateInitialViewController];
  *(instantiateInitialViewController + 1016) = type;
  *(instantiateInitialViewController + 1024) = height;

  return instantiateInitialViewController;
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
  type = [(STHistoricalUsageViewController *)self type];
  titleView = [(STHistoricalUsageViewController *)self titleView];
  [titleView setUsageItemType:type];

  coordinator = [(STHistoricalUsageViewController *)self coordinator];
  viewModel = [coordinator viewModel];

  if (viewModel)
  {
    selectedWeekUsageReport = [viewModel selectedWeekUsageReport];
    [(STHistoricalUsageViewController *)self _selectedWeekUsageReportDidChange:selectedWeekUsageReport];

    selectedDayUsageReport = [viewModel selectedDayUsageReport];
    [(STHistoricalUsageViewController *)self _selectedDayUsageReportDidChangeFrom:0 to:selectedDayUsageReport];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STHistoricalUsageViewController.viewDidLoad", v9, 2u);
  }
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  identifier = [segueCopy identifier];
  if ([identifier isEqualToString:@"WeekGraph"])
  {
    destinationViewController = [segueCopy destinationViewController];
    [destinationViewController setDataSource:self];
    [destinationViewController setDelegate:self];
    [(STHistoricalUsageViewController *)self setWeekGraphPageViewController:destinationViewController];
  }

  else
  {
    if (![identifier isEqualToString:@"DayGraph"])
    {
      goto LABEL_6;
    }

    destinationViewController = [segueCopy destinationViewController];
    [destinationViewController setDataSource:self];
    [destinationViewController setDelegate:self];
    [(STHistoricalUsageViewController *)self setDayGraphPageViewController:destinationViewController];
  }

LABEL_6:
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = self->_coordinator;
  if (coordinator != coordinatorCopy)
  {
    v11 = coordinatorCopy;
    coordinator = [(STUsageDetailsViewModelCoordinator *)coordinator isEqual:coordinatorCopy];
    coordinatorCopy = v11;
    if ((coordinator & 1) == 0)
    {
      [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedWeekUsageReport" context:"KVOContextHistoricalUsageViewController"];
      [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedDayUsageReport" context:"KVOContextHistoricalUsageViewController"];
      [(STUsageDetailsViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.selectedCoreDuetIdentifier" context:"KVOContextHistoricalUsageViewController"];
      viewModel = [(STUsageDetailsViewModelCoordinator *)self->_coordinator viewModel];
      selectedDayUsageReport = [viewModel selectedDayUsageReport];

      objc_storeStrong(&self->_coordinator, coordinator);
      viewModel2 = [(STUsageDetailsViewModelCoordinator *)v11 viewModel];
      selectedDayUsageReport2 = [viewModel2 selectedDayUsageReport];

      [(STUsageDetailsViewModelCoordinator *)v11 addObserver:self forKeyPath:@"viewModel.selectedWeekUsageReport" options:5 context:"KVOContextHistoricalUsageViewController"];
      [(STHistoricalUsageViewController *)self _selectedDayUsageReportDidChangeFrom:selectedDayUsageReport to:selectedDayUsageReport2];
      [(STUsageDetailsViewModelCoordinator *)v11 addObserver:self forKeyPath:@"viewModel.selectedDayUsageReport" options:3 context:"KVOContextHistoricalUsageViewController"];
      [(STUsageDetailsViewModelCoordinator *)v11 addObserver:self forKeyPath:@"viewModel.selectedCoreDuetIdentifier" options:3 context:"KVOContextHistoricalUsageViewController"];

      coordinatorCopy = v11;
    }
  }

  MEMORY[0x2821F96F8](coordinator, coordinatorCopy);
}

- (void)setSelectedWeekGraphViewController:(id)controller
{
  controllerCopy = controller;
  [(STUsageGraphViewController *)self->_selectedWeekGraphViewController removeObserver:self forKeyPath:@"selectedBarView" context:"KVOContextHistoricalUsageViewController"];
  selectedWeekGraphViewController = self->_selectedWeekGraphViewController;
  self->_selectedWeekGraphViewController = controllerCopy;
  v6 = controllerCopy;

  [(STUsageGraphViewController *)v6 addObserver:self forKeyPath:@"selectedBarView" options:3 context:"KVOContextHistoricalUsageViewController"];
}

- (void)setMaximumYAxisLabelWidth:(double)width
{
  self->_maximumYAxisLabelWidth = width;
  selectedWeekGraphViewController = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
  [selectedWeekGraphViewController setYAxisLabelSectionWidth:width];

  selectedDayGraphViewController = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
  [selectedDayGraphViewController setYAxisLabelSectionWidth:width];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextHistoricalUsageViewController")
  {
    [(STHistoricalUsageViewController *)self coordinator];

    if ([pathCopy isEqualToString:@"viewModel.selectedCoreDuetIdentifier"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      null2 = [MEMORY[0x277CBEB68] null];

      if (v13 == null2)
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

      if ([pathCopy isEqualToString:@"viewModel.selectedWeekUsageReport"])
      {
        v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null3 = [MEMORY[0x277CBEB68] null];

        if (v12 == null3)
        {

          v12 = 0;
        }

        [(STHistoricalUsageViewController *)self _selectedWeekUsageReportDidChange:v12];
        goto LABEL_29;
      }

      [(STHistoricalUsageViewController *)self coordinator];

      if ([pathCopy isEqualToString:@"viewModel.selectedDayUsageReport"])
      {
        v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        null4 = [MEMORY[0x277CBEB68] null];

        if (v12 == null4)
        {

          v12 = 0;
        }

        v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null5 = [MEMORY[0x277CBEB68] null];

        if (v13 == null5)
        {

          v13 = 0;
        }

        [(STHistoricalUsageViewController *)self _selectedDayUsageReportDidChangeFrom:v12 to:v13];
      }

      else
      {
        if (![pathCopy isEqualToString:@"selectedBarView"])
        {
          goto LABEL_30;
        }

        v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        null6 = [MEMORY[0x277CBEB68] null];

        if (v12 == null6)
        {

          v12 = 0;
        }

        v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null7 = [MEMORY[0x277CBEB68] null];

        if (v13 == null7)
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
  [(STHistoricalUsageViewController *)&v21 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_30:
}

- (void)_selectedWeekUsageReportDidChange:(id)change
{
  v19[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  isViewLoaded = [(STHistoricalUsageViewController *)self isViewLoaded];
  if (changeCopy && isViewLoaded)
  {
    selectedWeekGraphViewController = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
    v7 = selectedWeekGraphViewController;
    if (selectedWeekGraphViewController)
    {
      week = [selectedWeekGraphViewController week];
    }

    else
    {
      week = 0x7FFFFFFFFFFFFFFFLL;
    }

    coordinator = [(STHistoricalUsageViewController *)self coordinator];
    viewModel = [coordinator viewModel];

    if ([viewModel selectedDay] == 0x7FFFFFFFFFFFFFFFLL)
    {
      titleView = [(STHistoricalUsageViewController *)self titleView];
      [titleView setUsageReport:changeCopy];
    }

    selectedWeek = [viewModel selectedWeek];
    if (week == 0x7FFFFFFFFFFFFFFFLL || week != selectedWeek)
    {
      v15 = selectedWeek > week;
      v14 = [(STHistoricalUsageViewController *)self _weekGraphViewControllerForWeek:selectedWeek usageReport:changeCopy];

      [(STHistoricalUsageViewController *)self setSelectedWeekGraphViewController:v14];
      weekGraphPageViewController = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
      v19[0] = v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      [weekGraphPageViewController setViewControllers:v17 direction:v15 animated:week != 0x7FFFFFFFFFFFFFFFLL completion:0];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 67109120;
        v18[1] = week == 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STHistoricalUsageViewController _selectedWeekUsageReportDidChange setViewControllers, isInitialLoad : %d", v18, 8u);
      }
    }

    else
    {
      v13 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:changeCopy];
      [v7 setDataSet:v13 animated:1];

      v14 = v7;
    }

    [v14 setSelectedWeekday:{objc_msgSend(viewModel, "selectedDay")}];
  }
}

- (void)_selectedDayUsageReportDidChangeFrom:(id)from to:(id)to
{
  v28[1] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  if (-[STHistoricalUsageViewController isViewLoaded](self, "isViewLoaded") && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    selectedDayGraphViewController = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
    if (!toCopy)
    {
LABEL_14:
      dayGraphContainerView = [(STHistoricalUsageViewController *)self dayGraphContainerView];
      [dayGraphContainerView setHidden:toCopy == 0];

      [(STHistoricalUsageViewController *)self setCurrentViewMode:toCopy != 0];
      [(STHistoricalUsageViewController *)self setSelectedDayGraphViewController:selectedDayGraphViewController];

      goto LABEL_15;
    }

    titleView = [(STHistoricalUsageViewController *)self titleView];
    [titleView setUsageReport:toCopy];

    coordinator = [(STHistoricalUsageViewController *)self coordinator];
    viewModel = [coordinator viewModel];

    selectedDay = [viewModel selectedDay];
    selectedWeek = [viewModel selectedWeek];
    if (selectedDayGraphViewController)
    {
      v14 = [selectedDayGraphViewController day];
      week = [selectedDayGraphViewController week];
      if (week == selectedWeek)
      {
        [selectedDayGraphViewController setWeek:selectedWeek];
        [selectedDayGraphViewController setDay:selectedDay];
        v16 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:toCopy];
        [selectedDayGraphViewController setDataSet:v16 animated:1];
        [(STHistoricalUsageViewController *)self maximumYAxisLabelWidth];
        v18 = v17;
        [selectedDayGraphViewController maximumYAxisLabelWidth];
        if (v18 >= v19)
        {
          v19 = v18;
        }

        [(STHistoricalUsageViewController *)self setMaximumYAxisLabelWidth:v19];

        if (v14 == selectedDay)
        {
          goto LABEL_13;
        }

        v20 = 0;
        v21 = selectedWeek;
      }

      else
      {
        v21 = week;
        v22 = [(STHistoricalUsageViewController *)self _dayGraphViewControllerForDay:selectedDay week:selectedWeek usageReport:toCopy];

        v20 = 1;
        selectedDayGraphViewController = v22;
      }
    }

    else
    {
      selectedDayGraphViewController = [(STHistoricalUsageViewController *)self _dayGraphViewControllerForDay:selectedDay week:selectedWeek usageReport:toCopy];
      v20 = 1;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v23 = selectedWeek > v21;
    dayGraphPageViewController = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v28[0] = selectedDayGraphViewController;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [dayGraphPageViewController setViewControllers:v25 direction:v23 animated:v20 completion:0];

LABEL_13:
    selectedWeekGraphViewController = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
    [selectedWeekGraphViewController setSelectedWeekday:selectedDay];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_selectedBarViewDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    coordinator = [(STHistoricalUsageViewController *)self coordinator];
    v8 = coordinator;
    if (toCopy)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      dataPoint = [toCopy dataPoint];
      date = [dataPoint date];
      v12 = [currentCalendar component:512 fromDate:date];
      viewModel = [v8 viewModel];
      [viewModel setSelectedDay:v12];
    }

    else
    {
      currentCalendar = [coordinator viewModel];
      [currentCalendar setSelectedDay:0x7FFFFFFFFFFFFFFFLL];
    }
  }
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [STHistoricalUsageViewController pageViewController:viewControllerBeforeViewController:];
  }

  v8 = [(STHistoricalUsageViewController *)self _nextGraphViewControllerForPageViewController:controllerCopy currentGraphViewController:viewControllerCopy direction:1];

  return v8;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [STHistoricalUsageViewController pageViewController:viewControllerAfterViewController:];
  }

  v8 = [(STHistoricalUsageViewController *)self _nextGraphViewControllerForPageViewController:controllerCopy currentGraphViewController:viewControllerCopy direction:0];

  return v8;
}

- (id)_nextGraphViewControllerForPageViewController:(id)controller currentGraphViewController:(id)viewController direction:(int64_t)direction
{
  controllerCopy = controller;
  weekGraphPageViewController = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
  v9 = [controllerCopy isEqual:weekGraphPageViewController];

  if (!v9)
  {
    dayGraphPageViewController = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v20 = [controllerCopy isEqual:dayGraphPageViewController];

    if (!v20)
    {
      v18 = 0;
      goto LABEL_40;
    }

    selectedDayGraphViewController = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
    week = [selectedDayGraphViewController week];
    v22 = [selectedDayGraphViewController day];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v23 = [currentCalendar maximumRangeOfUnit:512];
    v25 = v24 + v23 - 1;
    firstWeekday = [currentCalendar firstWeekday];
    v27 = firstWeekday - 1;
    if (firstWeekday == v23)
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

    v29 = week - (v22 == v27);
    v30 = v22 - 1;
    if (v22 == v23)
    {
      v30 = v25;
    }

    if (v22 == firstWeekday)
    {
      v31 = week + 1;
    }

    else
    {
      v31 = week;
    }

    if (direction != 1)
    {
      v30 = 0;
      v31 = 0;
    }

    if (direction)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    if (direction)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    coordinator = [(STHistoricalUsageViewController *)self coordinator];
    viewModel = [coordinator viewModel];

    weekUsageReports = [viewModel weekUsageReports];
    v37 = [weekUsageReports count];

    if (v33 >= v37)
    {
      v18 = 0;
    }

    else
    {
      dayUsageReportByWeekdays = [viewModel dayUsageReportByWeekdays];
      v38 = [dayUsageReportByWeekdays objectAtIndexedSubscript:v33];
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

  selectedWeekGraphViewController = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
  week2 = [selectedWeekGraphViewController week];

  if (direction == 1)
  {
    v12 = week2 + 1;
  }

  else
  {
    v12 = 0;
  }

  if (direction)
  {
    v13 = v12;
  }

  else
  {
    v13 = week2 - 1;
  }

  coordinator2 = [(STHistoricalUsageViewController *)self coordinator];
  viewModel2 = [coordinator2 viewModel];
  selectedDayGraphViewController = [viewModel2 weekUsageReports];

  if (v13 < [selectedDayGraphViewController count])
  {
    currentCalendar = [selectedDayGraphViewController objectAtIndexedSubscript:v13];
    v18 = [(STHistoricalUsageViewController *)self _weekGraphViewControllerForWeek:v13 usageReport:currentCalendar];
LABEL_38:

    goto LABEL_39;
  }

  v18 = 0;
LABEL_39:

LABEL_40:

  return v18;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  controllerCopy = controller;
  controllersCopy = controllers;
  v7 = [controllersCopy objectAtIndexedSubscript:0];
  v8 = [controllersCopy count];

  if (v8 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [STHistoricalUsageViewController pageViewController:willTransitionToViewControllers:];
  }

  weekGraphPageViewController = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
  v10 = [controllerCopy isEqual:weekGraphPageViewController];

  if (v10)
  {
    [(STHistoricalUsageViewController *)self setSelectedWeekGraphViewController:v7];
  }

  else
  {
    dayGraphPageViewController = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v12 = [controllerCopy isEqual:dayGraphPageViewController];

    if (v12)
    {
      [(STHistoricalUsageViewController *)self setSelectedDayGraphViewController:v7];
    }
  }
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  controllerCopy = controller;
  controllersCopy = controllers;
  firstObject = [controllersCopy firstObject];
  v11 = [controllersCopy count];

  if (v11 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [STHistoricalUsageViewController pageViewController:didFinishAnimating:previousViewControllers:transitionCompleted:];
  }

  weekGraphPageViewController = [(STHistoricalUsageViewController *)self weekGraphPageViewController];
  v13 = [controllerCopy isEqual:weekGraphPageViewController];

  if (v13)
  {
    if (completedCopy)
    {
      selectedWeekGraphViewController = [(STHistoricalUsageViewController *)self selectedWeekGraphViewController];
      week = [selectedWeekGraphViewController week];
      coordinator = [(STHistoricalUsageViewController *)self coordinator];
      viewModel = [coordinator viewModel];
      [viewModel setSelectedWeek:week];

LABEL_9:
      goto LABEL_12;
    }

    [(STHistoricalUsageViewController *)self setSelectedWeekGraphViewController:firstObject];
  }

  else
  {
    dayGraphPageViewController = [(STHistoricalUsageViewController *)self dayGraphPageViewController];
    v19 = [controllerCopy isEqual:dayGraphPageViewController];

    if (!v19)
    {
      goto LABEL_12;
    }

    if (completedCopy)
    {
      selectedWeekGraphViewController = [(STHistoricalUsageViewController *)self selectedDayGraphViewController];
      coordinator = [(STHistoricalUsageViewController *)self coordinator];
      viewModel2 = [coordinator viewModel];
      [viewModel2 setSelectedWeek:objc_msgSend(selectedWeekGraphViewController selectedDay:{"week"), objc_msgSend(selectedWeekGraphViewController, "day")}];

      goto LABEL_9;
    }

    [(STHistoricalUsageViewController *)self setSelectedDayGraphViewController:firstObject];
  }

LABEL_12:
}

- (id)_weekGraphViewControllerForWeek:(unint64_t)week usageReport:(id)report
{
  reportCopy = report;
  v7 = [STUsageGraphViewController alloc];
  [(STHistoricalUsageViewController *)self graphHeight];
  v8 = [(STUsageGraphViewController *)v7 initWithTitleView:0 graphHeight:0 includePaddle:0 useVibrancy:?];
  [(STUsageGraphViewController *)v8 setWeek:week];
  v9 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:reportCopy];

  [(STUsageGraphViewController *)v8 setDataSet:v9 animated:0];
  coordinator = [(STHistoricalUsageViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  -[STUsageGraphViewController setSelectedWeekday:](v8, "setSelectedWeekday:", [viewModel selectedDay]);

  weekGraphContainerHeightConstraint = [(STHistoricalUsageViewController *)self weekGraphContainerHeightConstraint];
  if (!weekGraphContainerHeightConstraint)
  {
    view = [(STUsageGraphViewController *)v8 view];
    [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v15 = v14;

    weekGraphContainerView = [(STHistoricalUsageViewController *)self weekGraphContainerView];
    heightAnchor = [weekGraphContainerView heightAnchor];
    weekGraphContainerHeightConstraint = [heightAnchor constraintEqualToConstant:v15];

    [weekGraphContainerHeightConstraint setActive:1];
    [(STHistoricalUsageViewController *)self setWeekGraphContainerHeightConstraint:weekGraphContainerHeightConstraint];
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

- (id)_dayGraphViewControllerForDay:(unint64_t)day week:(unint64_t)week usageReport:(id)report
{
  reportCopy = report;
  v9 = [STUsageGraphViewController alloc];
  [(STHistoricalUsageViewController *)self graphHeight];
  v10 = [(STUsageGraphViewController *)v9 initWithTitleView:0 graphHeight:0 includePaddle:0 useVibrancy:?];
  [(STUsageGraphViewController *)v10 setWeek:week];
  [(STUsageGraphViewController *)v10 setDay:day];
  v11 = [(STHistoricalUsageViewController *)self _dataSetFromUsageReport:reportCopy];

  [(STUsageGraphViewController *)v10 setDataSet:v11 animated:0];
  dayGraphContainerHeightConstraint = [(STHistoricalUsageViewController *)self dayGraphContainerHeightConstraint];
  if (!dayGraphContainerHeightConstraint)
  {
    view = [(STUsageGraphViewController *)v10 view];
    [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v15 = v14;

    dayGraphContainerView = [(STHistoricalUsageViewController *)self dayGraphContainerView];
    heightAnchor = [dayGraphContainerView heightAnchor];
    dayGraphContainerHeightConstraint = [heightAnchor constraintEqualToConstant:v15];

    [dayGraphContainerHeightConstraint setActive:1];
    [(STHistoricalUsageViewController *)self setDayGraphContainerHeightConstraint:dayGraphContainerHeightConstraint];
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

- (id)_dataSetFromUsageReport:(id)report
{
  reportCopy = report;
  type = [(STHistoricalUsageViewController *)self type];
  v7 = type;
  v8 = 0;
  if (type > 4)
  {
    if (type == 5)
    {
      notificationsDataSet = [reportCopy notificationsDataSet];
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_11;
      }

      notificationsDataSet = [reportCopy pickupsDataSet];
    }

    goto LABEL_10;
  }

  if ((type - 2) < 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STHistoricalUsageViewController.m" lineNumber:468 description:{@"Unexpected type: %lu", v7}];

    v8 = 0;
    goto LABEL_11;
  }

  if (type == 1)
  {
    notificationsDataSet = [reportCopy categoryUsageDataSet];
LABEL_10:
    v8 = notificationsDataSet;
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