@interface SUSUISoftwareUpdateClientManager
- (BOOL)isAutoDownloadEnabled;
- (BOOL)isAutoInstallEnabled;
- (BOOL)isAutoInstallPreviousUserSettingsEnabled;
- (BOOL)isAutoUpdateArmedAndReady;
- (BOOL)isAutoUpdateScheduled;
- (BOOL)isAutomaticInstallSystemDataFilesEnabled;
- (BOOL)isRollingBack;
- (BOOL)isSecurityResponseEnabled;
- (BOOL)previousUserSpecifiedSecurityResponseEnabled;
- (SUManagerClient)suManagerClient;
- (SUSUISoftwareUpdateClientManager)initWithDelegate:(id)a3 completionQueue:(id)a4;
- (SUSUISoftwareUpdateClientManagerDelegate)delegate;
- (id)eligibleRollback;
- (void)_queue_cancelAutoInstall;
- (void)_queue_setAutoUpdateScheduled:(BOOL)a3;
- (void)_queue_setEligibleRollback:(id)a3;
- (void)_queue_setRollingBack:(BOOL)a3;
- (void)autoInstallOperationDidConsent:(id)a3;
- (void)autoInstallOperationIsReadyToInstall:(id)a3 withResponse:(id)a4;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)a3 passcodePolicyType:(unint64_t)a4;
- (void)autoInstallOperationWasCancelled:(id)a3;
- (void)cancelAutoInstall;
- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5;
- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5;
- (void)client:(id)a3 downloadDidStart:(id)a4;
- (void)client:(id)a3 downloadProgressDidChange:(id)a4;
- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4;
- (void)client:(id)a3 handleUIForDDMDeclaration:(id)a4;
- (void)client:(id)a3 inUserInteraction:(id)a4;
- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 installDidFinish:(id)a4;
- (void)client:(id)a3 installDidStart:(id)a4;
- (void)client:(id)a3 installTonightScheduled:(BOOL)a4 operationID:(id)a5;
- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 rollbackDidFinish:(id)a4;
- (void)client:(id)a3 rollbackDidStart:(id)a4;
- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6;
- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4;
- (void)createInstallationKeybagWithOptions:(id)a3 completion:(id)a4;
- (void)currentAutoInstallOperation:(BOOL)a3 completion:(id)a4;
- (void)dealloc;
- (void)destroyInstallationKeybag:(id)a3;
- (void)download:(id)a3;
- (void)enableAutoDownload:(BOOL)a3;
- (void)enableAutoInstall:(BOOL)a3;
- (void)enableAutoInstallPreviousUserSettings:(BOOL)a3;
- (void)enableAutomaticInstallSystemDataFiles:(BOOL)a3;
- (void)getDDMDeclaration:(id)a3;
- (void)installUpdateWithOptions:(id)a3 completion:(id)a4;
- (void)isClearingSpaceForDownload:(id)a3;
- (void)isDelayingUpdates:(id)a3;
- (void)isInstallationKeybagRequired:(id)a3;
- (void)isInstallationKeybagRequiredForDescriptor:(id)a3 result:(id)a4;
- (void)isScanning:(id)a3;
- (void)isUpdateReadyForInstallationWithOptions:(id)a3 completion:(id)a4;
- (void)purgeDownload:(id)a3;
- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)a3;
- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)a3;
- (void)queue_setAutoDownloadEnabled:(BOOL)a3;
- (void)queue_setAutoInstallEnabled:(BOOL)a3;
- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)a3;
- (void)queue_setSecurityResponseEnabled:(BOOL)a3;
- (void)rollbackUpdateWithOptions:(id)a3 completion:(id)a4;
- (void)scanforUpdatesWithOptions:(id)a3 completion:(id)a4;
- (void)setAutoUpdateScheduled:(BOOL)a3;
- (void)setEligibleRollback:(id)a3;
- (void)setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)a3;
- (void)setRollingBack:(BOOL)a3 rollback:(id)a4;
- (void)setSecurityResponseEnabled:(BOOL)a3;
- (void)softwareUpdatePathRestriction:(id)a3;
- (void)startDownloadWithOptions:(id)a3 completion:(id)a4;
- (void)updateDownloadOptions:(id)a3 completion:(id)a4;
- (void)updatesDownloadable:(id)a3 alternateUpdate:(id)a4 completion:(id)a5;
@end

