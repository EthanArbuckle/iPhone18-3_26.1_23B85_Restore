@interface STDevicePickupsUsageGroupSpecifierProvider
- (STDevicePickupsUsageGroupSpecifierProvider)init;
- (id)_usageDetailsCoordinator:(id)coordinator;
- (id)newSpecifierWithUsageItem:(id)item;
- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to;
- (void)_specifierIdentifierDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)showMostUsedDetailListController:(id)controller;
- (void)updateSpecifier:(id)specifier usageItem:(id)item;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel__specifierIdentifierDidChange_ name:0x2876741E8 object:0];

  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STDevicePickupsUsageGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextDevicePickupsUsageGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextDevicePickupsUsageGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v12 BOOLValue] ^ 1);
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if (![pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
      {
        goto LABEL_14;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v12 == null2)
      {

        v12 = 0;
      }

      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v15 == null3)
      {

        v15 = 0;
      }

      [(STDevicePickupsUsageGroupSpecifierProvider *)self _selectedUsageReportDidChangeFrom:v12 to:v15];
    }

    goto LABEL_14;
  }

  v17.receiver = self;
  v17.super_class = STDevicePickupsUsageGroupSpecifierProvider;
  [(STDevicePickupsUsageGroupSpecifierProvider *)&v17 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_14:
}

- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    type = [fromCopy type];
    v8 = type == [toCopy type];
    summarySpecifier = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
    [(STGroupSpecifierProvider *)self reloadSpecifier:summarySpecifier animated:v8];

    pickups = [toCopy pickups];
    [(STShowMoreUsageGroupSpecifierProvider *)self setUsageItems:pickups];
  }
}

- (id)newSpecifierWithUsageItem:(id)item
{
  v4 = MEMORY[0x277D3FAD8];
  itemCopy = item;
  displayName = [itemCopy displayName];
  v7 = [v4 preferenceSpecifierNamed:displayName target:self set:0 get:sel_getPickupsInfo_ detail:0 cell:2 edit:0];

  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  systemTealColor = [MEMORY[0x277D75348] systemTealColor];
  [v7 setObject:systemTealColor forKeyedSubscript:0x2876778C8];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v7 setUserInfo:itemCopy];

  [v7 setControllerLoadAction:sel_showMostUsedDetailListController_];
  return v7;
}

- (void)updateSpecifier:(id)specifier usageItem:(id)item
{
  specifierCopy = specifier;
  itemCopy = item;
  userInfo = [specifierCopy userInfo];

  if (userInfo != itemCopy)
  {
    displayName = [itemCopy displayName];
    [specifierCopy setName:displayName];

    [specifierCopy setUserInfo:itemCopy];
  }
}

- (id)_usageDetailsCoordinator:(id)coordinator
{
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];

  return usageDetailsCoordinator;
}

- (void)showMostUsedDetailListController:(id)controller
{
  controllerCopy = controller;
  userInfo = [controllerCopy userInfo];
  v5 = [STDrillInDetailListController alloc];
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  v7 = [(STDrillInDetailListController *)v5 initWithUsageItem:userInfo coordinator:coordinator];

  delegate = [(STGroupSpecifierProvider *)self delegate];
  [(STDrillInDetailListController *)v7 setParentController:delegate];
  rootController = [delegate rootController];
  [(STDrillInDetailListController *)v7 setRootController:rootController];

  [(STDrillInDetailListController *)v7 setSpecifier:controllerCopy];
  [(STGroupSpecifierProvider *)self showController:v7 animated:1];
}

- (void)_specifierIdentifierDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:0x287674208];
  summarySpecifier = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
  [summarySpecifier setIdentifier:v4];
}

@end