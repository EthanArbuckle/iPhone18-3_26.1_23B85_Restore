@interface WLWelcomeController
- (WLImportViewController)importViewController;
- (WLTransferringViewController)transferringViewController;
- (WLWelcomeController)initWithWelcomeViewController:(id)controller forceUITestMode:(BOOL)mode forceUITestModeDownloadError:(BOOL)error;
- (void)_completeWithSuccess:(BOOL)success;
- (void)_configureWelcomeViewController:(id)controller;
- (void)_didPairWithSourceDevice:(id)device;
- (void)_importLocalContent;
- (void)_pushViewController:(id)controller andRemovePreviousTopmostViewControllerWithCompletion:(id)completion;
- (void)_showCompleted:(id)completed;
- (void)_showPairingCode:(id)code wifiPSK:(id)k ssid:(id)ssid;
- (void)_showPreparation:(id)preparation;
- (void)_showRetry;
- (void)_showTransferring;
- (void)_showWaitingForDataTypeSelection;
- (void)_sourceDevicePairingPeriodDidEnd;
- (void)_startMigration;
- (void)_startPairing;
- (void)_updateTransferringForImport;
- (void)authenticate;
- (void)cancel;
- (void)change:(int64_t)change context:(id)context;
- (void)complete:(id)complete;
- (void)controllerDidGetInterrupted;
- (void)daemon:(id)daemon didChangeState:(int64_t)state withContext:(id)context;
- (void)daemon:(id)daemon didImportWithContext:(id)context;
- (void)daemon:(id)daemon didReceiveClient:(id)client brand:(id)brand model:(id)model name:(id)name;
- (void)daemon:(id)daemon didUpdateProgress:(float)progress remainingTime:(unint64_t)time completedOperationCount:(unint64_t)count totalOperationCount:(unint64_t)operationCount;
- (void)daemonDidAuthenticateClient:(id)client;
- (void)daemonDidGetInterrupted;
- (void)daemonDidRejectClient:(id)client;
- (void)daemonWillImport:(id)import;
- (void)dataMigrator:(id)migrator didFailWithError:(id)error;
- (void)dataMigrator:(id)migrator didUpdateMigrationState:(unint64_t)state;
- (void)dataMigrator:(id)migrator didUpdateProgressPercentage:(float)percentage;
- (void)dataMigrator:(id)migrator didUpdateRemainingDownloadTime:(double)time;
- (void)dataMigratorDidBecomeRestartable:(id)restartable;
- (void)dataMigratorDidGetInterrupted;
- (void)dealloc;
- (void)deleteMessages;
- (void)didDiscoverCandidate:(id)candidate;
- (void)didStartWiFiAndDeviceDiscoveryWithCode:(id)code ssid:(id)ssid passphrase:(id)passphrase started:(BOOL)started;
- (void)downloadTips;
- (void)downloadTipsInBackground;
- (void)import;
- (void)lookupAppDataContainer:(id)container;
- (void)reject;
- (void)reset;
- (void)run;
- (void)setClient:(id)client brand:(id)brand model:(id)model name:(id)name;
- (void)showCancellation:(id)cancellation;
- (void)showCancellationAlert:(id)alert;
- (void)showFailure:(id)failure;
- (void)showImport;
- (void)showReject;
- (void)sourceDeviceController:(id)controller didDiscoverCandidate:(id)candidate;
- (void)sourceDeviceController:(id)controller didDiscoverDevice:(id)device;
- (void)stop;
- (void)stopAP;
- (void)testAMSPurchase;
- (void)updateProgress:(float)progress remainingTime:(unint64_t)time completedOperationCount:(unint64_t)count totalOperationCount:(unint64_t)operationCount;
- (void)wifiAndDeviceDiscoveryDidGetInterrupted;
@end

@implementation WLWelcomeController

- (WLWelcomeController)initWithWelcomeViewController:(id)controller forceUITestMode:(BOOL)mode forceUITestModeDownloadError:(BOOL)error
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = WLWelcomeController;
  v9 = [(WLWelcomeController *)&v16 init];
  if (v9)
  {
    v10 = mode || [MEMORY[0x277D7B8B0] BOOLForKey:@"UITest"] == 1;
    v9->_uiTestMode = v10;
    v11 = error || [MEMORY[0x277D7B8B0] BOOLForKey:@"ForceDownloadError"] == 1;
    v9->_forceUITestModeDownloadError = v11;
    v9->_migrateUsingRetryPolicies = 0;
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create_with_target_V2("com.apple.welcomekitui.migrationControllerDelegateSerialQueue", v12, MEMORY[0x277D85CD0]);
    migrationControllerDelegateQueueTargetedAtMainQueue = v9->_migrationControllerDelegateQueueTargetedAtMainQueue;
    v9->_migrationControllerDelegateQueueTargetedAtMainQueue = v13;

    [(WLWelcomeController *)v9 _configureWelcomeViewController:controllerCopy];
    [(WLWelcomeController *)v9 run];
    [(WLWelcomeController *)v9 downloadTips];
  }

  return v9;
}

- (void)dealloc
{
  _WLLog();
  v4.receiver = self;
  v4.super_class = WLWelcomeController;
  [(WLWelcomeController *)&v4 dealloc];
}

- (void)_configureWelcomeViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__WLWelcomeController__configureWelcomeViewController___block_invoke;
  v5[3] = &unk_279EB8E18;
  objc_copyWeak(&v6, &location);
  [controllerCopy setContinueHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__WLWelcomeController__configureWelcomeViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __55__WLWelcomeController__configureWelcomeViewController___block_invoke_cold_1();
  }

  v2 = WeakRetained;
  [WeakRetained _startPairing];
}

