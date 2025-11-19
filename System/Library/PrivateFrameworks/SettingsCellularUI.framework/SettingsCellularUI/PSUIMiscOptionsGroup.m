@interface PSUIMiscOptionsGroup
- (PSBillingPeriodSource)billingPeriodSource;
- (PSListController)hostController;
- (PSUIMiscOptionsGroup)initWithHostController:(id)a3 cellularManagementCache:(id)a4 carrierSpaceManager:(id)a5 dataCache:(id)a6 carrierBundleCache:(id)a7 backupManagerWrapper:(id)a8 callHistoryManager:(id)a9 appleAccountStore:(id)a10 resetStatisticsDelegate:(id)a11;
- (PSUIResetStatisticsGroupDelegate)resetStatisticsDelegate;
- (id)specifiers;
@end

@implementation PSUIMiscOptionsGroup

- (PSUIMiscOptionsGroup)initWithHostController:(id)a3 cellularManagementCache:(id)a4 carrierSpaceManager:(id)a5 dataCache:(id)a6 carrierBundleCache:(id)a7 backupManagerWrapper:(id)a8 callHistoryManager:(id)a9 appleAccountStore:(id)a10 resetStatisticsDelegate:(id)a11
{
  obj = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v22 = a9;
  v17 = a10;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = PSUIMiscOptionsGroup;
  v19 = [(PSUIMiscOptionsGroup *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_hostController, obj);
    objc_storeStrong(&v20->_managementCache, a4);
    objc_storeStrong(&v20->_carrierSpaceManager, a5);
    objc_storeStrong(&v20->_dataCache, a6);
    objc_storeStrong(&v20->_carrierBundleCache, a7);
    objc_storeStrong(&v20->_backupManagerWrapper, a8);
    objc_storeStrong(&v20->_callHistoryManager, a9);
    objc_storeStrong(&v20->_accountStore, a10);
    objc_storeWeak(&v20->_resetStatisticsDelegate, v18);
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

    v5 = [[PSUIWiFiAssistSwitchSpecifier alloc] initDefault];
    WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);
    [v5 setBillingPeriodSource:WeakRetained];

    [v3 addObject:v5];
  }

  v7 = [[PSUICloudDriveCellularSwitchSpecifier alloc] initWithAppleAccountStore:self->_accountStore];
  if ([(PSUICloudDriveCellularSwitchSpecifier *)v7 shouldShowCloudDrive])
  {
    v8 = [(PSUICloudDriveCellularSwitchSpecifier *)v7 cloudDriveGroupSpecifier];
    [v3 addObject:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[PSCellularManagementCache isGlobalDataModificationRestricted](self->_managementCache, "isGlobalDataModificationRestricted") ^ 1}];
    [(PSUICloudDriveCellularSwitchSpecifier *)v7 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

    [v3 addObject:v7];
  }

  v10 = [[PSUICloudBackupCellularSwitchSpecifier alloc] initWithAppleAccountStore:self->_accountStore backupManagerWrapper:self->_backupManagerWrapper];
  if ([(PSUICloudBackupCellularSwitchSpecifier *)v10 shouldShowCloudBackupCarrier])
  {
    v11 = [(PSUICloudBackupCellularSwitchSpecifier *)v10 cloudBackupGroupSpecifier];
    [v3 addObject:v11];

    [v3 addObject:v10];
  }

  v12 = [(PSUICarrierSpaceManager *)self->_carrierSpaceManager capabilities];
  if ([v12 supportsUsage])
  {

    goto LABEL_10;
  }

  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 sf_isiPad];

  if (v14)
  {
LABEL_10:
    v15 = [(PSUIMiscOptionsGroup *)self getLogger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(PSUICarrierSpaceManager *)self->_carrierSpaceManager capabilities];
      v17 = [v16 supportsUsage];
      v18 = [MEMORY[0x277D75418] currentDevice];
      v34[0] = 67109376;
      v34[1] = v17;
      v35 = 1024;
      v36 = [v18 sf_isiPad];
      _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "Not adding call time group because it isn't supported (%d) or we're an iPad (%d)", v34, 0xEu);
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

  v15 = [(PSUICallTimeGroup *)callTimeGroup specifiers];
  [v3 addObjectsFromArray:v15];
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

  v31 = [(PSUIResetStatisticsGroup *)resetStatisticsGroup specifiers];
  [v3 addObjectsFromArray:v31];

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