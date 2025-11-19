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
- (BOOL)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4;
- (BOOL)splatRollbackAllowed:(id *)a3;
- (NSDictionary)mandatoryUpdateDictionary;
- (SUAutoUpdatePasscodePolicy)passcodePolicy;
- (SUManagerDelegate)delegate;
- (SUManagerPolicy)init;
- (SUManagerPolicy)initWithCore:(id)a3;
- (id)alternateLastScannedDescriptor;
- (id)delayEndDate;
- (id)download;
- (id)eligibleRollbackWithOptions:(id)a3;
- (id)installPolicy;
- (id)preferredLastScannedDescriptor;
- (id)previousRollbackWithOptions:(id)a3;
- (id)slaVersion;
- (unint64_t)softwareUpdatePathRestriction;
- (void)addObserver:(id)a3;
- (void)addUnlockCallback:(SEL)a3 forKey:(id)a4;
- (void)autoSUFailedWithError:(id)a3;
- (void)autoScanAndDownloadIfAvailable:(int)a3 downloadNow:(BOOL)a4 withResult:(id)a5;
- (void)autoScanAndDownloadIfAvailable:(int)a3 withResult:(id)a4;
- (void)badgeSettingsForManualSoftwareUpdate:(id)a3;
- (void)cancelDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)checkAndPostSplatFollowUpIfNeeded;
- (void)createInstallationKeybag:(id)a3 withResult:(id)a4;
- (void)destroyInstallationKeybag;
- (void)disableReserveSpace:(BOOL)a3 withResult:(id)a4;
- (void)dismissAutoUpdateBanner;
- (void)endAutoDownloadTasksAndResetState;
- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4;
- (void)isUpdateReadyForInstallationWithOptions:(id)a3 withResult:(id)a4;
- (void)loadBrainOnUnlock;
- (void)managedInstallRequested;
- (void)networkMonitorDetectOverrides;
- (void)noteAutoDownloadFailedToStartWithError:(id)a3;
- (void)overrideSoftwareUpdateReserve:(id)a3 systemGrowthMarginSize:(id)a4 withResult:(id)a5;
- (void)pauseDownload:(id)a3;
- (void)persistStashOnUnlock;
- (void)presentAutoUpdateBanner:(id)a3;
- (void)purgeDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeUnlockCallback:(id)a3;
- (void)reportOTAAutoTriggeredEvent;
- (void)reportPostponedEvent:(id)a3 withStatus:(id)a4;
- (void)reportSimulatedOTAAutoTriggeredEvent;
- (void)resumeDownload:(id)a3;
- (void)resumeOrResetIfNecessary;
- (void)rollbackReadyForReboot;
- (void)scanForUpdates:(id)a3 complete:(id)a4;
- (void)securityResponseRollbackSuggested:(id)a3 withResult:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setForeground:(BOOL)a3;
- (void)setIsInstallTonight:(BOOL)a3;
- (void)setIsInstallTonightScheduled:(BOOL)a3;
- (void)setMandatoryUpdateDictionary:(id)a3;
- (void)setPasscodePolicy:(id)a3;
- (void)softwareUpdateReserveSizes:(id)a3;
- (void)startDownloadWithMetadata:(id)a3 withResult:(id)a4;
- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)tryAutoDownload;
- (void)unbadgeSettingsForManualSoftwareUpdate;
- (void)updateDownloadMetadata:(id)a3 withResult:(id)a4;
- (void)updateDownloadOptions:(id)a3 withResult:(id)a4;
- (void)updateInstallPolicyType:(unint64_t)a3;
- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5;
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

