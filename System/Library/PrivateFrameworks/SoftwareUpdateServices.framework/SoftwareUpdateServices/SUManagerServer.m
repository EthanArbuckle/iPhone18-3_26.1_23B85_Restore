@interface SUManagerServer
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)mdmCommandConflictsWithDDM:(id)a3;
- (SUManagerServer)init;
- (id)_clientForCurrentConnection;
- (id)_installReasons;
- (id)_mdmCommandConflictsWithDDMError;
- (id)autoInstallManager;
- (id)clients;
- (id)ddmManager;
- (id)installReasonForClientName:(id)a3;
- (id)manager;
- (void)_clientForegroundnessDidChange:(id)a3;
- (void)_clientMessagabilityDidChange:(id)a3;
- (void)_evaluateForegroundness;
- (void)_getDDMStatusWithKeys:(id)a3 withResult:(id)a4;
- (void)_notifyServerStart;
- (void)_run;
- (void)_sendLatestStatusForClient:(id)a3;
- (void)addClient:(id)a3;
- (void)autoInstallManager:(id)a3 didCancelOperation:(id)a4;
- (void)autoInstallManager:(id)a3 didExpireOperation:(id)a4 withError:(id)a5;
- (void)autoInstallManager:(id)a3 isReadyToInstall:(id)a4 withResult:(id)a5;
- (void)autoInstallManager:(id)a3 operationWasConsented:(id)a4;
- (void)autoInstallManager:(id)a3 passcodePolicyChanged:(unint64_t)a4 forOperation:(id)a5;
- (void)autoScanAndDownloadNow:(BOOL)a3 ifAvailable:(id)a4;
- (void)automaticDownloadDidFailToStartForNewUpdateAvailable:(id)a3 withError:(id)a4;
- (void)cancelAutoInstallOperation:(id)a3 withResult:(id)a4;
- (void)cancelDDMDeclaration:(id)a3 withResult:(id)a4;
- (void)cancelDDMDeclarationForKey:(id)a3 completion:(id)a4;
- (void)cancelDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)clearingSpaceForDownload:(id)a3 clearing:(BOOL)a4;
- (void)consentToAutoInstallOperation:(id)a3 withResult:(id)a4;
- (void)createInstallationKeybag:(id)a3 withResult:(id)a4;
- (void)currentAutoInstallOperation:(BOOL)a3 withResult:(id)a4;
- (void)currentAutoInstallOperationForecast:(id)a3;
- (void)currentPasscodePolicy:(id)a3;
- (void)dealloc;
- (void)delayEndDate:(id)a3;
- (void)descriptor:(id)a3;
- (void)descriptors:(id)a3;
- (void)destroyInstallationKeybag;
- (void)disableReserveSpace:(BOOL)a3 withResult:(id)a4;
- (void)downloadAndInstallState:(id)a3;
- (void)downloadDidFail:(id)a3 withError:(id)a4;
- (void)downloadDidFinish:(id)a3 withInstallPolicy:(id)a4;
- (void)downloadDidStart:(id)a3;
- (void)downloadProgressDidChange:(id)a3;
- (void)downloadWasInvalidatedForNewUpdatesAvailable:(id)a3;
- (void)eligibleRollbackWithOptions:(id)a3 withResult:(id)a4;
- (void)enableAutomaticDownload:(BOOL)a3;
- (void)enableAutomaticUpdateV2:(BOOL)a3;
- (void)exitExclusiveControl;
- (void)fetchInstallHistory:(id)a3;
- (void)getAllDeclarationsWithHandler:(id)a3;
- (void)getDDMDeclarationWithHandler:(id)a3;
- (void)getDDMGlobalSettingsWithHandler:(id)a3;
- (void)getDDMStatusWithKeys:(id)a3 completion:(id)a4;
- (void)getDDMUpdateDescriptorWithHandler:(id)a3;
- (void)getMandatorySoftwareUpdateDictionary:(id)a3;
- (void)getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler:(id)a3;
- (void)getShouldDisableAutoInstallIOSUpdatesToggleWithHandler:(id)a3;
- (void)getShouldDisableAutoInstallRSRToggleWithHandler:(id)a3;
- (void)goUnderExclusiveControl;
- (void)handleClientRequest:(const char *)a3 client:(id)a4 withRequestCallBack:(id)a5 withErrorCallBack:(id)a6;
- (void)handleDDMDeclaration:(id)a3 withResult:(id)a4;
- (void)installDidFail:(id)a3 withError:(id)a4;
- (void)installDidFinish:(id)a3;
- (void)installDidStart:(id)a3;
- (void)installPolicyDidChange:(id)a3;
- (void)installServerConfiguration;
- (void)installTonightScheduled:(BOOL)a3;
- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4;
- (void)installUpdateWithOptions:(id)a3 withResult:(id)a4;
- (void)installWantsToStart:(id)a3 completion:(id)a4;
- (void)isAnyClientInUserInteraction:(id)a3;
- (void)isAutoUpdateEnabled:(id)a3;
- (void)isAutoUpdateScheduled:(id)a3;
- (void)isAutomaticDownloadEnabled:(id)a3;
- (void)isAutomaticUpdateV2Enabled:(id)a3;
- (void)isClearingSpaceForDownload:(id)a3;
- (void)isDelayingUpdates:(id)a3;
- (void)isDownloading:(id)a3;
- (void)isInstallationKeybagRequired:(id)a3;
- (void)isInstallationKeybagRequiredForDescriptor:(id)a3 result:(id)a4;
- (void)isRollingBack:(id)a3;
- (void)isScanning:(id)a3;
- (void)isSoftwareUpdateInProgress:(id)a3;
- (void)isSplatOnlyUpdateRollbackSuggested:(id)a3;
- (void)isUpdateReadyForInstallationWithOptions:(id)a3 withResult:(id)a4;
- (void)managedInstallationRequested:(id)a3;
- (void)networkMonitorDetectOverrides;
- (void)overrideSoftwareUpdateReserve:(id)a3 systemGrowthMarginSize:(id)a4 withResult:(id)a5;
- (void)pauseDownload:(id)a3;
- (void)presentAutoUpdateBanner:(id)a3;
- (void)presentingRecommendedUpdate:(id)a3 shouldPresent:(BOOL)a4;
- (void)previousRollback:(id)a3 withResult:(id)a4;
- (void)purgeDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)recordSUAnalyticsEvent:(id)a3;
- (void)registerCSInstallPredicatesOnDate:(id)a3;
- (void)removeClient:(id)a3;
- (void)resetState;
- (void)resumeDownload:(id)a3;
- (void)rollbackDidFail:(id)a3 withError:(id)a4;
- (void)rollbackDidStart:(id)a3;
- (void)rollbackReadyForReboot:(id)a3;
- (void)rollbackReadyToStart:(id)a3 options:(id)a4 completion:(id)a5;
- (void)rollbackSucceeded:(id)a3;
- (void)rollbackSuggested:(id)a3 info:(id)a4;
- (void)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4;
- (void)runOnClients:(id)a3;
- (void)runOnClientsUntilStop:(id)a3;
- (void)runUntilIdleExit;
- (void)rvGetCurrentNeRDInfoWithReply:(id)a3;
- (void)rvTriggerNeRDUpdate:(id)a3;
- (void)scanDidCompleteForOptions:(id)a3 results:(id)a4 error:(id)a5;
- (void)scanDidCompleteWithNewUpdateAvailable:(id)a3 error:(id)a4;
- (void)scanForUpdates:(id)a3 withResult:(id)a4;
- (void)scanRequestDidFinishForOptions:(id)a3 results:(id)a4 error:(id)a5;
- (void)scanRequestDidFinishForOptions:(id)a3 update:(id)a4 error:(id)a5;
- (void)scanRequestDidStartForOptions:(id)a3;
- (void)scheduleRollbackRebootForLater:(id)a3;
- (void)securityResponseRollbackSuggested:(id)a3 withResult:(id)a4;
- (void)sendDDMDeclarationToUI:(id)a3;
- (void)sendDDMGlobalSettingsToUI:(id)a3;
- (void)serverInitAndResumeWork;
- (void)setDDMGlobalSettings:(id)a3 completion:(id)a4;
- (void)setExclusiveControl:(BOOL)a3;
- (void)setLastRollbackDescriptor:(id)a3 withResult:(id)a4;
- (void)setMandatorySoftwareUpdateDictionary:(id)a3;
- (void)slaVersion:(id)a3;
- (void)softwareUpdatePathRestriction:(id)a3;
- (void)softwareUpdateReserveSizes:(id)a3;
- (void)splatRollbackAllowed:(id)a3;
- (void)splatRollbackDetected:(id)a3;
- (void)splatUpdateDetected;
- (void)startDownload:(id)a3;
- (void)startDownloadWithMetadata:(id)a3 withResult:(id)a4;
- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)submitAllSUAnalyticsEvents;
- (void)submitSUAnalyticsEvent:(id)a3;
- (void)submitSUAnalyticsEventsWithName:(id)a3;
- (void)updateDownloadMetadata:(id)a3 withResult:(id)a4;
- (void)updateDownloadOptions:(id)a3 withResult:(id)a4;
- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5;
- (void)userAskedToDeferInstall;
- (void)writeKeepAliveFile:(id)a3;
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
    v6 = [v5 copyTransactions];

    if (v6 && [v6 count])
    {
      v7 = SULogCommon();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

      if (v8)
      {
        SULogDebug(@"Software update daemon continuing to run - transactions: %@", v9, v10, v11, v12, v13, v14, v15, v6);
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

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel__clientMessagabilityDidChange_ name:@"SUClientMessagabilityChangedNotification" object:0];
    [v9 addObserver:v2 selector:sel__clientForegroundnessDidChange_ name:@"SUClientForegroundnessChangedNotification" object:0];
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
    v5 = [(SUManagerServer *)self manager];
    v6 = [(SUAutoInstallManager *)v4 initWithManager:v5];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  clientQueue = self->_clientQueue;
  self->_clientQueue = 0;

  v5.receiver = self;
  v5.super_class = SUManagerServer;
  [(SUManagerServer *)&v5 dealloc];
}

