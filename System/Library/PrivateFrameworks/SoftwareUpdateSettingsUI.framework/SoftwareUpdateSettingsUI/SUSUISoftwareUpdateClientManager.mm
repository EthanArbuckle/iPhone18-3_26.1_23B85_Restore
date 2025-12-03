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
- (SUSUISoftwareUpdateClientManager)initWithDelegate:(id)delegate completionQueue:(id)queue;
- (SUSUISoftwareUpdateClientManagerDelegate)delegate;
- (id)eligibleRollback;
- (void)_queue_cancelAutoInstall;
- (void)_queue_setAutoUpdateScheduled:(BOOL)scheduled;
- (void)_queue_setEligibleRollback:(id)rollback;
- (void)_queue_setRollingBack:(BOOL)back;
- (void)autoInstallOperationDidConsent:(id)consent;
- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type;
- (void)autoInstallOperationWasCancelled:(id)cancelled;
- (void)cancelAutoInstall;
- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space;
- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error;
- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)client:(id)client downloadDidStart:(id)start;
- (void)client:(id)client downloadProgressDidChange:(id)change;
- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available;
- (void)client:(id)client handleUIForDDMDeclaration:(id)declaration;
- (void)client:(id)client inUserInteraction:(id)interaction;
- (void)client:(id)client installDidFail:(id)fail withError:(id)error;
- (void)client:(id)client installDidFinish:(id)finish;
- (void)client:(id)client installDidStart:(id)start;
- (void)client:(id)client installTonightScheduled:(BOOL)scheduled operationID:(id)d;
- (void)client:(id)client rollbackDidFail:(id)fail withError:(id)error;
- (void)client:(id)client rollbackDidFinish:(id)finish;
- (void)client:(id)client rollbackDidStart:(id)start;
- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error;
- (void)client:(id)client scanRequestDidStartForOptions:(id)options;
- (void)createInstallationKeybagWithOptions:(id)options completion:(id)completion;
- (void)currentAutoInstallOperation:(BOOL)operation completion:(id)completion;
- (void)dealloc;
- (void)destroyInstallationKeybag:(id)keybag;
- (void)download:(id)download;
- (void)enableAutoDownload:(BOOL)download;
- (void)enableAutoInstall:(BOOL)install;
- (void)enableAutoInstallPreviousUserSettings:(BOOL)settings;
- (void)enableAutomaticInstallSystemDataFiles:(BOOL)files;
- (void)getDDMDeclaration:(id)declaration;
- (void)installUpdateWithOptions:(id)options completion:(id)completion;
- (void)isClearingSpaceForDownload:(id)download;
- (void)isDelayingUpdates:(id)updates;
- (void)isInstallationKeybagRequired:(id)required;
- (void)isInstallationKeybagRequiredForDescriptor:(id)descriptor result:(id)result;
- (void)isScanning:(id)scanning;
- (void)isUpdateReadyForInstallationWithOptions:(id)options completion:(id)completion;
- (void)purgeDownload:(id)download;
- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)settings;
- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)files;
- (void)queue_setAutoDownloadEnabled:(BOOL)enabled;
- (void)queue_setAutoInstallEnabled:(BOOL)enabled;
- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)status;
- (void)queue_setSecurityResponseEnabled:(BOOL)enabled;
- (void)rollbackUpdateWithOptions:(id)options completion:(id)completion;
- (void)scanforUpdatesWithOptions:(id)options completion:(id)completion;
- (void)setAutoUpdateScheduled:(BOOL)scheduled;
- (void)setEligibleRollback:(id)rollback;
- (void)setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)status;
- (void)setRollingBack:(BOOL)back rollback:(id)rollback;
- (void)setSecurityResponseEnabled:(BOOL)enabled;
- (void)softwareUpdatePathRestriction:(id)restriction;
- (void)startDownloadWithOptions:(id)options completion:(id)completion;
- (void)updateDownloadOptions:(id)options completion:(id)completion;
- (void)updatesDownloadable:(id)downloadable alternateUpdate:(id)update completion:(id)completion;
@end

@implementation SUSUISoftwareUpdateClientManager

