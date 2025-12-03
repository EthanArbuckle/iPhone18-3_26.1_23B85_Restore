@interface SUManagerServer
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)mdmCommandConflictsWithDDM:(id)m;
- (SUManagerServer)init;
- (id)_clientForCurrentConnection;
- (id)_installReasons;
- (id)_mdmCommandConflictsWithDDMError;
- (id)autoInstallManager;
- (id)clients;
- (id)ddmManager;
- (id)installReasonForClientName:(id)name;
- (id)manager;
- (void)_clientForegroundnessDidChange:(id)change;
- (void)_clientMessagabilityDidChange:(id)change;
- (void)_evaluateForegroundness;
- (void)_getDDMStatusWithKeys:(id)keys withResult:(id)result;
- (void)_notifyServerStart;
- (void)_run;
- (void)_sendLatestStatusForClient:(id)client;
- (void)addClient:(id)client;
- (void)autoInstallManager:(id)manager didCancelOperation:(id)operation;
- (void)autoInstallManager:(id)manager didExpireOperation:(id)operation withError:(id)error;
- (void)autoInstallManager:(id)manager isReadyToInstall:(id)install withResult:(id)result;
- (void)autoInstallManager:(id)manager operationWasConsented:(id)consented;
- (void)autoInstallManager:(id)manager passcodePolicyChanged:(unint64_t)changed forOperation:(id)operation;
- (void)autoScanAndDownloadNow:(BOOL)now ifAvailable:(id)available;
- (void)automaticDownloadDidFailToStartForNewUpdateAvailable:(id)available withError:(id)error;
- (void)cancelAutoInstallOperation:(id)operation withResult:(id)result;
- (void)cancelDDMDeclaration:(id)declaration withResult:(id)result;
- (void)cancelDDMDeclarationForKey:(id)key completion:(id)completion;
- (void)cancelDownloadWithOptions:(id)options withResult:(id)result;
- (void)clearingSpaceForDownload:(id)download clearing:(BOOL)clearing;
- (void)consentToAutoInstallOperation:(id)operation withResult:(id)result;
- (void)createInstallationKeybag:(id)keybag withResult:(id)result;
- (void)currentAutoInstallOperation:(BOOL)operation withResult:(id)result;
- (void)currentAutoInstallOperationForecast:(id)forecast;
- (void)currentPasscodePolicy:(id)policy;
- (void)dealloc;
- (void)delayEndDate:(id)date;
- (void)descriptor:(id)descriptor;
- (void)descriptors:(id)descriptors;
- (void)destroyInstallationKeybag;
- (void)disableReserveSpace:(BOOL)space withResult:(id)result;
- (void)downloadAndInstallState:(id)state;
- (void)downloadDidFail:(id)fail withError:(id)error;
- (void)downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)downloadDidStart:(id)start;
- (void)downloadProgressDidChange:(id)change;
- (void)downloadWasInvalidatedForNewUpdatesAvailable:(id)available;
- (void)eligibleRollbackWithOptions:(id)options withResult:(id)result;
- (void)enableAutomaticDownload:(BOOL)download;
- (void)enableAutomaticUpdateV2:(BOOL)v2;
- (void)exitExclusiveControl;
- (void)fetchInstallHistory:(id)history;
- (void)getAllDeclarationsWithHandler:(id)handler;
- (void)getDDMDeclarationWithHandler:(id)handler;
- (void)getDDMGlobalSettingsWithHandler:(id)handler;
- (void)getDDMStatusWithKeys:(id)keys completion:(id)completion;
- (void)getDDMUpdateDescriptorWithHandler:(id)handler;
- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler:(id)handler;
- (void)getShouldDisableAutoInstallIOSUpdatesToggleWithHandler:(id)handler;
- (void)getShouldDisableAutoInstallRSRToggleWithHandler:(id)handler;
- (void)goUnderExclusiveControl;
- (void)handleClientRequest:(const char *)request client:(id)client withRequestCallBack:(id)back withErrorCallBack:(id)callBack;
- (void)handleDDMDeclaration:(id)declaration withResult:(id)result;
- (void)installDidFail:(id)fail withError:(id)error;
- (void)installDidFinish:(id)finish;
- (void)installDidStart:(id)start;
- (void)installPolicyDidChange:(id)change;
- (void)installServerConfiguration;
- (void)installTonightScheduled:(BOOL)scheduled;
- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result;
- (void)installUpdateWithOptions:(id)options withResult:(id)result;
- (void)installWantsToStart:(id)start completion:(id)completion;
- (void)isAnyClientInUserInteraction:(id)interaction;
- (void)isAutoUpdateEnabled:(id)enabled;
- (void)isAutoUpdateScheduled:(id)scheduled;
- (void)isAutomaticDownloadEnabled:(id)enabled;
- (void)isAutomaticUpdateV2Enabled:(id)enabled;
- (void)isClearingSpaceForDownload:(id)download;
- (void)isDelayingUpdates:(id)updates;
- (void)isDownloading:(id)downloading;
- (void)isInstallationKeybagRequired:(id)required;
- (void)isInstallationKeybagRequiredForDescriptor:(id)descriptor result:(id)result;
- (void)isRollingBack:(id)back;
- (void)isScanning:(id)scanning;
- (void)isSoftwareUpdateInProgress:(id)progress;
- (void)isSplatOnlyUpdateRollbackSuggested:(id)suggested;
- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result;
- (void)managedInstallationRequested:(id)requested;
- (void)networkMonitorDetectOverrides;
- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size withResult:(id)result;
- (void)pauseDownload:(id)download;
- (void)presentAutoUpdateBanner:(id)banner;
- (void)presentingRecommendedUpdate:(id)update shouldPresent:(BOOL)present;
- (void)previousRollback:(id)rollback withResult:(id)result;
- (void)purgeDownloadWithOptions:(id)options withResult:(id)result;
- (void)recordSUAnalyticsEvent:(id)event;
- (void)registerCSInstallPredicatesOnDate:(id)date;
- (void)removeClient:(id)client;
- (void)resetState;
- (void)resumeDownload:(id)download;
- (void)rollbackDidFail:(id)fail withError:(id)error;
- (void)rollbackDidStart:(id)start;
- (void)rollbackReadyForReboot:(id)reboot;
- (void)rollbackReadyToStart:(id)start options:(id)options completion:(id)completion;
- (void)rollbackSucceeded:(id)succeeded;
- (void)rollbackSuggested:(id)suggested info:(id)info;
- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result;
- (void)runOnClients:(id)clients;
- (void)runOnClientsUntilStop:(id)stop;
- (void)runUntilIdleExit;
- (void)rvGetCurrentNeRDInfoWithReply:(id)reply;
- (void)rvTriggerNeRDUpdate:(id)update;
- (void)scanDidCompleteForOptions:(id)options results:(id)results error:(id)error;
- (void)scanDidCompleteWithNewUpdateAvailable:(id)available error:(id)error;
- (void)scanForUpdates:(id)updates withResult:(id)result;
- (void)scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error;
- (void)scanRequestDidFinishForOptions:(id)options update:(id)update error:(id)error;
- (void)scanRequestDidStartForOptions:(id)options;
- (void)scheduleRollbackRebootForLater:(id)later;
- (void)securityResponseRollbackSuggested:(id)suggested withResult:(id)result;
- (void)sendDDMDeclarationToUI:(id)i;
- (void)sendDDMGlobalSettingsToUI:(id)i;
- (void)serverInitAndResumeWork;
- (void)setDDMGlobalSettings:(id)settings completion:(id)completion;
- (void)setExclusiveControl:(BOOL)control;
- (void)setLastRollbackDescriptor:(id)descriptor withResult:(id)result;
- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)slaVersion:(id)version;
- (void)softwareUpdatePathRestriction:(id)restriction;
- (void)softwareUpdateReserveSizes:(id)sizes;
- (void)splatRollbackAllowed:(id)allowed;
- (void)splatRollbackDetected:(id)detected;
- (void)splatUpdateDetected;
- (void)startDownload:(id)download;
- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result;
- (void)startDownloadWithOptions:(id)options withResult:(id)result;
- (void)submitAllSUAnalyticsEvents;
- (void)submitSUAnalyticsEvent:(id)event;
- (void)submitSUAnalyticsEventsWithName:(id)name;
- (void)updateDownloadMetadata:(id)metadata withResult:(id)result;
- (void)updateDownloadOptions:(id)options withResult:(id)result;
- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler;
- (void)userAskedToDeferInstall;
- (void)writeKeepAliveFile:(id)file;
@end

@implementation SUManagerServer

- (void)_run
{
  v2 = *MEMORY[0x277CBF058];
  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = CFRunLoopRunInMode(v2, 15.0, 0);
    if (v4 != kCFRunLoopRunTimedOut)
    {
      break;
    }

    v5 = +[SUTransactionManager sharedInstance];
    copyTransactions = [v5 copyTransactions];

    if (copyTransactions && [copyTransactions count])
    {
      v7 = SULogCommon();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

      if (v8)
      {
        SULogDebug(@"Software update daemon continuing to run - transactions: %@", v9, v10, v11, v12, v13, v14, v15, copyTransactions);
      }

      else
      {
        SULogInfo(@"Software update daemon continuing to run - busy.", v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

LABEL_11:
    objc_autoreleasePoolPop(v3);
  }

  if ((v4 - 1) >= 2)
  {
    goto LABEL_11;
  }

  objc_autoreleasePoolPop(v3);
}

+ (id)sharedInstance
{
  if (sharedInstance_pred_0 != -1)
  {
    +[SUManagerServer sharedInstance];
  }

  v3 = sharedInstance___instance_1;

  return v3;
}

uint64_t __33__SUManagerServer_sharedInstance__block_invoke()
{
  sharedInstance___instance_1 = objc_alloc_init(SUManagerServer);

  return MEMORY[0x2821F96F8]();
}

- (SUManagerServer)init
{
  v11.receiver = self;
  v11.super_class = SUManagerServer;
  v2 = [(SUManagerServer *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.softwareupdateservicesd.clientQueue", v5);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    v8 = +[SUState currentState];
    v2->_underExclusiveControl = [v8 underExclusiveControl];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__clientMessagabilityDidChange_ name:@"SUClientMessagabilityChangedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__clientForegroundnessDidChange_ name:@"SUClientForegroundnessChangedNotification" object:0];
  }

  return v2;
}

- (id)manager
{
  manager = self->_manager;
  if (!manager)
  {
    v4 = +[SUManagerInterfaceFactory sharedInstance];
    v5 = self->_manager;
    self->_manager = v4;

    [(SUManagerInterface *)self->_manager setDelegate:self];
    manager = self->_manager;
  }

  return manager;
}

- (id)autoInstallManager
{
  autoInstallManager = self->_autoInstallManager;
  if (!autoInstallManager)
  {
    v4 = [SUAutoInstallManager alloc];
    manager = [(SUManagerServer *)self manager];
    v6 = [(SUAutoInstallManager *)v4 initWithManager:manager];
    v7 = self->_autoInstallManager;
    self->_autoInstallManager = v6;

    [(SUAutoInstallManager *)self->_autoInstallManager setDelegate:self];
    autoInstallManager = self->_autoInstallManager;
  }

  return autoInstallManager;
}

- (id)ddmManager
{
  ddmManager = self->_ddmManager;
  if (!ddmManager)
  {
    v4 = [[SUDDMManager alloc] initWithDelegate:self];
    v5 = self->_ddmManager;
    self->_ddmManager = v4;

    ddmManager = self->_ddmManager;
  }

  return ddmManager;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  clientQueue = self->_clientQueue;
  self->_clientQueue = 0;

  v5.receiver = self;
  v5.super_class = SUManagerServer;
  [(SUManagerServer *)&v5 dealloc];
}

- (void)runOnClients:(id)clients
{
  v16 = *MEMORY[0x277D85DE8];
  clientsCopy = clients;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        clientsCopy[2](clientsCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)runOnClientsUntilStop:(id)stop
{
  v17 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      stopCopy[2](stopCopy, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleClientRequest:(const char *)request client:(id)client withRequestCallBack:(id)back withErrorCallBack:(id)callBack
{
  backCopy = back;
  shortDescription = [client shortDescription];
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, shortDescription);

  backCopy[2]();
}

- (void)isScanning:(id)scanning
{
  scanningCopy = scanning;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SUManagerServer_isScanning___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = scanningCopy;
  v7 = scanningCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __30__SUManagerServer_isScanning___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SUManagerServer_isScanning___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SUManagerServer_isScanning___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isScanning:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __30__SUManagerServer_isScanning___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 isScanning];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __30__SUManagerServer_isScanning___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)scanForUpdates:(id)updates withResult:(id)result
{
  updatesCopy = updates;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__SUManagerServer_scanForUpdates_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = updatesCopy;
  v16 = resultCopy;
  v10 = updatesCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __45__SUManagerServer_scanForUpdates_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SUManagerServer_scanForUpdates_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SUManagerServer_scanForUpdates_withResult___block_invoke_4;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer scanForUpdates:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __45__SUManagerServer_scanForUpdates_withResult___block_invoke_2(id *a1)
{
  if ([a1[4] mdmCommandConflictsWithDDM:a1[5]])
  {
    v2 = a1[7];
    v9 = [a1[4] _mdmCommandConflictsWithDDMError];
    v2[2](v2, 0, v9);
  }

  else
  {
    v3 = [a1[5] identifier];
    if (v3)
    {
      v4 = v3;
      v5 = [a1[6] clientName];

      if (!v5)
      {
        v6 = [a1[5] identifier];
        [a1[6] setClientName:v6];
      }
    }

    v7 = [a1[4] manager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__SUManagerServer_scanForUpdates_withResult___block_invoke_3;
    v10[3] = &unk_279CAB398;
    v8 = a1[6];
    v11 = a1[7];
    [v7 scanForUpdates:v8 complete:v10];
  }
}

uint64_t __45__SUManagerServer_scanForUpdates_withResult___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __45__SUManagerServer_scanForUpdates_withResult___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)autoScanAndDownloadNow:(BOOL)now ifAvailable:(id)available
{
  availableCopy = available;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v8 = +[SUUtility mainWorkQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke;
  v11[3] = &unk_279CAB410;
  v11[4] = self;
  v12 = _clientForCurrentConnection;
  nowCopy = now;
  v13 = availableCopy;
  v9 = availableCopy;
  v10 = _clientForCurrentConnection;
  dispatch_async(v8, v11);
}

void __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke_2;
  v6[3] = &unk_279CAB3E8;
  v6[4] = v3;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke_4;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer autoScanAndDownloadNow:ifAvailable:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke_3;
  v4[3] = &unk_279CAB398;
  v5 = *(a1 + 40);
  [v2 autoScanAndDownloadIfAvailable:0 downloadNow:v3 withResult:v4];
}

uint64_t __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)descriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (descriptorsCopy)
  {
    _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__SUManagerServer_descriptors___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v9 = _clientForCurrentConnection;
    v10 = descriptorsCopy;
    v7 = _clientForCurrentConnection;
    dispatch_async(v6, block);
  }
}

void __31__SUManagerServer_descriptors___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SUManagerServer_descriptors___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SUManagerServer_descriptors___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer descriptors:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __31__SUManagerServer_descriptors___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [v2 preferredLastScannedDescriptor];
  v10 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v3];

  v4 = [*(a1 + 32) manager];
  v5 = [v4 alternateLastScannedDescriptor];
  v6 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v5];

  if (v10 | v6)
  {
    v7 = [[SUScanResults alloc] initWithPreferredDescriptor:v10 alternateDescriptor:v6];
    v8 = *(a1 + 40);
    if (v7)
    {
      v9 = v7;
      (*(v8 + 16))(v8, v7, 0);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(a1 + 40);
  }

  v9 = [SUUtility errorWithCode:3];
  (*(v8 + 16))(v8, 0, v9);
LABEL_6:
}

- (void)descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__SUManagerServer_descriptor___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v9 = _clientForCurrentConnection;
    v10 = descriptorCopy;
    v7 = _clientForCurrentConnection;
    dispatch_async(v6, block);
  }
}