- (void)_startPairing
{
  if (+[WLRecord isInterrupted])
  {
    _WLLog();

    [(WLWelcomeController *)self showFailure:0];
  }

  else
  {
    [(WLWelcomeController *)self setUseMigrationKitInAP:0];
    self->_migrationState = 0;
    navigationController = self->_navigationController;
    if (!navigationController)
    {
      [WLWelcomeController _startPairing];
    }

    view = [(BFFNavigationController *)navigationController view];
    window = [view window];
    [window setUserInteractionEnabled:0];

    v6 = 0x277D7B8C8;
    if (!self->_uiTestMode)
    {
      v6 = 0x277D7B8C0;
    }

    v7 = [objc_alloc(*v6) initWithDelegate:self];
    sourceDevicesController = self->_sourceDevicesController;
    self->_sourceDevicesController = v7;

    _WLLog();
    objc_initWeak(&location, self);
    v9 = self->_sourceDevicesController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__WLWelcomeController__startPairing__block_invoke;
    v10[3] = &unk_279EB8E90;
    v10[4] = self;
    objc_copyWeak(&v11, &location);
    [(WLSourceDevicesController *)v9 startWiFiAndDeviceDiscoveryWithCompletion:v10, self];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __36__WLWelcomeController__startPairing__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = *(a1 + 32);
  v16 = MEMORY[0x277CCABB0];
  v17 = a7;
  v21 = [v16 numberWithBool:a2];
  _WLLog();

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__WLWelcomeController__startPairing__block_invoke_2;
  block[3] = &unk_279EB8E40;
  objc_copyWeak(&v26, (a1 + 40));
  v23 = v14;
  v24 = v12;
  v25 = v13;
  v27 = a2;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v26);
}

void __36__WLWelcomeController__startPairing__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained didStartWiFiAndDeviceDiscoveryWithCode:*(a1 + 32) ssid:*(a1 + 40) passphrase:*(a1 + 48) started:*(a1 + 64)];
}

- (void)didStartWiFiAndDeviceDiscoveryWithCode:(id)code ssid:(id)ssid passphrase:(id)passphrase started:(BOOL)started
{
  startedCopy = started;
  codeCopy = code;
  ssidCopy = ssid;
  passphraseCopy = passphrase;
  view = [(BFFNavigationController *)self->_navigationController view];
  window = [view window];
  [window setUserInteractionEnabled:1];

  if (startedCopy)
  {
    [(WLWelcomeController *)self _showPairingCode:codeCopy wifiPSK:passphraseCopy ssid:ssidCopy];
  }

  else
  {
    [(WLWelcomeController *)self showFailure:0];
  }
}

- (void)sourceDeviceController:(id)controller didDiscoverCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (candidateCopy)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__WLWelcomeController_sourceDeviceController_didDiscoverCandidate___block_invoke;
    block[3] = &unk_279EB8EB8;
    objc_copyWeak(&v8, &location);
    v7 = candidateCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __67__WLWelcomeController_sourceDeviceController_didDiscoverCandidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didDiscoverCandidate:*(a1 + 32)];
}

- (void)didDiscoverCandidate:(id)candidate
{
  candidateCopy = candidate;
  self->_dismissAfterSourceDevicePairingTimeout = 0;
  v7 = candidateCopy;
  if ([candidateCopy useMigrationKit])
  {
    _WLLog();
    [(WLWelcomeController *)self setUseMigrationKitInAP:1, self];
  }

  else
  {
    objc_storeStrong(&self->_sourceDevice, candidate);
    v6 = [[WLWaitingForDataTypeSelectionViewController alloc] initWithWelcomeController:self];
    [(WLWelcomeController *)self _pushViewController:v6 andRemovePreviousTopmostViewControllerWithCompletion:0];
  }
}

- (void)sourceDeviceController:(id)controller didDiscoverDevice:(id)device
{
  deviceCopy = device;
  _WLLog();
  if (deviceCopy)
  {
    if ([deviceCopy useMigrationKit])
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__WLWelcomeController_sourceDeviceController_didDiscoverDevice___block_invoke;
      block[3] = &unk_279EB8E18;
      objc_copyWeak(&v11, &location);
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      _WLLog();
      sourceDevicesController = self->_sourceDevicesController;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__WLWelcomeController_sourceDeviceController_didDiscoverDevice___block_invoke_2;
      v9[3] = &unk_279EB8EE0;
      v9[4] = self;
      [(WLSourceDevicesController *)sourceDevicesController stopDeviceDiscoveryWithCompletion:v9, self];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __64__WLWelcomeController_sourceDeviceController_didDiscoverDevice___block_invoke_3;
      v7[3] = &unk_279EB8F08;
      v7[4] = self;
      v8 = deviceCopy;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __64__WLWelcomeController_sourceDeviceController_didDiscoverDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  _WLLog();
  [WeakRetained setUseMigrationKitInAP:{1, WeakRetained}];
}

void __64__WLWelcomeController_sourceDeviceController_didDiscoverDevice___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:a2];
  _WLLog();
}

uint64_t __64__WLWelcomeController_sourceDeviceController_didDiscoverDevice___block_invoke_3(uint64_t a1)
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 32)];
  _WLLog();

  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _didPairWithSourceDevice:v3];
}

