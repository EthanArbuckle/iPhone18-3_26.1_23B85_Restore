@interface SUManagerPolicy
- (BOOL)isAutoUpdateEnabled;
- (BOOL)isClearingSpace;
- (BOOL)isCurrentUpdateAutoUpdate;
- (BOOL)isDelayingUpdates;
- (BOOL)isDownloaded;
- (BOOL)isDownloading;
- (BOOL)isForeground;
- (BOOL)isInstallTonight;
- (BOOL)isInstallTonightScheduled;
- (BOOL)isInstalling;
- (BOOL)isRollingBack;
- (BOOL)isScanning;
- (BOOL)isSplatOnlyUpdateRollbackSuggested;
- (BOOL)rollbackUpdateWithOptions:(id)options withResult:(id)result;
- (BOOL)splatRollbackAllowed:(id *)allowed;
- (NSDictionary)mandatoryUpdateDictionary;
- (SUAutoUpdatePasscodePolicy)passcodePolicy;
- (SUManagerDelegate)delegate;
- (SUManagerPolicy)init;
- (SUManagerPolicy)initWithCore:(id)core;
- (id)alternateLastScannedDescriptor;
- (id)delayEndDate;
- (id)download;
- (id)eligibleRollbackWithOptions:(id)options;
- (id)installPolicy;
- (id)preferredLastScannedDescriptor;
- (id)previousRollbackWithOptions:(id)options;
- (id)slaVersion;
- (unint64_t)softwareUpdatePathRestriction;
- (void)addObserver:(id)observer;
- (void)addUnlockCallback:(SEL)callback forKey:(id)key;
- (void)autoSUFailedWithError:(id)error;
- (void)autoScanAndDownloadIfAvailable:(int)available downloadNow:(BOOL)now withResult:(id)result;
- (void)autoScanAndDownloadIfAvailable:(int)available withResult:(id)result;
- (void)badgeSettingsForManualSoftwareUpdate:(id)update;
- (void)cancelDownloadWithOptions:(id)options withResult:(id)result;
- (void)checkAndPostSplatFollowUpIfNeeded;
- (void)createInstallationKeybag:(id)keybag withResult:(id)result;
- (void)destroyInstallationKeybag;
- (void)disableReserveSpace:(BOOL)space withResult:(id)result;
- (void)dismissAutoUpdateBanner;
- (void)endAutoDownloadTasksAndResetState;
- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result;
- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result;
- (void)loadBrainOnUnlock;
- (void)managedInstallRequested;
- (void)networkMonitorDetectOverrides;
- (void)noteAutoDownloadFailedToStartWithError:(id)error;
- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size withResult:(id)result;
- (void)pauseDownload:(id)download;
- (void)persistStashOnUnlock;
- (void)presentAutoUpdateBanner:(id)banner;
- (void)purgeDownloadWithOptions:(id)options withResult:(id)result;
- (void)removeObserver:(id)observer;
- (void)removeUnlockCallback:(id)callback;
- (void)reportOTAAutoTriggeredEvent;
- (void)reportPostponedEvent:(id)event withStatus:(id)status;
- (void)reportSimulatedOTAAutoTriggeredEvent;
- (void)resumeDownload:(id)download;
- (void)resumeOrResetIfNecessary;
- (void)rollbackReadyForReboot;
- (void)scanForUpdates:(id)updates complete:(id)complete;
- (void)securityResponseRollbackSuggested:(id)suggested withResult:(id)result;
- (void)setDelegate:(id)delegate;
- (void)setForeground:(BOOL)foreground;
- (void)setIsInstallTonight:(BOOL)tonight;
- (void)setIsInstallTonightScheduled:(BOOL)scheduled;
- (void)setMandatoryUpdateDictionary:(id)dictionary;
- (void)setPasscodePolicy:(id)policy;
- (void)softwareUpdateReserveSizes:(id)sizes;
- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result;
- (void)startDownloadWithOptions:(id)options withResult:(id)result;
- (void)tryAutoDownload;
- (void)unbadgeSettingsForManualSoftwareUpdate;
- (void)updateDownloadMetadata:(id)metadata withResult:(id)result;
- (void)updateDownloadOptions:(id)options withResult:(id)result;
- (void)updateInstallPolicyType:(unint64_t)type;
- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler;
@end

@implementation SUManagerPolicy

