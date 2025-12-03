@interface STUsageSummaryTableViewCellProvider
+ (id)usageSummaryTableViewCellForUserDSID:(id)d;
- (BOOL)shouldShowUsageSummaryForUser;
- (STUsageDetailsViewModelCoordinator)usageCoordinator;
- (STUsageSummaryTableViewCellProvider)initWithUserDSID:(id)d;
- (id)usageSummaryTableViewCellForUser;
- (void)_deviceIdentifierDidChangeTo:(id)to;
- (void)_usageReportDidChangeFrom:(id)from to:(id)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refresh;
- (void)shouldShowUsageSummaryForUser;
@end

@implementation STUsageSummaryTableViewCellProvider

+ (id)usageSummaryTableViewCellForUserDSID:(id)d
{
  dCopy = d;
  v4 = [[STUsageSummaryTableViewCellProvider alloc] initWithUserDSID:dCopy];

  usageSummaryTableViewCellForUser = [(STUsageSummaryTableViewCellProvider *)v4 usageSummaryTableViewCellForUser];

  return usageSummaryTableViewCellForUser;
}

- (STUsageSummaryTableViewCellProvider)initWithUserDSID:(id)d
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = STUsageSummaryTableViewCellProvider;
  v6 = [(STUsageSummaryTableViewCellProvider *)&v18 init];
  objc_storeStrong(&v6->_userDSID, d);
  v7 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  v8 = [v7 deviceIdentifierForChildUserDSID:dCopy];
  v9 = [v7 usageReportTypeForChildUserDSID:dCopy];
  v10 = [[STRootViewModelCoordinator alloc] initWithUserDSID:dCopy deviceIdentifier:v8 usageReportType:v9 usageContext:0];
  rootCoordinator = v6->_rootCoordinator;
  v6->_rootCoordinator = v10;

  [(STRootViewModelCoordinator *)v6->_rootCoordinator addObserver:v6 forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" options:3 context:"KVOContextUsageSummaryTableViewCellProvider"];
  objc_initWeak(&location, v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__STUsageSummaryTableViewCellProvider_initWithUserDSID___block_invoke;
  v15[3] = &unk_279B7D8A8;
  objc_copyWeak(&v16, &location);
  v12 = [v7 observeDeviceIdentifierChangesForChildUserDSID:dCopy onChange:v15];
  usageDetailsSelectionObservation = v6->_usageDetailsSelectionObservation;
  v6->_usageDetailsSelectionObservation = v12;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v6;
}

void __56__STUsageSummaryTableViewCellProvider_initWithUserDSID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceIdentifierDidChangeTo:v3];
}

- (void)dealloc
{
  [(STRootViewModelCoordinator *)self->_rootCoordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" context:"KVOContextUsageSummaryTableViewCellProvider"];
  v3.receiver = self;
  v3.super_class = STUsageSummaryTableViewCellProvider;
  [(STUsageSummaryTableViewCellProvider *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextUsageSummaryTableViewCellProvider")
  {
    pathCopy = path;
    [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];

    v13 = [pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v16 == null2)
      {

        v16 = 0;
      }

      [(STUsageSummaryTableViewCellProvider *)self _usageReportDidChangeFrom:v14 to:v16];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = STUsageSummaryTableViewCellProvider;
    pathCopy2 = path;
    [(STUsageSummaryTableViewCellProvider *)&v18 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_usageReportDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (toCopy != fromCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    legacyUsageCell = [(STUsageSummaryTableViewCellProvider *)self legacyUsageCell];
    usageCoordinator = [(STUsageSummaryTableViewCellProvider *)self usageCoordinator];
    [legacyUsageCell setValue:usageCoordinator];
  }
}

- (void)_deviceIdentifierDidChangeTo:(id)to
{
  toCopy = to;
  legacyUsageCell = [(STUsageSummaryTableViewCellProvider *)self legacyUsageCell];

  if (legacyUsageCell)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__STUsageSummaryTableViewCellProvider__deviceIdentifierDidChangeTo___block_invoke;
    v6[3] = &unk_279B7CAE0;
    v6[4] = self;
    v7 = toCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __68__STUsageSummaryTableViewCellProvider__deviceIdentifierDidChangeTo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) usageCoordinator];
  [v3 setSelectedDeviceIdentifier:v2];

  v4 = [*(a1 + 32) usageCoordinator];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__STUsageSummaryTableViewCellProvider__deviceIdentifierDidChangeTo___block_invoke_2;
  v5[3] = &unk_279B7CC18;
  v5[4] = *(a1 + 32);
  [v4 loadViewModelWithCompletionHandler:v5];
}

void __68__STUsageSummaryTableViewCellProvider__deviceIdentifierDidChangeTo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D4BA00] usage];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__STUsageSummaryTableViewCellProvider__deviceIdentifierDidChangeTo___block_invoke_2_cold_1(v3, v4);
    }
  }

  else
  {
    v5 = [*(a1 + 32) legacyUsageCell];
    v6 = [*(a1 + 32) usageCoordinator];
    [v5 setValue:v6];
  }
}