void __30__SUManagerServer_descriptor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SUManagerServer_descriptor___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SUManagerServer_descriptor___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer descriptor:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __30__SUManagerServer_descriptor___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [v2 preferredLastScannedDescriptor];
  v6 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v3];

  v4 = *(a1 + 40);
  if (v6)
  {
    (*(v4 + 16))(v4, v6, 0);
  }

  else
  {
    v5 = [SUUtility errorWithCode:3];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)disableReserveSpace:(BOOL)space withResult:(id)result
{
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v8 = +[SUUtility mainWorkQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SUManagerServer_disableReserveSpace_withResult___block_invoke;
  v11[3] = &unk_279CAB410;
  v11[4] = self;
  v12 = _clientForCurrentConnection;
  spaceCopy = space;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = _clientForCurrentConnection;
  dispatch_async(v8, v11);
}

void __50__SUManagerServer_disableReserveSpace_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SUManagerServer_disableReserveSpace_withResult___block_invoke_2;
  v6[3] = &unk_279CAB3E8;
  v6[4] = v3;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SUManagerServer_disableReserveSpace_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer disableReserveSpace:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __50__SUManagerServer_disableReserveSpace_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 disableReserveSpace:*(a1 + 48) withResult:*(a1 + 40)];
}

- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size withResult:(id)result
{
  reserveCopy = reserve;
  sizeCopy = size;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v12 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SUManagerServer_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke;
  block[3] = &unk_279CAA748;
  block[4] = self;
  v18 = _clientForCurrentConnection;
  v19 = reserveCopy;
  v20 = sizeCopy;
  v21 = resultCopy;
  v13 = resultCopy;
  v14 = sizeCopy;
  v15 = reserveCopy;
  v16 = _clientForCurrentConnection;
  dispatch_async(v12, block);
}

void __83__SUManagerServer_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SUManagerServer_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke_2;
  v6[3] = &unk_279CAB438;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__SUManagerServer_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 64);
  [v3 handleClientRequest:"-[SUManagerServer overrideSoftwareUpdateReserve:systemGrowthMarginSize:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __83__SUManagerServer_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 overrideSoftwareUpdateReserve:*(a1 + 40) systemGrowthMarginSize:*(a1 + 48) withResult:*(a1 + 56)];
}

- (void)softwareUpdateReserveSizes:(id)sizes
{
  sizesCopy = sizes;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_softwareUpdateReserveSizes___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = sizesCopy;
  v7 = sizesCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __46__SUManagerServer_softwareUpdateReserveSizes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SUManagerServer_softwareUpdateReserveSizes___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SUManagerServer_softwareUpdateReserveSizes___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer softwareUpdateReserveSizes:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __46__SUManagerServer_softwareUpdateReserveSizes___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 softwareUpdateReserveSizes:*(a1 + 40)];
}

- (void)isClearingSpaceForDownload:(id)download
{
  downloadCopy = download;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_isClearingSpaceForDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = downloadCopy;
  v7 = downloadCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __46__SUManagerServer_isClearingSpaceForDownload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SUManagerServer_isClearingSpaceForDownload___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SUManagerServer_isClearingSpaceForDownload___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isClearingSpaceForDownload:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __46__SUManagerServer_isClearingSpaceForDownload___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 isClearingSpace];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __46__SUManagerServer_isClearingSpaceForDownload___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isDownloading:(id)downloading
{
  downloadingCopy = downloading;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_isDownloading___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = downloadingCopy;
  v7 = downloadingCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __33__SUManagerServer_isDownloading___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SUManagerServer_isDownloading___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SUManagerServer_isDownloading___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isDownloading:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __33__SUManagerServer_isDownloading___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 isDownloading];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __33__SUManagerServer_isDownloading___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)startDownload:(id)download
{
  downloadCopy = download;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_startDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = downloadCopy;
  v7 = downloadCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __33__SUManagerServer_startDownload___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SUManagerServer_startDownload___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SUManagerServer_startDownload___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer startDownload:]_block_invoke" client:v7 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __33__SUManagerServer_startDownload___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    [v3 startDownload:*(a1 + 48)];
  }
}

uint64_t __33__SUManagerServer_startDownload___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)startDownloadWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SUManagerServer_startDownloadWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = optionsCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __55__SUManagerServer_startDownloadWithOptions_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SUManagerServer_startDownloadWithOptions_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUManagerServer_startDownloadWithOptions_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer startDownloadWithOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __55__SUManagerServer_startDownloadWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 56);
    v7 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 40) identifier];
    if (v3)
    {
      v4 = v3;
      v5 = [*(a1 + 48) clientName];

      if (!v5)
      {
        v6 = [*(a1 + 40) identifier];
        [*(a1 + 48) setClientName:v6];
      }
    }

    v7 = [*(a1 + 32) manager];
    [v7 startDownloadWithOptions:*(a1 + 48) withResult:*(a1 + 56)];
  }
}

uint64_t __55__SUManagerServer_startDownloadWithOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result
{
  metadataCopy = metadata;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_startDownloadWithMetadata_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = metadataCopy;
  v16 = resultCopy;
  v10 = metadataCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __56__SUManagerServer_startDownloadWithMetadata_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SUManagerServer_startDownloadWithMetadata_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUManagerServer_startDownloadWithMetadata_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer startDownloadWithMetadata:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __56__SUManagerServer_startDownloadWithMetadata_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 56);
    v3 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    [v3 startDownloadWithMetadata:*(a1 + 48) withResult:*(a1 + 56)];
  }
}

uint64_t __56__SUManagerServer_startDownloadWithMetadata_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)cancelDownloadWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_cancelDownloadWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = optionsCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __56__SUManagerServer_cancelDownloadWithOptions_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SUManagerServer_cancelDownloadWithOptions_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUManagerServer_cancelDownloadWithOptions_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer cancelDownloadWithOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __56__SUManagerServer_cancelDownloadWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 56);
    v3 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    [v3 cancelDownloadWithOptions:*(a1 + 48) withResult:*(a1 + 56)];
  }
}

uint64_t __56__SUManagerServer_cancelDownloadWithOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)purgeDownloadWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SUManagerServer_purgeDownloadWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = optionsCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __55__SUManagerServer_purgeDownloadWithOptions_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SUManagerServer_purgeDownloadWithOptions_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUManagerServer_purgeDownloadWithOptions_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer purgeDownloadWithOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __55__SUManagerServer_purgeDownloadWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 56);
    v3 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    [v3 purgeDownloadWithOptions:*(a1 + 48) withResult:*(a1 + 56)];
  }
}

uint64_t __55__SUManagerServer_purgeDownloadWithOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)pauseDownload:(id)download
{
  downloadCopy = download;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_pauseDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = downloadCopy;
  v7 = downloadCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __33__SUManagerServer_pauseDownload___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SUManagerServer_pauseDownload___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SUManagerServer_pauseDownload___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer pauseDownload:]_block_invoke" client:v7 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __33__SUManagerServer_pauseDownload___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    [v3 pauseDownload:*(a1 + 48)];
  }
}

uint64_t __33__SUManagerServer_pauseDownload___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)resumeDownload:(id)download
{
  downloadCopy = download;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUManagerServer_resumeDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = downloadCopy;
  v7 = downloadCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __34__SUManagerServer_resumeDownload___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SUManagerServer_resumeDownload___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SUManagerServer_resumeDownload___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer resumeDownload:]_block_invoke" client:v7 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __34__SUManagerServer_resumeDownload___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    [v3 resumeDownload:*(a1 + 48)];
  }
}

uint64_t __34__SUManagerServer_resumeDownload___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)updateDownloadMetadata:(id)metadata withResult:(id)result
{
  metadataCopy = metadata;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SUManagerServer_updateDownloadMetadata_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = metadataCopy;
  v16 = resultCopy;
  v10 = metadataCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __53__SUManagerServer_updateDownloadMetadata_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SUManagerServer_updateDownloadMetadata_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SUManagerServer_updateDownloadMetadata_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer updateDownloadMetadata:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __53__SUManagerServer_updateDownloadMetadata_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 56);
    v3 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    [v3 updateDownloadMetadata:*(a1 + 48) withResult:*(a1 + 56)];
  }
}

uint64_t __53__SUManagerServer_updateDownloadMetadata_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)updateDownloadOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SUManagerServer_updateDownloadOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = optionsCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __52__SUManagerServer_updateDownloadOptions_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SUManagerServer_updateDownloadOptions_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SUManagerServer_updateDownloadOptions_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer updateDownloadOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __52__SUManagerServer_updateDownloadOptions_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 56);
    v7 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 40) identifier];
    if (v3)
    {
      v4 = v3;
      v5 = [*(a1 + 48) clientName];

      if (!v5)
      {
        v6 = [*(a1 + 40) identifier];
        [*(a1 + 48) setClientName:v6];
      }
    }

    v7 = [*(a1 + 32) manager];
    [v7 updateDownloadOptions:*(a1 + 48) withResult:*(a1 + 56)];
  }
}

uint64_t __52__SUManagerServer_updateDownloadOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)downloadAndInstallState:(id)state
{
  stateCopy = state;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_downloadAndInstallState___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = stateCopy;
  v7 = stateCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __43__SUManagerServer_downloadAndInstallState___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SUManagerServer_downloadAndInstallState___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SUManagerServer_downloadAndInstallState___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer downloadAndInstallState:]_block_invoke" client:v7 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __43__SUManagerServer_downloadAndInstallState___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    v9 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(v2 + 16))(v2, 0, 0, 0);
  }

  else
  {
    v3 = [*(a1 + 32) manager];
    v9 = [v3 download];

    v4 = [*(a1 + 32) manager];
    v5 = [v4 installPolicy];

    v6 = [*(a1 + 32) autoInstallManager];
    v7 = [v6 currentAutoInstallOperationCreatingIfNecessary:0 error:0];

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v5, v7, 0);
    }
  }
}

uint64_t __43__SUManagerServer_downloadAndInstallState___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0, a2);
  }

  return result;
}

- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler
{
  optionsCopy = options;
  downloadOptionsCopy = downloadOptions;
  handlerCopy = handler;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v12 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SUManagerServer_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
  block[3] = &unk_279CAB460;
  block[4] = self;
  v18 = _clientForCurrentConnection;
  v20 = downloadOptionsCopy;
  v21 = handlerCopy;
  v19 = optionsCopy;
  v13 = downloadOptionsCopy;
  v14 = optionsCopy;
  v15 = handlerCopy;
  v16 = _clientForCurrentConnection;
  dispatch_async(v12, block);
}

void __88__SUManagerServer_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__SUManagerServer_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_2;
  v9[3] = &unk_279CAB460;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v12 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__SUManagerServer_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_3;
  v7[3] = &unk_279CAB370;
  v8 = *(a1 + 64);
  [v6 handleClientRequest:"-[SUManagerServer updatesDownloadableWithOptions:alternateDownloadOptions:replyHandler:]_block_invoke" client:v2 withRequestCallBack:v9 withErrorCallBack:v7];
}

void __88__SUManagerServer_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v6 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v2 = [*(a1 + 40) identifier];
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 48) clientName];

      if (!v4)
      {
        v5 = [*(a1 + 40) identifier];
        [*(a1 + 48) setClientName:v5];
      }
    }

    v6 = [*(a1 + 32) manager];
    [v6 updatesDownloadableWithOptions:*(a1 + 48) alternateDownloadOptions:*(a1 + 56) replyHandler:*(a1 + 64)];
  }
}

uint64_t __88__SUManagerServer_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2, a2);
  }

  return result;
}

- (void)isSoftwareUpdateInProgress:(id)progress
{
  progressCopy = progress;
  if (progressCopy)
  {
    _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
    v13 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SUManagerServer_isSoftwareUpdateInProgress___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = _clientForCurrentConnection;
    v17 = progressCopy;
    v14 = _clientForCurrentConnection;
    dispatch_async(v13, block);
  }

  else
  {
    SULogError(@"%s: No reply handler provided", v4, v5, v6, v7, v8, v9, v10, "[SUManagerServer isSoftwareUpdateInProgress:]");
  }
}

void __46__SUManagerServer_isSoftwareUpdateInProgress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SUManagerServer_isSoftwareUpdateInProgress___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SUManagerServer_isSoftwareUpdateInProgress___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isSoftwareUpdateInProgress:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __46__SUManagerServer_isSoftwareUpdateInProgress___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 download];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)getDDMStatusWithKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting DDM status"];
  SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer getDDMStatusWithKeys:completion:]");

  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v16 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerServer_getDDMStatusWithKeys_completion___block_invoke;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v22 = _clientForCurrentConnection;
  v23 = keysCopy;
  v24 = completionCopy;
  v17 = completionCopy;
  v18 = keysCopy;
  v19 = _clientForCurrentConnection;
  dispatch_async(v16, block);
}