@implementation SUSUISoftwareUpdateClientManager

- (SUSUISoftwareUpdateClientManager)initWithDelegate:(id)a3 completionQueue:(id)a4
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v4 = v44;
  v44 = 0;
  v41.receiver = v4;
  v41.super_class = SUSUISoftwareUpdateClientManager;
  v21 = [(SUSUISoftwareUpdateClientManager *)&v41 init];
  v44 = v21;
  objc_storeStrong(&v44, v21);
  if (v21)
  {
    v5 = dispatch_queue_create("com.apple.SoftwareUpdateSettings.ClientManagerWorkQueue", 0);
    workQueue = v44->_workQueue;
    v44->_workQueue = v5;
    MEMORY[0x277D82BD8](workQueue);
    objc_storeWeak(&v44->_delegate, location[0]);
    objc_storeStrong(&v44->_completionQueue, v42);
    if (!v44->_completionQueue)
    {
      v19 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
      v8 = v19;
      completionQueue = v44->_completionQueue;
      v44->_completionQueue = v8;
      MEMORY[0x277D82BD8](completionQueue);
    }

    v15 = +[SUSUIServiceManager sharedInstance];
    v40 = [(SUSUIServiceManager *)v15 classForService:objc_opt_class()];
    MEMORY[0x277D82BD8](v15);
    v10 = [v40 alloc];
    v11 = [v10 initWithDelegate:v44 queue:v44->_completionQueue clientType:1];
    suClient = v44->_suClient;
    v44->_suClient = v11;
    MEMORY[0x277D82BD8](suClient);
    v44->_autoUpdateScheduled = 0;
    v44->_rollingBack = 0;
    objc_storeStrong(&v44->_rollbackDescriptor, 0);
    v16 = v44->_suClient;
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke;
    v38 = &unk_279CBE0E8;
    v39 = MEMORY[0x277D82BE0](v44);
    [(SUManagerClient *)v16 isAutoUpdateScheduled:&v34];
    v17 = v44->_suClient;
    v28 = MEMORY[0x277D85DD0];
    v29 = -1073741824;
    v30 = 0;
    v31 = __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke_289;
    v32 = &unk_279CBE110;
    v33 = MEMORY[0x277D82BE0](v44);
    [(SUManagerClient *)v17 isRollingBack:&v28];
    v18 = v44->_suClient;
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke_291;
    v26 = &unk_279CBE138;
    v27 = MEMORY[0x277D82BE0](v44);
    [(SUManagerClient *)v18 eligibleRollbackWithOptions:0 withResult:&v22];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v39, 0);
  }

  v14 = MEMORY[0x277D82BE0](v44);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v44, 0);
  return v14;
}

void __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, location);
      _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "Error checking isAutoUpdateScheduled: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  [(objc_class *)a1[4].isa setAutoUpdateScheduled:v6 & 1];
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke_289(NSObject *a1, char a2, id obj, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  oslog[1] = a1;
  if (v7)
  {
    oslog[0] = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, v7);
      _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "Error checking isRollingBack: %@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  [(objc_class *)a1[4].isa setRollingBack:v9 & 1 rollback:location];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke_291(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, v6);
      _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "Error checking eligibleRollbackWithOptions: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  [(objc_class *)a1[4].isa setEligibleRollback:location[0]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [(SUManagerClient *)self->_suClient delegate];
  MEMORY[0x277D82BD8](v2);
  if (v2 == v5)
  {
    [(SUManagerClient *)v5->_suClient setDelegate:0];
  }

  [(SUManagerClient *)v5->_suClient invalidate];
  v3.receiver = v5;
  v3.super_class = SUSUISoftwareUpdateClientManager;
  [(SUSUISoftwareUpdateClientManager *)&v3 dealloc];
}

- (SUManagerClient)suManagerClient
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17[0] = 0;
  queue = self->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __51__SUSUISoftwareUpdateClientManager_suManagerClient__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](self);
  dispatch_sync(queue, &v5);
  v4 = MEMORY[0x277D82BE0](v12[5]);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);

  return v4;
}