- (void)runOnClients:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)runOnClientsUntilStop:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

      v4[2](v4, *(*(&v11 + 1) + 8 * v9), &v15);
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

- (void)handleClientRequest:(const char *)a3 client:(id)a4 withRequestCallBack:(id)a5 withErrorCallBack:(id)a6
{
  v15 = a5;
  v7 = [a4 shortDescription];
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, v7);

  v15[2]();
}

- (void)isScanning:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SUManagerServer_isScanning___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)scanForUpdates:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__SUManagerServer_scanForUpdates_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)autoScanAndDownloadNow:(BOOL)a3 ifAvailable:(id)a4
{
  v6 = a4;
  v7 = [(SUManagerServer *)self _clientForCurrentConnection];
  v8 = +[SUUtility mainWorkQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SUManagerServer_autoScanAndDownloadNow_ifAvailable___block_invoke;
  v11[3] = &unk_279CAB410;
  v11[4] = self;
  v12 = v7;
  v14 = a3;
  v13 = v6;
  v9 = v6;
  v10 = v7;
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

- (void)descriptors:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__SUManagerServer_descriptors___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v9 = v5;
    v10 = v4;
    v7 = v5;
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

- (void)descriptor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__SUManagerServer_descriptor___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v9 = v5;
    v10 = v4;
    v7 = v5;
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

- (void)disableReserveSpace:(BOOL)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = [(SUManagerServer *)self _clientForCurrentConnection];
  v8 = +[SUUtility mainWorkQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SUManagerServer_disableReserveSpace_withResult___block_invoke;
  v11[3] = &unk_279CAB410;
  v11[4] = self;
  v12 = v7;
  v14 = a3;
  v13 = v6;
  v9 = v6;
  v10 = v7;
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

- (void)overrideSoftwareUpdateReserve:(id)a3 systemGrowthMarginSize:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUManagerServer *)self _clientForCurrentConnection];
  v12 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SUManagerServer_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke;
  block[3] = &unk_279CAA748;
  block[4] = self;
  v18 = v11;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v11;
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

- (void)softwareUpdateReserveSizes:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_softwareUpdateReserveSizes___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)isClearingSpaceForDownload:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_isClearingSpaceForDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)isDownloading:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_isDownloading___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)startDownload:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_startDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SUManagerServer_startDownloadWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)startDownloadWithMetadata:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_startDownloadWithMetadata_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)cancelDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_cancelDownloadWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)purgeDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SUManagerServer_purgeDownloadWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)pauseDownload:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_pauseDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)resumeDownload:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUManagerServer_resumeDownload___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)updateDownloadMetadata:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SUManagerServer_updateDownloadMetadata_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)updateDownloadOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SUManagerServer_updateDownloadOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)downloadAndInstallState:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_downloadAndInstallState___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUManagerServer *)self _clientForCurrentConnection];
  v12 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SUManagerServer_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
  block[3] = &unk_279CAB460;
  block[4] = self;
  v18 = v11;
  v20 = v9;
  v21 = v10;
  v19 = v8;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  v16 = v11;
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