void __51__SUManagerServer_getDDMStatusWithKeys_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SUManagerServer_getDDMStatusWithKeys_completion___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SUManagerServer_getDDMStatusWithKeys_completion___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer getDDMStatusWithKeys:completion:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __51__SUManagerServer_getDDMStatusWithKeys_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)_getDDMStatusWithKeys:(id)keys withResult:(id)result
{
  v39[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  ddmManager = [(SUManagerServer *)self ddmManager];
  activeDDMDeclarationEnfrocedSU = [ddmManager activeDDMDeclarationEnfrocedSU];

  manager = [(SUManagerServer *)self manager];
  isDownloading = [manager isDownloading];

  manager2 = [(SUManagerServer *)self manager];
  download = [manager2 download];
  progress = [download progress];
  isDone = [progress isDone];

  manager3 = [(SUManagerServer *)self manager];
  isInstalling = [manager3 isInstalling];

  manager4 = [(SUManagerServer *)self manager];
  download2 = [manager4 download];
  descriptor = [download2 descriptor];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = *MEMORY[0x277D64218];
  if ((isInstalling & 1) != 0 || (isDone & 1) != 0 || isDownloading)
  {
    v21 = MEMORY[0x277D64210];
    v22 = MEMORY[0x277D64220];
    if (!isDone)
    {
      v22 = MEMORY[0x277D64208];
    }

    if (!isInstalling)
    {
      v21 = v22;
    }

    v23 = *v21;

    v20 = v23;
  }

  [dictionary setSafeObject:v20 forKey:*MEMORY[0x277D64238]];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  productVersion = [descriptor productVersion];
  if ([descriptor isSplatOnly])
  {
    productVersionExtra = [descriptor productVersionExtra];

    if (productVersionExtra)
    {
      v27 = MEMORY[0x277CCACA8];
      productVersionExtra2 = [descriptor productVersionExtra];
      v29 = [v27 stringWithFormat:@"%@ %@", productVersion, productVersionExtra2];

      productVersion = v29;
    }
  }

  productBuildVersion = [descriptor productBuildVersion];
  [dictionary2 setSafeObject:productBuildVersion forKey:*MEMORY[0x277D64328]];

  [dictionary2 setSafeObject:productVersion forKey:*MEMORY[0x277D64358]];
  enforcedInstallDate = [activeDDMDeclarationEnfrocedSU enforcedInstallDate];
  v32 = [enforcedInstallDate description];
  [dictionary2 setSafeObject:v32 forKey:*MEMORY[0x277D64348]];

  [dictionary setSafeObject:dictionary2 forKey:*MEMORY[0x277D64240]];
  v33 = +[SUState currentState];
  ddmPersistedError = [v33 ddmPersistedError];

  if (!ddmPersistedError)
  {
    v38 = *MEMORY[0x277D64330];
    v39[0] = &unk_287B6F610;
    ddmPersistedError = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  }

  [dictionary setSafeObject:ddmPersistedError forKey:*MEMORY[0x277D64228]];
  _installReasons = [(SUManagerServer *)self _installReasons];
  [dictionary setSafeObject:_installReasons forKey:*MEMORY[0x277D64230]];

  v36 = [dictionary copy];
  resultCopy[2](resultCopy, v36, 0);

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_installReasons
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  manager = [(SUManagerServer *)self manager];
  installPolicy = [manager installPolicy];

  manager2 = [(SUManagerServer *)self manager];
  download = [manager2 download];
  downloadOptions = [download downloadOptions];

  manager3 = [(SUManagerServer *)self manager];
  LODWORD(download) = [manager3 isInstalling];

  if (download)
  {
    clientName = [installPolicy clientName];

    if (clientName)
    {
      v11 = installPolicy;
LABEL_9:
      clientName2 = [v11 clientName];
      v16 = [(SUManagerServer *)self installReasonForClientName:clientName2];

      if (v16)
      {
        [v3 addObject:v16];
      }

      goto LABEL_12;
    }
  }

  if ([downloadOptions isAutoDownload])
  {
    autoInstallManager = [(SUManagerServer *)self autoInstallManager];
    isAutoUpdateEnabled = [autoInstallManager isAutoUpdateEnabled];

    if (isAutoUpdateEnabled)
    {
      [v3 addObject:@"auto-update"];
    }
  }

  clientName3 = [downloadOptions clientName];

  if (clientName3)
  {
    v11 = downloadOptions;
    goto LABEL_9;
  }

LABEL_12:
  manager4 = [(SUManagerServer *)self manager];
  isInstallTonight = [manager4 isInstallTonight];

  if (isInstallTonight)
  {
    [v3 addObject:@"install-tonight"];
  }

  ddmManager = [(SUManagerServer *)self ddmManager];
  activeDDMDeclarationEnfrocedSU = [ddmManager activeDDMDeclarationEnfrocedSU];

  if (activeDDMDeclarationEnfrocedSU)
  {
    [v3 addObject:@"declaration"];
  }

  v25 = *MEMORY[0x277D64338];
  allObjects = [v3 allObjects];
  v26[0] = allObjects;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)installReasonForClientName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.Preferences"])
  {
    v5 = @"system-settings";
  }

  else if ([nameCopy isEqualToString:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.susuiservice.SUSUInstallAlertCFUserNotificationUIExtension") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.SoftwareUpdateServices.SUSFollowUpExtension"))
  {
    v5 = @"notification";
  }

  else if ([nameCopy isEqualToString:@"com.apple.purplebuddy"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.SetupAssistant") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.migrationpluginwrapper"))
  {
    v5 = @"setup-assistant";
  }

  else if ([nameCopy isEqualToString:@"dmd"])
  {
    v5 = @"mdm";
  }

  else if ([nameCopy isEqualToString:@"com.apple.softwareupdateservicesd"])
  {
    autoInstallManager = [(SUManagerServer *)self autoInstallManager];
    isAutoUpdateEnabled = [autoInstallManager isAutoUpdateEnabled];

    if (isAutoUpdateEnabled)
    {
      v5 = @"auto-update";
    }

    else
    {
      manager = [(SUManagerServer *)self manager];
      isInstallTonight = [manager isInstallTonight];

      if (isInstallTonight)
      {
        v5 = @"install-tonight";
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)mdmCommandConflictsWithDDM:(id)m
{
  identifier = [m identifier];
  v5 = [identifier isEqualToString:@"dmd"];
  if (v5)
  {
    ddmManager = [(SUManagerServer *)self ddmManager];
    activeDDMDeclarationEnfrocedSU = [ddmManager activeDDMDeclarationEnfrocedSU];

    if (!activeDDMDeclarationEnfrocedSU)
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"MDM command conflicts with DDM"];
    SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer mdmCommandConflictsWithDDM:]");
  }

  return v5;
}

- (id)_mdmCommandConflictsWithDDMError
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v11[0] = @"Rejecting MDM command for updates because an existing declaration is in place";
  v3 = *MEMORY[0x277CCA450];
  v10[0] = *MEMORY[0x277CCA068];
  v10[1] = v3;
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = [v4 localizedStringForKey:@"SU_MDM_CONFLICTS_WITH_DDM_ERROR" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v2 errorWithDomain:@"com.apple.softwareupdateservices.errors" code:103 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)cancelDDMDeclaration:(id)declaration withResult:(id)result
{
  resultCopy = result;
  declarationKey = [declaration declarationKey];
  [(SUManagerServer *)self cancelDDMDeclarationForKey:declarationKey completion:resultCopy];
}

- (void)cancelDDMDeclarationForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer cancelDDMDeclarationForKey:completion:]");

  if (completionCopy)
  {
    v15 = completionCopy;
  }

  else
  {
    v15 = &__block_literal_global_397;
  }

  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v17 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUManagerServer_cancelDDMDeclarationForKey_completion___block_invoke_2;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v23 = _clientForCurrentConnection;
  v24 = keyCopy;
  v25 = v15;
  v18 = v15;
  v19 = keyCopy;
  v20 = _clientForCurrentConnection;
  dispatch_async(v17, block);
}

void __57__SUManagerServer_cancelDDMDeclarationForKey_completion___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SUManagerServer_cancelDDMDeclarationForKey_completion___block_invoke_3;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SUManagerServer_cancelDDMDeclarationForKey_completion___block_invoke_4;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer cancelDDMDeclarationForKey:completion:]_block_invoke_2" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __57__SUManagerServer_cancelDDMDeclarationForKey_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ddmManager];
  v3 = *(a1 + 40);
  v5 = 0;
  [v2 cancelDDMDeclarationForKey:v3 outError:&v5];
  v4 = v5;

  (*(*(a1 + 48) + 16))();
}

- (void)handleDDMDeclaration:(id)declaration withResult:(id)result
{
  declarationCopy = declaration;
  resultCopy = result;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer handleDDMDeclaration:withResult:]");

  if (resultCopy)
  {
    v15 = resultCopy;
  }

  else
  {
    v15 = &__block_literal_global_399;
  }

  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v17 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerServer_handleDDMDeclaration_withResult___block_invoke_2;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v23 = _clientForCurrentConnection;
  v24 = declarationCopy;
  v25 = v15;
  v18 = v15;
  v19 = declarationCopy;
  v20 = _clientForCurrentConnection;
  dispatch_async(v17, block);
}

void __51__SUManagerServer_handleDDMDeclaration_withResult___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SUManagerServer_handleDDMDeclaration_withResult___block_invoke_3;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SUManagerServer_handleDDMDeclaration_withResult___block_invoke_4;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer handleDDMDeclaration:withResult:]_block_invoke_2" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __51__SUManagerServer_handleDDMDeclaration_withResult___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ddmManager];
  v3 = *(a1 + 40);
  v6 = 0;
  [v2 handleDDMDeclaration:v3 outError:&v6];
  v4 = v6;

  (*(*(a1 + 48) + 16))();
  return notify_post([*MEMORY[0x277D64258] UTF8String]);
}

- (void)getDDMDeclarationWithHandler:(id)handler
{
  handlerCopy = handler;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUManagerServer getDDMDeclarationWithHandler:]");

  if (!handlerCopy)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No handler given"];
    SULogInfo(@"[DDM] %s: %@", v12, v13, v14, v15, v16, v17, v18, "[SUManagerServer getDDMDeclarationWithHandler:]");

    handlerCopy = &__block_literal_global_405;
  }

  v19 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUManagerServer_getDDMDeclarationWithHandler___block_invoke_2;
  block[3] = &unk_279CAA8D0;
  block[4] = self;
  v24 = handlerCopy;
  v20 = handlerCopy;
  dispatch_async(v19, block);
}

void __48__SUManagerServer_getDDMDeclarationWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForCurrentConnection];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SUManagerServer_getDDMDeclarationWithHandler___block_invoke_3;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v3;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SUManagerServer_getDDMDeclarationWithHandler___block_invoke_4;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 40);
  [v3 handleClientRequest:"-[SUManagerServer getDDMDeclarationWithHandler:]_block_invoke_2" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __48__SUManagerServer_getDDMDeclarationWithHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ddmManager];
  v12 = [v2 activeDDMDeclarationEnfrocedSU];

  if (v12)
  {
    v3 = 0;
  }

  else
  {
    v3 = [SUUtility errorWithCode:102];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reporting active declaration to client: %@", v12];
  SULogInfo(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerServer getDDMDeclarationWithHandler:]_block_invoke_3");

  (*(*(a1 + 40) + 16))();
}

- (void)getDDMUpdateDescriptorWithHandler:(id)handler
{
  handlerCopy = handler;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUManagerServer getDDMUpdateDescriptorWithHandler:]");

  if (!handlerCopy)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No handler given"];
    SULogInfo(@"[DDM] %s: %@", v12, v13, v14, v15, v16, v17, v18, "[SUManagerServer getDDMUpdateDescriptorWithHandler:]");

    handlerCopy = &__block_literal_global_411;
  }

  v19 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUManagerServer_getDDMUpdateDescriptorWithHandler___block_invoke_2;
  block[3] = &unk_279CAA8D0;
  block[4] = self;
  v24 = handlerCopy;
  v20 = handlerCopy;
  dispatch_async(v19, block);
}

void __53__SUManagerServer_getDDMUpdateDescriptorWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForCurrentConnection];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SUManagerServer_getDDMUpdateDescriptorWithHandler___block_invoke_3;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v3;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SUManagerServer_getDDMUpdateDescriptorWithHandler___block_invoke_5;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 40);
  [v3 handleClientRequest:"-[SUManagerServer getDDMUpdateDescriptorWithHandler:]_block_invoke_2" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __53__SUManagerServer_getDDMUpdateDescriptorWithHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ddmManager];
  if (v2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__SUManagerServer_getDDMUpdateDescriptorWithHandler___block_invoke_4;
    v13[3] = &unk_279CAB4C8;
    v14 = *(a1 + 40);
    [v2 getDescriptorWithCallback:v13];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get a valid ddm manager..."];
    SULogInfo(@"[DDM] %s: %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer getDDMUpdateDescriptorWithHandler:]_block_invoke_3");

    v10 = *(a1 + 40);
    v11 = [SUUtility errorWithCode:-1];
    (*(v10 + 16))(v10, 0, v11);
  }
}

- (void)getAllDeclarationsWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = +[SUUtility mainWorkQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SUManagerServer_getAllDeclarationsWithHandler___block_invoke;
    v6[3] = &unk_279CAA8D0;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(v5, v6);
  }
}

void __49__SUManagerServer_getAllDeclarationsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForCurrentConnection];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SUManagerServer_getAllDeclarationsWithHandler___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v3;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SUManagerServer_getAllDeclarationsWithHandler___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 40);
  [v3 handleClientRequest:"-[SUManagerServer getAllDeclarationsWithHandler:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __49__SUManagerServer_getAllDeclarationsWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ddmManager];
  v22 = v2;
  if (v2)
  {
    v3 = [v2 allDeclarations];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"declarations = %@", v3];
    SULogInfo(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerServer getAllDeclarationsWithHandler:]_block_invoke_2");

    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get a valid ddm manager..."];
    SULogInfo(@"[DDM] %s: %@", v12, v13, v14, v15, v16, v17, v18, "[SUManagerServer getAllDeclarationsWithHandler:]_block_invoke_2");

    v19 = *(a1 + 40);
    v3 = [SUUtility errorWithCode:-1];
    v11 = *(v19 + 16);
  }

  v11();
}

- (void)setDDMGlobalSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SUManagerServer_setDDMGlobalSettings_completion___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = settingsCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = settingsCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __51__SUManagerServer_setDDMGlobalSettings_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SUManagerServer_setDDMGlobalSettings_completion___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SUManagerServer_setDDMGlobalSettings_completion___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer setDDMGlobalSettings:completion:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __51__SUManagerServer_setDDMGlobalSettings_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ddmManager];
  v3 = *(a1 + 40);
  v15 = 0;
  v4 = [v2 setDDMGlobalSettings:v3 outError:&v15];
  v5 = v15;

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"setDDMGlobalSettings - result = %d, error = %@", v4, v5];
  SULogDebug(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUManagerServer setDDMGlobalSettings:completion:]_block_invoke_2");

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v4, v5);
  }
}

uint64_t __51__SUManagerServer_setDDMGlobalSettings_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getDDMGlobalSettingsWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SUManagerServer_getDDMGlobalSettingsWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = _clientForCurrentConnection;
    v17 = handlerCopy;
    v7 = _clientForCurrentConnection;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No reply handler provided"];
    SULogError(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer getDDMGlobalSettingsWithHandler:]");
  }
}

void __51__SUManagerServer_getDDMGlobalSettingsWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SUManagerServer_getDDMGlobalSettingsWithHandler___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SUManagerServer_getDDMGlobalSettingsWithHandler___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer getDDMGlobalSettingsWithHandler:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __51__SUManagerServer_getDDMGlobalSettingsWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ddmManager];
  v13 = 0;
  v3 = [v2 getDDMGlobalSettingsWithError:&v13];
  v4 = v13;

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"getDDMGlobalSettingsWithHandler - globalSettings = %@, error = %@", v3, v4];
  SULogDebug(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUManagerServer getDDMGlobalSettingsWithHandler:]_block_invoke_2");

  (*(*(a1 + 40) + 16))();
}

- (void)getShouldDisableAutoInstallIOSUpdatesToggleWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility fastWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SUManagerServer_getShouldDisableAutoInstallIOSUpdatesToggleWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = _clientForCurrentConnection;
    v17 = handlerCopy;
    v7 = _clientForCurrentConnection;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No reply handler provided"];
    SULogError(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer getShouldDisableAutoInstallIOSUpdatesToggleWithHandler:]");
  }
}

void __74__SUManagerServer_getShouldDisableAutoInstallIOSUpdatesToggleWithHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SUManagerServer_getShouldDisableAutoInstallIOSUpdatesToggleWithHandler___block_invoke_2;
  v7[3] = &unk_279CAAF08;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SUManagerServer_getShouldDisableAutoInstallIOSUpdatesToggleWithHandler___block_invoke_3;
  v5[3] = &unk_279CAB370;
  v6 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer getShouldDisableAutoInstallIOSUpdatesToggleWithHandler:]_block_invoke" client:v2 withRequestCallBack:v7 withErrorCallBack:v5];
}

void __74__SUManagerServer_getShouldDisableAutoInstallIOSUpdatesToggleWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) ddmManager];
  (*(v1 + 16))(v1, [v2 alwaysEnableAutoInstallOSUpdates] != 2, 0);
}

