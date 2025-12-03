@interface SUInstaller
+ (id)purgeOptionsForDownloadOptions:(id)options spaceNeeded:(unint64_t)needed completionQueue:(id)queue;
- (BOOL)_isUpdateReadyForInstallationWithOptions:(id)options error:(id *)error shouldRetry:(BOOL *)retry;
- (BOOL)isInstallTonight;
- (BOOL)isInstallTonightScheduled;
- (BOOL)isInstalled;
- (BOOL)isInstallerReadyForInstallationWithOptions:(id)options error:(id *)error ShouldRetry:(BOOL *)retry;
- (BOOL)isInstalling;
- (BOOL)verifyConstraintsMetForInstallationWithOptions:(id)options error:(id *)error;
- (SUAutoUpdatePasscodePolicy)passcodePolicy;
- (SUInstallPolicy)installPolicy;
- (SUInstaller)initWithCore:(id)core;
- (SUManagerCore)core;
- (unint64_t)getInstallationConstraintsForDownload:(id)download allowDiskCleanupIfNeeded:(BOOL)needed forceDiskCleanupIfNeeded:(BOOL)ifNeeded options:(id)options;
- (void)autoSUFailedWithError:(id)error;
- (void)ensureSSOTokenIfNeededForInstall:(id)install;
- (void)getInstallationConstraintsForDownload:(id)download allowDiskCleanupIfNeeded:(BOOL)needed forceDiskCleanupIfNeeded:(BOOL)ifNeeded options:(id)options completionQueue:(id)queue completion:(id)completion;
- (void)installCompleted:(id)completed;
- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result;
- (void)isUpdateReadyForInstallationWithOptions:(id)options replyHandler:(id)handler;
- (void)managedInstallRequested;
- (void)setInstallPolicy:(id)policy;
- (void)setInstalled:(BOOL)installed;
- (void)setIsInstallTonight:(BOOL)tonight;
- (void)setIsInstallTonightScheduled:(BOOL)scheduled;
- (void)setPasscodePolicy:(id)policy;
- (void)updateInstallPolicyClientName:(id)name;
- (void)updateInstallPolicyType:(unint64_t)type;
@end

@implementation SUInstaller

- (SUInstaller)initWithCore:(id)core
{
  coreCopy = core;
  v24.receiver = self;
  v24.super_class = SUInstaller;
  v5 = [(SUInstaller *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_core, coreCopy);
    *&v6->_installing = 0;
    v6->_isInstallTonightScheduled = 0;
    passcodePolicy = v6->_passcodePolicy;
    v6->_passcodePolicy = 0;

    currentInstallOptions = v6->_currentInstallOptions;
    v6->_currentInstallOptions = 0;

    installDeviceLockAssertion = v6->_installDeviceLockAssertion;
    v6->_installDeviceLockAssertion = 0;

    WeakRetained = objc_loadWeakRetained(&v6->_core);
    state = [WeakRetained state];
    installPolicy = [state installPolicy];
    installPolicy = v6->_installPolicy;
    v6->_installPolicy = installPolicy;

    if (!v6->_installPolicy)
    {
      v14 = [[SUInstallPolicy alloc] initWithInstallPolicyType:0];
      v15 = v6->_installPolicy;
      v6->_installPolicy = v14;
    }

    out_token = -1;
    objc_initWeak(&location, v6);
    uTF8String = [(__CFString *)@"SUPreferencesChangedNotificationAutoUpdate" UTF8String];
    v17 = objc_loadWeakRetained(&v6->_core);
    workQueue = [v17 workQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28__SUInstaller_initWithCore___block_invoke;
    handler[3] = &unk_279CABB18;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch(uTF8String, &out_token, workQueue, handler);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __28__SUInstaller_initWithCore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    SULogInfo(@"%s: Got AutoUpdate preference change notification, reloading preferences", v2, v3, v4, v5, v6, v7, v8, "[SUInstaller initWithCore:]_block_invoke");
    v9 = +[SUPreferences sharedInstance];
    [v9 reload];
    v10 = objc_loadWeakRetained(v19 + 1);
    v11 = [v10 isAutoUpdateEnabled];

    SULogInfo(@"%s: Calling updateInstallPolicyAutoUpdateEnabled:%d", v12, v13, v14, v15, v16, v17, v18, "[SUInstaller initWithCore:]_block_invoke");
    [v19 updateInstallPolicyAutoUpdateEnabled:v11];

    WeakRetained = v19;
  }
}

- (BOOL)isInstalling
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_installing;
}

- (BOOL)isInstalled
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_installed;
}

- (void)setInstalled:(BOOL)installed
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  self->_installed = installed;
}

- (BOOL)isInstallTonight
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_isInstallTonight;
}

- (void)setIsInstallTonight:(BOOL)tonight
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  self->_isInstallTonight = tonight;
}

- (BOOL)isInstallTonightScheduled
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_isInstallTonightScheduled;
}

- (void)setIsInstallTonightScheduled:(BOOL)scheduled
{
  scheduledCopy = scheduled;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_isInstallTonightScheduled != scheduledCopy)
  {
    SULogInfo(@"%s: Setting isInstallTonightScheduled to %@", v7, v8, v9, v10, v11, v12, v13, "[SUInstaller setIsInstallTonightScheduled:]");
    self->_isInstallTonightScheduled = scheduledCopy;
    core2 = [(SUInstaller *)self core];
    delegate = [core2 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      core3 = [(SUInstaller *)self core];
      externWorkQueue = [core3 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__SUInstaller_setIsInstallTonightScheduled___block_invoke;
      block[3] = &unk_279CAAD00;
      block[4] = self;
      v20 = scheduledCopy;
      dispatch_async(externWorkQueue, block);
    }
  }
}

void __44__SUInstaller_setIsInstallTonightScheduled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 installTonightScheduled:*(a1 + 40)];
}

- (SUAutoUpdatePasscodePolicy)passcodePolicy
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  passcodePolicy = self->_passcodePolicy;

  return passcodePolicy;
}

- (void)setPasscodePolicy:(id)policy
{
  policyCopy = policy;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  passcodePolicy = self->_passcodePolicy;
  self->_passcodePolicy = policyCopy;
}