- (void)isSoftwareUpdateInProgress:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v12 = [(SUManagerServer *)self _clientForCurrentConnection];
    v13 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SUManagerServer_isSoftwareUpdateInProgress___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = v12;
    v17 = v11;
    v14 = v12;
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

- (void)getDDMStatusWithKeys:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting DDM status"];
  SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer getDDMStatusWithKeys:completion:]");

  v15 = [(SUManagerServer *)self _clientForCurrentConnection];
  v16 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerServer_getDDMStatusWithKeys_completion___block_invoke;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v22 = v15;
  v23 = v6;
  v24 = v7;
  v17 = v7;
  v18 = v6;
  v19 = v15;
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

- (void)_getDDMStatusWithKeys:(id)a3 withResult:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SUManagerServer *)self ddmManager];
  v7 = [v6 activeDDMDeclarationEnfrocedSU];

  v8 = [(SUManagerServer *)self manager];
  v9 = [v8 isDownloading];

  v10 = [(SUManagerServer *)self manager];
  v11 = [v10 download];
  v12 = [v11 progress];
  v13 = [v12 isDone];

  v14 = [(SUManagerServer *)self manager];
  v15 = [v14 isInstalling];

  v16 = [(SUManagerServer *)self manager];
  v17 = [v16 download];
  v18 = [v17 descriptor];

  v19 = [MEMORY[0x277CBEB38] dictionary];
  v20 = *MEMORY[0x277D64218];
  if ((v15 & 1) != 0 || (v13 & 1) != 0 || v9)
  {
    v21 = MEMORY[0x277D64210];
    v22 = MEMORY[0x277D64220];
    if (!v13)
    {
      v22 = MEMORY[0x277D64208];
    }

    if (!v15)
    {
      v21 = v22;
    }

    v23 = *v21;

    v20 = v23;
  }

  [v19 setSafeObject:v20 forKey:*MEMORY[0x277D64238]];
  v24 = [MEMORY[0x277CBEB38] dictionary];
  v25 = [v18 productVersion];
  if ([v18 isSplatOnly])
  {
    v26 = [v18 productVersionExtra];

    if (v26)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = [v18 productVersionExtra];
      v29 = [v27 stringWithFormat:@"%@ %@", v25, v28];

      v25 = v29;
    }
  }

  v30 = [v18 productBuildVersion];
  [v24 setSafeObject:v30 forKey:*MEMORY[0x277D64328]];

  [v24 setSafeObject:v25 forKey:*MEMORY[0x277D64358]];
  v31 = [v7 enforcedInstallDate];
  v32 = [v31 description];
  [v24 setSafeObject:v32 forKey:*MEMORY[0x277D64348]];

  [v19 setSafeObject:v24 forKey:*MEMORY[0x277D64240]];
  v33 = +[SUState currentState];
  v34 = [v33 ddmPersistedError];

  if (!v34)
  {
    v38 = *MEMORY[0x277D64330];
    v39[0] = &unk_287B6F610;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  }

  [v19 setSafeObject:v34 forKey:*MEMORY[0x277D64228]];
  v35 = [(SUManagerServer *)self _installReasons];
  [v19 setSafeObject:v35 forKey:*MEMORY[0x277D64230]];

  v36 = [v19 copy];
  v5[2](v5, v36, 0);

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_installReasons
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(SUManagerServer *)self manager];
  v5 = [v4 installPolicy];

  v6 = [(SUManagerServer *)self manager];
  v7 = [v6 download];
  v8 = [v7 downloadOptions];

  v9 = [(SUManagerServer *)self manager];
  LODWORD(v7) = [v9 isInstalling];

  if (v7)
  {
    v10 = [v5 clientName];

    if (v10)
    {
      v11 = v5;
LABEL_9:
      v15 = [v11 clientName];
      v16 = [(SUManagerServer *)self installReasonForClientName:v15];

      if (v16)
      {
        [v3 addObject:v16];
      }

      goto LABEL_12;
    }
  }

  if ([v8 isAutoDownload])
  {
    v12 = [(SUManagerServer *)self autoInstallManager];
    v13 = [v12 isAutoUpdateEnabled];

    if (v13)
    {
      [v3 addObject:@"auto-update"];
    }
  }

  v14 = [v8 clientName];

  if (v14)
  {
    v11 = v8;
    goto LABEL_9;
  }