- (void)scanforUpdatesWithOptions:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __73__SUSUISoftwareUpdateClientManager_scanforUpdatesWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)isScanning:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __47__SUSUISoftwareUpdateClientManager_isScanning___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)softwareUpdatePathRestriction:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __66__SUSUISoftwareUpdateClientManager_softwareUpdatePathRestriction___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)isDelayingUpdates:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUISoftwareUpdateClientManager_isDelayingUpdates___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)download:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __45__SUSUISoftwareUpdateClientManager_download___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)updatesDownloadable:(id)a3 alternateUpdate:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  queue = v20->_workQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __83__SUSUISoftwareUpdateClientManager_updatesDownloadable_alternateUpdate_completion___block_invoke;
  v12 = &unk_279CBE1B0;
  v13 = MEMORY[0x277D82BE0](v20);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v18);
  v16 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __83__SUSUISoftwareUpdateClientManager_updatesDownloadable_alternateUpdate_completion___block_invoke(void *a1)
{
  v24 = a1;
  v23 = a1;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v2 = *(a1[4] + 24);
  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  v17 = 0;
  [v2 areUpdatesDownloadableWithOptions:v3 alternateUpdateOptions:v4 preferredUpdateDownloadable:&v22 alternateUpdateDownloadable:&v21 preferredUpdateError:&v18 alternateUpdateError:&v17];
  objc_storeStrong(&v20, v18);
  objc_storeStrong(&v19, v17);
  if (a1[7])
  {
    queue = *(a1[4] + 16);
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __83__SUSUISoftwareUpdateClientManager_updatesDownloadable_alternateUpdate_completion___block_invoke_2;
    v11 = &unk_279CB9488;
    v14 = MEMORY[0x277D82BE0](a1[7]);
    v15 = v22 & 1;
    v16 = v21 & 1;
    v12 = MEMORY[0x277D82BE0](v20);
    v13 = MEMORY[0x277D82BE0](v19);
    dispatch_async(queue, &v7);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
}

uint64_t __83__SUSUISoftwareUpdateClientManager_updatesDownloadable_alternateUpdate_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 57);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56) & 1);
}

- (void)startDownloadWithOptions:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__SUSUISoftwareUpdateClientManager_startDownloadWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)updateDownloadOptions:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __69__SUSUISoftwareUpdateClientManager_updateDownloadOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)isClearingSpaceForDownload:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__SUSUISoftwareUpdateClientManager_isClearingSpaceForDownload___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isAutoDownloadEnabled
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __57__SUSUISoftwareUpdateClientManager_isAutoDownloadEnabled__block_invoke;
  v9 = &unk_279CB99D8;
  v10 = &v11;
  dispatch_sync(workQueue, &block);
  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __57__SUSUISoftwareUpdateClientManager_isAutoDownloadEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v3 isAutomaticDownloadEnabled];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutoDownload:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__SUSUISoftwareUpdateClientManager_enableAutoDownload___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = v11;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setAutoDownloadEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  [v3 enableAutomaticDownload:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)isUpdateReadyForInstallationWithOptions:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __87__SUSUISoftwareUpdateClientManager_isUpdateReadyForInstallationWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)installUpdateWithOptions:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__SUSUISoftwareUpdateClientManager_installUpdateWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)currentAutoInstallOperation:(BOOL)a3 completion:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  queue = v16->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke;
  v9 = &unk_279CBE228;
  v10 = MEMORY[0x277D82BE0](v16);
  v12 = v14;
  v11 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v3 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v4 = MEMORY[0x277D82BE0](*(a1 + 32));
  [v3 currentAutoInstallOperation:v2 & 1 withResult:?];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);
}

void __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[1] = a1;
  if (location[0] && !v25)
  {
    v4 = *(a1[4] + 24);
    v3 = location[0];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke_4;
    v14 = &unk_279CBE1D8;
    v15 = MEMORY[0x277D82BE0](a1[4]);
    v16 = MEMORY[0x277D82BE0](location[0]);
    v17 = MEMORY[0x277D82BE0](a1[5]);
    [v4 _consentAutoInstallOperation:v3 withResult:&v10];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v18 = 0;
  }

  else
  {
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 56));
    v7 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](WeakRetained);
    if (v7)
    {
      queue = *(a1[4] + 16);
      v19 = MEMORY[0x277D85DD0];
      v20 = -1073741824;
      v21 = 0;
      v22 = __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke_3;
      v23 = &unk_279CB93E8;
      v24[0] = MEMORY[0x277D82BE0](a1[4]);
      dispatch_async(queue, &v19);
      objc_storeStrong(v24, 0);
    }

    v18 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