- (SUInstallPolicy)installPolicy
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  installPolicy = self->_installPolicy;

  return installPolicy;
}

- (void)setInstallPolicy:(id)policy
{
  policyCopy = policy;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  installPolicy = self->_installPolicy;
  self->_installPolicy = policyCopy;
}

- (void)updateInstallPolicyType:(unint64_t)type
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(SUInstallPolicy *)self->_installPolicy type]!= type)
  {
    [(SUInstallPolicy *)self->_installPolicy _setType:type];
    core2 = [(SUInstaller *)self core];
    state = [core2 state];
    [state setInstallPolicy:self->_installPolicy];

    core3 = [(SUInstaller *)self core];
    state2 = [core3 state];
    [state2 save];

    core4 = [(SUInstaller *)self core];
    delegate = [core4 delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = self->_installPolicy;
      core5 = [(SUInstaller *)self core];
      externWorkQueue = [core5 externWorkQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __39__SUInstaller_updateInstallPolicyType___block_invoke;
      v18[3] = &unk_279CAA7C0;
      v18[4] = self;
      v19 = v14;
      v17 = v14;
      dispatch_async(externWorkQueue, v18);
    }
  }
}

void __39__SUInstaller_updateInstallPolicyType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 installPolicyDidChange:*(a1 + 40)];
}

void __52__SUInstaller_updateInstallPolicyAutoUpdateEnabled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 installPolicyDidChange:*(a1 + 40)];
}

void __50__SUInstaller_updateInstallPolicyDarkBootEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[3];
  v4 = [v1 core];
  v3 = [v4 delegate];
  [v3 installPolicyDidChange:v2];
}

- (void)updateInstallPolicyClientName:(id)name
{
  nameCopy = name;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientName = [(SUInstallPolicy *)self->_installPolicy clientName];
  LOBYTE(workQueue) = [clientName isEqualToString:nameCopy];

  if (workQueue)
  {
    v8 = [nameCopy isEqualToString:@"dmd"];

    if (v8)
    {

      [(SUInstaller *)self managedInstallRequested];
    }
  }

  else
  {
    [(SUInstallPolicy *)self->_installPolicy _setClientName:nameCopy];

    core2 = [(SUInstaller *)self core];
    state = [core2 state];
    [state setInstallPolicy:self->_installPolicy];

    core3 = [(SUInstaller *)self core];
    state2 = [core3 state];
    [state2 save];

    core4 = [(SUInstaller *)self core];
    delegate = [core4 delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      core5 = [(SUInstaller *)self core];
      externWorkQueue = [core5 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__SUInstaller_updateInstallPolicyClientName___block_invoke;
      block[3] = &unk_279CAA708;
      block[4] = self;
      dispatch_async(externWorkQueue, block);
    }
  }
}

void __45__SUInstaller_updateInstallPolicyClientName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[3];
  v4 = [v1 core];
  v3 = [v4 delegate];
  [v3 installPolicyDidChange:v2];
}

- (BOOL)isInstallerReadyForInstallationWithOptions:(id)options error:(id *)error ShouldRetry:(BOOL *)retry
{
  optionsCopy = options;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (retry)
  {
    *retry = 1;
  }

  core2 = [(SUInstaller *)self core];
  downloadAsset = [core2 downloadAsset];
  if (!downloadAsset)
  {

    goto LABEL_8;
  }

  v13 = downloadAsset;
  core3 = [(SUInstaller *)self core];
  download = [core3 download];

  if (!download)
  {
LABEL_8:
    v50 = 0;
    [SUUtility assignError:&v50 withCode:3];
    v19 = v50;
LABEL_9:
    v27 = v19;
    if (!retry)
    {
LABEL_15:
      path = 0;
      goto LABEL_16;
    }

    path = 0;
LABEL_11:
    *retry = 0;
    goto LABEL_16;
  }

  core4 = [(SUInstaller *)self core];
  isScanning = [core4 isScanning];

  if (isScanning)
  {
    v49 = 0;
    [SUUtility assignError:&v49 withCode:13];
    v18 = v49;
LABEL_14:
    v27 = v18;
    goto LABEL_15;
  }

  core5 = [(SUInstaller *)self core];
  isDownloading = [core5 isDownloading];

  if (isDownloading)
  {
    v48 = 0;
    [SUUtility assignError:&v48 withCode:11];
    v18 = v48;
    goto LABEL_14;
  }

  if ([(SUInstaller *)self isInstalling])
  {
    v47 = 0;
    [SUUtility assignError:&v47 withCode:14];
    v19 = v47;
    goto LABEL_9;
  }

  if ([(SUInstaller *)self isInstalled])
  {
    v46 = 0;
    [SUUtility assignError:&v46 withCode:42];
    v19 = v46;
    goto LABEL_9;
  }

  core6 = [(SUInstaller *)self core];
  downloadAsset2 = [core6 downloadAsset];
  getLocalUrl = [downloadAsset2 getLocalUrl];
  path = [getLocalUrl path];

  if (!path)
  {
    v45 = 0;
    [SUUtility assignError:&v45 withCode:18];
    v19 = v45;
    goto LABEL_9;
  }

  if (!+[SUUtility isReturnToServiceModeActive])
  {
    SULogInfo(@"isInstallerReadyForInstallationWithOptions? YES", v36, v37, v38, v39, v40, v41, v42, v43);
    v31 = 1;
    goto LABEL_20;
  }

  SULogInfo(@"Not allowing installation in RRTS mode", v36, v37, v38, v39, v40, v41, v42, v43);
  v44 = 0;
  [SUUtility assignError:&v44 withCode:106];
  v27 = v44;
  if (retry)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (error && v27)
  {
    *error = [v27 errorWithExtendedUserInfoFromOptions:optionsCopy];
  }

  SULogInfo(@"isInstallerReadyForInstallationWithOptions? NO due to %@", v20, v21, v22, v23, v24, v25, v26, v27);

  v31 = 0;
LABEL_20:

  return v31;
}