LABEL_12:
  v17 = [(SUManagerServer *)self manager];
  v18 = [v17 isInstallTonight];

  if (v18)
  {
    [v3 addObject:@"install-tonight"];
  }

  v19 = [(SUManagerServer *)self ddmManager];
  v20 = [v19 activeDDMDeclarationEnfrocedSU];

  if (v20)
  {
    [v3 addObject:@"declaration"];
  }

  v25 = *MEMORY[0x277D64338];
  v21 = [v3 allObjects];
  v26[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)installReasonForClientName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.Preferences"])
  {
    v5 = @"system-settings";
  }

  else if ([v4 isEqualToString:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.susuiservice.SUSUInstallAlertCFUserNotificationUIExtension") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.SoftwareUpdateServices.SUSFollowUpExtension"))
  {
    v5 = @"notification";
  }

  else if ([v4 isEqualToString:@"com.apple.purplebuddy"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.SetupAssistant") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.migrationpluginwrapper"))
  {
    v5 = @"setup-assistant";
  }

  else if ([v4 isEqualToString:@"dmd"])
  {
    v5 = @"mdm";
  }

  else if ([v4 isEqualToString:@"com.apple.softwareupdateservicesd"])
  {
    v7 = [(SUManagerServer *)self autoInstallManager];
    v8 = [v7 isAutoUpdateEnabled];

    if (v8)
    {
      v5 = @"auto-update";
    }

    else
    {
      v9 = [(SUManagerServer *)self manager];
      v10 = [v9 isInstallTonight];

      if (v10)
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

- (BOOL)mdmCommandConflictsWithDDM:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 isEqualToString:@"dmd"];
  if (v5)
  {
    v6 = [(SUManagerServer *)self ddmManager];
    v7 = [v6 activeDDMDeclarationEnfrocedSU];

    if (!v7)
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"MDM command conflicts with DDM"];
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

- (void)cancelDDMDeclaration:(id)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = [a3 declarationKey];
  [(SUManagerServer *)self cancelDDMDeclarationForKey:v7 completion:v6];
}