uint64_t __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v5 = objc_loadWeakRetained((v3 + 48));
  [WeakRetained manager:v3 autoUpdateScheduleStateChanged:v4 & 1 autoInstallOperation:?];
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

void __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke_4(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  objc_storeWeak((*(a1 + 32) + 48), *(a1 + 40));
  *(*(a1 + 32) + 32) = *(a1 + 40) != 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained setDelegate:*(a1 + 32)];
  MEMORY[0x277D82BD8](WeakRetained);
  if (*(a1 + 40))
  {
    if (v17)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    [*(a1 + 40) setAgreementStatus:v3];
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  v6 = objc_loadWeakRetained((*(a1 + 32) + 56));
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    queue = *(*(a1 + 32) + 16);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke_5;
    v14 = &unk_279CB93E8;
    v15[0] = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v10);
    objc_storeStrong(v15, 0);
  }

  objc_storeStrong(&location, 0);
}

uint64_t __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v5 = objc_loadWeakRetained((v3 + 48));
  [WeakRetained manager:v3 autoUpdateScheduleStateChanged:v4 & 1 autoInstallOperation:?];
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (BOOL)isAutoInstallEnabled
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__SUSUISoftwareUpdateClientManager_isAutoInstallEnabled__block_invoke;
  v9 = &unk_279CB99D8;
  v10 = &v11;
  dispatch_sync(workQueue, &block);
  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __56__SUSUISoftwareUpdateClientManager_isAutoInstallEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v3 isAutomaticUpdateV2Enabled];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutoInstall:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUISoftwareUpdateClientManager_enableAutoInstall___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = v11;
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setAutoInstallEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  [v3 enableAutomaticUpdateV2:a3];
  MEMORY[0x277D82BD8](v3);
}

- (BOOL)isAutoInstallPreviousUserSettingsEnabled
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __76__SUSUISoftwareUpdateClientManager_isAutoInstallPreviousUserSettingsEnabled__block_invoke;
  v9 = &unk_279CB99D8;
  v10 = &v11;
  dispatch_sync(workQueue, &block);
  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __76__SUSUISoftwareUpdateClientManager_isAutoInstallPreviousUserSettingsEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v3 previousUserSpecifiedAutomaticUpdateV2Enabled];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutoInstallPreviousUserSettings:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __74__SUSUISoftwareUpdateClientManager_enableAutoInstallPreviousUserSettings___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = v11;
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  [v3 enablePreviousUserSpecifiedAutomaticUpdateV2:a3];
  MEMORY[0x277D82BD8](v3);
}

- (BOOL)isSecurityResponseEnabled
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __61__SUSUISoftwareUpdateClientManager_isSecurityResponseEnabled__block_invoke;
  v9 = &unk_279CB99D8;
  v10 = &v11;
  dispatch_sync(workQueue, &block);
  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __61__SUSUISoftwareUpdateClientManager_isSecurityResponseEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v3 autoInstallSecurityResponse];
  return MEMORY[0x277D82BD8](v3);
}

- (void)setSecurityResponseEnabled:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__SUSUISoftwareUpdateClientManager_setSecurityResponseEnabled___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = v11;
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setSecurityResponseEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  [v3 enableAutoInstallSecurityResponse:a3];
  MEMORY[0x277D82BD8](v3);
}

- (BOOL)previousUserSpecifiedSecurityResponseEnabled
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __80__SUSUISoftwareUpdateClientManager_previousUserSpecifiedSecurityResponseEnabled__block_invoke;
  v9 = &unk_279CB99D8;
  v10 = &v11;
  dispatch_sync(workQueue, &block);
  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __80__SUSUISoftwareUpdateClientManager_previousUserSpecifiedSecurityResponseEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v3 previousUserSpecifiedAutoInstallSecurityResponse];
  return MEMORY[0x277D82BD8](v3);
}

- (void)setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __83__SUSUISoftwareUpdateClientManager_setPreviousUserSpecifiedSecurityResponseStatus___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = v11;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  [v3 enablePreviousUserSpecifiedAutoInstallSecurityResponse:a3];
  MEMORY[0x277D82BD8](v3);
}