- (void)getInstallationConstraintsForDownload:(id)download allowDiskCleanupIfNeeded:(BOOL)needed forceDiskCleanupIfNeeded:(BOOL)ifNeeded options:(id)options completionQueue:(id)queue completion:(id)completion
{
  downloadCopy = download;
  optionsCopy = options;
  queueCopy = queue;
  completionCopy = completion;
  v18 = dispatch_queue_create("com.apple.softwareupdateservicesd.installationConstraintQueue", 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __138__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options_completionQueue_completion___block_invoke;
  v23[3] = &unk_279CABCA8;
  v23[4] = self;
  v24 = downloadCopy;
  neededCopy = needed;
  ifNeededCopy = ifNeeded;
  v26 = queueCopy;
  v27 = completionCopy;
  v25 = optionsCopy;
  v19 = queueCopy;
  v20 = completionCopy;
  v21 = optionsCopy;
  v22 = downloadCopy;
  dispatch_async(v18, v23);
}

void __138__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options_completionQueue_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getInstallationConstraintsForDownload:*(a1 + 40) allowDiskCleanupIfNeeded:*(a1 + 72) forceDiskCleanupIfNeeded:*(a1 + 73) options:*(a1 + 48)];
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __138__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options_completionQueue_completion___block_invoke_2;
      v6[3] = &unk_279CABC80;
      v7 = v3;
      v8 = v2;
      dispatch_async(v4, v6);
    }

    else
    {
      v5 = v3[2];

      v5();
    }
  }
}

- (unint64_t)getInstallationConstraintsForDownload:(id)download allowDiskCleanupIfNeeded:(BOOL)needed forceDiskCleanupIfNeeded:(BOOL)ifNeeded options:(id)options
{
  neededCopy = needed;
  downloadCopy = download;
  optionsCopy = options;
  v12 = [[SUInstallationConstraintObserver alloc] initWithDownload:downloadCopy andInstallOptions:optionsCopy];
  v13 = -[SUComposedInstallationConstraintMonitor unsatisfiedConstraintsWithIgnorableConstraints:](v12, "unsatisfiedConstraintsWithIgnorableConstraints:", [optionsCopy ignorableConstraints]);
  v14 = v13;
  if (!neededCopy || (v13 & 4) == 0)
  {
    goto LABEL_12;
  }

  selfCopy = self;
  v15 = [(SUInstallationConstraintObserver *)v12 monitorOfClass:objc_opt_class()];
  deltaSpaceNeeded = [v15 deltaSpaceNeeded];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = *&getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_REQUEST_TIME;
  v20 = getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_DESCRIPTOR;
  descriptor = [downloadCopy descriptor];
  LOBYTE(v20) = [v20 isEqual:descriptor];

  if ((v20 & 1) == 0)
  {
    descriptor2 = [downloadCopy descriptor];
    v30 = getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_DESCRIPTOR;
    getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_DESCRIPTOR = descriptor2;

LABEL_8:
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:deltaSpaceNeeded];
    SULogInfo(@"Insufficient disk space detected for installation - attempting to free: %@ bytes", v32, v33, v34, v35, v36, v37, v38, v31);

    downloadOptions = [downloadCopy downloadOptions];
    descriptor3 = [downloadCopy descriptor];
    installationSize = [descriptor3 installationSize];
    [(SUInstaller *)selfCopy core];
    v42 = optionsCopy;
    v44 = v43 = v15;
    workQueue = [v44 workQueue];
    v46 = [SUInstaller purgeOptionsForDownloadOptions:downloadOptions spaceNeeded:installationSize completionQueue:workQueue];

    v15 = v43;
    optionsCopy = v42;

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __111__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options___block_invoke;
    v51[3] = &unk_279CABCD0;
    v51[4] = selfCopy;
    v52 = downloadCopy;
    v53 = v42;
    [SUSpace makeRoomForUpdate:v46 completion:v51];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_REQUEST_TIME = v47;

    goto LABEL_9;
  }

  if (ifNeeded || vabdd_f64(v18, v19) > 10.0)
  {
    goto LABEL_8;
  }

  SULogInfo(@"Insufficient disk space detected for installation but ignoring attempt to free space because we're within buffer from a prior attempt to do so.", v22, v23, v24, v25, v26, v27, v28, v49);
LABEL_9:
  [v15 refreshConstraints];
  if (![v15 deltaSpaceNeeded])
  {
    v14 &= ~4uLL;
  }

LABEL_12:
  [(SUInstallationConstraintObserver *)v12 invalidate];

  return v14;
}

void __111__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = [*(a1 + 32) core];
    v8 = [v7 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options___block_invoke_2;
    block[3] = &unk_279CAA7C0;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v23 = v9;
    dispatch_async(v8, block);
  }

  else
  {
    if ([*(a1 + 48) automaticInstallation])
    {
      v17 = [*(a1 + 32) core];
      v18 = [v17 workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __111__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options___block_invoke_3;
      v20[3] = &unk_279CAA7C0;
      v19 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      v21 = v19;
      dispatch_async(v18, v20);
    }

    SULogInfo(@"Failed to make room for install: %@", v10, v11, v12, v13, v14, v15, v16, v6);
  }
}

void __111__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [*(a1 + 40) descriptor];
  [v3 dismissInsufficientDiskSpaceFollowupForUpdate:v2 orForce:0];
}

void __111__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options___block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) isInstalled] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isInstalling") & 1) == 0)
  {
    v3 = [*(a1 + 32) core];
    v2 = [*(a1 + 40) descriptor];
    [v3 showInsufficientDiskSpaceFollowupForUpdate:v2];
  }
}

- (void)isUpdateReadyForInstallationWithOptions:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  SULogDebug(@"%s is called with options = %@", v7, v8, v9, v10, v11, v12, v13, "[SUInstaller isUpdateReadyForInstallationWithOptions:replyHandler:]");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SUInstaller_isUpdateReadyForInstallationWithOptions_replyHandler___block_invoke;
  v16[3] = &unk_279CABCF8;
  v16[4] = self;
  v17 = handlerCopy;
  v14 = handlerCopy;
  [(SUInstaller *)self _isUpdateReadyForInstallationWithOptions:optionsCopy forceCleanup:0 withReplyHandler:v16];
}