- (void)getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility fastWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SUManagerServer_getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = _clientForCurrentConnection;
    v17 = handlerCopy;
    v7 = _clientForCurrentConnection;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No reply handler provided"];
    SULogError(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler:]");
  }
}

void __75__SUManagerServer_getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SUManagerServer_getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler___block_invoke_2;
  v7[3] = &unk_279CAAF08;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__SUManagerServer_getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler___block_invoke_3;
  v5[3] = &unk_279CAB370;
  v6 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler:]_block_invoke" client:v2 withRequestCallBack:v7 withErrorCallBack:v5];
}

void __75__SUManagerServer_getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) ddmManager];
  (*(v1 + 16))(v1, [v2 alwaysEnableAutoDownload] != 2, 0);
}

- (void)getShouldDisableAutoInstallRSRToggleWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility fastWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SUManagerServer_getShouldDisableAutoInstallRSRToggleWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = _clientForCurrentConnection;
    v17 = handlerCopy;
    v7 = _clientForCurrentConnection;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No reply handler provided"];
    SULogError(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer getShouldDisableAutoInstallRSRToggleWithHandler:]");
  }
}

void __67__SUManagerServer_getShouldDisableAutoInstallRSRToggleWithHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SUManagerServer_getShouldDisableAutoInstallRSRToggleWithHandler___block_invoke_2;
  v7[3] = &unk_279CAAF08;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SUManagerServer_getShouldDisableAutoInstallRSRToggleWithHandler___block_invoke_3;
  v5[3] = &unk_279CAB370;
  v6 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer getShouldDisableAutoInstallRSRToggleWithHandler:]_block_invoke" client:v2 withRequestCallBack:v7 withErrorCallBack:v5];
}

void __67__SUManagerServer_getShouldDisableAutoInstallRSRToggleWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) ddmManager];
  (*(v1 + 16))(v1, [v2 alwaysEnableAutoInstallRapidSecurityResponse] != 2, 0);
}

- (void)isInstallationKeybagRequired:(id)required
{
  requiredCopy = required;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUManagerServer_isInstallationKeybagRequired___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = requiredCopy;
  v7 = requiredCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __48__SUManagerServer_isInstallationKeybagRequired___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SUManagerServer_isInstallationKeybagRequired___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SUManagerServer_isInstallationKeybagRequired___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isInstallationKeybagRequired:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __48__SUManagerServer_isInstallationKeybagRequired___block_invoke_2(uint64_t a1)
{
  v2 = +[SUKeybagInterface sharedInstance];
  v3 = [*(a1 + 32) manager];
  v4 = [v3 download];
  v5 = [v4 descriptor];
  [v2 installationKeybagStateForDescriptor:v5];

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t __48__SUManagerServer_isInstallationKeybagRequired___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isInstallationKeybagRequiredForDescriptor:(id)descriptor result:(id)result
{
  descriptorCopy = descriptor;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SUManagerServer_isInstallationKeybagRequiredForDescriptor_result___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = descriptorCopy;
  v16 = resultCopy;
  v10 = resultCopy;
  v11 = descriptorCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __68__SUManagerServer_isInstallationKeybagRequiredForDescriptor_result___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SUManagerServer_isInstallationKeybagRequiredForDescriptor_result___block_invoke_2;
  v8[3] = &unk_279CAA8F8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SUManagerServer_isInstallationKeybagRequiredForDescriptor_result___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer isInstallationKeybagRequiredForDescriptor:result:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __68__SUManagerServer_isInstallationKeybagRequiredForDescriptor_result___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v8 = v2;
  }

  else
  {
    v3 = [*(a1 + 40) manager];
    v4 = [v3 download];
    v8 = [v4 descriptor];
  }

  v5 = +[SUKeybagInterface sharedInstance];
  v6 = [v5 installationKeybagStateForDescriptor:v8];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6 == 1, 0);
  }
}

uint64_t __68__SUManagerServer_isInstallationKeybagRequiredForDescriptor_result___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_4;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer isUpdateReadyForInstallationWithOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_3;
  v4[3] = &unk_279CAB4F0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 isUpdateReadyForInstallationWithOptions:v3 withResult:v4];
}

uint64_t __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

uint64_t __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)installUpdateWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SUManagerServer_installUpdateWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = optionsCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __55__SUManagerServer_installUpdateWithOptions_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SUManagerServer_installUpdateWithOptions_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUManagerServer_installUpdateWithOptions_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer installUpdateWithOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __55__SUManagerServer_installUpdateWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v15 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(*(a1 + 56) + 16))();
    v2 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = objc_alloc_init(SUInstallOptions);
    v4 = *(a1 + 48);
    if (v4)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * i);
            if (v10)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v10 isEqualToString:@"SUInstallOptionDarkBoot"])
                {
                  [(SUInstallOptions *)v3 setDarkBoot:1];
                }

                else if ([v10 isEqualToString:@"SUInstallOptionRequireUpdate"])
                {
                  [(SUInstallOptions *)v3 setRequired:1];
                }
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }
    }

    v11 = [*(a1 + 40) identifier];

    if (v11)
    {
      v12 = [*(a1 + 40) identifier];
      [(SUInstallOptions *)v3 setClientName:v12];
    }

    v13 = [*(a1 + 32) manager];
    [v13 installUpdateWithInstallOptions:v3 withResult:*(a1 + 56)];

    v14 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __55__SUManagerServer_installUpdateWithOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SUManagerServer_installUpdateWithInstallOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = optionsCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __62__SUManagerServer_installUpdateWithInstallOptions_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SUManagerServer_installUpdateWithInstallOptions_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SUManagerServer_installUpdateWithInstallOptions_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer installUpdateWithInstallOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __62__SUManagerServer_installUpdateWithInstallOptions_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)])
  {
    v4 = [*(a1 + 32) _mdmCommandConflictsWithDDMError];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 40) identifier];
    [v2 setClientName:v3];

    v4 = [*(a1 + 32) manager];
    [v4 installUpdateWithInstallOptions:*(a1 + 48) withResult:*(a1 + 56)];
  }
}

uint64_t __62__SUManagerServer_installUpdateWithInstallOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)userAskedToDeferInstall
{
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v4 = +[SUUtility fastWorkQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SUManagerServer_userAskedToDeferInstall__block_invoke;
  v6[3] = &unk_279CAA7C0;
  v6[4] = self;
  v7 = _clientForCurrentConnection;
  v5 = _clientForCurrentConnection;
  dispatch_async(v4, v6);
}

uint64_t __42__SUManagerServer_userAskedToDeferInstall__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SUManagerServer_userAskedToDeferInstall__block_invoke_2;
  v4[3] = &unk_279CAA708;
  v4[4] = v2;
  return [v2 handleClientRequest:"-[SUManagerServer userAskedToDeferInstall]_block_invoke" client:v1 withRequestCallBack:v4 withErrorCallBack:0];
}

void __42__SUManagerServer_userAskedToDeferInstall__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerServer_userAskedToDeferInstall__block_invoke_3;
  block[3] = &unk_279CAA708;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __42__SUManagerServer_userAskedToDeferInstall__block_invoke_4(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v2, v3, v4, v5, v6, v7, v8, "[SUManagerServer userAskedToDeferInstall]_block_invoke_4");
  if ([v10 isMessagable])
  {
    v9 = [v10 proxy];
    [v9 userWantsToDeferInstall];
  }
}

- (void)slaVersion:(id)version
{
  versionCopy = version;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SUManagerServer_slaVersion___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = versionCopy;
  v7 = versionCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __30__SUManagerServer_slaVersion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SUManagerServer_slaVersion___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SUManagerServer_slaVersion___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer slaVersion:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __30__SUManagerServer_slaVersion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [v2 slaVersion];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [SUUtility errorWithCode:50 originalError:0];
  }

  v6 = v4;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v6);
  }
}

uint64_t __30__SUManagerServer_slaVersion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)softwareUpdatePathRestriction:(id)restriction
{
  restrictionCopy = restriction;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerServer_softwareUpdatePathRestriction___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = restrictionCopy;
  v7 = restrictionCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __49__SUManagerServer_softwareUpdatePathRestriction___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUManagerServer_softwareUpdatePathRestriction___block_invoke_2;
  v7[3] = &unk_279CAAF08;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SUManagerServer_softwareUpdatePathRestriction___block_invoke_3;
  v5[3] = &unk_279CAB370;
  v6 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer softwareUpdatePathRestriction:]_block_invoke" client:v2 withRequestCallBack:v7 withErrorCallBack:v5];
}

uint64_t __49__SUManagerServer_softwareUpdatePathRestriction___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) manager];
    [v2 softwareUpdatePathRestriction];

    v3 = *(*(v1 + 40) + 16);

    return v3();
  }

  return result;
}

uint64_t __49__SUManagerServer_softwareUpdatePathRestriction___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isDelayingUpdates:(id)updates
{
  updatesCopy = updates;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUManagerServer_isDelayingUpdates___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = updatesCopy;
  v7 = updatesCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __37__SUManagerServer_isDelayingUpdates___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUManagerServer_isDelayingUpdates___block_invoke_2;
  v7[3] = &unk_279CAAF08;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SUManagerServer_isDelayingUpdates___block_invoke_3;
  v5[3] = &unk_279CAB370;
  v6 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer isDelayingUpdates:]_block_invoke" client:v2 withRequestCallBack:v7 withErrorCallBack:v5];
}

uint64_t __37__SUManagerServer_isDelayingUpdates___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) manager];
    [v2 isDelayingUpdates];

    v3 = *(*(v1 + 40) + 16);

    return v3();
  }

  return result;
}

uint64_t __37__SUManagerServer_isDelayingUpdates___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)delayEndDate:(id)date
{
  dateCopy = date;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SUManagerServer_delayEndDate___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = dateCopy;
  v7 = dateCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __32__SUManagerServer_delayEndDate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SUManagerServer_delayEndDate___block_invoke_2;
  v6[3] = &unk_279CAB220;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SUManagerServer_delayEndDate___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer delayEndDate:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __32__SUManagerServer_delayEndDate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [SUUtility errorWithCode:61];
    (*(v1 + 16))(v1, 0, v2);
  }
}

uint64_t __32__SUManagerServer_delayEndDate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)splatRollbackAllowed:(id)allowed
{
  allowedCopy = allowed;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUManagerServer_splatRollbackAllowed___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = allowedCopy;
  v7 = allowedCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __40__SUManagerServer_splatRollbackAllowed___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SUManagerServer_splatRollbackAllowed___block_invoke_2;
  v7[3] = &unk_279CAAF08;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SUManagerServer_splatRollbackAllowed___block_invoke_3;
  v5[3] = &unk_279CAB370;
  v6 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer splatRollbackAllowed:]_block_invoke" client:v2 withRequestCallBack:v7 withErrorCallBack:v5];
}

void __40__SUManagerServer_splatRollbackAllowed___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) manager];
    v4 = 0;
    [v2 splatRollbackAllowed:&v4];
    v3 = v4;

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __40__SUManagerServer_splatRollbackAllowed___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isSplatOnlyUpdateRollbackSuggested:(id)suggested
{
  suggestedCopy = suggested;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUManagerServer_isSplatOnlyUpdateRollbackSuggested___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = suggestedCopy;
  v7 = suggestedCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __54__SUManagerServer_isSplatOnlyUpdateRollbackSuggested___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SUManagerServer_isSplatOnlyUpdateRollbackSuggested___block_invoke_2;
  v7[3] = &unk_279CAAF08;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SUManagerServer_isSplatOnlyUpdateRollbackSuggested___block_invoke_3;
  v5[3] = &unk_279CAB370;
  v6 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer isSplatOnlyUpdateRollbackSuggested:]_block_invoke" client:v2 withRequestCallBack:v7 withErrorCallBack:v5];
}

uint64_t __54__SUManagerServer_isSplatOnlyUpdateRollbackSuggested___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) manager];
    [v2 isSplatOnlyUpdateRollbackSuggested];

    v3 = *(*(v1 + 40) + 16);

    return v3();
  }

  return result;
}

uint64_t __54__SUManagerServer_isSplatOnlyUpdateRollbackSuggested___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerServer_setMandatorySoftwareUpdateDictionary___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = dictionaryCopy;
  v7 = dictionaryCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __56__SUManagerServer_setMandatorySoftwareUpdateDictionary___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SUManagerServer_setMandatorySoftwareUpdateDictionary___block_invoke_2;
  v3[3] = &unk_279CAA7C0;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 handleClientRequest:"-[SUManagerServer setMandatorySoftwareUpdateDictionary:]_block_invoke" client:v2 withRequestCallBack:v3 withErrorCallBack:0];
}

void __56__SUManagerServer_setMandatorySoftwareUpdateDictionary___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 setMandatoryUpdateDictionary:*(a1 + 40)];
}

- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerServer_getMandatorySoftwareUpdateDictionary___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = dictionaryCopy;
  v7 = dictionaryCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __56__SUManagerServer_getMandatorySoftwareUpdateDictionary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUManagerServer_getMandatorySoftwareUpdateDictionary___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUManagerServer_getMandatorySoftwareUpdateDictionary___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer getMandatorySoftwareUpdateDictionary:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __56__SUManagerServer_getMandatorySoftwareUpdateDictionary___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v5 = [v2 mandatoryUpdateDictionary];

  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [SUUtility errorWithCode:62];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5, v3);
  }
}

uint64_t __56__SUManagerServer_getMandatorySoftwareUpdateDictionary___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchInstallHistory:(id)history
{
  historyCopy = history;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerServer_fetchInstallHistory___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = historyCopy;
  v7 = historyCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __39__SUManagerServer_fetchInstallHistory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SUManagerServer_fetchInstallHistory___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SUManagerServer_fetchInstallHistory___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer fetchInstallHistory:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __39__SUManagerServer_fetchInstallHistory___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) historyTracker];
  v3 = [v2 fetchInstallHistory];

  SULogInfo(@"server fetch history: %@", v4, v5, v6, v7, v8, v9, v10, v3);
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"No install history found";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.SUSHistory" code:1 userInfo:v12];

    (*(*(a1 + 40) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)currentAutoInstallOperationForecast:(id)forecast
{
  forecastCopy = forecast;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerServer_currentAutoInstallOperationForecast___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = forecastCopy;
  v7 = forecastCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __55__SUManagerServer_currentAutoInstallOperationForecast___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUManagerServer_currentAutoInstallOperationForecast___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SUManagerServer_currentAutoInstallOperationForecast___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer currentAutoInstallOperationForecast:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __55__SUManagerServer_currentAutoInstallOperationForecast___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) autoInstallManager];
  v6 = 0;
  v7 = 0;
  [v2 copyAutoInstallOperationForecast:&v7 error:&v6];
  v3 = v7;
  v4 = v6;

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