- (BOOL)isAutomaticInstallSystemDataFilesEnabled
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __76__SUSUISoftwareUpdateClientManager_isAutomaticInstallSystemDataFilesEnabled__block_invoke;
  v9 = &unk_279CB99D8;
  v10 = &v11;
  dispatch_sync(workQueue, &block);
  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __76__SUSUISoftwareUpdateClientManager_isAutomaticInstallSystemDataFilesEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v3 autoInstallSystemAndDataFiles];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutomaticInstallSystemDataFiles:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __74__SUSUISoftwareUpdateClientManager_enableAutomaticInstallSystemDataFiles___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = v11;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [MEMORY[0x277D648D0] sharedInstance];
  [v3 enableAutoInstallSystemAndDataFiles:a3];
  MEMORY[0x277D82BD8](v3);
}

- (BOOL)isAutoUpdateArmedAndReady
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __61__SUSUISoftwareUpdateClientManager_isAutoUpdateArmedAndReady__block_invoke;
  v9 = &unk_279CBE250;
  v10[0] = MEMORY[0x277D82BE0](self);
  v10[1] = &v11;
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __61__SUSUISoftwareUpdateClientManager_isAutoUpdateArmedAndReady__block_invoke(uint64_t result)
{
  v1 = result;
  v5 = 0;
  v3 = 0;
  v2 = 0;
  if (*(*(result + 32) + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(result + 32) + 48));
    v5 = 1;
    result = [WeakRetained isCanceled];
    v2 = 0;
    if ((result & 1) == 0)
    {
      v4 = objc_loadWeakRetained((*(v1 + 32) + 48));
      v3 = 1;
      result = [v4 isExpired];
      v2 = result ^ 1;
    }
  }

  if (v3)
  {
    result = MEMORY[0x277D82BD8](v4);
  }

  if (v5)
  {
    result = MEMORY[0x277D82BD8](WeakRetained);
  }

  if (v2)
  {
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isAutoUpdateScheduled
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __57__SUSUISoftwareUpdateClientManager_isAutoUpdateScheduled__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](self);
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (void)setAutoUpdateScheduled:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__SUSUISoftwareUpdateClientManager_setAutoUpdateScheduled___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = v11;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)_queue_setAutoUpdateScheduled:(BOOL)a3
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if (v21->_autoUpdateScheduled != v19)
  {
    v21->_autoUpdateScheduled = v19;
    if (v21->_autoUpdateScheduled)
    {
      suClient = v21->_suClient;
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke;
      v17 = &unk_279CBE278;
      v18 = MEMORY[0x277D82BE0](v21);
      [(SUManagerClient *)suClient currentAutoInstallOperation:0 withResult:&v13];
      objc_storeStrong(&v18, 0);
    }

    else
    {
      objc_storeWeak(&v21->_autoInstallOperation, 0);
      WeakRetained = objc_loadWeakRetained(&v21->_delegate);
      v5 = objc_opt_respondsToSelector();
      MEMORY[0x277D82BD8](WeakRetained);
      if (v5)
      {
        queue = v21->_completionQueue;
        v7 = MEMORY[0x277D85DD0];
        v8 = -1073741824;
        v9 = 0;
        v10 = __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke_4;
        v11 = &unk_279CB93E8;
        v12 = MEMORY[0x277D82BE0](v21);
        dispatch_async(queue, &v7);
        objc_storeStrong(&v12, 0);
      }
    }
  }
}

void __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  queue = *(a1[4] + 8);
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke_2;
  v10 = &unk_279CB9410;
  v11 = MEMORY[0x277D82BE0](a1[4]);
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke_2(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  objc_storeWeak((*(a1 + 32) + 48), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained setDelegate:*(a1 + 32)];
  MEMORY[0x277D82BD8](WeakRetained);
  v4 = objc_loadWeakRetained((*(a1 + 32) + 56));
  v5 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v4);
  if (v5)
  {
    queue = *(*(a1 + 32) + 16);
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke_3;
    v10 = &unk_279CB93E8;
    v11[0] = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v6);
    objc_storeStrong(v11, 0);
  }
}