- (SUManagerPolicy)init
{
  v6.receiver = self;
  v6.super_class = SUManagerPolicy;
  v2 = [(SUManagerPolicy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUManagerCore);
    core = v2->_core;
    v2->_core = v3;

    objc_storeWeak(&v2->_delegate, 0);
  }

  return v2;
}

- (SUManagerPolicy)initWithCore:(id)core
{
  coreCopy = core;
  v9.receiver = self;
  v9.super_class = SUManagerPolicy;
  v6 = [(SUManagerPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_core, core);
    objc_storeWeak(&v7->_delegate, 0);
  }

  return v7;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  core = [(SUManagerPolicy *)self core];
  [core setDelegate:delegateCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    core = [(SUManagerPolicy *)self core];
    workQueue = [core workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SUManagerPolicy_addObserver___block_invoke;
    v7[3] = &unk_279CAA7C0;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(workQueue, v7);
  }
}

void __31__SUManagerPolicy_addObserver___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    core = [(SUManagerPolicy *)self core];
    workQueue = [core workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SUManagerPolicy_removeObserver___block_invoke;
    v7[3] = &unk_279CAA7C0;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(workQueue, v7);
  }
}

void __34__SUManagerPolicy_removeObserver___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 observers];
  [v2 removeObject:*(a1 + 40)];
}

- (BOOL)isScanning
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__SUManagerPolicy_isScanning__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __29__SUManagerPolicy_isScanning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isScanning];
}

- (BOOL)isDownloading
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__SUManagerPolicy_isDownloading__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __32__SUManagerPolicy_isDownloading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isDownloading];
}

- (BOOL)isDownloaded
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SUManagerPolicy_isDownloaded__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __31__SUManagerPolicy_isDownloaded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isUpdateDownloaded];
}

- (BOOL)isInstalling
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SUManagerPolicy_isInstalling__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __31__SUManagerPolicy_isInstalling__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInstalling];
}

- (BOOL)isForeground
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SUManagerPolicy_isForeground__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __31__SUManagerPolicy_isForeground__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isForeground];
}

- (void)setForeground:(BOOL)foreground
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SUManagerPolicy_setForeground___block_invoke;
  v7[3] = &unk_279CAAD00;
  v7[4] = self;
  foregroundCopy = foreground;
  dispatch_async(workQueue, v7);
}

void __33__SUManagerPolicy_setForeground___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setForeground:*(a1 + 40)];
}

- (BOOL)isClearingSpace
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SUManagerPolicy_isClearingSpace__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __34__SUManagerPolicy_isClearingSpace__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isClearingSpace];
}

- (BOOL)isInstallTonight
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SUManagerPolicy_isInstallTonight__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __35__SUManagerPolicy_isInstallTonight__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInstallTonight];
}

- (void)setIsInstallTonight:(BOOL)tonight
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUManagerPolicy_setIsInstallTonight___block_invoke;
  v7[3] = &unk_279CAAD00;
  v7[4] = self;
  tonightCopy = tonight;
  dispatch_async(workQueue, v7);
}

void __39__SUManagerPolicy_setIsInstallTonight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setIsInstallTonight:*(a1 + 40)];
}

- (BOOL)isInstallTonightScheduled
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUManagerPolicy_isInstallTonightScheduled__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __44__SUManagerPolicy_isInstallTonightScheduled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInstallTonightScheduled];
}

- (void)setIsInstallTonightScheduled:(BOOL)scheduled
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUManagerPolicy_setIsInstallTonightScheduled___block_invoke;
  v7[3] = &unk_279CAAD00;
  v7[4] = self;
  scheduledCopy = scheduled;
  dispatch_async(workQueue, v7);
}

void __48__SUManagerPolicy_setIsInstallTonightScheduled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setIsInstallTonightScheduled:*(a1 + 40)];
}

- (SUAutoUpdatePasscodePolicy)passcodePolicy
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__SUManagerPolicy_passcodePolicy__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __33__SUManagerPolicy_passcodePolicy__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 passcodePolicy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPasscodePolicy:(id)policy
{
  policyCopy = policy;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SUManagerPolicy_setPasscodePolicy___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = policyCopy;
  v7 = policyCopy;
  dispatch_async(workQueue, v8);
}

void __37__SUManagerPolicy_setPasscodePolicy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setPasscodePolicy:*(a1 + 40)];
}

- (void)resumeOrResetIfNecessary
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerPolicy_resumeOrResetIfNecessary__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(workQueue2, block);
}