void __68__SUInstaller_isUpdateReadyForInstallationWithOptions_replyHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (v9)
  {
    v7 = [*(a1 + 32) core];
    [v7 donateSUErrorToBiome:v9];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, a3, v9);
  }
}

- (BOOL)_isUpdateReadyForInstallationWithOptions:(id)options error:(id *)error shouldRetry:(BOOL *)retry
{
  optionsCopy = options;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(SUInstaller *)self isInstallerReadyForInstallationWithOptions:optionsCopy error:error ShouldRetry:retry])
  {
    v11 = [(SUInstaller *)self verifyConstraintsMetForInstallationWithOptions:optionsCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __86__SUInstaller__isUpdateReadyForInstallationWithOptions_forceCleanup_withReplyHandler___block_invoke(void *a1)
{
  v8 = 0;
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _isUpdateReadyForInstallationWithOptions:v3 error:&v7 shouldRetry:&v8];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v8, v5);
  }
}

- (BOOL)verifyConstraintsMetForInstallationWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUInstaller *)self core];
  download = [core2 download];
  v11 = [(SUInstaller *)self getInstallationConstraintsForDownload:download allowDiskCleanupIfNeeded:0 forceDiskCleanupIfNeeded:0 options:optionsCopy];

  if (v11)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    [v19 setSafeObject:v20 forKey:@"SUInstallationConstraintsUnmet"];

    v21 = MEMORY[0x277CCABB0];
    installPolicy = [(SUInstaller *)self installPolicy];
    clientName = [installPolicy clientName];
    v24 = [v21 numberWithBool:{objc_msgSend(clientName, "isEqualToString:", @"dmd"}];
    [v19 setSafeObject:v24 forKey:@"SUMDMInstallationRequest"];

    v25 = SUStringFromInstallationConstraints(v11);
    [v19 setSafeObject:v25 forKey:*MEMORY[0x277CCA068]];

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:20 userInfo:v19];
    core3 = [(SUInstaller *)self core];
    [core3 reportPostponedEvent:v26 withStatus:@"installNotReady" withAdditionalMetrics:v19];

    v28 = SUStringFromInstallationConstraints(v11);
    SULogInfo(@"Is ready for installation?  No due to constraints unmet: %@", v29, v30, v31, v32, v33, v34, v35, v28);

    if (error)
    {
      v36 = v26;
      *error = v26;
    }

    core4 = [(SUInstaller *)self core];
    state = [core4 state];
    v39 = [v26 description];
    [state setDdmPersistedErrorDescription:v39];

    notify_post([*MEMORY[0x277D64248] UTF8String]);
  }

  else
  {
    SULogInfo(@"Is ready for installation?  YES", v12, v13, v14, v15, v16, v17, v18, v41);
  }

  return v11 == 0;
}