- (void)cancelDDMDeclarationForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer cancelDDMDeclarationForKey:completion:]");

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = &__block_literal_global_397;
  }

  v16 = [(SUManagerServer *)self _clientForCurrentConnection];
  v17 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUManagerServer_cancelDDMDeclarationForKey_completion___block_invoke_2;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v23 = v16;
  v24 = v6;
  v25 = v15;
  v18 = v15;
  v19 = v6;
  v20 = v16;
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

- (void)handleDDMDeclaration:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer handleDDMDeclaration:withResult:]");

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = &__block_literal_global_399;
  }

  v16 = [(SUManagerServer *)self _clientForCurrentConnection];
  v17 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerServer_handleDDMDeclaration_withResult___block_invoke_2;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v23 = v16;
  v24 = v6;
  v25 = v15;
  v18 = v15;
  v19 = v6;
  v20 = v16;
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

- (void)getDDMDeclarationWithHandler:(id)a3
{
  v4 = a3;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUManagerServer getDDMDeclarationWithHandler:]");

  if (!v4)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No handler given"];
    SULogInfo(@"[DDM] %s: %@", v12, v13, v14, v15, v16, v17, v18, "[SUManagerServer getDDMDeclarationWithHandler:]");

    v4 = &__block_literal_global_405;
  }

  v19 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUManagerServer_getDDMDeclarationWithHandler___block_invoke_2;
  block[3] = &unk_279CAA8D0;
  block[4] = self;
  v24 = v4;
  v20 = v4;
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

- (void)getDDMUpdateDescriptorWithHandler:(id)a3
{
  v4 = a3;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"in SUManagerServer"];
  SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUManagerServer getDDMUpdateDescriptorWithHandler:]");

  if (!v4)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No handler given"];
    SULogInfo(@"[DDM] %s: %@", v12, v13, v14, v15, v16, v17, v18, "[SUManagerServer getDDMUpdateDescriptorWithHandler:]");

    v4 = &__block_literal_global_411;
  }

  v19 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUManagerServer_getDDMUpdateDescriptorWithHandler___block_invoke_2;
  block[3] = &unk_279CAA8D0;
  block[4] = self;
  v24 = v4;
  v20 = v4;
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

- (void)getAllDeclarationsWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[SUUtility mainWorkQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SUManagerServer_getAllDeclarationsWithHandler___block_invoke;
    v6[3] = &unk_279CAA8D0;
    v6[4] = self;
    v7 = v4;
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

- (void)setDDMGlobalSettings:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SUManagerServer_setDDMGlobalSettings_completion___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)getDDMGlobalSettingsWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SUManagerServer_getDDMGlobalSettingsWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = v5;
    v17 = v4;
    v7 = v5;
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

- (void)getShouldDisableAutoInstallIOSUpdatesToggleWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility fastWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SUManagerServer_getShouldDisableAutoInstallIOSUpdatesToggleWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = v5;
    v17 = v4;
    v7 = v5;
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

- (void)getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility fastWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SUManagerServer_getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = v5;
    v17 = v4;
    v7 = v5;
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