- (void)wifiAndDeviceDiscoveryDidGetInterrupted
{
  _WLLog();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__WLWelcomeController_wifiAndDeviceDiscoveryDidGetInterrupted__block_invoke;
  block[3] = &unk_279EB8F30;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_showPairingCode:(id)code wifiPSK:(id)k ssid:(id)ssid
{
  codeCopy = code;
  kCopy = k;
  ssidCopy = ssid;
  self->_isPairingCanceled = 0;
  v11 = [[WLPairingCodeViewController alloc] initWithPairingCode:codeCopy wifiPSK:kCopy ssid:ssidCopy welcomeController:self];
  [(WLPairingCodeViewController *)v11 setGetLocalImportOptionsHandler:&__block_literal_global];
  objc_initWeak(location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_3;
  v25[3] = &unk_279EB8FA0;
  objc_copyWeak(&v26, location);
  [(WLPairingCodeViewController *)v11 setStashDataLocallyHandler:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_4;
  v23[3] = &unk_279EB8E18;
  objc_copyWeak(&v24, location);
  [(WLPairingCodeViewController *)v11 setImportLocalContentHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_5;
  v21[3] = &unk_279EB8E18;
  objc_copyWeak(&v22, location);
  [(WLPairingCodeViewController *)v11 setViewWillDisappearBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_7;
  v19[3] = &unk_279EB8FC8;
  objc_copyWeak(&v20, location);
  [(WLPairingCodeViewController *)v11 setCancellationBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_8;
  v17[3] = &unk_279EB8E18;
  objc_copyWeak(&v18, location);
  [(WLPairingCodeViewController *)v11 setViewWillDismissBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_9;
  v16[3] = &unk_279EB8F30;
  v16[4] = self;
  [(WLWelcomeController *)self _pushViewController:v11 andRemovePreviousTopmostViewControllerWithCompletion:v16];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_dismissAfterSourceDevicePairingTimeout];
  _WLLog();

  self->_dismissAfterSourceDevicePairingTimeout = 1;
  v12 = dispatch_time(0, 600000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_10;
  block[3] = &unk_279EB8E18;
  objc_copyWeak(&v15, location);
  dispatch_after(v12, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(location);
}

void __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D7B870] sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_2;
  v5[3] = &unk_279EB8F78;
  v6 = v2;
  v4 = v2;
  [v3 getLocalImportOptionsWithCompletion:v5];
}

void __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_3_cold_1();
  }

  v4 = WeakRetained;
  [WeakRetained _setStashDataLocally:a2];
}

void __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_4_cold_1();
  }

  v2 = WeakRetained;
  [WeakRetained _importLocalContent];
}

void __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_5_cold_1();
  }

  v2 = WeakRetained;
  if (([WeakRetained useMigrationKitInAP] & 1) == 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:v2[32]];
    _WLLog();

    if (v2[32] == 1)
    {
      v2[32] = 0;
      _WLLog();
      v3 = *(v2 + 3);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_6;
      v5[3] = &unk_279EB8EE0;
      v5[4] = v2;
      [v3 stopWiFiAndDeviceDiscoveryWithCompletion:{v5, v2, v4}];
    }
  }
}

void __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCancellationAlert:v3];
}

void __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_8_cold_1();
  }

  _WLLog();
  WeakRetained[82] = 1;
  if (([WeakRetained useMigrationKit] & 1) == 0 && (objc_msgSend(WeakRetained, "useMigrationKitInAP") & 1) == 0)
  {
    [WeakRetained cancel];
  }
}

uint64_t __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_9(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == 1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_9_cold_1();
    }

    v4 = *(*(v2 + 32) + 24);

    return [v4 scheduleSurrogateDeviceDiscovery];
  }

  return result;
}

void __53__WLWelcomeController__showPairingCode_wifiPSK_ssid___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  _WLLog();
  [WeakRetained _sourceDevicePairingPeriodDidEnd];
}

- (void)_sourceDevicePairingPeriodDidEnd
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_dismissAfterSourceDevicePairingTimeout];
  _WLLog();

  if (self->_dismissAfterSourceDevicePairingTimeout)
  {
    mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
    [mEMORY[0x277D7B8D0] deviceDidFailWithTimeout];

    [(WLWelcomeController *)self _completeWithSuccess:0];
  }
}

- (void)_importLocalContent
{
  _WLLog();
  sourceDevicesController = self->_sourceDevicesController;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__WLWelcomeController__importLocalContent__block_invoke;
  v5[3] = &unk_279EB8EE0;
  v5[4] = self;
  [(WLSourceDevicesController *)sourceDevicesController stopWiFiAndDeviceDiscoveryWithCompletion:v5, self];
}

void __42__WLWelcomeController__importLocalContent__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:a2];
  _WLLog();

  v8 = [MEMORY[0x277D7B870] sharedInstance];
  [v8 importLocalContent];
}

- (void)_didPairWithSourceDevice:(id)device
{
  deviceCopy = device;
  if (!self->_isPairingCanceled)
  {
    objc_storeStrong(&self->_sourceDevice, device);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__WLWelcomeController__didPairWithSourceDevice___block_invoke;
    v6[3] = &unk_279EB8E18;
    objc_copyWeak(&v7, &location);
    [(WLWelcomeController *)self _showPreparation:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __48__WLWelcomeController__didPairWithSourceDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startMigration];
}

- (void)_showPreparation:(id)preparation
{
  preparationCopy = preparation;
  if (!self->_isPairingCanceled)
  {
    v5 = [[WLPreparationViewController alloc] initWithWelcomeController:self];
    v6 = v5;
    if (self->_useMigrationKit || self->_useMigrationKitInAP)
    {
      [(WLPreparationViewController *)v5 setShowCancelButton:1];
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __40__WLWelcomeController__showPreparation___block_invoke;
      v9[3] = &unk_279EB8FC8;
      objc_copyWeak(&v10, &location);
      [(WLPreparationViewController *)v6 setCancellationBlock:v9];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __40__WLWelcomeController__showPreparation___block_invoke_2;
      v7[3] = &unk_279EB8E18;
      objc_copyWeak(&v8, &location);
      [(WLPreparationViewController *)v6 setViewWillDismissBlock:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    [(WLWelcomeController *)self _pushViewController:v6 andRemovePreviousTopmostViewControllerWithCompletion:preparationCopy];
  }
}

void __40__WLWelcomeController__showPreparation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCancellationAlert:v3];
}

void __40__WLWelcomeController__showPreparation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  _WLLog();
  [WeakRetained cancel];
}

- (void)_startMigration
{
  +[WLRecord startRecording];
  self->_migrationState = 0;
  *&self->_migrationControllerIsRestartable = 0;
  if (self->_uiTestMode)
  {
    v3 = [objc_alloc(MEMORY[0x277D7B880]) initWithDelegate:self forceDownloadError:self->_forceUITestModeDownloadError];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277D7B878]) initWithDelegate:self];
  }

  migrationController = self->_migrationController;
  self->_migrationController = v3;

  v5 = self->_migrationController;
  migrateUsingRetryPolicies = self->_migrateUsingRetryPolicies;

  [(WLDataMigrationController *)v5 startMigrationUsingRetryPolicies:migrateUsingRetryPolicies];
}

- (void)dataMigratorDidGetInterrupted
{
  _WLLog();
  objc_initWeak(&location, self);
  migrationControllerDelegateQueueTargetedAtMainQueue = self->_migrationControllerDelegateQueueTargetedAtMainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__WLWelcomeController_dataMigratorDidGetInterrupted__block_invoke;
  block[3] = &unk_279EB8E18;
  objc_copyWeak(&v5, &location);
  dispatch_async(migrationControllerDelegateQueueTargetedAtMainQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__WLWelcomeController_dataMigratorDidGetInterrupted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained controllerDidGetInterrupted];
}