- (void)installCompleted:(id)completed
{
  v156 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  notify_post([*MEMORY[0x277D64250] UTF8String]);
  core2 = [(SUInstaller *)self core];
  state = [core2 state];
  v9 = state;
  v10 = MEMORY[0x277D292C8];
  if (completedCopy)
  {
    v11 = [completedCopy description];
    [v9 setDdmPersistedErrorDescription:v11];

    notify_post([*MEMORY[0x277D64248] UTF8String]);
    if (![(SUInstaller *)self isInstallRetrying])
    {
      domain = [completedCopy domain];
      if ([domain isEqualToString:*v10])
      {
        code = [completedCopy code];

        if (code == 20)
        {
          core3 = [(SUInstaller *)self core];
          download = [core3 download];

          [(SUInstaller *)self setInstallRetrying:1];
          v23 = +[SUUtility taskQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __32__SUInstaller_installCompleted___block_invoke;
          block[3] = &unk_279CAA798;
          v147 = download;
          selfCopy = self;
          v24 = completedCopy;
          v149 = v24;
          core22 = download;
          dispatch_async(v23, block);

LABEL_56:
          goto LABEL_57;
        }
      }

      else
      {
      }
    }

    SULogInfo(@"Installation error: %@", v12, v13, v14, v15, v16, v17, v18, completedCopy);
    domain2 = [completedCopy domain];
    v29 = [domain2 isEqualToString:@"com.apple.softwareupdateservices.errors"];

    if (v29 && ([completedCopy code] == 78 || objc_msgSend(completedCopy, "code") == 64))
    {
      SULogInfo(@"Installation error is fatal, clean update", v30, v31, v32, v33, v34, v35, v36, v121);
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    v27 = [SUUtility errorRemovingUserInfoKey:@"InstallOptions" originalError:completedCopy];

    if ((v26 & 1) == 0)
    {
      core4 = [(SUInstaller *)self core];
      [core4 reportPostponedEvent:v27 withStatus:*MEMORY[0x277D64590]];
    }

    core2 = [v27 domain];
    if ([core2 isEqualToString:*v10])
    {
      code2 = [v27 code];

      if (code2 != 26)
      {
        goto LABEL_19;
      }

      core2 = [(SUInstaller *)self core];
      [core2 setLastStashbagPersistedDate:0];
    }
  }

  else
  {
    [state setDdmPersistedError:0];

    v26 = 0;
    v27 = 0;
  }

LABEL_19:
  [(SUInstaller *)self setInstallRetrying:0];
  if (self->_installDeviceLockAssertion)
  {
    SULogInfo(@"releasing lock assertion", v39, v40, v41, v42, v43, v44, v45, v121);
    [(SUInvalidatable *)self->_installDeviceLockAssertion invalidate];
    installDeviceLockAssertion = self->_installDeviceLockAssertion;
    self->_installDeviceLockAssertion = 0;
  }

  SULogInfo(@"[Space] %s releasing entitled space and resume CD reserve monitoring", v39, v40, v41, v42, v43, v44, v45, "[SUInstaller installCompleted:]");
  core5 = [(SUInstaller *)self core];
  [core5 resumeOrDisableReserveSpace];

  selfCopy2 = self;
  v124 = v27;
  v123 = v26;
  if (v27)
  {
    domain3 = [v27 domain];
    if ([domain3 isEqualToString:*v10])
    {
      code3 = [v27 code];

      if (code3 != 26)
      {
LABEL_26:
        installPolicy = [(SUInstaller *)self installPolicy];
        clientName = [installPolicy clientName];
        v52 = [clientName isEqualToString:@"dmd"];

        if (v52)
        {
          v154[0] = MEMORY[0x277CBEC38];
          v153[0] = @"SUMDMInstallationRequest";
          v153[1] = @"SUAutomaticInstallation";
          v53 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUInstallOptions automaticInstallation](self->_currentInstallOptions, "automaticInstallation")}];
          v154[1] = v53;
          v54 = MEMORY[0x277CBEAC0];
          v55 = v154;
          v56 = v153;
          v57 = 2;
        }

        else
        {
          v151 = @"SUAutomaticInstallation";
          v53 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUInstallOptions automaticInstallation](self->_currentInstallOptions, "automaticInstallation")}];
          v152 = v53;
          v54 = MEMORY[0x277CBEAC0];
          v55 = &v152;
          v56 = &v151;
          v57 = 1;
        }

        v85 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:v57];
        v86 = [SUUtility translateError:v27 withAddedUserInfo:v85];

        SULogInfo(@"Installation failed with error: %@", v87, v88, v89, v90, v91, v92, v93, v86);
        core6 = [(SUInstaller *)self core];
        descriptor2 = v86;
        [core6 donateSUErrorToBiome:v86];

        core7 = [(SUInstaller *)self core];
        download2 = [core7 download];
        descriptor = [download2 descriptor];

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        core8 = [(SUInstaller *)self core];
        observers = [core8 observers];
        allObjects = [observers allObjects];

        v100 = [allObjects countByEnumeratingWithState:&v134 objects:v150 count:16];
        if (v100)
        {
          v101 = v100;
          v102 = *v135;
          do
          {
            for (i = 0; i != v101; ++i)
            {
              if (*v135 != v102)
              {
                objc_enumerationMutation(allObjects);
              }

              v104 = *(*(&v134 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                core9 = [(SUInstaller *)self core];
                externWorkQueue = [core9 externWorkQueue];
                v131[0] = MEMORY[0x277D85DD0];
                v131[1] = 3221225472;
                v131[2] = __32__SUInstaller_installCompleted___block_invoke_3_394;
                v131[3] = &unk_279CAA798;
                v131[4] = v104;
                v132 = descriptor;
                v133 = descriptor2;
                dispatch_async(externWorkQueue, v131);

                self = selfCopy2;
              }
            }

            v101 = [allObjects countByEnumeratingWithState:&v134 objects:v150 count:16];
          }

          while (v101);
        }

        core10 = [(SUInstaller *)self core];
        delegate = [core10 delegate];
        v109 = objc_opt_respondsToSelector();

        if (v109)
        {
          core11 = [(SUInstaller *)self core];
          externWorkQueue2 = [core11 externWorkQueue];
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __32__SUInstaller_installCompleted___block_invoke_4_395;
          v128[3] = &unk_279CAA798;
          v128[4] = self;
          v129 = descriptor;
          v130 = descriptor2;
          dispatch_async(externWorkQueue2, v128);
        }

        v112 = descriptor;
        goto LABEL_53;
      }

      domain3 = [(SUInstaller *)self core];
      [domain3 clearKeybagStash];
    }

    goto LABEL_26;
  }

  self->_installed = 1;
  core12 = [(SUInstaller *)self core];
  state2 = [core12 state];
  v60 = [MEMORY[0x277CBEAA8] now];
  [state2 setAppliedTime:v60];

  core13 = [(SUInstaller *)self core];
  state3 = [core13 state];
  [state3 save];

  v63 = +[SUAlertPresentationManager sharedInstance];
  [v63 dismissAlertsOfClass:objc_opt_class() animated:1];

  core14 = [(SUInstaller *)self core];
  [core14 reportOTAInstalledEvent];

  SULogInfo(@"Clearing badge after successful install", v65, v66, v67, v68, v69, v70, v71, v122);
  core15 = [(SUInstaller *)self core];
  [core15 clearBadgeAndBanner];

  core16 = [(SUInstaller *)self core];
  download3 = [core16 download];
  descriptor2 = [download3 descriptor];

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  core17 = [(SUInstaller *)self core];
  observers2 = [core17 observers];
  allObjects2 = [observers2 allObjects];

  v78 = [allObjects2 countByEnumeratingWithState:&v142 objects:v155 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v143;
    do
    {
      for (j = 0; j != v79; ++j)
      {
        if (*v143 != v80)
        {
          objc_enumerationMutation(allObjects2);
        }

        v82 = *(*(&v142 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          core18 = [(SUInstaller *)self core];
          externWorkQueue3 = [core18 externWorkQueue];
          v140[0] = MEMORY[0x277D85DD0];
          v140[1] = 3221225472;
          v140[2] = __32__SUInstaller_installCompleted___block_invoke_387;
          v140[3] = &unk_279CAA7C0;
          v140[4] = v82;
          v141 = descriptor2;
          dispatch_async(externWorkQueue3, v140);

          self = selfCopy2;
        }
      }

      v79 = [allObjects2 countByEnumeratingWithState:&v142 objects:v155 count:16];
    }

    while (v79);
  }

  core19 = [(SUInstaller *)self core];
  delegate2 = [core19 delegate];
  v115 = objc_opt_respondsToSelector();

  if (v115)
  {
    core20 = [(SUInstaller *)self core];
    externWorkQueue4 = [core20 externWorkQueue];
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __32__SUInstaller_installCompleted___block_invoke_2_388;
    v138[3] = &unk_279CAA7C0;
    v138[4] = self;
    descriptor2 = descriptor2;
    v139 = descriptor2;
    dispatch_async(externWorkQueue4, v138);

    v112 = v139;
LABEL_53:
  }

  v24 = v124;

  [SUUtility setCacheable:1];
  currentInstallOptions = self->_currentInstallOptions;
  self->_currentInstallOptions = 0;

  [(SUInstaller *)self setInstalling:0];
  if (v123)
  {
    core21 = [(SUInstaller *)self core];
    [core21 clearKeybagStash];

    core22 = [(SUInstaller *)self core];
    [core22 cleanupPreviousDownloadState];
    goto LABEL_56;
  }

LABEL_57:

  v120 = *MEMORY[0x277D85DE8];
}