- (void)getShouldDisableAutoInstallRSRToggleWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerServer *)self _clientForCurrentConnection];
    v6 = +[SUUtility fastWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SUManagerServer_getShouldDisableAutoInstallRSRToggleWithHandler___block_invoke;
    block[3] = &unk_279CAA8F8;
    block[4] = self;
    v16 = v5;
    v17 = v4;
    v7 = v5;
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

- (void)isInstallationKeybagRequired:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUManagerServer_isInstallationKeybagRequired___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)isInstallationKeybagRequiredForDescriptor:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SUManagerServer_isInstallationKeybagRequiredForDescriptor_result___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)isUpdateReadyForInstallationWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__SUManagerServer_isUpdateReadyForInstallationWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)installUpdateWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SUManagerServer_installUpdateWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SUManagerServer_installUpdateWithInstallOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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
  v3 = [(SUManagerServer *)self _clientForCurrentConnection];
  v4 = +[SUUtility fastWorkQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SUManagerServer_userAskedToDeferInstall__block_invoke;
  v6[3] = &unk_279CAA7C0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
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

- (void)slaVersion:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SUManagerServer_slaVersion___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)softwareUpdatePathRestriction:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerServer_softwareUpdatePathRestriction___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)isDelayingUpdates:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUManagerServer_isDelayingUpdates___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)delayEndDate:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SUManagerServer_delayEndDate___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)splatRollbackAllowed:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUManagerServer_splatRollbackAllowed___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)isSplatOnlyUpdateRollbackSuggested:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUManagerServer_isSplatOnlyUpdateRollbackSuggested___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)setMandatorySoftwareUpdateDictionary:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerServer_setMandatorySoftwareUpdateDictionary___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)getMandatorySoftwareUpdateDictionary:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerServer_getMandatorySoftwareUpdateDictionary___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)fetchInstallHistory:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerServer_fetchInstallHistory___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)currentAutoInstallOperationForecast:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerServer_currentAutoInstallOperationForecast___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)currentAutoInstallOperation:(BOOL)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = [(SUManagerServer *)self _clientForCurrentConnection];
  v8 = +[SUUtility mainWorkQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SUManagerServer_currentAutoInstallOperation_withResult___block_invoke;
  v11[3] = &unk_279CAB410;
  v11[4] = self;
  v12 = v7;
  v14 = a3;
  v13 = v6;
  v9 = v6;
  v10 = v7;
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

- (void)cancelAutoInstallOperation:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SUManagerServer_cancelAutoInstallOperation_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)consentToAutoInstallOperation:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SUManagerServer_consentToAutoInstallOperation_withResult___block_invoke;
  v13[3] = &unk_279CAB3C0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
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

