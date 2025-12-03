@interface CTUIWirelessUsageAndAppPolicyController
- (CTUIWirelessUsageAndAppPolicyController)init;
- (id)specifiers;
- (void)_handleCellularPlanChangedNotification:(id)notification;
- (void)_handleWirelessDataUsageChangedNotification:(id)notification;
- (void)dealloc;
- (void)managedConfigurationProfileListDidChange;
- (void)managedConfigurationSettingsDidChange;
- (void)simStatusDidChange:(id)change status:(id)status;
@end

@implementation CTUIWirelessUsageAndAppPolicyController

- (CTUIWirelessUsageAndAppPolicyController)init
{
  v21.receiver = self;
  v21.super_class = CTUIWirelessUsageAndAppPolicyController;
  v2 = [(CTUIWirelessUsageAndAppPolicyController *)&v21 init];
  v3 = v2;
  if (v2)
  {
    getLogger = [(CTUIWirelessUsageAndAppPolicyController *)v2 getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "CTUIWirelessUsageAndAppPolicyController starting (init)", v20, 2u);
    }

    v5 = objc_alloc(MEMORY[0x277CC37B0]);
    v6 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"wireless_usage_and_app_policy"];
    v7 = [v5 initWithQueue:v6];
    coreTelephonyClient = v3->_coreTelephonyClient;
    v3->_coreTelephonyClient = v7;

    [(CoreTelephonyClient *)v3->_coreTelephonyClient setDelegate:v3];
    v9 = MEMORY[0x277D3FAD8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"USE_WIRELESS_DATA" value:&stru_287733598 table:@"Cellular"];
    v12 = [v9 groupSpecifierWithName:v11];
    groupSpecifier = v3->_groupSpecifier;
    v3->_groupSpecifier = v12;

    v3->_shouldCalculateUsage = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleNewCarrierNotification_ name:@"PSNewCarrierNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__handleCellularPlanChangedNotification_ name:@"PSUICellularPlanChanged" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel__handleWirelessDataUsageChangedNotification_ name:*MEMORY[0x277D4D8A8] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel_managedConfigurationSettingsDidChange name:*MEMORY[0x277D25CA0] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v3 selector:sel_managedConfigurationProfileListDidChange name:*MEMORY[0x277D26148] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CTUIWirelessUsageAndAppPolicyController;
  [(CTUIWirelessUsageAndAppPolicyController *)&v4 dealloc];
}

- (id)specifiers
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    if (!self->_appDataUsageGroup)
    {
      v5 = [[PSUIAppDataUsageGroup alloc] initWithListController:self groupSpecifier:self->_groupSpecifier];
      appDataUsageGroup = self->_appDataUsageGroup;
      self->_appDataUsageGroup = v5;
    }

    if (self->_shouldCalculateUsage)
    {
      [(PSUIAppDataUsageGroup *)self->_appDataUsageGroup calculateUsage];
      self->_shouldCalculateUsage = 0;
    }

    v17[0] = self->_groupSpecifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    appDataUsageGroup = [(CTUIWirelessUsageAndAppPolicyController *)self appDataUsageGroup];
    specifiers = [appDataUsageGroup specifiers];
    v10 = [v7 arrayByAddingObjectsFromArray:specifiers];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v10;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v12 = MEMORY[0x277D4D878];
  v13 = [v4 mutableCopy];
  [v12 logSpecifiers:v13 origin:@"[CTUIWirelessUsageAndAppPolicyController specifiers] end"];

  v14 = *(&self->super.super.super.super.super.isa + v3);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*MEMORY[0x277CC3F00] isEqualToString:status];
  getLogger = [(CTUIWirelessUsageAndAppPolicyController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CTUIWirelessUsageAndAppPolicyController simStatusDidChange:status:]";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s with simReady %d", &v8, 0x12u);
  }

  if (v5)
  {
    self->_shouldCalculateUsage = 1;
    [(CTUIWirelessUsageAndAppPolicyController *)self reloadSpecifiers];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleCellularPlanChangedNotification:(id)notification
{
  self->_shouldCalculateUsage = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CTUIWirelessUsageAndAppPolicyController__handleCellularPlanChangedNotification___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_handleWirelessDataUsageChangedNotification:(id)notification
{
  getLogger = [(CTUIWirelessUsageAndAppPolicyController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "CTUIWirelessUsageAndAppPolicyController received wirelessDataUsageChanged notification", buf, 2u);
  }

  self->_shouldCalculateUsage = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__CTUIWirelessUsageAndAppPolicyController__handleWirelessDataUsageChangedNotification___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)managedConfigurationSettingsDidChange
{
  getLogger = [(CTUIWirelessUsageAndAppPolicyController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "CTUIWirelessUsageAndAppPolicyController received managedConfigurationSettingsDidChange notification", buf, 2u);
  }

  self->_shouldCalculateUsage = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CTUIWirelessUsageAndAppPolicyController_managedConfigurationSettingsDidChange__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)managedConfigurationProfileListDidChange
{
  getLogger = [(CTUIWirelessUsageAndAppPolicyController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "CTUIWirelessUsageAndAppPolicyController received managedConfigurationProfileListDidChange notification", buf, 2u);
  }

  self->_shouldCalculateUsage = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CTUIWirelessUsageAndAppPolicyController_managedConfigurationProfileListDidChange__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end