- (SUManagerPolicy)initWithCore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUManagerPolicy;
  v6 = [(SUManagerPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_core, a3);
    objc_storeWeak(&v7->_delegate, 0);
  }

  return v7;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = [(SUManagerPolicy *)self core];
  [v5 setDelegate:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerPolicy *)self core];
    v6 = [v5 workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SUManagerPolicy_addObserver___block_invoke;
    v7[3] = &unk_279CAA7C0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __31__SUManagerPolicy_addObserver___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerPolicy *)self core];
    v6 = [v5 workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SUManagerPolicy_removeObserver___block_invoke;
    v7[3] = &unk_279CAA7C0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
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
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__SUManagerPolicy_isScanning__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __29__SUManagerPolicy_isScanning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isScanning];
}

- (BOOL)isDownloading
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__SUManagerPolicy_isDownloading__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __32__SUManagerPolicy_isDownloading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isDownloading];
}

- (BOOL)isDownloaded
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SUManagerPolicy_isDownloaded__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __31__SUManagerPolicy_isDownloaded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isUpdateDownloaded];
}

- (BOOL)isInstalling
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SUManagerPolicy_isInstalling__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __31__SUManagerPolicy_isInstalling__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInstalling];
}

- (BOOL)isForeground
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SUManagerPolicy_isForeground__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __31__SUManagerPolicy_isForeground__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isForeground];
}

- (void)setForeground:(BOOL)a3
{
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SUManagerPolicy_setForeground___block_invoke;
  v7[3] = &unk_279CAAD00;
  v7[4] = self;
  v8 = a3;
  dispatch_async(v6, v7);
}

void __33__SUManagerPolicy_setForeground___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setForeground:*(a1 + 40)];
}

- (BOOL)isClearingSpace
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SUManagerPolicy_isClearingSpace__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __34__SUManagerPolicy_isClearingSpace__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isClearingSpace];
}

- (BOOL)isInstallTonight
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SUManagerPolicy_isInstallTonight__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __35__SUManagerPolicy_isInstallTonight__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInstallTonight];
}

- (void)setIsInstallTonight:(BOOL)a3
{
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUManagerPolicy_setIsInstallTonight___block_invoke;
  v7[3] = &unk_279CAAD00;
  v7[4] = self;
  v8 = a3;
  dispatch_async(v6, v7);
}

void __39__SUManagerPolicy_setIsInstallTonight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setIsInstallTonight:*(a1 + 40)];
}

- (BOOL)isInstallTonightScheduled
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUManagerPolicy_isInstallTonightScheduled__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __44__SUManagerPolicy_isInstallTonightScheduled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInstallTonightScheduled];
}

- (void)setIsInstallTonightScheduled:(BOOL)a3
{
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUManagerPolicy_setIsInstallTonightScheduled___block_invoke;
  v7[3] = &unk_279CAAD00;
  v7[4] = self;
  v8 = a3;
  dispatch_async(v6, v7);
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__SUManagerPolicy_passcodePolicy__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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

- (void)setPasscodePolicy:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SUManagerPolicy_setPasscodePolicy___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __37__SUManagerPolicy_setPasscodePolicy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setPasscodePolicy:*(a1 + 40)];
}

- (void)resumeOrResetIfNecessary
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerPolicy_resumeOrResetIfNecessary__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __43__SUManagerPolicy_resumeOrResetIfNecessary__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 resumeOrResetIfNecessary];
}

- (void)autoScanAndDownloadIfAvailable:(int)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = [(SUManagerPolicy *)self core];
  v8 = [v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUManagerPolicy_autoScanAndDownloadIfAvailable_withResult___block_invoke;
  block[3] = &unk_279CAC848;
  v12 = a3;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(v8, block);
}

void __61__SUManagerPolicy_autoScanAndDownloadIfAvailable_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 autoScanAndDownloadIfAvailable:*(a1 + 48) withResult:*(a1 + 40)];
}

- (void)autoScanAndDownloadIfAvailable:(int)a3 downloadNow:(BOOL)a4 withResult:(id)a5
{
  v8 = a5;
  v9 = [(SUManagerPolicy *)self core];
  v10 = [v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SUManagerPolicy_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke;
  block[3] = &unk_279CAC870;
  v14 = a3;
  v15 = a4;
  block[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(v10, block);
}

void __73__SUManagerPolicy_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 autoScanAndDownloadIfAvailable:*(a1 + 48) downloadNow:*(a1 + 52) withResult:*(a1 + 40)];
}