- (void)currentPasscodePolicy:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUManagerServer_currentPasscodePolicy___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)isAutoUpdateEnabled:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerServer_isAutoUpdateEnabled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)isAutoUpdateScheduled:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUManagerServer_isAutoUpdateScheduled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)enableAutomaticUpdateV2:(BOOL)a3
{
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_enableAutomaticUpdateV2___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v9 = v5;
  v10 = a3;
  v7 = v5;
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

- (void)isAutomaticUpdateV2Enabled:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_isAutomaticUpdateV2Enabled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)enableAutomaticDownload:(BOOL)a3
{
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_enableAutomaticDownload___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v9 = v5;
  v10 = a3;
  v7 = v5;
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

- (void)isAutomaticDownloadEnabled:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility fastWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerServer_isAutomaticDownloadEnabled___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)registerCSInstallPredicatesOnDate:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUManagerServer_registerCSInstallPredicatesOnDate___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)presentAutoUpdateBanner:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerServer_presentAutoUpdateBanner___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)eligibleRollbackWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__SUManagerServer_eligibleRollbackWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_rollbackUpdateWithOptions_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)previousRollback:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SUManagerServer_previousRollback_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)isRollingBack:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerServer_isRollingBack___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)scheduleRollbackRebootForLater:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerServer_scheduleRollbackRebootForLater___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)setLastRollbackDescriptor:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerServer_setLastRollbackDescriptor_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)securityResponseRollbackSuggested:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerServer *)self _clientForCurrentConnection];
  v9 = +[SUUtility mainWorkQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SUManagerServer_securityResponseRollbackSuggested_withResult___block_invoke;
  v13[3] = &unk_279CAB438;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
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

- (void)createInstallationKeybag:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  SULogInfo(@"%s was called by a client", v8, v9, v10, v11, v12, v13, v14, "[SUManagerServer createInstallationKeybag:withResult:]");
  v15 = [(SUManagerServer *)self _clientForCurrentConnection];
  v16 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerServer_createInstallationKeybag_withResult___block_invoke;
  block[3] = &unk_279CAB438;
  block[4] = self;
  v21 = v15;
  v22 = v6;
  v23 = v7;
  v17 = v7;
  v18 = v6;
  v19 = v15;
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
  v3 = [(SUManagerServer *)self _clientForCurrentConnection];
  v4 = +[SUUtility mainWorkQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SUManagerServer_destroyInstallationKeybag__block_invoke;
  v6[3] = &unk_279CAA7C0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
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
  v3 = [(SUManagerServer *)self _clientForCurrentConnection];
  v4 = +[SUUtility mainWorkQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SUManagerServer_installServerConfiguration__block_invoke;
  v6[3] = &unk_279CAA7C0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __45__SUManagerServer_installServerConfiguration__block_invoke_2()
{
  v0 = [MEMORY[0x277D64168] sharedServerSettings];
  [v0 installServerSettings];
}

- (void)setExclusiveControl:(BOOL)a3
{
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerServer_setExclusiveControl___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v9 = v5;
  v10 = a3;
  v7 = v5;
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

- (void)writeKeepAliveFile:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUManagerServer_writeKeepAliveFile___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)recordSUAnalyticsEvent:(id)a3
{
  v4 = a3;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_recordSUAnalyticsEvent___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__SUManagerServer_recordSUAnalyticsEvent___block_invoke(uint64_t a1)
{
  v2 = SULogAnalytics();
  SULogInfoForSubsystem(v2, @"Saving event %@\n", v3, v4, v5, v6, v7, v8, *(a1 + 32));

  v9 = [*(a1 + 40) coreAnalyticsManager];
  [v9 setEvent:*(a1 + 32)];
}

- (void)submitSUAnalyticsEvent:(id)a3
{
  v4 = a3;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_submitSUAnalyticsEvent___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)submitSUAnalyticsEventsWithName:(id)a3
{
  v4 = a3;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUManagerServer_submitSUAnalyticsEventsWithName___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__SUManagerServer_submitSUAnalyticsEventsWithName___block_invoke(uint64_t a1)
{
  v2 = SULogAnalytics();
  SULogInfoForSubsystem(v2, @"Submitting all CoreAnalytics events matching name %@\n", v3, v4, v5, v6, v7, v8, *(a1 + 32));

  v9 = [*(a1 + 40) coreAnalyticsManager];
  [v9 submitEventsWithName:*(a1 + 32)];
}

- (void)rvGetCurrentNeRDInfoWithReply:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerServer *)self _clientForCurrentConnection];
  v6 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerServer_rvGetCurrentNeRDInfoWithReply___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
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

- (void)rvTriggerNeRDUpdate:(id)a3
{
  v4 = [(SUManagerServer *)self _clientForCurrentConnection];
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUManagerServer_rvTriggerNeRDUpdate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_sendLatestStatusForClient:(id)a3
{
  v7 = a3;
  v4 = [(SUManagerServer *)self manager];
  v5 = [v4 download];

  if (v5)
  {
    v6 = [v7 proxy];
    [v6 downloadProgressDidChange:v5];
  }
}

- (void)_clientMessagabilityDidChange:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUManagerServer__clientMessagabilityDidChange___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)_clientForegroundnessDidChange:(id)a3
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
  v3 = [MEMORY[0x277D64420] sharedDevice];
  v4 = [v3 isBootedOSSecureInternal];

  if (v4)
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

- (void)addClient:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SUManagerServer_addClient___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)removeClient:(id)a3
{
  v4 = a3;
  [v4 invalidate];
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SUManagerServer_removeClient___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)scanRequestDidStartForOptions:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUManagerServer_scanRequestDidStartForOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)scanRequestDidFinishForOptions:(id)a3 results:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SUManagerServer_scanRequestDidFinishForOptions_results_error___block_invoke;
  v15[3] = &unk_279CAB5B0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)scanDidCompleteForOptions:(id)a3 results:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__SUManagerServer_scanDidCompleteForOptions_results_error___block_invoke;
  v15[3] = &unk_279CAB5B0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)scanRequestDidFinishForOptions:(id)a3 update:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__SUManagerServer_scanRequestDidFinishForOptions_update_error___block_invoke;
  v15[3] = &unk_279CAB5B0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)scanDidCompleteWithNewUpdateAvailable:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SUManagerServer_scanDidCompleteWithNewUpdateAvailable_error___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)automaticDownloadDidFailToStartForNewUpdateAvailable:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SUManagerServer_automaticDownloadDidFailToStartForNewUpdateAvailable_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)downloadDidStart:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUManagerServer_downloadDidStart___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)downloadProgressDidChange:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUManagerServer_downloadProgressDidChange___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)downloadDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUManagerServer_downloadDidFail_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)downloadDidFinish:(id)a3 withInstallPolicy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerServer_downloadDidFinish_withInstallPolicy___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)downloadWasInvalidatedForNewUpdatesAvailable:(id)a3
{
  v4 = a3;
  v5 = +[SUScheduler sharedInstance];
  [v5 cancelInstallAlertRegistration];

  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SUManagerServer_downloadWasInvalidatedForNewUpdatesAvailable___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v9 = v4;
  v10 = self;
  v7 = v4;
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

- (void)clearingSpaceForDownload:(id)a3 clearing:(BOOL)a4
{
  v6 = a3;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUManagerServer_clearingSpaceForDownload_clearing___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
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

- (void)installWantsToStart:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerServer_installWantsToStart_completion___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)installDidStart:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUManagerServer_installDidStart___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)installDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUManagerServer_installDidFail_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
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

