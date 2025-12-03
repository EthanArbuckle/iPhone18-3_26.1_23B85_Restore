@interface PSUIResetStatisticsGroup
- (PSUIResetStatisticsGroup)initWithDataCache:(id)cache callHistoryManager:(id)manager delegate:(id)delegate;
- (PSUIResetStatisticsGroupDelegate)delegate;
- (id)_createResetConfirmationAlertDict;
- (id)_lastUpdateDate;
- (id)specifiers;
- (id)statsEnabled:(id)enabled;
- (void)_updateFooterText;
- (void)clearStats;
- (void)clearStatsPressed:(id)pressed;
- (void)createSpecifiers;
- (void)setStatsEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation PSUIResetStatisticsGroup

- (PSUIResetStatisticsGroup)initWithDataCache:(id)cache callHistoryManager:(id)manager delegate:(id)delegate
{
  cacheCopy = cache;
  managerCopy = manager;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = PSUIResetStatisticsGroup;
  v12 = [(PSUIResetStatisticsGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataCache, cache);
    objc_storeStrong(&v13->_callHistoryManager, manager);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    [(PSUIResetStatisticsGroup *)v13 createSpecifiers];
    [(PSUIResetStatisticsGroup *)v13 _updateFooterText];
  }

  return v13;
}

- (void)createSpecifiers
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_USAGE_STATISTICS"];
  groupSpecifier = self->_groupSpecifier;
  self->_groupSpecifier = v3;

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CELLULAR_USAGE_STATISTICS" value:&stru_287733598 table:@"Cellular"];
  [(PSSpecifier *)self->_groupSpecifier setName:v6];

  v7 = MEMORY[0x277D3FAD8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ENABLE_CELLULAR_STATISTICS" value:&stru_287733598 table:@"Cellular"];
  v10 = [v7 preferenceSpecifierNamed:v9 target:self set:sel_setStatsEnabled_specifier_ get:sel_statsEnabled_ detail:0 cell:6 edit:0];
  enableStatisticsSpecifier = self->_enableStatisticsSpecifier;
  self->_enableStatisticsSpecifier = v10;

  v12 = MEMORY[0x277CBEC38];
  [(PSSpecifier *)self->_enableStatisticsSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v13 = MEMORY[0x277D3F9C8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"Reset Statistics" value:&stru_287733598 table:@"Cellular"];
  v16 = [v13 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];
  resetButtonSpecifier = self->_resetButtonSpecifier;
  self->_resetButtonSpecifier = v16;

  [(PSConfirmationSpecifier *)self->_resetButtonSpecifier setConfirmationAction:sel_clearStatsPressed_];
  v18 = self->_resetButtonSpecifier;
  _createResetConfirmationAlertDict = [(PSUIResetStatisticsGroup *)self _createResetConfirmationAlertDict];
  [(PSConfirmationSpecifier *)v18 setupWithDictionary:_createResetConfirmationAlertDict];

  v20 = self->_resetButtonSpecifier;
  v21 = *MEMORY[0x277D3FE80];

  [(PSConfirmationSpecifier *)v20 setProperty:v12 forKey:v21];
}

- (id)_createResetConfirmationAlertDict
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RESET_STATISTICS_CANCEL" value:&stru_287733598 table:@"Cellular"];
  [dictionary setObject:v4 forKey:*MEMORY[0x277D3FE78]];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"RESET_STATISTICS_OK" value:&stru_287733598 table:@"Cellular"];
  [dictionary setObject:v6 forKey:*MEMORY[0x277D3FE88]];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"RESET_STATISTICS_MSG" value:&stru_287733598 table:@"Cellular"];
  [dictionary setObject:v8 forKey:*MEMORY[0x277D3FE90]];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"RESET_STATISTICS_TITLE" value:&stru_287733598 table:@"Cellular"];
  [dictionary setObject:v10 forKey:*MEMORY[0x277D3FE98]];

  return dictionary;
}

- (id)specifiers
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *&self->_groupSpecifier;
  resetButtonSpecifier = self->_resetButtonSpecifier;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_lastUpdateDate
{
  copyStartDateOfCellularDataUsageRecords = [(PSUICoreTelephonyDataCache *)self->_dataCache copyStartDateOfCellularDataUsageRecords];

  return copyStartDateOfCellularDataUsageRecords;
}

- (void)_updateFooterText
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ENABLE_STATISTICS_EXPLANATION" value:&stru_287733598 table:@"Cellular"];

  _lastUpdateDate = [(PSUIResetStatisticsGroup *)self _lastUpdateDate];
  if (_lastUpdateDate)
  {
    v6 = [MEMORY[0x277CCA968] localizedStringFromDate:_lastUpdateDate dateStyle:2 timeStyle:1];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"LAST" value:&stru_287733598 table:@"Cellular"];
    v10 = [v4 stringByAppendingFormat:v8, v6];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LAST" value:&stru_287733598 table:@"Cellular"];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NEVER" value:&stru_287733598 table:@"Cellular"];
    v10 = [v4 stringByAppendingFormat:v7, v9];

    v4 = v9;
  }

  [(PSSpecifier *)self->_groupSpecifier setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
}

- (void)setStatsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  objc_initWeak(&location, self);
  dataCache = self->_dataCache;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__PSUIResetStatisticsGroup_setStatsEnabled_specifier___block_invoke;
  v10[3] = &unk_279BAA288;
  objc_copyWeak(&v11, &location);
  v12 = bOOLValue;
  [(PSUICoreTelephonyDataCache *)dataCache setCellularUsageStatisticsEnabled:bOOLValue completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__PSUIResetStatisticsGroup_setStatsEnabled_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 delegate];
    [v4 didModifyStatisticsSetting];

    if ((*(a1 + 40) & 1) == 0)
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      v6 = [v5 getLogger];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Successfully disabled cellular usage statistics, resetting statistics", v8, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 clearStats];
    }
  }
}

- (id)statsEnabled:(id)enabled
{
  isCellularUsageStatisticsEnabled = [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularUsageStatisticsEnabled];
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithBool:isCellularUsageStatisticsEnabled];
}

- (void)clearStatsPressed:(id)pressed
{
  getLogger = [(PSUIResetStatisticsGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Reset Statistics button pressed", v6, 2u);
  }

  [(PSUIResetStatisticsGroup *)self clearStats];
  delegate = [(PSUIResetStatisticsGroup *)self delegate];
  [delegate didResetStatistics];
}

- (void)clearStats
{
  getLogger = [(PSUIResetStatisticsGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Reset Statistics button pressed, clearing voice usage", buf, 2u);
  }

  callHistoryManager = [(PSUIResetStatisticsGroup *)self callHistoryManager];
  [callHistoryManager callTimersReset];

  getLogger2 = [(PSUIResetStatisticsGroup *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Clearing data usage", v9, 2u);
  }

  [(PSUICoreTelephonyDataCache *)self->_dataCache eraseCellularDataUsageRecords];
  v6 = *MEMORY[0x277CBECE8];
  v7 = WiFiManagerClientCreate();
  if (v7)
  {
    v8 = v7;
    WiFiManagerClientSetProperty();
    CFRelease(v8);
  }

  [(PSUIResetStatisticsGroup *)self _updateFooterText];
}

- (PSUIResetStatisticsGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end