- (SUSUISoftwareUpdateClientManager)initWithDelegate:(id)delegate completionQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v42 = 0;
  objc_storeStrong(&v42, queue);
  v4 = selfCopy;
  selfCopy = 0;
  v41.receiver = v4;
  v41.super_class = SUSUISoftwareUpdateClientManager;
  v21 = [(SUSUISoftwareUpdateClientManager *)&v41 init];
  selfCopy = v21;
  objc_storeStrong(&selfCopy, v21);
  if (v21)
  {
    v5 = dispatch_queue_create("com.apple.SoftwareUpdateSettings.ClientManagerWorkQueue", 0);
    workQueue = selfCopy->_workQueue;
    selfCopy->_workQueue = v5;
    MEMORY[0x277D82BD8](workQueue);
    objc_storeWeak(&selfCopy->_delegate, location[0]);
    objc_storeStrong(&selfCopy->_completionQueue, v42);
    if (!selfCopy->_completionQueue)
    {
      v19 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
      v8 = v19;
      completionQueue = selfCopy->_completionQueue;
      selfCopy->_completionQueue = v8;
      MEMORY[0x277D82BD8](completionQueue);
    }

    v15 = +[SUSUIServiceManager sharedInstance];
    v40 = [(SUSUIServiceManager *)v15 classForService:objc_opt_class()];
    MEMORY[0x277D82BD8](v15);
    v10 = [v40 alloc];
    v11 = [v10 initWithDelegate:selfCopy queue:selfCopy->_completionQueue clientType:1];
    suClient = selfCopy->_suClient;
    selfCopy->_suClient = v11;
    MEMORY[0x277D82BD8](suClient);
    selfCopy->_autoUpdateScheduled = 0;
    selfCopy->_rollingBack = 0;
    objc_storeStrong(&selfCopy->_rollbackDescriptor, 0);
    v16 = selfCopy->_suClient;
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke;
    v38 = &unk_279CBE0E8;
    v39 = MEMORY[0x277D82BE0](selfCopy);
    [(SUManagerClient *)v16 isAutoUpdateScheduled:&v34];
    v17 = selfCopy->_suClient;
    v28 = MEMORY[0x277D85DD0];
    v29 = -1073741824;
    v30 = 0;
    v31 = __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke_289;
    v32 = &unk_279CBE110;
    v33 = MEMORY[0x277D82BE0](selfCopy);
    [(SUManagerClient *)v17 isRollingBack:&v28];
    v18 = selfCopy->_suClient;
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __69__SUSUISoftwareUpdateClientManager_initWithDelegate_completionQueue___block_invoke_291;
    v26 = &unk_279CBE138;
    v27 = MEMORY[0x277D82BE0](selfCopy);
    [(SUManagerClient *)v18 eligibleRollbackWithOptions:0 withResult:&v22];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v39, 0);
  }

  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  v4 = a2;
  delegate = [(SUManagerClient *)self->_suClient delegate];
  MEMORY[0x277D82BD8](delegate);
  if (delegate == selfCopy)
  {
    [(SUManagerClient *)selfCopy->_suClient setDelegate:0];
  }

  [(SUManagerClient *)selfCopy->_suClient invalidate];
  v3.receiver = selfCopy;
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