uint64_t __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v5 = objc_loadWeakRetained((v3 + 48));
  [WeakRetained manager:v3 autoUpdateScheduleStateChanged:v4 & 1 autoInstallOperation:?];
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v5 = objc_loadWeakRetained((v3 + 48));
  [WeakRetained manager:v3 autoUpdateScheduleStateChanged:v4 & 1 autoInstallOperation:?];
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)cancelAutoInstall
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_workQueue;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __53__SUSUISoftwareUpdateClientManager_cancelAutoInstall__block_invoke;
  v7 = &unk_279CB93E8;
  v8[0] = MEMORY[0x277D82BE0](self);
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_queue_cancelAutoInstall
{
  v8 = self;
  location[1] = a2;
  dispatch_assert_queue_V2(self->_workQueue);
  location[0] = _SUSUILoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_26AC94000, log, type, "Canceling auto install", v5, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained(&v8->_autoInstallOperation);
  [WeakRetained cancel];
  MEMORY[0x277D82BD8](WeakRetained);
  [(SUSUISoftwareUpdateClientManager *)v8 _queue_setAutoUpdateScheduled:0];
}

- (id)eligibleRollback
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17[0] = 0;
  queue = self->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __52__SUSUISoftwareUpdateClientManager_eligibleRollback__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](self);
  dispatch_sync(queue, &v5);
  v4 = MEMORY[0x277D82BE0](v12[5]);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);

  return v4;
}

- (void)setEligibleRollback:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __56__SUSUISoftwareUpdateClientManager_setEligibleRollback___block_invoke;
  v8 = &unk_279CB9410;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_queue_setEligibleRollback:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v5->_workQueue);
  if (([(SURollbackDescriptor *)v5->_rollbackDescriptor isEqual:location[0]]& 1) == 0)
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v6, location[0]);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "Settings eligibleRollback to: %@", v6, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v5->_rollbackDescriptor, location[0]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)rollbackUpdateWithOptions:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __73__SUSUISoftwareUpdateClientManager_rollbackUpdateWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isRollingBack
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __49__SUSUISoftwareUpdateClientManager_isRollingBack__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](self);
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (void)setRollingBack:(BOOL)a3 rollback:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  queue = v16->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __60__SUSUISoftwareUpdateClientManager_setRollingBack_rollback___block_invoke;
  v9 = &unk_279CBE2A0;
  v10 = MEMORY[0x277D82BE0](v16);
  v12 = v14;
  v11 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void __60__SUSUISoftwareUpdateClientManager_setRollingBack_rollback___block_invoke(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  [*(a1 + 32) _queue_setRollingBack:*(a1 + 48) & 1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v4 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v4)
  {
    queue = *(*(a1 + 32) + 16);
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __60__SUSUISoftwareUpdateClientManager_setRollingBack_rollback___block_invoke_2;
    v9 = &unk_279CBE2A0;
    v10 = MEMORY[0x277D82BE0](*(a1 + 32));
    v12 = *(a1 + 48) & 1;
    v11 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v5);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
  }
}

uint64_t __60__SUSUISoftwareUpdateClientManager_setRollingBack_rollback___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained manager:*(a1 + 32) rollingBackStateChanged:*(a1 + 48) & 1 rollback:*(a1 + 40)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_queue_setRollingBack:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = self;
  v6 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if (v7->_rollingBack != v5)
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v8, v3);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "Setting rollingBack: %@", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v7->_rollingBack = v5;
  }

  *MEMORY[0x277D85DE8];
}

- (void)purgeDownload:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __50__SUSUISoftwareUpdateClientManager_purgeDownload___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)isInstallationKeybagRequired:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __65__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequired___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __65__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequired___block_invoke(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v10 = [*(*(a1 + 32) + 24) isInstallationKeybagRequired];
  if (*(a1 + 40))
  {
    queue = *(*(a1 + 32) + 16);
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __65__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequired___block_invoke_2;
    v7 = &unk_279CB9730;
    v8 = MEMORY[0x277D82BE0](*(a1 + 40));
    v9 = v10 & 1;
    dispatch_async(queue, &v3);
    objc_storeStrong(&v8, 0);
  }
}

- (void)isInstallationKeybagRequiredForDescriptor:(id)a3 result:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __85__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequiredForDescriptor_result___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __85__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequiredForDescriptor_result___block_invoke(void *a1)
{
  v12 = a1;
  v11 = a1;
  v10 = [*(a1[4] + 24) isInstallationKeybagRequiredForDescriptor:a1[5]];
  if (a1[6])
  {
    queue = *(a1[4] + 16);
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __85__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequiredForDescriptor_result___block_invoke_2;
    v7 = &unk_279CB9730;
    v8 = MEMORY[0x277D82BE0](a1[6]);
    v9 = v10 & 1;
    dispatch_async(queue, &v3);
    objc_storeStrong(&v8, 0);
  }
}