void __32__SUInstaller_installCompleted___block_invoke(id *a1)
{
  v2 = [a1[4] descriptor];
  v3 = [v2 installationSize];

  v4 = [a1[4] downloadOptions];
  v5 = [a1[5] core];
  v6 = [v5 workQueue];
  v7 = [SUInstaller purgeOptionsForDownloadOptions:v4 spaceNeeded:v3 + 10485760 completionQueue:v6];

  v8 = [a1[4] descriptor];
  v9 = [v8 unentitledReserveAmount];

  [v7 neededBytes];
  [v7 neededBytes];
  SULogInfo(@"[Space] %s Setting entitled space to %llu (%llu MB) and unentitledSpace to %llu (%llu MB)", v10, v11, v12, v13, v14, v15, v16, "[SUInstaller installCompleted:]_block_invoke");
  v17 = MEMORY[0x277D641E8];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "neededBytes")}];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  [v17 cacheDeletePauseReserveSpace:v18 unentitledSpace:v19 withPurpose:@"SUSController-installCompleted-retry"];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __32__SUInstaller_installCompleted___block_invoke_2;
  v22[3] = &unk_279CABCD0;
  v23 = a1[6];
  v21 = *(a1 + 2);
  v20 = v21.i64[0];
  v24 = vextq_s8(v21, v21, 8uLL);
  [SUSpace makeRoomForUpdate:v7 completion:v22];
}

void __32__SUInstaller_installCompleted___block_invoke_2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"InstallOptions"];

  if (a2)
  {
    SULogInfo(@"Cleaned up sufficient space to retry install", v9, v10, v11, v12, v13, v14, v15, v39);
    v16 = [*(a1 + 40) core];
    v17 = [v16 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SUInstaller_installCompleted___block_invoke_3;
    block[3] = &unk_279CAA7C0;
    v18 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v43 = v18;
    dispatch_async(v17, block);

    v19 = [*(a1 + 40) core];
    [v8 setManaged:{objc_msgSend(v19, "isManaged")}];

    v20 = [*(a1 + 40) core];
    v21 = [v20 engine];
    [v21 installUpdate:v8];
  }

  else
  {
    if ([v8 automaticInstallation])
    {
      v22 = [*(a1 + 40) core];
      v23 = [v22 workQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __32__SUInstaller_installCompleted___block_invoke_4;
      v40[3] = &unk_279CAA7C0;
      v24 = *(a1 + 48);
      v40[4] = *(a1 + 40);
      v41 = v24;
      dispatch_async(v23, v40);
    }

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v25 setObject:&unk_287B6F670 forKeyedSubscript:@"SUInstallationConstraintsUnmet"];
    [v25 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:20 userInfo:v25];
    v27 = [*(a1 + 40) core];
    v45[0] = &unk_287B6F670;
    v28 = *MEMORY[0x277CCA068];
    v44[0] = @"SUInstallationConstraintsUnmet";
    v44[1] = v28;
    v29 = SUStringFromInstallationConstraints(4);
    v45[1] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [v27 reportPostponedEvent:v26 withStatus:@"installNotReady" withAdditionalMetrics:v30];

    SULogInfo(@"Failed to Clean up sufficient space to retry install: %@", v31, v32, v33, v34, v35, v36, v37, v26);
    [*(a1 + 40) installCompleted:v26];
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __32__SUInstaller_installCompleted___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [*(a1 + 40) descriptor];
  [v3 dismissInsufficientDiskSpaceFollowupForUpdate:v2 orForce:0];
}

void __32__SUInstaller_installCompleted___block_invoke_4(uint64_t a1)
{
  if (([*(a1 + 32) isInstalled] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isInstalling") & 1) == 0)
  {
    v3 = [*(a1 + 32) core];
    v2 = [*(a1 + 40) descriptor];
    [v3 showInsufficientDiskSpaceFollowupForUpdate:v2];
  }
}

void __32__SUInstaller_installCompleted___block_invoke_2_388(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 installDidFinish:*(a1 + 40)];
}

void __32__SUInstaller_installCompleted___block_invoke_4_395(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 installDidFail:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  notify_post([*MEMORY[0x277D64250] UTF8String]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke;
  v50[3] = &unk_279CAAE18;
  v50[4] = self;
  v10 = resultCopy;
  v51 = v10;
  v11 = MEMORY[0x26D668B30](v50);
  if (optionsCopy || (optionsCopy = objc_opt_new(), SULogInfo(@"No installOptions provided, using the default value", v12, v13, v14, v15, v16, v17, v18, v45), optionsCopy))
  {
    -[SUInstaller updateInstallPolicyType:](self, "updateInstallPolicyType:", [optionsCopy isRequired]);
    -[SUInstaller updateInstallPolicyDarkBootEnabled:](self, "updateInstallPolicyDarkBootEnabled:", [optionsCopy isDarkBoot]);
    clientName = [optionsCopy clientName];
    [(SUInstaller *)self updateInstallPolicyClientName:clientName];

    core2 = [(SUInstaller *)self core];
    [optionsCopy setManaged:{objc_msgSend(core2, "isManaged")}];
  }

  installPolicy = [(SUInstaller *)self installPolicy];
  SULogInfo(@"Starting SU Installation with install options: %@; policy: %@", v22, v23, v24, v25, v26, v27, v28, optionsCopy);

  core3 = [(SUInstaller *)self core];
  download = [core3 download];
  descriptor = [download descriptor];

  [descriptor installationSize];
  [descriptor installationSize];
  [descriptor unentitledReserveAmount];
  [descriptor unentitledReserveAmount];
  SULogInfo(@"[Space] %s Setting entitled space to %llu (%llu MB) and unentitledSpace to %llu (%llu MB)", v32, v33, v34, v35, v36, v37, v38, "[SUInstaller installUpdateWithInstallOptions:withResult:]");
  v39 = MEMORY[0x277D641E8];
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(descriptor, "installationSize")}];
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(descriptor, "unentitledReserveAmount")}];
  [v39 cacheDeletePauseReserveSpace:v40 unentitledSpace:v41 withPurpose:@"SUSController-installUpdateWithInstallOptions"];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_3;
  v46[3] = &unk_279CABD48;
  v46[4] = self;
  v47 = optionsCopy;
  v48 = descriptor;
  v49 = v11;
  v42 = descriptor;
  v43 = optionsCopy;
  v44 = v11;
  [(SUInstaller *)self _isUpdateReadyForInstallationWithOptions:v43 forceCleanup:1 withReplyHandler:v46];
}