- (void)installDidFinish:(id)a3
{
  v4 = a3;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUManagerServer_installDidFinish___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)installPolicyDidChange:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_installPolicyDidChange___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)managedInstallationRequested:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUManagerServer_managedInstallationRequested___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)sendDDMDeclarationToUI:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_sendDDMDeclarationToUI___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)sendDDMGlobalSettingsToUI:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUManagerServer_sendDDMGlobalSettingsToUI___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)splatRollbackDetected:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SUManagerServer_splatRollbackDetected___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)installTonightScheduled:(BOOL)a3
{
  clientQueue = self->_clientQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SUManagerServer_installTonightScheduled___block_invoke;
  v4[3] = &unk_279CAAD00;
  v4[4] = self;
  v5 = a3;
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

- (void)rollbackReadyToStart:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__SUManagerServer_rollbackReadyToStart_options_completion___block_invoke;
  v15[3] = &unk_279CAB438;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)rollbackDidStart:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUManagerServer_rollbackDidStart___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)rollbackDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUManagerServer_rollbackDidFail_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)rollbackSucceeded:(id)a3
{
  v4 = a3;
  v5 = +[SUUtility mainWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUManagerServer_rollbackSucceeded___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)rollbackReadyForReboot:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUManagerServer_rollbackReadyForReboot___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)presentingRecommendedUpdate:(id)a3 shouldPresent:(BOOL)a4
{
  v6 = a3;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUManagerServer_presentingRecommendedUpdate_shouldPresent___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
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

- (void)rollbackSuggested:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerServer_rollbackSuggested_info___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)isAnyClientInUserInteraction:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUManagerServer_isAnyClientInUserInteraction___block_invoke;
  v7[3] = &unk_279CAA8D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)autoInstallManager:(id)a3 operationWasConsented:(id)a4
{
  v5 = a4;
  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SUManagerServer_autoInstallManager_operationWasConsented___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
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

- (void)autoInstallManager:(id)a3 didCancelOperation:(id)a4
{
  v5 = a4;
  v6 = SULogBadging();
  SULogInfoForSubsystem(v6, @"Auto install operation cancelled..Dismissing AutoUpdateBanner", v7, v8, v9, v10, v11, v12, v15[0]);

  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SUManagerServer_autoInstallManager_didCancelOperation___block_invoke;
  v15[3] = &unk_279CAA7C0;
  v15[4] = self;
  v16 = v5;
  v14 = v5;
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

- (void)autoInstallManager:(id)a3 didExpireOperation:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUManagerServer_autoInstallManager_didExpireOperation_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
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

- (void)autoInstallManager:(id)a3 isReadyToInstall:(id)a4 withResult:(id)a5
{
  v7 = a4;
  v8 = a5;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SUManagerServer_autoInstallManager_isReadyToInstall_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
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

- (void)autoInstallManager:(id)a3 passcodePolicyChanged:(unint64_t)a4 forOperation:(id)a5
{
  v7 = a5;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SUManagerServer_autoInstallManager_passcodePolicyChanged_forOperation___block_invoke;
  block[3] = &unk_279CAA8A8;
  block[4] = self;
  v11 = v7;
  v12 = a4;
  v9 = v7;
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
    v14 = [v4 isKeepAliveEnabled];
    v22 = @"DISABLED";
    if (v14)
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
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  v3 = [v2 userInfo];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  if (-[SUManagerServer underExclusiveControl](self, "underExclusiveControl") && ([v5 valueForEntitlement:@"com.apple.softwareupdateservices.client.allowed"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, (v7 & 1) == 0))
  {
    v38 = 0u;
    v39 = 0u;
    if (v5)
    {
      [v5 auditToken];
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
    [v5 _setQueue:__connectionQueue];
    v9 = [[SUManagerServerClient alloc] initWithConnection:v5];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __62__SUManagerServer_Daemon__listener_shouldAcceptNewConnection___block_invoke;
    v32 = &unk_279CAA7C0;
    v33 = self;
    v34 = v9;
    v10 = v9;
    v11 = MEMORY[0x26D668B30](&v29);
    [v5 setInterruptionHandler:v11];
    [v5 setInvalidationHandler:v11];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B7E918];
    [v5 setRemoteObjectInterface:v12];

    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B77600];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0, v29, v30, v31, v32, v33}];
    v17 = 1;
    [v13 setClasses:v16 forSelector:sel_getAllDeclarationsWithHandler_ argumentIndex:0 ofReply:1];

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    [v13 setClasses:v20 forSelector:sel_fetchInstallHistory_ argumentIndex:0 ofReply:1];

    [v5 setExportedInterface:v13];
    [v5 setExportedObject:self];
    [v5 setUserInfo:v10];
    [v5 resume];
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