- (void)createInstallationKeybagWithOptions:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __83__SUSUISoftwareUpdateClientManager_createInstallationKeybagWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](v16);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __83__SUSUISoftwareUpdateClientManager_createInstallationKeybagWithOptions_completion___block_invoke(void *a1)
{
  v12 = a1;
  v11 = a1;
  v10 = [*(a1[4] + 24) createInstallationKeybagWithOptions:a1[5]];
  if (a1[6])
  {
    queue = *(a1[4] + 16);
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __83__SUSUISoftwareUpdateClientManager_createInstallationKeybagWithOptions_completion___block_invoke_2;
    v7 = &unk_279CB9730;
    v8 = MEMORY[0x277D82BE0](a1[6]);
    v9 = v10 & 1;
    dispatch_async(queue, &v3);
    objc_storeStrong(&v8, 0);
  }
}

uint64_t __83__SUSUISoftwareUpdateClientManager_createInstallationKeybagWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 0;
  if (v3)
  {
    result = (*(v2 + 16))(v2, *(a1 + 40) & 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x277D64908] errorWithCode:82];
    v4 = 1;
    result = (*(v2 + 16))(v2, v3 & 1, v5);
  }

  if (v4)
  {
    return MEMORY[0x277D82BD8](v5);
  }

  return result;
}

- (void)destroyInstallationKeybag:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __62__SUSUISoftwareUpdateClientManager_destroyInstallationKeybag___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __62__SUSUISoftwareUpdateClientManager_destroyInstallationKeybag___block_invoke(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  [*(a1[4] + 24) destroyInstallationKeybag];
  if (a1[5])
  {
    queue = *(a1[4] + 16);
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __62__SUSUISoftwareUpdateClientManager_destroyInstallationKeybag___block_invoke_2;
    v7 = &unk_279CB9438;
    v8[0] = MEMORY[0x277D82BE0](a1[5]);
    dispatch_async(queue, &v3);
    objc_storeStrong(v8, 0);
  }
}

- (void)getDDMDeclaration:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUISoftwareUpdateClientManager_getDDMDeclaration___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __54__SUSUISoftwareUpdateClientManager_getDDMDeclaration___block_invoke(void *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = *(a1[4] + 24);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __54__SUSUISoftwareUpdateClientManager_getDDMDeclaration___block_invoke_2;
  v7 = &unk_279CBE2C8;
  v9[0] = MEMORY[0x277D82BE0](a1[5]);
  v8 = MEMORY[0x277D82BE0](a1[4]);
  [v2 getDDMDeclarationWithHandler:?];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
}