- (void)scanforUpdatesWithOptions:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __73__SUSUISoftwareUpdateClientManager_scanforUpdatesWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)isScanning:(id)scanning
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scanning);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __47__SUSUISoftwareUpdateClientManager_isScanning___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)softwareUpdatePathRestriction:(id)restriction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restriction);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __66__SUSUISoftwareUpdateClientManager_softwareUpdatePathRestriction___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)isDelayingUpdates:(id)updates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUISoftwareUpdateClientManager_isDelayingUpdates___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)download:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __45__SUSUISoftwareUpdateClientManager_download___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)updatesDownloadable:(id)downloadable alternateUpdate:(id)update completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, downloadable);
  v18 = 0;
  objc_storeStrong(&v18, update);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  queue = selfCopy->_workQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __83__SUSUISoftwareUpdateClientManager_updatesDownloadable_alternateUpdate_completion___block_invoke;
  v12 = &unk_279CBE1B0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)startDownloadWithOptions:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__SUSUISoftwareUpdateClientManager_startDownloadWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)updateDownloadOptions:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __69__SUSUISoftwareUpdateClientManager_updateDownloadOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)isClearingSpaceForDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__SUSUISoftwareUpdateClientManager_isClearingSpaceForDownload___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isAutoDownloadEnabled
{
  selfCopy = self;
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

- (void)enableAutoDownload:(BOOL)download
{
  selfCopy = self;
  v12 = a2;
  downloadCopy = download;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__SUSUISoftwareUpdateClientManager_enableAutoDownload___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = downloadCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setAutoDownloadEnabled:(BOOL)enabled
{
  dispatch_assert_queue_V2(self->_workQueue);
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  [mEMORY[0x277D648D0] enableAutomaticDownload:enabled];
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
}

- (void)isUpdateReadyForInstallationWithOptions:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __87__SUSUISoftwareUpdateClientManager_isUpdateReadyForInstallationWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)installUpdateWithOptions:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__SUSUISoftwareUpdateClientManager_installUpdateWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)currentAutoInstallOperation:(BOOL)operation completion:(id)completion
{
  selfCopy = self;
  v15 = a2;
  operationCopy = operation;
  location = 0;
  objc_storeStrong(&location, completion);
  queue = selfCopy->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75__SUSUISoftwareUpdateClientManager_currentAutoInstallOperation_completion___block_invoke;
  v9 = &unk_279CBE228;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  v12 = operationCopy;
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
  selfCopy = self;
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

- (void)enableAutoInstall:(BOOL)install
{
  selfCopy = self;
  v12 = a2;
  installCopy = install;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUISoftwareUpdateClientManager_enableAutoInstall___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = installCopy;
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setAutoInstallEnabled:(BOOL)enabled
{
  dispatch_assert_queue_V2(self->_workQueue);
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  [mEMORY[0x277D648D0] enableAutomaticUpdateV2:enabled];
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
}

- (BOOL)isAutoInstallPreviousUserSettingsEnabled
{
  selfCopy = self;
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

- (void)enableAutoInstallPreviousUserSettings:(BOOL)settings
{
  selfCopy = self;
  v12 = a2;
  settingsCopy = settings;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __74__SUSUISoftwareUpdateClientManager_enableAutoInstallPreviousUserSettings___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = settingsCopy;
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)settings
{
  dispatch_assert_queue_V2(self->_workQueue);
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  [mEMORY[0x277D648D0] enablePreviousUserSpecifiedAutomaticUpdateV2:settings];
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
}

- (BOOL)isSecurityResponseEnabled
{
  selfCopy = self;
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

- (void)setSecurityResponseEnabled:(BOOL)enabled
{
  selfCopy = self;
  v12 = a2;
  enabledCopy = enabled;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__SUSUISoftwareUpdateClientManager_setSecurityResponseEnabled___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = enabledCopy;
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setSecurityResponseEnabled:(BOOL)enabled
{
  dispatch_assert_queue_V2(self->_workQueue);
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  [mEMORY[0x277D648D0] enableAutoInstallSecurityResponse:enabled];
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
}

- (BOOL)previousUserSpecifiedSecurityResponseEnabled
{
  selfCopy = self;
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

- (void)setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)status
{
  selfCopy = self;
  v12 = a2;
  statusCopy = status;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __83__SUSUISoftwareUpdateClientManager_setPreviousUserSpecifiedSecurityResponseStatus___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = statusCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)status
{
  dispatch_assert_queue_V2(self->_workQueue);
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  [mEMORY[0x277D648D0] enablePreviousUserSpecifiedAutoInstallSecurityResponse:status];
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
}

- (BOOL)isAutomaticInstallSystemDataFilesEnabled
{
  selfCopy = self;
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

- (void)enableAutomaticInstallSystemDataFiles:(BOOL)files
{
  selfCopy = self;
  v12 = a2;
  filesCopy = files;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __74__SUSUISoftwareUpdateClientManager_enableAutomaticInstallSystemDataFiles___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = filesCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)files
{
  dispatch_assert_queue_V2(self->_workQueue);
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  [mEMORY[0x277D648D0] enableAutoInstallSystemAndDataFiles:files];
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
}

- (BOOL)isAutoUpdateArmedAndReady
{
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setAutoUpdateScheduled:(BOOL)scheduled
{
  selfCopy = self;
  v12 = a2;
  scheduledCopy = scheduled;
  queue = self->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__SUSUISoftwareUpdateClientManager_setAutoUpdateScheduled___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = scheduledCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)_queue_setAutoUpdateScheduled:(BOOL)scheduled
{
  selfCopy = self;
  v20 = a2;
  scheduledCopy = scheduled;
  dispatch_assert_queue_V2(self->_workQueue);
  if (selfCopy->_autoUpdateScheduled != scheduledCopy)
  {
    selfCopy->_autoUpdateScheduled = scheduledCopy;
    if (selfCopy->_autoUpdateScheduled)
    {
      suClient = selfCopy->_suClient;
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke;
      v17 = &unk_279CBE278;
      v18 = MEMORY[0x277D82BE0](selfCopy);
      [(SUManagerClient *)suClient currentAutoInstallOperation:0 withResult:&v13];
      objc_storeStrong(&v18, 0);
    }

    else
    {
      objc_storeWeak(&selfCopy->_autoInstallOperation, 0);
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v5 = objc_opt_respondsToSelector();
      MEMORY[0x277D82BD8](WeakRetained);
      if (v5)
      {
        queue = selfCopy->_completionQueue;
        v7 = MEMORY[0x277D85DD0];
        v8 = -1073741824;
        v9 = 0;
        v10 = __66__SUSUISoftwareUpdateClientManager__queue_setAutoUpdateScheduled___block_invoke_4;
        v11 = &unk_279CB93E8;
        v12 = MEMORY[0x277D82BE0](selfCopy);
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
  selfCopy = self;
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
  WeakRetained = objc_loadWeakRetained(&selfCopy->_autoInstallOperation);
  [WeakRetained cancel];
  MEMORY[0x277D82BD8](WeakRetained);
  [(SUSUISoftwareUpdateClientManager *)selfCopy _queue_setAutoUpdateScheduled:0];
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

- (void)setEligibleRollback:(id)rollback
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rollback);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __56__SUSUISoftwareUpdateClientManager_setEligibleRollback___block_invoke;
  v8 = &unk_279CB9410;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_queue_setEligibleRollback:(id)rollback
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rollback);
  dispatch_assert_queue_V2(selfCopy->_workQueue);
  if (([(SURollbackDescriptor *)selfCopy->_rollbackDescriptor isEqual:location[0]]& 1) == 0)
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v6, location[0]);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "Settings eligibleRollback to: %@", v6, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&selfCopy->_rollbackDescriptor, location[0]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)rollbackUpdateWithOptions:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __73__SUSUISoftwareUpdateClientManager_rollbackUpdateWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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
  selfCopy = self;
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

- (void)setRollingBack:(BOOL)back rollback:(id)rollback
{
  selfCopy = self;
  v15 = a2;
  backCopy = back;
  location = 0;
  objc_storeStrong(&location, rollback);
  queue = selfCopy->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __60__SUSUISoftwareUpdateClientManager_setRollingBack_rollback___block_invoke;
  v9 = &unk_279CBE2A0;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  v12 = backCopy;
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

- (void)_queue_setRollingBack:(BOOL)back
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = a2;
  backCopy = back;
  dispatch_assert_queue_V2(self->_workQueue);
  if (selfCopy->_rollingBack != backCopy)
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (backCopy)
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
    selfCopy->_rollingBack = backCopy;
  }

  *MEMORY[0x277D85DE8];
}

- (void)purgeDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __50__SUSUISoftwareUpdateClientManager_purgeDownload___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)isInstallationKeybagRequired:(id)required
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, required);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __65__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequired___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)isInstallationKeybagRequiredForDescriptor:(id)descriptor result:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v14 = 0;
  objc_storeStrong(&v14, result);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __85__SUSUISoftwareUpdateClientManager_isInstallationKeybagRequiredForDescriptor_result___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)createInstallationKeybagWithOptions:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = selfCopy->_workQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __83__SUSUISoftwareUpdateClientManager_createInstallationKeybagWithOptions_completion___block_invoke;
  v10 = &unk_279CB96B8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)destroyInstallationKeybag:(id)keybag
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keybag);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __62__SUSUISoftwareUpdateClientManager_destroyInstallationKeybag___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)getDDMDeclaration:(id)declaration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, declaration);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUISoftwareUpdateClientManager_getDDMDeclaration___block_invoke;
  v8 = &unk_279CBE188;
  v9 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)client:(id)client scanRequestDidStartForOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, options);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy scanRequestDidStartForOptions:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v14 = 0;
  objc_storeStrong(&v14, options);
  v13 = 0;
  objc_storeStrong(&v13, results);
  v12 = 0;
  objc_storeStrong(&v12, error);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v11 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v11)
  {
    v6 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v6 manager:selfCopy scanRequestDidFinishForOptions:v14 results:v13 error:v12];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, start);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy downloadDidStart:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadProgressDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, change);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy downloadProgressDidChange:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, available);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  [(SUSUISoftwareUpdateClientManager *)selfCopy setAutoUpdateScheduled:0];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy downloadWasInvalidatedForNewUpdatesAvailable:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v11 = 0;
  objc_storeStrong(&v11, finish);
  v10 = 0;
  objc_storeStrong(&v10, policy);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v9 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v9)
  {
    v5 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v5 manager:selfCopy downloadDidFinish:v11 withInstallPolicy:v10];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v11 = 0;
  objc_storeStrong(&v11, fail);
  v10 = 0;
  objc_storeStrong(&v10, error);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v9 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v9)
  {
    v5 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v5 manager:selfCopy downloadDidFail:v11 withError:v10];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, start);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy installDidStart:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installDidFail:(id)fail withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v11 = 0;
  objc_storeStrong(&v11, fail);
  v10 = 0;
  objc_storeStrong(&v10, error);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v9 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v9)
  {
    v5 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v5 manager:selfCopy installDidFail:v11 withError:v10];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, finish);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy installDidFinish:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installTonightScheduled:(BOOL)scheduled operationID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  scheduledCopy = scheduled;
  v7 = 0;
  objc_storeStrong(&v7, d);
  dispatch_assert_queue_V2(selfCopy[2]);
  [(dispatch_queue_t *)selfCopy setAutoUpdateScheduled:scheduledCopy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client rollbackDidStart:(id)start
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v6 = 0;
  objc_storeStrong(&v6, start);
  dispatch_assert_queue_V2(selfCopy[2]);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_8_66(v9, "[SUSUISoftwareUpdateClientManager client:rollbackDidStart:]", v6);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)selfCopy setRollingBack:1 rollback:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)client rollbackDidFinish:(id)finish
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v6 = 0;
  objc_storeStrong(&v6, finish);
  dispatch_assert_queue_V2(selfCopy[2]);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_8_66(v9, "[SUSUISoftwareUpdateClientManager client:rollbackDidFinish:]", v6);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)selfCopy setRollingBack:0 rollback:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)client rollbackDidFail:(id)fail withError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, fail);
  v8 = 0;
  objc_storeStrong(&v8, error);
  dispatch_assert_queue_V2(selfCopy[2]);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_34_8_66_8_64(v12, "[SUSUISoftwareUpdateClientManager client:rollbackDidFail:withError:]", v9, v8);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@\n Error: %@", v12, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)selfCopy setRollingBack:0 rollback:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)client inUserInteraction:(id)interaction
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, interaction);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  v8 = _SUSUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_34(v12, "[SUSUISoftwareUpdateClientManager client:inUserInteraction:]");
    _os_log_impl(&dword_26AC94000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", v12, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v6 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v6)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy inUserInteraction:v9];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)client handleUIForDDMDeclaration:(id)declaration
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, declaration);
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  v8 = _SUSUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_8_66(v12, "[SUSUISoftwareUpdateClientManager client:handleUIForDDMDeclaration:]", v9);
    _os_log_impl(&dword_26AC94000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", v12, 0x16u);
  }

  objc_storeStrong(&v8, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v6 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v6)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy handleDDMDeclaration:v9];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v12 = 0;
  objc_storeStrong(&v12, download);
  spaceCopy = space;
  dispatch_assert_queue_V2(selfCopy->_completionQueue);
  v10 = _SUSUILoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_34_4_0(v15, "[SUSUISoftwareUpdateClientManager client:clearingSpaceForDownload:clearingSpace:]", spaceCopy);
    _os_log_impl(&dword_26AC94000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s, clearing = %d", v15, 0x12u);
  }

  objc_storeStrong(&v10, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v5 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v5 manager:selfCopy clearingSpaceForDownload:v12 clearingSpace:spaceCopy];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)autoInstallOperationWasCancelled:(id)cancelled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __69__SUSUISoftwareUpdateClientManager_autoInstallOperationWasCancelled___block_invoke;
  v8 = &unk_279CB93E8;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationDidConsent:(id)consent
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, consent);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v5 = 0;
  objc_storeStrong(&v5, response);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateClientManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end