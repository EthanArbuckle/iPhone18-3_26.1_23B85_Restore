@interface STSegmentedControlGroupSpecifierProvider
- (STSegmentedControlGroupSpecifierProvider)init;
- (void)_selectedDayDidChange:(id)a3;
- (void)_selectedSegmentIndexChanged:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
@end

@implementation STSegmentedControlGroupSpecifierProvider

- (STSegmentedControlGroupSpecifierProvider)init
{
  v9.receiver = self;
  v9.super_class = STSegmentedControlGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v9 init];
  v3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v4 = objc_opt_new();
  v5 = [v4 UUIDString];
  [v3 setIdentifier:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FFA0]];

  [v3 setTarget:v2];
  [v3 setButtonAction:sel__selectedSegmentIndexChanged_];
  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v3];

  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedDay" context:"KVOContextSegmentedControlGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STSegmentedControlGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedDay" options:5 context:"KVOContextSegmentedControlGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextSegmentedControlGroupSpecifierProvider")
  {
    v12 = a3;
    [(STUsageGroupSpecifierProvider *)self coordinator];

    v13 = [v12 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedDay"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
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
    v11 = a3;
    [(STSegmentedControlGroupSpecifierProvider *)&v16 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_selectedDayDidChange:(id)a3
{
  v8 = a3;
  v4 = [(STGroupSpecifierProvider *)self groupSpecifier];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FFB0]];

  if (v8)
  {
    v6 = [v8 unsignedIntegerValue] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 segmentedControl];
  [v7 setSelectedSegmentIndex:v6];
}

- (void)_selectedSegmentIndexChanged:(id)a3
{
  v5 = [a3 selectedSegmentIndex];
  if (v5 >= 2)
  {
    [(STSegmentedControlGroupSpecifierProvider *)a2 _selectedSegmentIndexChanged:?];
  }

  v6 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v7 = [v6 usageDetailsCoordinator];
  v9 = [v7 viewModel];

  if (v5)
  {
    v8 = v9;
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    [v9 selectToday];
  }

  else
  {
    [v9 setSelectedDay:0x7FFFFFFFFFFFFFFFLL];
  }

  v8 = v9;
LABEL_8:
}

- (void)_selectedSegmentIndexChanged:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSegmentedControlGroupSpecifierProvider.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"(selectedSegmentIndex == STUsageReportTypeDay) || (selectedSegmentIndex == STUsageReportTypeWeek)"}];
}

@end