- (void)loadBrainOnUnlock
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SUManagerPolicy_loadBrainOnUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __36__SUManagerPolicy_loadBrainOnUnlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 loadBrainOnUnlock];
}

- (void)tryAutoDownload
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUManagerPolicy_tryAutoDownload__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __34__SUManagerPolicy_tryAutoDownload__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 tryAutoDownload];
}

- (void)noteAutoDownloadFailedToStartWithError:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SUManagerPolicy_noteAutoDownloadFailedToStartWithError___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __58__SUManagerPolicy_noteAutoDownloadFailedToStartWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 noteAutoDownloadFailedToStartWithError:*(a1 + 40)];
}

- (void)endAutoDownloadTasksAndResetState
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerPolicy_endAutoDownloadTasksAndResetState__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SUManagerPolicy_preferredLastScannedDescriptor__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SUManagerPolicy_alternateLastScannedDescriptor__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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

- (void)presentAutoUpdateBanner:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SUManagerPolicy_presentAutoUpdateBanner___block_invoke;
  v8[3] = &unk_279CAA8D0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __43__SUManagerPolicy_presentAutoUpdateBanner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 presentAutoUpdateBanner:*(a1 + 40)];
}

- (void)dismissAutoUpdateBanner
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerPolicy_dismissAutoUpdateBanner__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __42__SUManagerPolicy_dismissAutoUpdateBanner__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 dismissAutoUpdateBanner];
}

- (void)checkAndPostSplatFollowUpIfNeeded
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerPolicy_checkAndPostSplatFollowUpIfNeeded__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __52__SUManagerPolicy_checkAndPostSplatFollowUpIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 _checkAndPostSplatFollowUpIfNeeded];
}

- (void)unbadgeSettingsForManualSoftwareUpdate
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUManagerPolicy_unbadgeSettingsForManualSoftwareUpdate__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __57__SUManagerPolicy_unbadgeSettingsForManualSoftwareUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 unbadgeSettingsForManualSoftwareUpdate];
}

- (void)badgeSettingsForManualSoftwareUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SUManagerPolicy_badgeSettingsForManualSoftwareUpdate___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __56__SUManagerPolicy_badgeSettingsForManualSoftwareUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 badgeSettingsForManualSoftwareUpdate:*(a1 + 40)];
}

- (void)scanForUpdates:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerPolicy_scanForUpdates_complete___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __43__SUManagerPolicy_scanForUpdates_complete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 scanForUpdates:*(a1 + 40) complete:*(a1 + 48)];
}

