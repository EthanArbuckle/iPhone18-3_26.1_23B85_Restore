@interface STUsageSharingGroupSpecifierProvider
- (STUsageSharingGroupSpecifierProvider)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STUsageSharingGroupSpecifierProvider

- (STUsageSharingGroupSpecifierProvider)init
{
  v11.receiver = self;
  v11.super_class = STUsageSharingGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v11 init];
  v3 = MEMORY[0x277D3FAD8];
  v4 = objc_opt_new();
  uUIDString = [v4 UUIDString];
  v6 = [v3 groupSpecifierWithID:uUIDString];

  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AADC_ScreenTimeGroupSpecifierFooterText"];
  v9 = [v7 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];
  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isSharingUsageData" context:@"KVOContextUsageSharingGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STUsageSharingGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isSharingUsageData" options:5 context:@"KVOContextUsageSharingGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == @"KVOContextUsageSharingGroupSpecifierProvider")
  {
    if ([path isEqualToString:@"viewModel.isSharingUsageData"])
    {
      v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v11 == null)
      {

        v11 = 0;
      }

      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v11 BOOLValue] ^ 1);
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = STUsageSharingGroupSpecifierProvider;
    [(STUsageSharingGroupSpecifierProvider *)&v13 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

@end