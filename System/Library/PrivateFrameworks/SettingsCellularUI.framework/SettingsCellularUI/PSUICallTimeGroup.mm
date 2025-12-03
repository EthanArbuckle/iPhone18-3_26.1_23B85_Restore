@interface PSUICallTimeGroup
- (PSListController)hostController;
- (PSUICallTimeGroup)initWithListController:(id)controller;
- (id)callTimeDurationRestrictedToCurrentPeriod:(BOOL)period;
- (id)specifiers;
- (void)handleCallTimersChanged;
@end

@implementation PSUICallTimeGroup

- (PSUICallTimeGroup)initWithListController:(id)controller
{
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = PSUICallTimeGroup;
  v5 = [(PSUICallTimeGroup *)&v28 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostController, controllerCopy);
    v7 = objc_alloc_init(MEMORY[0x277CF7D40]);
    callHistoryManager = v6->_callHistoryManager;
    v6->_callHistoryManager = v7;

    v9 = MEMORY[0x277D3FAD8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CALL_TIME" value:&stru_287733598 table:@"Cellular"];
    v12 = [v9 groupSpecifierWithName:v11];
    groupSpecifier = v6->_groupSpecifier;
    v6->_groupSpecifier = v12;

    v14 = MEMORY[0x277D3FAD8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CURRENT_CALL_PERIOD" value:&stru_287733598 table:@"Cellular"];
    v17 = [v14 preferenceSpecifierNamed:v16 target:v6 set:0 get:sel_callTime_ detail:0 cell:4 edit:0];
    currentCallTimeSpecifier = v6->_currentCallTimeSpecifier;
    v6->_currentCallTimeSpecifier = v17;

    [(PSSpecifier *)v6->_currentCallTimeSpecifier setIdentifier:@"CALL_TIME_IN_PERIOD"];
    v19 = *MEMORY[0x277D40088];
    v20 = MEMORY[0x277CBEC38];
    [(PSSpecifier *)v6->_currentCallTimeSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40088]];
    v21 = MEMORY[0x277D3FAD8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"TOTAL" value:&stru_287733598 table:@"Cellular"];
    v24 = [v21 preferenceSpecifierNamed:v23 target:v6 set:0 get:sel_lifetimeCallTime_ detail:0 cell:4 edit:0];
    lifetimeCallTimeSpecifier = v6->_lifetimeCallTimeSpecifier;
    v6->_lifetimeCallTimeSpecifier = v24;

    [(PSSpecifier *)v6->_lifetimeCallTimeSpecifier setIdentifier:@"CALL_TIME_TOTAL"];
    [(PSSpecifier *)v6->_lifetimeCallTimeSpecifier setProperty:v20 forKey:v19];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_handleCallTimersChanged name:*MEMORY[0x277CF7E20] object:0];
  }

  return v6;
}

- (id)specifiers
{
  v19 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICallTimeGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "not null";
    if (self->_groupSpecifier)
    {
      v5 = "not null";
    }

    else
    {
      v5 = "null";
    }

    lifetimeCallTimeSpecifier = self->_lifetimeCallTimeSpecifier;
    if (self->_currentCallTimeSpecifier)
    {
      v7 = "not null";
    }

    else
    {
      v7 = "null";
    }

    *buf = 136315650;
    if (!lifetimeCallTimeSpecifier)
    {
      v4 = "null";
    }

    v14 = v5;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Call time group returning, group: %s, current: %s, lifetime: %s", buf, 0x20u);
  }

  v11 = *&self->_groupSpecifier;
  v12 = self->_lifetimeCallTimeSpecifier;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:3];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)handleCallTimersChanged
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICallTimeGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF7E20];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Call time group received notification %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PSUICallTimeGroup_handleCallTimersChanged__block_invoke;
  v6[3] = &unk_279BA9DA8;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__PSUICallTimeGroup_handleCallTimersChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostController];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained currentCallTimeSpecifier];
  [v2 reloadSpecifier:v4 animated:1];

  v7 = [*(a1 + 32) hostController];
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 lifetimeCallTimeSpecifier];
  [v7 reloadSpecifier:v6 animated:1];
}

- (id)callTimeDurationRestrictedToCurrentPeriod:(BOOL)period
{
  periodCopy = period;
  callHistoryManager = [(PSUICallTimeGroup *)self callHistoryManager];
  [callHistoryManager callTimersGetOutgoing];
  v7 = v6;
  callHistoryManager2 = [(PSUICallTimeGroup *)self callHistoryManager];
  [callHistoryManager2 callTimersGetIncoming];
  v10 = v7 + v9;

  callHistoryManager3 = [(PSUICallTimeGroup *)self callHistoryManager];
  [callHistoryManager3 callTimersGetLifetime];
  v13 = v12;

  v14 = ceil(v10 / 60.0);
  v15 = ceil(v13 / 60.0);
  if (!periodCopy)
  {
    v14 = v15;
  }

  v16 = v14 * 60.0;
  v17 = objc_alloc_init(MEMORY[0x277CCA958]);
  [v17 setUnitsStyle:3];
  [v17 setMaximumUnitCount:2];
  [v17 setAllowedUnits:112];
  v18 = [v17 stringFromTimeInterval:v16];

  return v18;
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end