- (BOOL)shouldShowUsageSummaryForUser
{
  rootCoordinator = [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];
  viewModel = [rootCoordinator viewModel];
  if ([viewModel hasWatchOSDevicesOnly])
  {
    isScreenTimeEnabled = 0;
  }

  else
  {
    rootCoordinator2 = [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];
    viewModel2 = [rootCoordinator2 viewModel];
    isScreenTimeEnabled = [viewModel2 isScreenTimeEnabled];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(STUsageSummaryTableViewCellProvider *)isScreenTimeEnabled shouldShowUsageSummaryForUser];
  }

  return isScreenTimeEnabled;
}

- (id)usageSummaryTableViewCellForUser
{
  v3 = [[STOverallUsageSummaryCell alloc] initWithStyle:1 reuseIdentifier:@"STLegacyOverallUsageSummaryCell" specifier:0];
  [(STUsageSummaryTableViewCellProvider *)self setLegacyUsageCell:v3];

  [(STUsageSummaryTableViewCellProvider *)self refresh];
  _os_feature_enabled_impl();

  return [(STUsageSummaryTableViewCellProvider *)self legacyUsageCell];
}

- (void)refresh
{
  legacyUsageCell = [(STUsageSummaryTableViewCellProvider *)self legacyUsageCell];

  if (legacyUsageCell)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__STUsageSummaryTableViewCellProvider_refresh__block_invoke;
    block[3] = &unk_279B7C998;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __46__STUsageSummaryTableViewCellProvider_refresh__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) usageCoordinator];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__STUsageSummaryTableViewCellProvider_refresh__block_invoke_2;
  v3[3] = &unk_279B7CC18;
  v3[4] = *(a1 + 32);
  [v2 loadViewModelWithCompletionHandler:v3];
}

void __46__STUsageSummaryTableViewCellProvider_refresh__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __46__STUsageSummaryTableViewCellProvider_refresh__block_invoke_2_cold_1(v3);
    }
  }

  else
  {
    v4 = [*(a1 + 32) usageCoordinator];
    [v4 refreshUsageData];

    v5 = [*(a1 + 32) legacyUsageCell];
    v6 = [*(a1 + 32) usageCoordinator];
    [v5 setValue:v6];
  }
}

- (STUsageDetailsViewModelCoordinator)usageCoordinator
{
  rootCoordinator = [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];
  usageDetailsCoordinator = [rootCoordinator usageDetailsCoordinator];

  return usageDetailsCoordinator;
}

void __68__STUsageSummaryTableViewCellProvider__deviceIdentifierDidChangeTo___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "On device identifier change, error loading view model : %@", &v2, 0xCu);
}

- (void)shouldShowUsageSummaryForUser
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = @"No";
  if (self)
  {
    v1 = @"Yes";
  }

  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Should show usage summary cell: %@", &v2, 0xCu);
}

void __46__STUsageSummaryTableViewCellProvider_refresh__block_invoke_2_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error loading for STOverallUsageSummaryCell: %@", &v1, 0xCu);
}

@end