- (void)controllerDidGetInterrupted
{
  if (self->_migrationState && !self->_useMigrationKit)
  {
    if (!self->_migrationConcluded)
    {
      if (self->_migrationControllerIsRestartable)
      {
        self->_migrationControllerIsRestartable = 0;
        [(WLDataMigrationController *)self->_migrationController startMigrationUsingRetryPolicies:self->_migrateUsingRetryPolicies];
      }

      else
      {
        [(WLWelcomeController *)self dataMigrator:0 didFailWithError:0];
      }
    }
  }

  else
  {
    [(WLWelcomeController *)self daemonDidGetInterrupted];
  }
}

- (void)dataMigratorDidBecomeRestartable:(id)restartable
{
  _WLLog();
  migrationControllerDelegateQueueTargetedAtMainQueue = self->_migrationControllerDelegateQueueTargetedAtMainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WLWelcomeController_dataMigratorDidBecomeRestartable___block_invoke;
  block[3] = &unk_279EB8F30;
  block[4] = self;
  dispatch_async(migrationControllerDelegateQueueTargetedAtMainQueue, block);
}

void __70__WLWelcomeController_dataMigratorDidFinish_withImportErrors_context___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 250000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__WLWelcomeController_dataMigratorDidFinish_withImportErrors_context___block_invoke_2;
  v4[3] = &unk_279EB8F08;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], v4);
}

void __70__WLWelcomeController_dataMigratorDidFinish_withImportErrors_context___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 81) = 1;
  *(*(a1 + 32) + 80) = 0;
  if (*(a1 + 48) == 1 && [MEMORY[0x277D7B890] isInternal])
  {
    v2 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Incomplete Import" message:@"(Internal Message Only) Migration succeeded preferredStyle:{but some data did not import. Write a bug and attach a sysdiagnose as well as everything in:\n/var/mobile/Library/WelcomeKit/ and /var/mobile/Library/MigrationKit", 1}];
    v3 = MEMORY[0x277D750F8];
    v4 = WLLocalizedString();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__WLWelcomeController_dataMigratorDidFinish_withImportErrors_context___block_invoke_4;
    v8[3] = &unk_279EB8FF0;
    v9 = *(a1 + 40);
    v5 = [v3 actionWithTitle:v4 style:0 handler:v8];
    [v2 addAction:v5];

    v6 = [*(*(a1 + 32) + 16) topViewController];
    [v6 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)dataMigrator:(id)migrator didFailWithError:(id)error
{
  errorCopy = error;
  _WLLog();
  migrationControllerDelegateQueueTargetedAtMainQueue = self->_migrationControllerDelegateQueueTargetedAtMainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WLWelcomeController_dataMigrator_didFailWithError___block_invoke;
  block[3] = &unk_279EB8F08;
  block[4] = self;
  v9 = errorCopy;
  v6 = errorCopy;
  dispatch_async(migrationControllerDelegateQueueTargetedAtMainQueue, block);
}

void __53__WLWelcomeController_dataMigrator_didFailWithError___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 81) = 1;
  *(*(a1 + 32) + 80) = 0;
  v2 = [*(a1 + 40) domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277D7B8F8]];

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 40) userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D7B908]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [v5 BOOLValue];

  if (!v6)
  {
LABEL_8:
    v8 = MEMORY[0x277D75110];
    v9 = WLLocalizedString();
    v10 = WLLocalizedString();
    v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    v13 = WLLocalizedString();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__WLWelcomeController_dataMigrator_didFailWithError___block_invoke_2;
    v16[3] = &unk_279EB8DA0;
    v16[4] = *(a1 + 32);
    v14 = [v12 actionWithTitle:v13 style:0 handler:v16];
    [v11 addAction:v14];

    v15 = [*(*(a1 + 32) + 16) topViewController];
    [v15 presentViewController:v11 animated:1 completion:0];

    return;
  }

  v7 = *(a1 + 32);

  [v7 _didCompleteMigrationWithSuccess:0 retry:1 context:0];
}

uint64_t __53__WLWelcomeController_dataMigrator_didFailWithError___block_invoke_2(uint64_t a1)
{
  v4 = *(a1 + 32);
  _WLLog();
  v2 = *(a1 + 32);

  return [v2 _didCompleteMigrationWithSuccess:0 retry:0 context:0];
}

- (void)dataMigrator:(id)migrator didUpdateMigrationState:(unint64_t)state
{
  v6 = MEMORY[0x277CCABB0];
  migratorCopy = migrator;
  v9 = [v6 numberWithUnsignedInteger:state];
  _WLLog();

  migrationControllerDelegateQueueTargetedAtMainQueue = self->_migrationControllerDelegateQueueTargetedAtMainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WLWelcomeController_dataMigrator_didUpdateMigrationState___block_invoke;
  block[3] = &unk_279EB9040;
  block[4] = self;
  block[5] = state;
  dispatch_async(migrationControllerDelegateQueueTargetedAtMainQueue, block);
}

uint64_t __60__WLWelcomeController_dataMigrator_didUpdateMigrationState___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 56) = v1;
  switch(v1)
  {
    case 4:
      return [*(result + 32) _updateTransferringForImport];
    case 3:
      return [*(result + 32) _showTransferring];
    case 2:
      return [*(result + 32) _showWaitingForDataTypeSelection];
  }

  return result;
}

- (void)dataMigrator:(id)migrator didUpdateProgressPercentage:(float)percentage
{
  _WLLog();
  migrationControllerDelegateQueueTargetedAtMainQueue = self->_migrationControllerDelegateQueueTargetedAtMainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WLWelcomeController_dataMigrator_didUpdateProgressPercentage___block_invoke;
  block[3] = &unk_279EB9068;
  block[4] = self;
  percentageCopy = percentage;
  dispatch_async(migrationControllerDelegateQueueTargetedAtMainQueue, block);
}

void __64__WLWelcomeController_dataMigrator_didUpdateProgressPercentage___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) topViewController];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 setProgress:*(a1 + 40)];
    }
  }
}