- (void)disableReserveSpace:(BOOL)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = [(SUManagerPolicy *)self core];
  v8 = [v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUManagerPolicy_disableReserveSpace_withResult___block_invoke;
  block[3] = &unk_279CAB3E8;
  v12 = a3;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(v8, block);
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

- (void)overrideSoftwareUpdateReserve:(id)a3 systemGrowthMarginSize:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUManagerPolicy *)self core];
  v12 = [v11 workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__SUManagerPolicy_overrideSoftwareUpdateReserve_systemGrowthMarginSize_withResult___block_invoke;
  v16[3] = &unk_279CAB438;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
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

- (void)softwareUpdateReserveSizes:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SUManagerPolicy_softwareUpdateReserveSizes___block_invoke;
  v8[3] = &unk_279CAA8D0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
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

- (void)cancelDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerPolicy_cancelDownloadWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
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

- (void)purgeDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_purgeDownloadWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
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

- (void)pauseDownload:(id)a3
{
  v4 = a3;
  v11 = 0;
  [SUUtility assignError:&v11 withCode:60];
  v5 = v11;
  if (v4)
  {
    v6 = [(SUManagerPolicy *)self core];
    v7 = [v6 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SUManagerPolicy_pauseDownload___block_invoke;
    block[3] = &unk_279CAAF08;
    v10 = v4;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)resumeDownload:(id)a3
{
  v4 = a3;
  v11 = 0;
  [SUUtility assignError:&v11 withCode:60];
  v5 = v11;
  if (v4)
  {
    v6 = [(SUManagerPolicy *)self core];
    v7 = [v6 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SUManagerPolicy_resumeDownload___block_invoke;
    block[3] = &unk_279CAAF08;
    v10 = v4;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)startDownloadWithMetadata:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerPolicy_startDownloadWithMetadata_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __56__SUManagerPolicy_startDownloadWithMetadata_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 startDownloadWithMetadata:*(a1 + 40) withResult:*(a1 + 48)];
}

- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_startDownloadWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __55__SUManagerPolicy_startDownloadWithOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 startDownloadWithOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (void)updateDownloadMetadata:(id)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SUDownloadOptions alloc];
  v9 = [(SUManagerPolicy *)self download];
  v10 = [v9 descriptor];
  v11 = [(SUDownloadOptions *)v8 initWithMetadata:v7 andDescriptor:v10];

  [(SUManagerPolicy *)self updateDownloadOptions:v11 withResult:v6];
}

- (void)updateDownloadOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerPolicy_updateDownloadOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __52__SUManagerPolicy_updateDownloadOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 updateDownloadOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUManagerPolicy *)self core];
  v12 = [v11 workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__SUManagerPolicy_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
  v16[3] = &unk_279CAB438;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
}

void __88__SUManagerPolicy_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 updatesDownloadableWithOptions:*(a1 + 40) alternateDownloadOptions:*(a1 + 48) replyHandler:*(a1 + 56)];
}

- (void)isUpdateReadyForInstallationWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUManagerPolicy_isUpdateReadyForInstallationWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
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

- (void)autoSUFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SUManagerPolicy_autoSUFailedWithError___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __41__SUManagerPolicy_autoSUFailedWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 autoSUFailedWithError:*(a1 + 40)];
}

- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SUManagerPolicy_installUpdateWithInstallOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __62__SUManagerPolicy_installUpdateWithInstallOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 installUpdateWithInstallOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (id)eligibleRollbackWithOptions:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUManagerPolicy_eligibleRollbackWithOptions___block_invoke;
  block[3] = &unk_279CAB740;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

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

- (BOOL)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUManagerPolicy_rollbackUpdateWithOptions_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);

  return 0;
}

void __56__SUManagerPolicy_rollbackUpdateWithOptions_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 rollbackUpdateWithOptions:*(a1 + 40) withResult:*(a1 + 48)];
}

- (id)previousRollbackWithOptions:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUManagerPolicy_previousRollbackWithOptions___block_invoke;
  block[3] = &unk_279CAB740;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

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
  v2 = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SUManagerPolicy_isRollingBack__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = v8[3] != 0;
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __32__SUManagerPolicy_isRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isRollingBack];
}

- (void)rollbackReadyForReboot
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUManagerPolicy_rollbackReadyForReboot__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __41__SUManagerPolicy_rollbackReadyForReboot__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 rollbackReadyForReboot];
}

- (void)securityResponseRollbackSuggested:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SUManagerPolicy_securityResponseRollbackSuggested_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__SUManagerPolicy_slaVersion__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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

- (void)createInstallationKeybag:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_createInstallationKeybag_withResult___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUManagerPolicy_destroyInstallationKeybag__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __44__SUManagerPolicy_destroyInstallationKeybag__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 clearKeybagStash];
}

- (BOOL)isAutoUpdateEnabled
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SUManagerPolicy_isAutoUpdateEnabled__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __38__SUManagerPolicy_isAutoUpdateEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isAutoUpdateEnabled];
}