uint64_t __55__SUManagerServer_currentAutoInstallOperationForecast___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)currentAutoInstallOperation:(BOOL)operation withResult:(id)result
{
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v8 = +[SUUtility mainWorkQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SUManagerServer_currentAutoInstallOperation_withResult___block_invoke;
  v11[3] = &unk_279CAB410;
  v11[4] = self;
  v12 = _clientForCurrentConnection;
  operationCopy = operation;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = _clientForCurrentConnection;
  dispatch_async(v8, v11);
}

void __58__SUManagerServer_currentAutoInstallOperation_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SUManagerServer_currentAutoInstallOperation_withResult___block_invoke_2;
  v6[3] = &unk_279CAB3E8;
  v6[4] = v3;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SUManagerServer_currentAutoInstallOperation_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v3 handleClientRequest:"-[SUManagerServer currentAutoInstallOperation:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __58__SUManagerServer_currentAutoInstallOperation_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) autoInstallManager];
  v3 = *(a1 + 48);
  v7 = 0;
  v4 = [v2 currentAutoInstallOperationCreatingIfNecessary:v3 error:&v7];
  v5 = v7;

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

uint64_t __58__SUManagerServer_currentAutoInstallOperation_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)cancelAutoInstallOperation:(id)operation withResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SUManagerServer_cancelAutoInstallOperation_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = operationCopy;
  v16 = resultCopy;
  v10 = operationCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __57__SUManagerServer_cancelAutoInstallOperation_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SUManagerServer_cancelAutoInstallOperation_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SUManagerServer_cancelAutoInstallOperation_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer cancelAutoInstallOperation:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __57__SUManagerServer_cancelAutoInstallOperation_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v7 = [v3 _mdmCommandConflictsWithDDMError];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = [v3 autoInstallManager];
    [v4 cancelAutoInstallOperation:*(a1 + 48)];

    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

uint64_t __57__SUManagerServer_cancelAutoInstallOperation_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)consentToAutoInstallOperation:(id)operation withResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SUManagerServer_consentToAutoInstallOperation_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = operationCopy;
  v16 = resultCopy;
  v10 = operationCopy;
  v11 = resultCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __60__SUManagerServer_consentToAutoInstallOperation_withResult___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SUManagerServer_consentToAutoInstallOperation_withResult___block_invoke_2;
  v8[3] = &unk_279CAB3C0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v9 = v5;
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SUManagerServer_consentToAutoInstallOperation_withResult___block_invoke_3;
  v6[3] = &unk_279CAB370;
  v7 = *(a1 + 56);
  [v5 handleClientRequest:"-[SUManagerServer consentToAutoInstallOperation:withResult:]_block_invoke" client:v2 withRequestCallBack:v8 withErrorCallBack:v6];
}

void __60__SUManagerServer_consentToAutoInstallOperation_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mdmCommandConflictsWithDDM:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v7 = [v3 _mdmCommandConflictsWithDDMError];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = [v3 autoInstallManager];
    [v4 consentToAutoInstallOperation:*(a1 + 48)];

    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

uint64_t __60__SUManagerServer_consentToAutoInstallOperation_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)currentPasscodePolicy:(id)policy
{
  policyCopy = policy;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUManagerServer_currentPasscodePolicy___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = policyCopy;
  v7 = policyCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __41__SUManagerServer_currentPasscodePolicy___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SUManagerServer_currentPasscodePolicy___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SUManagerServer_currentPasscodePolicy___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer currentPasscodePolicy:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __41__SUManagerServer_currentPasscodePolicy___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) autoInstallManager];
  v3 = [v2 passcodePolicy];
  [v3 currentPolicyType];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __41__SUManagerServer_currentPasscodePolicy___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isAutoUpdateEnabled:(id)enabled
{
  enabledCopy = enabled;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerServer_isAutoUpdateEnabled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = enabledCopy;
  v7 = enabledCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __39__SUManagerServer_isAutoUpdateEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SUManagerServer_isAutoUpdateEnabled___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SUManagerServer_isAutoUpdateEnabled___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isAutoUpdateEnabled:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __39__SUManagerServer_isAutoUpdateEnabled___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) autoInstallManager];
  [v2 isAutoUpdateEnabled];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __39__SUManagerServer_isAutoUpdateEnabled___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isAutoUpdateScheduled:(id)scheduled
{
  scheduledCopy = scheduled;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUManagerServer_isAutoUpdateScheduled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = scheduledCopy;
  v7 = scheduledCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __41__SUManagerServer_isAutoUpdateScheduled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SUManagerServer_isAutoUpdateScheduled___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SUManagerServer_isAutoUpdateScheduled___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isAutoUpdateScheduled:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __41__SUManagerServer_isAutoUpdateScheduled___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 isInstallTonightScheduled];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __41__SUManagerServer_isAutoUpdateScheduled___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)enableAutomaticUpdateV2:(BOOL)v2
{
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_enableAutomaticUpdateV2___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v9 = _clientForCurrentConnection;
  v2Copy = v2;
  v7 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

uint64_t __43__SUManagerServer_enableAutomaticUpdateV2___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SUManagerServer_enableAutomaticUpdateV2___block_invoke_2;
  v4[3] = &unk_279CAAD00;
  v5 = *(a1 + 48);
  v4[4] = v2;
  return [v2 handleClientRequest:"-[SUManagerServer enableAutomaticUpdateV2:]_block_invoke" client:v1 withRequestCallBack:v4 withErrorCallBack:0];
}

void __43__SUManagerServer_enableAutomaticUpdateV2___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogDebug(@"AutomaticUpdateV2 enabled : %d", a2, a3, a4, a5, a6, a7, a8, *(a1 + 40));
  v9 = +[SUPreferences sharedInstance];
  [v9 enableAutomaticUpdateV2:*(a1 + 40)];

  v10 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_enableAutomaticUpdateV2___block_invoke_3;
  block[3] = &unk_279CAAD00;
  v12 = *(a1 + 40);
  block[4] = *(a1 + 32);
  dispatch_async(v10, block);
}

void __43__SUManagerServer_enableAutomaticUpdateV2___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(*(a1 + 32) + 8);
    v13 = 0;
    v2 = [v1 currentAutoInstallOperationCreatingIfNecessary:1 error:&v13];
    v3 = v13;
    v11 = v3;
    if (v2)
    {
      SULogInfo(@"Scheduled auto install operation: %@", v4, v5, v6, v7, v8, v9, v10, v2);
    }

    else if (v3)
    {
      SULogInfo(@"Error scheduling auto install operation: %@", v4, v5, v6, v7, v8, v9, v10, v3);
    }
  }

  else
  {
    v12 = +[SUScheduler sharedInstance];
    [v12 cancelAllAutoInstallTasks];
  }
}

- (void)isAutomaticUpdateV2Enabled:(id)enabled
{
  enabledCopy = enabled;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_isAutomaticUpdateV2Enabled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = enabledCopy;
  v7 = enabledCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __46__SUManagerServer_isAutomaticUpdateV2Enabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SUManagerServer_isAutomaticUpdateV2Enabled___block_invoke_2;
  v6[3] = &unk_279CAB220;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SUManagerServer_isAutomaticUpdateV2Enabled___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isAutomaticUpdateV2Enabled:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __46__SUManagerServer_isAutomaticUpdateV2Enabled___block_invoke_2(uint64_t a1)
{
  v2 = +[SUPreferences sharedInstance];
  [v2 isAutomaticUpdateV2Enabled];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __46__SUManagerServer_isAutomaticUpdateV2Enabled___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)enableAutomaticDownload:(BOOL)download
{
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_enableAutomaticDownload___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v9 = _clientForCurrentConnection;
  downloadCopy = download;
  v7 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

uint64_t __43__SUManagerServer_enableAutomaticDownload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SUManagerServer_enableAutomaticDownload___block_invoke_2;
  v4[3] = &unk_279CAAD00;
  v5 = *(a1 + 48);
  v4[4] = v2;
  return [v2 handleClientRequest:"-[SUManagerServer enableAutomaticDownload:]_block_invoke" client:v1 withRequestCallBack:v4 withErrorCallBack:0];
}

void __43__SUManagerServer_enableAutomaticDownload___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  SULogDebug(@"Setting automatic download enabled : %@", a2, a3, a4, a5, a6, a7, a8, v9);
  v10 = +[SUPreferences sharedInstance];
  [v10 enableAutomaticDownload:*(a1 + 40)];

  v11 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_enableAutomaticDownload___block_invoke_3;
  block[3] = &unk_279CAAD00;
  v13 = *(a1 + 40);
  block[4] = *(a1 + 32);
  dispatch_async(v11, block);
}

void __43__SUManagerServer_enableAutomaticDownload___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(*(a1 + 32) + 32);

    [v2 autoScanAndDownloadIfAvailable:0];
  }

  else
  {
    v3 = +[SUScheduler sharedInstance];
    [v3 cancelAllAutoDownloadTasks];
  }
}

- (void)isAutomaticDownloadEnabled:(id)enabled
{
  enabledCopy = enabled;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_isAutomaticDownloadEnabled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = enabledCopy;
  v7 = enabledCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __46__SUManagerServer_isAutomaticDownloadEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SUManagerServer_isAutomaticDownloadEnabled___block_invoke_2;
  v6[3] = &unk_279CAB220;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SUManagerServer_isAutomaticDownloadEnabled___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isAutomaticDownloadEnabled:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __46__SUManagerServer_isAutomaticDownloadEnabled___block_invoke_2(uint64_t a1)
{
  v2 = +[SUPreferences sharedInstance];
  [v2 isAutomaticDownloadEnabled];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __46__SUManagerServer_isAutomaticDownloadEnabled___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)registerCSInstallPredicatesOnDate:(id)date
{
  dateCopy = date;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUManagerServer_registerCSInstallPredicatesOnDate___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = dateCopy;
  v7 = dateCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __53__SUManagerServer_registerCSInstallPredicatesOnDate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__SUManagerServer_registerCSInstallPredicatesOnDate___block_invoke_2;
  v3[3] = &unk_279CAA708;
  v4 = *(a1 + 48);
  [v1 handleClientRequest:"-[SUManagerServer registerCSInstallPredicatesOnDate:]_block_invoke" client:v2 withRequestCallBack:v3 withErrorCallBack:0];
}

void __53__SUManagerServer_registerCSInstallPredicatesOnDate___block_invoke_2(uint64_t a1)
{
  v2 = +[SUScheduler sharedInstance];
  [v2 cancelInstallAlertRegistration];

  v3 = +[SUScheduler sharedInstance];
  [v3 scheduleInstallAlertRegistration:*(a1 + 32)];
}

- (void)presentAutoUpdateBanner:(id)banner
{
  bannerCopy = banner;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_presentAutoUpdateBanner___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = bannerCopy;
  v7 = bannerCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __43__SUManagerServer_presentAutoUpdateBanner___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SUManagerServer_presentAutoUpdateBanner___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SUManagerServer_presentAutoUpdateBanner___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer presentAutoUpdateBanner:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __43__SUManagerServer_presentAutoUpdateBanner___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 presentAutoUpdateBanner:*(a1 + 40)];
}

uint64_t __43__SUManagerServer_presentAutoUpdateBanner___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)eligibleRollbackWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__SUManagerServer_eligibleRollbackWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __58__SUManagerServer_eligibleRollbackWithOptions_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SUManagerServer_eligibleRollbackWithOptions_withResult___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SUManagerServer_eligibleRollbackWithOptions_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer eligibleRollbackWithOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __58__SUManagerServer_eligibleRollbackWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v5 = [v2 eligibleRollbackWithOptions:*(a1 + 40)];

  v3 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:v5];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

uint64_t __58__SUManagerServer_eligibleRollbackWithOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_rollbackUpdateWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = optionsCopy;
  v16 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __56__SUManagerServer_rollbackUpdateWithOptions_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUManagerServer_rollbackUpdateWithOptions_withResult___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUManagerServer_rollbackUpdateWithOptions_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer rollbackUpdateWithOptions:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __56__SUManagerServer_rollbackUpdateWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 rollbackUpdateWithOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

uint64_t __56__SUManagerServer_rollbackUpdateWithOptions_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (void)previousRollback:(id)rollback withResult:(id)result
{
  rollbackCopy = rollback;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SUManagerServer_previousRollback_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = rollbackCopy;
  v16 = resultCopy;
  v10 = resultCopy;
  v11 = rollbackCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __47__SUManagerServer_previousRollback_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SUManagerServer_previousRollback_withResult___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SUManagerServer_previousRollback_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer previousRollback:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __47__SUManagerServer_previousRollback_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v5 = [v2 previousRollbackWithOptions:*(a1 + 40)];

  v3 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:v5];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

uint64_t __47__SUManagerServer_previousRollback_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)isRollingBack:(id)back
{
  backCopy = back;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_isRollingBack___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = backCopy;
  v7 = backCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __33__SUManagerServer_isRollingBack___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SUManagerServer_isRollingBack___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SUManagerServer_isRollingBack___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer isRollingBack:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __33__SUManagerServer_isRollingBack___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [v2 isRollingBack];

  v4 = [*(a1 + 32) manager];
  v5 = [v4 eligibleRollbackWithOptions:0];

  if (v5)
  {
    v6 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:v5];
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, v8, 0);
  }
}

uint64_t __33__SUManagerServer_isRollingBack___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (void)scheduleRollbackRebootForLater:(id)later
{
  laterCopy = later;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerServer_scheduleRollbackRebootForLater___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = laterCopy;
  v7 = laterCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __50__SUManagerServer_scheduleRollbackRebootForLater___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SUManagerServer_scheduleRollbackRebootForLater___block_invoke_2;
  v6[3] = &unk_279CAB220;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SUManagerServer_scheduleRollbackRebootForLater___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer scheduleRollbackRebootForLater:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __50__SUManagerServer_scheduleRollbackRebootForLater___block_invoke_2(uint64_t a1)
{
  v2 = +[SUScheduler sharedInstance];
  v3 = +[SUAutoInstallManager rollbackRebootLaterTime];
  [v2 scheduleRollbackReboot:v3];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __50__SUManagerServer_scheduleRollbackRebootForLater___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setLastRollbackDescriptor:(id)descriptor withResult:(id)result
{
  descriptorCopy = descriptor;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_setLastRollbackDescriptor_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = descriptorCopy;
  v16 = resultCopy;
  v10 = resultCopy;
  v11 = descriptorCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __56__SUManagerServer_setLastRollbackDescriptor_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUManagerServer_setLastRollbackDescriptor_withResult___block_invoke_2;
  v6[3] = &unk_279CAA8D0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUManagerServer_setLastRollbackDescriptor_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer setLastRollbackDescriptor:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __56__SUManagerServer_setLastRollbackDescriptor_withResult___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"Settings SULastRollbackDescriptor: %@", a2, a3, a4, a5, a6, a7, a8, *(a1 + 32));
  v9 = +[SUState currentState];
  [v9 setLastRollbackDescriptor:*(a1 + 32)];

  v10 = +[SUState currentState];
  [v10 save];

  result = *(a1 + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

uint64_t __56__SUManagerServer_setLastRollbackDescriptor_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)securityResponseRollbackSuggested:(id)suggested withResult:(id)result
{
  suggestedCopy = suggested;
  resultCopy = result;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SUManagerServer_securityResponseRollbackSuggested_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = _clientForCurrentConnection;
  v15 = suggestedCopy;
  v16 = resultCopy;
  v10 = resultCopy;
  v11 = suggestedCopy;
  v12 = _clientForCurrentConnection;
  dispatch_async(v9, v13);
}

void __64__SUManagerServer_securityResponseRollbackSuggested_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SUManagerServer_securityResponseRollbackSuggested_withResult___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SUManagerServer_securityResponseRollbackSuggested_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer securityResponseRollbackSuggested:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __64__SUManagerServer_securityResponseRollbackSuggested_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 securityResponseRollbackSuggested:*(a1 + 40) withResult:*(a1 + 48)];
}

uint64_t __64__SUManagerServer_securityResponseRollbackSuggested_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)createInstallationKeybag:(id)keybag withResult:(id)result
{
  keybagCopy = keybag;
  resultCopy = result;
  SULogInfo(@"%s was called by a client", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer createInstallationKeybag:withResult:]");
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v16 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerServer_createInstallationKeybag_withResult___block_invoke;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v21 = _clientForCurrentConnection;
  v22 = keybagCopy;
  v23 = resultCopy;
  v17 = resultCopy;
  v18 = keybagCopy;
  v19 = _clientForCurrentConnection;
  dispatch_async(v16, block);
}