- (void)dataMigrator:(id)migrator didUpdateRemainingDownloadTime:(double)time
{
  _WLLog();
  migrationControllerDelegateQueueTargetedAtMainQueue = self->_migrationControllerDelegateQueueTargetedAtMainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WLWelcomeController_dataMigrator_didUpdateRemainingDownloadTime___block_invoke;
  block[3] = &unk_279EB9040;
  block[4] = self;
  *&block[5] = time;
  dispatch_async(migrationControllerDelegateQueueTargetedAtMainQueue, block);
}

void __67__WLWelcomeController_dataMigrator_didUpdateRemainingDownloadTime___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) topViewController];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 setRemainingDownloadTime:*(a1 + 40)];
    }
  }
}

- (void)_showWaitingForDataTypeSelection
{
  v3 = self->_sourceDevice;
  client = self->_client;
  if (client)
  {
    v5 = objc_alloc_init(MEMORY[0x277D7B8B8]);

    name = [(WLUIClient *)self->_client name];
    [v5 setName:name];

    v3 = v5;
  }

  v7 = [[WLWaitingForDataTypeSelectionViewController alloc] initWithWelcomeController:self];
  [(WLWaitingForDataTypeSelectionViewController *)v7 setShowCancelButton:client != 0];
  if (client)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__WLWelcomeController__showWaitingForDataTypeSelection__block_invoke;
    v10[3] = &unk_279EB8FC8;
    objc_copyWeak(&v11, &location);
    [(WLWaitingForDataTypeSelectionViewController *)v7 setCancellationBlock:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__WLWelcomeController__showWaitingForDataTypeSelection__block_invoke_2;
    v8[3] = &unk_279EB8E18;
    objc_copyWeak(&v9, &location);
    [(WLWaitingForDataTypeSelectionViewController *)v7 setViewWillDismissBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  [(WLWelcomeController *)self _pushViewController:v7 andRemovePreviousTopmostViewControllerWithCompletion:0];
}

void __55__WLWelcomeController__showWaitingForDataTypeSelection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCancellationAlert:v3];
}

void __55__WLWelcomeController__showWaitingForDataTypeSelection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  _WLLog();
  [WeakRetained cancel];
}

- (void)_showTransferring
{
  v3 = self->_sourceDevice;
  client = self->_client;
  if (client)
  {
    v5 = objc_alloc_init(MEMORY[0x277D7B8B8]);

    name = [(WLUIClient *)self->_client name];
    [v5 setName:name];

    v3 = v5;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = selfCopy->_hasTips && selfCopy->_useMigrationKit;
  objc_sync_exit(selfCopy);

  v9 = [[WLTransferringViewController alloc] initWithSourceDevice:v3 welcomeController:selfCopy showsTips:v8];
  [(WLTransferringViewController *)v9 setShowCancelButton:client != 0];
  if (client)
  {
    objc_initWeak(&location, selfCopy);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__WLWelcomeController__showTransferring__block_invoke;
    v12[3] = &unk_279EB8FC8;
    objc_copyWeak(&v13, &location);
    [(WLTransferringViewController *)v9 setCancellationBlock:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__WLWelcomeController__showTransferring__block_invoke_2;
    v10[3] = &unk_279EB8E18;
    objc_copyWeak(&v11, &location);
    [(WLTransferringViewController *)v9 setViewWillDismissBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [(WLWelcomeController *)selfCopy setTransferringViewController:v9];
  [(WLWelcomeController *)selfCopy _pushViewController:v9 andRemovePreviousTopmostViewControllerWithCompletion:0];
}

void __40__WLWelcomeController__showTransferring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCancellationAlert:v3];
}

void __40__WLWelcomeController__showTransferring__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  _WLLog();
  [WeakRetained cancel];
}

- (void)_updateTransferringForImport
{
  topViewController = [(BFFNavigationController *)self->_navigationController topViewController];
  if (!topViewController)
  {
    [WLWelcomeController _updateTransferringForImport];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [WLWelcomeController _updateTransferringForImport];
  }

  [topViewController setIsImporting:1];
}

- (void)_showRetry
{
  v3 = [[WLRetryViewController alloc] initWithWelcomeController:self];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__WLWelcomeController__showRetry__block_invoke;
  v6[3] = &unk_279EB8E18;
  objc_copyWeak(&v7, &location);
  [(WLRetryViewController *)v3 setRetryBlock:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__WLWelcomeController__showRetry__block_invoke_2;
  v4[3] = &unk_279EB8E18;
  objc_copyWeak(&v5, &location);
  [(WLWelcomeController *)self _pushViewController:v3 andRemovePreviousTopmostViewControllerWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __33__WLWelcomeController__showRetry__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained retry];
}

void __33__WLWelcomeController__showRetry__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained run];
}

- (void)_showCompleted:(id)completed
{
  completedCopy = completed;
  WeakRetained = objc_loadWeakRetained(&self->_importViewController);
  v6 = WeakRetained != 0;

  v7 = [[WLCompletedViewController alloc] initWithWelcomeController:self context:completedCopy imported:v6];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __38__WLWelcomeController__showCompleted___block_invoke;
  v11 = &unk_279EB8E18;
  objc_copyWeak(&v12, &location);
  [(WLCompletedViewController *)v7 setContinueHandler:&v8];
  [(WLWelcomeController *)self _pushViewController:v7 andRemovePreviousTopmostViewControllerWithCompletion:0, v8, v9, v10, v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __38__WLWelcomeController__showCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __38__WLWelcomeController__showCompleted___block_invoke_cold_1();
  }

  v2 = WeakRetained;
  [WeakRetained _completeWithSuccess:1];
}

- (void)_completeWithSuccess:(BOOL)success
{
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  _WLLog();

  if (!success)
  {
    v5 = [(BFFNavigationController *)self->_navigationController popViewControllerAnimated:1, self, v6];
  }

  if (self->_completionHandler)
  {
    _WLLog();
    v7 = objc_alloc_init(WLSettings);
    _WLLog();
    (*(self->_completionHandler + 2))();
  }
}