void __43__SUManagerPolicy_resumeOrResetIfNecessary__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 resumeOrResetIfNecessary];
}

- (void)autoScanAndDownloadIfAvailable:(int)available withResult:(id)result
{
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUManagerPolicy_autoScanAndDownloadIfAvailable_withResult___block_invoke;
  block[3] = &unk_279CAC848;
  availableCopy = available;
  block[4] = self;
  v11 = resultCopy;
  v9 = resultCopy;
  dispatch_async(workQueue, block);
}

void __61__SUManagerPolicy_autoScanAndDownloadIfAvailable_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 autoScanAndDownloadIfAvailable:*(a1 + 48) withResult:*(a1 + 40)];
}

- (void)autoScanAndDownloadIfAvailable:(int)available downloadNow:(BOOL)now withResult:(id)result
{
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SUManagerPolicy_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke;
  block[3] = &unk_279CAC870;
  availableCopy = available;
  nowCopy = now;
  block[4] = self;
  v13 = resultCopy;
  v11 = resultCopy;
  dispatch_async(workQueue, block);
}

void __73__SUManagerPolicy_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 autoScanAndDownloadIfAvailable:*(a1 + 48) downloadNow:*(a1 + 52) withResult:*(a1 + 40)];
}

- (void)loadBrainOnUnlock
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SUManagerPolicy_loadBrainOnUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __36__SUManagerPolicy_loadBrainOnUnlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 loadBrainOnUnlock];
}

- (void)tryAutoDownload
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUManagerPolicy_tryAutoDownload__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __34__SUManagerPolicy_tryAutoDownload__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 tryAutoDownload];
}

- (void)noteAutoDownloadFailedToStartWithError:(id)error
{
  errorCopy = error;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SUManagerPolicy_noteAutoDownloadFailedToStartWithError___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(workQueue, v8);
}

void __58__SUManagerPolicy_noteAutoDownloadFailedToStartWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 noteAutoDownloadFailedToStartWithError:*(a1 + 40)];
}

- (void)endAutoDownloadTasksAndResetState
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerPolicy_endAutoDownloadTasksAndResetState__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __52__SUManagerPolicy_endAutoDownloadTasksAndResetState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 endAutoDownloadTasksAndResetState];
}

- (id)preferredLastScannedDescriptor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SUManagerPolicy_preferredLastScannedDescriptor__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __49__SUManagerPolicy_preferredLastScannedDescriptor__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 preferredLastScannedDescriptor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)alternateLastScannedDescriptor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SUManagerPolicy_alternateLastScannedDescriptor__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __49__SUManagerPolicy_alternateLastScannedDescriptor__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 alternateLastScannedDescriptor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)presentAutoUpdateBanner:(id)banner
{
  bannerCopy = banner;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SUManagerPolicy_presentAutoUpdateBanner___block_invoke;
  v8[3] = &unk_279CAA8D0;
  v8[4] = self;
  v9 = bannerCopy;
  v7 = bannerCopy;
  dispatch_async(workQueue, v8);
}

void __43__SUManagerPolicy_presentAutoUpdateBanner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 presentAutoUpdateBanner:*(a1 + 40)];
}

- (void)dismissAutoUpdateBanner
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerPolicy_dismissAutoUpdateBanner__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __42__SUManagerPolicy_dismissAutoUpdateBanner__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 dismissAutoUpdateBanner];
}

- (void)checkAndPostSplatFollowUpIfNeeded
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerPolicy_checkAndPostSplatFollowUpIfNeeded__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __52__SUManagerPolicy_checkAndPostSplatFollowUpIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 _checkAndPostSplatFollowUpIfNeeded];
}

- (void)unbadgeSettingsForManualSoftwareUpdate
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUManagerPolicy_unbadgeSettingsForManualSoftwareUpdate__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __57__SUManagerPolicy_unbadgeSettingsForManualSoftwareUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 unbadgeSettingsForManualSoftwareUpdate];
}

- (void)badgeSettingsForManualSoftwareUpdate:(id)update
{
  updateCopy = update;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SUManagerPolicy_badgeSettingsForManualSoftwareUpdate___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_async(workQueue, v8);
}

void __56__SUManagerPolicy_badgeSettingsForManualSoftwareUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 badgeSettingsForManualSoftwareUpdate:*(a1 + 40)];
}

