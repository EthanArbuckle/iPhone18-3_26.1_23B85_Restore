@interface SUInstaller
+ (id)purgeOptionsForDownloadOptions:(id)a3 spaceNeeded:(unint64_t)a4 completionQueue:(id)a5;
- (BOOL)_isUpdateReadyForInstallationWithOptions:(id)a3 error:(id *)a4 shouldRetry:(BOOL *)a5;
- (BOOL)isInstallTonight;
- (BOOL)isInstallTonightScheduled;
- (BOOL)isInstalled;
- (BOOL)isInstallerReadyForInstallationWithOptions:(id)a3 error:(id *)a4 ShouldRetry:(BOOL *)a5;
- (BOOL)isInstalling;
- (BOOL)verifyConstraintsMetForInstallationWithOptions:(id)a3 error:(id *)a4;
- (SUAutoUpdatePasscodePolicy)passcodePolicy;
- (SUInstallPolicy)installPolicy;
- (SUInstaller)initWithCore:(id)a3;
- (SUManagerCore)core;
- (unint64_t)getInstallationConstraintsForDownload:(id)a3 allowDiskCleanupIfNeeded:(BOOL)a4 forceDiskCleanupIfNeeded:(BOOL)a5 options:(id)a6;
- (void)autoSUFailedWithError:(id)a3;
- (void)ensureSSOTokenIfNeededForInstall:(id)a3;
- (void)getInstallationConstraintsForDownload:(id)a3 allowDiskCleanupIfNeeded:(BOOL)a4 forceDiskCleanupIfNeeded:(BOOL)a5 options:(id)a6 completionQueue:(id)a7 completion:(id)a8;
- (void)installCompleted:(id)a3;
- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4;
- (void)isUpdateReadyForInstallationWithOptions:(id)a3 replyHandler:(id)a4;
- (void)managedInstallRequested;
- (void)setInstallPolicy:(id)a3;
- (void)setInstalled:(BOOL)a3;
- (void)setIsInstallTonight:(BOOL)a3;
- (void)setIsInstallTonightScheduled:(BOOL)a3;
- (void)setPasscodePolicy:(id)a3;
- (void)updateInstallPolicyClientName:(id)a3;
- (void)updateInstallPolicyType:(unint64_t)a3;
@end

@implementation SUInstaller