- (void)_pushViewController:(id)controller andRemovePreviousTopmostViewControllerWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  dispatch_suspend(self->_migrationControllerDelegateQueueTargetedAtMainQueue);
  topViewController = [(BFFNavigationController *)self->_navigationController topViewController];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v20 = controllerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_transferringViewController);
    [WeakRetained removeProgressBar];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    viewControllers = [(BFFNavigationController *)self->_navigationController viewControllers];
    v12 = [viewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(viewControllers);
        }

        [v9 addObject:{*(*(&v24 + 1) + 8 * v15), v20}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [viewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    controllerCopy = v20;
  }

  else
  {
    [v9 addObject:topViewController];
  }

  navigationController = self->_navigationController;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__WLWelcomeController__pushViewController_andRemovePreviousTopmostViewControllerWithCompletion___block_invoke;
  v21[3] = &unk_279EB9090;
  v21[4] = self;
  v22 = v9;
  v23 = completionCopy;
  v17 = completionCopy;
  v18 = v9;
  [(BFFNavigationController *)navigationController pushViewController:controllerCopy completion:v21];

  v19 = *MEMORY[0x277D85DE8];
}

void __96__WLWelcomeController__pushViewController_andRemovePreviousTopmostViewControllerWithCompletion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) viewControllers];
  v4 = [v2 mutableCopy];

  [v4 removeObjectsInArray:a1[5]];
  [*(a1[4] + 16) setViewControllers:v4];
  dispatch_resume(*(a1[4] + 72));
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (void)deleteMessages
{
  v2 = objc_alloc_init(MEMORY[0x277D7B878]);
  [v2 deleteMessages];
}

- (void)lookupAppDataContainer:(id)container
{
  v3 = MEMORY[0x277D7B878];
  containerCopy = container;
  v5 = objc_alloc_init(v3);
  [v5 lookupAppDataContainer:containerCopy];
}

- (void)testAMSPurchase
{
  v2 = objc_alloc_init(MEMORY[0x277D7B878]);
  [v2 testAMSPurchase];
}

- (void)run
{
  _WLLog();
  [(WLWelcomeController *)self setUseMigrationKit:0, self];
  [(WLWelcomeController *)self setUseMigrationKitInAP:0];
  self->_dismissAfterSourceDevicePairingTimeout = 0;
  [(WLWelcomeController *)self setClient:0];
  sourceDevice = self->_sourceDevice;
  self->_sourceDevice = 0;

  [(WLMigrationKitController *)self->_migrationKitController cancel];
  migrationKitController = self->_migrationKitController;
  if (!migrationKitController)
  {
    v5 = objc_alloc_init(MEMORY[0x277D7B8A0]);
    [(WLWelcomeController *)self setMigrationKitController:v5];

    migrationKitController = self->_migrationKitController;
  }

  [(WLMigrationKitController *)migrationKitController run:self];
}

- (void)stop
{
  _WLLog();
  [(WLMigrationKitController *)self->_migrationKitController cancel];
  [(WLWelcomeController *)self setClient:0];

  [(WLWelcomeController *)self setUseMigrationKit:0];
}

- (void)cancel
{
  _WLLog();
  [(WLMigrationKitController *)self->_migrationKitController cancel];
  sourceDevicesController = self->_sourceDevicesController;

  [(WLSourceDevicesController *)sourceDevicesController stopWiFiAndDeviceDiscoveryWithCompletion:0];
}

- (void)showCancellationAlert:(id)alert
{
  alertCopy = alert;
  objc_initWeak(&location, self);
  v5 = WLLocalizedString();
  v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"ALERT_CANCELLATION_MESSAGE"];
  v7 = WLLocalizedString();

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v7 preferredStyle:1];
  v9 = MEMORY[0x277D750F8];
  v10 = WLLocalizedString();
  v11 = [v9 actionWithTitle:v10 style:1 handler:&__block_literal_global_184];
  [v8 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = WLLocalizedString();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__WLWelcomeController_showCancellationAlert___block_invoke_2;
  v17[3] = &unk_279EB90D8;
  v14 = alertCopy;
  v18 = v14;
  objc_copyWeak(&v19, &location);
  v15 = [v12 actionWithTitle:v13 style:0 handler:v17];
  [v8 addAction:v15];

  topViewController = [(BFFNavigationController *)self->_navigationController topViewController];
  [topViewController presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __45__WLWelcomeController_showCancellationAlert___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    __45__WLWelcomeController_showCancellationAlert___block_invoke_2_cold_1();
  }

  v5 = WeakRetained;
  v6 = WeakRetained[7];
  v7 = 6;
  if (v6 == 4)
  {
    v7 = 8;
  }

  v8 = v6 == 3;
  v9 = 7;
  if (!v8)
  {
    v9 = v7;
  }

  WeakRetained[7] = v9;
  [WeakRetained cancel];
}

- (void)showCancellation:(id)cancellation
{
  cancellationCopy = cancellation;
  objc_initWeak(&location, self);
  migrationState = self->_migrationState;
  if (migrationState == 8)
  {
    +[WLRecord startRecording];
    v6 = [(WLTransferCancellationViewController *)[WLImportCancellationViewController alloc] initWithWelcomeController:self context:cancellationCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__WLWelcomeController_showCancellation___block_invoke_2;
    v14[3] = &unk_279EB8E18;
    v7 = &v15;
    objc_copyWeak(&v15, &location);
    [(WLTransferCancellationViewController *)v6 setResetBlock:v14];
  }

  else if (migrationState == 7)
  {
    +[WLRecord startRecording];
    v6 = [[WLTransferCancellationViewController alloc] initWithWelcomeController:self context:cancellationCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__WLWelcomeController_showCancellation___block_invoke;
    v16[3] = &unk_279EB8E18;
    v7 = &v17;
    objc_copyWeak(&v17, &location);
    [(WLTransferCancellationViewController *)v6 setResetBlock:v16];
  }

  else
  {
    v6 = [[WLCancellationViewController alloc] initWithWelcomeController:self];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__WLWelcomeController_showCancellation___block_invoke_3;
    v12[3] = &unk_279EB8E18;
    v7 = &v13;
    objc_copyWeak(&v13, &location);
    [(WLImportCancellationViewController *)v6 setContinueBlock:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__WLWelcomeController_showCancellation___block_invoke_4;
    v10[3] = &unk_279EB8E18;
    objc_copyWeak(&v11, &location);
    [(WLImportCancellationViewController *)v6 setRetryBlock:v10];
    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(v7);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__WLWelcomeController_showCancellation___block_invoke_5;
  v8[3] = &unk_279EB8E18;
  objc_copyWeak(&v9, &location);
  [(WLWelcomeController *)self _pushViewController:v6 andRemovePreviousTopmostViewControllerWithCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__WLWelcomeController_showCancellation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reset];
}

void __40__WLWelcomeController_showCancellation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reset];
}

void __40__WLWelcomeController_showCancellation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSuccess:1];
}