- (void)scanForUpdates:(id)updates complete:(id)complete
{
  updatesCopy = updates;
  completeCopy = complete;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerPolicy_scanForUpdates_complete___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = updatesCopy;
  v14 = completeCopy;
  v10 = completeCopy;
  v11 = updatesCopy;
  dispatch_async(workQueue, block);
}

void __43__SUManagerPolicy_scanForUpdates_complete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 scanForUpdates:*(a1 + 40) complete:*(a1 + 48)];
}

- (void)disableReserveSpace:(BOOL)space withResult:(id)result
{
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerPolicy_disableReserveSpace_withResult___block_invoke;
  block[3] = &unk_279CAB3E8;
  spaceCopy = space;
  block[4] = self;
  v11 = resultCopy;
  v9 = resultCopy;
  dispatch_async(workQueue, block);
}

uint64_t __50__SUManagerPolicy_disableReserveSpace_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 disableReserveSpace:*(a1 + 48)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size withResult:(id)result
{
  reserveCopy = reserve;
  sizeCopy = size;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__SUManagerPolicy_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke;
  v16[3] = &unk_279CAB438;
  v16[4] = self;
  v17 = reserveCopy;
  v18 = sizeCopy;
  v19 = resultCopy;
  v13 = resultCopy;
  v14 = sizeCopy;
  v15 = reserveCopy;
  dispatch_async(workQueue, v16);
}

uint64_t __83__SUManagerPolicy_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 overrideSoftwareUpdateReserve:*(a1 + 40) systemGrowthMarginSize:*(a1 + 48)];

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)softwareUpdateReserveSizes:(id)sizes
{
  sizesCopy = sizes;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SUManagerPolicy_softwareUpdateReserveSizes___block_invoke;
  v8[3] = &unk_279CAA8D0;
  v8[4] = self;
  v9 = sizesCopy;
  v7 = sizesCopy;
  dispatch_async(workQueue, v8);
}

void __46__SUManagerPolicy_softwareUpdateReserveSizes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  v3 = [v2 softwareUpdateReserveSizes];

  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) core];
    v5 = [v4 externWorkQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__SUManagerPolicy_softwareUpdateReserveSizes___block_invoke_2;
    v6[3] = &unk_279CAAF08;
    v8 = *(a1 + 40);
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)cancelDownloadWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerPolicy_cancelDownloadWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  v13 = optionsCopy;
  selfCopy = self;
  v15 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  dispatch_async(workQueue, block);
}