- (SUInstaller)initWithCore:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SUInstaller;
  v5 = [(SUInstaller *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_core, v4);
    *&v6->_installing = 0;
    v6->_isInstallTonightScheduled = 0;
    passcodePolicy = v6->_passcodePolicy;
    v6->_passcodePolicy = 0;

    currentInstallOptions = v6->_currentInstallOptions;
    v6->_currentInstallOptions = 0;

    installDeviceLockAssertion = v6->_installDeviceLockAssertion;
    v6->_installDeviceLockAssertion = 0;

    WeakRetained = objc_loadWeakRetained(&v6->_core);
    v11 = [WeakRetained state];
    v12 = [v11 installPolicy];
    installPolicy = v6->_installPolicy;
    v6->_installPolicy = v12;

    if (!v6->_installPolicy)
    {
      v14 = [[SUInstallPolicy alloc] initWithInstallPolicyType:0];
      v15 = v6->_installPolicy;
      v6->_installPolicy = v14;
    }

    out_token = -1;
    objc_initWeak(&location, v6);
    v16 = [(__CFString *)@"SUPreferencesChangedNotificationAutoUpdate" UTF8String];
    v17 = objc_loadWeakRetained(&v6->_core);
    v18 = [v17 workQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28__SUInstaller_initWithCore___block_invoke;
    handler[3] = &unk_279CABB18;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch(v16, &out_token, v18, handler);

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
  v3 = [(SUInstaller *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_installing;
}

- (BOOL)isInstalled
{
  v3 = [(SUInstaller *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_installed;
}

- (void)setInstalled:(BOOL)a3
{
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  self->_installed = a3;
}

- (BOOL)isInstallTonight
{
  v3 = [(SUInstaller *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_isInstallTonight;
}

- (void)setIsInstallTonight:(BOOL)a3
{
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  self->_isInstallTonight = a3;
}

- (BOOL)isInstallTonightScheduled
{
  v3 = [(SUInstaller *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_isInstallTonightScheduled;
}

- (void)setIsInstallTonightScheduled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_isInstallTonightScheduled != v3)
  {
    SULogInfo(@"%s: Setting isInstallTonightScheduled to %@", v7, v8, v9, v10, v11, v12, v13, "[SUInstaller setIsInstallTonightScheduled:]");
    self->_isInstallTonightScheduled = v3;
    v14 = [(SUInstaller *)self core];
    v15 = [v14 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(SUInstaller *)self core];
      v18 = [v17 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__SUInstaller_setIsInstallTonightScheduled___block_invoke;
      block[3] = &unk_279CAAD00;
      block[4] = self;
      v20 = v3;
      dispatch_async(v18, block);
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
  v3 = [(SUInstaller *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  passcodePolicy = self->_passcodePolicy;

  return passcodePolicy;
}

- (void)setPasscodePolicy:(id)a3
{
  v4 = a3;
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  passcodePolicy = self->_passcodePolicy;
  self->_passcodePolicy = v4;
}

- (SUInstallPolicy)installPolicy
{
  v3 = [(SUInstaller *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  installPolicy = self->_installPolicy;

  return installPolicy;
}

- (void)setInstallPolicy:(id)a3
{
  v4 = a3;
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  installPolicy = self->_installPolicy;
  self->_installPolicy = v4;
}

- (void)updateInstallPolicyType:(unint64_t)a3
{
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if ([(SUInstallPolicy *)self->_installPolicy type]!= a3)
  {
    [(SUInstallPolicy *)self->_installPolicy _setType:a3];
    v7 = [(SUInstaller *)self core];
    v8 = [v7 state];
    [v8 setInstallPolicy:self->_installPolicy];

    v9 = [(SUInstaller *)self core];
    v10 = [v9 state];
    [v10 save];

    v11 = [(SUInstaller *)self core];
    v12 = [v11 delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = self->_installPolicy;
      v15 = [(SUInstaller *)self core];
      v16 = [v15 externWorkQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __39__SUInstaller_updateInstallPolicyType___block_invoke;
      v18[3] = &unk_279CAA7C0;
      v18[4] = self;
      v19 = v14;
      v17 = v14;
      dispatch_async(v16, v18);
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

- (void)updateInstallPolicyClientName:(id)a3
{
  v4 = a3;
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUInstallPolicy *)self->_installPolicy clientName];
  LOBYTE(v6) = [v7 isEqualToString:v4];

  if (v6)
  {
    v8 = [v4 isEqualToString:@"dmd"];

    if (v8)
    {

      [(SUInstaller *)self managedInstallRequested];
    }
  }

  else
  {
    [(SUInstallPolicy *)self->_installPolicy _setClientName:v4];

    v9 = [(SUInstaller *)self core];
    v10 = [v9 state];
    [v10 setInstallPolicy:self->_installPolicy];

    v11 = [(SUInstaller *)self core];
    v12 = [v11 state];
    [v12 save];

    v13 = [(SUInstaller *)self core];
    v14 = [v13 delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(SUInstaller *)self core];
      v17 = [v16 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__SUInstaller_updateInstallPolicyClientName___block_invoke;
      block[3] = &unk_279CAA708;
      block[4] = self;
      dispatch_async(v17, block);
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

- (BOOL)isInstallerReadyForInstallationWithOptions:(id)a3 error:(id *)a4 ShouldRetry:(BOOL *)a5
{
  v8 = a3;
  v9 = [(SUInstaller *)self core];
  v10 = [v9 workQueue];
  dispatch_assert_queue_V2(v10);

  if (a5)
  {
    *a5 = 1;
  }

  v11 = [(SUInstaller *)self core];
  v12 = [v11 downloadAsset];
  if (!v12)
  {

    goto LABEL_8;
  }

  v13 = v12;
  v14 = [(SUInstaller *)self core];
  v15 = [v14 download];

  if (!v15)
  {
LABEL_8:
    v50 = 0;
    [SUUtility assignError:&v50 withCode:3];
    v19 = v50;
LABEL_9:
    v27 = v19;
    if (!a5)
    {
LABEL_15:
      v28 = 0;
      goto LABEL_16;
    }

    v28 = 0;
LABEL_11:
    *a5 = 0;
    goto LABEL_16;
  }

  v16 = [(SUInstaller *)self core];
  v17 = [v16 isScanning];

  if (v17)
  {
    v49 = 0;
    [SUUtility assignError:&v49 withCode:13];
    v18 = v49;
LABEL_14:
    v27 = v18;
    goto LABEL_15;
  }

  v29 = [(SUInstaller *)self core];
  v30 = [v29 isDownloading];

  if (v30)
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

  v33 = [(SUInstaller *)self core];
  v34 = [v33 downloadAsset];
  v35 = [v34 getLocalUrl];
  v28 = [v35 path];

  if (!v28)
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
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (a4 && v27)
  {
    *a4 = [v27 errorWithExtendedUserInfoFromOptions:v8];
  }

  SULogInfo(@"isInstallerReadyForInstallationWithOptions? NO due to %@", v20, v21, v22, v23, v24, v25, v26, v27);

  v31 = 0;
LABEL_20:

  return v31;
}

- (void)getInstallationConstraintsForDownload:(id)a3 allowDiskCleanupIfNeeded:(BOOL)a4 forceDiskCleanupIfNeeded:(BOOL)a5 options:(id)a6 completionQueue:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = dispatch_queue_create("com.apple.softwareupdateservicesd.installationConstraintQueue", 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __138__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options_completionQueue_completion___block_invoke;
  v23[3] = &unk_279CABCA8;
  v23[4] = self;
  v24 = v14;
  v28 = a4;
  v29 = a5;
  v26 = v16;
  v27 = v17;
  v25 = v15;
  v19 = v16;
  v20 = v17;
  v21 = v15;
  v22 = v14;
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

- (unint64_t)getInstallationConstraintsForDownload:(id)a3 allowDiskCleanupIfNeeded:(BOOL)a4 forceDiskCleanupIfNeeded:(BOOL)a5 options:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [[SUInstallationConstraintObserver alloc] initWithDownload:v10 andInstallOptions:v11];
  v13 = -[SUComposedInstallationConstraintMonitor unsatisfiedConstraintsWithIgnorableConstraints:](v12, "unsatisfiedConstraintsWithIgnorableConstraints:", [v11 ignorableConstraints]);
  v14 = v13;
  if (!v8 || (v13 & 4) == 0)
  {
    goto LABEL_12;
  }

  v50 = self;
  v15 = [(SUInstallationConstraintObserver *)v12 monitorOfClass:objc_opt_class()];
  v16 = [v15 deltaSpaceNeeded];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = *&getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_REQUEST_TIME;
  v20 = getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_DESCRIPTOR;
  v21 = [v10 descriptor];
  LOBYTE(v20) = [v20 isEqual:v21];

  if ((v20 & 1) == 0)
  {
    v29 = [v10 descriptor];
    v30 = getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_DESCRIPTOR;
    getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_DESCRIPTOR = v29;

LABEL_8:
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
    SULogInfo(@"Insufficient disk space detected for installation - attempting to free: %@ bytes", v32, v33, v34, v35, v36, v37, v38, v31);

    v39 = [v10 downloadOptions];
    v40 = [v10 descriptor];
    v41 = [v40 installationSize];
    [(SUInstaller *)v50 core];
    v42 = v11;
    v44 = v43 = v15;
    v45 = [v44 workQueue];
    v46 = [SUInstaller purgeOptionsForDownloadOptions:v39 spaceNeeded:v41 completionQueue:v45];

    v15 = v43;
    v11 = v42;

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __111__SUInstaller_getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options___block_invoke;
    v51[3] = &unk_279CABCD0;
    v51[4] = v50;
    v52 = v10;
    v53 = v42;
    [SUSpace makeRoomForUpdate:v46 completion:v51];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    getInstallationConstraintsForDownload_allowDiskCleanupIfNeeded_forceDiskCleanupIfNeeded_options____LAST_REQUEST_TIME = v47;

    goto LABEL_9;
  }

  if (a5 || vabdd_f64(v18, v19) > 10.0)
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

- (void)isUpdateReadyForInstallationWithOptions:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v15 = a3;
  SULogDebug(@"%s is called with options = %@", v7, v8, v9, v10, v11, v12, v13, "[SUInstaller isUpdateReadyForInstallationWithOptions:replyHandler:]");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SUInstaller_isUpdateReadyForInstallationWithOptions_replyHandler___block_invoke;
  v16[3] = &unk_279CABCF8;
  v16[4] = self;
  v17 = v6;
  v14 = v6;
  [(SUInstaller *)self _isUpdateReadyForInstallationWithOptions:v15 forceCleanup:0 withReplyHandler:v16];
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

- (BOOL)_isUpdateReadyForInstallationWithOptions:(id)a3 error:(id *)a4 shouldRetry:(BOOL *)a5
{
  v8 = a3;
  v9 = [(SUInstaller *)self core];
  v10 = [v9 workQueue];
  dispatch_assert_queue_V2(v10);

  if ([(SUInstaller *)self isInstallerReadyForInstallationWithOptions:v8 error:a4 ShouldRetry:a5])
  {
    v11 = [(SUInstaller *)self verifyConstraintsMetForInstallationWithOptions:v8 error:a4];
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

- (BOOL)verifyConstraintsMetForInstallationWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SUInstaller *)self core];
  v8 = [v7 workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SUInstaller *)self core];
  v10 = [v9 download];
  v11 = [(SUInstaller *)self getInstallationConstraintsForDownload:v10 allowDiskCleanupIfNeeded:0 forceDiskCleanupIfNeeded:0 options:v6];

  if (v11)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    [v19 setSafeObject:v20 forKey:@"SUInstallationConstraintsUnmet"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [(SUInstaller *)self installPolicy];
    v23 = [v22 clientName];
    v24 = [v21 numberWithBool:{objc_msgSend(v23, "isEqualToString:", @"dmd"}];
    [v19 setSafeObject:v24 forKey:@"SUMDMInstallationRequest"];

    v25 = SUStringFromInstallationConstraints(v11);
    [v19 setSafeObject:v25 forKey:*MEMORY[0x277CCA068]];

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:20 userInfo:v19];
    v27 = [(SUInstaller *)self core];
    [v27 reportPostponedEvent:v26 withStatus:@"installNotReady" withAdditionalMetrics:v19];

    v28 = SUStringFromInstallationConstraints(v11);
    SULogInfo(@"Is ready for installation?  No due to constraints unmet: %@", v29, v30, v31, v32, v33, v34, v35, v28);

    if (a4)
    {
      v36 = v26;
      *a4 = v26;
    }

    v37 = [(SUInstaller *)self core];
    v38 = [v37 state];
    v39 = [v26 description];
    [v38 setDdmPersistedErrorDescription:v39];

    notify_post([*MEMORY[0x277D64248] UTF8String]);
  }

  else
  {
    SULogInfo(@"Is ready for installation?  YES", v12, v13, v14, v15, v16, v17, v18, v41);
  }

  return v11 == 0;
}

- (void)installCompleted:(id)a3
{
  v156 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUInstaller *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  notify_post([*MEMORY[0x277D64250] UTF8String]);
  v7 = [(SUInstaller *)self core];
  v8 = [v7 state];
  v9 = v8;
  v10 = MEMORY[0x277D292C8];
  if (v4)
  {
    v11 = [v4 description];
    [v9 setDdmPersistedErrorDescription:v11];

    notify_post([*MEMORY[0x277D64248] UTF8String]);
    if (![(SUInstaller *)self isInstallRetrying])
    {
      v19 = [v4 domain];
      if ([v19 isEqualToString:*v10])
      {
        v20 = [v4 code];

        if (v20 == 20)
        {
          v21 = [(SUInstaller *)self core];
          v22 = [v21 download];

          [(SUInstaller *)self setInstallRetrying:1];
          v23 = +[SUUtility taskQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __32__SUInstaller_installCompleted___block_invoke;
          block[3] = &unk_279CAA798;
          v147 = v22;
          v148 = self;
          v24 = v4;
          v149 = v24;
          v25 = v22;
          dispatch_async(v23, block);

LABEL_56:
          goto LABEL_57;
        }
      }

      else
      {
      }
    }

    SULogInfo(@"Installation error: %@", v12, v13, v14, v15, v16, v17, v18, v4);
    v28 = [v4 domain];
    v29 = [v28 isEqualToString:@"com.apple.softwareupdateservices.errors"];

    if (v29 && ([v4 code] == 78 || objc_msgSend(v4, "code") == 64))
    {
      SULogInfo(@"Installation error is fatal, clean update", v30, v31, v32, v33, v34, v35, v36, v121);
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    v27 = [SUUtility errorRemovingUserInfoKey:@"InstallOptions" originalError:v4];

    if ((v26 & 1) == 0)
    {
      v37 = [(SUInstaller *)self core];
      [v37 reportPostponedEvent:v27 withStatus:*MEMORY[0x277D64590]];
    }

    v7 = [v27 domain];
    if ([v7 isEqualToString:*v10])
    {
      v38 = [v27 code];

      if (v38 != 26)
      {
        goto LABEL_19;
      }

      v7 = [(SUInstaller *)self core];
      [v7 setLastStashbagPersistedDate:0];
    }
  }

  else
  {
    [v8 setDdmPersistedError:0];

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
  v47 = [(SUInstaller *)self core];
  [v47 resumeOrDisableReserveSpace];

  v126 = self;
  v124 = v27;
  v123 = v26;
  if (v27)
  {
    v48 = [v27 domain];
    if ([v48 isEqualToString:*v10])
    {
      v49 = [v27 code];

      if (v49 != 26)
      {
LABEL_26:
        v50 = [(SUInstaller *)self installPolicy];
        v51 = [v50 clientName];
        v52 = [v51 isEqualToString:@"dmd"];

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
        v94 = [(SUInstaller *)self core];
        v127 = v86;
        [v94 donateSUErrorToBiome:v86];

        v95 = [(SUInstaller *)self core];
        v96 = [v95 download];
        v125 = [v96 descriptor];

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v97 = [(SUInstaller *)self core];
        v98 = [v97 observers];
        v99 = [v98 allObjects];

        v100 = [v99 countByEnumeratingWithState:&v134 objects:v150 count:16];
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
                objc_enumerationMutation(v99);
              }

              v104 = *(*(&v134 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v105 = [(SUInstaller *)self core];
                v106 = [v105 externWorkQueue];
                v131[0] = MEMORY[0x277D85DD0];
                v131[1] = 3221225472;
                v131[2] = __32__SUInstaller_installCompleted___block_invoke_3_394;
                v131[3] = &unk_279CAA798;
                v131[4] = v104;
                v132 = v125;
                v133 = v127;
                dispatch_async(v106, v131);

                self = v126;
              }
            }

            v101 = [v99 countByEnumeratingWithState:&v134 objects:v150 count:16];
          }

          while (v101);
        }

        v107 = [(SUInstaller *)self core];
        v108 = [v107 delegate];
        v109 = objc_opt_respondsToSelector();

        if (v109)
        {
          v110 = [(SUInstaller *)self core];
          v111 = [v110 externWorkQueue];
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __32__SUInstaller_installCompleted___block_invoke_4_395;
          v128[3] = &unk_279CAA798;
          v128[4] = self;
          v129 = v125;
          v130 = v127;
          dispatch_async(v111, v128);
        }

        v112 = v125;
        goto LABEL_53;
      }

      v48 = [(SUInstaller *)self core];
      [v48 clearKeybagStash];
    }

    goto LABEL_26;
  }

  self->_installed = 1;
  v58 = [(SUInstaller *)self core];
  v59 = [v58 state];
  v60 = [MEMORY[0x277CBEAA8] now];
  [v59 setAppliedTime:v60];

  v61 = [(SUInstaller *)self core];
  v62 = [v61 state];
  [v62 save];

  v63 = +[SUAlertPresentationManager sharedInstance];
  [v63 dismissAlertsOfClass:objc_opt_class() animated:1];

  v64 = [(SUInstaller *)self core];
  [v64 reportOTAInstalledEvent];

  SULogInfo(@"Clearing badge after successful install", v65, v66, v67, v68, v69, v70, v71, v122);
  v72 = [(SUInstaller *)self core];
  [v72 clearBadgeAndBanner];

  v73 = [(SUInstaller *)self core];
  v74 = [v73 download];
  v127 = [v74 descriptor];

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v75 = [(SUInstaller *)self core];
  v76 = [v75 observers];
  v77 = [v76 allObjects];

  v78 = [v77 countByEnumeratingWithState:&v142 objects:v155 count:16];
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
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v142 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          v83 = [(SUInstaller *)self core];
          v84 = [v83 externWorkQueue];
          v140[0] = MEMORY[0x277D85DD0];
          v140[1] = 3221225472;
          v140[2] = __32__SUInstaller_installCompleted___block_invoke_387;
          v140[3] = &unk_279CAA7C0;
          v140[4] = v82;
          v141 = v127;
          dispatch_async(v84, v140);

          self = v126;
        }
      }

      v79 = [v77 countByEnumeratingWithState:&v142 objects:v155 count:16];
    }

    while (v79);
  }

  v113 = [(SUInstaller *)self core];
  v114 = [v113 delegate];
  v115 = objc_opt_respondsToSelector();

  if (v115)
  {
    v116 = [(SUInstaller *)self core];
    v117 = [v116 externWorkQueue];
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __32__SUInstaller_installCompleted___block_invoke_2_388;
    v138[3] = &unk_279CAA7C0;
    v138[4] = self;
    v127 = v127;
    v139 = v127;
    dispatch_async(v117, v138);

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
    v119 = [(SUInstaller *)self core];
    [v119 clearKeybagStash];

    v25 = [(SUInstaller *)self core];
    [v25 cleanupPreviousDownloadState];
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

- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUInstaller *)self core];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  notify_post([*MEMORY[0x277D64250] UTF8String]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke;
  v50[3] = &unk_279CAAE18;
  v50[4] = self;
  v10 = v7;
  v51 = v10;
  v11 = MEMORY[0x26D668B30](v50);
  if (v6 || (v6 = objc_opt_new(), SULogInfo(@"No installOptions provided, using the default value", v12, v13, v14, v15, v16, v17, v18, v45), v6))
  {
    -[SUInstaller updateInstallPolicyType:](self, "updateInstallPolicyType:", [v6 isRequired]);
    -[SUInstaller updateInstallPolicyDarkBootEnabled:](self, "updateInstallPolicyDarkBootEnabled:", [v6 isDarkBoot]);
    v19 = [v6 clientName];
    [(SUInstaller *)self updateInstallPolicyClientName:v19];

    v20 = [(SUInstaller *)self core];
    [v6 setManaged:{objc_msgSend(v20, "isManaged")}];
  }

  v21 = [(SUInstaller *)self installPolicy];
  SULogInfo(@"Starting SU Installation with install options: %@; policy: %@", v22, v23, v24, v25, v26, v27, v28, v6);

  v29 = [(SUInstaller *)self core];
  v30 = [v29 download];
  v31 = [v30 descriptor];

  [v31 installationSize];
  [v31 installationSize];
  [v31 unentitledReserveAmount];
  [v31 unentitledReserveAmount];
  SULogInfo(@"[Space] %s Setting entitled space to %llu (%llu MB) and unentitledSpace to %llu (%llu MB)", v32, v33, v34, v35, v36, v37, v38, "[SUInstaller installUpdateWithInstallOptions:withResult:]");
  v39 = MEMORY[0x277D641E8];
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v31, "installationSize")}];
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v31, "unentitledReserveAmount")}];
  [v39 cacheDeletePauseReserveSpace:v40 unentitledSpace:v41 withPurpose:@"SUSController-installUpdateWithInstallOptions"];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __58__SUInstaller_installUpdateWithInstallOptions_withResult___block_invoke_3;
  v46[3] = &unk_279CABD48;
  v46[4] = self;
  v47 = v6;
  v48 = v31;
  v49 = v11;
  v42 = v31;
  v43 = v6;
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
  v3 = [(SUInstaller *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUInstaller *)self core];
  v6 = [v5 delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = self->_installPolicy;
    v9 = [(SUInstaller *)self core];
    v10 = [v9 externWorkQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__SUInstaller_managedInstallRequested__block_invoke;
    v12[3] = &unk_279CAA7C0;
    v12[4] = self;
    v13 = v8;
    v11 = v8;
    dispatch_async(v10, v12);
  }
}

void __38__SUInstaller_managedInstallRequested__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 managedInstallationRequested:*(a1 + 40)];
}

- (void)autoSUFailedWithError:(id)a3
{
  v27 = a3;
  v4 = [(SUInstaller *)self core];
  v5 = [v4 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v27 domain];
  if ([v6 isEqualToString:@"com.apple.softwareupdateservices.errors"])
  {
    v7 = [v27 code];

    if (v7 == 14)
    {
      SULogInfo(@"%s: Auto installation failed to start due to SUErrorCodeInstallInProgress; do not show the alert", v8, v9, v10, v11, v12, v13, v14, "[SUInstaller autoSUFailedWithError:]");
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = [(SUInstaller *)self core];
  v16 = [v15 download];
  if (v16)
  {
    v17 = v16;
    v18 = [(SUInstaller *)self core];
    v19 = [v18 download];
    v20 = [v19 descriptor];

    if (!v20)
    {
      v23 = 0;
      goto LABEL_11;
    }

    v15 = [(SUInstaller *)self core];
    v21 = [v15 download];
    v22 = [v21 descriptor];
    v23 = [v22 humanReadableUpdateName];
  }

  else
  {
    v23 = 0;
  }

LABEL_11:
  v24 = +[SUAlertPresentationManager sharedInstance];
  [v24 dismissAlertsOfClass:objc_opt_class() animated:1];

  v25 = [[SUAutoInstallFailureAlertItem alloc] initWithError:v27 buildNumber:v23];
  v26 = +[SUAlertPresentationManager sharedInstance];
  [v26 presentAlert:v25 animated:1];

LABEL_12:
}

- (void)ensureSSOTokenIfNeededForInstall:(id)a3
{
  v24 = a3;
  v3 = +[SUPreferences sharedInstance];
  v4 = [v3 suppressSSOTokenInInstall];

  if ((v4 & 1) == 0)
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
          if ([v24 automaticInstallation])
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

+ (id)purgeOptionsForDownloadOptions:(id)a3 spaceNeeded:(unint64_t)a4 completionQueue:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(SUSpacePurgeOptions);
  [(SUSpacePurgeOptions *)v9 setNeededBytes:a4];
  [(SUSpacePurgeOptions *)v9 setEnableCacheDelete:1];
  if ([v7 isAutoDownload])
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 isAppOffloadEnabled];
  }

  [(SUSpacePurgeOptions *)v9 setEnableAppOffload:v10];
  if ([v7 isAutoDownload])
  {
    v11 = 0;
  }

  else
  {
    v11 = [v7 isMASuspensionEnabled];
  }

  [(SUSpacePurgeOptions *)v9 setEnableMobileAssetSuspend:v11];
  [(SUSpacePurgeOptions *)v9 setCacheDeleteUrgency:4];
  [(SUSpacePurgeOptions *)v9 setAppOffloadUrgency:4];
  [(SUSpacePurgeOptions *)v9 setCompletionQueue:v8];

  return v9;
}

- (SUManagerCore)core
{
  WeakRetained = objc_loadWeakRetained(&self->_core);

  return WeakRetained;
}

@end