void __40__WLWelcomeController_showCancellation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained retry];
}

void __40__WLWelcomeController_showCancellation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained run];
}

- (void)showFailure:(id)failure
{
  failureCopy = failure;
  +[WLRecord startRecording];
  v5 = [[WLFailureViewController alloc] initWithWelcomeController:self context:failureCopy];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__WLWelcomeController_showFailure___block_invoke;
  v8[3] = &unk_279EB8E18;
  objc_copyWeak(&v9, &location);
  [(WLFailureViewController *)v5 setResetBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__WLWelcomeController_showFailure___block_invoke_2;
  v6[3] = &unk_279EB8E18;
  objc_copyWeak(&v7, &location);
  [(WLWelcomeController *)self _pushViewController:v5 andRemovePreviousTopmostViewControllerWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__WLWelcomeController_showFailure___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reset];
}

void __35__WLWelcomeController_showFailure___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained run];
}

- (void)stopAP
{
  useMigrationKitInAP = self->_useMigrationKitInAP;
  _WLLog();
  self->_dismissAfterSourceDevicePairingTimeout = 0;
  if (!self->_useMigrationKitInAP)
  {
    sourceDevicesController = self->_sourceDevicesController;

    [(WLSourceDevicesController *)sourceDevicesController stopWiFiAndDeviceDiscoveryWithCompletion:0];
  }
}

- (void)authenticate
{
  sourceDevice = self->_sourceDevice;
  useMigrationKitInAP = self->_useMigrationKitInAP;
  _WLLog();
  if (self->_sourceDevice && !self->_useMigrationKitInAP)
  {

    [(WLWelcomeController *)self stop];
  }

  else
  {
    [(WLWelcomeController *)self setUseMigrationKit:1, self, sourceDevice, useMigrationKitInAP];
    [(WLWelcomeController *)self stopAP];

    [(WLWelcomeController *)self _showPreparation:0];
  }
}

- (void)showReject
{
  v3 = [[WLRejectViewController alloc] initWithWelcomeController:self];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__WLWelcomeController_showReject__block_invoke;
  v6[3] = &unk_279EB8E18;
  objc_copyWeak(&v7, &location);
  [(WLRejectViewController *)v3 setRetryBlock:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__WLWelcomeController_showReject__block_invoke_2;
  v4[3] = &unk_279EB8E18;
  objc_copyWeak(&v5, &location);
  [(WLWelcomeController *)self _pushViewController:v3 andRemovePreviousTopmostViewControllerWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __33__WLWelcomeController_showReject__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained retry];
}

void __33__WLWelcomeController_showReject__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained run];
}

- (void)reject
{
  _WLLog();
  if (self->_migrationState != 9)
  {
    self->_migrationState = 9;
    [(WLWelcomeController *)self cancel];

    [(WLWelcomeController *)self _didCompleteMigrationWithSuccess:0 retry:1 context:0];
  }
}

- (void)setClient:(id)client brand:(id)brand model:(id)model name:(id)name
{
  nameCopy = name;
  modelCopy = model;
  brandCopy = brand;
  clientCopy = client;
  _WLLog();
  +[WLRecord startRecording];
  v14 = [[WLUIClient alloc] initWithHostname:clientCopy brand:brandCopy model:modelCopy name:nameCopy];

  [(WLWelcomeController *)self setClient:v14];

  [(WLWelcomeController *)self _showWaitingForDataTypeSelection];
}

- (void)updateProgress:(float)progress remainingTime:(unint64_t)time completedOperationCount:(unint64_t)count totalOperationCount:(unint64_t)operationCount
{
  progressCopy = progress;
  progressCopy2 = progress;
  _WLLog();
  migrationState = self->_migrationState;
  if (migrationState == 5)
  {
    return;
  }

  if (progress >= 1.0)
  {
    self->_migrationState = 5;
    [(WLWelcomeController *)self cancel:self];
    selfCopy2 = self;
    v14 = 1;
    v15 = 0;
    goto LABEL_7;
  }

  if (progress < 0.0)
  {
    self->_migrationState = 10;
    [(WLWelcomeController *)self cancel:self];
    selfCopy2 = self;
    v14 = 0;
    v15 = 1;
LABEL_7:

    [(WLWelcomeController *)selfCopy2 _didCompleteMigrationWithSuccess:v14 retry:v15 context:0];
    return;
  }

  if (migrationState - 3 > 1)
  {
    self->_migrationState = 3;
    [(WLWelcomeController *)self _showTransferring:self];
    WeakRetained = objc_loadWeakRetained(&self->_transferringViewController);
    [WeakRetained setProgress:progressCopy];

    if (progress <= 0.0 || !time)
    {
      return;
    }

    v24 = objc_loadWeakRetained(&self->_transferringViewController);
    [v24 setRemainingDownloadTime:time];
    goto LABEL_19;
  }

  v16 = objc_loadWeakRetained(&self->_transferringViewController);
  [v16 setProgress:{progressCopy, self, *&progressCopy2, time, count, operationCount}];

  if (progress > 0.0 && time)
  {
    v17 = objc_loadWeakRetained(&self->_transferringViewController);
    [v17 setRemainingDownloadTime:time];
  }

  if (count)
  {
    v24 = objc_loadWeakRetained(&self->_transferringViewController);
    [v24 setCompletedOperationCount:count totalOperationCount:operationCount];
LABEL_19:
  }
}

- (void)showImport
{
  WeakRetained = objc_loadWeakRetained(&self->_transferringViewController);
  [WeakRetained setIsImporting:1];
}

