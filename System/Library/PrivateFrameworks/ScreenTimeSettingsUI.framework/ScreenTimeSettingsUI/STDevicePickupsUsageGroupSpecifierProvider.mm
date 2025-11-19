@interface STDevicePickupsUsageGroupSpecifierProvider
- (STDevicePickupsUsageGroupSpecifierProvider)init;
- (id)_usageDetailsCoordinator:(id)a3;
- (id)newSpecifierWithUsageItem:(id)a3;
- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4;
- (void)_specifierIdentifierDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)showMostUsedDetailListController:(id)a3;
- (void)updateSpecifier:(id)a3 usageItem:(id)a4;
@end

@implementation STDevicePickupsUsageGroupSpecifierProvider

- (STDevicePickupsUsageGroupSpecifierProvider)init
{
  v11.receiver = self;
  v11.super_class = STDevicePickupsUsageGroupSpecifierProvider;
  v2 = [(STShowMoreUsageGroupSpecifierProvider *)&v11 init];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [v3 localizedStringForKey:@"PickupsGroupName" value:&stru_28766E5A8 table:0];
  v6 = [v4 groupSpecifierWithName:v5];
  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];

  v7 = [v3 localizedStringForKey:@"DevicePickupSummaryName" value:&stru_28766E5A8 table:0];
  v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:v2 set:0 get:sel__usageDetailsCoordinator_ detail:0 cell:-1 edit:0];
  [v8 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [(STShowMoreUsageGroupSpecifierProvider *)v2 setSummarySpecifier:v8];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:v2 selector:sel__specifierIdentifierDidChange_ name:0x2876741E8 object:0];

  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STDevicePickupsUsageGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextDevicePickupsUsageGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v13 = [MEMORY[0x277CBEB68] null];

      if (v12 == v13)
      {

        v12 = 0;
      }

      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v12 BOOLValue] ^ 1);
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if (![v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
      {
        goto LABEL_14;
      }

      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v12 == v14)
      {

        v12 = 0;
      }

      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = [MEMORY[0x277CBEB68] null];

      if (v15 == v16)
      {

        v15 = 0;
      }

      [(STDevicePickupsUsageGroupSpecifierProvider *)self _selectedUsageReportDidChangeFrom:v12 to:v15];
    }

    goto LABEL_14;
  }

  v17.receiver = self;
  v17.super_class = STDevicePickupsUsageGroupSpecifierProvider;
  [(STDevicePickupsUsageGroupSpecifierProvider *)&v17 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_14:
}

- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6 && ([v11 isEqual:v6] & 1) == 0)
  {
    v7 = [v11 type];
    v8 = v7 == [v6 type];
    v9 = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v9 animated:v8];

    v10 = [v6 pickups];
    [(STShowMoreUsageGroupSpecifierProvider *)self setUsageItems:v10];
  }
}

- (id)newSpecifierWithUsageItem:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = [v5 displayName];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:sel_getPickupsInfo_ detail:0 cell:2 edit:0];

  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v8 = [MEMORY[0x277D75348] systemTealColor];
  [v7 setObject:v8 forKeyedSubscript:0x2876778C8];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v7 setUserInfo:v5];

  [v7 setControllerLoadAction:sel_showMostUsedDetailListController_];
  return v7;
}

- (void)updateSpecifier:(id)a3 usageItem:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 userInfo];

  if (v6 != v5)
  {
    v7 = [v5 displayName];
    [v8 setName:v7];

    [v8 setUserInfo:v5];
  }
}

- (id)_usageDetailsCoordinator:(id)a3
{
  v3 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v4 = [v3 usageDetailsCoordinator];

  return v4;
}

- (void)showMostUsedDetailListController:(id)a3
{
  v4 = a3;
  v10 = [v4 userInfo];
  v5 = [STDrillInDetailListController alloc];
  v6 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v7 = [(STDrillInDetailListController *)v5 initWithUsageItem:v10 coordinator:v6];

  v8 = [(STGroupSpecifierProvider *)self delegate];
  [(STDrillInDetailListController *)v7 setParentController:v8];
  v9 = [v8 rootController];
  [(STDrillInDetailListController *)v7 setRootController:v9];

  [(STDrillInDetailListController *)v7 setSpecifier:v4];
  [(STGroupSpecifierProvider *)self showController:v7 animated:1];
}

- (void)_specifierIdentifierDidChange:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKeyedSubscript:0x287674208];
  v5 = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
  [v5 setIdentifier:v4];
}

@end