void __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) core];
    [v6 donateSUErrorToBiome:v5];
  }

  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) core];
    v8 = [v7 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_2;
    block[3] = &unk_279CAADF0;
    v11 = *(a1 + 40);
    v12 = a2;
    v10 = v5;
    dispatch_async(v8, block);
  }
}

void __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_3(id *a1, char a2, uint64_t a3, void *a4)
{
  v80[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1[4] core];
  v8 = [v7 workQueue];
  dispatch_assert_queue_V2(v8);

  if (a2)
  {
    [a1[4] ensureSSOTokenIfNeededForInstall:a1[5]];
    SULogInfo(@"Ready to install!", v9, v10, v11, v12, v13, v14, v15, v69);
    [SUUtility setCacheable:0];
    [a1[4] setInstalling:1];
    objc_storeStrong(a1[4] + 6, a1[5]);
    v16 = +[SUKeybagInterface sharedInstance];
    v17 = [v16 createPreventLockAssertionWithDuration:600];
    v18 = a1[4];
    v19 = v18[5];
    v18[5] = v17;

    v20 = [a1[4] core];
    v21 = [v20 download];
    v22 = [v21 descriptor];

    if ([v22 isSplatOnly])
    {
      v23 = [MEMORY[0x277D64420] sharedDevice];
      v24 = [v23 hasSemiSplatActive];

      if (v24)
      {
        SULogInfo(@"Trying to install a Splat but an already-installed Splat was detected, rebooting...", v25, v26, v27, v28, v29, v30, v31, v70);
        v32 = [a1[4] core];
        v33 = [v32 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_5;
        block[3] = &unk_279CAA708;
        block[4] = a1[4];
        dispatch_async(v33, block);

        (*(a1[7] + 2))();
      }
    }

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_6;
    v71[3] = &unk_279CAA8F8;
    v34 = a1[5];
    v71[4] = a1[4];
    v72 = v34;
    v73 = a1[7];
    v35 = MEMORY[0x26D668B30](v71);
    v35[2]();

LABEL_13:
    goto LABEL_14;
  }

  v36 = [v6 domain];
  if (![v36 isEqualToString:@"com.apple.softwareupdateservices.errors"])
  {

    goto LABEL_10;
  }

  v37 = [v6 code];

  if (v37 != 14)
  {
LABEL_10:
    SULogInfo(@"Installation error: download not ready for installation: %@", v38, v39, v40, v41, v42, v43, v44, v6);
    SULogInfo(@"[Space] %s releasing entitled space and resume CD reserve monitoring", v45, v46, v47, v48, v49, v50, v51, "[SUInstaller installUpdateWithInstallOptions:withResult:]_block_invoke_3");
    v52 = [a1[4] core];
    [v52 resumeOrDisableReserveSpace];

    v53 = [a1[4] core];
    [v53 reportPostponedEvent:v6 withStatus:*MEMORY[0x277D645C0]];

    v78 = 0;
    [SUUtility assignError:&v78 withError:v6 translate:0];
    v54 = v78;
    v79 = @"SUAutomaticInstallation";
    v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "automaticInstallation")}];
    v80[0] = v55;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    v22 = [SUUtility updateError:v54 withAdditionalUserInfo:v56];

    SULogDebug(@"%s: outError = %@", v57, v58, v59, v60, v61, v62, v63, "[SUInstaller installUpdateWithInstallOptions:withResult:]_block_invoke_3");
    v64 = [a1[4] core];
    v65 = [v64 delegate];
    LOBYTE(v56) = objc_opt_respondsToSelector();

    if (v56)
    {
      v66 = [a1[4] core];
      v67 = [v66 externWorkQueue];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_4;
      v75[3] = &unk_279CAA798;
      v75[4] = a1[4];
      v76 = a1[6];
      v77 = v22;
      dispatch_async(v67, v75);
    }

    (*(a1[7] + 2))();
    goto LABEL_13;
  }

  SULogInfo(@"Ignore the install-in-progress error and return a success", v38, v39, v40, v41, v42, v43, v44, v69);
  (*(a1[7] + 2))();
LABEL_14:

  v68 = *MEMORY[0x277D85DE8];
}

void __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 installDidFail:*(a1 + 40) withError:*(a1 + 48)];
}

uint64_t __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  v3 = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) core];
    v6 = [v5 download];
    v7 = [v6 descriptor];

    v8 = [*(a1 + 32) core];
    v9 = [v8 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_7;
    block[3] = &unk_279CAA7C0;
    block[4] = *(a1 + 32);
    v49 = v7;
    v10 = v7;
    dispatch_async(v9, block);
  }

  v11 = [*(a1 + 32) core];
  [v11 reporterFlushEvent];

  v12 = [*(a1 + 32) core];
  v13 = [v12 engine];
  v14 = [*(a1 + 32) core];
  v15 = [v14 newInstallTonightConfig];
  [v13 refreshInstallTonightConfig:v15];

  v16 = +[SUPreferences sharedInstance];
  LODWORD(v13) = [v16 fakeInstallFailure];

  if (!v13)
  {
    v29 = +[SUPreferences sharedInstance];
    if ([v29 skipDownload])
    {
    }

    else
    {
      v37 = +[SUPreferences sharedInstance];
      v38 = [v37 skipApply];

      if (!v38)
      {
        v28 = [*(a1 + 32) core];
        v43 = [v28 engine];
        [v43 installUpdate:*(a1 + 40)];

        goto LABEL_5;
      }
    }

    SULogInfo(@"SUSkipDownload or SUSkipApply is set, skip this apply phase and return YES.", v30, v31, v32, v33, v34, v35, v36, v44);
    v39 = dispatch_time(0, 5000000000);
    v40 = [*(a1 + 32) core];
    v41 = [v40 workQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_9;
    v45[3] = &unk_279CAA708;
    v45[4] = *(a1 + 32);
    dispatch_after(v39, v41, v45);

    return (*(*(a1 + 48) + 16))();
  }

  SULogInfo(@"SUFakeInstallFailure is set; faking an installation failure of SUErrorCodeInstallNotAllowable...", v17, v18, v19, v20, v21, v22, v23, v44);
  v24 = [SUUtility errorWithCode:106];
  v25 = dispatch_time(0, 5000000000);
  v26 = [*(a1 + 32) core];
  v27 = [v26 workQueue];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_8;
  v46[3] = &unk_279CAA7C0;
  v46[4] = *(a1 + 32);
  v47 = v24;
  v28 = v24;
  dispatch_after(v25, v27, v46);

LABEL_5:
  return (*(*(a1 + 48) + 16))();
}