void __56__SUManagerPolicy_cancelDownloadWithOptions_withResult___block_invoke(id *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v2 = objc_alloc_init(SUPurgeOptions);
    [(SUPurgeOptions *)v2 setNotifyUser:1];
    [(SUPurgeOptions *)v2 setUserRequested:1];
  }

  v3 = [a1[5] core];
  v12 = 0;
  v4 = [v3 cancelDownload:-[SUPurgeOptions notifyUser](v2 userRequested:"notifyUser") keepDocAssets:-[SUPurgeOptions userRequested](v2 error:{"userRequested"), 0, &v12}];
  v5 = v12;

  if (a1[6])
  {
    v6 = [a1[5] core];
    v7 = [v6 externWorkQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__SUManagerPolicy_cancelDownloadWithOptions_withResult___block_invoke_2;
    v8[3] = &unk_279CAADF0;
    v10 = a1[6];
    v11 = v4;
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

- (void)purgeDownloadWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_purgeDownloadWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  v13 = optionsCopy;
  selfCopy = self;
  v15 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  dispatch_async(workQueue, block);
}

void __55__SUManagerPolicy_purgeDownloadWithOptions_withResult___block_invoke(id *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v2 = objc_alloc_init(SUPurgeOptions);
    [(SUPurgeOptions *)v2 setNotifyUser:1];
    [(SUPurgeOptions *)v2 setUserRequested:1];
  }

  v3 = [a1[5] core];
  v12 = 0;
  v4 = [v3 killDownload:-[SUPurgeOptions notifyUser](v2 userRequested:"notifyUser") keepDocAssets:-[SUPurgeOptions userRequested](v2 error:{"userRequested"), 0, &v12}];
  v5 = v12;

  if (a1[6])
  {
    v6 = [a1[5] core];
    v7 = [v6 externWorkQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SUManagerPolicy_purgeDownloadWithOptions_withResult___block_invoke_2;
    v8[3] = &unk_279CAADF0;
    v10 = a1[6];
    v11 = v4;
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

- (void)pauseDownload:(id)download
{
  downloadCopy = download;
  v11 = 0;
  [SUUtility assignError:&v11 withCode:60];
  v5 = v11;
  if (downloadCopy)
  {
    core = [(SUManagerPolicy *)self core];
    externWorkQueue = [core externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SUManagerPolicy_pauseDownload___block_invoke;
    block[3] = &unk_279CAAF08;
    v10 = downloadCopy;
    v9 = v5;
    dispatch_async(externWorkQueue, block);
  }
}

- (void)resumeDownload:(id)download
{
  downloadCopy = download;
  v11 = 0;
  [SUUtility assignError:&v11 withCode:60];
  v5 = v11;
  if (downloadCopy)
  {
    core = [(SUManagerPolicy *)self core];
    externWorkQueue = [core externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SUManagerPolicy_resumeDownload___block_invoke;
    block[3] = &unk_279CAAF08;
    v10 = downloadCopy;
    v9 = v5;
    dispatch_async(externWorkQueue, block);
  }
}

- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result
{
  metadataCopy = metadata;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerPolicy_startDownloadWithMetadata_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = metadataCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = metadataCopy;
  dispatch_async(workQueue, block);
}

void __56__SUManagerPolicy_startDownloadWithMetadata_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 startDownloadWithMetadata:*(a1 + 40) withResult:*(a1 + 48)];
}

- (void)startDownloadWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_startDownloadWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = optionsCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  dispatch_async(workQueue, block);
}

void __55__SUManagerPolicy_startDownloadWithOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 startDownloadWithOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (void)updateDownloadMetadata:(id)metadata withResult:(id)result
{
  resultCopy = result;
  metadataCopy = metadata;
  v8 = [SUDownloadOptions alloc];
  download = [(SUManagerPolicy *)self download];
  descriptor = [download descriptor];
  v11 = [(SUDownloadOptions *)v8 initWithMetadata:metadataCopy andDescriptor:descriptor];

  [(SUManagerPolicy *)self updateDownloadOptions:v11 withResult:resultCopy];
}

- (void)updateDownloadOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerPolicy_updateDownloadOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = optionsCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  dispatch_async(workQueue, block);
}

void __52__SUManagerPolicy_updateDownloadOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 updateDownloadOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler
{
  optionsCopy = options;
  downloadOptionsCopy = downloadOptions;
  handlerCopy = handler;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__SUManagerPolicy_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
  v16[3] = &unk_279CAB438;
  v16[4] = self;
  v17 = optionsCopy;
  v18 = downloadOptionsCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = downloadOptionsCopy;
  v15 = optionsCopy;
  dispatch_async(workQueue, v16);
}

void __88__SUManagerPolicy_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 updatesDownloadableWithOptions:*(a1 + 40) alternateDownloadOptions:*(a1 + 48) replyHandler:*(a1 + 56)];
}

- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUManagerPolicy_isUpdateReadyForInstallationWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = optionsCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  dispatch_async(workQueue, block);
}

void __70__SUManagerPolicy_isUpdateReadyForInstallationWithOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SUManagerPolicy_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_2;
  v5[3] = &unk_279CAC8C0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 isUpdateReadyForInstallationWithOptions:v3 replyHandler:v5];
}

void __70__SUManagerPolicy_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_2(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) core];
    v9 = [v8 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__SUManagerPolicy_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_3;
    block[3] = &unk_279CAC898;
    v12 = *(a1 + 40);
    v13 = a2;
    v14 = a3;
    v11 = v7;
    dispatch_async(v9, block);
  }
}

- (void)autoSUFailedWithError:(id)error
{
  errorCopy = error;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SUManagerPolicy_autoSUFailedWithError___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(workQueue, v8);
}

void __41__SUManagerPolicy_autoSUFailedWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 autoSUFailedWithError:*(a1 + 40)];
}

- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SUManagerPolicy_installUpdateWithInstallOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = optionsCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  dispatch_async(workQueue, block);
}

void __62__SUManagerPolicy_installUpdateWithInstallOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 installUpdateWithInstallOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (id)eligibleRollbackWithOptions:(id)options
{
  optionsCopy = options;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUManagerPolicy_eligibleRollbackWithOptions___block_invoke;
  block[3] = &unk_279CAB740;
  v11 = optionsCopy;
  v12 = &v13;
  block[4] = self;
  v7 = optionsCopy;
  dispatch_sync(workQueue, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __47__SUManagerPolicy_eligibleRollbackWithOptions___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 eligibleRollbackWithOptions:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)rollbackUpdateWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerPolicy_rollbackUpdateWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v14 = optionsCopy;
  v15 = resultCopy;
  v10 = resultCopy;
  v11 = optionsCopy;
  dispatch_sync(workQueue, block);

  return 0;
}