void __55__SUManagerServer_createInstallationKeybag_withResult___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUManagerServer_createInstallationKeybag_withResult___block_invoke_2;
  v6[3] = &unk_279CAA8F8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SUManagerServer_createInstallationKeybag_withResult___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 56);
  [v3 handleClientRequest:"-[SUManagerServer createInstallationKeybag:withResult:]_block_invoke" client:v2 withRequestCallBack:v6 withErrorCallBack:v4];
}

void __55__SUManagerServer_createInstallationKeybag_withResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 createInstallationKeybag:*(a1 + 40) withResult:*(a1 + 48)];
}

uint64_t __55__SUManagerServer_createInstallationKeybag_withResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)destroyInstallationKeybag
{
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v4 = +[SUUtility mainWorkQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SUManagerServer_destroyInstallationKeybag__block_invoke;
  v6[3] = &unk_279CAA7C0;
  v6[4] = self;
  v7 = _clientForCurrentConnection;
  v5 = _clientForCurrentConnection;
  dispatch_async(v4, v6);
}

uint64_t __44__SUManagerServer_destroyInstallationKeybag__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SUManagerServer_destroyInstallationKeybag__block_invoke_2;
  v4[3] = &unk_279CAA708;
  v4[4] = v2;
  return [v2 handleClientRequest:"-[SUManagerServer destroyInstallationKeybag]_block_invoke" client:v1 withRequestCallBack:v4 withErrorCallBack:0];
}

void __44__SUManagerServer_destroyInstallationKeybag__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) manager];
  [v1 destroyInstallationKeybag];
}

- (void)installServerConfiguration
{
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v4 = +[SUUtility mainWorkQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SUManagerServer_installServerConfiguration__block_invoke;
  v6[3] = &unk_279CAA7C0;
  v6[4] = self;
  v7 = _clientForCurrentConnection;
  v5 = _clientForCurrentConnection;
  dispatch_async(v4, v6);
}

void __45__SUManagerServer_installServerConfiguration__block_invoke_2()
{
  v0 = [MEMORY[0x277D64168] sharedServerSettings];
  [v0 installServerSettings];
}

- (void)setExclusiveControl:(BOOL)control
{
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerServer_setExclusiveControl___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v9 = _clientForCurrentConnection;
  controlCopy = control;
  v7 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

uint64_t __39__SUManagerServer_setExclusiveControl___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SUManagerServer_setExclusiveControl___block_invoke_2;
  v4[3] = &unk_279CAAD00;
  v5 = *(a1 + 48);
  v4[4] = v2;
  return [v2 handleClientRequest:"-[SUManagerServer setExclusiveControl:]_block_invoke" client:v1 withRequestCallBack:v4 withErrorCallBack:0];
}

uint64_t __39__SUManagerServer_setExclusiveControl___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 goUnderExclusiveControl];
  }

  else
  {
    return [v2 exitExclusiveControl];
  }
}

- (void)writeKeepAliveFile:(id)file
{
  fileCopy = file;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUManagerServer_writeKeepAliveFile___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = fileCopy;
  v7 = fileCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __38__SUManagerServer_writeKeepAliveFile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SUManagerServer_writeKeepAliveFile___block_invoke_2;
  v6[3] = &unk_279CAB220;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SUManagerServer_writeKeepAliveFile___block_invoke_3;
  v4[3] = &unk_279CAB370;
  v5 = *(a1 + 48);
  [v2 handleClientRequest:"-[SUManagerServer writeKeepAliveFile:]_block_invoke" client:v3 withRequestCallBack:v6 withErrorCallBack:v4];
}

uint64_t __38__SUManagerServer_writeKeepAliveFile___block_invoke_2(uint64_t a1)
{
  +[SUUtility writeKeepAliveFile];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __38__SUManagerServer_writeKeepAliveFile___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)recordSUAnalyticsEvent:(id)event
{
  eventCopy = event;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_recordSUAnalyticsEvent___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_async(v5, v7);
}

void __42__SUManagerServer_recordSUAnalyticsEvent___block_invoke(uint64_t a1)
{
  v2 = SULogAnalytics();
  SULogInfoForSubsystem(v2, @"Saving event %@\n", v3, v4, v5, v6, v7, v8, *(a1 + 32));

  v9 = [*(a1 + 40) coreAnalyticsManager];
  [v9 setEvent:*(a1 + 32)];
}

- (void)submitSUAnalyticsEvent:(id)event
{
  eventCopy = event;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_submitSUAnalyticsEvent___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_async(v5, v7);
}

void __42__SUManagerServer_submitSUAnalyticsEvent___block_invoke(uint64_t a1)
{
  v2 = SULogAnalytics();
  SULogInfoForSubsystem(v2, @"Saving event %@\n", v3, v4, v5, v6, v7, v8, *(a1 + 32));

  v9 = [*(a1 + 40) coreAnalyticsManager];
  [v9 setEvent:*(a1 + 32)];

  v10 = SULogAnalytics();
  v11 = [*(a1 + 32) eventName];
  SULogInfoForSubsystem(v10, @"Submitting event %@\n", v12, v13, v14, v15, v16, v17, v11);

  v18 = [*(a1 + 40) coreAnalyticsManager];
  [v18 submitEvent:*(a1 + 32)];
}

- (void)submitAllSUAnalyticsEvents
{
  v3 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUManagerServer_submitAllSUAnalyticsEvents__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v3, block);
}

void __45__SUManagerServer_submitAllSUAnalyticsEvents__block_invoke(uint64_t a1)
{
  v2 = SULogAnalytics();
  SULogInfoForSubsystem(v2, @"Submitting all CoreAnalytics events\n", v3, v4, v5, v6, v7, v8, v9);

  v10 = [*(a1 + 32) coreAnalyticsManager];
  [v10 submitAllEvents];
}

- (void)submitSUAnalyticsEventsWithName:(id)name
{
  nameCopy = name;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUManagerServer_submitSUAnalyticsEventsWithName___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = nameCopy;
  selfCopy = self;
  v6 = nameCopy;
  dispatch_async(v5, v7);
}

void __51__SUManagerServer_submitSUAnalyticsEventsWithName___block_invoke(uint64_t a1)
{
  v2 = SULogAnalytics();
  SULogInfoForSubsystem(v2, @"Submitting all CoreAnalytics events matching name %@\n", v3, v4, v5, v6, v7, v8, *(a1 + 32));

  v9 = [*(a1 + 40) coreAnalyticsManager];
  [v9 submitEventsWithName:*(a1 + 32)];
}

- (void)rvGetCurrentNeRDInfoWithReply:(id)reply
{
  replyCopy = reply;
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerServer_rvGetCurrentNeRDInfoWithReply___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = _clientForCurrentConnection;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = _clientForCurrentConnection;
  dispatch_async(v6, block);
}

void __49__SUManagerServer_rvGetCurrentNeRDInfoWithReply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__SUManagerServer_rvGetCurrentNeRDInfoWithReply___block_invoke_2;
  v3[3] = &unk_279CAB220;
  v4 = *(a1 + 48);
  [v1 handleClientRequest:"-[SUManagerServer rvGetCurrentNeRDInfoWithReply:]_block_invoke" client:v2 withRequestCallBack:v3 withErrorCallBack:0];
}

void __49__SUManagerServer_rvGetCurrentNeRDInfoWithReply___block_invoke_2(uint64_t a1)
{
  v2 = RVGetNeRDInfo();
  v3 = [v2 mutableCopy];
  v4 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:@"com.apple.NRD.UpdateBrainService"];
  v47 = 0;
  v5 = [MEMORY[0x277D46F48] handleForPredicate:v4 error:&v47];
  v13 = v47;
  if (!v5)
  {
    SULogError(@"%s [RV] Couldn't detect a running NeRD brain. Error: %@", v6, v7, v8, v9, v10, v11, v12, "[SUManagerServer rvGetCurrentNeRDInfoWithReply:]_block_invoke_2");
    v43 = @"No running brain";
LABEL_7:
    [v3 setObject:v43 forKeyedSubscript:@"NeRDBrainBuild"];
    goto LABEL_10;
  }

  v14 = [v5 bundle];
  v15 = [v14 path];

  if (!v15)
  {
    SULogError(@"%s [RV] Couldn't identify the path to the running brain: %@", v16, v17, v18, v19, v20, v21, v22, "[SUManagerServer rvGetCurrentNeRDInfoWithReply:]_block_invoke_2");
    v43 = @"Unknown";
    goto LABEL_7;
  }

  v23 = [v5 bundle];
  v24 = [v23 path];
  v25 = [v24 stringByAppendingPathComponent:@"version.plist"];

  v26 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v25];
  v34 = v26;
  if (v26)
  {
    v46 = [v26 objectForKeyedSubscript:@"ProductBuildVersion"];
    SULogInfo(@"%s [RV] Loaded version.plist of running brain. Running brain version is: %@", v35, v36, v37, v38, v39, v40, v41, "[SUManagerServer rvGetCurrentNeRDInfoWithReply:]_block_invoke_2");

    v42 = [v34 objectForKeyedSubscript:@"ProductBuildVersion"];
    [v3 setObject:v42 forKeyedSubscript:@"NeRDBrainBuild"];
  }

  else
  {
    SULogError(@"%s [RV] Failed to load version.plist of the running brain from: %@", v27, v28, v29, v30, v31, v32, v33, "[SUManagerServer rvGetCurrentNeRDInfoWithReply:]_block_invoke_2");
  }

LABEL_10:
  v44 = [v3 copy];

  v45 = [v3 copy];
  (*(*(a1 + 32) + 16))();
}

- (void)rvTriggerNeRDUpdate:(id)update
{
  _clientForCurrentConnection = [(SUManagerServer *)self _clientForCurrentConnection];
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUManagerServer_rvTriggerNeRDUpdate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = _clientForCurrentConnection;
  v6 = _clientForCurrentConnection;
  dispatch_async(v5, v7);
}

- (void)_sendLatestStatusForClient:(id)client
{
  clientCopy = client;
  manager = [(SUManagerServer *)self manager];
  download = [manager download];

  if (download)
  {
    proxy = [clientCopy proxy];
    [proxy downloadProgressDidChange:download];
  }
}

- (void)_clientMessagabilityDidChange:(id)change
{
  changeCopy = change;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUManagerServer__clientMessagabilityDidChange___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(clientQueue, v7);
}

uint64_t __49__SUManagerServer__clientMessagabilityDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if (v2)
  {
    v4 = v2;
    if ([v2 isMessagable])
    {
      [*(a1 + 40) _sendLatestStatusForClient:v4];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_evaluateForegroundness
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  clientQueue = self->_clientQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SUManagerServer__evaluateForegroundness__block_invoke;
  v3[3] = &unk_279CAA948;
  v3[4] = self;
  v3[5] = v4;
  dispatch_async(clientQueue, v3);
  _Block_object_dispose(v4, 8);
}

void __42__SUManagerServer__evaluateForegroundness__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SUManagerServer__evaluateForegroundness__block_invoke_2;
  v6[3] = &unk_279CAB538;
  v6[4] = *(a1 + 40);
  [v2 runOnClientsUntilStop:v6];
  v3 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerServer__evaluateForegroundness__block_invoke_3;
  block[3] = &unk_279CAA948;
  v5 = *(a1 + 32);
  dispatch_async(v3, block);
}

uint64_t __42__SUManagerServer__evaluateForegroundness__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isForeground];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __42__SUManagerServer__evaluateForegroundness__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 setForeground:*(*(*(a1 + 40) + 8) + 24)];
}

- (void)_clientForegroundnessDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerServer__clientForegroundnessDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __50__SUManagerServer__clientForegroundnessDidChange___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__evaluateForegroundness object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__evaluateForegroundness withObject:0 afterDelay:0.2];
}

- (id)clients
{
  v2 = [(NSMutableArray *)self->_clients copy];

  return v2;
}

- (void)goUnderExclusiveControl
{
  mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
  isBootedOSSecureInternal = [mEMORY[0x277D64420] isBootedOSSecureInternal];

  if (isBootedOSSecureInternal)
  {
    SULogInfo(@"%s going under exclusive control", v5, v6, v7, v8, v9, v10, v11, "[SUManagerServer goUnderExclusiveControl]");
    [(SUManagerServer *)self setUnderExclusiveControl:1];
    v12 = +[SUState currentState];
    [v12 setUnderExclusiveControl:1];

    v13 = +[SUState currentState];
    [v13 save];
  }

  else
  {
    SULogInfo(@"%s tried to go under exclusive control while in non internal build", v5, v6, v7, v8, v9, v10, v11, "[SUManagerServer goUnderExclusiveControl]");
  }
}

- (void)exitExclusiveControl
{
  SULogInfo(@"%s exiting exclusive control", a2, v2, v3, v4, v5, v6, v7, "[SUManagerServer exitExclusiveControl]");
  [(SUManagerServer *)self setUnderExclusiveControl:0];
  v9 = +[SUState currentState];
  [v9 setUnderExclusiveControl:0];

  v10 = +[SUState currentState];
  [v10 save];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SUManagerServer_addClient___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(clientQueue, v7);
}

uint64_t __29__SUManagerServer_addClient___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = [*(a1 + 40) identifier];
  [*(*(a1 + 32) + 48) count];
  SULogInfo(@"Added client: %@, count: %lu", v3, v4, v5, v6, v7, v8, v9, v2);

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);

  return [v10 _sendLatestStatusForClient:v11];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  [clientCopy invalidate];
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SUManagerServer_removeClient___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(clientQueue, v7);
}

uint64_t __32__SUManagerServer_removeClient___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v2 = [*(a1 + 40) identifier];
  [*(*(a1 + 32) + 48) count];
  SULogInfo(@"Removed client: %@, count: %lu", v3, v4, v5, v6, v7, v8, v9, v2);

  v10 = *(a1 + 32);

  return [v10 _evaluateForegroundness];
}

- (void)scanRequestDidStartForOptions:(id)options
{
  optionsCopy = options;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUManagerServer_scanRequestDidStartForOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(clientQueue, v7);
}

void __49__SUManagerServer_scanRequestDidStartForOptions___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__SUManagerServer_scanRequestDidStartForOptions___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __49__SUManagerServer_scanRequestDidStartForOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer scanRequestDidStartForOptions:]_block_invoke_2");
  if ([v15 isMessagable])
  {
    v10 = [v15 identifier];
    if (v10)
    {
      v11 = v10;
      v12 = [*(a1 + 32) clientName];

      if (!v12)
      {
        v13 = [v15 identifier];
        [*(a1 + 32) setClientName:v13];
      }
    }

    v14 = [v15 proxy];
    [v14 scanRequestDidStartForOptions:*(a1 + 32)];
  }
}

- (void)scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error
{
  optionsCopy = options;
  resultsCopy = results;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SUManagerServer_scanRequestDidFinishForOptions_results_error___block_invoke;
  v15[3] = &unk_279CAB5B0;
  v15[4] = self;
  v16 = optionsCopy;
  v17 = resultsCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = resultsCopy;
  v14 = optionsCopy;
  dispatch_async(clientQueue, v15);
}

