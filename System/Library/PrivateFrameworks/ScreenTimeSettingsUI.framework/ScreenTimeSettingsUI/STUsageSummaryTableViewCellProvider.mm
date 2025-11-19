@interface STUsageSummaryTableViewCellProvider
+ (id)usageSummaryTableViewCellForUserDSID:(id)a3;
- (BOOL)shouldShowUsageSummaryForUser;
- (STUsageDetailsViewModelCoordinator)usageCoordinator;
- (STUsageSummaryTableViewCellProvider)initWithUserDSID:(id)a3;
- (id)usageSummaryTableViewCellForUser;
- (void)_deviceIdentifierDidChangeTo:(id)a3;
- (void)_usageReportDidChangeFrom:(id)a3 to:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)refresh;
- (void)shouldShowUsageSummaryForUser;
@end

@implementation STUsageSummaryTableViewCellProvider

+ (id)usageSummaryTableViewCellForUserDSID:(id)a3
{
  v3 = a3;
  v4 = [[STUsageSummaryTableViewCellProvider alloc] initWithUserDSID:v3];

  v5 = [(STUsageSummaryTableViewCellProvider *)v4 usageSummaryTableViewCellForUser];

  return v5;
}

- (STUsageSummaryTableViewCellProvider)initWithUserDSID:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = STUsageSummaryTableViewCellProvider;
  v6 = [(STUsageSummaryTableViewCellProvider *)&v18 init];
  objc_storeStrong(&v6->_userDSID, a3);
  v7 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  v8 = [v7 deviceIdentifierForChildUserDSID:v5];
  v9 = [v7 usageReportTypeForChildUserDSID:v5];
  v10 = [[STRootViewModelCoordinator alloc] initWithUserDSID:v5 deviceIdentifier:v8 usageReportType:v9 usageContext:0];
  rootCoordinator = v6->_rootCoordinator;
  v6->_rootCoordinator = v10;

  [(STRootViewModelCoordinator *)v6->_rootCoordinator addObserver:v6 forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" options:3 context:"KVOContextUsageSummaryTableViewCellProvider"];
  objc_initWeak(&location, v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__STUsageSummaryTableViewCellProvider_initWithUserDSID___block_invoke;
  v15[3] = &unk_279B7D8A8;
  objc_copyWeak(&v16, &location);
  v12 = [v7 observeDeviceIdentifierChangesForChildUserDSID:v5 onChange:v15];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextUsageSummaryTableViewCellProvider")
  {
    v12 = a3;
    [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];

    v13 = [v12 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
      {

        v14 = 0;
      }

      v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v17 = [MEMORY[0x277CBEB68] null];

      if (v16 == v17)
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
    v11 = a3;
    [(STUsageSummaryTableViewCellProvider *)&v18 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_usageReportDidChangeFrom:(id)a3 to:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6 != v9 && ([v9 isEqual:v6] & 1) == 0)
  {
    v7 = [(STUsageSummaryTableViewCellProvider *)self legacyUsageCell];
    v8 = [(STUsageSummaryTableViewCellProvider *)self usageCoordinator];
    [v7 setValue:v8];
  }
}

- (void)_deviceIdentifierDidChangeTo:(id)a3
{
  v4 = a3;
  v5 = [(STUsageSummaryTableViewCellProvider *)self legacyUsageCell];

  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__STUsageSummaryTableViewCellProvider__deviceIdentifierDidChangeTo___block_invoke;
    v6[3] = &unk_279B7CAE0;
    v6[4] = self;
    v7 = v4;
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
  v3 = [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];
  v4 = [v3 viewModel];
  if ([v4 hasWatchOSDevicesOnly])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];
    v7 = [v6 viewModel];
    v5 = [v7 isScreenTimeEnabled];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(STUsageSummaryTableViewCellProvider *)v5 shouldShowUsageSummaryForUser];
  }

  return v5;
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
  v3 = [(STUsageSummaryTableViewCellProvider *)self legacyUsageCell];

  if (v3)
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
  v2 = [(STUsageSummaryTableViewCellProvider *)self rootCoordinator];
  v3 = [v2 usageDetailsCoordinator];

  return v3;
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
  if (a1)
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