void __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_7(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 installDidStart:*(a1 + 40)];
}

- (void)managedInstallRequested
{
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUInstaller *)self core];
  delegate = [core2 delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = self->_installPolicy;
    core3 = [(SUInstaller *)self core];
    externWorkQueue = [core3 externWorkQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__SUInstaller_managedInstallRequested__block_invoke;
    v12[3] = &unk_279CAA7C0;
    v12[4] = self;
    v13 = v8;
    v11 = v8;
    dispatch_async(externWorkQueue, v12);
  }
}

void __38__SUInstaller_managedInstallRequested__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 managedInstallationRequested:*(a1 + 40)];
}

- (void)autoSUFailedWithError:(id)error
{
  errorCopy = error;
  core = [(SUInstaller *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.softwareupdateservices.errors"])
  {
    code = [errorCopy code];

    if (code == 14)
    {
      SULogInfo(@"%s: Auto installation failed to start due to SUErrorCodeInstallInProgress; do not show the alert", v8, v9, v10, v11, v12, v13, v14, "[SUInstaller autoSUFailedWithError:]");
      goto LABEL_12;
    }
  }

  else
  {
  }

  core2 = [(SUInstaller *)self core];
  download = [core2 download];
  if (download)
  {
    v17 = download;
    core3 = [(SUInstaller *)self core];
    download2 = [core3 download];
    descriptor = [download2 descriptor];

    if (!descriptor)
    {
      humanReadableUpdateName = 0;
      goto LABEL_11;
    }

    core2 = [(SUInstaller *)self core];
    download3 = [core2 download];
    descriptor2 = [download3 descriptor];
    humanReadableUpdateName = [descriptor2 humanReadableUpdateName];
  }

  else
  {
    humanReadableUpdateName = 0;
  }

LABEL_11:
  v24 = +[SUAlertPresentationManager sharedInstance];
  [v24 dismissAlertsOfClass:objc_opt_class() animated:1];

  v25 = [[SUAutoInstallFailureAlertItem alloc] initWithError:errorCopy buildNumber:humanReadableUpdateName];
  v26 = +[SUAlertPresentationManager sharedInstance];
  [v26 presentAlert:v25 animated:1];

LABEL_12:
}

- (void)ensureSSOTokenIfNeededForInstall:(id)install
{
  installCopy = install;
  v3 = +[SUPreferences sharedInstance];
  suppressSSOTokenInInstall = [v3 suppressSSOTokenInInstall];

  if ((suppressSSOTokenInInstall & 1) == 0)
  {
    v5 = CFPreferencesCopyValue(@"EnableSso", @"com.apple.MobileSoftwareUpdate", @"mobile", *MEMORY[0x277CBF010]);
    if (v5)
    {
      v13 = v5;
      v14 = CFGetTypeID(v5);
      if (v14 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v13);
        CFRelease(v13);
        if (Value)
        {
          if ([installCopy automaticInstallation])
          {
            SULogInfo(@"%s: No need for sso token - install is not user-initiated", v16, v17, v18, v19, v20, v21, v22, "[SUInstaller ensureSSOTokenIfNeededForInstall:]");
          }

          else
          {
            v23 = +[SUAuthSSO sharedInstance];
            [v23 invokeSSOAuth];
          }

          goto LABEL_9;
        }
      }

      else
      {
        CFRelease(v13);
      }
    }

    SULogInfo(@"%s: No need for sso token - not enabled in MSU preferences", v6, v7, v8, v9, v10, v11, v12, "[SUInstaller ensureSSOTokenIfNeededForInstall:]");
  }

LABEL_9:
}

+ (id)purgeOptionsForDownloadOptions:(id)options spaceNeeded:(unint64_t)needed completionQueue:(id)queue
{
  optionsCopy = options;
  queueCopy = queue;
  v9 = objc_alloc_init(SUSpacePurgeOptions);
  [(SUSpacePurgeOptions *)v9 setNeededBytes:needed];
  [(SUSpacePurgeOptions *)v9 setEnableCacheDelete:1];
  if ([optionsCopy isAutoDownload])
  {
    isAppOffloadEnabled = 0;
  }

  else
  {
    isAppOffloadEnabled = [optionsCopy isAppOffloadEnabled];
  }

  [(SUSpacePurgeOptions *)v9 setEnableAppOffload:isAppOffloadEnabled];
  if ([optionsCopy isAutoDownload])
  {
    isMASuspensionEnabled = 0;
  }

  else
  {
    isMASuspensionEnabled = [optionsCopy isMASuspensionEnabled];
  }

  [(SUSpacePurgeOptions *)v9 setEnableMobileAssetSuspend:isMASuspensionEnabled];
  [(SUSpacePurgeOptions *)v9 setCacheDeleteUrgency:4];
  [(SUSpacePurgeOptions *)v9 setAppOffloadUrgency:4];
  [(SUSpacePurgeOptions *)v9 setCompletionQueue:queueCopy];

  return v9;
}

- (SUManagerCore)core
{
  WeakRetained = objc_loadWeakRetained(&self->_core);

  return WeakRetained;
}

@end