void __64__SUManagerServer_scanRequestDidFinishForOptions_results_error___block_invoke(id *a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SUManagerServer_scanRequestDidFinishForOptions_results_error___block_invoke_2;
  v4[3] = &unk_279CAB588;
  v2 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  [v2 runOnClients:v4];
  v3 = [a1[4] ddmManager];
  [v3 scanRequestDidFinishForOptions:a1[5] results:a1[6] error:a1[7]];
}

void __64__SUManagerServer_scanRequestDidFinishForOptions_results_error___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer scanRequestDidFinishForOptions:results:error:]_block_invoke_2");
  if ([v15 isMessagable])
  {
    v10 = [v15 identifier];
    if (v10)
    {
      v11 = v10;
      v12 = [*(a1 + 32) clientName];

      if (!v12)
      {
        v13 = [v15 identifier];
        [*(a1 + 32) setClientName:v13];
      }
    }

    v14 = [v15 proxy];
    [v14 scanRequestDidFinishForOptions:*(a1 + 32) results:*(a1 + 40) error:*(a1 + 48)];
  }
}

- (void)scanDidCompleteForOptions:(id)options results:(id)results error:(id)error
{
  optionsCopy = options;
  resultsCopy = results;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__SUManagerServer_scanDidCompleteForOptions_results_error___block_invoke;
  v15[3] = &unk_279CAB5B0;
  v15[4] = self;
  v16 = optionsCopy;
  v17 = resultsCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = resultsCopy;
  v14 = optionsCopy;
  dispatch_async(clientQueue, v15);
}

void __59__SUManagerServer_scanDidCompleteForOptions_results_error___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__SUManagerServer_scanDidCompleteForOptions_results_error___block_invoke_2;
  v3[3] = &unk_279CAB588;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 runOnClients:v3];
}

void __59__SUManagerServer_scanDidCompleteForOptions_results_error___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer scanDidCompleteForOptions:results:error:]_block_invoke_2");
  v10 = [v15 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = [*(a1 + 32) clientName];

    if (!v12)
    {
      v13 = [v15 identifier];
      [*(a1 + 32) setClientName:v13];
    }
  }

  v14 = [v15 proxy];
  [v14 scanDidCompleteForOptions:*(a1 + 32) results:*(a1 + 40) error:*(a1 + 48)];
}

- (void)scanRequestDidFinishForOptions:(id)options update:(id)update error:(id)error
{
  optionsCopy = options;
  updateCopy = update;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__SUManagerServer_scanRequestDidFinishForOptions_update_error___block_invoke;
  v15[3] = &unk_279CAB5B0;
  v15[4] = self;
  v16 = optionsCopy;
  v17 = updateCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = updateCopy;
  v14 = optionsCopy;
  dispatch_async(clientQueue, v15);
}

void __63__SUManagerServer_scanRequestDidFinishForOptions_update_error___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SUManagerServer_scanRequestDidFinishForOptions_update_error___block_invoke_2;
  v3[3] = &unk_279CAB588;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 runOnClients:v3];
}

void __63__SUManagerServer_scanRequestDidFinishForOptions_update_error___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer scanRequestDidFinishForOptions:update:error:]_block_invoke_2");
  if ([v15 isMessagable])
  {
    v10 = [v15 identifier];
    if (v10)
    {
      v11 = v10;
      v12 = [*(a1 + 32) clientName];

      if (!v12)
      {
        v13 = [v15 identifier];
        [*(a1 + 32) setClientName:v13];
      }
    }

    v14 = [v15 proxy];
    [v14 scanRequestDidFinishForOptions:*(a1 + 32) update:*(a1 + 40) error:*(a1 + 48)];
  }
}

- (void)scanDidCompleteWithNewUpdateAvailable:(id)available error:(id)error
{
  availableCopy = available;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SUManagerServer_scanDidCompleteWithNewUpdateAvailable_error___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = availableCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = availableCopy;
  dispatch_async(clientQueue, block);
}

void __63__SUManagerServer_scanDidCompleteWithNewUpdateAvailable_error___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SUManagerServer_scanDidCompleteWithNewUpdateAvailable_error___block_invoke_2;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __63__SUManagerServer_scanDidCompleteWithNewUpdateAvailable_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer scanDidCompleteWithNewUpdateAvailable:error:]_block_invoke_2");
  if ([v11 isMessagable])
  {
    v10 = [v11 proxy];
    [v10 scanDidCompleteWithNewUpdateAvailable:*(a1 + 32) error:*(a1 + 40)];
  }
}

- (void)automaticDownloadDidFailToStartForNewUpdateAvailable:(id)available withError:(id)error
{
  availableCopy = available;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SUManagerServer_automaticDownloadDidFailToStartForNewUpdateAvailable_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = availableCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = availableCopy;
  dispatch_async(clientQueue, block);
}

void __82__SUManagerServer_automaticDownloadDidFailToStartForNewUpdateAvailable_withError___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__SUManagerServer_automaticDownloadDidFailToStartForNewUpdateAvailable_withError___block_invoke_2;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __82__SUManagerServer_automaticDownloadDidFailToStartForNewUpdateAvailable_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer automaticDownloadDidFailToStartForNewUpdateAvailable:withError:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 automaticDownloadDidFailToStartForNewUpdateAvailable:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)downloadDidStart:(id)start
{
  startCopy = start;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUManagerServer_downloadDidStart___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(clientQueue, v7);
}

void __36__SUManagerServer_downloadDidStart___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__SUManagerServer_downloadDidStart___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __36__SUManagerServer_downloadDidStart___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer downloadDidStart:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 downloadDidStart:*(a1 + 32)];
}

- (void)downloadProgressDidChange:(id)change
{
  changeCopy = change;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUManagerServer_downloadProgressDidChange___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(clientQueue, v7);
}

void __45__SUManagerServer_downloadProgressDidChange___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__SUManagerServer_downloadProgressDidChange___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __45__SUManagerServer_downloadProgressDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer downloadProgressDidChange:]_block_invoke_2");
  if ([v11 isMessagable])
  {
    v10 = [v11 proxy];
    [v10 downloadProgressDidChange:*(a1 + 32)];
  }
}

- (void)downloadDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUManagerServer_downloadDidFail_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = failCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = failCopy;
  dispatch_async(clientQueue, block);
}

void __45__SUManagerServer_downloadDidFail_withError___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SUManagerServer_downloadDidFail_withError___block_invoke_2;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __45__SUManagerServer_downloadDidFail_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer downloadDidFail:withError:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 downloadDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  finishCopy = finish;
  policyCopy = policy;
  v8 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerServer_downloadDidFinish_withInstallPolicy___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = finishCopy;
  v13 = policyCopy;
  v9 = policyCopy;
  v10 = finishCopy;
  dispatch_async(v8, block);
}

void __55__SUManagerServer_downloadDidFinish_withInstallPolicy___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerServer_downloadDidFinish_withInstallPolicy___block_invoke_2;
  block[3] = &unk_279CAA798;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __55__SUManagerServer_downloadDidFinish_withInstallPolicy___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__SUManagerServer_downloadDidFinish_withInstallPolicy___block_invoke_3;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __55__SUManagerServer_downloadDidFinish_withInstallPolicy___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer downloadDidFinish:withInstallPolicy:]_block_invoke_3");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 downloadDidFinish:*(a1 + 32) withInstallPolicy:*(a1 + 40)];
}

- (void)downloadWasInvalidatedForNewUpdatesAvailable:(id)available
{
  availableCopy = available;
  v5 = +[SUScheduler sharedInstance];
  [v5 cancelInstallAlertRegistration];

  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SUManagerServer_downloadWasInvalidatedForNewUpdatesAvailable___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v9 = availableCopy;
  selfCopy = self;
  v7 = availableCopy;
  dispatch_async(clientQueue, v8);
}

void __64__SUManagerServer_downloadWasInvalidatedForNewUpdatesAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredDescriptor];
  v3 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v2];

  v4 = [*(a1 + 32) alternateDescriptor];
  v5 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v4];

  v6 = [[SUScanResults alloc] initWithPreferredDescriptor:v3 alternateDescriptor:v5];
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SUManagerServer_downloadWasInvalidatedForNewUpdatesAvailable___block_invoke_2;
  v9[3] = &unk_279CAB560;
  v10 = v6;
  v8 = v6;
  [v7 runOnClients:v9];
}

void __64__SUManagerServer_downloadWasInvalidatedForNewUpdatesAvailable___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer downloadWasInvalidatedForNewUpdatesAvailable:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 downloadWasInvalidatedForNewUpdatesAvailable:*(a1 + 32)];
}

- (void)clearingSpaceForDownload:(id)download clearing:(BOOL)clearing
{
  downloadCopy = download;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUManagerServer_clearingSpaceForDownload_clearing___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = downloadCopy;
  clearingCopy = clearing;
  v8 = downloadCopy;
  dispatch_async(clientQueue, block);
}

void __53__SUManagerServer_clearingSpaceForDownload_clearing___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__SUManagerServer_clearingSpaceForDownload_clearing___block_invoke_2;
  v3[3] = &unk_279CAB600;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __53__SUManagerServer_clearingSpaceForDownload_clearing___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer clearingSpaceForDownload:clearing:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 clearingSpaceForDownload:*(a1 + 32) clearing:*(a1 + 40)];
}

- (void)installWantsToStart:(id)start completion:(id)completion
{
  startCopy = start;
  completionCopy = completion;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerServer_installWantsToStart_completion___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v12 = startCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = startCopy;
  dispatch_async(clientQueue, block);
}

void __50__SUManagerServer_installWantsToStart_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__SUManagerServer_installWantsToStart_completion___block_invoke_2;
  v3[3] = &unk_279CAB628;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __50__SUManagerServer_installWantsToStart_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer installWantsToStart:completion:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 installWantsToStart:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)installDidStart:(id)start
{
  startCopy = start;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUManagerServer_installDidStart___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(clientQueue, v7);
}

void __35__SUManagerServer_installDidStart___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__SUManagerServer_installDidStart___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __35__SUManagerServer_installDidStart___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer installDidStart:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 installDidStart:*(a1 + 32)];
}

- (void)installDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  v8 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUManagerServer_installDidFail_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = errorCopy;
  v13 = failCopy;
  v9 = failCopy;
  v10 = errorCopy;
  dispatch_async(v8, block);
}

void __44__SUManagerServer_installDidFail_withError___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUManagerServer_installDidFail_withError___block_invoke_2;
  block[3] = &unk_279CAA798;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __44__SUManagerServer_installDidFail_withError___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SUManagerServer_installDidFail_withError___block_invoke_3;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __44__SUManagerServer_installDidFail_withError___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer installDidFail:withError:]_block_invoke_3");
  [v11 wakeupIfNecessary];
  v12 = [MEMORY[0x277CCA9B8] buildCheckedError:*(a1 + 32)];
  v10 = [v11 proxy];

  [v10 installDidFail:*(a1 + 40) withError:v12];
}

- (void)installDidFinish:(id)finish
{
  finishCopy = finish;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUManagerServer_installDidFinish___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = finishCopy;
  v6 = finishCopy;
  dispatch_async(v5, v7);
}

void __36__SUManagerServer_installDidFinish___block_invoke(uint64_t a1)
{
  +[SUUtility writeKeepAliveFile];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__SUManagerServer_installDidFinish___block_invoke_2;
  v5[3] = &unk_279CAA7C0;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

void __36__SUManagerServer_installDidFinish___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__SUManagerServer_installDidFinish___block_invoke_3;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __36__SUManagerServer_installDidFinish___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer installDidFinish:]_block_invoke_3");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 installDidFinish:*(a1 + 32)];
}

- (void)installPolicyDidChange:(id)change
{
  changeCopy = change;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_installPolicyDidChange___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(clientQueue, v7);
}

void __42__SUManagerServer_installPolicyDidChange___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__SUManagerServer_installPolicyDidChange___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __42__SUManagerServer_installPolicyDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer installPolicyDidChange:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 installPolicyDidChange:*(a1 + 32)];
}

- (void)managedInstallationRequested:(id)requested
{
  requestedCopy = requested;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUManagerServer_managedInstallationRequested___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = requestedCopy;
  v6 = requestedCopy;
  dispatch_async(clientQueue, v7);
}

void __48__SUManagerServer_managedInstallationRequested___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__SUManagerServer_managedInstallationRequested___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __48__SUManagerServer_managedInstallationRequested___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer managedInstallationRequested:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 managedInstallationRequested:*(a1 + 32)];
}

- (void)sendDDMDeclarationToUI:(id)i
{
  iCopy = i;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_sendDDMDeclarationToUI___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = iCopy;
  v6 = iCopy;
  dispatch_async(clientQueue, v7);
}

void __42__SUManagerServer_sendDDMDeclarationToUI___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__SUManagerServer_sendDDMDeclarationToUI___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __42__SUManagerServer_sendDDMDeclarationToUI___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer sendDDMDeclarationToUI:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 handleUIForDDMDeclaration:*(a1 + 32)];
}

- (void)sendDDMGlobalSettingsToUI:(id)i
{
  iCopy = i;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUManagerServer_sendDDMGlobalSettingsToUI___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = iCopy;
  v6 = iCopy;
  dispatch_async(clientQueue, v7);
}

void __45__SUManagerServer_sendDDMGlobalSettingsToUI___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__SUManagerServer_sendDDMGlobalSettingsToUI___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __45__SUManagerServer_sendDDMGlobalSettingsToUI___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer sendDDMGlobalSettingsToUI:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 handleUIForDDMGlobalSettings:*(a1 + 32)];
}

- (void)splatUpdateDetected
{
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUManagerServer_splatUpdateDetected__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __38__SUManagerServer_splatUpdateDetected__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  SULogInfo(@"%s: Delegating to client %@", v2, v3, v4, v5, v6, v7, v8, "[SUManagerServer splatUpdateDetected]_block_invoke_2");
  [v9 wakeupIfNecessary];
  v10 = [v9 proxy];

  [v10 deviceBootedAfterSplatUpdate];
}

- (void)splatRollbackDetected:(id)detected
{
  detectedCopy = detected;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SUManagerServer_splatRollbackDetected___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = detectedCopy;
  v6 = detectedCopy;
  dispatch_async(clientQueue, v7);
}

void __41__SUManagerServer_splatRollbackDetected___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__SUManagerServer_splatRollbackDetected___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __41__SUManagerServer_splatRollbackDetected___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer splatRollbackDetected:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 deviceBootedAfterRollback:*(a1 + 32)];
}

- (void)installTonightScheduled:(BOOL)scheduled
{
  clientQueue = self->_clientQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SUManagerServer_installTonightScheduled___block_invoke;
  v4[3] = &unk_279CAAD00;
  v4[4] = self;
  scheduledCopy = scheduled;
  dispatch_async(clientQueue, v4);
}

uint64_t __43__SUManagerServer_installTonightScheduled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__SUManagerServer_installTonightScheduled___block_invoke_2;
  v3[3] = &unk_279CAB600;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 runOnClients:v3];
}

void __43__SUManagerServer_installTonightScheduled___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer installTonightScheduled:]_block_invoke_2");
  [v12 wakeupIfNecessary];
  v10 = [*(*(a1 + 32) + 8) operationModel];
  v13 = [v10 id];

  v11 = [v12 proxy];

  [v11 installTonightScheduled:*(a1 + 40) operationID:v13];
}

- (void)rollbackReadyToStart:(id)start options:(id)options completion:(id)completion
{
  startCopy = start;
  optionsCopy = options;
  completionCopy = completion;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__SUManagerServer_rollbackReadyToStart_options_completion___block_invoke;
  v15[3] = &unk_279CAB438;
  v15[4] = self;
  v16 = startCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = startCopy;
  dispatch_async(clientQueue, v15);
}