void __54__SUSUISoftwareUpdateClientManager_getDDMDeclaration___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  if (a1[5])
  {
    queue = *(a1[4] + 16);
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __54__SUSUISoftwareUpdateClientManager_getDDMDeclaration___block_invoke_3;
    v10 = &unk_279CB97A8;
    v13[0] = MEMORY[0x277D82BE0](a1[5]);
    v11 = MEMORY[0x277D82BE0](location[0]);
    v12 = MEMORY[0x277D82BE0](v14);
    dispatch_async(queue, &v6);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  dispatch_assert_queue_V2(v10->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v10->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&v10->_delegate);
    [v4 manager:v10 scanRequestDidStartForOptions:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = 0;
  objc_storeStrong(&v12, a6);
  dispatch_assert_queue_V2(v16->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v16->_delegate);
  v11 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v11)
  {
    v6 = objc_loadWeakRetained(&v16->_delegate);
    [v6 manager:v16 scanRequestDidFinishForOptions:v14 results:v13 error:v12];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadDidStart:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  dispatch_assert_queue_V2(v10->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v10->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&v10->_delegate);
    [v4 manager:v10 downloadDidStart:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadProgressDidChange:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  dispatch_assert_queue_V2(v10->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v10->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&v10->_delegate);
    [v4 manager:v10 downloadProgressDidChange:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  dispatch_assert_queue_V2(v10->_completionQueue);
  [(SUSUISoftwareUpdateClientManager *)v10 setAutoUpdateScheduled:0];
  WeakRetained = objc_loadWeakRetained(&v10->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&v10->_delegate);
    [v4 manager:v10 downloadWasInvalidatedForNewUpdatesAvailable:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  dispatch_assert_queue_V2(v13->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v13->_delegate);
  v9 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v9)
  {
    v5 = objc_loadWeakRetained(&v13->_delegate);
    [v5 manager:v13 downloadDidFinish:v11 withInstallPolicy:v10];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  dispatch_assert_queue_V2(v13->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v13->_delegate);
  v9 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v9)
  {
    v5 = objc_loadWeakRetained(&v13->_delegate);
    [v5 manager:v13 downloadDidFail:v11 withError:v10];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installDidStart:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  dispatch_assert_queue_V2(v10->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v10->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&v10->_delegate);
    [v4 manager:v10 installDidStart:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  dispatch_assert_queue_V2(v13->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v13->_delegate);
  v9 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v9)
  {
    v5 = objc_loadWeakRetained(&v13->_delegate);
    [v5 manager:v13 installDidFail:v11 withError:v10];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installDidFinish:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  dispatch_assert_queue_V2(v10->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&v10->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&v10->_delegate);
    [v4 manager:v10 installDidFinish:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installTonightScheduled:(BOOL)a4 operationID:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = 0;
  objc_storeStrong(&v7, a5);
  dispatch_assert_queue_V2(v10[2]);
  [(dispatch_queue_t *)v10 setAutoUpdateScheduled:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 rollbackDidStart:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  dispatch_assert_queue_V2(v8[2]);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_8_66(v9, "[SUSUISoftwareUpdateClientManager client:rollbackDidStart:]", v6);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)v8 setRollingBack:1 rollback:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 rollbackDidFinish:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  dispatch_assert_queue_V2(v8[2]);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_8_66(v9, "[SUSUISoftwareUpdateClientManager client:rollbackDidFinish:]", v6);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)v8 setRollingBack:0 rollback:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  dispatch_assert_queue_V2(v11[2]);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_34_8_66_8_64(v12, "[SUSUISoftwareUpdateClientManager client:rollbackDidFail:withError:]", v9, v8);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@\n Error: %@", v12, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)v11 setRollingBack:0 rollback:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 inUserInteraction:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  dispatch_assert_queue_V2(v11->_completionQueue);
  v8 = _SUSUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_34(v12, "[SUSUISoftwareUpdateClientManager client:inUserInteraction:]");
    _os_log_impl(&dword_26AC94000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", v12, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  WeakRetained = objc_loadWeakRetained(&v11->_delegate);
  v6 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v6)
  {
    v4 = objc_loadWeakRetained(&v11->_delegate);
    [v4 manager:v11 inUserInteraction:v9];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 handleUIForDDMDeclaration:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  dispatch_assert_queue_V2(v11->_completionQueue);
  v8 = _SUSUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_8_66(v12, "[SUSUISoftwareUpdateClientManager client:handleUIForDDMDeclaration:]", v9);
    _os_log_impl(&dword_26AC94000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", v12, 0x16u);
  }

  objc_storeStrong(&v8, 0);
  WeakRetained = objc_loadWeakRetained(&v11->_delegate);
  v6 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v6)
  {
    v4 = objc_loadWeakRetained(&v11->_delegate);
    [v4 manager:v11 handleDDMDeclaration:v9];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  dispatch_assert_queue_V2(v14->_completionQueue);
  v10 = _SUSUILoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_4_0(v15, "[SUSUISoftwareUpdateClientManager client:clearingSpaceForDownload:clearingSpace:]", v11);
    _os_log_impl(&dword_26AC94000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s, clearing = %d", v15, 0x12u);
  }

  objc_storeStrong(&v10, 0);
  WeakRetained = objc_loadWeakRetained(&v14->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v5 = objc_loadWeakRetained(&v14->_delegate);
    [v5 manager:v14 clearingSpaceForDownload:v12 clearingSpace:v11];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)autoInstallOperationWasCancelled:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v11->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __69__SUSUISoftwareUpdateClientManager_autoInstallOperationWasCancelled___block_invoke;
  v8 = &unk_279CB93E8;
  v9 = MEMORY[0x277D82BE0](v11);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationDidConsent:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationIsReadyToInstall:(id)a3 withResponse:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationPasscodePolicyDidChange:(id)a3 passcodePolicyType:(unint64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateClientManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end