- (void)import
{
  migrationState = self->_migrationState;
  _WLLog();
  v3 = self->_migrationState;
  if (v3 == 3)
  {
    self->_migrationState = 4;
  }

  else
  {
    if (v3)
    {
      return;
    }

    self->_migrationState = 4;
    [(WLWelcomeController *)self _showTransferring:self];
  }

  [(WLWelcomeController *)self showImport];
}

- (void)complete:(id)complete
{
  completeCopy = complete;
  _WLLog();
  if (self->_migrationState != 5)
  {
    self->_migrationState = 5;
    [(WLWelcomeController *)self cancel:self];
    [(WLWelcomeController *)self _didCompleteMigrationWithSuccess:1 retry:0 context:completeCopy];
  }
}

- (void)change:(int64_t)change context:(id)context
{
  contextCopy = context;
  if (change == 3)
  {
    if (self->_migrationState - 3 >= 2)
    {

      contextCopy = 0;
    }

    v9 = contextCopy;
    v8 = 10;
    goto LABEL_10;
  }

  if (change != 2)
  {
    goto LABEL_13;
  }

  migrationState = self->_migrationState;
  if (migrationState - 7 >= 2)
  {
    if (migrationState == 4)
    {
      v9 = contextCopy;
      v8 = 8;
    }

    else
    {
      if (migrationState != 3)
      {
        self->_migrationState = 6;

        v9 = 0;
        goto LABEL_11;
      }

      v9 = contextCopy;
      v8 = 7;
    }

LABEL_10:
    self->_migrationState = v8;
LABEL_11:
    [(WLWelcomeController *)self cancel];
    contextCopy = v9;
  }

  v10 = contextCopy;
  [(WLWelcomeController *)self _didCompleteMigrationWithSuccess:0 retry:1 context:contextCopy];
  contextCopy = v10;
LABEL_13:
}

- (void)reset
{
  if (self->_resetHandler)
  {
    _WLLog();
    (*(self->_resetHandler + 2))(self->_resetHandler);
    _WLLog();
  }

  else
  {

    _WLLog();
  }
}

- (void)daemonDidAuthenticateClient:(id)client
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__WLWelcomeController_daemonDidAuthenticateClient___block_invoke;
  v3[3] = &unk_279EB8E18;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __51__WLWelcomeController_daemonDidAuthenticateClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained authenticate];
}

- (void)daemonDidRejectClient:(id)client
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__WLWelcomeController_daemonDidRejectClient___block_invoke;
  v3[3] = &unk_279EB8E18;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __45__WLWelcomeController_daemonDidRejectClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reject];
}

- (void)daemon:(id)daemon didReceiveClient:(id)client brand:(id)brand model:(id)model name:(id)name
{
  clientCopy = client;
  brandCopy = brand;
  modelCopy = model;
  nameCopy = name;
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__WLWelcomeController_daemon_didReceiveClient_brand_model_name___block_invoke;
  v19[3] = &unk_279EB9100;
  objc_copyWeak(&v24, &location);
  v20 = clientCopy;
  v21 = brandCopy;
  v22 = modelCopy;
  v23 = nameCopy;
  v15 = nameCopy;
  v16 = modelCopy;
  v17 = brandCopy;
  v18 = clientCopy;
  dispatch_async(MEMORY[0x277D85CD0], v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __64__WLWelcomeController_daemon_didReceiveClient_brand_model_name___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained setClient:*(a1 + 32) brand:*(a1 + 40) model:*(a1 + 48) name:*(a1 + 56)];
}

- (void)daemon:(id)daemon didUpdateProgress:(float)progress remainingTime:(unint64_t)time completedOperationCount:(unint64_t)count totalOperationCount:(unint64_t)operationCount
{
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__WLWelcomeController_daemon_didUpdateProgress_remainingTime_completedOperationCount_totalOperationCount___block_invoke;
  v11[3] = &unk_279EB9128;
  objc_copyWeak(v12, &location);
  progressCopy = progress;
  v12[1] = time;
  v12[2] = count;
  v12[3] = operationCount;
  dispatch_async(MEMORY[0x277D85CD0], v11);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __106__WLWelcomeController_daemon_didUpdateProgress_remainingTime_completedOperationCount_totalOperationCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v2) = *(a1 + 64);
  [WeakRetained updateProgress:*(a1 + 40) remainingTime:*(a1 + 48) completedOperationCount:*(a1 + 56) totalOperationCount:v2];
}

- (void)daemonWillImport:(id)import
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__WLWelcomeController_daemonWillImport___block_invoke;
  v3[3] = &unk_279EB8E18;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __40__WLWelcomeController_daemonWillImport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained import];
}

- (void)daemon:(id)daemon didImportWithContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WLWelcomeController_daemon_didImportWithContext___block_invoke;
  block[3] = &unk_279EB8EB8;
  objc_copyWeak(&v9, &location);
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__WLWelcomeController_daemon_didImportWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained complete:*(a1 + 32)];
}

- (void)daemon:(id)daemon didChangeState:(int64_t)state withContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WLWelcomeController_daemon_didChangeState_withContext___block_invoke;
  v9[3] = &unk_279EB9150;
  objc_copyWeak(v11, &location);
  v11[1] = state;
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __57__WLWelcomeController_daemon_didChangeState_withContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained change:*(a1 + 48) context:*(a1 + 32)];
}

- (void)daemonDidGetInterrupted
{
  migrationState = self->_migrationState;
  v4 = migrationState > 4;
  v5 = (1 << migrationState) & 0x19;
  if (!v4 && v5 != 0)
  {
    [(WLWelcomeController *)self change:3 context:0];
    mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
    [mEMORY[0x277D7B8D0] daemonDidGetInterrupted];
  }
}

- (void)downloadTips
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__WLWelcomeController_downloadTips__block_invoke;
  v3[3] = &unk_279EB8E18;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __35__WLWelcomeController_downloadTips__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained downloadTipsInBackground];
}

- (void)downloadTipsInBackground
{
  v3 = +[WLTips download];
  obj = self;
  objc_sync_enter(obj);
  obj->_hasTips = v3;
  objc_sync_exit(obj);
}

- (WLTransferringViewController)transferringViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_transferringViewController);

  return WeakRetained;
}

- (WLImportViewController)importViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_importViewController);

  return WeakRetained;
}

@end