void __59__SUManagerServer_rollbackReadyToStart_options_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__SUManagerServer_rollbackReadyToStart_options_completion___block_invoke_2;
  v3[3] = &unk_279CAB650;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 runOnClients:v3];
}

void __59__SUManagerServer_rollbackReadyToStart_options_completion___block_invoke_2(void *a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer rollbackReadyToStart:options:completion:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:a1[4]];
  v10 = [v11 proxy];

  [v10 rollbackReadyToStart:v12 options:a1[5] completion:a1[6]];
}

- (void)rollbackDidStart:(id)start
{
  startCopy = start;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUManagerServer_rollbackDidStart___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(clientQueue, v7);
}

void __36__SUManagerServer_rollbackDidStart___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__SUManagerServer_rollbackDidStart___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __36__SUManagerServer_rollbackDidStart___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer rollbackDidStart:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:*(a1 + 32)];
  v10 = [v11 proxy];

  [v10 rollbackDidStart:v12];
}

- (void)rollbackDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUManagerServer_rollbackDidFail_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = failCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = failCopy;
  dispatch_async(clientQueue, block);
}

void __45__SUManagerServer_rollbackDidFail_withError___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SUManagerServer_rollbackDidFail_withError___block_invoke_2;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __45__SUManagerServer_rollbackDidFail_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer rollbackDidFail:withError:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:*(a1 + 32)];
  v10 = [v11 proxy];

  [v10 rollbackDidFail:v12 withError:*(a1 + 40)];
}

- (void)rollbackSucceeded:(id)succeeded
{
  succeededCopy = succeeded;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUManagerServer_rollbackSucceeded___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = succeededCopy;
  v6 = succeededCopy;
  dispatch_async(v5, v7);
}

void __37__SUManagerServer_rollbackSucceeded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__SUManagerServer_rollbackSucceeded___block_invoke_2;
  v4[3] = &unk_279CAA7C0;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __37__SUManagerServer_rollbackSucceeded___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__SUManagerServer_rollbackSucceeded___block_invoke_3;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __37__SUManagerServer_rollbackSucceeded___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer rollbackSucceeded:]_block_invoke_3");
  [v11 wakeupIfNecessary];
  v12 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:*(a1 + 32)];
  v10 = [v11 proxy];

  [v10 rollbackDidFinish:v12];
}

- (void)rollbackReadyForReboot:(id)reboot
{
  rebootCopy = reboot;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_rollbackReadyForReboot___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = rebootCopy;
  v6 = rebootCopy;
  dispatch_async(clientQueue, v7);
}

void __42__SUManagerServer_rollbackReadyForReboot___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__SUManagerServer_rollbackReadyForReboot___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __42__SUManagerServer_rollbackReadyForReboot___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer rollbackReadyForReboot:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:*(a1 + 32)];
  v10 = [v11 proxy];

  [v10 rollbackReadyForReboot:v12];
}

- (void)presentingRecommendedUpdate:(id)update shouldPresent:(BOOL)present
{
  updateCopy = update;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUManagerServer_presentingRecommendedUpdate_shouldPresent___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = updateCopy;
  presentCopy = present;
  v8 = updateCopy;
  dispatch_async(clientQueue, block);
}

void __61__SUManagerServer_presentingRecommendedUpdate_shouldPresent___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__SUManagerServer_presentingRecommendedUpdate_shouldPresent___block_invoke_2;
  v3[3] = &unk_279CAB600;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __61__SUManagerServer_presentingRecommendedUpdate_shouldPresent___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer presentingRecommendedUpdate:shouldPresent:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 presentingRecommendedUpdate:*(a1 + 32) shouldPresent:*(a1 + 40)];
}

- (void)rollbackSuggested:(id)suggested info:(id)info
{
  suggestedCopy = suggested;
  infoCopy = info;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerServer_rollbackSuggested_info___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = suggestedCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = suggestedCopy;
  dispatch_async(clientQueue, block);
}

void __42__SUManagerServer_rollbackSuggested_info___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SUManagerServer_rollbackSuggested_info___block_invoke_2;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __42__SUManagerServer_rollbackSuggested_info___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer rollbackSuggested:info:]_block_invoke_2");
  [v10 wakeupIfNecessary];
  v11 = [v10 proxy];

  [v11 rollbackSuggested:*(a1 + 32) info:*(a1 + 40)];
}

- (void)networkMonitorDetectOverrides
{
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUManagerServer_networkMonitorDetectOverrides__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __48__SUManagerServer_networkMonitorDetectOverrides__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) manager];
  [v1 networkMonitorDetectOverrides];
}

- (void)isAnyClientInUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUManagerServer_isAnyClientInUserInteraction___block_invoke;
  v7[3] = &unk_279CAA8D0;
  v7[4] = self;
  v8 = interactionCopy;
  v6 = interactionCopy;
  dispatch_async(clientQueue, v7);
}

void __48__SUManagerServer_isAnyClientInUserInteraction___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SUManagerServer_isAnyClientInUserInteraction___block_invoke_2;
  v4[3] = &unk_279CAB6A0;
  v4[4] = &v5;
  [v2 runOnClients:v4];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(v6 + 24), 0);
  }

  _Block_object_dispose(&v5, 8);
}

void __48__SUManagerServer_isAnyClientInUserInteraction___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer isAnyClientInUserInteraction:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v10 = [v11 proxy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SUManagerServer_isAnyClientInUserInteraction___block_invoke_3;
  v12[3] = &unk_279CAB678;
  v12[4] = *(a1 + 32);
  [v10 inUserInteraction:v12];
}

uint64_t __48__SUManagerServer_isAnyClientInUserInteraction___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)autoInstallManager:(id)manager operationWasConsented:(id)consented
{
  consentedCopy = consented;
  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SUManagerServer_autoInstallManager_operationWasConsented___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = consentedCopy;
  v7 = consentedCopy;
  dispatch_async(clientQueue, v8);
}

void __60__SUManagerServer_autoInstallManager_operationWasConsented___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__SUManagerServer_autoInstallManager_operationWasConsented___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __60__SUManagerServer_autoInstallManager_operationWasConsented___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer autoInstallManager:operationWasConsented:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [v11 proxy];

  v10 = [*(a1 + 32) id];
  [v12 autoInstallOperationDidConsent:v10];
}

- (void)autoInstallManager:(id)manager didCancelOperation:(id)operation
{
  operationCopy = operation;
  v6 = SULogBadging();
  SULogInfoForSubsystem(v6, @"Auto install operation cancelled..Dismissing AutoUpdateBanner", v7, v8, v9, v10, v11, v12, v15[0]);

  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SUManagerServer_autoInstallManager_didCancelOperation___block_invoke;
  v15[3] = &unk_279CAA7C0;
  v15[4] = self;
  v16 = operationCopy;
  v14 = operationCopy;
  dispatch_async(clientQueue, v15);
}

void __57__SUManagerServer_autoInstallManager_didCancelOperation___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__SUManagerServer_autoInstallManager_didCancelOperation___block_invoke_2;
  v2[3] = &unk_279CAB560;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 runOnClients:v2];
}

void __57__SUManagerServer_autoInstallManager_didCancelOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer autoInstallManager:didCancelOperation:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [v11 proxy];

  v10 = [*(a1 + 32) id];
  [v12 autoInstallOperationWasCancelled:v10];
}

- (void)autoInstallManager:(id)manager didExpireOperation:(id)operation withError:(id)error
{
  operationCopy = operation;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUManagerServer_autoInstallManager_didExpireOperation_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v13 = operationCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = operationCopy;
  dispatch_async(clientQueue, block);
}

void __67__SUManagerServer_autoInstallManager_didExpireOperation_withError___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SUManagerServer_autoInstallManager_didExpireOperation_withError___block_invoke_2;
  v3[3] = &unk_279CAB5D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __67__SUManagerServer_autoInstallManager_didExpireOperation_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer autoInstallManager:didExpireOperation:withError:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [v11 proxy];

  v10 = [*(a1 + 32) id];
  [v12 autoInstallOperationDidExpire:v10 withError:*(a1 + 40)];
}

- (void)autoInstallManager:(id)manager isReadyToInstall:(id)install withResult:(id)result
{
  installCopy = install;
  resultCopy = result;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = installCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = installCopy;
  dispatch_async(clientQueue, block);
}

void __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke_2;
  v3[3] = &unk_279CAB628;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 runOnClients:v3];
}

void __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer autoInstallManager:isReadyToInstall:withResult:]_block_invoke_2");
  [v12 wakeupIfNecessary];
  v10 = [v12 proxy];

  v11 = [*(a1 + 32) id];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke_3;
  v13[3] = &unk_279CAB6C8;
  v14 = *(a1 + 40);
  [v10 autoInstallOperationIsReadyToInstall:v11 withResult:v13];
}

void __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke_4;
  block[3] = &unk_279CAADF0;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)autoInstallManager:(id)manager passcodePolicyChanged:(unint64_t)changed forOperation:(id)operation
{
  operationCopy = operation;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SUManagerServer_autoInstallManager_passcodePolicyChanged_forOperation___block_invoke;
  block[3] = &unk_279CAA8A8;
  block[4] = self;
  v11 = operationCopy;
  changedCopy = changed;
  v9 = operationCopy;
  dispatch_async(clientQueue, block);
}

void __73__SUManagerServer_autoInstallManager_passcodePolicyChanged_forOperation___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SUManagerServer_autoInstallManager_passcodePolicyChanged_forOperation___block_invoke_2;
  v5[3] = &unk_279CAB6F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 runOnClients:v5];
}

void __73__SUManagerServer_autoInstallManager_passcodePolicyChanged_forOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  SULogInfo(@"%s: Delegating to client %@", v3, v4, v5, v6, v7, v8, v9, "[SUManagerServer autoInstallManager:passcodePolicyChanged:forOperation:]_block_invoke_2");
  [v11 wakeupIfNecessary];
  v12 = [v11 proxy];

  v10 = [*(a1 + 32) id];
  [v12 autoInstallOperationPasscodePolicyChanged:v10 passcodePolicyType:*(a1 + 40)];
}

- (void)resetState
{
  v2 = +[SUUtility mainWorkQueue];
  dispatch_async(v2, &__block_literal_global_550);
}

void __29__SUManagerServer_resetState__block_invoke()
{
  v0 = +[SUState currentState];
  [v0 resetAllHistory];

  v1 = +[SUState currentState];
  [v1 save];
}

- (void)serverInitAndResumeWork
{
  v3 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerServer_Daemon__serverInitAndResumeWork__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v3, block);
}

void __50__SUManagerServer_Daemon__serverInitAndResumeWork__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogDebug(@"Notifying observers of start", a2, a3, a4, a5, a6, a7, a8, v14);
  [*(a1 + 32) _notifyServerStart];
  [SUPluginLoader loadPlugin:@"/System/Library/PrivateFrameworks/SoftwareUpdateServicesUI.framework/Plugins/SoftwareUpdateServicesUIPlugin.servicebundle"];
  v9 = [*(a1 + 32) manager];
  [v9 resumeOrResetIfNecessary];

  v10 = [*(a1 + 32) autoInstallManager];
  [v10 resumeOrResetStateIfNecessary];

  v11 = [*(a1 + 32) ddmManager];
  [v11 resumeOrResetStateIfNecessary];

  v12 = +[SUScheduler sharedInstance];
  [v12 scheduleStartupTasksIfNecessary];

  v13 = +[SUTransactionManager sharedInstance];
  [v13 setKeepAliveClearable:1];

  v15 = +[SUTransactionManager sharedInstance];
  [v15 clearKeepAliveIfNecessary:0];
}

- (void)runUntilIdleExit
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[SUTransactionManager sharedInstance];
  [v4 setKeepAliveClearable:0];
  v5 = SULogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    isKeepAliveEnabled = [v4 isKeepAliveEnabled];
    v22 = @"DISABLED";
    if (isKeepAliveEnabled)
    {
      v22 = @"ENABLED";
    }

    SULogInfo(@"Starting the server: keepAlive = %@", v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    SULogInfo(@"Starting the server.", v7, v8, v9, v10, v11, v12, v13, v31);
  }

  [MEMORY[0x277CCAE98] enableTransactions];
  v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_create("com.apple.softwareupdateservices.connectionQueue", v23);
  v25 = __connectionQueue;
  __connectionQueue = v24;

  v26 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.softwareupdateservicesd"];
  v27 = __listener;
  __listener = v26;

  [__listener setDelegate:self];
  [__listener _setQueue:__connectionQueue];
  [__listener resume];
  [v4 beginTransaction:@"SUMinimumLaunchTransaction"];
  v28 = dispatch_time(0, 10000000000);
  v29 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_Daemon__runUntilIdleExit__block_invoke;
  block[3] = &unk_279CAA708;
  v33 = v4;
  v30 = v4;
  dispatch_after(v28, v29, block);

  [(SUManagerServer *)self serverInitAndResumeWork];
  [(SUManagerServer *)self _run];
  [v30 clearKeepAliveIfNecessary:1];

  objc_autoreleasePoolPop(v3);
}

- (id)_clientForCurrentConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  userInfo = [currentConnection userInfo];

  if (userInfo && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = userInfo;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if (-[SUManagerServer underExclusiveControl](self, "underExclusiveControl") && ([connectionCopy valueForEntitlement:@"com.apple.softwareupdateservices.client.allowed"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, (v7 & 1) == 0))
  {
    v38 = 0u;
    v39 = 0u;
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    v37 = 0;
    v35 = v38;
    v36 = v39;
    CPCopyBundleIdentifierAndTeamFromAuditToken();
    SULogInfo(@"connection refused for unentitled client %@", v21, v22, v23, v24, v25, v26, v27, 0);
    v17 = 0;
  }

  else
  {
    v8 = +[SUTransactionManager sharedInstance];
    [v8 beginTransaction:@"SUAddClientTransaction"];
    [connectionCopy _setQueue:__connectionQueue];
    v9 = [[SUManagerServerClient alloc] initWithConnection:connectionCopy];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __62__SUManagerServer_Daemon__listener_shouldAcceptNewConnection___block_invoke;
    v32 = &unk_279CAA7C0;
    selfCopy = self;
    v34 = v9;
    v10 = v9;
    v11 = MEMORY[0x26D668B30](&v29);
    [connectionCopy setInterruptionHandler:v11];
    [connectionCopy setInvalidationHandler:v11];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B7E918];
    [connectionCopy setRemoteObjectInterface:v12];

    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B77600];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0, v29, v30, v31, v32, selfCopy}];
    v17 = 1;
    [v13 setClasses:v16 forSelector:sel_getAllDeclarationsWithHandler_ argumentIndex:0 ofReply:1];

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    [v13 setClasses:v20 forSelector:sel_fetchInstallHistory_ argumentIndex:0 ofReply:1];

    [connectionCopy setExportedInterface:v13];
    [connectionCopy setExportedObject:self];
    [connectionCopy setUserInfo:v10];
    [connectionCopy resume];
    [(SUManagerServerClient *)v10 monitorClientStateIfNecessary];
    [(SUManagerServer *)self addClient:v10];
    [v8 endTransaction:@"SUAddClientTransaction"];
  }

  return v17;
}

- (void)_notifyServerStart
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SUDaemonStartedNotification", 0, 0, 1u);
}

@end