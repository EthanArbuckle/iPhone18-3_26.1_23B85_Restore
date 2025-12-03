@interface PSUIMiscOptionsGroup
- (PSBillingPeriodSource)billingPeriodSource;
- (PSListController)hostController;
- (PSUIMiscOptionsGroup)initWithHostController:(id)controller cellularManagementCache:(id)cache carrierSpaceManager:(id)manager dataCache:(id)dataCache carrierBundleCache:(id)bundleCache backupManagerWrapper:(id)wrapper callHistoryManager:(id)historyManager appleAccountStore:(id)self0 resetStatisticsDelegate:(id)self1;
- (PSUIResetStatisticsGroupDelegate)resetStatisticsDelegate;
- (id)specifiers;
@end

@implementation PSUIMiscOptionsGroup

- (PSUIMiscOptionsGroup)initWithHostController:(id)controller cellularManagementCache:(id)cache carrierSpaceManager:(id)manager dataCache:(id)dataCache carrierBundleCache:(id)bundleCache backupManagerWrapper:(id)wrapper callHistoryManager:(id)historyManager appleAccountStore:(id)self0 resetStatisticsDelegate:(id)self1
{
  obj = controller;
  cacheCopy = cache;
  managerCopy = manager;
  dataCacheCopy = dataCache;
  bundleCacheCopy = bundleCache;
  wrapperCopy = wrapper;
  historyManagerCopy = historyManager;
  storeCopy = store;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = PSUIMiscOptionsGroup;
  v19 = [(PSUIMiscOptionsGroup *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_hostController, obj);
    objc_storeStrong(&v20->_managementCache, cache);
    objc_storeStrong(&v20->_carrierSpaceManager, manager);
    objc_storeStrong(&v20->_dataCache, dataCache);
    objc_storeStrong(&v20->_carrierBundleCache, bundleCache);
    objc_storeStrong(&v20->_backupManagerWrapper, wrapper);
    objc_storeStrong(&v20->_callHistoryManager, historyManager);
    objc_storeStrong(&v20->_accountStore, store);
    objc_storeWeak(&v20->_resetStatisticsDelegate, delegateCopy);
  }

  return v20;
}

- (id)specifiers
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([PSUIWiFiAssistSwitchSpecifier shouldShowWifiAssist:self->_carrierBundleCache])
  {
    v4 = +[PSUIWiFiAssistSwitchSpecifier wifiAssistGroupSpecifier];
    [v3 addObject:v4];

    initDefault = [[PSUIWiFiAssistSwitchSpecifier alloc] initDefault];
    WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);
    [initDefault setBillingPeriodSource:WeakRetained];

    [v3 addObject:initDefault];
  }

  v7 = [[PSUICloudDriveCellularSwitchSpecifier alloc] initWithAppleAccountStore:self->_accountStore];
  if ([(PSUICloudDriveCellularSwitchSpecifier *)v7 shouldShowCloudDrive])
  {
    cloudDriveGroupSpecifier = [(PSUICloudDriveCellularSwitchSpecifier *)v7 cloudDriveGroupSpecifier];
    [v3 addObject:cloudDriveGroupSpecifier];

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[PSCellularManagementCache isGlobalDataModificationRestricted](self->_managementCache, "isGlobalDataModificationRestricted") ^ 1}];
    [(PSUICloudDriveCellularSwitchSpecifier *)v7 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

    [v3 addObject:v7];
  }

  v10 = [[PSUICloudBackupCellularSwitchSpecifier alloc] initWithAppleAccountStore:self->_accountStore backupManagerWrapper:self->_backupManagerWrapper];
  if ([(PSUICloudBackupCellularSwitchSpecifier *)v10 shouldShowCloudBackupCarrier])
  {
    cloudBackupGroupSpecifier = [(PSUICloudBackupCellularSwitchSpecifier *)v10 cloudBackupGroupSpecifier];
    [v3 addObject:cloudBackupGroupSpecifier];

    [v3 addObject:v10];
  }

  capabilities = [(PSUICarrierSpaceManager *)self->_carrierSpaceManager capabilities];
  if ([capabilities supportsUsage])
  {

    goto LABEL_10;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
LABEL_10:
    getLogger = [(PSUIMiscOptionsGroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      capabilities2 = [(PSUICarrierSpaceManager *)self->_carrierSpaceManager capabilities];
      supportsUsage = [capabilities2 supportsUsage];
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      v34[0] = 67109376;
      v34[1] = supportsUsage;
      v35 = 1024;
      sf_isiPad2 = [currentDevice2 sf_isiPad];
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Not adding call time group because it isn't supported (%d) or we're an iPad (%d)", v34, 0xEu);
    }

    goto LABEL_15;
  }

  callTimeGroup = self->_callTimeGroup;
  if (!callTimeGroup)
  {
    v20 = [PSUICallTimeGroup alloc];
    v21 = objc_loadWeakRetained(&self->_hostController);
    v22 = [(PSUICallTimeGroup *)v20 initWithListController:v21];
    v23 = self->_callTimeGroup;
    self->_callTimeGroup = v22;

    callTimeGroup = self->_callTimeGroup;
  }

  getLogger = [(PSUICallTimeGroup *)callTimeGroup specifiers];
  [v3 addObjectsFromArray:getLogger];
LABEL_15:

  resetStatisticsGroup = self->_resetStatisticsGroup;
  if (!resetStatisticsGroup)
  {
    v25 = [PSUIResetStatisticsGroup alloc];
    dataCache = self->_dataCache;
    callHistoryManager = self->_callHistoryManager;
    v28 = objc_loadWeakRetained(&self->_resetStatisticsDelegate);
    v29 = [(PSUIResetStatisticsGroup *)v25 initWithDataCache:dataCache callHistoryManager:callHistoryManager delegate:v28];
    v30 = self->_resetStatisticsGroup;
    self->_resetStatisticsGroup = v29;

    resetStatisticsGroup = self->_resetStatisticsGroup;
  }

  specifiers = [(PSUIResetStatisticsGroup *)resetStatisticsGroup specifiers];
  [v3 addObjectsFromArray:specifiers];

  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

- (PSUIResetStatisticsGroupDelegate)resetStatisticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resetStatisticsDelegate);

  return WeakRetained;
}

- (PSBillingPeriodSource)billingPeriodSource
{
  WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);

  return WeakRetained;
}

@end