void __56__SUManagerPolicy_rollbackUpdateWithOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 rollbackUpdateWithOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (id)previousRollbackWithOptions:(id)options
{
  optionsCopy = options;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUManagerPolicy_previousRollbackWithOptions___block_invoke;
  block[3] = &unk_279CAB740;
  v11 = optionsCopy;
  v12 = &v13;
  block[4] = self;
  v7 = optionsCopy;
  dispatch_sync(workQueue, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __47__SUManagerPolicy_previousRollbackWithOptions___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 previousRollbackWithOptions:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isRollingBack
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SUManagerPolicy_isRollingBack__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  LOBYTE(selfCopy) = v8[3] != 0;
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void __32__SUManagerPolicy_isRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isRollingBack];
}

- (void)rollbackReadyForReboot
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUManagerPolicy_rollbackReadyForReboot__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __41__SUManagerPolicy_rollbackReadyForReboot__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 rollbackReadyForReboot];
}

- (void)securityResponseRollbackSuggested:(id)suggested withResult:(id)result
{
  suggestedCopy = suggested;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SUManagerPolicy_securityResponseRollbackSuggested_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = suggestedCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = suggestedCopy;
  dispatch_async(workQueue, block);
}

void __64__SUManagerPolicy_securityResponseRollbackSuggested_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 securityResponseRollbackSuggested:*(a1 + 40) withResult:*(a1 + 48)];
}

- (id)slaVersion
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__SUManagerPolicy_slaVersion__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __29__SUManagerPolicy_slaVersion__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 slaVersion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)createInstallationKeybag:(id)keybag withResult:(id)result
{
  keybagCopy = keybag;
  resultCopy = result;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_createInstallationKeybag_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = keybagCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = keybagCopy;
  dispatch_async(workQueue, block);
}

void __55__SUManagerPolicy_createInstallationKeybag_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SUManagerPolicy_createInstallationKeybag_withResult___block_invoke_2;
  v5[3] = &unk_279CAC8E8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 createInstallationKeybag:v3 withResult:v5];
}

void __55__SUManagerPolicy_createInstallationKeybag_withResult___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) core];
    v7 = [v6 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SUManagerPolicy_createInstallationKeybag_withResult___block_invoke_3;
    block[3] = &unk_279CAADF0;
    v10 = *(a1 + 40);
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)destroyInstallationKeybag
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUManagerPolicy_destroyInstallationKeybag__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __44__SUManagerPolicy_destroyInstallationKeybag__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 clearKeybagStash];
}

- (BOOL)isAutoUpdateEnabled
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SUManagerPolicy_isAutoUpdateEnabled__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __38__SUManagerPolicy_isAutoUpdateEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isAutoUpdateEnabled];
}

- (BOOL)isCurrentUpdateAutoUpdate
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUManagerPolicy_isCurrentUpdateAutoUpdate__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __44__SUManagerPolicy_isCurrentUpdateAutoUpdate__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  if ([v5 isAutoUpdateEnabled])
  {
    v2 = [*(a1 + 32) core];
    v3 = [v2 download];
    v4 = [v3 downloadOptions];
    *(*(*(a1 + 40) + 8) + 24) = [v4 isAutoDownload];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (unint64_t)softwareUpdatePathRestriction
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SUManagerPolicy_softwareUpdatePathRestriction__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __48__SUManagerPolicy_softwareUpdatePathRestriction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 softwareUpdatePathRestriction];
}

- (BOOL)isDelayingUpdates
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SUManagerPolicy_isDelayingUpdates__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __36__SUManagerPolicy_isDelayingUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isDelayingUpdates];
}

- (id)delayEndDate
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__SUManagerPolicy_delayEndDate__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __31__SUManagerPolicy_delayEndDate__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 delayEndDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)splatRollbackAllowed:(id *)allowed
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUManagerPolicy_splatRollbackAllowed___block_invoke;
  block[3] = &unk_279CAA880;
  block[4] = self;
  block[5] = &v11;
  block[6] = allowed;
  dispatch_sync(workQueue2, block);

  LOBYTE(allowed) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return allowed;
}