- (BOOL)isCurrentUpdateAutoUpdate
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUManagerPolicy_isCurrentUpdateAutoUpdate__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SUManagerPolicy_softwareUpdatePathRestriction__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SUManagerPolicy_isDelayingUpdates__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__SUManagerPolicy_delayEndDate__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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

- (BOOL)splatRollbackAllowed:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_not_V2(v6);

  v7 = [(SUManagerPolicy *)self core];
  v8 = [v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUManagerPolicy_splatRollbackAllowed___block_invoke;
  block[3] = &unk_279CAA880;
  block[4] = self;
  block[5] = &v11;
  block[6] = a3;
  dispatch_sync(v8, block);

  LOBYTE(a3) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a3;
}

void __40__SUManagerPolicy_splatRollbackAllowed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isSplatRollbackAllowed:*(a1 + 48)];
}

- (BOOL)isSplatOnlyUpdateRollbackSuggested
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)v2 core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SUManagerPolicy_isSplatOnlyUpdateRollbackSuggested__block_invoke;
  v8[3] = &unk_279CAA858;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v6, v8);

  LOBYTE(v2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __53__SUManagerPolicy_isSplatOnlyUpdateRollbackSuggested__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isSplatOnlyUpdateRollbackSuggested];
}

- (void)managedInstallRequested
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUManagerPolicy_managedInstallRequested__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v6, block);
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SUManagerPolicy_mandatoryUpdateDictionary__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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

- (void)setMandatoryUpdateDictionary:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SUManagerPolicy_setMandatoryUpdateDictionary___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __48__SUManagerPolicy_setMandatoryUpdateDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 setMandatoryUpdateDictionary:*(a1 + 40)];
}

- (void)reportPostponedEvent:(id)a3 withStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerPolicy *)self core];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerPolicy_reportPostponedEvent_withStatus___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __51__SUManagerPolicy_reportPostponedEvent_withStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 reportPostponedEvent:*(a1 + 40) withStatus:*(a1 + 48)];
}

- (void)reportSimulatedOTAAutoTriggeredEvent
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUManagerPolicy_reportSimulatedOTAAutoTriggeredEvent__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __55__SUManagerPolicy_reportSimulatedOTAAutoTriggeredEvent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 reportSimulatedOTAAutoTriggeredEvent];
}

- (void)reportOTAAutoTriggeredEvent
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUManagerPolicy_reportOTAAutoTriggeredEvent__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__SUManagerPolicy_download__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__SUManagerPolicy_installPolicy__block_invoke;
  v9[3] = &unk_279CAA858;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

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

- (void)updateInstallPolicyType:(unint64_t)a3
{
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUManagerPolicy_updateInstallPolicyType___block_invoke;
  v7[3] = &unk_279CAA9C0;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(v6, v7);
}

void __43__SUManagerPolicy_updateInstallPolicyType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 updateInstallPolicyType:*(a1 + 40)];
}

- (void)addUnlockCallback:(SEL)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(SUManagerPolicy *)self core];
  v8 = [v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUManagerPolicy_addUnlockCallback_forKey___block_invoke;
  block[3] = &unk_279CAA8A8;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(v8, block);
}

void __44__SUManagerPolicy_addUnlockCallback_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 addUnlockCallback:*(a1 + 48) forKey:*(a1 + 40)];
}

- (void)removeUnlockCallback:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerPolicy *)self core];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SUManagerPolicy_removeUnlockCallback___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __40__SUManagerPolicy_removeUnlockCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 removeUnlockCallback:*(a1 + 40)];
}

- (void)persistStashOnUnlock
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUManagerPolicy_persistStashOnUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __39__SUManagerPolicy_persistStashOnUnlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 persistStashOnUnlock];
}

- (void)networkMonitorDetectOverrides
{
  v3 = [(SUManagerPolicy *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUManagerPolicy_networkMonitorDetectOverrides__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
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