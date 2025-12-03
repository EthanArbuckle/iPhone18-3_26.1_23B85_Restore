@interface STSegmentedControlGroupSpecifierProvider
- (STSegmentedControlGroupSpecifierProvider)init;
- (void)_selectedDayDidChange:(id)change;
- (void)_selectedSegmentIndexChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STSegmentedControlGroupSpecifierProvider

- (STSegmentedControlGroupSpecifierProvider)init
{
  v9.receiver = self;
  v9.super_class = STSegmentedControlGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v9 init];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v4 = objc_opt_new();
  uUIDString = [v4 UUIDString];
  [emptyGroupSpecifier setIdentifier:uUIDString];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [emptyGroupSpecifier setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FFA0]];

  [emptyGroupSpecifier setTarget:v2];
  [emptyGroupSpecifier setButtonAction:sel__selectedSegmentIndexChanged_];
  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:emptyGroupSpecifier];

  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedDay" context:"KVOContextSegmentedControlGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STSegmentedControlGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedDay" options:5 context:"KVOContextSegmentedControlGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextSegmentedControlGroupSpecifierProvider")
  {
    pathCopy = path;
    [(STUsageGroupSpecifierProvider *)self coordinator];

    v13 = [pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedDay"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      [(STSegmentedControlGroupSpecifierProvider *)self _selectedDayDidChange:v14];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STSegmentedControlGroupSpecifierProvider;
    pathCopy2 = path;
    [(STSegmentedControlGroupSpecifierProvider *)&v16 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_selectedDayDidChange:(id)change
{
  changeCopy = change;
  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  v5 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FFB0]];

  if (changeCopy)
  {
    v6 = [changeCopy unsignedIntegerValue] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  segmentedControl = [v5 segmentedControl];
  [segmentedControl setSelectedSegmentIndex:v6];
}

- (void)_selectedSegmentIndexChanged:(id)changed
{
  selectedSegmentIndex = [changed selectedSegmentIndex];
  if (selectedSegmentIndex >= 2)
  {
    [(STSegmentedControlGroupSpecifierProvider *)a2 _selectedSegmentIndexChanged:?];
  }

  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];

  if (selectedSegmentIndex)
  {
    v8 = viewModel;
    if (selectedSegmentIndex != 1)
    {
      goto LABEL_8;
    }

    [viewModel selectToday];
  }

  else
  {
    [viewModel setSelectedDay:0x7FFFFFFFFFFFFFFFLL];
  }

  v8 = viewModel;
LABEL_8:
}

- (void)_selectedSegmentIndexChanged:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSegmentedControlGroupSpecifierProvider.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"(selectedSegmentIndex == STUsageReportTypeDay) || (selectedSegmentIndex == STUsageReportTypeWeek)"}];
}

@end