void __40__SUManagerPolicy_splatRollbackAllowed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isSplatRollbackAllowed:*(a1 + 48)];
}

- (BOOL)isSplatOnlyUpdateRollbackSuggested
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)selfCopy core];
  workQueue2 = [core2 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SUManagerPolicy_isSplatOnlyUpdateRollbackSuggested__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = selfCopy;
  v8[5] = &v9;
  dispatch_sync(workQueue2, v8);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __53__SUManagerPolicy_isSplatOnlyUpdateRollbackSuggested__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isSplatOnlyUpdateRollbackSuggested];
}

- (void)managedInstallRequested
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerPolicy_managedInstallRequested__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue2, block);
}

void __42__SUManagerPolicy_managedInstallRequested__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 managedInstallRequested];
}

- (NSDictionary)mandatoryUpdateDictionary
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SUManagerPolicy_mandatoryUpdateDictionary__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __44__SUManagerPolicy_mandatoryUpdateDictionary__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 mandatoryUpdateDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setMandatoryUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SUManagerPolicy_setMandatoryUpdateDictionary___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = dictionaryCopy;
  v7 = dictionaryCopy;
  dispatch_async(workQueue, v8);
}

void __48__SUManagerPolicy_setMandatoryUpdateDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setMandatoryUpdateDictionary:*(a1 + 40)];
}

- (void)reportPostponedEvent:(id)event withStatus:(id)status
{
  eventCopy = event;
  statusCopy = status;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerPolicy_reportPostponedEvent_withStatus___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v13 = eventCopy;
  v14 = statusCopy;
  v10 = statusCopy;
  v11 = eventCopy;
  dispatch_async(workQueue, block);
}

void __51__SUManagerPolicy_reportPostponedEvent_withStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 reportPostponedEvent:*(a1 + 40) withStatus:*(a1 + 48)];
}

- (void)reportSimulatedOTAAutoTriggeredEvent
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_reportSimulatedOTAAutoTriggeredEvent__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __55__SUManagerPolicy_reportSimulatedOTAAutoTriggeredEvent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 reportSimulatedOTAAutoTriggeredEvent];
}

- (void)reportOTAAutoTriggeredEvent
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerPolicy_reportOTAAutoTriggeredEvent__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __46__SUManagerPolicy_reportOTAAutoTriggeredEvent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 reportOTAAutoTriggeredEvent];
}

- (id)download
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__SUManagerPolicy_download__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __27__SUManagerPolicy_download__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 download];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)installPolicy
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  core2 = [(SUManagerPolicy *)self core];
  workQueue2 = [core2 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__SUManagerPolicy_installPolicy__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(workQueue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __32__SUManagerPolicy_installPolicy__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 installPolicy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)updateInstallPolicyType:(unint64_t)type
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUManagerPolicy_updateInstallPolicyType___block_invoke;
  v7[3] = &unk_279CAA9C0;
  v7[4] = self;
  v7[5] = type;
  dispatch_async(workQueue, v7);
}

void __43__SUManagerPolicy_updateInstallPolicyType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 updateInstallPolicyType:*(a1 + 40)];
}

- (void)addUnlockCallback:(SEL)callback forKey:(id)key
{
  keyCopy = key;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUManagerPolicy_addUnlockCallback_forKey___block_invoke;
  block[3] = &unk_279CAA8A8;
  v11 = keyCopy;
  callbackCopy = callback;
  block[4] = self;
  v9 = keyCopy;
  dispatch_async(workQueue, block);
}

void __44__SUManagerPolicy_addUnlockCallback_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 addUnlockCallback:*(a1 + 48) forKey:*(a1 + 40)];
}

- (void)removeUnlockCallback:(id)callback
{
  callbackCopy = callback;
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SUManagerPolicy_removeUnlockCallback___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = callbackCopy;
  v7 = callbackCopy;
  dispatch_async(workQueue, v8);
}

void __40__SUManagerPolicy_removeUnlockCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 removeUnlockCallback:*(a1 + 40)];
}

- (void)persistStashOnUnlock
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerPolicy_persistStashOnUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __39__SUManagerPolicy_persistStashOnUnlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 persistStashOnUnlock];
}

- (void)networkMonitorDetectOverrides
{
  core = [(SUManagerPolicy *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUManagerPolicy_networkMonitorDetectOverrides__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __48__SUManagerPolicy_networkMonitorDetectOverrides__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 networkMonitorDetectOverrides];
}

- (SUManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end