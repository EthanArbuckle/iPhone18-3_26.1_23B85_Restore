@interface SUUIStatefulUIManager
+ (id)_generateStateTable;
- (BOOL)assignScanResults:(id)a3;
- (BOOL)doesTargetedUpdateMatchDescriptor:(id)a3;
- (BOOL)doesTargetedUpdateMatchDescriptorRole:(unint64_t)a3;
- (BOOL)getEnrollInBetaUpdatesStatus;
- (BOOL)hasHiddenDescriptors;
- (BOOL)isDelayingUpdate;
- (BOOL)isPerformingFullScan;
- (BOOL)isPerformingRefresh;
- (BOOL)isPerformingUpdate;
- (BOOL)isPreferredUpdatePromotedAsAlternate;
- (BOOL)updateOperationShouldPerformUnattendedPurge:(id)a3;
- (SUUIDownload)currentDownload;
- (SUUIStatefulUIEnvironment)environment;
- (SUUIStatefulUIManager)initWithEnvironment:(id)a3;
- (SUUIStatefulUIManagerDelegate)delegate;
- (id)contextForDownloadAndInstallUpdateOperation:(id)a3;
- (id)contextForDownloadAndScheduleUpdateOperation:(id)a3;
- (id)contextForDownloadUpdateOperation:(id)a3;
- (id)contextForFullScanOperation:(id)a3 withThirdPartyScanResults:(id)a4 scanError:(id)a5 forceReloadScanResults:(BOOL)a6;
- (id)contextForInstallUpdateOperation:(id)a3;
- (id)contextForPurgeUpdateOperation:(id)a3 forUserRequestedOperation:(BOOL)a4 notifyUser:(BOOL)a5;
- (id)contextForRefreshScanOperation:(id)a3 withPreviouslyDiscoveredDownload:(id)a4 encounteredError:(id)a5;
- (id)contextForScheduleUpdateOperation:(id)a3;
- (id)contextForUserPromotionUpdateOperation:(id)a3;
- (id)contextForUserUnscheduleUpdateOperation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentInstalledNeRDInfo;
- (id)latestUpdateStatefulDescriptor;
- (id)targetedUpdateForDownload:(id)a3;
- (id)targetedUpdateMatchingDescriptor:(id)a3;
- (id)targetedUpdateStatefulDescriptor;
- (int64_t)convertFSMStateToUIState:(id)a3;
- (int64_t)fsmAction_CheckForAvailableUpdate:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_RefreshScanResults:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ReportNoUpdateFound:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ReportRefreshScanResults:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ReportRefreshScanResultsFailed:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ReportScanFailed:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ReportUpdatesAvailable:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)assignDescriptorOfType:(unint64_t)a3 fromSearchResults:(id)a4;
- (void)assignDownloadAndScheduleUpdateResults:(id)a3;
- (void)assignDownloadUpdateResults:(id)a3;
- (void)assignFullScanResults:(id)a3;
- (void)assignInstallUpdateResults:(id)a3;
- (void)assignScheduleUpdateResults:(id)a3;
- (void)assignUnscheduleUpdateResults:(id)a3;
- (void)assignUserPromotionUpdateResults:(id)a3;
- (void)checkForAvailableUpdates:(BOOL)a3 forceScan:(BOOL)a4;
- (void)checkForAvailableUpdatesWithCompletion:(id)a3;
- (void)checkForAvailableUpdatesWithForcedReload:(BOOL)a3 completion:(id)a4;
- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)a3;
- (void)checkForUpdatesInBackground:(BOOL)a3 forceScan:(BOOL)a4;
- (void)checkForUpdatesInBackgroundWithCompletion:(id)a3;
- (void)checkForUpdatesInBackgroundWithForcedReload:(BOOL)a3 completion:(id)a4;
- (void)clearPastDownload:(id)a3;
- (void)clearPastScanResults;
- (void)doEnrollInBetaUpdatesProgram:(id)a3 activity:(suui_activity_s *)a4 completionHandler:(id)a5;
- (void)doEnrollInBetaUpdatesProgram:(id)a3 afterPurgeConfirmation:(int64_t)a4 activity:(suui_activity_s *)a5 completionHandler:(id)a6;
- (void)doUnenrollFromBetaUpdates:(suui_activity_s *)a3 completionHandler:(id)a4;
- (void)doUnenrollFromBetaUpdatesAfterPurgeConfirmation:(int64_t)a3 activity:(suui_activity_s *)a4 completionHandler:(id)a5;
- (void)downloadAndInstall:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6;
- (void)downloadAndScheduleUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6;
- (void)downloadUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6;
- (void)enrollInBetaUpdatesProgram:(id)a3 completionHandler:(id)a4;
- (void)executeOperationOnDelegate:(SEL)a3 usingBlock:(id)a4;
- (void)handleFailedFullScan:(id)a3;
- (void)handleFullScanResults:(id)a3;
- (void)handleRefreshScanResults:(id)a3;
- (void)hideAlternateUpdate;
- (void)hideNonTargetedUpdateDescriptors;
- (void)hidePreferredUpdate;
- (void)installUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6;
- (void)notifyFullScanResultsDelegates:(id)a3 andError:(id)a4;
- (void)notifyRefreshScanResultsDelegates:(id)a3 andError:(id)a4;
- (void)performFullScan:(id)a3;
- (void)performFullScanWithScanResults:(id)a3 andScanError:(id)a4;
- (void)performPostUpdateOperationRefreshWithDownload:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)performRefreshScan:(id)a3;
- (void)performSelector:(SEL)a3 onTarget:(id)a4 withObject:(id)a5 withObject:(id)a6 withObject:(id)a7 withObject:(id)a8;
- (void)performUpdateOnDownloadByApplyingSelector:(SEL)a3 context:(id)a4 description:(id)a5 delegate:(id)a6 delegateCallbackQueue:(id)a7 resultsValidation:(id)a8 resultsAssignment:(id)a9 completion:(id)a10;
- (void)performUpdateOperation:(int64_t)a3 withDescriptor:(id)a4 byApplyingSelector:(SEL)a5 context:(id)a6 auxiliaryOperation:(BOOL)a7 delegate:(id)a8 delegateCallbackQueue:(id)a9 resultsValidation:(id)a10 resultsAssignment:(id)a11 completion:(id)a12;
- (void)promoteTargetedUpdateToUserInitiatedStatus:(id)a3 delegateCallbackQueue:(id)a4 completionHandler:(id)a5;
- (void)refreshBetaUpdates:(id)a3;
- (void)refreshBetaUpdates:(id)a3 withRecheckForAvailableUpdates:(BOOL)a4;
- (void)refreshStateWithCompletion:(id)a3;
- (void)refreshStateWithCompletion:(id)a3 forced:(BOOL)a4;
- (void)revealHiddenAlteranteUpdate;
- (void)revealHiddenPreferredUpdate;
- (void)scheduleUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6;
- (void)setCurrentDownload:(id)a3;
- (void)setupFSM;
- (void)unenrollFromBetaUpdatesWithCompletion:(id)a3;
- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)a3 delegateCallbackQueue:(id)a4 completionHandler:(id)a5;
- (void)updateDescriptorsUsingScanResults:(id)a3 andWithConcreteError:(id)a4;
- (void)updateNeRDVersionWithOptions:(id)a3;
@end

@implementation SUUIStatefulUIManager

- (SUUIDownload)currentDownload
{
  v5 = self;
  v4[2] = a2;
  v4[0] = 3;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](v5->_currentDownload);
  v9 = v4;
  os_unfair_recursive_lock_unlock();
  v2 = v6;

  return v2;
}

- (void)setCurrentDownload:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = [(SUUIStatefulUIManager *)v24 currentDownload];
  if (location[0] != v22 || ([v22 isUninitialized] & 1) != 0)
  {
    v6 = +[SUUILoggingContext statefulUILogger];
    v21 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v24;
      v18 = 0;
      v16 = 0;
      v14 = 0;
      if (v22 && (v19 = [v22 descriptor], v18 = 1, v19))
      {
        v17 = [v22 descriptor];
        v16 = 1;
        v15 = [v17 updateName];
        v14 = 1;
        v4 = v15;
      }

      else
      {
        v4 = @"N/A";
      }

      v12 = 0;
      v10 = 0;
      v8 = 0;
      if (location[0] && (v13 = [location[0] descriptor], v12 = 1, v13))
      {
        v11 = [location[0] descriptor];
        v10 = 1;
        v9 = [v11 updateName];
        v8 = 1;
        v3 = v9;
      }

      else
      {
        v3 = @"N/A";
      }

      __os_log_helper_16_2_7_8_32_8_0_8_32_8_66_8_0_8_66_8_0(v28, "[SUUIStatefulUIManager setCurrentDownload:]", v5, "[SUUIStatefulUIManager setCurrentDownload:]", v4, v22, v3, location[0]);
      _os_log_impl(&dword_26ADE5000, v21, v20, "%s [%p]: %s: Replacing the current download object with a new one.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n", v28, 0x48u);
      if (v8)
      {
        MEMORY[0x277D82BD8](v9);
      }

      if (v10)
      {
        MEMORY[0x277D82BD8](v11);
      }

      if (v12)
      {
        MEMORY[0x277D82BD8](v13);
      }

      if (v14)
      {
        MEMORY[0x277D82BD8](v15);
      }

      if (v16)
      {
        MEMORY[0x277D82BD8](v17);
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }
    }

    objc_storeStrong(&v21, 0);
    v7[0] = 3;
    p_lock = &v24->_lock;
    v25 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v7[1] = p_lock;
    objc_storeStrong(&v24->_currentDownload, location[0]);
    v27 = v7;
    os_unfair_recursive_lock_unlock();
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (SUUIStatefulUIManager)initWithEnvironment:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v28;
  v28 = 0;
  v26.receiver = v3;
  v26.super_class = SUUIStatefulUIManager;
  v21 = [(SUUIStatefulUIManager *)&v26 init];
  v28 = v21;
  objc_storeStrong(&v28, v21);
  if (!v21)
  {
LABEL_9:
    v29 = MEMORY[0x277D82BE0](v28);
    v23 = 1;
    goto LABEL_10;
  }

  objc_storeWeak(v28 + 3, location[0]);
  *(v28 + 5) = 0;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = *(v28 + 24);
  *(v28 + 24) = v4;
  MEMORY[0x277D82BD8](v5);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(v28 + 29);
  *(v28 + 29) = v6;
  MEMORY[0x277D82BD8](v7);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = *(v28 + 30);
  *(v28 + 30) = v8;
  MEMORY[0x277D82BD8](v9);
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.stateful-ui.manager.operations-queue", @"com.apple.SoftwareUpdateUI"];
  v10 = v19;
  v11 = dispatch_queue_create([v19 UTF8String], 0);
  v12 = *(v28 + 26);
  *(v28 + 26) = v11;
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v19);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.stateful-ui.manager.mutation-queue", @"com.apple.SoftwareUpdateUI"];
  v13 = v20;
  v14 = dispatch_queue_create([v20 UTF8String], 0);
  v15 = *(v28 + 27);
  *(v28 + 27) = v14;
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v20);
  v25[1] = 0;
  *(v28 + 28) = 0;
  [v28 setupFSM];
  if (*(v28 + 25))
  {
    v17 = +[SUUILoggingContext statefulUILogger];
    v22 = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v30, "[SUUIStatefulUIManager initWithEnvironment:]", v28);
      _os_log_impl(&dword_26ADE5000, v22, OS_LOG_TYPE_DEFAULT, "%s [%p]: Initialized the Stateful UI Manager", v30, 0x16u);
    }

    objc_storeStrong(&v22, 0);
    goto LABEL_9;
  }

  v18 = +[SUUILoggingContext statefulUILogger];
  v25[0] = [v18 oslog];
  MEMORY[0x277D82BD8](v18);
  v24 = OS_LOG_TYPE_FAULT;
  if (os_log_type_enabled(v25[0], OS_LOG_TYPE_FAULT))
  {
    __os_log_helper_16_2_2_8_32_8_0(v31, "[SUUIStatefulUIManager initWithEnvironment:]", v28);
    _os_log_fault_impl(&dword_26ADE5000, v25[0], v24, "%s [%p]: Failed creating the manager FSM", v31, 0x16u);
  }

  objc_storeStrong(v25, 0);
  v29 = 0;
  v23 = 1;
LABEL_10:
  objc_storeStrong(location, 0);
  objc_storeStrong(&v28, 0);
  *MEMORY[0x277D85DE8];
  return v29;
}

- (void)checkForAvailableUpdates:(BOOL)a3 forceScan:(BOOL)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  v4 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceReload:v6];
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceScan:v5];
  [(SUCoreFSM *)v8->_managerFSM postEvent:@"CheckForAvailableUpdate" withInfo:v4];
  objc_storeStrong(&v4, 0);
}

- (void)checkForAvailableUpdatesWithCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUUIStatefulUIManager *)v4 checkForAvailableUpdatesWithForcedReload:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableUpdatesWithForcedReload:(BOOL)a3 completion:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  objc_initWeak(&v13, v17);
  queue = v17->_operationsQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke;
  v9 = &unk_279CC6208;
  objc_copyWeak(v11, &v13);
  v11[1] = v16;
  v10 = MEMORY[0x277D82BE0](location);
  v12 = v15;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 40));
  v10 = 0;
  if (!v22[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v21 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v8 = NSStringFromSelector(*(a1 + 48));
      v19 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUUIStatefulUIManager checkForAvailableUpdatesWithForcedReload:completion:]_block_invoke", v19);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v4;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke_317;
    v16 = &unk_279CC61E0;
    v17 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v2 = *(v22[0] + 29);
    v3 = MEMORY[0x26D66ADC0](*(a1 + 32));
    [v2 addObject:?];
    MEMORY[0x277D82BD8](v3);
    [v22[0] checkForAvailableUpdates:*(a1 + 56) & 1];
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke_317(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)refreshStateWithCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUUIStatefulUIManager *)v4 refreshStateWithCompletion:location[0] forced:0];
  objc_storeStrong(location, 0);
}

- (void)refreshStateWithCompletion:(id)a3 forced:(BOOL)a4
{
  v18 = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v15 = a4;
  objc_initWeak(&v14, v18);
  queue = v18->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke;
  v10 = &unk_279CC6208;
  objc_copyWeak(v12, &v14);
  v12[1] = v17;
  v11 = MEMORY[0x277D82BE0](location);
  v13 = v15;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_destroyWeak(&v14);
  objc_storeStrong(&location, 0);
}

void __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke(id *a1)
{
  v151 = a1;
  v152 = "[SUUIStatefulUIManager refreshStateWithCompletion:forced:]_block_invoke";
  v153 = "[SUUIStatefulUIManager refreshStateWithCompletion:forced:]_block_invoke_2";
  v224 = *MEMORY[0x277D85DE8];
  v212[2] = a1;
  v212[1] = a1;
  v212[0] = objc_loadWeakRetained(a1 + 5);
  v150 = 0;
  if (!v212[0])
  {
    v149 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v149 oslog];
    MEMORY[0x277D82BD8](v149);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v145 = type;
      v147 = NSStringFromSelector(v151[6]);
      location = &v209;
      v209 = MEMORY[0x277D82BE0](v147);
      buf = v223;
      __os_log_helper_16_2_2_8_32_8_66(v223, v152, v209);
      _os_log_error_impl(&dword_26ADE5000, log, v145[0], "%s: Self is nil in %{public}@. Stopping.", v223, 0x16u);
      MEMORY[0x277D82BD8](v147);
      objc_storeStrong(&v209, 0);
    }

    objc_storeStrong(&oslog, 0);
    v208 = 1;
    v150 = 1;
  }

  if (v150)
  {
    v140 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v140;
    block = &v202;
    v202 = MEMORY[0x277D85DD0];
    v203 = -1073741824;
    v204 = 0;
    v205 = __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke_320;
    v206 = &unk_279CC61E0;
    v143 = &v207;
    v207 = MEMORY[0x277D82BE0](v151[4]);
    dispatch_async(queue, &v202);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v207, 0);
    v201 = 1;
  }

  else
  {
    if (v151[4])
    {
      v138 = *(v212[0] + 30);
      v139 = MEMORY[0x26D66ADC0](v151[4]);
      [v138 addObject:?];
      MEMORY[0x277D82BD8](v139);
    }

    v137 = [v212[0] currentRefreshScanOperation];
    MEMORY[0x277D82BD8](v137);
    if (v137)
    {
      v136 = +[SUUILoggingContext statefulUILogger];
      v200 = [v136 oslog];
      MEMORY[0x277D82BD8](v136);
      v199 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
      {
        v127 = v200;
        *v128 = v199;
        v129 = v212[0];
        v2 = objc_opt_class();
        v130 = NSStringFromClass(v2);
        v131 = MEMORY[0x277D82BE0](v130);
        v198 = v131;
        v132 = SUUIStatefulUIStateToString(*(v212[0] + 5));
        v133 = MEMORY[0x277D82BE0](v132);
        v197 = v133;
        v134 = [v212[0] currentState];
        v135 = [v212[0] delegate];
        v195 = 0;
        v193 = 0;
        if (v135)
        {
          v196 = [v212[0] delegate];
          v125 = 1;
          v195 = 1;
          v3 = objc_opt_class();
          v194 = NSStringFromClass(v3);
          v193 = 1;
          v126 = v194;
        }

        else
        {
          v126 = @"(null)";
        }

        v119 = v126;
        v120 = [v212[0] delegate];
        v121 = [v212[0] scanError];
        v122 = [v212[0] preferredStatefulDescriptor];
        v123 = [v212[0] alternateStatefulDescriptor];
        v124 = [v212[0] currentDownload];
        v191 = 0;
        v189 = 0;
        v187 = 0;
        if (v124)
        {
          v192 = [v212[0] currentDownload];
          v117 = 1;
          v191 = 1;
          v190 = [v192 descriptor];
          v189 = 1;
          v188 = [v190 updateName];
          v187 = 1;
          v118 = v188;
        }

        else
        {
          v118 = @"(null)";
        }

        v94 = v118;
        v95 = [v212[0] currentDownload];
        v96 = SUUIUpdateContinuousOperationTypeToString([v212[0] currentUpdateOperationType]);
        v97 = MEMORY[0x277D82BE0](v96);
        v186 = v97;
        v220 = [v212[0] isTargetedUpdateScheduledForAutoInstall];
        v107 = @"NO";
        v108 = @"YES";
        v115 = 1;
        if (v220)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        v98 = v4;
        v5 = v4;
        v99 = v98;
        v100 = MEMORY[0x277D82BE0](v99);
        v185 = v100;
        v219 = [v212[0] hidingPreferredDescriptor];
        if (v219)
        {
          v6 = v108;
        }

        else
        {
          v6 = v107;
        }

        v101 = v6;
        v7 = v6;
        v102 = v101;
        v103 = MEMORY[0x277D82BE0](v102);
        v184 = v103;
        v104 = [v212[0] hiddenPreferredStatefulDescriptor];
        v105 = [v104 updateName];
        v106 = MEMORY[0x277D82BE0](v105);
        v183 = v106;
        v218 = [v212[0] hidingAlternateDescriptor];
        if (v218)
        {
          v8 = v108;
        }

        else
        {
          v8 = v107;
        }

        v109 = v8;
        v9 = v8;
        v110 = v109;
        v111 = MEMORY[0x277D82BE0](v110);
        v182 = v111;
        v112 = [v212[0] hiddenAlternateStatefulDescriptor];
        v113 = [v112 updateName];
        v114 = MEMORY[0x277D82BE0](v113);
        v181 = v114;
        v116 = [v212[0] enrolledBetaProgram];
        v179 = 0;
        if (v116)
        {
          v180 = [v212[0] enrolledBetaProgram];
          v179 = 1;
          v93 = [v180 programID];
        }

        else
        {
          v93 = 0;
        }

        v84 = v93;
        v85 = [*(v212[0] + 15) count];
        v217 = [v212[0] canEnrollInBetaUpdates];
        if (v217)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v83 = v10;
        v11 = v10;
        v92 = v83;
        v86 = MEMORY[0x277D82BE0](v92);
        v178 = v86;
        v87 = *(v212[0] + 21);
        v88 = *(v212[0] + 22);
        v89 = *(v212[0] + 23);
        v12 = [*(v212[0] + 24) count];
        v90 = v25;
        v91 = v222;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v222, v153, v129, v131, v133, v134, v119, v120, v121, v122, v123, v94, v95, v97, v100, v103, v106, v111, v114, v84, v85, v86, v87, v88, v89, v12);
        _os_log_impl(&dword_26ADE5000, v127, v128[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is already running. Skipping on this refresh request without transitioning to the RefreshingScanResults state.", v91, 0xFCu);
        MEMORY[0x277D82BD8](v92);
        if (v179)
        {
          MEMORY[0x277D82BD8](v180);
        }

        MEMORY[0x277D82BD8](v116);
        MEMORY[0x277D82BD8](v113);
        MEMORY[0x277D82BD8](v112);
        MEMORY[0x277D82BD8](v110);
        MEMORY[0x277D82BD8](v105);
        MEMORY[0x277D82BD8](v104);
        MEMORY[0x277D82BD8](v102);
        MEMORY[0x277D82BD8](v99);
        MEMORY[0x277D82BD8](v96);
        MEMORY[0x277D82BD8](v95);
        if (v187)
        {
          MEMORY[0x277D82BD8](v188);
        }

        if (v189)
        {
          MEMORY[0x277D82BD8](v190);
        }

        if (v191)
        {
          MEMORY[0x277D82BD8](v192);
        }

        MEMORY[0x277D82BD8](v124);
        MEMORY[0x277D82BD8](v123);
        MEMORY[0x277D82BD8](v122);
        MEMORY[0x277D82BD8](v121);
        MEMORY[0x277D82BD8](v120);
        if (v193)
        {
          MEMORY[0x277D82BD8](v194);
        }

        if (v195)
        {
          MEMORY[0x277D82BD8](v196);
        }

        MEMORY[0x277D82BD8](v135);
        MEMORY[0x277D82BD8](v132);
        MEMORY[0x277D82BD8](v130);
        obj = 0;
        objc_storeStrong(&v178, 0);
        objc_storeStrong(&v181, obj);
        objc_storeStrong(&v182, obj);
        objc_storeStrong(&v183, obj);
        objc_storeStrong(&v184, obj);
        objc_storeStrong(&v185, obj);
        objc_storeStrong(&v186, obj);
        objc_storeStrong(&v197, obj);
        objc_storeStrong(&v198, obj);
      }

      objc_storeStrong(&v200, 0);
      v201 = 1;
    }

    else
    {
      v81 = [v212[0] currentFullScanOperation];
      MEMORY[0x277D82BD8](v81);
      if (v81)
      {
        v80 = +[SUUILoggingContext statefulUILogger];
        v177 = [v80 oslog];
        MEMORY[0x277D82BD8](v80);
        v176 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v177;
          *v72 = v176;
          v73 = v212[0];
          v13 = objc_opt_class();
          v74 = NSStringFromClass(v13);
          v75 = MEMORY[0x277D82BE0](v74);
          v175 = v75;
          v76 = SUUIStatefulUIStateToString(*(v212[0] + 5));
          v77 = MEMORY[0x277D82BE0](v76);
          v174 = v77;
          v78 = [v212[0] currentState];
          v79 = [v212[0] delegate];
          v172 = 0;
          v170 = 0;
          if (v79)
          {
            v173 = [v212[0] delegate];
            v69 = 1;
            v172 = 1;
            v14 = objc_opt_class();
            v171 = NSStringFromClass(v14);
            v170 = 1;
            v70 = v171;
          }

          else
          {
            v70 = @"(null)";
          }

          v63 = v70;
          v64 = [v212[0] delegate];
          v65 = [v212[0] scanError];
          v66 = [v212[0] preferredStatefulDescriptor];
          v67 = [v212[0] alternateStatefulDescriptor];
          v68 = [v212[0] currentDownload];
          v168 = 0;
          v166 = 0;
          v164 = 0;
          if (v68)
          {
            v169 = [v212[0] currentDownload];
            v61 = 1;
            v168 = 1;
            v167 = [v169 descriptor];
            v166 = 1;
            v165 = [v167 updateName];
            v164 = 1;
            v62 = v165;
          }

          else
          {
            v62 = @"(null)";
          }

          v38 = v62;
          v39 = [v212[0] currentDownload];
          v40 = SUUIUpdateContinuousOperationTypeToString([v212[0] currentUpdateOperationType]);
          v41 = MEMORY[0x277D82BE0](v40);
          v163 = v41;
          v216 = [v212[0] isTargetedUpdateScheduledForAutoInstall];
          v51 = @"NO";
          v52 = @"YES";
          v59 = 1;
          if (v216)
          {
            v15 = @"YES";
          }

          else
          {
            v15 = @"NO";
          }

          v42 = v15;
          v16 = v15;
          v43 = v42;
          v44 = MEMORY[0x277D82BE0](v43);
          v162 = v44;
          v215 = [v212[0] hidingPreferredDescriptor];
          if (v215)
          {
            v17 = v52;
          }

          else
          {
            v17 = v51;
          }

          v45 = v17;
          v18 = v17;
          v46 = v45;
          v47 = MEMORY[0x277D82BE0](v46);
          v161 = v47;
          v48 = [v212[0] hiddenPreferredStatefulDescriptor];
          v49 = [v48 updateName];
          v50 = MEMORY[0x277D82BE0](v49);
          v160 = v50;
          v214 = [v212[0] hidingAlternateDescriptor];
          if (v214)
          {
            v19 = v52;
          }

          else
          {
            v19 = v51;
          }

          v53 = v19;
          v20 = v19;
          v54 = v53;
          v55 = MEMORY[0x277D82BE0](v54);
          v159 = v55;
          v56 = [v212[0] hiddenAlternateStatefulDescriptor];
          v57 = [v56 updateName];
          v58 = MEMORY[0x277D82BE0](v57);
          v158 = v58;
          v60 = [v212[0] enrolledBetaProgram];
          v156 = 0;
          if (v60)
          {
            v157 = [v212[0] enrolledBetaProgram];
            v156 = 1;
            v37 = [v157 programID];
          }

          else
          {
            v37 = 0;
          }

          v28 = v37;
          v29 = [*(v212[0] + 15) count];
          v213 = [v212[0] canEnrollInBetaUpdates];
          if (v213)
          {
            v21 = @"YES";
          }

          else
          {
            v21 = @"NO";
          }

          v27 = v21;
          v22 = v21;
          v36 = v27;
          v30 = MEMORY[0x277D82BE0](v36);
          v155 = v30;
          v31 = *(v212[0] + 21);
          v32 = *(v212[0] + 22);
          v33 = *(v212[0] + 23);
          v23 = [*(v212[0] + 24) count];
          v34 = v25;
          v35 = v221;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v221, v152, v73, v75, v77, v78, v63, v64, v65, v66, v67, v38, v39, v41, v44, v47, v50, v55, v58, v28, v29, v30, v31, v32, v33, v23);
          _os_log_impl(&dword_26ADE5000, v71, v72[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full scan operation is already running. Skipping on this refresh requestwithout transitioning to the RefreshingScanResults state.", v35, 0xFCu);
          MEMORY[0x277D82BD8](v36);
          if (v156)
          {
            MEMORY[0x277D82BD8](v157);
          }

          MEMORY[0x277D82BD8](v60);
          MEMORY[0x277D82BD8](v57);
          MEMORY[0x277D82BD8](v56);
          MEMORY[0x277D82BD8](v54);
          MEMORY[0x277D82BD8](v49);
          MEMORY[0x277D82BD8](v48);
          MEMORY[0x277D82BD8](v46);
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](v40);
          MEMORY[0x277D82BD8](v39);
          if (v164)
          {
            MEMORY[0x277D82BD8](v165);
          }

          if (v166)
          {
            MEMORY[0x277D82BD8](v167);
          }

          if (v168)
          {
            MEMORY[0x277D82BD8](v169);
          }

          MEMORY[0x277D82BD8](v68);
          MEMORY[0x277D82BD8](v67);
          MEMORY[0x277D82BD8](v66);
          MEMORY[0x277D82BD8](v65);
          MEMORY[0x277D82BD8](v64);
          if (v170)
          {
            MEMORY[0x277D82BD8](v171);
          }

          if (v172)
          {
            MEMORY[0x277D82BD8](v173);
          }

          MEMORY[0x277D82BD8](v79);
          MEMORY[0x277D82BD8](v76);
          MEMORY[0x277D82BD8](v74);
          v26 = 0;
          objc_storeStrong(&v155, 0);
          objc_storeStrong(&v158, v26);
          objc_storeStrong(&v159, v26);
          objc_storeStrong(&v160, v26);
          objc_storeStrong(&v161, v26);
          objc_storeStrong(&v162, v26);
          objc_storeStrong(&v163, v26);
          objc_storeStrong(&v174, v26);
          objc_storeStrong(&v175, v26);
        }

        objc_storeStrong(&v177, 0);
        v201 = 1;
      }

      else
      {
        v25[19] = &v154;
        v154 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
        [(SUUIStatefulUIManagerFSMParam *)v154 setForceReload:v151[7] & 1];
        [(SUUIStatefulUIManagerFSMParam *)v154 setRefreshHasAnyChanges:0];
        v24 = [v212[0] currentState];
        [(SUUIStatefulUIManagerFSMParam *)v154 setRefreshPreviousState:v24];
        [*(v212[0] + 25) postEvent:@"RefreshScanResults" withInfo:v154];
        objc_storeStrong(&v154, 0);
        v201 = 0;
      }
    }
  }

  objc_storeStrong(v212, 0);
  *MEMORY[0x277D85DE8];
}

void __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke_320(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)checkForUpdatesInBackground:(BOOL)a3 forceScan:(BOOL)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  v4 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceReload:v6];
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceScan:v5];
  [(SUUIStatefulUIManager *)v8 performFullScan:v4];
  objc_storeStrong(&v4, 0);
}

- (void)checkForUpdatesInBackgroundWithCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUUIStatefulUIManager *)v4 checkForUpdatesInBackgroundWithForcedReload:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)checkForUpdatesInBackgroundWithForcedReload:(BOOL)a3 completion:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  objc_initWeak(&v13, v17);
  queue = v17->_operationsQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke;
  v9 = &unk_279CC6208;
  objc_copyWeak(v11, &v13);
  v11[1] = v16;
  v10 = MEMORY[0x277D82BE0](location);
  v12 = v15;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 40));
  v10 = 0;
  if (!v22[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v21 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v8 = NSStringFromSelector(*(a1 + 48));
      v19 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUUIStatefulUIManager checkForUpdatesInBackgroundWithForcedReload:completion:]_block_invoke", v19);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v4;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke_325;
    v16 = &unk_279CC61E0;
    v17 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v2 = *(v22[0] + 29);
    v3 = MEMORY[0x26D66ADC0](*(a1 + 32));
    [v2 addObject:?];
    MEMORY[0x277D82BD8](v3);
    [v22[0] checkForUpdatesInBackground:*(a1 + 56) & 1];
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke_325(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)doesTargetedUpdateMatchDescriptorRole:(unint64_t)a3
{
  v88 = &v108;
  v89 = "[SUUIStatefulUIManager doesTargetedUpdateMatchDescriptorRole:]";
  v122 = *MEMORY[0x277D85DE8];
  v115[3] = self;
  v115[2] = a2;
  v115[1] = a3;
  if (!a3 || *(v88 + 11) == 1)
  {
    v24 = *(v88 + 11);
    v92 = 0;
    v90 = 0;
    if (v24)
    {
      v91 = [*(v88 + 13) alternateStatefulDescriptor];
      v90 = 1;
      v30 = v91;
    }

    else
    {
      v93 = [*(v88 + 13) preferredStatefulDescriptor];
      v92 = 1;
      v30 = v93;
    }

    v94 = MEMORY[0x277D82BE0](v30);
    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    v25 = *(v88 + 13);
    v29 = &v94;
    v116 = [v25 doesTargetedUpdateMatchDescriptor:v94] & 1;
    objc_storeStrong(&v94, 0);
  }

  else
  {
    v87 = +[SUUILoggingContext statefulUILogger];
    v3 = [v87 oslog];
    v4 = v87;
    *(v88 + 10) = v3;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v88 + 10), OS_LOG_TYPE_DEFAULT))
    {
      log = *(v88 + 10);
      *v79 = type;
      v80 = *(v88 + 13);
      v5 = *(v88 + 13);
      v6 = objc_opt_class();
      v81 = NSStringFromClass(v6);
      v7 = MEMORY[0x277D82BE0](v81);
      v8 = v88;
      v82 = v7;
      *(v88 + 8) = v7;
      v83 = SUUIStatefulUIStateToString(*(*(v8 + 13) + 40));
      v9 = MEMORY[0x277D82BE0](v83);
      v10 = v88;
      v84 = v9;
      *(v88 + 7) = v9;
      v85 = [v10[13] currentState];
      v86 = [*(v88 + 13) delegate];
      v111 = 0;
      v110 = 0;
      if (v86)
      {
        *(v88 + 6) = [*(v88 + 13) delegate];
        v76 = 1;
        v111 = 1;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *(v88 + 4) = v12;
        v110 = 1;
        v77 = v12;
      }

      else
      {
        v77 = @"(null)";
      }

      v70 = v77;
      v71 = [*(v88 + 13) delegate];
      v72 = [*(v88 + 13) scanError];
      v73 = [*(v88 + 13) preferredStatefulDescriptor];
      v74 = [*(v88 + 13) alternateStatefulDescriptor];
      v75 = [*(v88 + 13) currentDownload];
      v109 = 0;
      v107 = 0;
      v105 = 0;
      if (v75)
      {
        v13 = [*(v88 + 13) currentDownload];
        *(v88 + 2) = v13;
        v68 = 1;
        v109 = 1;
        v14 = [v13 descriptor];
        *v88 = v14;
        v107 = 1;
        v106 = [v14 updateName];
        v105 = v68 & 1;
        v69 = v106;
      }

      else
      {
        v69 = @"(null)";
      }

      v45 = v69;
      v46 = [*(v88 + 13) currentDownload];
      v47 = SUUIUpdateContinuousOperationTypeToString([*(v88 + 13) currentUpdateOperationType]);
      v48 = MEMORY[0x277D82BE0](v47);
      v104 = v48;
      v120 = [*(v88 + 13) isTargetedUpdateScheduledForAutoInstall];
      v58 = @"NO";
      v59 = @"YES";
      v66 = 1;
      if (v120)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v49 = v15;
      v16 = v15;
      v50 = v49;
      v51 = MEMORY[0x277D82BE0](v50);
      v103 = v51;
      v119 = [*(v88 + 13) hidingPreferredDescriptor];
      if (v119)
      {
        v17 = v59;
      }

      else
      {
        v17 = v58;
      }

      v52 = v17;
      v18 = v17;
      v53 = v52;
      v54 = MEMORY[0x277D82BE0](v53);
      v102 = v54;
      v55 = [*(v88 + 13) hiddenPreferredStatefulDescriptor];
      v56 = [v55 updateName];
      v57 = MEMORY[0x277D82BE0](v56);
      v101 = v57;
      v118 = [*(v88 + 13) hidingAlternateDescriptor];
      if (v118)
      {
        v19 = v59;
      }

      else
      {
        v19 = v58;
      }

      v60 = v19;
      v20 = v19;
      v61 = v60;
      v62 = MEMORY[0x277D82BE0](v61);
      v100 = v62;
      v63 = [*(v88 + 13) hiddenAlternateStatefulDescriptor];
      v64 = [v63 updateName];
      v65 = MEMORY[0x277D82BE0](v64);
      v99 = v65;
      v67 = [*(v88 + 13) enrolledBetaProgram];
      v97 = 0;
      if (v67)
      {
        v98 = [*(v88 + 13) enrolledBetaProgram];
        v97 = 1;
        v44 = [v98 programID];
      }

      else
      {
        v44 = 0;
      }

      v33 = v44;
      v34 = [*(*(v88 + 13) + 120) count];
      v117 = [*(v88 + 13) canEnrollInBetaUpdates];
      if (v117)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v32 = v21;
      v22 = v21;
      v43 = v32;
      v35 = MEMORY[0x277D82BE0](v43);
      v96 = v35;
      v36 = *(*(v88 + 13) + 168);
      v37 = *(*(v88 + 13) + 176);
      v38 = *(*(v88 + 13) + 184);
      v39 = [*(*(v88 + 13) + 192) count];
      v42 = SUUIStatefulDescriptorRoleToString(*(v88 + 11));
      location = MEMORY[0x277D82BE0](v42);
      v23 = *(v88 + 11);
      v40 = &v27;
      buf = v121;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_64_8_0(v121, v89, v80, v82, v84, v85, v70, v71, v72, v73, v74, v45, v46, v48, v51, v54, v57, v62, v65, v33, v34, v35, v36, v37, v38, v39, location, v23);
      _os_log_impl(&dword_26ADE5000, log, v79[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe given descriptor role, %@ (%ld), is invalid.", buf, 0x110u);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
      if (v97)
      {
        MEMORY[0x277D82BD8](v98);
      }

      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      if (v105)
      {
        MEMORY[0x277D82BD8](v106);
      }

      if (v107)
      {
        MEMORY[0x277D82BD8](*v88);
      }

      if (v109)
      {
        MEMORY[0x277D82BD8](*(v88 + 2));
      }

      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v71);
      if (v110)
      {
        MEMORY[0x277D82BD8](*(v88 + 4));
      }

      if (v111)
      {
        MEMORY[0x277D82BD8](*(v88 + 6));
      }

      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v81);
      obj = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v96, obj);
      objc_storeStrong(&v99, obj);
      objc_storeStrong(&v100, obj);
      objc_storeStrong(&v101, obj);
      objc_storeStrong(&v102, obj);
      objc_storeStrong(&v103, obj);
      objc_storeStrong(&v104, obj);
      objc_storeStrong(&v112, obj);
      objc_storeStrong(&v113, obj);
    }

    objc_storeStrong(v115, 0);
    v116 = 0;
  }

  v28 = v116;
  *MEMORY[0x277D85DE8];
  return v116 & 1;
}

- (BOOL)doesTargetedUpdateMatchDescriptor:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(SUUIStatefulUIManager *)v11 currentDownload];
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if (v9)
  {
    v8 = [v9 descriptor];
    v7 = 1;
    v6 = [location[0] descriptor];
    v5 = 1;
    v4 = [v8 isEqual:?];
  }

  v12 = v4 & 1;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (id)targetedUpdateStatefulDescriptor
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(SUUIStatefulUIManager *)self currentDownload];
  v3 = [(SUUIStatefulUIManager *)v5 targetedUpdateForDownload:v4[0]];
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)latestUpdateStatefulDescriptor
{
  v12 = self;
  v11[1] = a2;
  v11[0] = [(SUUIStatefulUIManager *)self preferredStatefulDescriptor];
  v10 = [(SUUIStatefulUIManager *)v12 alternateStatefulDescriptor];
  location = MEMORY[0x277D82BE0](v11[0]);
  if (location || !v10)
  {
    if (v11[0] && v10)
    {
      v4 = [v11[0] descriptor];
      v7 = [v4 productBuildVersion];
      MEMORY[0x277D82BD8](v4);
      v5 = [v10 descriptor];
      v6 = [v5 productBuildVersion];
      MEMORY[0x277D82BD8](v5);
      if ([v7 compare:v6 options:64] == -1)
      {
        objc_storeStrong(&location, v10);
      }

      else
      {
        objc_storeStrong(&location, v11[0]);
      }

      objc_storeStrong(&v6, 0);
      objc_storeStrong(&v7, 0);
    }

    v13 = MEMORY[0x277D82BE0](location);
    v8 = 1;
  }

  else
  {
    v13 = MEMORY[0x277D82BE0](v10);
    v8 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  v2 = v13;

  return v2;
}

- (void)downloadUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6
{
  v46 = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = 0;
  objc_storeStrong(&v42, a5);
  v41 = 0;
  objc_storeStrong(&v41, a6);
  objc_initWeak(&v40, v46);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6230;
  v38 = MEMORY[0x277D82BE0](v46);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](v46);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.DownloadOnly", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.DownloadOnly", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)v46 performUpdateOperation:1 withDescriptor:location byApplyingSelector:sel_downloadUpdate_withContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForDownloadUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignDownloadUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v39 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v7 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIStatefulUIManager downloadUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_330;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v24 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v24)
    {
      (*(v24 + 2))(v24, location, v37);
      v23 = 0;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v24, 0);
    if (v39)
    {
      v5 = v36[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_333;
      v18 = &unk_279CC62A0;
      objc_copyWeak(v21, (a1 + 48));
      v21[1] = *(a1 + 56);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      v20 = MEMORY[0x277D82BE0](location);
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v14];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v21);
    }

    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_330(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_333(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v19[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v18 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v8 = NSStringFromSelector(*(a1 + 56));
      v16 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIStatefulUIManager downloadUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v3 = [v19[0] delegate];
    v4 = v19[0];
    v5 = *(a1 + 32);
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    v12 = v1;
    objc_storeStrong(&v13, 0);
    v2 = [v12 download];
    [v3 statefulUIManager:v4 didStartDownloadForDescriptor:v5 withDownload:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v3);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadAndInstall:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6
{
  v46 = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = 0;
  objc_storeStrong(&v42, a5);
  v41 = 0;
  objc_storeStrong(&v41, a6);
  objc_initWeak(&v40, v46);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC62F0;
  v38 = MEMORY[0x277D82BE0](v46);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_339);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](v46);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNow", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNow", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)v46 performUpdateOperation:2 withDescriptor:location byApplyingSelector:sel_downloadAndInstallUpdate_withContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global_339 resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForDownloadAndInstallUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignDownloadUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v39 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v7 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIStatefulUIManager downloadAndInstall:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_340;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v24 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v24)
    {
      (*(v24 + 2))(v24, location, v37);
      v23 = 0;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v24, 0);
    if (v39)
    {
      v5 = v36[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_341;
      v18 = &unk_279CC62A0;
      objc_copyWeak(v21, (a1 + 48));
      v21[1] = *(a1 + 56);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      v20 = MEMORY[0x277D82BE0](location);
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v14];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v21);
    }

    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_340(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_341(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v19[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v18 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v8 = NSStringFromSelector(*(a1 + 56));
      v16 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIStatefulUIManager downloadAndInstall:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v3 = [v19[0] delegate];
    v4 = v19[0];
    v5 = *(a1 + 32);
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    v12 = v1;
    objc_storeStrong(&v13, 0);
    v2 = [v12 download];
    [v3 statefulUIManager:v4 didStartDownloadForDescriptor:v5 withDownload:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v3);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadAndScheduleUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6
{
  v46 = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = 0;
  objc_storeStrong(&v42, a5);
  v41 = 0;
  objc_storeStrong(&v41, a6);
  objc_initWeak(&v40, v46);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6318;
  v38 = MEMORY[0x277D82BE0](v46);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_346);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](v46);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateTonight", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateTonight", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)v46 performUpdateOperation:3 withDescriptor:location byApplyingSelector:sel_downloadAndScheduleUpdate_forInstallationTonightWithContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global_346 resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForDownloadAndScheduleUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v7 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(&v7, 0);
  v8[0] = v6;
  v4 = 0;
  if ([v6 isSuccess])
  {
    v4 = [v8[0] isScheduled];
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignDownloadAndScheduleUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v39 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v7 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIStatefulUIManager downloadAndScheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_348;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v24 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v24)
    {
      (*(v24 + 2))(v24, location, v37);
      v23 = 0;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v24, 0);
    if (v39)
    {
      v5 = v36[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_349;
      v18 = &unk_279CC62A0;
      objc_copyWeak(v21, (a1 + 48));
      v21[1] = *(a1 + 56);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      v20 = MEMORY[0x277D82BE0](location);
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v14];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v21);
    }

    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_348(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_349(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v19[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v18 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v8 = NSStringFromSelector(*(a1 + 56));
      v16 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIStatefulUIManager downloadAndScheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v3 = [v19[0] delegate];
    v4 = v19[0];
    v5 = *(a1 + 32);
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    v12 = v1;
    objc_storeStrong(&v13, 0);
    v2 = [v12 download];
    [v3 statefulUIManager:v4 didStartDownloadForDescriptor:v5 withDownload:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v3);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

- (void)installUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6
{
  v46 = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = 0;
  objc_storeStrong(&v42, a5);
  v41 = 0;
  objc_storeStrong(&v41, a6);
  objc_initWeak(&v40, v46);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6340;
  v38 = MEMORY[0x277D82BE0](v46);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_354);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](v46);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.InstallNow", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.InstallNow", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)v46 performUpdateOperation:5 withDescriptor:location byApplyingSelector:sel_installUpdate_withContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global_354 resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForInstallUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignInstallUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = a1;
  v49 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v46[1] = a1;
  v46[0] = objc_loadWeakRetained((a1 + 48));
  v14 = 0;
  if (!v46[0])
  {
    v13 = +[SUUILoggingContext softwareUpdateUILogger];
    v45 = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v44 = 16;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      log = v45;
      type = v44;
      v10 = NSStringFromSelector(*(a1 + 56));
      v43 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v51, "[SUUIStatefulUIManager installUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v43);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v51, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v43, 0);
    }

    objc_storeStrong(&v45, 0);
    v42 = 1;
    v14 = 1;
  }

  if (v14)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v36 = MEMORY[0x277D85DD0];
    v37 = -1073741824;
    v38 = 0;
    v39 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_356;
    v40 = &unk_279CC61E0;
    v41 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v36);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v41, 0);
    v35 = 1;
  }

  else
  {
    v34 = MEMORY[0x277D82BE0](v47);
    v33 = [v46[0] targetedUpdateStatefulDescriptor];
    v7 = [v46[0] currentDownload];
    v8 = [v33 isDownloadable];
    v6 = [v33 updateDownloadError];
    v31 = 0;
    v29 = 0;
    v27 = 0;
    if (v34)
    {
      [v33 updateStateFromConcreteDownload:v7 downloadable:v8 downloadError:v6 isUpdateReadyForInstallation:0 updateInstallationError:v34 error:v34];
    }

    else
    {
      v32 = [v46[0] environment];
      v31 = 1;
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:4 userInfo:0];
      v29 = 1;
      v28 = [v32 statefulErrorWithError:?];
      v27 = 1;
      [v33 updateStateFromConcreteDownload:v7 downloadable:v8 downloadError:v6 isUpdateReadyForInstallation:0 updateInstallationError:v28 error:0];
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v26 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v26)
    {
      (*(v26 + 2))(v26, location, v47);
      v25 = 0;
    }

    else
    {
      v24 = 0;
    }

    objc_storeStrong(&v26, 0);
    if (v49)
    {
      v5 = v46[0];
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_359;
      v21 = &unk_279CC6368;
      objc_copyWeak(v23, (a1 + 48));
      v23[1] = *(a1 + 56);
      v22 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartInstallingUpdateWithDescriptor_ usingBlock:&v17];
      objc_storeStrong(&v22, 0);
      objc_destroyWeak(v23);
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    v35 = 0;
  }

  objc_storeStrong(v46, 0);
  if (!v35)
  {
    v35 = 0;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_356(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_359(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 48));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager installUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didStartInstallingUpdateWithDescriptor:*(a1 + 32)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)scheduleUpdate:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 completionHandler:(id)a6
{
  v45 = self;
  v44 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  objc_initWeak(&v39, v45);
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v36 = &unk_279CC6390;
  v37 = MEMORY[0x277D82BE0](v45);
  v38 = MEMORY[0x26D66ADC0](&v32);
  v31 = MEMORY[0x26D66ADC0](&__block_literal_global_364);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v28[3] = &unk_279CC6278;
  v29 = MEMORY[0x277D82BE0](v45);
  v30 = MEMORY[0x26D66ADC0](v28);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC63E0;
  objc_copyWeak(v26, &v39);
  v26[1] = v44;
  v25 = MEMORY[0x277D82BE0](v40);
  v27 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.Schedule", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.Schedule", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)v45 performUpdateOperation:4 withDescriptor:location byApplyingSelector:sel_scheduleUpdate_forInstallationTonightWithContext_delegate_completionHandler_ context:v38 auxiliaryOperation:1 delegate:v42 delegateCallbackQueue:v41 resultsValidation:&__block_literal_global_364 resultsAssignment:v30 completion:v27];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v25, 0);
  objc_destroyWeak(v26);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v37, 0);
  objc_destroyWeak(&v39);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&location, 0);
}

id __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForScheduleUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignScheduleUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 40));
  v11 = 0;
  if (!v34[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v33 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v7 = NSStringFromSelector(*(a1 + 48));
      v31 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager scheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v31);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_366;
    v28 = &unk_279CC61E0;
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v24);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v29, 0);
    v23 = 1;
  }

  else
  {
    v22 = MEMORY[0x26D66ADC0](*(a1 + 32));
    if (v22)
    {
      (*(v22 + 2))(v22, location, v35);
      v21 = 0;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&v22, 0);
    if (v37)
    {
      v5 = v34[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_369;
      v18 = &unk_279CC63B8;
      objc_copyWeak(v19, (a1 + 40));
      v19[1] = *(a1 + 48);
      [v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v14];
      objc_destroyWeak(v19);
    }

    v23 = 0;
  }

  objc_storeStrong(v34, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_366(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_369(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager scheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)promoteTargetedUpdateToUserInitiatedStatus:(id)a3 delegateCallbackQueue:(id)a4 completionHandler:(id)a5
{
  v43 = self;
  v42 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  objc_initWeak(&v38, v43);
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke;
  v35 = &unk_279CC6408;
  v36 = MEMORY[0x277D82BE0](v43);
  v37 = MEMORY[0x26D66ADC0](&v31);
  v30 = MEMORY[0x26D66ADC0](&__block_literal_global_374);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_3;
  v27[3] = &unk_279CC6278;
  v28 = MEMORY[0x277D82BE0](v43);
  v29 = MEMORY[0x26D66ADC0](v27);
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_4;
  v23 = &unk_279CC63E0;
  objc_copyWeak(v25, &v38);
  v25[1] = v42;
  v24 = MEMORY[0x277D82BE0](v39);
  v26 = MEMORY[0x26D66ADC0](&v19);
  v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v16)
  {
    v15 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.PromoteToUserInitiated", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v5 = v16[1].opaque[0];
    v16[1].opaque[0] = v15;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.PromoteToUserInitiated", v12, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v17 = v16;
  if (v16)
  {
    os_activity_scope_enter(v17[1].opaque[0], v17);
    LOBYTE(v17[1].opaque[1]) = 1;
  }

  v18 = v17;
  if (v40)
  {
    operationsQueue = v40;
  }

  else
  {
    operationsQueue = v43->_operationsQueue;
  }

  [(SUUIStatefulUIManager *)v43 performUpdateOnDownloadByApplyingSelector:sel_promoteDownloadToUserInitiated_withContext_delegate_completionHandler_ context:v37 description:@"Promote to User Initiated Status" delegate:location delegateCallbackQueue:operationsQueue resultsValidation:&__block_literal_global_374 resultsAssignment:v29 completion:v26];
  _SUUIActivityCleanup(&v18);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  objc_destroyWeak(v25);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v36, 0);
  objc_destroyWeak(&v38);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
}

id __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForUserPromotionUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignUserPromotionUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 40));
  v11 = 0;
  if (!v34[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v33 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v7 = NSStringFromSelector(*(a1 + 48));
      v31 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager promoteTargetedUpdateToUserInitiatedStatus:delegateCallbackQueue:completionHandler:]_block_invoke_4", v31);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_376;
    v28 = &unk_279CC61E0;
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v24);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v29, 0);
    v23 = 1;
  }

  else
  {
    v22 = MEMORY[0x26D66ADC0](*(a1 + 32));
    if (v22)
    {
      (*(v22 + 2))(v22, v37 & 1, v35);
      v21 = 0;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&v22, 0);
    v5 = v34[0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_2_377;
    v18 = &unk_279CC63B8;
    objc_copyWeak(v19, (a1 + 40));
    v19[1] = *(a1 + 48);
    [v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v14];
    objc_destroyWeak(v19);
    v23 = 0;
  }

  objc_storeStrong(v34, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_376(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_2_377(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager promoteTargetedUpdateToUserInitiatedStatus:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)a3 delegateCallbackQueue:(id)a4 completionHandler:(id)a5
{
  v45 = self;
  v44 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  objc_initWeak(&v40, v45);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6430;
  v38 = MEMORY[0x277D82BE0](v45);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_385);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](v45);
  v31 = MEMORY[0x26D66ADC0](v29);
  v21 = MEMORY[0x277D85DD0];
  v22 = -1073741824;
  v23 = 0;
  v24 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_4;
  v25 = &unk_279CC63E0;
  objc_copyWeak(v27, &v40);
  v27[1] = v44;
  v26 = MEMORY[0x277D82BE0](v41);
  v28 = MEMORY[0x26D66ADC0](&v21);
  v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v18)
  {
    v17 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.Unschedule", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v5 = v18[1].opaque[0];
    v18[1].opaque[0] = v17;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v11 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_26ADE5000, log, v10, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.Unschedule", v14, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v19 = v18;
  if (v18)
  {
    os_activity_scope_enter(v19[1].opaque[0], v19);
    LOBYTE(v19[1].opaque[1]) = 1;
  }

  v20 = v19;
  v8 = v45;
  v7 = [(SUUIStatefulUIManager *)v45 targetedUpdateStatefulDescriptor];
  if (v42)
  {
    operationsQueue = v42;
  }

  else
  {
    operationsQueue = v45->_operationsQueue;
  }

  [(SUUIStatefulUIManager *)v8 performUpdateOperation:6 withDescriptor:v7 byApplyingSelector:sel_unscheduleUpdate_forInstallationTonightWithContext_delegate_completionHandler_ context:v39 auxiliaryOperation:1 delegate:location delegateCallbackQueue:operationsQueue resultsValidation:&__block_literal_global_385 resultsAssignment:v31 completion:v28];
  MEMORY[0x277D82BD8](v7);
  _SUUIActivityCleanup(&v20);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&location, 0);
}

id __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForUserUnscheduleUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignUnscheduleUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 40));
  v11 = 0;
  if (!v34[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v33 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v7 = NSStringFromSelector(*(a1 + 48));
      v31 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation:delegateCallbackQueue:completionHandler:]_block_invoke_4", v31);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_387;
    v28 = &unk_279CC61E0;
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v24);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v29, 0);
    v23 = 1;
  }

  else
  {
    v22 = MEMORY[0x26D66ADC0](*(a1 + 32));
    if (v22)
    {
      (*(v22 + 2))(v22, v37 & 1, v35);
      v21 = 0;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&v22, 0);
    v5 = v34[0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_2_388;
    v18 = &unk_279CC63B8;
    objc_copyWeak(v19, (a1 + 40));
    v19[1] = *(a1 + 48);
    [v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v14];
    objc_destroyWeak(v19);
    v23 = 0;
  }

  objc_storeStrong(v34, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_387(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_2_388(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isPerformingFullScan
{
  v2 = [(SUUIStatefulUIManager *)self currentFullScanOperation];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  return v4;
}

- (BOOL)isPerformingRefresh
{
  v2 = [(SUUIStatefulUIManager *)self currentRefreshScanOperation];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  return v4;
}

- (BOOL)isPerformingUpdate
{
  v3 = [(SUUIStatefulUIManager *)self currentUpdateOperation];
  v4 = 1;
  if (!v3)
  {
    v4 = [(SUUIStatefulUIManager *)self currentUpdateOperationType]!= 0;
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)hasHiddenDescriptors
{
  v3 = 1;
  if (![(SUUIStatefulUIManager *)self hidingPreferredDescriptor])
  {
    return [(SUUIStatefulUIManager *)self hidingAlternateDescriptor];
  }

  return v3;
}

- (void)enrollInBetaUpdatesProgram:(id)a3 completionHandler:(id)a4
{
  v18 = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  objc_initWeak(&v14, v18);
  queue = v18->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke;
  v10 = &unk_279CC64D0;
  objc_copyWeak(v13, &v14);
  v13[1] = v17;
  v12 = MEMORY[0x277D82BE0](v15);
  v11 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke()
{
  v339 = MEMORY[0x28223BE20]();
  v340 = "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke";
  v341 = "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke_2";
  v485 = *MEMORY[0x277D85DE8];
  v468[2] = v339;
  v468[1] = v339;
  WeakRetained = objc_loadWeakRetained((v339 + 48));
  v468[0] = WeakRetained;
  v338 = 0;
  if (!WeakRetained)
  {
    v337 = +[SUUILoggingContext softwareUpdateUILogger];
    v335 = v337;
    v336 = [v335 oslog];
    oslog = v336;
    MEMORY[0x277D82BD8](v335);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v333 = type;
      v334 = NSStringFromSelector(*(v339 + 56));
      v331 = v334;
      location = MEMORY[0x277D82BE0](v331);
      buf = v484;
      __os_log_helper_16_2_2_8_32_8_66(v484, v340, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v484, 0x16u);
      MEMORY[0x277D82BD8](v331);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v464 = 1;
    v338 = 1;
  }

  if (v338)
  {
    v0 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v458;
    v458 = MEMORY[0x277D85DD0];
    v459 = -1073741824;
    v460 = 0;
    v461 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_391;
    v462 = &unk_279CC61E0;
    v327 = &v463;
    v463 = MEMORY[0x277D82BE0](*(v339 + 40));
    dispatch_async(queue, &v458);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v463, 0);
    v457 = 1;
  }

  else
  {
    v326 = _os_feature_enabled_impl();
    if (v326)
    {
      v452 = 0;
      v453 = &v452;
      v454 = 0x20000000;
      v455 = 32;
      v456 = 0;
      v321 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
      v450 = v321;
      if (v321)
      {
        v449 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.EnrollInBetaProgram", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
        v1 = v450[1].opaque[0];
        v450[1].opaque[0] = v449;
        MEMORY[0x277D82BD8](v1);
      }

      else
      {
        v320 = +[SUUILoggingContext softwareUpdateUILogger];
        v318 = v320;
        v319 = [v318 oslog];
        v448 = v319;
        MEMORY[0x277D82BD8](v318);
        v447 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v448, OS_LOG_TYPE_ERROR))
        {
          v315 = v448;
          *v316 = v447;
          v317 = v446;
          __os_log_helper_16_0_0(v446);
          _os_log_error_impl(&dword_26ADE5000, v315, v316[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.EnrollInBetaProgram", v446, 2u);
        }

        objc_storeStrong(&v448, 0);
      }

      v445[2] = v450;
      state = v450;
      if (v450)
      {
        os_activity_scope_enter(state[1].opaque[0], state);
        LOBYTE(state[1].opaque[1]) = 1;
      }

      v445[1] = state;
      v453[3] = state;
      v314 = [v468[0] betaPrograms];
      v445[0] = v314;
      v313 = [v468[0] delegateCallbackQueue];
      v444 = v313;
      v312 = [v468[0] currentDownload];
      v443 = v312;
      v311 = [v468[0] delegate];
      v310 = v311;
      objc_initWeak(&from, v310);
      MEMORY[0x277D82BD8](v310);
      v309 = [v468[0] currentSeedingDevice];
      v308 = v309;
      MEMORY[0x277D82BD8](v308);
      if (v308)
      {
        if (v445[0] && (v220 = [v445[0] count]) != 0)
        {
          v130 = *(v339 + 32);
          v381 = 0;
          if (v130)
          {
            v129 = v130;
          }

          else
          {
            v128 = [v445[0] firstObject];
            v382 = v128;
            v381 = 1;
            v129 = v382;
          }

          v383 = MEMORY[0x277D82BE0](v129);
          if (v381)
          {
            MEMORY[0x277D82BD8](v382);
          }

          if (v443)
          {
            v127 = +[SUUILoggingContext statefulUILogger];
            v125 = v127;
            v126 = [v125 oslog];
            v380 = v126;
            MEMORY[0x277D82BD8](v125);
            v379 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v380, OS_LOG_TYPE_DEFAULT))
            {
              v121 = v380;
              *v122 = v379;
              v123 = v468[0];
              v124 = objc_opt_class();
              v120 = NSStringFromClass(v124);
              v117 = v120;
              v118 = MEMORY[0x277D82BE0](v117);
              v378 = v118;
              v119 = SUUIStatefulUIStateToString(*(v468[0] + 5));
              v114 = v119;
              v115 = MEMORY[0x277D82BE0](v114);
              v377 = v115;
              v116 = [v468[0] currentState];
              v375 = 0;
              v373 = 0;
              v113 = [v468[0] delegate];
              v112 = v113;
              if (v112)
              {
                v111 = [v468[0] delegate];
                v376 = v111;
                v375 = 1;
                v110 = objc_opt_class();
                v109 = NSStringFromClass(v110);
                v374 = v109;
                v373 = 1;
                v108 = v374;
              }

              else
              {
                v108 = @"(null)";
              }

              v106 = v108;
              v107 = [v468[0] delegate];
              v104 = v107;
              v105 = [v468[0] scanError];
              v102 = v105;
              v103 = [v468[0] preferredStatefulDescriptor];
              v100 = v103;
              v101 = [v468[0] alternateStatefulDescriptor];
              v98 = v101;
              v371 = 0;
              v369 = 0;
              v367 = 0;
              v99 = [v468[0] currentDownload];
              v97 = v99;
              if (v97)
              {
                v96 = [v468[0] currentDownload];
                v372 = v96;
                v371 = 1;
                v95 = [v372 descriptor];
                v370 = v95;
                v369 = 1;
                v94 = [v370 updateName];
                v368 = v94;
                v367 = 1;
                v93 = v368;
              }

              else
              {
                v93 = @"(null)";
              }

              v91 = v93;
              v92 = [v468[0] currentDownload];
              v89 = v92;
              v90 = [v468[0] currentUpdateOperationType];
              v88 = SUUIUpdateContinuousOperationTypeToString(v90);
              v85 = v88;
              v86 = MEMORY[0x277D82BE0](v85);
              v366 = v86;
              v87 = [v468[0] isTargetedUpdateScheduledForAutoInstall];
              v472 = v87;
              if (v87)
              {
                v19 = @"YES";
              }

              else
              {
                v19 = @"NO";
              }

              v84 = v19;
              v20 = v19;
              v81 = v84;
              v82 = MEMORY[0x277D82BE0](v81);
              v365 = v82;
              v83 = [v468[0] hidingPreferredDescriptor];
              v471 = v83;
              if (v83)
              {
                v21 = @"YES";
              }

              else
              {
                v21 = @"NO";
              }

              v80 = v21;
              v22 = v21;
              v77 = v80;
              v78 = MEMORY[0x277D82BE0](v77);
              v364 = v78;
              v79 = [v468[0] hiddenPreferredStatefulDescriptor];
              v75 = v79;
              v76 = [v75 updateName];
              v72 = v76;
              v73 = MEMORY[0x277D82BE0](v72);
              v363 = v73;
              v74 = [v468[0] hidingAlternateDescriptor];
              v470 = v74;
              if (v74)
              {
                v23 = @"YES";
              }

              else
              {
                v23 = @"NO";
              }

              v71 = v23;
              v24 = v23;
              v68 = v71;
              v69 = MEMORY[0x277D82BE0](v68);
              v362 = v69;
              v70 = [v468[0] hiddenAlternateStatefulDescriptor];
              v66 = v70;
              v67 = [v66 updateName];
              v63 = v67;
              v64 = MEMORY[0x277D82BE0](v63);
              v361 = v64;
              v359 = 0;
              v65 = [v468[0] enrolledBetaProgram];
              v62 = v65;
              if (v62)
              {
                v61 = [v468[0] enrolledBetaProgram];
                v360 = v61;
                v359 = 1;
                v60 = [v360 programID];
                v59 = v60;
              }

              else
              {
                v59 = 0;
              }

              v57 = v59;
              v58 = [*(v468[0] + 15) count];
              v56 = [v468[0] canEnrollInBetaUpdates];
              v469 = v56;
              if (v56)
              {
                v25 = @"YES";
              }

              else
              {
                v25 = @"NO";
              }

              v55 = v25;
              v26 = v25;
              v49 = v55;
              v50 = MEMORY[0x277D82BE0](v49);
              v358 = v50;
              v51 = *(v468[0] + 21);
              v52 = *(v468[0] + 22);
              v53 = *(v468[0] + 23);
              v54 = [*(v468[0] + 24) count];
              v48 = [*(v339 + 32) programID];
              v27 = *(v339 + 32);
              v46 = &v28;
              v47 = v481;
              __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v481, v341, v123, v118, v115, v116, v106, v104, v102, v100, v98, v91, v89, v86, v82, v78, v73, v69, v64, v57, v58, v50, v51, v52, v53, v54, v48, v27);
              _os_log_impl(&dword_26ADE5000, v121, v122[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA targeted update exists when attempting to enroll in beta program: %ld (%p). Asking to purge the targeted update.", v47, 0x110u);
              MEMORY[0x277D82BD8](v49);
              if (v359)
              {
                MEMORY[0x277D82BD8](v360);
              }

              MEMORY[0x277D82BD8](v62);
              MEMORY[0x277D82BD8](v63);
              MEMORY[0x277D82BD8](v66);
              MEMORY[0x277D82BD8](v68);
              MEMORY[0x277D82BD8](v72);
              MEMORY[0x277D82BD8](v75);
              MEMORY[0x277D82BD8](v77);
              MEMORY[0x277D82BD8](v81);
              MEMORY[0x277D82BD8](v85);
              MEMORY[0x277D82BD8](v89);
              if (v367)
              {
                MEMORY[0x277D82BD8](v368);
              }

              if (v369)
              {
                MEMORY[0x277D82BD8](v370);
              }

              if (v371)
              {
                MEMORY[0x277D82BD8](v372);
              }

              MEMORY[0x277D82BD8](v97);
              MEMORY[0x277D82BD8](v98);
              MEMORY[0x277D82BD8](v100);
              MEMORY[0x277D82BD8](v102);
              MEMORY[0x277D82BD8](v104);
              if (v373)
              {
                MEMORY[0x277D82BD8](v374);
              }

              if (v375)
              {
                MEMORY[0x277D82BD8](v376);
              }

              MEMORY[0x277D82BD8](v112);
              MEMORY[0x277D82BD8](v114);
              MEMORY[0x277D82BD8](v117);
              objc_storeStrong(&v358, 0);
              objc_storeStrong(&v361, 0);
              objc_storeStrong(&v362, 0);
              objc_storeStrong(&v363, 0);
              objc_storeStrong(&v364, 0);
              objc_storeStrong(&v365, 0);
              objc_storeStrong(&v366, 0);
              objc_storeStrong(&v377, 0);
              objc_storeStrong(&v378, 0);
            }

            objc_storeStrong(&v380, 0);
            v44 = &v351;
            v351 = MEMORY[0x277D85DD0];
            v352 = -1073741824;
            v353 = 0;
            v354 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_398;
            v355 = &unk_279CC6480;
            v41 = v356;
            v356[0] = MEMORY[0x277D82BE0](v468[0]);
            v42 = (v44 + 5);
            v356[1] = MEMORY[0x277D82BE0](v383);
            v356[3] = &v452;
            v43 = (v44 + 6);
            v356[2] = MEMORY[0x277D82BE0](*(v339 + 40));
            v45 = MEMORY[0x26D66ADC0](v44);
            v357 = v45;
            v40 = [MEMORY[0x277D643F8] sharedCore];
            v38 = v40;
            v39 = [v38 selectDelegateCallbackQueue:v444];
            v36 = v39;
            v343 = MEMORY[0x277D85DD0];
            v344 = -1073741824;
            v345 = 0;
            v346 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_2;
            v347 = &unk_279CC64A8;
            v37 = v350;
            objc_copyWeak(v350, (v339 + 48));
            v34 = &v343;
            v350[2] = *(v339 + 56);
            v33 = v349;
            v349[0] = MEMORY[0x277D82BE0](*(v339 + 40));
            v35 = v34 + 9;
            objc_copyWeak(v34 + 9, &from);
            v32 = &v343;
            v29 = v348;
            v348[0] = MEMORY[0x277D82BE0](v443);
            v30 = (v32 + 40);
            v348[1] = MEMORY[0x277D82BE0](v383);
            v31 = (v32 + 56);
            v349[1] = MEMORY[0x277D82BE0](v357);
            dispatch_async(v36, v32);
            MEMORY[0x277D82BD8](v36);
            MEMORY[0x277D82BD8](v38);
            objc_storeStrong(v31, 0);
            objc_storeStrong(v30, 0);
            objc_storeStrong(v29, 0);
            objc_destroyWeak(v35);
            objc_storeStrong(v33, 0);
            objc_destroyWeak(v37);
            objc_storeStrong(&v357, 0);
            objc_storeStrong(v43, 0);
            objc_storeStrong(v42, 0);
            objc_storeStrong(v41, 0);
            v457 = 0;
          }

          else
          {
            [v468[0] doEnrollInBetaUpdatesProgram:v383 activity:v453 + 3 completionHandler:*(v339 + 40)];
            v457 = 1;
          }

          objc_storeStrong(&v383, 0);
        }

        else
        {
          v219 = +[SUUILoggingContext statefulUILogger];
          v217 = v219;
          v218 = [v217 oslog];
          v412 = v218;
          MEMORY[0x277D82BD8](v217);
          v411 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
          {
            v213 = v412;
            *v214 = v411;
            v215 = v468[0];
            v216 = objc_opt_class();
            v212 = NSStringFromClass(v216);
            v209 = v212;
            v210 = MEMORY[0x277D82BE0](v209);
            v410 = v210;
            v211 = SUUIStatefulUIStateToString(*(v468[0] + 5));
            v206 = v211;
            v207 = MEMORY[0x277D82BE0](v206);
            v409 = v207;
            v208 = [v468[0] currentState];
            v407 = 0;
            v405 = 0;
            v205 = [v468[0] delegate];
            v204 = v205;
            if (v204)
            {
              v203 = [v468[0] delegate];
              v408 = v203;
              v407 = 1;
              v202 = objc_opt_class();
              v201 = NSStringFromClass(v202);
              v406 = v201;
              v405 = 1;
              v200 = v406;
            }

            else
            {
              v200 = @"(null)";
            }

            v198 = v200;
            v199 = [v468[0] delegate];
            v196 = v199;
            v197 = [v468[0] scanError];
            v194 = v197;
            v195 = [v468[0] preferredStatefulDescriptor];
            v192 = v195;
            v193 = [v468[0] alternateStatefulDescriptor];
            v190 = v193;
            v403 = 0;
            v401 = 0;
            v399 = 0;
            v191 = [v468[0] currentDownload];
            v189 = v191;
            if (v189)
            {
              v188 = [v468[0] currentDownload];
              v404 = v188;
              v403 = 1;
              v187 = [v404 descriptor];
              v402 = v187;
              v401 = 1;
              v186 = [v402 updateName];
              v400 = v186;
              v399 = 1;
              v185 = v400;
            }

            else
            {
              v185 = @"(null)";
            }

            v183 = v185;
            v184 = [v468[0] currentDownload];
            v181 = v184;
            v182 = [v468[0] currentUpdateOperationType];
            v180 = SUUIUpdateContinuousOperationTypeToString(v182);
            v177 = v180;
            v178 = MEMORY[0x277D82BE0](v177);
            v398 = v178;
            v179 = [v468[0] isTargetedUpdateScheduledForAutoInstall];
            v476 = v179;
            if (v179)
            {
              v10 = @"YES";
            }

            else
            {
              v10 = @"NO";
            }

            v176 = v10;
            v11 = v10;
            v173 = v176;
            v174 = MEMORY[0x277D82BE0](v173);
            v397 = v174;
            v175 = [v468[0] hidingPreferredDescriptor];
            v475 = v175;
            if (v175)
            {
              v12 = @"YES";
            }

            else
            {
              v12 = @"NO";
            }

            v172 = v12;
            v13 = v12;
            v169 = v172;
            v170 = MEMORY[0x277D82BE0](v169);
            v396 = v170;
            v171 = [v468[0] hiddenPreferredStatefulDescriptor];
            v167 = v171;
            v168 = [v167 updateName];
            v164 = v168;
            v165 = MEMORY[0x277D82BE0](v164);
            v395 = v165;
            v166 = [v468[0] hidingAlternateDescriptor];
            v474 = v166;
            if (v166)
            {
              v14 = @"YES";
            }

            else
            {
              v14 = @"NO";
            }

            v163 = v14;
            v15 = v14;
            v160 = v163;
            v161 = MEMORY[0x277D82BE0](v160);
            v394 = v161;
            v162 = [v468[0] hiddenAlternateStatefulDescriptor];
            v158 = v162;
            v159 = [v158 updateName];
            v155 = v159;
            v156 = MEMORY[0x277D82BE0](v155);
            v393 = v156;
            v391 = 0;
            v157 = [v468[0] enrolledBetaProgram];
            v154 = v157;
            if (v154)
            {
              v153 = [v468[0] enrolledBetaProgram];
              v392 = v153;
              v391 = 1;
              v152 = [v392 programID];
              v151 = v152;
            }

            else
            {
              v151 = 0;
            }

            v149 = v151;
            v150 = [*(v468[0] + 15) count];
            v148 = [v468[0] canEnrollInBetaUpdates];
            v473 = v148;
            if (v148)
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            v147 = v16;
            v17 = v16;
            v141 = v147;
            v142 = MEMORY[0x277D82BE0](v141);
            v390 = v142;
            v143 = *(v468[0] + 21);
            v144 = *(v468[0] + 22);
            v145 = *(v468[0] + 23);
            v146 = [*(v468[0] + 24) count];
            v140 = [*(v339 + 32) programID];
            v18 = *(v339 + 32);
            v138 = &v28;
            v139 = v482;
            __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v482, v341, v215, v210, v207, v208, v198, v196, v194, v192, v190, v183, v181, v178, v174, v170, v165, v161, v156, v149, v150, v142, v143, v144, v145, v146, v140, v18);
            _os_log_impl(&dword_26ADE5000, v213, v214[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not register to the beta progra %ld (%p) as no beta programs have been discovered by the Stateful UI. Attempts to perform a full re-scan.", v139, 0x110u);
            MEMORY[0x277D82BD8](v141);
            if (v391)
            {
              MEMORY[0x277D82BD8](v392);
            }

            MEMORY[0x277D82BD8](v154);
            MEMORY[0x277D82BD8](v155);
            MEMORY[0x277D82BD8](v158);
            MEMORY[0x277D82BD8](v160);
            MEMORY[0x277D82BD8](v164);
            MEMORY[0x277D82BD8](v167);
            MEMORY[0x277D82BD8](v169);
            MEMORY[0x277D82BD8](v173);
            MEMORY[0x277D82BD8](v177);
            MEMORY[0x277D82BD8](v181);
            if (v399)
            {
              MEMORY[0x277D82BD8](v400);
            }

            if (v401)
            {
              MEMORY[0x277D82BD8](v402);
            }

            if (v403)
            {
              MEMORY[0x277D82BD8](v404);
            }

            MEMORY[0x277D82BD8](v189);
            MEMORY[0x277D82BD8](v190);
            MEMORY[0x277D82BD8](v192);
            MEMORY[0x277D82BD8](v194);
            MEMORY[0x277D82BD8](v196);
            if (v405)
            {
              MEMORY[0x277D82BD8](v406);
            }

            if (v407)
            {
              MEMORY[0x277D82BD8](v408);
            }

            MEMORY[0x277D82BD8](v204);
            MEMORY[0x277D82BD8](v206);
            MEMORY[0x277D82BD8](v209);
            objc_storeStrong(&v390, 0);
            objc_storeStrong(&v393, 0);
            objc_storeStrong(&v394, 0);
            objc_storeStrong(&v395, 0);
            objc_storeStrong(&v396, 0);
            objc_storeStrong(&v397, 0);
            objc_storeStrong(&v398, 0);
            objc_storeStrong(&v409, 0);
            objc_storeStrong(&v410, 0);
          }

          objc_storeStrong(&v412, 0);
          if (v453[3])
          {
            if (*(v453[3] + 24))
            {
              os_activity_scope_leave(v453[3]);
            }

            free(v453[3]);
            v453[3] = 0;
          }

          v137 = [MEMORY[0x277D643F8] sharedCore];
          v135 = v137;
          v136 = [v135 selectDelegateCallbackQueue:v444];
          v134 = v136;
          v133 = &v384;
          v384 = MEMORY[0x277D85DD0];
          v385 = -1073741824;
          v386 = 0;
          v387 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_397;
          v388 = &unk_279CC6458;
          v131 = v389;
          v389[0] = MEMORY[0x277D82BE0](v468[0]);
          v132 = (v133 + 40);
          v389[1] = MEMORY[0x277D82BE0](*(v339 + 40));
          dispatch_async(v134, v133);
          MEMORY[0x277D82BD8](v134);
          MEMORY[0x277D82BD8](v135);
          v457 = 1;
          objc_storeStrong(v132, 0);
          objc_storeStrong(v131, 0);
        }
      }

      else
      {
        v307 = +[SUUILoggingContext statefulUILogger];
        v305 = v307;
        v306 = [v305 oslog];
        v441 = v306;
        MEMORY[0x277D82BD8](v305);
        v440 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v441, OS_LOG_TYPE_DEFAULT))
        {
          v301 = v441;
          *v302 = v440;
          v303 = v468[0];
          aClass = objc_opt_class();
          v300 = NSStringFromClass(aClass);
          v297 = v300;
          v298 = MEMORY[0x277D82BE0](v297);
          v439 = v298;
          v299 = SUUIStatefulUIStateToString(*(v468[0] + 5));
          v294 = v299;
          v295 = MEMORY[0x277D82BE0](v294);
          v438 = v295;
          v296 = [v468[0] currentState];
          v436 = 0;
          v434 = 0;
          v293 = [v468[0] delegate];
          v292 = v293;
          if (v292)
          {
            v291 = [v468[0] delegate];
            v437 = v291;
            v436 = 1;
            v290 = objc_opt_class();
            v289 = NSStringFromClass(v290);
            v435 = v289;
            v434 = 1;
            v288 = v435;
          }

          else
          {
            v288 = @"(null)";
          }

          v286 = v288;
          v287 = [v468[0] delegate];
          v284 = v287;
          v285 = [v468[0] scanError];
          v282 = v285;
          v283 = [v468[0] preferredStatefulDescriptor];
          v280 = v283;
          v281 = [v468[0] alternateStatefulDescriptor];
          v278 = v281;
          v432 = 0;
          v430 = 0;
          v428 = 0;
          v279 = [v468[0] currentDownload];
          v277 = v279;
          if (v277)
          {
            v276 = [v468[0] currentDownload];
            v433 = v276;
            v432 = 1;
            v275 = [v433 descriptor];
            v431 = v275;
            v430 = 1;
            v274 = [v431 updateName];
            v429 = v274;
            v428 = 1;
            v273 = v429;
          }

          else
          {
            v273 = @"(null)";
          }

          v271 = v273;
          v272 = [v468[0] currentDownload];
          v269 = v272;
          v270 = [v468[0] currentUpdateOperationType];
          v268 = SUUIUpdateContinuousOperationTypeToString(v270);
          v265 = v268;
          v266 = MEMORY[0x277D82BE0](v265);
          v427 = v266;
          v267 = [v468[0] isTargetedUpdateScheduledForAutoInstall];
          v480 = v267;
          if (v267)
          {
            v2 = @"YES";
          }

          else
          {
            v2 = @"NO";
          }

          v264 = v2;
          v3 = v2;
          v261 = v264;
          v262 = MEMORY[0x277D82BE0](v261);
          v426 = v262;
          v263 = [v468[0] hidingPreferredDescriptor];
          v479 = v263;
          if (v263)
          {
            v4 = @"YES";
          }

          else
          {
            v4 = @"NO";
          }

          v260 = v4;
          v5 = v4;
          v257 = v260;
          v258 = MEMORY[0x277D82BE0](v257);
          v425 = v258;
          v259 = [v468[0] hiddenPreferredStatefulDescriptor];
          v255 = v259;
          v256 = [v255 updateName];
          v252 = v256;
          v253 = MEMORY[0x277D82BE0](v252);
          v424 = v253;
          v254 = [v468[0] hidingAlternateDescriptor];
          v478 = v254;
          if (v254)
          {
            v6 = @"YES";
          }

          else
          {
            v6 = @"NO";
          }

          v251 = v6;
          v7 = v6;
          v248 = v251;
          v249 = MEMORY[0x277D82BE0](v248);
          v423 = v249;
          v250 = [v468[0] hiddenAlternateStatefulDescriptor];
          v246 = v250;
          v247 = [v246 updateName];
          v243 = v247;
          v244 = MEMORY[0x277D82BE0](v243);
          v422 = v244;
          v420 = 0;
          v245 = [v468[0] enrolledBetaProgram];
          v242 = v245;
          if (v242)
          {
            v241 = [v468[0] enrolledBetaProgram];
            v421 = v241;
            v420 = 1;
            v240 = [v421 programID];
            v239 = v240;
          }

          else
          {
            v239 = 0;
          }

          v237 = v239;
          v238 = [*(v468[0] + 15) count];
          v236 = [v468[0] canEnrollInBetaUpdates];
          v477 = v236;
          if (v236)
          {
            v8 = @"YES";
          }

          else
          {
            v8 = @"NO";
          }

          v235 = v8;
          v9 = v8;
          v229 = v235;
          v230 = MEMORY[0x277D82BE0](v229);
          v419 = v230;
          v231 = *(v468[0] + 21);
          v232 = *(v468[0] + 22);
          v233 = *(v468[0] + 23);
          v234 = [*(v468[0] + 24) count];
          v227 = &v28;
          v228 = v483;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v483, v340, v303, v298, v295, v296, v286, v284, v282, v280, v278, v271, v269, v266, v262, v258, v253, v249, v244, v237, v238, v230, v231, v232, v233, v234);
          _os_log_impl(&dword_26ADE5000, v301, v302[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not enroll in beta updates as we have not discovered a seeding device.", v228, 0xFCu);
          MEMORY[0x277D82BD8](v229);
          if (v420)
          {
            MEMORY[0x277D82BD8](v421);
          }

          MEMORY[0x277D82BD8](v242);
          MEMORY[0x277D82BD8](v243);
          MEMORY[0x277D82BD8](v246);
          MEMORY[0x277D82BD8](v248);
          MEMORY[0x277D82BD8](v252);
          MEMORY[0x277D82BD8](v255);
          MEMORY[0x277D82BD8](v257);
          MEMORY[0x277D82BD8](v261);
          MEMORY[0x277D82BD8](v265);
          MEMORY[0x277D82BD8](v269);
          if (v428)
          {
            MEMORY[0x277D82BD8](v429);
          }

          if (v430)
          {
            MEMORY[0x277D82BD8](v431);
          }

          if (v432)
          {
            MEMORY[0x277D82BD8](v433);
          }

          MEMORY[0x277D82BD8](v277);
          MEMORY[0x277D82BD8](v278);
          MEMORY[0x277D82BD8](v280);
          MEMORY[0x277D82BD8](v282);
          MEMORY[0x277D82BD8](v284);
          if (v434)
          {
            MEMORY[0x277D82BD8](v435);
          }

          if (v436)
          {
            MEMORY[0x277D82BD8](v437);
          }

          MEMORY[0x277D82BD8](v292);
          MEMORY[0x277D82BD8](v294);
          MEMORY[0x277D82BD8](v297);
          objc_storeStrong(&v419, 0);
          objc_storeStrong(&v422, 0);
          objc_storeStrong(&v423, 0);
          objc_storeStrong(&v424, 0);
          objc_storeStrong(&v425, 0);
          objc_storeStrong(&v426, 0);
          objc_storeStrong(&v427, 0);
          objc_storeStrong(&v438, 0);
          objc_storeStrong(&v439, 0);
        }

        objc_storeStrong(&v441, 0);
        if (v453[3])
        {
          if (*(v453[3] + 24))
          {
            os_activity_scope_leave(v453[3]);
          }

          free(v453[3]);
          v453[3] = 0;
        }

        v226 = [MEMORY[0x277D643F8] sharedCore];
        v224 = v226;
        v225 = [v224 selectDelegateCallbackQueue:v444];
        v223 = v225;
        v222 = &v413;
        v413 = MEMORY[0x277D85DD0];
        v414 = -1073741824;
        v415 = 0;
        v416 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_395;
        v417 = &unk_279CC61E0;
        v221 = &v418;
        v418 = MEMORY[0x277D82BE0](*(v339 + 40));
        dispatch_async(v223, v222);
        MEMORY[0x277D82BD8](v223);
        MEMORY[0x277D82BD8](v224);
        v457 = 1;
        objc_storeStrong(v221, 0);
      }

      objc_destroyWeak(&from);
      objc_storeStrong(&v443, 0);
      objc_storeStrong(&v444, 0);
      objc_storeStrong(v445, 0);
      _Block_object_dispose(&v452, 8);
    }

    else
    {
      v323 = *(v339 + 40);
      v324 = v323 + 16;
      v325 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:0];
      v322 = v325;
      (*(v323 + 16))(v323, 0);
      MEMORY[0x277D82BD8](v322);
      v457 = 1;
    }
  }

  objc_storeStrong(v468, 0);
  *MEMORY[0x277D85DE8];
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_391(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_395(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_397(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  [*(a1 + 32) checkForAvailableUpdates:1];
  location[0] = MEMORY[0x26D66ADC0](*(a1 + 40));
  v2 = 0;
  if (location[0])
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:?];
    v2 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v2)
  {
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 64));
  v12 = 0;
  if (!v28[0])
  {
    v11 = +[SUUILoggingContext softwareUpdateUILogger];
    v27 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v10 = NSStringFromSelector(*(a1 + 80));
      v25 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v30, "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke_2", v25);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v30, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v6 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v6;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_400;
    v22 = &unk_279CC61E0;
    v23 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    v17 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v15 = 0;
    v5 = 0;
    if (WeakRetained)
    {
      v16 = objc_loadWeakRetained((a1 + 72));
      v15 = 1;
      v5 = objc_opt_respondsToSelector();
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](WeakRetained);
    if (v5)
    {
      v3 = objc_loadWeakRetained((a1 + 72));
      [v3 statefulUIManager:v28[0] requestPurgeConfirmationOfActiveDownload:*(a1 + 32) toSwitchSelectedBetaProgram:*(a1 + 40) completionHandler:*(a1 + 56)];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      v2 = +[SUUILoggingContext statefulUILogger];
      oslog = [v2 oslog];
      MEMORY[0x277D82BD8](v2);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_0(v29, "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke_2", v28[0]);
        _os_log_error_impl(&dword_26ADE5000, oslog, OS_LOG_TYPE_ERROR, "%s [%p]: The Stateful UI delegate doesn't implement the purge confirmation dialog.Approving without user consent. This is not recommended.", v29, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      (*(*(a1 + 56) + 16))();
    }

    v17 = 0;
  }

  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_400(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)unenrollFromBetaUpdatesWithCompletion:(id)a3
{
  v14 = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  objc_initWeak(&v11, v14);
  queue = v14->_operationsQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke;
  v8 = &unk_279CC6548;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke(id *a1)
{
  v234 = a1;
  v235 = "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke";
  v236 = "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke_2";
  v349 = *MEMORY[0x277D85DE8];
  v337[2] = a1;
  v337[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v337[0] = WeakRetained;
  v233 = 0;
  if (!WeakRetained)
  {
    v232 = +[SUUILoggingContext softwareUpdateUILogger];
    v230 = v232;
    v231 = [v230 oslog];
    oslog = v231;
    MEMORY[0x277D82BD8](v230);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v228 = type;
      v229 = NSStringFromSelector(v234[6]);
      v226 = v229;
      location = MEMORY[0x277D82BE0](v226);
      buf = v348;
      __os_log_helper_16_2_2_8_32_8_66(v348, v235, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v348, 0x16u);
      MEMORY[0x277D82BD8](v226);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v333 = 1;
    v233 = 1;
  }

  if (v233)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v327;
    v327 = MEMORY[0x277D85DD0];
    v328 = -1073741824;
    v329 = 0;
    v330 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_403;
    v331 = &unk_279CC61E0;
    v222 = &v332;
    v332 = MEMORY[0x277D82BE0](v234[4]);
    dispatch_async(queue, &v327);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v332, 0);
    v326 = 1;
  }

  else
  {
    v221 = _os_feature_enabled_impl();
    if (v221)
    {
      v315 = 0;
      v316 = &v315;
      v317 = 0x20000000;
      v318 = 32;
      v319 = 0;
      v214 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
      v313 = v214;
      if (v214)
      {
        v312 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UnenrollFromBetaUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
        v2 = v313[1].opaque[0];
        v313[1].opaque[0] = v312;
        MEMORY[0x277D82BD8](v2);
      }

      else
      {
        v213 = +[SUUILoggingContext softwareUpdateUILogger];
        v211 = v213;
        v212 = [v211 oslog];
        v311 = v212;
        MEMORY[0x277D82BD8](v211);
        v310 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
        {
          v208 = v311;
          *v209 = v310;
          v210 = v309;
          __os_log_helper_16_0_0(v309);
          _os_log_error_impl(&dword_26ADE5000, v208, v209[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UnenrollFromBetaUpdates", v309, 2u);
        }

        objc_storeStrong(&v311, 0);
      }

      v308[2] = v313;
      state = v313;
      if (v313)
      {
        os_activity_scope_enter(state[1].opaque[0], state);
        LOBYTE(state[1].opaque[1]) = 1;
      }

      v308[1] = state;
      v316[3] = state;
      v207 = [v337[0] currentSeedingDevice];
      v308[0] = v207;
      v206 = [v337[0] delegateCallbackQueue];
      v307 = v206;
      v205 = [v337[0] currentDownload];
      v306 = v205;
      v204 = [v337[0] delegate];
      v203 = v204;
      objc_initWeak(&from, v203);
      MEMORY[0x277D82BD8](v203);
      if (v308[0])
      {
        if (v306)
        {
          v115 = +[SUUILoggingContext statefulUILogger];
          v113 = v115;
          v114 = [v113 oslog];
          v275 = v114;
          MEMORY[0x277D82BD8](v113);
          v274 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
          {
            v109 = v275;
            *v110 = v274;
            v111 = v337[0];
            v112 = objc_opt_class();
            v108 = NSStringFromClass(v112);
            v105 = v108;
            v106 = MEMORY[0x277D82BE0](v105);
            v273 = v106;
            v107 = SUUIStatefulUIStateToString(*(v337[0] + 5));
            v102 = v107;
            v103 = MEMORY[0x277D82BE0](v102);
            v272 = v103;
            v104 = [v337[0] currentState];
            v270 = 0;
            v268 = 0;
            v101 = [v337[0] delegate];
            v100 = v101;
            if (v100)
            {
              v99 = [v337[0] delegate];
              v271 = v99;
              v270 = 1;
              v98 = objc_opt_class();
              v97 = NSStringFromClass(v98);
              v269 = v97;
              v268 = 1;
              v96 = v269;
            }

            else
            {
              v96 = @"(null)";
            }

            v94 = v96;
            v95 = [v337[0] delegate];
            v92 = v95;
            v93 = [v337[0] scanError];
            v90 = v93;
            v91 = [v337[0] preferredStatefulDescriptor];
            v88 = v91;
            v89 = [v337[0] alternateStatefulDescriptor];
            v86 = v89;
            v266 = 0;
            v264 = 0;
            v262 = 0;
            v87 = [v337[0] currentDownload];
            v85 = v87;
            if (v85)
            {
              v84 = [v337[0] currentDownload];
              v267 = v84;
              v266 = 1;
              v83 = [v267 descriptor];
              v265 = v83;
              v264 = 1;
              v82 = [v265 updateName];
              v263 = v82;
              v262 = 1;
              v81 = v263;
            }

            else
            {
              v81 = @"(null)";
            }

            v79 = v81;
            v80 = [v337[0] currentDownload];
            v77 = v80;
            v78 = [v337[0] currentUpdateOperationType];
            v76 = SUUIUpdateContinuousOperationTypeToString(v78);
            v73 = v76;
            v74 = MEMORY[0x277D82BE0](v73);
            v261 = v74;
            v75 = [v337[0] isTargetedUpdateScheduledForAutoInstall];
            v341 = v75;
            if (v75)
            {
              v11 = @"YES";
            }

            else
            {
              v11 = @"NO";
            }

            v72 = v11;
            v12 = v11;
            v69 = v72;
            v70 = MEMORY[0x277D82BE0](v69);
            v260 = v70;
            v71 = [v337[0] hidingPreferredDescriptor];
            v340 = v71;
            if (v71)
            {
              v13 = @"YES";
            }

            else
            {
              v13 = @"NO";
            }

            v68 = v13;
            v14 = v13;
            v65 = v68;
            v66 = MEMORY[0x277D82BE0](v65);
            v259 = v66;
            v67 = [v337[0] hiddenPreferredStatefulDescriptor];
            v63 = v67;
            v64 = [v63 updateName];
            v60 = v64;
            v61 = MEMORY[0x277D82BE0](v60);
            v258 = v61;
            v62 = [v337[0] hidingAlternateDescriptor];
            v339 = v62;
            if (v62)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            v59 = v15;
            v16 = v15;
            v56 = v59;
            v57 = MEMORY[0x277D82BE0](v56);
            v257 = v57;
            v58 = [v337[0] hiddenAlternateStatefulDescriptor];
            v54 = v58;
            v55 = [v54 updateName];
            v51 = v55;
            v52 = MEMORY[0x277D82BE0](v51);
            v256 = v52;
            v254 = 0;
            v53 = [v337[0] enrolledBetaProgram];
            v50 = v53;
            if (v50)
            {
              v49 = [v337[0] enrolledBetaProgram];
              v255 = v49;
              v254 = 1;
              v48 = [v255 programID];
              v47 = v48;
            }

            else
            {
              v47 = 0;
            }

            v45 = v47;
            v46 = [*(v337[0] + 15) count];
            v44 = [v337[0] canEnrollInBetaUpdates];
            v338 = v44;
            if (v44)
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            v43 = v17;
            v18 = v17;
            v37 = v43;
            v38 = MEMORY[0x277D82BE0](v37);
            v253 = v38;
            v39 = *(v337[0] + 21);
            v40 = *(v337[0] + 22);
            v41 = *(v337[0] + 23);
            v42 = [*(v337[0] + 24) count];
            v35 = &v19;
            v36 = v346;
            __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v346, v236, v111, v106, v103, v104, v94, v92, v90, v88, v86, v79, v77, v74, v70, v66, v61, v57, v52, v45, v46, v38, v39, v40, v41, v42);
            _os_log_impl(&dword_26ADE5000, v109, v110[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA targeted update exists when attempting to unenroll from beta updates. Asking to purge the targeted update.", v36, 0xFCu);
            MEMORY[0x277D82BD8](v37);
            if (v254)
            {
              MEMORY[0x277D82BD8](v255);
            }

            MEMORY[0x277D82BD8](v50);
            MEMORY[0x277D82BD8](v51);
            MEMORY[0x277D82BD8](v54);
            MEMORY[0x277D82BD8](v56);
            MEMORY[0x277D82BD8](v60);
            MEMORY[0x277D82BD8](v63);
            MEMORY[0x277D82BD8](v65);
            MEMORY[0x277D82BD8](v69);
            MEMORY[0x277D82BD8](v73);
            MEMORY[0x277D82BD8](v77);
            if (v262)
            {
              MEMORY[0x277D82BD8](v263);
            }

            if (v264)
            {
              MEMORY[0x277D82BD8](v265);
            }

            if (v266)
            {
              MEMORY[0x277D82BD8](v267);
            }

            MEMORY[0x277D82BD8](v85);
            MEMORY[0x277D82BD8](v86);
            MEMORY[0x277D82BD8](v88);
            MEMORY[0x277D82BD8](v90);
            MEMORY[0x277D82BD8](v92);
            if (v268)
            {
              MEMORY[0x277D82BD8](v269);
            }

            if (v270)
            {
              MEMORY[0x277D82BD8](v271);
            }

            MEMORY[0x277D82BD8](v100);
            MEMORY[0x277D82BD8](v102);
            MEMORY[0x277D82BD8](v105);
            objc_storeStrong(&v253, 0);
            objc_storeStrong(&v256, 0);
            objc_storeStrong(&v257, 0);
            objc_storeStrong(&v258, 0);
            objc_storeStrong(&v259, 0);
            objc_storeStrong(&v260, 0);
            objc_storeStrong(&v261, 0);
            objc_storeStrong(&v272, 0);
            objc_storeStrong(&v273, 0);
          }

          objc_storeStrong(&v275, 0);
          v33 = &v246;
          v246 = MEMORY[0x277D85DD0];
          v247 = -1073741824;
          v248 = 0;
          v249 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_406;
          v250 = &unk_279CC64F8;
          v31 = v251;
          v251[0] = MEMORY[0x277D82BE0](v337[0]);
          v251[2] = &v315;
          v32 = (v33 + 5);
          v251[1] = MEMORY[0x277D82BE0](v234[4]);
          v34 = MEMORY[0x26D66ADC0](v33);
          v252 = v34;
          v30 = [MEMORY[0x277D643F8] sharedCore];
          v28 = v30;
          v29 = [v28 selectDelegateCallbackQueue:v307];
          v26 = v29;
          v238 = MEMORY[0x277D85DD0];
          v239 = -1073741824;
          v240 = 0;
          v241 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2_407;
          v242 = &unk_279CC6520;
          v27 = v245;
          objc_copyWeak(v245, v234 + 5);
          v24 = &v238;
          v245[2] = v234[6];
          v23 = v244;
          v244[0] = MEMORY[0x277D82BE0](v234[4]);
          v25 = v24 + 8;
          objc_copyWeak(v24 + 8, &from);
          v22 = &v238;
          v20 = &v243;
          v243 = MEMORY[0x277D82BE0](v306);
          v21 = (v22 + 48);
          v244[1] = MEMORY[0x277D82BE0](v252);
          dispatch_async(v26, v22);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v28);
          objc_storeStrong(v21, 0);
          objc_storeStrong(v20, 0);
          objc_destroyWeak(v25);
          objc_storeStrong(v23, 0);
          objc_destroyWeak(v27);
          objc_storeStrong(&v252, 0);
          objc_storeStrong(v32, 0);
          objc_storeStrong(v31, 0);
          v326 = 0;
        }

        else
        {
          [v337[0] doUnenrollFromBetaUpdates:v316 + 3 completionHandler:v234[4]];
          v326 = 1;
        }
      }

      else
      {
        v202 = +[SUUILoggingContext statefulUILogger];
        v200 = v202;
        v201 = [v200 oslog];
        v304 = v201;
        MEMORY[0x277D82BD8](v200);
        v303 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
        {
          v196 = v304;
          *v197 = v303;
          v198 = v337[0];
          aClass = objc_opt_class();
          v195 = NSStringFromClass(aClass);
          v192 = v195;
          v193 = MEMORY[0x277D82BE0](v192);
          v302 = v193;
          v194 = SUUIStatefulUIStateToString(*(v337[0] + 5));
          v189 = v194;
          v190 = MEMORY[0x277D82BE0](v189);
          v301 = v190;
          v191 = [v337[0] currentState];
          v299 = 0;
          v297 = 0;
          v188 = [v337[0] delegate];
          v187 = v188;
          if (v187)
          {
            v186 = [v337[0] delegate];
            v300 = v186;
            v299 = 1;
            v185 = objc_opt_class();
            v184 = NSStringFromClass(v185);
            v298 = v184;
            v297 = 1;
            v183 = v298;
          }

          else
          {
            v183 = @"(null)";
          }

          v181 = v183;
          v182 = [v337[0] delegate];
          v179 = v182;
          v180 = [v337[0] scanError];
          v177 = v180;
          v178 = [v337[0] preferredStatefulDescriptor];
          v175 = v178;
          v176 = [v337[0] alternateStatefulDescriptor];
          v173 = v176;
          v295 = 0;
          v293 = 0;
          v291 = 0;
          v174 = [v337[0] currentDownload];
          v172 = v174;
          if (v172)
          {
            v171 = [v337[0] currentDownload];
            v296 = v171;
            v295 = 1;
            v170 = [v296 descriptor];
            v294 = v170;
            v293 = 1;
            v169 = [v294 updateName];
            v292 = v169;
            v291 = 1;
            v168 = v292;
          }

          else
          {
            v168 = @"(null)";
          }

          v166 = v168;
          v167 = [v337[0] currentDownload];
          v164 = v167;
          v165 = [v337[0] currentUpdateOperationType];
          v163 = SUUIUpdateContinuousOperationTypeToString(v165);
          v160 = v163;
          v161 = MEMORY[0x277D82BE0](v160);
          v290 = v161;
          v162 = [v337[0] isTargetedUpdateScheduledForAutoInstall];
          v345 = v162;
          if (v162)
          {
            v3 = @"YES";
          }

          else
          {
            v3 = @"NO";
          }

          v159 = v3;
          v4 = v3;
          v156 = v159;
          v157 = MEMORY[0x277D82BE0](v156);
          v289 = v157;
          v158 = [v337[0] hidingPreferredDescriptor];
          v344 = v158;
          if (v158)
          {
            v5 = @"YES";
          }

          else
          {
            v5 = @"NO";
          }

          v155 = v5;
          v6 = v5;
          v152 = v155;
          v153 = MEMORY[0x277D82BE0](v152);
          v288 = v153;
          v154 = [v337[0] hiddenPreferredStatefulDescriptor];
          v150 = v154;
          v151 = [v150 updateName];
          v147 = v151;
          v148 = MEMORY[0x277D82BE0](v147);
          v287 = v148;
          v149 = [v337[0] hidingAlternateDescriptor];
          v343 = v149;
          if (v149)
          {
            v7 = @"YES";
          }

          else
          {
            v7 = @"NO";
          }

          v146 = v7;
          v8 = v7;
          v143 = v146;
          v144 = MEMORY[0x277D82BE0](v143);
          v286 = v144;
          v145 = [v337[0] hiddenAlternateStatefulDescriptor];
          v141 = v145;
          v142 = [v141 updateName];
          v138 = v142;
          v139 = MEMORY[0x277D82BE0](v138);
          v285 = v139;
          v283 = 0;
          v140 = [v337[0] enrolledBetaProgram];
          v137 = v140;
          if (v137)
          {
            v136 = [v337[0] enrolledBetaProgram];
            v284 = v136;
            v283 = 1;
            v135 = [v284 programID];
            v134 = v135;
          }

          else
          {
            v134 = 0;
          }

          v132 = v134;
          v133 = [*(v337[0] + 15) count];
          v131 = [v337[0] canEnrollInBetaUpdates];
          v342 = v131;
          if (v131)
          {
            v9 = @"YES";
          }

          else
          {
            v9 = @"NO";
          }

          v130 = v9;
          v10 = v9;
          v124 = v130;
          v125 = MEMORY[0x277D82BE0](v124);
          v282 = v125;
          v126 = *(v337[0] + 21);
          v127 = *(v337[0] + 22);
          v128 = *(v337[0] + 23);
          v129 = [*(v337[0] + 24) count];
          v122 = &v19;
          v123 = v347;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v347, v235, v198, v193, v190, v191, v181, v179, v177, v175, v173, v166, v164, v161, v157, v153, v148, v144, v139, v132, v133, v125, v126, v127, v128, v129);
          _os_log_impl(&dword_26ADE5000, v196, v197[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unenroll from beta updates as we have not discovered a seeding device.", v123, 0xFCu);
          MEMORY[0x277D82BD8](v124);
          if (v283)
          {
            MEMORY[0x277D82BD8](v284);
          }

          MEMORY[0x277D82BD8](v137);
          MEMORY[0x277D82BD8](v138);
          MEMORY[0x277D82BD8](v141);
          MEMORY[0x277D82BD8](v143);
          MEMORY[0x277D82BD8](v147);
          MEMORY[0x277D82BD8](v150);
          MEMORY[0x277D82BD8](v152);
          MEMORY[0x277D82BD8](v156);
          MEMORY[0x277D82BD8](v160);
          MEMORY[0x277D82BD8](v164);
          if (v291)
          {
            MEMORY[0x277D82BD8](v292);
          }

          if (v293)
          {
            MEMORY[0x277D82BD8](v294);
          }

          if (v295)
          {
            MEMORY[0x277D82BD8](v296);
          }

          MEMORY[0x277D82BD8](v172);
          MEMORY[0x277D82BD8](v173);
          MEMORY[0x277D82BD8](v175);
          MEMORY[0x277D82BD8](v177);
          MEMORY[0x277D82BD8](v179);
          if (v297)
          {
            MEMORY[0x277D82BD8](v298);
          }

          if (v299)
          {
            MEMORY[0x277D82BD8](v300);
          }

          MEMORY[0x277D82BD8](v187);
          MEMORY[0x277D82BD8](v189);
          MEMORY[0x277D82BD8](v192);
          objc_storeStrong(&v282, 0);
          objc_storeStrong(&v285, 0);
          objc_storeStrong(&v286, 0);
          objc_storeStrong(&v287, 0);
          objc_storeStrong(&v288, 0);
          objc_storeStrong(&v289, 0);
          objc_storeStrong(&v290, 0);
          objc_storeStrong(&v301, 0);
          objc_storeStrong(&v302, 0);
        }

        objc_storeStrong(&v304, 0);
        if (v316[3])
        {
          if (*(v316[3] + 24))
          {
            os_activity_scope_leave(v316[3]);
          }

          free(v316[3]);
          v316[3] = 0;
        }

        v121 = [MEMORY[0x277D643F8] sharedCore];
        v119 = v121;
        v120 = [v119 selectDelegateCallbackQueue:v307];
        v118 = v120;
        v117 = &v276;
        v276 = MEMORY[0x277D85DD0];
        v277 = -1073741824;
        v278 = 0;
        v279 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_404;
        v280 = &unk_279CC61E0;
        v116 = &v281;
        v281 = MEMORY[0x277D82BE0](v234[4]);
        dispatch_async(v118, v117);
        MEMORY[0x277D82BD8](v118);
        MEMORY[0x277D82BD8](v119);
        v326 = 1;
        objc_storeStrong(v116, 0);
      }

      objc_destroyWeak(&from);
      objc_storeStrong(&v306, 0);
      objc_storeStrong(&v307, 0);
      objc_storeStrong(v308, 0);
      _Block_object_dispose(&v315, 8);
    }

    else
    {
      v220 = [MEMORY[0x277D643F8] sharedCore];
      v218 = v220;
      v219 = [v218 selectDelegateCallbackQueue:*(v337[0] + 2)];
      v217 = v219;
      v216 = &v320;
      v320 = MEMORY[0x277D85DD0];
      v321 = -1073741824;
      v322 = 0;
      v323 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2;
      v324 = &unk_279CC61E0;
      v215 = &v325;
      v325 = MEMORY[0x277D82BE0](v234[4]);
      dispatch_async(v217, &v320);
      MEMORY[0x277D82BD8](v217);
      MEMORY[0x277D82BD8](v218);
      v326 = 1;
      objc_storeStrong(&v325, 0);
    }
  }

  objc_storeStrong(v337, 0);
  *MEMORY[0x277D85DE8];
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_403(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_404(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2_407(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 56));
  v12 = 0;
  if (!v28[0])
  {
    v11 = +[SUUILoggingContext softwareUpdateUILogger];
    v27 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v10 = NSStringFromSelector(*(a1 + 72));
      v25 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v30, "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke_2", v25);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v30, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v6 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v6;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_408;
    v22 = &unk_279CC61E0;
    v23 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    v17 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v15 = 0;
    v5 = 0;
    if (WeakRetained)
    {
      v16 = objc_loadWeakRetained((a1 + 64));
      v15 = 1;
      v5 = objc_opt_respondsToSelector();
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](WeakRetained);
    if (v5)
    {
      v3 = objc_loadWeakRetained((a1 + 64));
      [v3 statefulUIManager:v28[0] requestPurgeConfirmationOfActiveDownload:*(a1 + 32) toSwitchSelectedBetaProgram:0 completionHandler:*(a1 + 48)];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      v2 = +[SUUILoggingContext statefulUILogger];
      oslog = [v2 oslog];
      MEMORY[0x277D82BD8](v2);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_0(v29, "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke_2", v28[0]);
        _os_log_error_impl(&dword_26ADE5000, oslog, OS_LOG_TYPE_ERROR, "%s [%p]: The Stateful UI delegate doesn't implement the purge confirmation dialog.Approving without user consent. This is not recommended.", v29, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      (*(*(a1 + 48) + 16))();
    }

    v17 = 0;
  }

  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_408(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)refreshBetaUpdates:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUUIStatefulUIManager *)v4 refreshBetaUpdates:location[0] withRecheckForAvailableUpdates:1];
  objc_storeStrong(location, 0);
}

- (void)refreshBetaUpdates:(id)a3 withRecheckForAvailableUpdates:(BOOL)a4
{
  v18 = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v15 = a4;
  objc_initWeak(&v14, v18);
  queue = v18->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke;
  v10 = &unk_279CC6208;
  objc_copyWeak(v12, &v14);
  v12[1] = v17;
  v11 = MEMORY[0x277D82BE0](location);
  v13 = v15;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_destroyWeak(&v14);
  objc_storeStrong(&location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke(id *a1)
{
  v147 = &v167;
  v148 = a1;
  v149 = "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke";
  v150 = "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke_2";
  v228 = *MEMORY[0x277D85DE8];
  v219[2] = a1;
  v219[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v219[0] = WeakRetained;
  v146 = 0;
  if (!WeakRetained)
  {
    v145 = +[SUUILoggingContext softwareUpdateUILogger];
    v143 = v145;
    v144 = [v143 oslog];
    oslog = v144;
    MEMORY[0x277D82BD8](v143);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v141 = type;
      v142 = NSStringFromSelector(v148[6]);
      v139 = v142;
      location = MEMORY[0x277D82BE0](v139);
      buf = v227;
      __os_log_helper_16_2_2_8_32_8_66(v227, v149, location);
      _os_log_error_impl(&dword_26ADE5000, log, v141[0], "%s: Self is nil in %{public}@. Stopping.", v227, 0x16u);
      MEMORY[0x277D82BD8](v139);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v215 = 1;
    v146 = 1;
  }

  if (v146)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v209;
    v209 = MEMORY[0x277D85DD0];
    v210 = -1073741824;
    v211 = 0;
    v212 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_409;
    v213 = &unk_279CC61E0;
    v135 = &v214;
    v214 = MEMORY[0x277D82BE0](v148[4]);
    dispatch_async(queue, &v209);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v214, 0);
    v208 = 1;
  }

  else
  {
    v134 = [MEMORY[0x277CCAD78] UUID];
    v132 = v134;
    v133 = [v132 UUIDString];
    v207 = v133;
    MEMORY[0x277D82BD8](v132);
    v131 = +[SUUILoggingContext statefulUILogger];
    v129 = v131;
    v130 = [v129 oslog];
    v206 = v130;
    MEMORY[0x277D82BD8](v129);
    v205 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
    {
      v125 = v206;
      *v126 = v205;
      v127 = v219[0];
      aClass = objc_opt_class();
      v124 = NSStringFromClass(aClass);
      v121 = v124;
      v122 = MEMORY[0x277D82BE0](v121);
      v204 = v122;
      v123 = SUUIStatefulUIStateToString(*(v219[0] + 5));
      v118 = v123;
      v119 = MEMORY[0x277D82BE0](v118);
      v203 = v119;
      v120 = [v219[0] currentState];
      v117 = [v219[0] delegate];
      v116 = v117;
      v201 = 0;
      v199 = 0;
      if (v116)
      {
        v115 = [v219[0] delegate];
        v202 = v115;
        v201 = 1;
        v114 = objc_opt_class();
        v113 = NSStringFromClass(v114);
        v200 = v113;
        v199 = 1;
        v112 = v200;
      }

      else
      {
        v112 = @"(null)";
      }

      v110 = v112;
      v111 = [v219[0] delegate];
      v108 = v111;
      v109 = [v219[0] scanError];
      v106 = v109;
      v107 = [v219[0] preferredStatefulDescriptor];
      v104 = v107;
      v105 = [v219[0] alternateStatefulDescriptor];
      v102 = v105;
      v103 = [v219[0] currentDownload];
      v101 = v103;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      if (v101)
      {
        v100 = [v219[0] currentDownload];
        v198 = v100;
        v197 = 1;
        v99 = [v198 descriptor];
        v196 = v99;
        v195 = 1;
        v98 = [v196 updateName];
        v194 = v98;
        v193 = 1;
        v97 = v194;
      }

      else
      {
        v97 = @"(null)";
      }

      v95 = v97;
      v96 = [v219[0] currentDownload];
      v93 = v96;
      v94 = [v219[0] currentUpdateOperationType];
      v92 = SUUIUpdateContinuousOperationTypeToString(v94);
      v89 = v92;
      v90 = MEMORY[0x277D82BE0](v89);
      v192 = v90;
      v91 = [v219[0] isTargetedUpdateScheduledForAutoInstall];
      v223 = v91;
      if (v91)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      v88 = v2;
      v3 = v2;
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v191 = v86;
      v87 = [v219[0] hidingPreferredDescriptor];
      v222 = v87;
      if (v87)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v84 = v4;
      v5 = v4;
      v81 = v84;
      v82 = MEMORY[0x277D82BE0](v81);
      v190 = v82;
      v83 = [v219[0] hiddenPreferredStatefulDescriptor];
      v79 = v83;
      v80 = [v79 updateName];
      v76 = v80;
      v77 = MEMORY[0x277D82BE0](v76);
      v189 = v77;
      v78 = [v219[0] hidingAlternateDescriptor];
      v221 = v78;
      if (v78)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v75 = v6;
      v7 = v6;
      v72 = v75;
      v73 = MEMORY[0x277D82BE0](v72);
      v188 = v73;
      v74 = [v219[0] hiddenAlternateStatefulDescriptor];
      v70 = v74;
      v71 = [v70 updateName];
      v67 = v71;
      v68 = MEMORY[0x277D82BE0](v67);
      v187 = v68;
      v69 = [v219[0] enrolledBetaProgram];
      v66 = v69;
      v185 = 0;
      if (v66)
      {
        v65 = [v219[0] enrolledBetaProgram];
        v186 = v65;
        v185 = 1;
        v64 = [v186 programID];
        v63 = v64;
      }

      else
      {
        v63 = 0;
      }

      v61 = v63;
      v62 = [*(v219[0] + 15) count];
      v60 = [v219[0] canEnrollInBetaUpdates];
      v220 = v60;
      if (v60)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v59 = v8;
      v9 = v8;
      v53 = v59;
      v54 = MEMORY[0x277D82BE0](v53);
      v184 = v54;
      v55 = *(v219[0] + 21);
      v56 = *(v219[0] + 22);
      v57 = *(v219[0] + 23);
      v58 = [*(v219[0] + 24) count];
      v51 = v207;
      v52 = [v219[0] currentFullScanOperation];
      v49 = v52;
      v50 = [v219[0] currentRefreshScanOperation];
      v48 = v50;
      v46 = &v12;
      v47 = v226;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v226, v150, v127, v122, v119, v120, v110, v108, v106, v104, v102, v95, v93, v90, v86, v82, v77, v73, v68, v61, v62, v54, v55, v56, v57, v58, v51, v49, v48);
      _os_log_impl(&dword_26ADE5000, v125, v126[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a beta updates scan operation with operation ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v47, 0x11Au);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v53);
      if (v185)
      {
        MEMORY[0x277D82BD8](v186);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v93);
      if (v193)
      {
        MEMORY[0x277D82BD8](v194);
      }

      if (v195)
      {
        MEMORY[0x277D82BD8](v196);
      }

      if (v197)
      {
        MEMORY[0x277D82BD8](v198);
      }

      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v108);
      if (v199)
      {
        MEMORY[0x277D82BD8](v200);
      }

      if (v201)
      {
        MEMORY[0x277D82BD8](v202);
      }

      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v121);
      objc_storeStrong(&v184, 0);
      objc_storeStrong(&v187, 0);
      objc_storeStrong(&v188, 0);
      objc_storeStrong(&v189, 0);
      objc_storeStrong(&v190, 0);
      objc_storeStrong(&v191, 0);
      objc_storeStrong(&v192, 0);
      objc_storeStrong(&v203, 0);
      objc_storeStrong(&v204, 0);
    }

    objc_storeStrong(&v206, 0);
    v179 = 0;
    v180 = &v179;
    v181 = 0x20000000;
    v182 = 32;
    v183 = 0;
    v45 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v177 = v45;
    if (v45)
    {
      v176 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshBetaUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v10 = v177[1].opaque[0];
      v177[1].opaque[0] = v176;
      MEMORY[0x277D82BD8](v10);
    }

    else
    {
      v44 = +[SUUILoggingContext softwareUpdateUILogger];
      v42 = v44;
      v43 = [v42 oslog];
      v175 = v43;
      MEMORY[0x277D82BD8](v42);
      v174 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
      {
        v39 = v175;
        *v40 = v174;
        v41 = v173;
        __os_log_helper_16_0_0(v173);
        _os_log_error_impl(&dword_26ADE5000, v39, v40[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshBetaUpdates", v41, 2u);
      }

      objc_storeStrong(&v175, 0);
    }

    v172 = v177;
    state = v177;
    if (v177)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v171 = state;
    v180[3] = state;
    v169 = 0;
    v170 = 0;
    v167 = 0;
    v168 = 0;
    v38 = +[SUUILoggingContext statefulUILogger];
    v36 = v38;
    v37 = [v36 oslog];
    v33 = v37;
    v34 = _SUUISignpostCreate(v33);
    v35 = v11;
    v167 = v34;
    v168 = v11;
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v36);
    if (v167)
    {
      v32 = +[SUUILoggingContext statefulUILogger];
      v30 = v32;
      v31 = [v30 oslog];
      v166 = v31;
      MEMORY[0x277D82BD8](v30);
      v165 = 1;
      v164 = v167;
      if (v167 && v164 != -1 && os_signpost_enabled(v166))
      {
        v26 = v166;
        *v27 = v165;
        spid = v164;
        v29 = v225;
        __os_log_helper_16_2_1_8_66(v225, v207);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v26, v27[0], spid, "RefreshBetaUpdates", "Refreshing beta updates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v29, 0xCu);
      }

      objc_storeStrong(&v166, 0);
      v25 = +[SUUILoggingContext statefulUILogger];
      v23 = v25;
      v24 = [v23 oslog];
      v163 = v24;
      MEMORY[0x277D82BD8](v23);
      v162 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v163;
        *v21 = v162;
        v22 = v224;
        __os_log_helper_16_2_2_8_0_8_66(v224, v167, v207);
        _os_log_impl(&dword_26ADE5000, v20, v21[0], "BEGIN [%lld]: RefreshBetaUpdates Refreshing beta updates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v22, 0x16u);
      }

      objc_storeStrong(&v163, 0);
    }

    *(v147 + 1) = *v147;
    v19 = [v219[0] environment];
    v17 = v19;
    v18 = [v17 betaUpdatesOperationWithManager:v219[0] identifier:v207 completionQueue:*(v219[0] + 26)];
    v161 = v18;
    MEMORY[0x277D82BD8](v17);
    v15 = v161;
    v152 = MEMORY[0x277D85DD0];
    v153 = -1073741824;
    v154 = 0;
    v155 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_412;
    v156 = &unk_279CC65C0;
    v16 = v158;
    objc_copyWeak(v158, v148 + 5);
    v14 = &v152;
    v158[1] = v148[6];
    v13 = v157;
    v157[0] = MEMORY[0x277D82BE0](v148[4]);
    v160 = v148[7] & 1;
    v159 = *(v147 + 1);
    v157[1] = &v179;
    [v15 checkForAvailableBetaProgramsWithCompletionHandler:v14];
    objc_storeStrong(v13, 0);
    objc_destroyWeak(v16);
    objc_storeStrong(&v161, 0);
    _Block_object_dispose(&v179, 8);
    objc_storeStrong(&v207, 0);
    v208 = 0;
  }

  objc_storeStrong(v219, 0);
  *MEMORY[0x277D85DE8];
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_409(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_412(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v9 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v5 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v5;
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_413;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v4 = *(v36[0] + 26);
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2;
    v18 = &unk_279CC6598;
    objc_copyWeak(v22, (a1 + 48));
    v22[1] = *(a1 + 56);
    v21[0] = MEMORY[0x277D82BE0](*(a1 + 32));
    v19 = MEMORY[0x277D82BE0](v37);
    v20 = MEMORY[0x277D82BE0](location[0]);
    v24 = *(a1 + 80) & 1;
    v23 = *(a1 + 64);
    v21[1] = *(a1 + 40);
    dispatch_async(v4, &v14);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(v21, 0);
    objc_destroyWeak(v22);
    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_413(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2(id *a1)
{
  v180 = a1;
  v181 = "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke_2";
  v259 = *MEMORY[0x277D85DE8];
  v249[2] = a1;
  v249[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v249[0] = WeakRetained;
  v179 = 0;
  if (!WeakRetained)
  {
    v178 = +[SUUILoggingContext softwareUpdateUILogger];
    v176 = v178;
    v177 = [v176 oslog];
    oslog = v177;
    MEMORY[0x277D82BD8](v176);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v174 = type;
      v175 = NSStringFromSelector(v180[9]);
      v172 = v175;
      location = MEMORY[0x277D82BE0](v172);
      buf = v258;
      __os_log_helper_16_2_2_8_32_8_66(v258, v181, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v258, 0x16u);
      MEMORY[0x277D82BD8](v172);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v245 = 1;
    v179 = 1;
  }

  if (v179)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v239;
    v239 = MEMORY[0x277D85DD0];
    v240 = -1073741824;
    v241 = 0;
    v242 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_414;
    v243 = &unk_279CC61E0;
    v168 = &v244;
    v244 = MEMORY[0x277D82BE0](v180[6]);
    dispatch_async(queue, &v239);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v244, 0);
    v238 = 1;
  }

  else
  {
    v2 = v180[4];
    v235 = 0;
    v233 = 0;
    v167 = 1;
    if (!v2)
    {
      v166 = [v249[0] enrolledBetaProgram];
      v164 = v166;
      v236 = v164;
      v235 = 1;
      v165 = [v180[5] enrolledBetaProgram];
      v234 = v165;
      v233 = 1;
      v163 = [v164 isEqual:?];
      v167 = v163 ^ 1;
    }

    v162 = v167;
    if (v233)
    {
      MEMORY[0x277D82BD8](v234);
    }

    if (v235)
    {
      MEMORY[0x277D82BD8](v236);
    }

    v237 = v162 & 1;
    v161 = 0;
    if (v162)
    {
      v161 = *(v180 + 96);
    }

    v232 = v161 & 1;
    v160 = +[SUUILoggingContext statefulUILogger];
    v158 = v160;
    v159 = [v158 oslog];
    v231 = v159;
    MEMORY[0x277D82BD8](v158);
    v230 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
    {
      v154 = v231;
      *v155 = v230;
      v156 = v249[0];
      aClass = objc_opt_class();
      v153 = NSStringFromClass(aClass);
      v150 = v153;
      v151 = MEMORY[0x277D82BE0](v150);
      v229 = v151;
      v152 = SUUIStatefulUIStateToString(*(v249[0] + 5));
      v147 = v152;
      v148 = MEMORY[0x277D82BE0](v147);
      v228 = v148;
      v149 = [v249[0] currentState];
      v146 = [v249[0] delegate];
      v145 = v146;
      v226 = 0;
      v224 = 0;
      if (v145)
      {
        v144 = [v249[0] delegate];
        v227 = v144;
        v226 = 1;
        v143 = objc_opt_class();
        v142 = NSStringFromClass(v143);
        v225 = v142;
        v224 = 1;
        v141 = v225;
      }

      else
      {
        v141 = @"(null)";
      }

      v139 = v141;
      v140 = [v249[0] delegate];
      v137 = v140;
      v138 = [v249[0] scanError];
      v135 = v138;
      v136 = [v249[0] preferredStatefulDescriptor];
      v133 = v136;
      v134 = [v249[0] alternateStatefulDescriptor];
      v131 = v134;
      v132 = [v249[0] currentDownload];
      v130 = v132;
      v222 = 0;
      v220 = 0;
      v218 = 0;
      if (v130)
      {
        v129 = [v249[0] currentDownload];
        v223 = v129;
        v222 = 1;
        v128 = [v223 descriptor];
        v221 = v128;
        v220 = 1;
        v127 = [v221 updateName];
        v219 = v127;
        v218 = 1;
        v126 = v219;
      }

      else
      {
        v126 = @"(null)";
      }

      v124 = v126;
      v125 = [v249[0] currentDownload];
      v122 = v125;
      v123 = [v249[0] currentUpdateOperationType];
      v121 = SUUIUpdateContinuousOperationTypeToString(v123);
      v118 = v121;
      v119 = MEMORY[0x277D82BE0](v118);
      v217 = v119;
      v120 = [v249[0] isTargetedUpdateScheduledForAutoInstall];
      v254 = v120;
      if (v120)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v117 = v3;
      v4 = v3;
      v114 = v117;
      v115 = MEMORY[0x277D82BE0](v114);
      v216 = v115;
      v116 = [v249[0] hidingPreferredDescriptor];
      v253 = v116;
      if (v116)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v113 = v5;
      v6 = v5;
      v110 = v113;
      v111 = MEMORY[0x277D82BE0](v110);
      v215 = v111;
      v112 = [v249[0] hiddenPreferredStatefulDescriptor];
      v108 = v112;
      v109 = [v108 updateName];
      v105 = v109;
      v106 = MEMORY[0x277D82BE0](v105);
      v214 = v106;
      v107 = [v249[0] hidingAlternateDescriptor];
      v252 = v107;
      if (v107)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v104 = v7;
      v8 = v7;
      v101 = v104;
      v102 = MEMORY[0x277D82BE0](v101);
      v213 = v102;
      v103 = [v249[0] hiddenAlternateStatefulDescriptor];
      v99 = v103;
      v100 = [v99 updateName];
      v96 = v100;
      v97 = MEMORY[0x277D82BE0](v96);
      v212 = v97;
      v98 = [v249[0] enrolledBetaProgram];
      v95 = v98;
      v210 = 0;
      if (v95)
      {
        v94 = [v249[0] enrolledBetaProgram];
        v211 = v94;
        v210 = 1;
        v93 = [v211 programID];
        v92 = v93;
      }

      else
      {
        v92 = 0;
      }

      v90 = v92;
      v91 = [*(v249[0] + 15) count];
      v89 = [v249[0] canEnrollInBetaUpdates];
      v251 = v89;
      if (v89)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v88 = v9;
      v10 = v9;
      v82 = v88;
      v83 = MEMORY[0x277D82BE0](v82);
      v209 = v83;
      v84 = *(v249[0] + 21);
      v85 = *(v249[0] + 22);
      v86 = *(v249[0] + 23);
      v87 = [*(v249[0] + 24) count];
      v81 = [v180[5] identifier];
      v78 = v81;
      v79 = v180[4];
      v80 = [v249[0] enrolledBetaProgram];
      v77 = v80;
      v207 = 0;
      if (v77)
      {
        v76 = [v249[0] enrolledBetaProgram];
        v208 = v76;
        v207 = 1;
        v75 = [v208 programID];
        v74 = v75;
      }

      else
      {
        v74 = -1;
      }

      v72 = v74;
      v73 = [v180[5] enrolledBetaProgram];
      v71 = v73;
      v205 = 0;
      if (v71)
      {
        v70 = [v180[5] enrolledBetaProgram];
        v206 = v70;
        v205 = 1;
        v69 = [v206 programID];
        v68 = v69;
      }

      else
      {
        v68 = -1;
      }

      v66 = v68;
      v250 = v232 & 1;
      if (v232)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v67 = v11;
      v12 = v11;
      v65 = v67;
      v204 = MEMORY[0x277D82BE0](v65);
      v13 = v180[5];
      v63 = &v14;
      v64 = v257;
      __os_log_helper_16_2_31_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_2_8_2_8_66_8_66(v257, v181, v156, v151, v148, v149, v139, v137, v135, v133, v131, v124, v122, v119, v115, v111, v106, v102, v97, v90, v91, v83, v84, v85, v86, v87, v78, v79, v72, v66, v204, v13);
      _os_log_impl(&dword_26ADE5000, v154, v155[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a beta updates scan with ID: %{public}@.\nResults: %{public}@\nCurrent: %{public}zd; Discovered: %{public}zd\nTrigger: %{public}@\nError: %{public}@", v64, 0x138u);
      MEMORY[0x277D82BD8](v65);
      if (v205)
      {
        MEMORY[0x277D82BD8](v206);
      }

      MEMORY[0x277D82BD8](v71);
      if (v207)
      {
        MEMORY[0x277D82BD8](v208);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v82);
      if (v210)
      {
        MEMORY[0x277D82BD8](v211);
      }

      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v122);
      if (v218)
      {
        MEMORY[0x277D82BD8](v219);
      }

      if (v220)
      {
        MEMORY[0x277D82BD8](v221);
      }

      if (v222)
      {
        MEMORY[0x277D82BD8](v223);
      }

      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v133);
      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v137);
      if (v224)
      {
        MEMORY[0x277D82BD8](v225);
      }

      if (v226)
      {
        MEMORY[0x277D82BD8](v227);
      }

      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v150);
      objc_storeStrong(&v204, 0);
      objc_storeStrong(&v209, 0);
      objc_storeStrong(&v212, 0);
      objc_storeStrong(&v213, 0);
      objc_storeStrong(&v214, 0);
      objc_storeStrong(&v215, 0);
      objc_storeStrong(&v216, 0);
      objc_storeStrong(&v217, 0);
      objc_storeStrong(&v228, 0);
      objc_storeStrong(&v229, 0);
    }

    objc_storeStrong(&v231, 0);
    if (v180[4])
    {
      [v249[0] setCurrentSeedingDevice:0];
      [v249[0] setBetaPrograms:0];
      [v249[0] setEnrolledBetaProgram:0];
    }

    else
    {
      v62 = [v180[5] currentSeedingDevice];
      v61 = v62;
      [v249[0] setCurrentSeedingDevice:?];
      MEMORY[0x277D82BD8](v61);
      v60 = [v180[5] betaPrograms];
      v59 = v60;
      [v249[0] setBetaPrograms:?];
      MEMORY[0x277D82BD8](v59);
      v58 = [v180[5] enrolledBetaProgram];
      v57 = v58;
      [v249[0] setEnrolledBetaProgram:?];
      MEMORY[0x277D82BD8](v57);
      v56 = [v249[0] getEnrollInBetaUpdatesStatus];
      [v249[0] setCanEnrollInBetaUpdates:v56];
    }

    if (v180[10])
    {
      Nanoseconds = _SUUISignpostGetNanoseconds(v180[10], v180[11]);
      v203 = Nanoseconds / 1000000000.0;
      v54 = +[SUUILoggingContext statefulUILogger];
      v52 = v54;
      v53 = [v52 oslog];
      v202 = v53;
      MEMORY[0x277D82BD8](v52);
      v201 = 2;
      v200 = v180[10];
      if (v200 && v200 != -1 && os_signpost_enabled(v202))
      {
        v49 = v202;
        *v50 = v201;
        spid = v200;
        if (v180[4])
        {
          v48 = [v180[4] code];
          v47 = v48;
        }

        else
        {
          v47 = 0;
        }

        v45 = v47;
        v46 = [v180[5] betaPrograms];
        v43 = v46;
        v44 = [v43 count];
        v42 = v256;
        __os_log_helper_16_0_2_4_2_4_2(v256, v45, v44);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v49, v50[0], spid, "RefreshBetaUpdates", "Finished to refresh the beta updates programs  Error=%{public,signpost.telemetry:number1,name=Error}d  BetaPrograms=%{public,signpost.telemetry:number2,name=BetaPrograms}d ", v42, 0xEu);
        MEMORY[0x277D82BD8](v43);
      }

      objc_storeStrong(&v202, 0);
      v41 = +[SUUILoggingContext statefulUILogger];
      v39 = v41;
      v40 = [v39 oslog];
      v199 = v40;
      MEMORY[0x277D82BD8](v39);
      v198 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v199;
        *v36 = v198;
        v37 = v180[10];
        v38 = *&v203;
        if (v180[4])
        {
          v34 = [v180[4] code];
          v33 = v34;
        }

        else
        {
          v33 = 0;
        }

        v31 = v33;
        v32 = [v180[5] betaPrograms];
        v29 = v32;
        v30 = [v29 count];
        v28 = v255;
        __os_log_helper_16_0_4_8_0_8_0_4_2_4_2(v255, v37, v38, v31, v30);
        _os_log_impl(&dword_26ADE5000, v35, v36[0], "END [%lld] %fs: RefreshBetaUpdates Finished to refresh the beta updates programs  Error=%{public,signpost.telemetry:number1,name=Error}d  BetaPrograms=%{public,signpost.telemetry:number2,name=BetaPrograms}d ", v28, 0x22u);
        MEMORY[0x277D82BD8](v29);
      }

      objc_storeStrong(&v199, 0);
    }

    if (*(*(v180[7] + 1) + 24))
    {
      if (*(*(*(v180[7] + 1) + 24) + 24))
      {
        os_activity_scope_leave(*(*(v180[7] + 1) + 24));
      }

      free(*(*(v180[7] + 1) + 24));
      *(*(v180[7] + 1) + 24) = 0;
    }

    v25 = v249[0];
    v26 = sel_statefulUIManagerDidRefreshBetaUpdates_;
    v191 = MEMORY[0x277D85DD0];
    v192 = -1073741824;
    v193 = 0;
    v194 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_417;
    v195 = &unk_279CC6548;
    v27 = v197;
    objc_copyWeak(v197, v180 + 8);
    v24 = &v191;
    v197[1] = v180[9];
    v23 = &v196;
    v196 = MEMORY[0x277D82BE0](v180[6]);
    [v25 executeOperationOnDelegate:v26 usingBlock:v24];
    v22 = [MEMORY[0x277D643F8] sharedCore];
    v20 = v22;
    v21 = [v20 selectDelegateCallbackQueue:*(v249[0] + 2)];
    v19 = v21;
    v18 = &v183;
    v183 = MEMORY[0x277D85DD0];
    v184 = -1073741824;
    v185 = 0;
    v186 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2_419;
    v187 = &unk_279CC6570;
    v15 = &v190;
    v190 = MEMORY[0x277D82BE0](v180[6]);
    v16 = (v18 + 32);
    v188 = MEMORY[0x277D82BE0](v180[5]);
    v17 = (v18 + 40);
    v189 = MEMORY[0x277D82BE0](v180[4]);
    dispatch_async(v19, v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    if (v232)
    {
      [v249[0] checkForAvailableUpdates:1];
    }

    objc_storeStrong(v17, 0);
    objc_storeStrong(v16, 0);
    objc_storeStrong(v15, 0);
    objc_storeStrong(v23, 0);
    objc_destroyWeak(v27);
    v238 = 0;
  }

  objc_storeStrong(v249, 0);
  *MEMORY[0x277D85DE8];
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_414(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_417(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  if (!v21[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v7 = NSStringFromSelector(*(a1 + 48));
      v18 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v3 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v3;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_418;
    v15 = &unk_279CC61E0;
    v16 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v2 = [v21[0] delegate];
    [v2 statefulUIManagerDidRefreshBetaUpdates:v21[0]];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_418(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2_419(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isDelayingUpdate
{
  v6 = 0;
  v4 = 0;
  v3 = 1;
  if (!self->_delayingUpdate)
  {
    v7 = [(SUUIStatefulUIManager *)self scanError];
    v6 = 1;
    v5 = [(SUUIStatefulError *)v7 traits];
    v4 = 1;
    v3 = [(SUUIErrorTraits *)v5 isDelayingUpdate];
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  return v3 & 1;
}

- (id)currentInstalledNeRDInfo
{
  v109 = "[SUUIStatefulUIManager currentInstalledNeRDInfo]";
  v149 = *MEMORY[0x277D85DE8];
  v143 = self;
  v142[1] = a2;
  v110 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  v140 = v110;
  if (v110)
  {
    v139 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.NeRDInfo", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v2 = v140[1].opaque[0];
    v140[1].opaque[0] = v139;
    MEMORY[0x277D82BD8](v2);
  }

  else
  {
    v108 = +[SUUILoggingContext softwareUpdateUILogger];
    v106 = v108;
    v107 = [v106 oslog];
    oslog = v107;
    MEMORY[0x277D82BD8](v106);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v104 = type;
      buf = v136;
      __os_log_helper_16_0_0(v136);
      _os_log_error_impl(&dword_26ADE5000, log, v104[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.NeRDInfo", v136, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v135[2] = v140;
  state = v140;
  if (v140)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v135[1] = state;
  v142[0] = state;
  v102 = [MEMORY[0x277CCAD78] UUID];
  v100 = v102;
  v101 = [v100 UUIDString];
  v135[0] = v101;
  MEMORY[0x277D82BD8](v100);
  v99 = +[SUUILoggingContext statefulUILogger];
  v97 = v99;
  v98 = [v97 oslog];
  v134 = v98;
  MEMORY[0x277D82BD8](v97);
  v133 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
  {
    v93 = v134;
    *v94 = v133;
    v95 = v143;
    aClass = objc_opt_class();
    v92 = NSStringFromClass(aClass);
    v89 = v92;
    v90 = MEMORY[0x277D82BE0](v89);
    v132 = v90;
    v91 = SUUIStatefulUIStateToString(v143->_currentState);
    v86 = v91;
    v87 = MEMORY[0x277D82BE0](v86);
    v131 = v87;
    v88 = [(SUUIStatefulUIManager *)v143 currentState];
    v129 = 0;
    v127 = 0;
    v85 = [(SUUIStatefulUIManager *)v143 delegate];
    v84 = v85;
    if (v84)
    {
      v83 = [(SUUIStatefulUIManager *)v143 delegate];
      v130 = v83;
      v129 = 1;
      v82 = objc_opt_class();
      v81 = NSStringFromClass(v82);
      v128 = v81;
      v127 = 1;
      v80 = v128;
    }

    else
    {
      v80 = @"(null)";
    }

    v78 = v80;
    v79 = [(SUUIStatefulUIManager *)v143 delegate];
    v76 = v79;
    v77 = [(SUUIStatefulUIManager *)v143 scanError];
    v74 = v77;
    v75 = [(SUUIStatefulUIManager *)v143 preferredStatefulDescriptor];
    v72 = v75;
    v73 = [(SUUIStatefulUIManager *)v143 alternateStatefulDescriptor];
    v70 = v73;
    v125 = 0;
    v123 = 0;
    v121 = 0;
    v71 = [(SUUIStatefulUIManager *)v143 currentDownload];
    v69 = v71;
    if (v69)
    {
      v68 = [(SUUIStatefulUIManager *)v143 currentDownload];
      v126 = v68;
      v125 = 1;
      v67 = [v126 descriptor];
      v124 = v67;
      v123 = 1;
      v66 = [v124 updateName];
      v122 = v66;
      v121 = 1;
      v65 = v122;
    }

    else
    {
      v65 = @"(null)";
    }

    v63 = v65;
    v64 = [(SUUIStatefulUIManager *)v143 currentDownload];
    v61 = v64;
    v62 = [(SUUIStatefulUIManager *)v143 currentUpdateOperationType];
    v60 = SUUIUpdateContinuousOperationTypeToString(v62);
    v57 = v60;
    v58 = MEMORY[0x277D82BE0](v57);
    v120 = v58;
    v59 = [(SUUIStatefulUIManager *)v143 isTargetedUpdateScheduledForAutoInstall];
    v147 = v59;
    if (v59)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v56 = v3;
    v4 = v3;
    v53 = v56;
    v54 = MEMORY[0x277D82BE0](v53);
    v119 = v54;
    v55 = [(SUUIStatefulUIManager *)v143 hidingPreferredDescriptor];
    v146 = v55;
    if (v55)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v52 = v5;
    v6 = v5;
    v49 = v52;
    v50 = MEMORY[0x277D82BE0](v49);
    v118 = v50;
    v51 = [(SUUIStatefulUIManager *)v143 hiddenPreferredStatefulDescriptor];
    v47 = v51;
    v48 = [v47 updateName];
    v44 = v48;
    v45 = MEMORY[0x277D82BE0](v44);
    v117 = v45;
    v46 = [(SUUIStatefulUIManager *)v143 hidingAlternateDescriptor];
    v145 = v46;
    if (v46)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v43 = v7;
    v8 = v7;
    v40 = v43;
    v41 = MEMORY[0x277D82BE0](v40);
    v116 = v41;
    v42 = [(SUUIStatefulUIManager *)v143 hiddenAlternateStatefulDescriptor];
    v38 = v42;
    v39 = [v38 updateName];
    v35 = v39;
    v36 = MEMORY[0x277D82BE0](v35);
    v115 = v36;
    v113 = 0;
    v37 = [(SUUIStatefulUIManager *)v143 enrolledBetaProgram];
    v34 = v37;
    if (v34)
    {
      v33 = [(SUUIStatefulUIManager *)v143 enrolledBetaProgram];
      v114 = v33;
      v113 = 1;
      v32 = [v114 programID];
      v31 = v32;
    }

    else
    {
      v31 = 0;
    }

    v29 = v31;
    v30 = [(NSArray *)v143->_betaPrograms count];
    v28 = [(SUUIStatefulUIManager *)v143 canEnrollInBetaUpdates];
    v144 = v28;
    if (v28)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v27 = v9;
    v10 = v9;
    v21 = v27;
    v22 = MEMORY[0x277D82BE0](v21);
    location = v22;
    currentFullScanOperation = v143->_currentFullScanOperation;
    currentRefreshScanOperation = v143->_currentRefreshScanOperation;
    currentUpdateOperation = v143->_currentUpdateOperation;
    v26 = [(NSMutableSet *)v143->_auxiliaryOperations count];
    v19 = &v13;
    v20 = v148;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v148, v109, v95, v90, v87, v88, v78, v76, v74, v72, v70, v63, v61, v58, v54, v50, v45, v41, v36, v29, v30, v22, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v26, v135[0]);
    _os_log_impl(&dword_26ADE5000, v93, v94[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a NeRD Info operation with ID: %{public}@ ", v20, 0x106u);
    MEMORY[0x277D82BD8](v21);
    if (v113)
    {
      MEMORY[0x277D82BD8](v114);
    }

    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v61);
    if (v121)
    {
      MEMORY[0x277D82BD8](v122);
    }

    if (v123)
    {
      MEMORY[0x277D82BD8](v124);
    }

    if (v125)
    {
      MEMORY[0x277D82BD8](v126);
    }

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v76);
    if (v127)
    {
      MEMORY[0x277D82BD8](v128);
    }

    if (v129)
    {
      MEMORY[0x277D82BD8](v130);
    }

    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v89);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v115, 0);
    objc_storeStrong(&v116, 0);
    objc_storeStrong(&v117, 0);
    objc_storeStrong(&v118, 0);
    objc_storeStrong(&v119, 0);
    objc_storeStrong(&v120, 0);
    objc_storeStrong(&v131, 0);
    objc_storeStrong(&v132, 0);
  }

  objc_storeStrong(&v134, 0);
  v18 = [(SUUIStatefulUIManager *)v143 environment];
  v16 = v18;
  v17 = [v16 nerdOperationWithManager:v143 identifier:v135[0] completionQueue:v143->_operationsQueue];
  v111 = v17;
  MEMORY[0x277D82BD8](v16);
  v15 = [v111 currentInstalledNeRDInfo];
  v14 = v15;
  objc_storeStrong(&v111, 0);
  objc_storeStrong(v135, 0);
  _SUUIActivityCleanup(v142);
  *MEMORY[0x277D85DE8];
  v11 = v14;

  return v11;
}

- (void)updateNeRDVersionWithOptions:(id)a3
{
  v25 = self;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v20 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v20)
  {
    v19 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNeRD", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v3 = v20[1].opaque[0];
    v20[1].opaque[0] = v19;
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v18 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNeRD", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
  }

  v15[2] = v20;
  v21 = v20;
  if (v20)
  {
    os_activity_scope_enter(v21[1].opaque[0], v21);
    LOBYTE(v21[1].opaque[1]) = 1;
  }

  v15[1] = v21;
  v22 = v21;
  objc_initWeak(v15, v25);
  queue = v25->_operationsQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __54__SUUIStatefulUIManager_updateNeRDVersionWithOptions___block_invoke;
  v12 = &unk_279CC6368;
  objc_copyWeak(v14, v15);
  v14[1] = v24;
  v13 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(v15);
  _SUUIActivityCleanup(&v22);
  objc_storeStrong(&location, 0);
}

void __54__SUUIStatefulUIManager_updateNeRDVersionWithOptions___block_invoke(id *a1)
{
  v81 = a1;
  v82 = "[SUUIStatefulUIManager updateNeRDVersionWithOptions:]_block_invoke";
  v120 = *MEMORY[0x277D85DE8];
  v113[2] = a1;
  v113[1] = a1;
  v113[0] = objc_loadWeakRetained(a1 + 5);
  v80 = 0;
  if (!v113[0])
  {
    v79 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v79 oslog];
    MEMORY[0x277D82BD8](v79);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v75 = type;
      v77 = NSStringFromSelector(v81[6]);
      location = &v110;
      v110 = MEMORY[0x277D82BE0](v77);
      buf = v119;
      __os_log_helper_16_2_2_8_32_8_66(v119, v82, v110);
      _os_log_error_impl(&dword_26ADE5000, log, v75[0], "%s: Self is nil in %{public}@. Stopping.", v119, 0x16u);
      MEMORY[0x277D82BD8](v77);
      objc_storeStrong(&v110, 0);
    }

    objc_storeStrong(&oslog, 0);
    v109 = 1;
    v80 = 1;
  }

  if (v80)
  {
    v108 = 1;
  }

  else
  {
    v73 = [MEMORY[0x277CCAD78] UUID];
    v107 = [v73 UUIDString];
    MEMORY[0x277D82BD8](v73);
    v72 = +[SUUILoggingContext statefulUILogger];
    v106 = [v72 oslog];
    MEMORY[0x277D82BD8](v72);
    v105 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v106;
      *v64 = v105;
      v65 = v113[0];
      v1 = objc_opt_class();
      v66 = NSStringFromClass(v1);
      v67 = MEMORY[0x277D82BE0](v66);
      v104 = v67;
      v68 = SUUIStatefulUIStateToString(*(v113[0] + 5));
      v69 = MEMORY[0x277D82BE0](v68);
      v103 = v69;
      v70 = [v113[0] currentState];
      v71 = [v113[0] delegate];
      v101 = 0;
      v99 = 0;
      if (v71)
      {
        v102 = [v113[0] delegate];
        v61 = 1;
        v101 = 1;
        v2 = objc_opt_class();
        v100 = NSStringFromClass(v2);
        v99 = 1;
        v62 = v100;
      }

      else
      {
        v62 = @"(null)";
      }

      v55 = v62;
      v56 = [v113[0] delegate];
      v57 = [v113[0] scanError];
      v58 = [v113[0] preferredStatefulDescriptor];
      v59 = [v113[0] alternateStatefulDescriptor];
      v60 = [v113[0] currentDownload];
      v97 = 0;
      v95 = 0;
      v93 = 0;
      if (v60)
      {
        v98 = [v113[0] currentDownload];
        v53 = 1;
        v97 = 1;
        v96 = [v98 descriptor];
        v95 = 1;
        v94 = [v96 updateName];
        v93 = 1;
        v54 = v94;
      }

      else
      {
        v54 = @"(null)";
      }

      v30 = v54;
      v31 = [v113[0] currentDownload];
      v32 = SUUIUpdateContinuousOperationTypeToString([v113[0] currentUpdateOperationType]);
      v33 = MEMORY[0x277D82BE0](v32);
      v92 = v33;
      v117 = [v113[0] isTargetedUpdateScheduledForAutoInstall];
      v43 = @"NO";
      v44 = @"YES";
      v51 = 1;
      if (v117)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v34 = v3;
      v4 = v3;
      v35 = v34;
      v36 = MEMORY[0x277D82BE0](v35);
      v91 = v36;
      v116 = [v113[0] hidingPreferredDescriptor];
      if (v116)
      {
        v5 = v44;
      }

      else
      {
        v5 = v43;
      }

      v37 = v5;
      v6 = v5;
      v38 = v37;
      v39 = MEMORY[0x277D82BE0](v38);
      v90 = v39;
      v40 = [v113[0] hiddenPreferredStatefulDescriptor];
      v41 = [v40 updateName];
      v42 = MEMORY[0x277D82BE0](v41);
      v89 = v42;
      v115 = [v113[0] hidingAlternateDescriptor];
      if (v115)
      {
        v7 = v44;
      }

      else
      {
        v7 = v43;
      }

      v45 = v7;
      v8 = v7;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v88 = v47;
      v48 = [v113[0] hiddenAlternateStatefulDescriptor];
      v49 = [v48 updateName];
      v50 = MEMORY[0x277D82BE0](v49);
      v87 = v50;
      v52 = [v113[0] enrolledBetaProgram];
      v85 = 0;
      if (v52)
      {
        v86 = [v113[0] enrolledBetaProgram];
        v85 = 1;
        v29 = [v86 programID];
      }

      else
      {
        v29 = 0;
      }

      v20 = v29;
      v21 = [*(v113[0] + 15) count];
      v114 = [v113[0] canEnrollInBetaUpdates];
      if (v114)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v19 = v9;
      v10 = v9;
      v28 = v19;
      v22 = MEMORY[0x277D82BE0](v28);
      v84 = v22;
      v23 = *(v113[0] + 21);
      v24 = *(v113[0] + 22);
      v25 = *(v113[0] + 23);
      v11 = [*(v113[0] + 24) count];
      v26 = &v13;
      v27 = v118;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v118, v82, v65, v67, v69, v70, v55, v56, v57, v58, v59, v30, v31, v33, v36, v39, v42, v47, v50, v20, v21, v22, v23, v24, v25, v11, v107);
      _os_log_impl(&dword_26ADE5000, v63, v64[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a NeRD Info operation with ID: %{public}@ ", v27, 0x106u);
      MEMORY[0x277D82BD8](v28);
      if (v85)
      {
        MEMORY[0x277D82BD8](v86);
      }

      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v31);
      if (v93)
      {
        MEMORY[0x277D82BD8](v94);
      }

      if (v95)
      {
        MEMORY[0x277D82BD8](v96);
      }

      if (v97)
      {
        MEMORY[0x277D82BD8](v98);
      }

      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v56);
      if (v99)
      {
        MEMORY[0x277D82BD8](v100);
      }

      if (v101)
      {
        MEMORY[0x277D82BD8](v102);
      }

      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v66);
      obj = 0;
      objc_storeStrong(&v84, 0);
      objc_storeStrong(&v87, obj);
      objc_storeStrong(&v88, obj);
      objc_storeStrong(&v89, obj);
      objc_storeStrong(&v90, obj);
      objc_storeStrong(&v91, obj);
      objc_storeStrong(&v92, obj);
      objc_storeStrong(&v103, obj);
      objc_storeStrong(&v104, obj);
    }

    objc_storeStrong(&v106, 0);
    v14 = [v113[0] environment];
    v16 = &v107;
    v12 = [v14 nerdOperationWithManager:v113[0] identifier:v107 completionQueue:*(v113[0] + 26)];
    v15 = &v83;
    v83 = v12;
    MEMORY[0x277D82BD8](v14);
    [v83 updateNeRDVersionWithOptions:v81[4]];
    v17 = 0;
    objc_storeStrong(v15, 0);
    objc_storeStrong(v16, v17);
    v108 = 0;
  }

  objc_storeStrong(v113, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isPreferredUpdatePromotedAsAlternate
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(SUUIStatefulUIManager *)self preferredStatefulDescriptor];
  location = [(SUUIStatefulUIManager *)v9 alternateStatefulDescriptor];
  if (v8[0])
  {
    v5 = 0;
    LOBYTE(v4) = 0;
    if (!location)
    {
      v6 = [v8[0] descriptor];
      v5 = 1;
      LOBYTE(v4) = 0;
      if ([v6 audienceType] == 1)
      {
        v4 = ![(SUUIStatefulUIManager *)v9 hidingPreferredDescriptor];
      }
    }

    if (v5)
    {
      MEMORY[0x277D82BD8](v6);
    }

    if (v4)
    {
      v3 = [v8[0] descriptor];
      v10 = [v3 promoteAlternateUpdate] & 1;
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v8, 0);
  return v10 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v44 = self;
  v43 = a2;
  v42 = a3;
  v29 = [objc_opt_class() allocWithZone:a3];
  v30 = [(SUUIStatefulUIManager *)v44 environment];
  v41 = [v29 initWithEnvironment:?];
  MEMORY[0x277D82BD8](v30);
  v31 = [(SUUIStatefulUIManager *)v44 delegate];
  objc_storeWeak(v41 + 1, v31);
  MEMORY[0x277D82BD8](v31);
  v3 = [(SUUIStatefulUIManager *)v44 delegateCallbackQueue];
  v4 = v41[2];
  v41[2] = v3;
  MEMORY[0x277D82BD8](v4);
  v5 = [(SUUIStatefulUIManager *)v44 currentState];
  v41[5] = v5;
  v32 = [(SUUIStatefulUIManager *)v44 preferredStatefulDescriptor];
  v6 = [(SUUIStatefulDescriptor *)v32 copyWithZone:v42];
  v7 = v41[6];
  v41[6] = v6;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v32);
  v33 = [(SUUIStatefulUIManager *)v44 alternateStatefulDescriptor];
  v8 = [(SUUIStatefulDescriptor *)v33 copyWithZone:v42];
  v9 = v41[7];
  v41[7] = v8;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v33);
  v34 = [(SUUIStatefulUIManager *)v44 scanError];
  v10 = [(SUUIStatefulError *)v34 copyWithZone:v42];
  v11 = v41[8];
  v41[8] = v10;
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v34);
  v35 = [(SUUIStatefulUIManager *)v44 currentDownload];
  v12 = [(SUUIDownload *)v35 copyWithZone:v42];
  v13 = v41[9];
  v41[9] = v12;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v35);
  v14 = [(SUUIStatefulUIManager *)v44 isAutoUpdateScheduled];
  *(v41 + 80) = v14;
  v36 = [(SUUIStatefulUIManager *)v44 hiddenPreferredStatefulDescriptor];
  v15 = [(SUUIStatefulDescriptor *)v36 copyWithZone:v42];
  v16 = v41[11];
  v41[11] = v15;
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v36);
  v37 = [(SUUIStatefulUIManager *)v44 hiddenAlternateStatefulDescriptor];
  v17 = [(SUUIStatefulDescriptor *)v37 copyWithZone:v42];
  v18 = v41[12];
  v41[12] = v17;
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v37);
  v19 = [(SUUIStatefulUIManager *)v44 hidingPreferredDescriptor];
  *(v41 + 104) = v19;
  v20 = [(SUUIStatefulUIManager *)v44 hidingAlternateDescriptor];
  *(v41 + 105) = v20;
  v21 = [(SUUIStatefulUIManager *)v44 mdmPathRestrictions];
  v41[18] = v21;
  *(v41 + 160) = v44->_delayingUpdate;
  v22 = [(SUUIStatefulUIManager *)v44 currentSeedingDevice];
  v23 = v41[14];
  v41[14] = v22;
  MEMORY[0x277D82BD8](v23);
  v38 = objc_alloc(MEMORY[0x277CBEA60]);
  v39 = [(SUUIStatefulUIManager *)v44 betaPrograms];
  v24 = [v38 initWithArray:? copyItems:?];
  v25 = v41[15];
  v41[15] = v24;
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v39);
  v26 = [(SUUIStatefulUIManager *)v44 enrolledBetaProgram];
  v27 = v41[16];
  v41[16] = v26;
  MEMORY[0x277D82BD8](v27);
  v40 = MEMORY[0x277D82BE0](v41);
  objc_storeStrong(&v41, 0);
  return v40;
}

+ (id)_generateStateTable
{
  v173[6] = *MEMORY[0x277D85DE8];
  v63[2] = a1;
  v63[1] = a2;
  v172[0] = @"Idle";
  v170[0] = @"CheckForAvailableUpdate";
  v4 = MEMORY[0x277D64800];
  v168[0] = *MEMORY[0x277D64800];
  v169[0] = @"CheckingForAvailableUpdate";
  v5 = MEMORY[0x277D644B8];
  v168[1] = *MEMORY[0x277D644B8];
  v169[1] = @"CheckForAvailableUpdate";
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:?];
  v171[0] = v60;
  v170[1] = @"FullScanUpdatesAvailable";
  v166[0] = *v4;
  v167[0] = @"UpdatesAvailable";
  v166[1] = *v5;
  v167[1] = @"ReportUpdatesAvailable";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:2];
  v171[1] = v59;
  v170[2] = @"FullScanNoUpdateAvailable";
  v164[0] = *v4;
  v165[0] = @"NoUpdateFound";
  v164[1] = *v5;
  v165[1] = @"ReportNoUpdateFound";
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:2];
  v171[2] = v58;
  v170[3] = @"FullScanFailed";
  v162[0] = *v4;
  v163[0] = @"ScanFailed";
  v162[1] = *v5;
  v163[1] = @"ReportScanFailed";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:2];
  v171[3] = v57;
  v170[4] = @"RefreshUpdatesAvailable";
  v160 = *v5;
  v6 = MEMORY[0x277D647D0];
  v161 = *MEMORY[0x277D647D0];
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v161 forKeys:&v160 count:?];
  v171[4] = v56;
  v170[5] = @"RefreshNoUpdateAvailable";
  v158 = *v5;
  v159 = *v6;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
  v171[5] = v55;
  v170[6] = @"RefreshScanResultsFailed";
  v156 = *v5;
  v157 = *v6;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
  v171[6] = v54;
  v170[7] = @"RefreshScanResults";
  v154 = *v5;
  v155 = *v6;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
  v171[7] = v53;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:?];
  v173[0] = v52;
  v172[1] = @"CheckingForAvailableUpdate";
  v152[0] = @"FullScanUpdatesAvailable";
  v150[0] = *v4;
  v151[0] = @"UpdatesAvailable";
  v150[1] = *v5;
  v151[1] = @"ReportUpdatesAvailable";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:2];
  v153[0] = v51;
  v152[1] = @"FullScanNoUpdateAvailable";
  v148[0] = *v4;
  v149[0] = @"NoUpdateFound";
  v148[1] = *v5;
  v149[1] = @"ReportNoUpdateFound";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];
  v153[1] = v50;
  v152[2] = @"FullScanFailed";
  v146[0] = *v4;
  v147[0] = @"ScanFailed";
  v146[1] = *v5;
  v147[1] = @"ReportScanFailed";
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
  v153[2] = v49;
  v152[3] = @"CheckForAvailableUpdate";
  v144 = *v5;
  v145 = @"CheckForAvailableUpdate";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
  v153[3] = v48;
  v152[4] = @"RefreshUpdatesAvailable";
  v142 = *v5;
  v143 = @"ReportRefreshScanResults";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
  v153[4] = v47;
  v152[5] = @"RefreshNoUpdateAvailable";
  v140 = *v5;
  v141 = @"ReportRefreshScanResults";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
  v153[5] = v46;
  v152[6] = @"RefreshScanResultsFailed";
  v138 = *v5;
  v139 = @"ReportRefreshScanResultsFailed";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
  v153[6] = v45;
  v152[7] = @"RefreshScanResults";
  v136 = *v5;
  v137 = *v6;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
  v153[7] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:8];
  v173[1] = v43;
  v172[2] = @"NoUpdateFound";
  v134[0] = @"CheckForAvailableUpdate";
  v132[0] = *v4;
  v133[0] = @"CheckingForAvailableUpdate";
  v132[1] = *v5;
  v133[1] = @"CheckForAvailableUpdate";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
  v135[0] = v42;
  v134[1] = @"RefreshScanResults";
  v130[0] = *v4;
  v131[0] = @"RefreshingScanResults";
  v130[1] = *v5;
  v131[1] = @"RefreshScanResults";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:2];
  v135[1] = v41;
  v134[2] = @"FullScanUpdatesAvailable";
  v128[0] = *v4;
  v129[0] = @"UpdatesAvailable";
  v128[1] = *v5;
  v129[1] = @"ReportUpdatesAvailable";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:2];
  v135[2] = v40;
  v134[3] = @"FullScanNoUpdateAvailable";
  v126[0] = *v4;
  v127[0] = @"NoUpdateFound";
  v126[1] = *v5;
  v127[1] = @"ReportNoUpdateFound";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:2];
  v135[3] = v39;
  v134[4] = @"FullScanFailed";
  v124[0] = *v4;
  v125[0] = @"ScanFailed";
  v124[1] = *v5;
  v125[1] = @"ReportScanFailed";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
  v135[4] = v38;
  v134[5] = @"RefreshUpdatesAvailable";
  v122[0] = *v4;
  v123[0] = @"UpdatesAvailable";
  v122[1] = *v5;
  v123[1] = @"ReportRefreshScanResults";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v135[5] = v37;
  v134[6] = @"RefreshNoUpdateAvailable";
  v120[0] = *v4;
  v121[0] = @"NoUpdateFound";
  v120[1] = *v5;
  v121[1] = @"ReportRefreshScanResults";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
  v135[6] = v36;
  v134[7] = @"RefreshScanResultsFailed";
  v118 = *v5;
  v119 = @"ReportRefreshScanResultsFailed";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v135[7] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:8];
  v173[2] = v34;
  v172[3] = @"UpdatesAvailable";
  v116[0] = @"CheckForAvailableUpdate";
  v114[0] = *v4;
  v115[0] = @"CheckingForAvailableUpdate";
  v114[1] = *v5;
  v115[1] = @"CheckForAvailableUpdate";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
  v117[0] = v33;
  v116[1] = @"RefreshScanResults";
  v112[0] = *v4;
  v113[0] = @"RefreshingScanResults";
  v112[1] = *v5;
  v113[1] = @"RefreshScanResults";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
  v117[1] = v32;
  v116[2] = @"FullScanUpdatesAvailable";
  v110[0] = *v4;
  v111[0] = @"UpdatesAvailable";
  v110[1] = *v5;
  v111[1] = @"ReportUpdatesAvailable";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v117[2] = v31;
  v116[3] = @"FullScanNoUpdateAvailable";
  v108[0] = *v4;
  v109[0] = @"NoUpdateFound";
  v108[1] = *v5;
  v109[1] = @"ReportNoUpdateFound";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  v117[3] = v30;
  v116[4] = @"FullScanFailed";
  v106[0] = *v4;
  v107[0] = @"ScanFailed";
  v106[1] = *v5;
  v107[1] = @"ReportScanFailed";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  v117[4] = v29;
  v116[5] = @"RefreshUpdatesAvailable";
  v104[0] = *v4;
  v105[0] = @"UpdatesAvailable";
  v104[1] = *v5;
  v105[1] = @"ReportRefreshScanResults";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v117[5] = v28;
  v116[6] = @"RefreshNoUpdateAvailable";
  v102[0] = *v4;
  v103[0] = @"NoUpdateFound";
  v102[1] = *v5;
  v103[1] = @"ReportRefreshScanResults";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
  v117[6] = v27;
  v116[7] = @"RefreshScanResultsFailed";
  v100 = *v5;
  v101 = @"ReportRefreshScanResultsFailed";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
  v117[7] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:8];
  v173[3] = v25;
  v172[4] = @"ScanFailed";
  v98[0] = @"CheckForAvailableUpdate";
  v96[0] = *v4;
  v97[0] = @"CheckingForAvailableUpdate";
  v96[1] = *v5;
  v97[1] = @"CheckForAvailableUpdate";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
  v99[0] = v24;
  v98[1] = @"RefreshScanResults";
  v94[0] = *v4;
  v95[0] = @"RefreshingScanResults";
  v94[1] = *v5;
  v95[1] = @"RefreshScanResults";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v99[1] = v23;
  v98[2] = @"FullScanUpdatesAvailable";
  v92[0] = *v4;
  v93[0] = @"UpdatesAvailable";
  v92[1] = *v5;
  v93[1] = @"ReportUpdatesAvailable";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v99[2] = v22;
  v98[3] = @"FullScanNoUpdateAvailable";
  v90[0] = *v4;
  v91[0] = @"NoUpdateFound";
  v90[1] = *v5;
  v91[1] = @"ReportNoUpdateFound";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  v99[3] = v21;
  v98[4] = @"FullScanFailed";
  v88[0] = *v4;
  v89[0] = @"ScanFailed";
  v88[1] = *v5;
  v89[1] = @"ReportScanFailed";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v99[4] = v20;
  v98[5] = @"RefreshUpdatesAvailable";
  v86[0] = *v4;
  v87[0] = @"UpdatesAvailable";
  v86[1] = *v5;
  v87[1] = @"ReportRefreshScanResults";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v99[5] = v19;
  v98[6] = @"RefreshNoUpdateAvailable";
  v84[0] = *v4;
  v85[0] = @"NoUpdateFound";
  v84[1] = *v5;
  v85[1] = @"ReportRefreshScanResults";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v99[6] = v18;
  v98[7] = @"RefreshScanResultsFailed";
  v82 = *v5;
  v83 = @"ReportRefreshScanResultsFailed";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v99[7] = v17;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:8];
  v173[4] = v16;
  v172[5] = @"RefreshingScanResults";
  v80[0] = @"CheckForAvailableUpdate";
  v78[0] = *v4;
  v79[0] = @"CheckingForAvailableUpdate";
  v78[1] = *v5;
  v79[1] = @"CheckForAvailableUpdate";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v81[0] = v15;
  v80[1] = @"RefreshUpdatesAvailable";
  v76[0] = *v4;
  v77[0] = @"UpdatesAvailable";
  v76[1] = *v5;
  v77[1] = @"ReportRefreshScanResults";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v81[1] = v14;
  v80[2] = @"RefreshNoUpdateAvailable";
  v74[0] = *v4;
  v75[0] = @"NoUpdateFound";
  v74[1] = *v5;
  v75[1] = @"ReportRefreshScanResults";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  v81[2] = v13;
  v80[3] = @"RefreshScanResultsFailed";
  v72 = *v5;
  v73 = @"ReportRefreshScanResultsFailed";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v81[3] = v12;
  v80[4] = @"FullScanUpdatesAvailable";
  v70[0] = *v4;
  v71[0] = @"UpdatesAvailable";
  v70[1] = *v5;
  v71[1] = @"ReportUpdatesAvailable";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v81[4] = v11;
  v80[5] = @"FullScanNoUpdateAvailable";
  v68[0] = *v4;
  v69[0] = @"NoUpdateFound";
  v68[1] = *v5;
  v69[1] = @"ReportNoUpdateFound";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
  v81[5] = v10;
  v80[6] = @"FullScanFailed";
  v66[0] = *v4;
  v67[0] = @"ScanFailed";
  v66[1] = *v5;
  v67[1] = @"ReportScanFailed";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v81[6] = v9;
  v80[7] = @"RefreshScanResults";
  v64 = *v5;
  v65 = *v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v81[7] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:8];
  v173[5] = v7;
  v63[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:6];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v62 = [v2 initWithDictionary:v63[0] copyItems:1];
  v61 = MEMORY[0x277D82BE0](v62);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(v63, 0);
  *MEMORY[0x277D85DE8];

  return v61;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = 0;
  objc_storeStrong(&v27, a6);
  v26 = 0;
  objc_storeStrong(&v26, a7);
  v25 = a8;
  v15 = [(SUCoreFSM *)v31->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v15);
  MEMORY[0x277D82BD8](v15);
  if (v26)
  {
    v24 = [(SUUIStatefulUIManager *)v31 convertFSMStateToUIState:v26];
    v23 = [(SUUIStatefulUIManager *)v31 currentState];
    if (v24 != 0x7FFFFFFFFFFFFFFFLL && v23 != v24)
    {
      [(SUUIStatefulUIManager *)v31 setCurrentState:v24];
      v9 = v31;
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __80__SUUIStatefulUIManager_performAction_onEvent_inState_withInfo_nextState_error___block_invoke;
      v21 = &unk_279CC65E8;
      v22[0] = MEMORY[0x277D82BE0](v31);
      v22[1] = v23;
      v22[2] = v24;
      [(SUUIStatefulUIManager *)v9 executeOperationOnDelegate:sel_statefulUIManager_didTransitionFromUIState_toState_ usingBlock:&v17];
      objc_storeStrong(v22, 0);
    }
  }

  if ([location[0] isEqualToString:*MEMORY[0x277D647D0]])
  {
    v16 = 0;
  }

  else if ([location[0] isEqualToString:@"CheckForAvailableUpdate"])
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_CheckForAvailableUpdate:v27 error:v25];
  }

  else if ([location[0] isEqualToString:@"ReportScanFailed"])
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_ReportScanFailed:v27 error:v25];
  }

  else if ([location[0] isEqualToString:@"ReportUpdatesAvailable"])
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_ReportUpdatesAvailable:v27 error:v25];
  }

  else if ([location[0] isEqualToString:@"ReportNoUpdateFound"])
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_ReportNoUpdateFound:v27 error:v25];
  }

  else if ([location[0] isEqualToString:@"RefreshScanResults"])
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_RefreshScanResults:v27 error:v25];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResults"])
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_ReportRefreshScanResults:v27 error:v25];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResultsFailed"])
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_ReportRefreshScanResultsFailed:v27 error:v25];
  }

  else
  {
    v16 = [(SUUIStatefulUIManager *)v31 fsmAction_actionUnknownAction:location[0] error:v25];
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  return v16;
}

uint64_t __80__SUUIStatefulUIManager_performAction_onEvent_inState_withInfo_nextState_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didTransitionFromUIState:*(a1 + 40) toState:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)setupFSM
{
  v16 = self;
  v15[1] = a2;
  v18 = MGCopyAnswer();
  v2 = v18;
  v15[0] = v18;
  v17 = MGCopyAnswer();
  v9 = v17;
  v3 = v17;
  v14 = v9;
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v11 = NSStringFromClass(v4);
  v13 = [v10 initWithFormat:@"%@:%@(%@)", v11, v15[0], v14];
  MEMORY[0x277D82BD8](v11);
  v5 = [objc_opt_class() _generateStateTable];
  stateTable = v16->_stateTable;
  v16->_stateTable = v5;
  MEMORY[0x277D82BD8](stateTable);
  v12 = objc_alloc(MEMORY[0x277D64458]);
  v7 = [v12 initMachine:v13 withTable:v16->_stateTable startingIn:@"Idle" usingDelegate:v16 registeringAllInfoClass:objc_opt_class()];
  managerFSM = v16->_managerFSM;
  v16->_managerFSM = v7;
  MEMORY[0x277D82BD8](managerFSM);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
}

- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)a3
{
  managerFSM = self->_managerFSM;
  v4 = [[SUUIStatefulUIManagerFSMParam alloc] initWithRetriesCount:a3];
  [(SUCoreFSM *)managerFSM postEvent:@"CheckForAvailableUpdate" withInfo:?];
  MEMORY[0x277D82BD8](v4);
}

- (void)performFullScan:(id)a3
{
  v14 = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  objc_initWeak(&v11, v14);
  queue = v14->_operationsQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __41__SUUIStatefulUIManager_performFullScan___block_invoke;
  v8 = &unk_279CC6368;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __41__SUUIStatefulUIManager_performFullScan___block_invoke()
{
  v415 = MEMORY[0x28223BE20]();
  v416 = "[SUUIStatefulUIManager performFullScan:]_block_invoke";
  v417 = "[SUUIStatefulUIManager performFullScan:]_block_invoke_2";
  v576 = *MEMORY[0x277D85DE8];
  v552[2] = v415;
  v552[1] = v415;
  WeakRetained = objc_loadWeakRetained((v415 + 40));
  v552[0] = WeakRetained;
  v414 = 0;
  if (!WeakRetained)
  {
    v413 = +[SUUILoggingContext softwareUpdateUILogger];
    v411 = v413;
    v412 = [v411 oslog];
    oslog = v412;
    MEMORY[0x277D82BD8](v411);
    v550 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *type = v550;
      v410 = NSStringFromSelector(*(v415 + 48));
      v407 = v410;
      v549 = MEMORY[0x277D82BE0](v407);
      buf = v575;
      __os_log_helper_16_2_2_8_32_8_66(v575, v416, v549);
      _os_log_error_impl(&dword_26ADE5000, oslog, v550, "%s: Self is nil in %{public}@. Stopping.", v575, 0x16u);
      MEMORY[0x277D82BD8](v407);
      objc_storeStrong(&v549, 0);
    }

    objc_storeStrong(&oslog, 0);
    v548 = 1;
    v414 = 1;
  }

  if ((v414 & 1) == 0)
  {
    v542 = 0;
    v543 = &v542;
    v544 = 0x20000000;
    v545 = 32;
    v546 = 0;
    v405 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v540 = v405;
    if (v405)
    {
      v539 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.FullScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v0 = v540[1].opaque[0];
      v540[1].opaque[0] = v539;
      MEMORY[0x277D82BD8](v0);
    }

    else
    {
      v404 = +[SUUILoggingContext softwareUpdateUILogger];
      v402 = v404;
      v403 = [v402 oslog];
      v538 = v403;
      MEMORY[0x277D82BD8](v402);
      v537 = 16;
      if (os_log_type_enabled(v538, OS_LOG_TYPE_ERROR))
      {
        v399 = v538;
        *v400 = v537;
        v401 = v536;
        __os_log_helper_16_0_0(v536);
        _os_log_error_impl(&dword_26ADE5000, v399, v400[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.FullScan", v536, 2u);
      }

      objc_storeStrong(&v538, 0);
    }

    v535[2] = v540;
    state = v540;
    if (v540)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v535[1] = state;
    v543[3] = state;
    v398 = [v552[0] currentFullScanOperation];
    v535[0] = v398;
    v397 = [v552[0] currentRefreshScanOperation];
    v534 = v397;
    if (v534)
    {
      v396 = +[SUUILoggingContext statefulUILogger];
      v394 = v396;
      v395 = [v394 oslog];
      v533 = v395;
      MEMORY[0x277D82BD8](v394);
      v532 = 0;
      if (os_log_type_enabled(v533, OS_LOG_TYPE_DEFAULT))
      {
        v390 = v533;
        *v391 = v532;
        v392 = v552[0];
        aClass = objc_opt_class();
        v389 = NSStringFromClass(aClass);
        v386 = v389;
        v387 = MEMORY[0x277D82BE0](v386);
        v531 = v387;
        v388 = SUUIStatefulUIStateToString(*(v552[0] + 5));
        v383 = v388;
        v384 = MEMORY[0x277D82BE0](v383);
        v530 = v384;
        v385 = [v552[0] currentState];
        v528 = 0;
        v526 = 0;
        v382 = [v552[0] delegate];
        v381 = v382;
        if (v381)
        {
          v380 = [v552[0] delegate];
          v529 = v380;
          v528 = 1;
          v379 = objc_opt_class();
          v378 = NSStringFromClass(v379);
          v527 = v378;
          v526 = 1;
          v377 = v527;
        }

        else
        {
          v377 = @"(null)";
        }

        v375 = v377;
        v376 = [v552[0] delegate];
        v373 = v376;
        v374 = [v552[0] scanError];
        v371 = v374;
        v372 = [v552[0] preferredStatefulDescriptor];
        v369 = v372;
        v370 = [v552[0] alternateStatefulDescriptor];
        v367 = v370;
        v524 = 0;
        v522 = 0;
        v520 = 0;
        v368 = [v552[0] currentDownload];
        v366 = v368;
        if (v366)
        {
          v365 = [v552[0] currentDownload];
          v525 = v365;
          v524 = 1;
          v364 = [v525 descriptor];
          v523 = v364;
          v522 = 1;
          v363 = [v523 updateName];
          v521 = v363;
          v520 = 1;
          v362 = v521;
        }

        else
        {
          v362 = @"(null)";
        }

        v360 = v362;
        v361 = [v552[0] currentDownload];
        v358 = v361;
        v359 = [v552[0] currentUpdateOperationType];
        v357 = SUUIUpdateContinuousOperationTypeToString(v359);
        v354 = v357;
        v355 = MEMORY[0x277D82BE0](v354);
        v519 = v355;
        v356 = [v552[0] isTargetedUpdateScheduledForAutoInstall];
        v568 = v356;
        if (v356)
        {
          v1 = @"YES";
        }

        else
        {
          v1 = @"NO";
        }

        v353 = v1;
        v2 = v1;
        v350 = v353;
        v351 = MEMORY[0x277D82BE0](v350);
        v518 = v351;
        v352 = [v552[0] hidingPreferredDescriptor];
        v567 = v352;
        if (v352)
        {
          v3 = @"YES";
        }

        else
        {
          v3 = @"NO";
        }

        v349 = v3;
        v4 = v3;
        v346 = v349;
        v347 = MEMORY[0x277D82BE0](v346);
        v517 = v347;
        v348 = [v552[0] hiddenPreferredStatefulDescriptor];
        v344 = v348;
        v345 = [v344 updateName];
        v341 = v345;
        v342 = MEMORY[0x277D82BE0](v341);
        v516 = v342;
        v343 = [v552[0] hidingAlternateDescriptor];
        v566 = v343;
        if (v343)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        v340 = v5;
        v6 = v5;
        v337 = v340;
        v338 = MEMORY[0x277D82BE0](v337);
        v515 = v338;
        v339 = [v552[0] hiddenAlternateStatefulDescriptor];
        v335 = v339;
        v336 = [v335 updateName];
        v332 = v336;
        v333 = MEMORY[0x277D82BE0](v332);
        v514 = v333;
        v512 = 0;
        v334 = [v552[0] enrolledBetaProgram];
        v331 = v334;
        if (v331)
        {
          v330 = [v552[0] enrolledBetaProgram];
          v513 = v330;
          v512 = 1;
          v329 = [v513 programID];
          v328 = v329;
        }

        else
        {
          v328 = 0;
        }

        v326 = v328;
        v327 = [*(v552[0] + 15) count];
        v325 = [v552[0] canEnrollInBetaUpdates];
        v565 = v325;
        if (v325)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        v324 = v7;
        v8 = v7;
        v318 = v324;
        v319 = MEMORY[0x277D82BE0](v318);
        location = v319;
        v320 = *(v552[0] + 21);
        v321 = *(v552[0] + 22);
        v322 = *(v552[0] + 23);
        v323 = [*(v552[0] + 24) count];
        v316 = &v36;
        v317 = v574;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v574, v416, v392, v387, v384, v385, v375, v373, v371, v369, v367, v360, v358, v355, v351, v347, v342, v338, v333, v326, v327, v319, v320, v321, v322, v323);
        _os_log_impl(&dword_26ADE5000, v390, v391[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", v317, 0xFCu);
        MEMORY[0x277D82BD8](v318);
        if (v512)
        {
          MEMORY[0x277D82BD8](v513);
        }

        MEMORY[0x277D82BD8](v331);
        MEMORY[0x277D82BD8](v332);
        MEMORY[0x277D82BD8](v335);
        MEMORY[0x277D82BD8](v337);
        MEMORY[0x277D82BD8](v341);
        MEMORY[0x277D82BD8](v344);
        MEMORY[0x277D82BD8](v346);
        MEMORY[0x277D82BD8](v350);
        MEMORY[0x277D82BD8](v354);
        MEMORY[0x277D82BD8](v358);
        if (v520)
        {
          MEMORY[0x277D82BD8](v521);
        }

        if (v522)
        {
          MEMORY[0x277D82BD8](v523);
        }

        if (v524)
        {
          MEMORY[0x277D82BD8](v525);
        }

        MEMORY[0x277D82BD8](v366);
        MEMORY[0x277D82BD8](v367);
        MEMORY[0x277D82BD8](v369);
        MEMORY[0x277D82BD8](v371);
        MEMORY[0x277D82BD8](v373);
        if (v526)
        {
          MEMORY[0x277D82BD8](v527);
        }

        if (v528)
        {
          MEMORY[0x277D82BD8](v529);
        }

        MEMORY[0x277D82BD8](v381);
        MEMORY[0x277D82BD8](v383);
        MEMORY[0x277D82BD8](v386);
        objc_storeStrong(&location, 0);
        objc_storeStrong(&v514, 0);
        objc_storeStrong(&v515, 0);
        objc_storeStrong(&v516, 0);
        objc_storeStrong(&v517, 0);
        objc_storeStrong(&v518, 0);
        objc_storeStrong(&v519, 0);
        objc_storeStrong(&v530, 0);
        objc_storeStrong(&v531, 0);
      }

      objc_storeStrong(&v533, 0);
      v314 = v534;
      v505 = MEMORY[0x277D85DD0];
      v506 = -1073741824;
      v507 = 0;
      v508 = __41__SUUIStatefulUIManager_performFullScan___block_invoke_435;
      v509 = &unk_279CC6610;
      v315 = v510;
      objc_copyWeak(v510, (v415 + 40));
      v510[1] = *(v415 + 48);
      [v314 cancel:&v505];
      objc_destroyWeak(v315);
    }

    if (v535[0])
    {
      v313 = [*(v415 + 32) forceScan];
      if ((v313 & 1) == 0)
      {
        v312 = +[SUUILoggingContext statefulUILogger];
        v310 = v312;
        v311 = [v310 oslog];
        v504 = v311;
        MEMORY[0x277D82BD8](v310);
        v503 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v504, OS_LOG_TYPE_DEFAULT))
        {
          v306 = v504;
          *v307 = v503;
          v308 = v552[0];
          v309 = objc_opt_class();
          v305 = NSStringFromClass(v309);
          v302 = v305;
          v303 = MEMORY[0x277D82BE0](v302);
          v502 = v303;
          v304 = SUUIStatefulUIStateToString(*(v552[0] + 5));
          v299 = v304;
          v300 = MEMORY[0x277D82BE0](v299);
          v501 = v300;
          v301 = [v552[0] currentState];
          v499 = 0;
          v497 = 0;
          v298 = [v552[0] delegate];
          v297 = v298;
          if (v297)
          {
            v296 = [v552[0] delegate];
            v500 = v296;
            v499 = 1;
            v295 = objc_opt_class();
            v294 = NSStringFromClass(v295);
            v498 = v294;
            v497 = 1;
            v293 = v498;
          }

          else
          {
            v293 = @"(null)";
          }

          v291 = v293;
          v292 = [v552[0] delegate];
          v289 = v292;
          v290 = [v552[0] scanError];
          v287 = v290;
          v288 = [v552[0] preferredStatefulDescriptor];
          v285 = v288;
          v286 = [v552[0] alternateStatefulDescriptor];
          v283 = v286;
          v495 = 0;
          v493 = 0;
          v491 = 0;
          v284 = [v552[0] currentDownload];
          v282 = v284;
          if (v282)
          {
            v281 = [v552[0] currentDownload];
            v496 = v281;
            v495 = 1;
            v280 = [v496 descriptor];
            v494 = v280;
            v493 = 1;
            v279 = [v494 updateName];
            v492 = v279;
            v491 = 1;
            v278 = v492;
          }

          else
          {
            v278 = @"(null)";
          }

          v276 = v278;
          v277 = [v552[0] currentDownload];
          v274 = v277;
          v275 = [v552[0] currentUpdateOperationType];
          v273 = SUUIUpdateContinuousOperationTypeToString(v275);
          v270 = v273;
          v271 = MEMORY[0x277D82BE0](v270);
          v490 = v271;
          v272 = [v552[0] isTargetedUpdateScheduledForAutoInstall];
          v564 = v272;
          if (v272)
          {
            v9 = @"YES";
          }

          else
          {
            v9 = @"NO";
          }

          v269 = v9;
          v10 = v9;
          v266 = v269;
          v267 = MEMORY[0x277D82BE0](v266);
          v489 = v267;
          v268 = [v552[0] hidingPreferredDescriptor];
          v563 = v268;
          if (v268)
          {
            v11 = @"YES";
          }

          else
          {
            v11 = @"NO";
          }

          v265 = v11;
          v12 = v11;
          v262 = v265;
          v263 = MEMORY[0x277D82BE0](v262);
          v488 = v263;
          v264 = [v552[0] hiddenPreferredStatefulDescriptor];
          v260 = v264;
          v261 = [v260 updateName];
          v257 = v261;
          v258 = MEMORY[0x277D82BE0](v257);
          v487 = v258;
          v259 = [v552[0] hidingAlternateDescriptor];
          v562 = v259;
          if (v259)
          {
            v13 = @"YES";
          }

          else
          {
            v13 = @"NO";
          }

          v256 = v13;
          v14 = v13;
          v253 = v256;
          v254 = MEMORY[0x277D82BE0](v253);
          v486 = v254;
          v255 = [v552[0] hiddenAlternateStatefulDescriptor];
          v251 = v255;
          v252 = [v251 updateName];
          v248 = v252;
          v249 = MEMORY[0x277D82BE0](v248);
          v485 = v249;
          v483 = 0;
          v250 = [v552[0] enrolledBetaProgram];
          v247 = v250;
          if (v247)
          {
            v246 = [v552[0] enrolledBetaProgram];
            v484 = v246;
            v483 = 1;
            v245 = [v484 programID];
            v244 = v245;
          }

          else
          {
            v244 = 0;
          }

          v242 = v244;
          v243 = [*(v552[0] + 15) count];
          v241 = [v552[0] canEnrollInBetaUpdates];
          v561 = v241;
          if (v241)
          {
            v15 = @"YES";
          }

          else
          {
            v15 = @"NO";
          }

          v240 = v15;
          v16 = v15;
          v234 = v240;
          v235 = MEMORY[0x277D82BE0](v234);
          v482 = v235;
          v236 = *(v552[0] + 21);
          v237 = *(v552[0] + 22);
          v238 = *(v552[0] + 23);
          v239 = [*(v552[0] + 24) count];
          v232 = &v36;
          v233 = v573;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v573, v416, v308, v303, v300, v301, v291, v289, v287, v285, v283, v276, v274, v271, v267, v263, v258, v254, v249, v242, v243, v235, v236, v237, v238, v239);
          _os_log_impl(&dword_26ADE5000, v306, v307[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v233, 0xFCu);
          MEMORY[0x277D82BD8](v234);
          if (v483)
          {
            MEMORY[0x277D82BD8](v484);
          }

          MEMORY[0x277D82BD8](v247);
          MEMORY[0x277D82BD8](v248);
          MEMORY[0x277D82BD8](v251);
          MEMORY[0x277D82BD8](v253);
          MEMORY[0x277D82BD8](v257);
          MEMORY[0x277D82BD8](v260);
          MEMORY[0x277D82BD8](v262);
          MEMORY[0x277D82BD8](v266);
          MEMORY[0x277D82BD8](v270);
          MEMORY[0x277D82BD8](v274);
          if (v491)
          {
            MEMORY[0x277D82BD8](v492);
          }

          if (v493)
          {
            MEMORY[0x277D82BD8](v494);
          }

          if (v495)
          {
            MEMORY[0x277D82BD8](v496);
          }

          MEMORY[0x277D82BD8](v282);
          MEMORY[0x277D82BD8](v283);
          MEMORY[0x277D82BD8](v285);
          MEMORY[0x277D82BD8](v287);
          MEMORY[0x277D82BD8](v289);
          if (v497)
          {
            MEMORY[0x277D82BD8](v498);
          }

          if (v499)
          {
            MEMORY[0x277D82BD8](v500);
          }

          MEMORY[0x277D82BD8](v297);
          MEMORY[0x277D82BD8](v299);
          MEMORY[0x277D82BD8](v302);
          objc_storeStrong(&v482, 0);
          objc_storeStrong(&v485, 0);
          objc_storeStrong(&v486, 0);
          objc_storeStrong(&v487, 0);
          objc_storeStrong(&v488, 0);
          objc_storeStrong(&v489, 0);
          objc_storeStrong(&v490, 0);
          objc_storeStrong(&v501, 0);
          objc_storeStrong(&v502, 0);
        }

        objc_storeStrong(&v504, 0);
        if (v543[3])
        {
          if (*(v543[3] + 24))
          {
            os_activity_scope_leave(v543[3]);
          }

          free(v543[3]);
          v543[3] = 0;
        }

        v547 = 1;
LABEL_173:
        objc_storeStrong(&v534, 0);
        objc_storeStrong(v535, 0);
        _Block_object_dispose(&v542, 8);
        goto LABEL_174;
      }

      v231 = +[SUUILoggingContext statefulUILogger];
      v229 = v231;
      v230 = [v229 oslog];
      v481 = v230;
      MEMORY[0x277D82BD8](v229);
      v480 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v481, OS_LOG_TYPE_DEFAULT))
      {
        v225 = v481;
        *v226 = v480;
        v227 = v552[0];
        v228 = objc_opt_class();
        v224 = NSStringFromClass(v228);
        v221 = v224;
        v222 = MEMORY[0x277D82BE0](v221);
        v479 = v222;
        v223 = SUUIStatefulUIStateToString(*(v552[0] + 5));
        v218 = v223;
        v219 = MEMORY[0x277D82BE0](v218);
        v478 = v219;
        v220 = [v552[0] currentState];
        v476 = 0;
        v474 = 0;
        v217 = [v552[0] delegate];
        v216 = v217;
        if (v216)
        {
          v215 = [v552[0] delegate];
          v477 = v215;
          v476 = 1;
          v214 = objc_opt_class();
          v213 = NSStringFromClass(v214);
          v475 = v213;
          v474 = 1;
          v212 = v475;
        }

        else
        {
          v212 = @"(null)";
        }

        v210 = v212;
        v211 = [v552[0] delegate];
        v208 = v211;
        v209 = [v552[0] scanError];
        v206 = v209;
        v207 = [v552[0] preferredStatefulDescriptor];
        v204 = v207;
        v205 = [v552[0] alternateStatefulDescriptor];
        v202 = v205;
        v472 = 0;
        v470 = 0;
        v468 = 0;
        v203 = [v552[0] currentDownload];
        v201 = v203;
        if (v201)
        {
          v200 = [v552[0] currentDownload];
          v473 = v200;
          v472 = 1;
          v199 = [v473 descriptor];
          v471 = v199;
          v470 = 1;
          v198 = [v471 updateName];
          v469 = v198;
          v468 = 1;
          v197 = v469;
        }

        else
        {
          v197 = @"(null)";
        }

        v195 = v197;
        v196 = [v552[0] currentDownload];
        v193 = v196;
        v194 = [v552[0] currentUpdateOperationType];
        v192 = SUUIUpdateContinuousOperationTypeToString(v194);
        v189 = v192;
        v190 = MEMORY[0x277D82BE0](v189);
        v467 = v190;
        v191 = [v552[0] isTargetedUpdateScheduledForAutoInstall];
        v560 = v191;
        if (v191)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v188 = v17;
        v18 = v17;
        v185 = v188;
        v186 = MEMORY[0x277D82BE0](v185);
        v466 = v186;
        v187 = [v552[0] hidingPreferredDescriptor];
        v559 = v187;
        if (v187)
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        v184 = v19;
        v20 = v19;
        v181 = v184;
        v182 = MEMORY[0x277D82BE0](v181);
        v465 = v182;
        v183 = [v552[0] hiddenPreferredStatefulDescriptor];
        v179 = v183;
        v180 = [v179 updateName];
        v176 = v180;
        v177 = MEMORY[0x277D82BE0](v176);
        v464 = v177;
        v178 = [v552[0] hidingAlternateDescriptor];
        v558 = v178;
        if (v178)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v175 = v21;
        v22 = v21;
        v172 = v175;
        v173 = MEMORY[0x277D82BE0](v172);
        v463 = v173;
        v174 = [v552[0] hiddenAlternateStatefulDescriptor];
        v170 = v174;
        v171 = [v170 updateName];
        v167 = v171;
        v168 = MEMORY[0x277D82BE0](v167);
        v462 = v168;
        v460 = 0;
        v169 = [v552[0] enrolledBetaProgram];
        v166 = v169;
        if (v166)
        {
          v165 = [v552[0] enrolledBetaProgram];
          v461 = v165;
          v460 = 1;
          v164 = [v461 programID];
          v163 = v164;
        }

        else
        {
          v163 = 0;
        }

        v161 = v163;
        v162 = [*(v552[0] + 15) count];
        v160 = [v552[0] canEnrollInBetaUpdates];
        v557 = v160;
        if (v160)
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v159 = v23;
        v24 = v23;
        v153 = v159;
        v154 = MEMORY[0x277D82BE0](v153);
        v459 = v154;
        v155 = *(v552[0] + 21);
        v156 = *(v552[0] + 22);
        v157 = *(v552[0] + 23);
        v158 = [*(v552[0] + 24) count];
        v151 = &v36;
        v152 = v572;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v572, v416, v227, v222, v219, v220, v210, v208, v206, v204, v202, v195, v193, v190, v186, v182, v177, v173, v168, v161, v162, v154, v155, v156, v157, v158);
        _os_log_impl(&dword_26ADE5000, v225, v226[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running, but a force scan has been requested. Cancelling the previous full-scan request.", v152, 0xFCu);
        MEMORY[0x277D82BD8](v153);
        if (v460)
        {
          MEMORY[0x277D82BD8](v461);
        }

        MEMORY[0x277D82BD8](v166);
        MEMORY[0x277D82BD8](v167);
        MEMORY[0x277D82BD8](v170);
        MEMORY[0x277D82BD8](v172);
        MEMORY[0x277D82BD8](v176);
        MEMORY[0x277D82BD8](v179);
        MEMORY[0x277D82BD8](v181);
        MEMORY[0x277D82BD8](v185);
        MEMORY[0x277D82BD8](v189);
        MEMORY[0x277D82BD8](v193);
        if (v468)
        {
          MEMORY[0x277D82BD8](v469);
        }

        if (v470)
        {
          MEMORY[0x277D82BD8](v471);
        }

        if (v472)
        {
          MEMORY[0x277D82BD8](v473);
        }

        MEMORY[0x277D82BD8](v201);
        MEMORY[0x277D82BD8](v202);
        MEMORY[0x277D82BD8](v204);
        MEMORY[0x277D82BD8](v206);
        MEMORY[0x277D82BD8](v208);
        if (v474)
        {
          MEMORY[0x277D82BD8](v475);
        }

        if (v476)
        {
          MEMORY[0x277D82BD8](v477);
        }

        MEMORY[0x277D82BD8](v216);
        MEMORY[0x277D82BD8](v218);
        MEMORY[0x277D82BD8](v221);
        objc_storeStrong(&v459, 0);
        objc_storeStrong(&v462, 0);
        objc_storeStrong(&v463, 0);
        objc_storeStrong(&v464, 0);
        objc_storeStrong(&v465, 0);
        objc_storeStrong(&v466, 0);
        objc_storeStrong(&v467, 0);
        objc_storeStrong(&v478, 0);
        objc_storeStrong(&v479, 0);
      }

      objc_storeStrong(&v481, 0);
      [v552[0] setCurrentFullScanOperation:0];
      [v535[0] cancel:&__block_literal_global_439];
    }

    v150 = [MEMORY[0x277CCAD78] UUID];
    v148 = v150;
    v149 = [v148 UUIDString];
    v458 = v149;
    MEMORY[0x277D82BD8](v148);
    v147 = +[SUUILoggingContext statefulUILogger];
    v145 = v147;
    v146 = [v145 oslog];
    v457 = v146;
    MEMORY[0x277D82BD8](v145);
    v456 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v457, OS_LOG_TYPE_DEFAULT))
    {
      v141 = v457;
      *v142 = v456;
      v143 = v552[0];
      v144 = objc_opt_class();
      v140 = NSStringFromClass(v144);
      v137 = v140;
      v138 = MEMORY[0x277D82BE0](v137);
      v455 = v138;
      v139 = SUUIStatefulUIStateToString(*(v552[0] + 5));
      v134 = v139;
      v135 = MEMORY[0x277D82BE0](v134);
      v454 = v135;
      v136 = [v552[0] currentState];
      v452 = 0;
      v450 = 0;
      v133 = [v552[0] delegate];
      v132 = v133;
      if (v132)
      {
        v131 = [v552[0] delegate];
        v453 = v131;
        v452 = 1;
        v130 = objc_opt_class();
        v129 = NSStringFromClass(v130);
        v451 = v129;
        v450 = 1;
        v128 = v451;
      }

      else
      {
        v128 = @"(null)";
      }

      v126 = v128;
      v127 = [v552[0] delegate];
      v124 = v127;
      v125 = [v552[0] scanError];
      v122 = v125;
      v123 = [v552[0] preferredStatefulDescriptor];
      v120 = v123;
      v121 = [v552[0] alternateStatefulDescriptor];
      v118 = v121;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v119 = [v552[0] currentDownload];
      v117 = v119;
      if (v117)
      {
        v116 = [v552[0] currentDownload];
        v449 = v116;
        v448 = 1;
        v115 = [v449 descriptor];
        v447 = v115;
        v446 = 1;
        v114 = [v447 updateName];
        v445 = v114;
        v444 = 1;
        v113 = v445;
      }

      else
      {
        v113 = @"(null)";
      }

      v111 = v113;
      v112 = [v552[0] currentDownload];
      v109 = v112;
      v110 = [v552[0] currentUpdateOperationType];
      v108 = SUUIUpdateContinuousOperationTypeToString(v110);
      v105 = v108;
      v106 = MEMORY[0x277D82BE0](v105);
      v443 = v106;
      v107 = [v552[0] isTargetedUpdateScheduledForAutoInstall];
      v556 = v107;
      if (v107)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v104 = v25;
      v26 = v25;
      v101 = v104;
      v102 = MEMORY[0x277D82BE0](v101);
      v442 = v102;
      v103 = [v552[0] hidingPreferredDescriptor];
      v555 = v103;
      if (v103)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v100 = v27;
      v28 = v27;
      v97 = v100;
      v98 = MEMORY[0x277D82BE0](v97);
      v441 = v98;
      v99 = [v552[0] hiddenPreferredStatefulDescriptor];
      v95 = v99;
      v96 = [v95 updateName];
      v92 = v96;
      v93 = MEMORY[0x277D82BE0](v92);
      v440 = v93;
      v94 = [v552[0] hidingAlternateDescriptor];
      v554 = v94;
      if (v94)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      v91 = v29;
      v30 = v29;
      v88 = v91;
      v89 = MEMORY[0x277D82BE0](v88);
      v439 = v89;
      v90 = [v552[0] hiddenAlternateStatefulDescriptor];
      v86 = v90;
      v87 = [v86 updateName];
      v83 = v87;
      v84 = MEMORY[0x277D82BE0](v83);
      v438 = v84;
      v436 = 0;
      v85 = [v552[0] enrolledBetaProgram];
      v82 = v85;
      if (v82)
      {
        v81 = [v552[0] enrolledBetaProgram];
        v437 = v81;
        v436 = 1;
        v80 = [v437 programID];
        v79 = v80;
      }

      else
      {
        v79 = 0;
      }

      v77 = v79;
      v78 = [*(v552[0] + 15) count];
      v76 = [v552[0] canEnrollInBetaUpdates];
      v553 = v76;
      if (v76)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v75 = v31;
      v32 = v31;
      v69 = v75;
      v70 = MEMORY[0x277D82BE0](v69);
      v435 = v70;
      v71 = *(v552[0] + 21);
      v72 = *(v552[0] + 22);
      v73 = *(v552[0] + 23);
      v74 = [*(v552[0] + 24) count];
      v67 = &v36;
      v68 = v571;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v571, v417, v143, v138, v135, v136, v126, v124, v122, v120, v118, v111, v109, v106, v102, v98, v93, v89, v84, v77, v78, v70, v71, v72, v73, v74, v458, v535[0], v534);
      _os_log_impl(&dword_26ADE5000, v141, v142[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a full scan operation with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v68, 0x11Au);
      MEMORY[0x277D82BD8](v69);
      if (v436)
      {
        MEMORY[0x277D82BD8](v437);
      }

      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v109);
      if (v444)
      {
        MEMORY[0x277D82BD8](v445);
      }

      if (v446)
      {
        MEMORY[0x277D82BD8](v447);
      }

      if (v448)
      {
        MEMORY[0x277D82BD8](v449);
      }

      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v120);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v124);
      if (v450)
      {
        MEMORY[0x277D82BD8](v451);
      }

      if (v452)
      {
        MEMORY[0x277D82BD8](v453);
      }

      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v137);
      objc_storeStrong(&v435, 0);
      objc_storeStrong(&v438, 0);
      objc_storeStrong(&v439, 0);
      objc_storeStrong(&v440, 0);
      objc_storeStrong(&v441, 0);
      objc_storeStrong(&v442, 0);
      objc_storeStrong(&v443, 0);
      objc_storeStrong(&v454, 0);
      objc_storeStrong(&v455, 0);
    }

    objc_storeStrong(&v457, 0);
    v434 = 0uLL;
    v433 = 0uLL;
    v66 = +[SUUILoggingContext statefulUILogger];
    v64 = v66;
    v65 = [v64 oslog];
    v62 = v65;
    *&v63 = _SUUISignpostCreate(v62);
    *(&v63 + 1) = v33;
    v433 = v63;
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v64);
    if (v433)
    {
      v61 = +[SUUILoggingContext statefulUILogger];
      v59 = v61;
      v60 = [v59 oslog];
      v432 = v60;
      MEMORY[0x277D82BD8](v59);
      v431 = 1;
      v430 = v433;
      if (v433 && v430 != -1 && os_signpost_enabled(v432))
      {
        v55 = v432;
        *v56 = v431;
        spid = v430;
        v58 = v570;
        __os_log_helper_16_2_1_8_66(v570, v458);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v55, v56[0], spid, "FullScan", "Begins full scan  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v58, 0xCu);
      }

      objc_storeStrong(&v432, 0);
      v54 = +[SUUILoggingContext statefulUILogger];
      v52 = v54;
      v53 = [v52 oslog];
      v429 = v53;
      MEMORY[0x277D82BD8](v52);
      v428 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v429, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v429;
        *v50 = v428;
        v51 = v569;
        __os_log_helper_16_2_2_8_0_8_66(v569, v433, v458);
        _os_log_impl(&dword_26ADE5000, v49, v50[0], "BEGIN [%lld]: FullScan Begins full scan  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v51, 0x16u);
      }

      objc_storeStrong(&v429, 0);
    }

    v434 = v433;
    v48 = [v552[0] environment];
    v46 = v48;
    v47 = [v46 scanOperationWithManager:v552[0] identifier:v458 completionQueue:*(v552[0] + 26)];
    v34 = v47;
    v35 = v535[0];
    v535[0] = v34;
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v46);
    [v552[0] setCurrentFullScanOperation:v535[0]];
    v43 = v552[0];
    v44 = v535[0];
    v45 = [*(v415 + 32) forceReload];
    v42 = [v43 contextForFullScanOperation:v44 withThirdPartyScanResults:0 scanError:0 forceReloadScanResults:v45];
    v427 = v42;
    v39 = *(v552[0] + 21);
    v40 = v427;
    v419 = MEMORY[0x277D85DD0];
    v420 = -1073741824;
    v421 = 0;
    v422 = __41__SUUIStatefulUIManager_performFullScan___block_invoke_441;
    v423 = &unk_279CC6658;
    v41 = v425;
    objc_copyWeak(v425, (v415 + 40));
    v38 = &v419;
    v425[1] = *(v415 + 48);
    v426 = v434;
    v37 = v424;
    v424[0] = MEMORY[0x277D82BE0](*(v415 + 32));
    v424[1] = &v542;
    [v39 checkForAvailableUpdatesWithContext:v40 completionHandler:v38];
    objc_storeStrong(v37, 0);
    objc_destroyWeak(v41);
    objc_storeStrong(&v427, 0);
    objc_storeStrong(&v458, 0);
    v547 = 0;
    goto LABEL_173;
  }

  v547 = 1;
LABEL_174:
  objc_storeStrong(v552, 0);
  *MEMORY[0x277D85DE8];
}

void __41__SUUIStatefulUIManager_performFullScan___block_invoke_435(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager performFullScan:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentRefreshScanOperation:0];
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

void __41__SUUIStatefulUIManager_performFullScan___block_invoke_441(uint64_t a1, void *a2, void *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v89 = 0;
  objc_storeStrong(&v89, a3);
  v88[1] = a1;
  v88[0] = objc_loadWeakRetained((a1 + 48));
  v30 = 0;
  if (!v88[0])
  {
    v29 = +[SUUILoggingContext softwareUpdateUILogger];
    v87 = [v29 oslog];
    MEMORY[0x277D82BD8](v29);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      log = v87;
      v27 = type;
      v28 = NSStringFromSelector(*(a1 + 56));
      v85 = MEMORY[0x277D82BE0](v28);
      __os_log_helper_16_2_2_8_32_8_66(v96, "[SUUIStatefulUIManager performFullScan:]_block_invoke", v85);
      _os_log_error_impl(&dword_26ADE5000, log, v27, "%s: Self is nil in %{public}@. Stopping.", v96, 0x16u);
      MEMORY[0x277D82BD8](v28);
      objc_storeStrong(&v85, 0);
    }

    objc_storeStrong(&v87, 0);
    v84 = 1;
    v30 = 1;
  }

  if (v30)
  {
    v83 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(v88[0] + 26));
    if (v89)
    {
      v4 = *(a1 + 64);
      v47 = 0;
      v45 = 0;
      v16 = 0;
      if (v4)
      {
        v48 = +[SUUILoggingContext statefulUILogger];
        v47 = 1;
        v46 = [v48 oslog];
        v45 = 1;
        v16 = os_signpost_enabled(v46);
      }

      if (v45)
      {
        MEMORY[0x277D82BD8](v46);
      }

      if (v47)
      {
        MEMORY[0x277D82BD8](v48);
      }

      if (v16)
      {
        v44 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v15 = +[SUUILoggingContext statefulUILogger];
        v43 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v42 = OS_SIGNPOST_EVENT;
        v41 = *(a1 + 64);
        if (v41 && v41 != -1 && os_signpost_enabled(v43))
        {
          if (v89)
          {
            v14 = [v89 code];
          }

          else
          {
            v14 = 0;
          }

          __os_log_helper_16_0_1_4_2(v93, v14);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v43, v42, v41, "FullScan", "Full scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v93, 8u);
        }

        objc_storeStrong(&v43, 0);
        v13 = +[SUUILoggingContext statefulUILogger];
        oslog = [v13 oslog];
        MEMORY[0x277D82BD8](v13);
        v39 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 64);
          v12 = *&v44;
          if (v89)
          {
            v10 = [v89 code];
          }

          else
          {
            v10 = 0;
          }

          __os_log_helper_16_0_3_8_0_8_0_4_2(v92, v11, v12, v10);
          _os_log_impl(&dword_26ADE5000, oslog, v39, "EVENT [%lld] %fs: FullScan Full scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v92, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
      }

      [*(a1 + 32) setError:v89];
      [v88[0] handleFailedFullScan:*(a1 + 32)];
    }

    else
    {
      v3 = *(a1 + 64);
      v81 = 0;
      v79 = 0;
      v25 = 0;
      if (v3)
      {
        v82 = +[SUUILoggingContext statefulUILogger];
        v81 = 1;
        v80 = [v82 oslog];
        v79 = 1;
        v25 = os_signpost_enabled(v80);
      }

      if (v79)
      {
        MEMORY[0x277D82BD8](v80);
      }

      if (v81)
      {
        MEMORY[0x277D82BD8](v82);
      }

      if (v25)
      {
        *&v78 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v24 = +[SUUILoggingContext statefulUILogger];
        v77 = [v24 oslog];
        MEMORY[0x277D82BD8](v24);
        v76 = OS_SIGNPOST_EVENT;
        v75 = *(a1 + 64);
        if (v75 && v75 != -1 && os_signpost_enabled(v77))
        {
          v73 = 0;
          v71 = 0;
          v69 = 0;
          if (location[0] && (v74 = [location[0] preferredDescriptor], v73 = 1, v74))
          {
            v72 = [location[0] preferredDescriptor];
            v71 = 1;
            v70 = [v72 updateName];
            v69 = 1;
            v23 = v70;
          }

          else
          {
            v23 = @"N/A";
          }

          v67 = 0;
          v65 = 0;
          v63 = 0;
          if (location[0] && (v68 = [location[0] alternateDescriptor], v67 = 1, v68))
          {
            v66 = [location[0] alternateDescriptor];
            v65 = 1;
            v64 = [v66 updateName];
            v63 = 1;
            v22 = v64;
          }

          else
          {
            v22 = @"N/A";
          }

          __os_log_helper_16_2_2_8_66_8_66(v95, v23, v22);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v77, v76, v75, "FullScan", "Full scan finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v95, 0x16u);
          if (v63)
          {
            MEMORY[0x277D82BD8](v64);
          }

          if (v65)
          {
            MEMORY[0x277D82BD8](v66);
          }

          if (v67)
          {
            MEMORY[0x277D82BD8](v68);
          }

          if (v69)
          {
            MEMORY[0x277D82BD8](v70);
          }

          if (v71)
          {
            MEMORY[0x277D82BD8](v72);
          }

          if (v73)
          {
            MEMORY[0x277D82BD8](v74);
          }
        }

        objc_storeStrong(&v77, 0);
        v21 = +[SUUILoggingContext statefulUILogger];
        v62 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v61 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 64);
          v20 = v78;
          v59 = 0;
          v57 = 0;
          v55 = 0;
          if (location[0] && (v60 = [location[0] preferredDescriptor], v59 = 1, v60))
          {
            v58 = [location[0] preferredDescriptor];
            v57 = 1;
            v56 = [v58 updateName];
            v55 = 1;
            v18 = v56;
          }

          else
          {
            v18 = @"N/A";
          }

          v53 = 0;
          v51 = 0;
          v49 = 0;
          if (location[0] && (v54 = [location[0] alternateDescriptor], v53 = 1, v54))
          {
            v52 = [location[0] alternateDescriptor];
            v51 = 1;
            v50 = [v52 updateName];
            v49 = 1;
            v17 = v50;
          }

          else
          {
            v17 = @"N/A";
          }

          __os_log_helper_16_2_4_8_0_8_0_8_66_8_66(v94, v19, v20, v18, v17);
          _os_log_impl(&dword_26ADE5000, v62, v61, "EVENT [%lld] %fs: FullScan Full scan finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v94, 0x2Au);
          if (v49)
          {
            MEMORY[0x277D82BD8](v50);
          }

          if (v51)
          {
            MEMORY[0x277D82BD8](v52);
          }

          if (v53)
          {
            MEMORY[0x277D82BD8](v54);
          }

          if (v55)
          {
            MEMORY[0x277D82BD8](v56);
          }

          if (v57)
          {
            MEMORY[0x277D82BD8](v58);
          }

          if (v59)
          {
            MEMORY[0x277D82BD8](v60);
          }
        }

        objc_storeStrong(&v62, 0);
      }

      [*(a1 + 32) setFullScanResults:location[0]];
      [v88[0] handleFullScanResults:*(a1 + 32)];
    }

    if (*(a1 + 64))
    {
      v38 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
      v9 = +[SUUILoggingContext statefulUILogger];
      v37 = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v36 = 2;
      v35 = *(a1 + 64);
      if (v35 && v35 != -1 && os_signpost_enabled(v37))
      {
        v6 = v37;
        v7 = v36;
        v8 = v35;
        __os_log_helper_16_0_0(v34);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v6, v7, v8, "FullScan", "", v34, 2u);
      }

      objc_storeStrong(&v37, 0);
      v5 = +[SUUILoggingContext statefulUILogger];
      v33 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v91, *(a1 + 64), *&v38);
        _os_log_impl(&dword_26ADE5000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FullScan ", v91, 0x16u);
      }

      objc_storeStrong(&v33, 0);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (*(*(*(*(a1 + 40) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 40) + 8) + 24));
      }

      free(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v83 = 0;
  }

  objc_storeStrong(v88, 0);
  if (!v83)
  {
    v83 = 0;
  }

  objc_storeStrong(&v89, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)performFullScanWithScanResults:(id)a3 andScanError:(id)a4
{
  obj = a4;
  v82 = "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]";
  v131 = *MEMORY[0x277D85DE8];
  val = self;
  v124 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v122 = 0;
  objc_storeStrong(&v122, obj);
  v120 = 0;
  v118 = 0;
  v84 = 0;
  if (v122)
  {
    v121 = [v122 traits];
    v120 = 1;
    v81 = 0;
    if (([v121 noUpdateFound] & 1) == 0)
    {
      v119 = [v122 traits];
      v80 = 1;
      v118 = 1;
      v81 = [v119 isDelayingUpdate] ^ 1;
    }

    v84 = v81;
  }

  v79 = v84;
  if (v118)
  {
    MEMORY[0x277D82BD8](v119);
  }

  if (v120)
  {
    MEMORY[0x277D82BD8](v121);
  }

  if (v79)
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    oslog = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v70 = type;
      v71 = val;
      v4 = objc_opt_class();
      v72 = NSStringFromClass(v4);
      v73 = MEMORY[0x277D82BE0](v72);
      v115 = v73;
      v74 = SUUIStatefulUIStateToString(*(val + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v114 = v75;
      v76 = [val currentState];
      v77 = [val delegate];
      v112 = 0;
      v110 = 0;
      if (v77)
      {
        v113 = [val delegate];
        v67 = 1;
        v112 = 1;
        v5 = objc_opt_class();
        v111 = NSStringFromClass(v5);
        v110 = 1;
        v68 = v111;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      v62 = [val delegate];
      v63 = [val scanError];
      v64 = [val preferredStatefulDescriptor];
      v65 = [val alternateStatefulDescriptor];
      v66 = [val currentDownload];
      v108 = 0;
      v106 = 0;
      v104 = 0;
      if (v66)
      {
        v109 = [val currentDownload];
        v59 = 1;
        v108 = 1;
        v107 = [v109 descriptor];
        v106 = 1;
        v105 = [v107 updateName];
        v104 = 1;
        v60 = v105;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      v37 = [val currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([val currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v103 = v39;
      v129 = [val isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (v129)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v40 = v6;
      v7 = v6;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v102 = v42;
      v128 = [val hidingPreferredDescriptor];
      if (v128)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v43 = v8;
      v9 = v8;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v101 = v45;
      v46 = [val hiddenPreferredStatefulDescriptor];
      v47 = [v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v100 = v48;
      v127 = [val hidingAlternateDescriptor];
      if (v127)
      {
        v10 = v50;
      }

      else
      {
        v10 = v49;
      }

      v51 = v10;
      v11 = v10;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v99 = v53;
      v54 = [val hiddenAlternateStatefulDescriptor];
      v55 = [v54 updateName];
      v56 = MEMORY[0x277D82BE0](v55);
      v98 = v56;
      v58 = [val enrolledBetaProgram];
      v96 = 0;
      if (v58)
      {
        v97 = [val enrolledBetaProgram];
        v96 = 1;
        v35 = [v97 programID];
      }

      else
      {
        v35 = 0;
      }

      v26 = v35;
      v27 = [*(val + 15) count];
      v126 = [val canEnrollInBetaUpdates];
      if (v126)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v25 = v12;
      v13 = v12;
      v34 = v25;
      v28 = MEMORY[0x277D82BE0](v34);
      v95 = v28;
      v29 = *(val + 21);
      v30 = *(val + 22);
      v31 = *(val + 23);
      v14 = [*(val + 24) count];
      v32 = &v15;
      buf = v130;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v130, v82, v71, v73, v75, v76, v61, v62, v63, v64, v65, v36, v37, v39, v42, v45, v48, v53, v56, v26, v27, v28, v29, v30, v31, v14, v122, location);
      _os_log_impl(&dword_26ADE5000, log, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan request has been received for third-party scan results. We got a non up-to-date third-party scan error - Skipping.\nscanError: %{public}@\nscanResults: %{public}@", buf, 0x110u);
      MEMORY[0x277D82BD8](v34);
      if (v96)
      {
        MEMORY[0x277D82BD8](v97);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v37);
      if (v104)
      {
        MEMORY[0x277D82BD8](v105);
      }

      if (v106)
      {
        MEMORY[0x277D82BD8](v107);
      }

      if (v108)
      {
        MEMORY[0x277D82BD8](v109);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      if (v110)
      {
        MEMORY[0x277D82BD8](v111);
      }

      if (v112)
      {
        MEMORY[0x277D82BD8](v113);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      v24 = 0;
      objc_storeStrong(&v95, 0);
      objc_storeStrong(&v98, v24);
      objc_storeStrong(&v99, v24);
      objc_storeStrong(&v100, v24);
      objc_storeStrong(&v101, v24);
      objc_storeStrong(&v102, v24);
      objc_storeStrong(&v103, v24);
      objc_storeStrong(&v114, v24);
      objc_storeStrong(&v115, v24);
    }

    objc_storeStrong(&oslog, 0);
    v94 = 1;
  }

  else
  {
    from = &v93;
    objc_initWeak(&v93, val);
    queue = *(val + 26);
    block = &v85;
    v85 = MEMORY[0x277D85DD0];
    v86 = -1073741824;
    v87 = 0;
    v88 = __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke;
    v89 = &unk_279CC62A0;
    v22 = v92;
    objc_copyWeak(v92, &v93);
    v92[1] = v124;
    v20 = &v90;
    v90 = MEMORY[0x277D82BE0](location);
    v19 = &v91;
    v91 = MEMORY[0x277D82BE0](v122);
    dispatch_async(queue, &v85);
    v21 = 0;
    objc_storeStrong(&v91, 0);
    objc_storeStrong(&v90, 0);
    objc_destroyWeak(v92);
    objc_destroyWeak(&v93);
    v94 = 0;
  }

  v16 = 0;
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&location, v16);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke()
{
  v326 = v345;
  v327 = MEMORY[0x28223BE20]();
  v328 = "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]_block_invoke";
  v459 = *MEMORY[0x277D85DE8];
  v440[2] = v327;
  v440[1] = v327;
  WeakRetained = objc_loadWeakRetained((v327 + 48));
  v440[0] = WeakRetained;
  v325 = 0;
  if (!WeakRetained)
  {
    v324 = +[SUUILoggingContext softwareUpdateUILogger];
    v322 = v324;
    v323 = [v322 oslog];
    oslog = v323;
    MEMORY[0x277D82BD8](v322);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v320 = type;
      v321 = NSStringFromSelector(*(v327 + 56));
      v318 = v321;
      location = MEMORY[0x277D82BE0](v318);
      buf = v458;
      __os_log_helper_16_2_2_8_32_8_66(v458, v328, location);
      _os_log_error_impl(&dword_26ADE5000, log, v320[0], "%s: Self is nil in %{public}@. Stopping.", v458, 0x16u);
      MEMORY[0x277D82BD8](v318);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v436 = 1;
    v325 = 1;
  }

  if (v325)
  {
    v435 = 1;
  }

  else
  {
    v430 = 0;
    v431 = &v430;
    v432 = 0x20000000;
    v433 = 32;
    v434 = 0;
    v316 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v428 = v316;
    if (v316)
    {
      v427 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.ThirdPartyFullScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v0 = v428[1].opaque[0];
      v428[1].opaque[0] = v427;
      MEMORY[0x277D82BD8](v0);
    }

    else
    {
      v315 = +[SUUILoggingContext softwareUpdateUILogger];
      v313 = v315;
      v314 = [v313 oslog];
      v426 = v314;
      MEMORY[0x277D82BD8](v313);
      v425 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v426, OS_LOG_TYPE_ERROR))
      {
        v310 = v426;
        *v311 = v425;
        v312 = v424;
        __os_log_helper_16_0_0(v424);
        _os_log_error_impl(&dword_26ADE5000, v310, v311[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.ThirdPartyFullScan", v424, 2u);
      }

      objc_storeStrong(&v426, 0);
    }

    obj[2] = v428;
    state = v428;
    if (v428)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    obj[1] = state;
    v431[3] = state;
    v309 = [v440[0] currentFullScanOperation];
    obj[0] = v309;
    v308 = [v440[0] currentRefreshScanOperation];
    v422 = v308;
    if (v422)
    {
      v307 = +[SUUILoggingContext statefulUILogger];
      v305 = v307;
      v306 = [v305 oslog];
      v421 = v306;
      MEMORY[0x277D82BD8](v305);
      v420 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
      {
        v301 = v421;
        *v302 = v420;
        v303 = v440[0];
        aClass = objc_opt_class();
        v300 = NSStringFromClass(aClass);
        v297 = v300;
        v298 = MEMORY[0x277D82BE0](v297);
        v419 = v298;
        v299 = SUUIStatefulUIStateToString(*(v440[0] + 5));
        v294 = v299;
        v295 = MEMORY[0x277D82BE0](v294);
        v418 = v295;
        v296 = [v440[0] currentState];
        v416 = 0;
        v414 = 0;
        v293 = [v440[0] delegate];
        v292 = v293;
        if (v292)
        {
          v291 = [v440[0] delegate];
          v417 = v291;
          v416 = 1;
          v290 = objc_opt_class();
          v289 = NSStringFromClass(v290);
          v415 = v289;
          v414 = 1;
          v288 = v415;
        }

        else
        {
          v288 = @"(null)";
        }

        v286 = v288;
        v287 = [v440[0] delegate];
        v284 = v287;
        v285 = [v440[0] scanError];
        v282 = v285;
        v283 = [v440[0] preferredStatefulDescriptor];
        v280 = v283;
        v281 = [v440[0] alternateStatefulDescriptor];
        v278 = v281;
        v412 = 0;
        v410 = 0;
        v408 = 0;
        v279 = [v440[0] currentDownload];
        v277 = v279;
        if (v277)
        {
          v276 = [v440[0] currentDownload];
          v413 = v276;
          v412 = 1;
          v275 = [v413 descriptor];
          v411 = v275;
          v410 = 1;
          v274 = [v411 updateName];
          v409 = v274;
          v408 = 1;
          v273 = v409;
        }

        else
        {
          v273 = @"(null)";
        }

        v271 = v273;
        v272 = [v440[0] currentDownload];
        v269 = v272;
        v270 = [v440[0] currentUpdateOperationType];
        v268 = SUUIUpdateContinuousOperationTypeToString(v270);
        v265 = v268;
        v266 = MEMORY[0x277D82BE0](v265);
        v407 = v266;
        v267 = [v440[0] isTargetedUpdateScheduledForAutoInstall];
        v452 = v267;
        if (v267)
        {
          v1 = @"YES";
        }

        else
        {
          v1 = @"NO";
        }

        v264 = v1;
        v2 = v1;
        v261 = v264;
        v262 = MEMORY[0x277D82BE0](v261);
        v406 = v262;
        v263 = [v440[0] hidingPreferredDescriptor];
        v451 = v263;
        if (v263)
        {
          v3 = @"YES";
        }

        else
        {
          v3 = @"NO";
        }

        v260 = v3;
        v4 = v3;
        v257 = v260;
        v258 = MEMORY[0x277D82BE0](v257);
        v405 = v258;
        v259 = [v440[0] hiddenPreferredStatefulDescriptor];
        v255 = v259;
        v256 = [v255 updateName];
        v252 = v256;
        v253 = MEMORY[0x277D82BE0](v252);
        v404 = v253;
        v254 = [v440[0] hidingAlternateDescriptor];
        v450 = v254;
        if (v254)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        v251 = v5;
        v6 = v5;
        v248 = v251;
        v249 = MEMORY[0x277D82BE0](v248);
        v403 = v249;
        v250 = [v440[0] hiddenAlternateStatefulDescriptor];
        v246 = v250;
        v247 = [v246 updateName];
        v243 = v247;
        v244 = MEMORY[0x277D82BE0](v243);
        v402 = v244;
        v400 = 0;
        v245 = [v440[0] enrolledBetaProgram];
        v242 = v245;
        if (v242)
        {
          v241 = [v440[0] enrolledBetaProgram];
          v401 = v241;
          v400 = 1;
          v240 = [v401 programID];
          v239 = v240;
        }

        else
        {
          v239 = 0;
        }

        v237 = v239;
        v238 = [*(v440[0] + 15) count];
        v236 = [v440[0] canEnrollInBetaUpdates];
        v449 = v236;
        if (v236)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        v235 = v7;
        v8 = v7;
        v229 = v235;
        v230 = MEMORY[0x277D82BE0](v229);
        v399 = v230;
        v231 = *(v440[0] + 21);
        v232 = *(v440[0] + 22);
        v233 = *(v440[0] + 23);
        v234 = [*(v440[0] + 24) count];
        v227 = &v34;
        v228 = v457;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v457, v328, v303, v298, v295, v296, v286, v284, v282, v280, v278, v271, v269, v266, v262, v258, v253, v249, v244, v237, v238, v230, v231, v232, v233, v234);
        _os_log_impl(&dword_26ADE5000, v301, v302[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", v228, 0xFCu);
        MEMORY[0x277D82BD8](v229);
        if (v400)
        {
          MEMORY[0x277D82BD8](v401);
        }

        MEMORY[0x277D82BD8](v242);
        MEMORY[0x277D82BD8](v243);
        MEMORY[0x277D82BD8](v246);
        MEMORY[0x277D82BD8](v248);
        MEMORY[0x277D82BD8](v252);
        MEMORY[0x277D82BD8](v255);
        MEMORY[0x277D82BD8](v257);
        MEMORY[0x277D82BD8](v261);
        MEMORY[0x277D82BD8](v265);
        MEMORY[0x277D82BD8](v269);
        if (v408)
        {
          MEMORY[0x277D82BD8](v409);
        }

        if (v410)
        {
          MEMORY[0x277D82BD8](v411);
        }

        if (v412)
        {
          MEMORY[0x277D82BD8](v413);
        }

        MEMORY[0x277D82BD8](v277);
        MEMORY[0x277D82BD8](v278);
        MEMORY[0x277D82BD8](v280);
        MEMORY[0x277D82BD8](v282);
        MEMORY[0x277D82BD8](v284);
        if (v414)
        {
          MEMORY[0x277D82BD8](v415);
        }

        if (v416)
        {
          MEMORY[0x277D82BD8](v417);
        }

        MEMORY[0x277D82BD8](v292);
        MEMORY[0x277D82BD8](v294);
        MEMORY[0x277D82BD8](v297);
        objc_storeStrong(&v399, 0);
        objc_storeStrong(&v402, 0);
        objc_storeStrong(&v403, 0);
        objc_storeStrong(&v404, 0);
        objc_storeStrong(&v405, 0);
        objc_storeStrong(&v406, 0);
        objc_storeStrong(&v407, 0);
        objc_storeStrong(&v418, 0);
        objc_storeStrong(&v419, 0);
      }

      objc_storeStrong(&v421, 0);
      v225 = v422;
      v393 = MEMORY[0x277D85DD0];
      v394 = -1073741824;
      v395 = 0;
      v396 = __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_443;
      v397 = &unk_279CC6610;
      v226 = v398;
      objc_copyWeak(v398, (v327 + 48));
      v398[1] = *(v327 + 56);
      [v225 cancel:&v393];
      objc_destroyWeak(v226);
    }

    if (obj[0])
    {
      v224 = +[SUUILoggingContext statefulUILogger];
      v222 = v224;
      v223 = [v222 oslog];
      v392 = v223;
      MEMORY[0x277D82BD8](v222);
      v391 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v392, OS_LOG_TYPE_DEFAULT))
      {
        v218 = v392;
        *v219 = v391;
        v220 = v440[0];
        v221 = objc_opt_class();
        v217 = NSStringFromClass(v221);
        v214 = v217;
        v215 = MEMORY[0x277D82BE0](v214);
        v390 = v215;
        v216 = SUUIStatefulUIStateToString(*(v440[0] + 5));
        v211 = v216;
        v212 = MEMORY[0x277D82BE0](v211);
        v389 = v212;
        v213 = [v440[0] currentState];
        v387 = 0;
        v385 = 0;
        v210 = [v440[0] delegate];
        v209 = v210;
        if (v209)
        {
          v208 = [v440[0] delegate];
          v388 = v208;
          v387 = 1;
          v207 = objc_opt_class();
          v206 = NSStringFromClass(v207);
          v386 = v206;
          v385 = 1;
          v205 = v386;
        }

        else
        {
          v205 = @"(null)";
        }

        v203 = v205;
        v204 = [v440[0] delegate];
        v201 = v204;
        v202 = [v440[0] scanError];
        v199 = v202;
        v200 = [v440[0] preferredStatefulDescriptor];
        v197 = v200;
        v198 = [v440[0] alternateStatefulDescriptor];
        v195 = v198;
        v383 = 0;
        v381 = 0;
        v379 = 0;
        v196 = [v440[0] currentDownload];
        v194 = v196;
        if (v194)
        {
          v193 = [v440[0] currentDownload];
          v384 = v193;
          v383 = 1;
          v192 = [v384 descriptor];
          v382 = v192;
          v381 = 1;
          v191 = [v382 updateName];
          v380 = v191;
          v379 = 1;
          v190 = v380;
        }

        else
        {
          v190 = @"(null)";
        }

        v188 = v190;
        v189 = [v440[0] currentDownload];
        v186 = v189;
        v187 = [v440[0] currentUpdateOperationType];
        v185 = SUUIUpdateContinuousOperationTypeToString(v187);
        v182 = v185;
        v183 = MEMORY[0x277D82BE0](v182);
        v378 = v183;
        v184 = [v440[0] isTargetedUpdateScheduledForAutoInstall];
        v448 = v184;
        if (v184)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        v181 = v9;
        v10 = v9;
        v178 = v181;
        v179 = MEMORY[0x277D82BE0](v178);
        v377 = v179;
        v180 = [v440[0] hidingPreferredDescriptor];
        v447 = v180;
        if (v180)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v177 = v11;
        v12 = v11;
        v174 = v177;
        v175 = MEMORY[0x277D82BE0](v174);
        v376 = v175;
        v176 = [v440[0] hiddenPreferredStatefulDescriptor];
        v172 = v176;
        v173 = [v172 updateName];
        v169 = v173;
        v170 = MEMORY[0x277D82BE0](v169);
        v375 = v170;
        v171 = [v440[0] hidingAlternateDescriptor];
        v446 = v171;
        if (v171)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v168 = v13;
        v14 = v13;
        v165 = v168;
        v166 = MEMORY[0x277D82BE0](v165);
        v374 = v166;
        v167 = [v440[0] hiddenAlternateStatefulDescriptor];
        v163 = v167;
        v164 = [v163 updateName];
        v160 = v164;
        v161 = MEMORY[0x277D82BE0](v160);
        v373 = v161;
        v371 = 0;
        v162 = [v440[0] enrolledBetaProgram];
        v159 = v162;
        if (v159)
        {
          v158 = [v440[0] enrolledBetaProgram];
          v372 = v158;
          v371 = 1;
          v157 = [v372 programID];
          v156 = v157;
        }

        else
        {
          v156 = 0;
        }

        v154 = v156;
        v155 = [*(v440[0] + 15) count];
        v153 = [v440[0] canEnrollInBetaUpdates];
        v445 = v153;
        if (v153)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v152 = v15;
        v16 = v15;
        v146 = v152;
        v147 = MEMORY[0x277D82BE0](v146);
        v370 = v147;
        v148 = *(v440[0] + 21);
        v149 = *(v440[0] + 22);
        v150 = *(v440[0] + 23);
        v151 = [*(v440[0] + 24) count];
        v144 = &v34;
        v145 = v456;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v456, v328, v220, v215, v212, v213, v203, v201, v199, v197, v195, v188, v186, v183, v179, v175, v170, v166, v161, v154, v155, v147, v148, v149, v150, v151);
        _os_log_impl(&dword_26ADE5000, v218, v219[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v145, 0xFCu);
        MEMORY[0x277D82BD8](v146);
        if (v371)
        {
          MEMORY[0x277D82BD8](v372);
        }

        MEMORY[0x277D82BD8](v159);
        MEMORY[0x277D82BD8](v160);
        MEMORY[0x277D82BD8](v163);
        MEMORY[0x277D82BD8](v165);
        MEMORY[0x277D82BD8](v169);
        MEMORY[0x277D82BD8](v172);
        MEMORY[0x277D82BD8](v174);
        MEMORY[0x277D82BD8](v178);
        MEMORY[0x277D82BD8](v182);
        MEMORY[0x277D82BD8](v186);
        if (v379)
        {
          MEMORY[0x277D82BD8](v380);
        }

        if (v381)
        {
          MEMORY[0x277D82BD8](v382);
        }

        if (v383)
        {
          MEMORY[0x277D82BD8](v384);
        }

        MEMORY[0x277D82BD8](v194);
        MEMORY[0x277D82BD8](v195);
        MEMORY[0x277D82BD8](v197);
        MEMORY[0x277D82BD8](v199);
        MEMORY[0x277D82BD8](v201);
        if (v385)
        {
          MEMORY[0x277D82BD8](v386);
        }

        if (v387)
        {
          MEMORY[0x277D82BD8](v388);
        }

        MEMORY[0x277D82BD8](v209);
        MEMORY[0x277D82BD8](v211);
        MEMORY[0x277D82BD8](v214);
        objc_storeStrong(&v370, 0);
        objc_storeStrong(&v373, 0);
        objc_storeStrong(&v374, 0);
        objc_storeStrong(&v375, 0);
        objc_storeStrong(&v376, 0);
        objc_storeStrong(&v377, 0);
        objc_storeStrong(&v378, 0);
        objc_storeStrong(&v389, 0);
        objc_storeStrong(&v390, 0);
      }

      objc_storeStrong(&v392, 0);
      if (v431[3])
      {
        if (*(v431[3] + 24))
        {
          os_activity_scope_leave(v431[3]);
        }

        free(v431[3]);
        v431[3] = 0;
      }

      v435 = 1;
    }

    else
    {
      v143 = [MEMORY[0x277CCAD78] UUID];
      v141 = v143;
      v142 = [v141 UUIDString];
      v369 = v142;
      MEMORY[0x277D82BD8](v141);
      v140 = +[SUUILoggingContext statefulUILogger];
      v138 = v140;
      v139 = [v138 oslog];
      v368 = v139;
      MEMORY[0x277D82BD8](v138);
      v367 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v368, OS_LOG_TYPE_DEFAULT))
      {
        v134 = v368;
        *v135 = v367;
        v136 = v440[0];
        v137 = objc_opt_class();
        v133 = NSStringFromClass(v137);
        v130 = v133;
        v131 = MEMORY[0x277D82BE0](v130);
        v366 = v131;
        v132 = SUUIStatefulUIStateToString(*(v440[0] + 5));
        v127 = v132;
        v128 = MEMORY[0x277D82BE0](v127);
        v365 = v128;
        v129 = [v440[0] currentState];
        v363 = 0;
        v361 = 0;
        v126 = [v440[0] delegate];
        v125 = v126;
        if (v125)
        {
          v124 = [v440[0] delegate];
          v364 = v124;
          v363 = 1;
          v123 = objc_opt_class();
          v122 = NSStringFromClass(v123);
          v362 = v122;
          v361 = 1;
          v121 = v362;
        }

        else
        {
          v121 = @"(null)";
        }

        v119 = v121;
        v120 = [v440[0] delegate];
        v117 = v120;
        v118 = [v440[0] scanError];
        v115 = v118;
        v116 = [v440[0] preferredStatefulDescriptor];
        v113 = v116;
        v114 = [v440[0] alternateStatefulDescriptor];
        v111 = v114;
        v359 = 0;
        v357 = 0;
        v355 = 0;
        v112 = [v440[0] currentDownload];
        v110 = v112;
        if (v110)
        {
          v109 = [v440[0] currentDownload];
          v360 = v109;
          v359 = 1;
          v108 = [v360 descriptor];
          v358 = v108;
          v357 = 1;
          v107 = [v358 updateName];
          v356 = v107;
          v355 = 1;
          v106 = v356;
        }

        else
        {
          v106 = @"(null)";
        }

        v104 = v106;
        v105 = [v440[0] currentDownload];
        v102 = v105;
        v103 = [v440[0] currentUpdateOperationType];
        v101 = SUUIUpdateContinuousOperationTypeToString(v103);
        v98 = v101;
        v99 = MEMORY[0x277D82BE0](v98);
        v354 = v99;
        v100 = [v440[0] isTargetedUpdateScheduledForAutoInstall];
        v444 = v100;
        if (v100)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v97 = v17;
        v18 = v17;
        v94 = v97;
        v95 = MEMORY[0x277D82BE0](v94);
        v353 = v95;
        v96 = [v440[0] hidingPreferredDescriptor];
        v443 = v96;
        if (v96)
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        v93 = v19;
        v20 = v19;
        v90 = v93;
        v91 = MEMORY[0x277D82BE0](v90);
        v352 = v91;
        v92 = [v440[0] hiddenPreferredStatefulDescriptor];
        v88 = v92;
        v89 = [v88 updateName];
        v85 = v89;
        v86 = MEMORY[0x277D82BE0](v85);
        v351 = v86;
        v87 = [v440[0] hidingAlternateDescriptor];
        v442 = v87;
        if (v87)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v84 = v21;
        v22 = v21;
        v81 = v84;
        v82 = MEMORY[0x277D82BE0](v81);
        v350 = v82;
        v83 = [v440[0] hiddenAlternateStatefulDescriptor];
        v79 = v83;
        v80 = [v79 updateName];
        v76 = v80;
        v77 = MEMORY[0x277D82BE0](v76);
        v349 = v77;
        v347 = 0;
        v78 = [v440[0] enrolledBetaProgram];
        v75 = v78;
        if (v75)
        {
          v74 = [v440[0] enrolledBetaProgram];
          v348 = v74;
          v347 = 1;
          v73 = [v348 programID];
          v72 = v73;
        }

        else
        {
          v72 = 0;
        }

        v70 = v72;
        v71 = [*(v440[0] + 15) count];
        v69 = [v440[0] canEnrollInBetaUpdates];
        v441 = v69;
        if (v69)
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v68 = v23;
        v24 = v23;
        v62 = v68;
        v63 = MEMORY[0x277D82BE0](v62);
        v346 = v63;
        v64 = *(v440[0] + 21);
        v65 = *(v440[0] + 22);
        v66 = *(v440[0] + 23);
        v67 = [*(v440[0] + 24) count];
        v25 = *(v327 + 32);
        v26 = *(v327 + 40);
        v60 = &v34;
        v61 = v455;
        __os_log_helper_16_2_30_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_66_8_66_8_0_8_0(v455, v328, v136, v131, v128, v129, v119, v117, v115, v113, v111, v104, v102, v99, v95, v91, v86, v82, v77, v70, v71, v63, v64, v65, v66, v67, v25, v26, v369, obj[0], v422);
        _os_log_impl(&dword_26ADE5000, v134, v135[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a full scan operation with with existing scan results (results: %p, error: %{public}@), using scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v61, 0x12Eu);
        MEMORY[0x277D82BD8](v62);
        if (v347)
        {
          MEMORY[0x277D82BD8](v348);
        }

        MEMORY[0x277D82BD8](v75);
        MEMORY[0x277D82BD8](v76);
        MEMORY[0x277D82BD8](v79);
        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](v85);
        MEMORY[0x277D82BD8](v88);
        MEMORY[0x277D82BD8](v90);
        MEMORY[0x277D82BD8](v94);
        MEMORY[0x277D82BD8](v98);
        MEMORY[0x277D82BD8](v102);
        if (v355)
        {
          MEMORY[0x277D82BD8](v356);
        }

        if (v357)
        {
          MEMORY[0x277D82BD8](v358);
        }

        if (v359)
        {
          MEMORY[0x277D82BD8](v360);
        }

        MEMORY[0x277D82BD8](v110);
        MEMORY[0x277D82BD8](v111);
        MEMORY[0x277D82BD8](v113);
        MEMORY[0x277D82BD8](v115);
        MEMORY[0x277D82BD8](v117);
        if (v361)
        {
          MEMORY[0x277D82BD8](v362);
        }

        if (v363)
        {
          MEMORY[0x277D82BD8](v364);
        }

        MEMORY[0x277D82BD8](v125);
        MEMORY[0x277D82BD8](v127);
        MEMORY[0x277D82BD8](v130);
        objc_storeStrong(&v346, 0);
        objc_storeStrong(&v349, 0);
        objc_storeStrong(&v350, 0);
        objc_storeStrong(&v351, 0);
        objc_storeStrong(&v352, 0);
        objc_storeStrong(&v353, 0);
        objc_storeStrong(&v354, 0);
        objc_storeStrong(&v365, 0);
        objc_storeStrong(&v366, 0);
      }

      objc_storeStrong(&v368, 0);
      v345[0] = 0;
      v345[1] = 0;
      v344 = 0uLL;
      v59 = +[SUUILoggingContext statefulUILogger];
      v57 = v59;
      v58 = [v57 oslog];
      v55 = v58;
      *&v56 = _SUUISignpostCreate(v55);
      *(&v56 + 1) = v27;
      v344 = v56;
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v57);
      if (v344)
      {
        v54 = +[SUUILoggingContext statefulUILogger];
        v52 = v54;
        v53 = [v52 oslog];
        v343 = v53;
        MEMORY[0x277D82BD8](v52);
        v342 = 1;
        v341 = v344;
        if (v344 && v341 != -1 && os_signpost_enabled(v343))
        {
          v48 = v343;
          *v49 = v342;
          spid = v341;
          v28 = *(v327 + 32) != 0;
          v29 = *(v327 + 40) != 0;
          v51 = v454;
          __os_log_helper_16_2_3_4_2_4_2_8_66(v454, v28, v29, v369);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v48, v49[0], spid, "FullScan", "Begins full scan /w 3rd party results  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v51, 0x18u);
        }

        objc_storeStrong(&v343, 0);
        v47 = +[SUUILoggingContext statefulUILogger];
        v45 = v47;
        v46 = [v45 oslog];
        v340 = v46;
        MEMORY[0x277D82BD8](v45);
        v339 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v340;
          *v43 = v339;
          v30 = *(v327 + 32) != 0;
          v31 = *(v327 + 40) != 0;
          v44 = v453;
          __os_log_helper_16_2_4_8_0_4_2_4_2_8_66(v453, v344, v30, v31, v369);
          _os_log_impl(&dword_26ADE5000, v42, v43[0], "BEGIN [%lld]: FullScan Begins full scan /w 3rd party results  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v44, 0x22u);
        }

        objc_storeStrong(&v340, 0);
      }

      *v326 = v344;
      v41 = [v440[0] environment];
      v39 = v41;
      v40 = [v39 scanOperationWithManager:v440[0] identifier:v369 completionQueue:*(v440[0] + 26)];
      v32 = v40;
      v33 = obj[0];
      obj[0] = v32;
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v39);
      objc_storeStrong(v440[0] + 21, obj[0]);
      v38 = [v440[0] contextForFullScanOperation:obj[0] withThirdPartyScanResults:*(v327 + 32) scanError:*(v327 + 40) forceReloadScanResults:1];
      v338 = v38;
      v35 = obj[0];
      v36 = v338;
      v330 = MEMORY[0x277D85DD0];
      v331 = -1073741824;
      v332 = 0;
      v333 = __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_444;
      v334 = &unk_279CC6680;
      v37 = v336;
      objc_copyWeak(v336, (v327 + 48));
      v336[1] = *(v327 + 56);
      v337 = *v326;
      v335 = &v430;
      [v35 checkForAvailableUpdatesWithContext:v36 completionHandler:?];
      objc_destroyWeak(v37);
      objc_storeStrong(&v338, 0);
      objc_storeStrong(&v369, 0);
      v435 = 0;
    }

    objc_storeStrong(&v422, 0);
    objc_storeStrong(obj, 0);
    _Block_object_dispose(&v430, 8);
  }

  objc_storeStrong(v440, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_443(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentRefreshScanOperation:0];
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_444(uint64_t a1, void *a2, void *a3)
{
  v99 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v91 = 0;
  objc_storeStrong(&v91, a3);
  v90[1] = a1;
  v90[0] = objc_loadWeakRetained((a1 + 40));
  v30 = 0;
  if (!v90[0])
  {
    v29 = +[SUUILoggingContext softwareUpdateUILogger];
    v89 = [v29 oslog];
    MEMORY[0x277D82BD8](v29);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      log = v89;
      v27 = type;
      v28 = NSStringFromSelector(*(a1 + 48));
      v87 = MEMORY[0x277D82BE0](v28);
      __os_log_helper_16_2_2_8_32_8_66(v98, "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]_block_invoke", v87);
      _os_log_error_impl(&dword_26ADE5000, log, v27, "%s: Self is nil in %{public}@. Stopping.", v98, 0x16u);
      MEMORY[0x277D82BD8](v28);
      objc_storeStrong(&v87, 0);
    }

    objc_storeStrong(&v89, 0);
    v86 = 1;
    v30 = 1;
  }

  if (v30)
  {
    v85 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(v90[0] + 26));
    if (v91)
    {
      v4 = *(a1 + 56);
      v48 = 0;
      v46 = 0;
      v16 = 0;
      if (v4)
      {
        v49 = +[SUUILoggingContext statefulUILogger];
        v48 = 1;
        v47 = [v49 oslog];
        v46 = 1;
        v16 = os_signpost_enabled(v47);
      }

      if (v46)
      {
        MEMORY[0x277D82BD8](v47);
      }

      if (v48)
      {
        MEMORY[0x277D82BD8](v49);
      }

      if (v16)
      {
        v45 = _SUUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64)) / 1000000000.0;
        v15 = +[SUUILoggingContext statefulUILogger];
        v44 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v43 = OS_SIGNPOST_EVENT;
        v42 = *(a1 + 56);
        if (v42 && v42 != -1 && os_signpost_enabled(v44))
        {
          if (v91)
          {
            v14 = [v91 code];
          }

          else
          {
            v14 = 0;
          }

          __os_log_helper_16_0_1_4_2(v95, v14);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v44, v43, v42, "FullScan", "Full scan /w 3rd-party results failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v95, 8u);
        }

        objc_storeStrong(&v44, 0);
        v13 = +[SUUILoggingContext statefulUILogger];
        oslog = [v13 oslog];
        MEMORY[0x277D82BD8](v13);
        v40 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 56);
          v12 = *&v45;
          if (v91)
          {
            v10 = [v91 code];
          }

          else
          {
            v10 = 0;
          }

          __os_log_helper_16_0_3_8_0_8_0_4_2(v94, v11, v12, v10);
          _os_log_impl(&dword_26ADE5000, oslog, v40, "EVENT [%lld] %fs: FullScan Full scan /w 3rd-party results failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v94, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
      }

      v39 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
      [(SUUIStatefulUIManagerFSMParam *)v39 setError:v91];
      [v90[0] handleFailedFullScan:v39];
      objc_storeStrong(&v39, 0);
    }

    else
    {
      v3 = *(a1 + 56);
      v83 = 0;
      v81 = 0;
      v25 = 0;
      if (v3)
      {
        v84 = +[SUUILoggingContext statefulUILogger];
        v83 = 1;
        v82 = [v84 oslog];
        v81 = 1;
        v25 = os_signpost_enabled(v82);
      }

      if (v81)
      {
        MEMORY[0x277D82BD8](v82);
      }

      if (v83)
      {
        MEMORY[0x277D82BD8](v84);
      }

      if (v25)
      {
        *&v80 = _SUUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64)) / 1000000000.0;
        v24 = +[SUUILoggingContext statefulUILogger];
        v79 = [v24 oslog];
        MEMORY[0x277D82BD8](v24);
        v78 = OS_SIGNPOST_EVENT;
        v77 = *(a1 + 56);
        if (v77 && v77 != -1 && os_signpost_enabled(v79))
        {
          v75 = 0;
          v73 = 0;
          v71 = 0;
          if (location[0] && (v76 = [location[0] preferredDescriptor], v75 = 1, v76))
          {
            v74 = [location[0] preferredDescriptor];
            v73 = 1;
            v72 = [v74 updateName];
            v71 = 1;
            v23 = v72;
          }

          else
          {
            v23 = @"N/A";
          }

          v69 = 0;
          v67 = 0;
          v65 = 0;
          if (location[0] && (v70 = [location[0] alternateDescriptor], v69 = 1, v70))
          {
            v68 = [location[0] alternateDescriptor];
            v67 = 1;
            v66 = [v68 updateName];
            v65 = 1;
            v22 = v66;
          }

          else
          {
            v22 = @"N/A";
          }

          __os_log_helper_16_2_2_8_66_8_66(v97, v23, v22);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v79, v78, v77, "FullScan", "Full scan /w 3rd-party results finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v97, 0x16u);
          if (v65)
          {
            MEMORY[0x277D82BD8](v66);
          }

          if (v67)
          {
            MEMORY[0x277D82BD8](v68);
          }

          if (v69)
          {
            MEMORY[0x277D82BD8](v70);
          }

          if (v71)
          {
            MEMORY[0x277D82BD8](v72);
          }

          if (v73)
          {
            MEMORY[0x277D82BD8](v74);
          }

          if (v75)
          {
            MEMORY[0x277D82BD8](v76);
          }
        }

        objc_storeStrong(&v79, 0);
        v21 = +[SUUILoggingContext statefulUILogger];
        v64 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v63 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 56);
          v20 = v80;
          v61 = 0;
          v59 = 0;
          v57 = 0;
          if (location[0] && (v62 = [location[0] preferredDescriptor], v61 = 1, v62))
          {
            v60 = [location[0] preferredDescriptor];
            v59 = 1;
            v58 = [v60 updateName];
            v57 = 1;
            v18 = v58;
          }

          else
          {
            v18 = @"N/A";
          }

          v55 = 0;
          v53 = 0;
          v51 = 0;
          if (location[0] && (v56 = [location[0] alternateDescriptor], v55 = 1, v56))
          {
            v54 = [location[0] alternateDescriptor];
            v53 = 1;
            v52 = [v54 updateName];
            v51 = 1;
            v17 = v52;
          }

          else
          {
            v17 = @"N/A";
          }

          __os_log_helper_16_2_4_8_0_8_0_8_66_8_66(v96, v19, v20, v18, v17);
          _os_log_impl(&dword_26ADE5000, v64, v63, "EVENT [%lld] %fs: FullScan Full scan /w 3rd-party results finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v96, 0x2Au);
          if (v51)
          {
            MEMORY[0x277D82BD8](v52);
          }

          if (v53)
          {
            MEMORY[0x277D82BD8](v54);
          }

          if (v55)
          {
            MEMORY[0x277D82BD8](v56);
          }

          if (v57)
          {
            MEMORY[0x277D82BD8](v58);
          }

          if (v59)
          {
            MEMORY[0x277D82BD8](v60);
          }

          if (v61)
          {
            MEMORY[0x277D82BD8](v62);
          }
        }

        objc_storeStrong(&v64, 0);
      }

      v50 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
      [(SUUIStatefulUIManagerFSMParam *)v50 setFullScanResults:location[0]];
      [v90[0] handleFullScanResults:v50];
      objc_storeStrong(&v50, 0);
    }

    if (*(a1 + 56))
    {
      v38 = _SUUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64)) / 1000000000.0;
      v9 = +[SUUILoggingContext statefulUILogger];
      v37 = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v36 = 2;
      v35 = *(a1 + 56);
      if (v35 && v35 != -1 && os_signpost_enabled(v37))
      {
        v6 = v37;
        v7 = v36;
        v8 = v35;
        __os_log_helper_16_0_0(v34);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v6, v7, v8, "FullScan", "", v34, 2u);
      }

      objc_storeStrong(&v37, 0);
      v5 = +[SUUILoggingContext statefulUILogger];
      v33 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v93, *(a1 + 56), *&v38);
        _os_log_impl(&dword_26ADE5000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FullScan ", v93, 0x16u);
      }

      objc_storeStrong(&v33, 0);
    }

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      if (*(*(*(*(a1 + 32) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 32) + 8) + 24));
      }

      free(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v85 = 0;
  }

  objc_storeStrong(v90, 0);
  if (!v85)
  {
    v85 = 0;
  }

  objc_storeStrong(&v91, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)notifyFullScanResultsDelegates:(id)a3 andError:(id)a4
{
  v20 = self;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  objc_initWeak(&from, v20);
  v6 = [MEMORY[0x277D643F8] sharedCore];
  v5 = [(SUUIStatefulUIManager *)v20 delegateCallbackQueue];
  queue = [v6 selectDelegateCallbackQueue:?];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __65__SUUIStatefulUIManager_notifyFullScanResultsDelegates_andError___block_invoke;
  v12 = &unk_279CC62A0;
  objc_copyWeak(v15, &from);
  v15[1] = v19;
  v13 = MEMORY[0x277D82BE0](location);
  v14 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v15);
  objc_destroyWeak(&from);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

void __65__SUUIStatefulUIManager_notifyFullScanResultsDelegates_andError___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v32[2] = a1;
  v32[1] = a1;
  v32[0] = objc_loadWeakRetained((a1 + 48));
  v17 = 0;
  if (!v32[0])
  {
    v16 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v14 = type;
      v15 = NSStringFromSelector(*(a1 + 56));
      v29 = MEMORY[0x277D82BE0](v15);
      __os_log_helper_16_2_2_8_32_8_66(v35, "[SUUIStatefulUIManager notifyFullScanResultsDelegates:andError:]_block_invoke", v29);
      _os_log_error_impl(&dword_26ADE5000, log, v14, "%s: Self is nil in %{public}@. Stopping.", v35, 0x16u);
      MEMORY[0x277D82BD8](v15);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&oslog, 0);
    v28 = 1;
    v17 = 1;
  }

  if (v17)
  {
    v27 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](*(v32[0] + 29));
    v12 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(__b[1] + 8 * v9);
        v24 = MEMORY[0x26D66ADC0](v26);
        if (v24)
        {
          (*(v24 + 2))(v24, *(a1 + 32), *(a1 + 40));
          v23 = 0;
        }

        else
        {
          v22 = 0;
        }

        objc_storeStrong(&v24, 0);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    memset(v20, 0, sizeof(v20));
    v5 = MEMORY[0x277D82BE0](*(v32[0] + 30));
    v6 = [v5 countByEnumeratingWithState:v20 objects:v33 count:16];
    if (v6)
    {
      v2 = *v20[2];
      v3 = 0;
      v4 = v6;
      while (1)
      {
        v1 = v3;
        if (*v20[2] != v2)
        {
          objc_enumerationMutation(v5);
        }

        v21 = *(v20[1] + 8 * v3);
        v19 = MEMORY[0x26D66ADC0](v21);
        if (v19)
        {
          (*(v19 + 2))(v19, *(a1 + 32), *(a1 + 40));
        }

        objc_storeStrong(&v19, 0);
        ++v3;
        if (v1 + 1 >= v4)
        {
          v3 = 0;
          v4 = [v5 countByEnumeratingWithState:v20 objects:v33 count:16];
          if (!v4)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v5);
    [*(v32[0] + 29) removeAllObjects];
    [*(v32[0] + 30) removeAllObjects];
    v27 = 0;
  }

  objc_storeStrong(v32, 0);
  *MEMORY[0x277D85DE8];
}

- (void)performRefreshScan:(id)a3
{
  v14 = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  objc_initWeak(&v11, v14);
  queue = v14->_operationsQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __44__SUUIStatefulUIManager_performRefreshScan___block_invoke;
  v8 = &unk_279CC6368;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __44__SUUIStatefulUIManager_performRefreshScan___block_invoke(id *a1)
{
  v155 = a1;
  v156 = "[SUUIStatefulUIManager performRefreshScan:]_block_invoke";
  v227 = *MEMORY[0x277D85DE8];
  v218[2] = a1;
  v218[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v218[0] = WeakRetained;
  v154 = 0;
  if (!WeakRetained)
  {
    v153 = +[SUUILoggingContext softwareUpdateUILogger];
    v151 = v153;
    v152 = [v151 oslog];
    oslog = v152;
    MEMORY[0x277D82BD8](v151);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v149 = type;
      v150 = NSStringFromSelector(v155[6]);
      v147 = v150;
      location = MEMORY[0x277D82BE0](v147);
      buf = v226;
      __os_log_helper_16_2_2_8_32_8_66(v226, v156, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v226, 0x16u);
      MEMORY[0x277D82BD8](v147);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v214 = 1;
    v154 = 1;
  }

  if (v154)
  {
    v213 = 1;
  }

  else
  {
    v208 = 0;
    v209 = &v208;
    v210 = 0x20000000;
    v211 = 32;
    v212 = 0;
    v145 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v206 = v145;
    if (v145)
    {
      v205 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v1 = v206[1].opaque[0];
      v206[1].opaque[0] = v205;
      MEMORY[0x277D82BD8](v1);
    }

    else
    {
      v144 = +[SUUILoggingContext softwareUpdateUILogger];
      v142 = v144;
      v143 = [v142 oslog];
      v204 = v143;
      MEMORY[0x277D82BD8](v142);
      v203 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
      {
        v139 = v204;
        *v140 = v203;
        v141 = v202;
        __os_log_helper_16_0_0(v202);
        _os_log_error_impl(&dword_26ADE5000, v139, v140[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshScan", v202, 2u);
      }

      objc_storeStrong(&v204, 0);
    }

    obj[2] = v206;
    state = v206;
    if (v206)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    obj[1] = state;
    v209[3] = state;
    v138 = [v218[0] currentRefreshScanOperation];
    obj[0] = v138;
    v137 = [v218[0] preferredStatefulDescriptor];
    v200 = v137;
    v136 = [v218[0] alternateStatefulDescriptor];
    v199 = v136;
    v135 = [v218[0] scanError];
    v198 = v135;
    v134 = [MEMORY[0x277CCAD78] UUID];
    v132 = v134;
    v133 = [v132 UUIDString];
    v197 = v133;
    MEMORY[0x277D82BD8](v132);
    v131 = +[SUUILoggingContext statefulUILogger];
    v129 = v131;
    v130 = [v129 oslog];
    v196 = v130;
    MEMORY[0x277D82BD8](v129);
    v195 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v125 = v196;
      *v126 = v195;
      v127 = v218[0];
      aClass = objc_opt_class();
      v124 = NSStringFromClass(aClass);
      v121 = v124;
      v122 = MEMORY[0x277D82BE0](v121);
      v194 = v122;
      v123 = SUUIStatefulUIStateToString(*(v218[0] + 5));
      v118 = v123;
      v119 = MEMORY[0x277D82BE0](v118);
      v193 = v119;
      v120 = [v218[0] currentState];
      v191 = 0;
      v189 = 0;
      v117 = [v218[0] delegate];
      v116 = v117;
      if (v116)
      {
        v115 = [v218[0] delegate];
        v192 = v115;
        v191 = 1;
        v114 = objc_opt_class();
        v113 = NSStringFromClass(v114);
        v190 = v113;
        v189 = 1;
        v112 = v190;
      }

      else
      {
        v112 = @"(null)";
      }

      v110 = v112;
      v111 = [v218[0] delegate];
      v108 = v111;
      v109 = [v218[0] scanError];
      v106 = v109;
      v107 = [v218[0] preferredStatefulDescriptor];
      v104 = v107;
      v105 = [v218[0] alternateStatefulDescriptor];
      v102 = v105;
      v187 = 0;
      v185 = 0;
      v183 = 0;
      v103 = [v218[0] currentDownload];
      v101 = v103;
      if (v101)
      {
        v100 = [v218[0] currentDownload];
        v188 = v100;
        v187 = 1;
        v99 = [v188 descriptor];
        v186 = v99;
        v185 = 1;
        v98 = [v186 updateName];
        v184 = v98;
        v183 = 1;
        v97 = v184;
      }

      else
      {
        v97 = @"(null)";
      }

      v95 = v97;
      v96 = [v218[0] currentDownload];
      v93 = v96;
      v94 = [v218[0] currentUpdateOperationType];
      v92 = SUUIUpdateContinuousOperationTypeToString(v94);
      v89 = v92;
      v90 = MEMORY[0x277D82BE0](v89);
      v182 = v90;
      v91 = [v218[0] isTargetedUpdateScheduledForAutoInstall];
      v222 = v91;
      if (v91)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      v88 = v2;
      v3 = v2;
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v181 = v86;
      v87 = [v218[0] hidingPreferredDescriptor];
      v221 = v87;
      if (v87)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v84 = v4;
      v5 = v4;
      v81 = v84;
      v82 = MEMORY[0x277D82BE0](v81);
      v180 = v82;
      v83 = [v218[0] hiddenPreferredStatefulDescriptor];
      v79 = v83;
      v80 = [v79 updateName];
      v76 = v80;
      v77 = MEMORY[0x277D82BE0](v76);
      v179 = v77;
      v78 = [v218[0] hidingAlternateDescriptor];
      v220 = v78;
      if (v78)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v75 = v6;
      v7 = v6;
      v72 = v75;
      v73 = MEMORY[0x277D82BE0](v72);
      v178 = v73;
      v74 = [v218[0] hiddenAlternateStatefulDescriptor];
      v70 = v74;
      v71 = [v70 updateName];
      v67 = v71;
      v68 = MEMORY[0x277D82BE0](v67);
      v177 = v68;
      v175 = 0;
      v69 = [v218[0] enrolledBetaProgram];
      v66 = v69;
      if (v66)
      {
        v65 = [v218[0] enrolledBetaProgram];
        v176 = v65;
        v175 = 1;
        v64 = [v176 programID];
        v63 = v64;
      }

      else
      {
        v63 = 0;
      }

      v61 = v63;
      v62 = [*(v218[0] + 15) count];
      v60 = [v218[0] canEnrollInBetaUpdates];
      v219 = v60;
      if (v60)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v59 = v8;
      v9 = v8;
      v53 = v59;
      v54 = MEMORY[0x277D82BE0](v53);
      v174 = v54;
      v55 = *(v218[0] + 21);
      v56 = *(v218[0] + 22);
      v57 = *(v218[0] + 23);
      v58 = [*(v218[0] + 24) count];
      v51 = v197;
      v52 = [v218[0] currentFullScanOperation];
      v50 = v52;
      v48 = &v13;
      v49 = v225;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v225, v156, v127, v122, v119, v120, v110, v108, v106, v104, v102, v95, v93, v90, v86, v82, v77, v73, v68, v61, v62, v54, v55, v56, v57, v58, v197, v50, obj[0]);
      _os_log_impl(&dword_26ADE5000, v125, v126[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning to refresh the current scan results with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v49, 0x11Au);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v53);
      if (v175)
      {
        MEMORY[0x277D82BD8](v176);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v93);
      if (v183)
      {
        MEMORY[0x277D82BD8](v184);
      }

      if (v185)
      {
        MEMORY[0x277D82BD8](v186);
      }

      if (v187)
      {
        MEMORY[0x277D82BD8](v188);
      }

      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v108);
      if (v189)
      {
        MEMORY[0x277D82BD8](v190);
      }

      if (v191)
      {
        MEMORY[0x277D82BD8](v192);
      }

      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v121);
      objc_storeStrong(&v174, 0);
      objc_storeStrong(&v177, 0);
      objc_storeStrong(&v178, 0);
      objc_storeStrong(&v179, 0);
      objc_storeStrong(&v180, 0);
      objc_storeStrong(&v181, 0);
      objc_storeStrong(&v182, 0);
      objc_storeStrong(&v193, 0);
      objc_storeStrong(&v194, 0);
    }

    objc_storeStrong(&v196, 0);
    v173 = 0uLL;
    v172 = 0uLL;
    v47 = +[SUUILoggingContext statefulUILogger];
    v45 = v47;
    v46 = [v45 oslog];
    v43 = v46;
    *&v44 = _SUUISignpostCreate(v43);
    *(&v44 + 1) = v10;
    v172 = v44;
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v45);
    if (v172)
    {
      v42 = +[SUUILoggingContext statefulUILogger];
      v40 = v42;
      v41 = [v40 oslog];
      v171 = v41;
      MEMORY[0x277D82BD8](v40);
      v170 = 1;
      v169 = v172;
      if (v172 && v169 != -1 && os_signpost_enabled(v171))
      {
        v36 = v171;
        *v37 = v170;
        spid = v169;
        v39 = 1;
        if (!v200)
        {
          v39 = v199 != 0;
        }

        v35 = v224;
        __os_log_helper_16_2_3_4_2_4_2_8_66(v224, v39, v198 != 0, v197);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v36, v37[0], spid, "RefreshScan", "Begins refresh scan  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v35, 0x18u);
      }

      objc_storeStrong(&v171, 0);
      v34 = +[SUUILoggingContext statefulUILogger];
      v32 = v34;
      v33 = [v32 oslog];
      v168 = v33;
      MEMORY[0x277D82BD8](v32);
      v167 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v168;
        *v29 = v167;
        v30 = v172;
        v31 = 1;
        if (!v200)
        {
          v31 = v199 != 0;
        }

        v27 = v223;
        __os_log_helper_16_2_4_8_0_4_2_4_2_8_66(v223, v30, v31, v198 != 0, v197);
        _os_log_impl(&dword_26ADE5000, v28, v29[0], "BEGIN [%lld]: RefreshScan Begins refresh scan  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v27, 0x22u);
      }

      objc_storeStrong(&v168, 0);
    }

    v173 = v172;
    v26 = [v218[0] environment];
    v24 = v26;
    v25 = [v24 scanOperationWithManager:v218[0] identifier:v197 completionQueue:*(v218[0] + 26)];
    v11 = v25;
    v12 = obj[0];
    obj[0] = v11;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v24);
    objc_storeStrong(v218[0] + 22, obj[0]);
    v23 = [v218[0] contextForRefreshScanOperation:obj[0] withPreviouslyDiscoveredDownload:0 encounteredError:?];
    v166 = v23;
    v21 = obj[0];
    v22 = [v200 descriptor];
    v19 = v22;
    v20 = [v199 descriptor];
    v16 = v20;
    v17 = v166;
    v158 = MEMORY[0x277D85DD0];
    v159 = -1073741824;
    v160 = 0;
    v161 = __44__SUUIStatefulUIManager_performRefreshScan___block_invoke_445;
    v162 = &unk_279CC66A8;
    v18 = v164;
    objc_copyWeak(v164, v155 + 5);
    v15 = &v158;
    v164[1] = v155[6];
    v165 = v173;
    v14 = v163;
    v163[0] = MEMORY[0x277D82BE0](v155[4]);
    v163[1] = &v208;
    [v21 refreshScanResultsWithPreferredUpdate:v19 alternateUpdate:v16 context:v17 completionHandler:v15];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v19);
    objc_storeStrong(v14, 0);
    objc_destroyWeak(v18);
    objc_storeStrong(&v166, 0);
    objc_storeStrong(&v197, 0);
    objc_storeStrong(&v198, 0);
    objc_storeStrong(&v199, 0);
    objc_storeStrong(&v200, 0);
    objc_storeStrong(obj, 0);
    _Block_object_dispose(&v208, 8);
    v213 = 0;
  }

  objc_storeStrong(v218, 0);
  *MEMORY[0x277D85DE8];
}

void __44__SUUIStatefulUIManager_performRefreshScan___block_invoke_445(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v63 = 0;
  objc_storeStrong(&v63, a3);
  v62[1] = a1;
  v62[0] = objc_loadWeakRetained((a1 + 48));
  v27 = 0;
  if (!v62[0])
  {
    v26 = +[SUUILoggingContext softwareUpdateUILogger];
    v61 = [v26 oslog];
    MEMORY[0x277D82BD8](v26);
    v60 = 16;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      log = v61;
      type = v60;
      v25 = NSStringFromSelector(*(a1 + 56));
      v59 = MEMORY[0x277D82BE0](v25);
      __os_log_helper_16_2_2_8_32_8_66(v69, "[SUUIStatefulUIManager performRefreshScan:]_block_invoke", v59);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v69, 0x16u);
      MEMORY[0x277D82BD8](v25);
      objc_storeStrong(&v59, 0);
    }

    objc_storeStrong(&v61, 0);
    v58 = 1;
    v27 = 1;
  }

  if (v27)
  {
    v57 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(v62[0] + 26));
    if (v63)
    {
      v4 = *(a1 + 64);
      v44 = 0;
      v42 = 0;
      v16 = 0;
      if (v4)
      {
        v45 = +[SUUILoggingContext statefulUILogger];
        v44 = 1;
        v43 = [v45 oslog];
        v42 = 1;
        v16 = os_signpost_enabled(v43);
      }

      if (v42)
      {
        MEMORY[0x277D82BD8](v43);
      }

      if (v44)
      {
        MEMORY[0x277D82BD8](v45);
      }

      if (v16)
      {
        v41 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v15 = +[SUUILoggingContext statefulUILogger];
        v40 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v39 = OS_SIGNPOST_EVENT;
        v38 = *(a1 + 64);
        if (v38 && v38 != -1 && os_signpost_enabled(v40))
        {
          if (v63)
          {
            v14 = [v63 code];
          }

          else
          {
            v14 = 0;
          }

          __os_log_helper_16_0_1_4_2(v67, v14);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v40, v39, v38, "RefreshScan", "Refresh scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v67, 8u);
        }

        objc_storeStrong(&v40, 0);
        v13 = +[SUUILoggingContext statefulUILogger];
        oslog = [v13 oslog];
        MEMORY[0x277D82BD8](v13);
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 64);
          v12 = *&v41;
          if (v63)
          {
            v10 = [v63 code];
          }

          else
          {
            v10 = 0;
          }

          __os_log_helper_16_0_3_8_0_8_0_4_2(v66, v11, v12, v10);
          _os_log_impl(&dword_26ADE5000, oslog, v36, "EVENT [%lld] %fs: RefreshScan Refresh scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v66, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
      }

      [v62[0] setScanError:v63];
      [*(a1 + 32) setError:v63];
      [*(v62[0] + 25) postEvent:@"RefreshScanResultsFailed" withInfo:*(a1 + 32)];
    }

    else
    {
      v3 = *(a1 + 64);
      v55 = 0;
      v53 = 0;
      v22 = 0;
      if (v3)
      {
        v56 = +[SUUILoggingContext statefulUILogger];
        v55 = 1;
        v54 = [v56 oslog];
        v53 = 1;
        v22 = os_signpost_enabled(v54);
      }

      if (v53)
      {
        MEMORY[0x277D82BD8](v54);
      }

      if (v55)
      {
        MEMORY[0x277D82BD8](v56);
      }

      if (v22)
      {
        v52 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v21 = +[SUUILoggingContext statefulUILogger];
        v51 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v50 = OS_SIGNPOST_EVENT;
        v49 = *(a1 + 64);
        if (v49 && v49 != -1 && os_signpost_enabled(v51))
        {
          v18 = v51;
          v19 = v50;
          spid = v49;
          __os_log_helper_16_0_0(v48);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v18, v19, spid, "RefreshScan", "Refresh scan finished successfully", v48, 2u);
        }

        objc_storeStrong(&v51, 0);
        v17 = +[SUUILoggingContext statefulUILogger];
        v47 = [v17 oslog];
        MEMORY[0x277D82BD8](v17);
        v46 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_8_0_8_0(v68, *(a1 + 64), *&v52);
          _os_log_impl(&dword_26ADE5000, v47, v46, "EVENT [%lld] %fs: RefreshScan Refresh scan finished successfully", v68, 0x16u);
        }

        objc_storeStrong(&v47, 0);
      }

      [*(a1 + 32) setRefreshScanResults:location[0]];
      [v62[0] handleRefreshScanResults:*(a1 + 32)];
    }

    if (*(a1 + 64))
    {
      v35 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
      v9 = +[SUUILoggingContext statefulUILogger];
      v34 = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v33 = 2;
      v32 = *(a1 + 64);
      if (v32 && v32 != -1 && os_signpost_enabled(v34))
      {
        v6 = v34;
        v7 = v33;
        v8 = v32;
        __os_log_helper_16_0_0(v31);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v6, v7, v8, "RefreshScan", "", v31, 2u);
      }

      objc_storeStrong(&v34, 0);
      v5 = +[SUUILoggingContext statefulUILogger];
      v30 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v65, *(a1 + 64), *&v35);
        _os_log_impl(&dword_26ADE5000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RefreshScan ", v65, 0x16u);
      }

      objc_storeStrong(&v30, 0);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (*(*(*(*(a1 + 40) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 40) + 8) + 24));
      }

      free(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v57 = 0;
  }

  objc_storeStrong(v62, 0);
  if (!v57)
  {
    v57 = 0;
  }

  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)notifyRefreshScanResultsDelegates:(id)a3 andError:(id)a4
{
  v20 = self;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  objc_initWeak(&from, v20);
  v6 = [MEMORY[0x277D643F8] sharedCore];
  v5 = [(SUUIStatefulUIManager *)v20 delegateCallbackQueue];
  queue = [v6 selectDelegateCallbackQueue:?];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __68__SUUIStatefulUIManager_notifyRefreshScanResultsDelegates_andError___block_invoke;
  v12 = &unk_279CC62A0;
  objc_copyWeak(v15, &from);
  v15[1] = v19;
  v13 = MEMORY[0x277D82BE0](location);
  v14 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v15);
  objc_destroyWeak(&from);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

void __68__SUUIStatefulUIManager_notifyRefreshScanResultsDelegates_andError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v21[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v9 = NSStringFromSelector(*(a1 + 56));
      v18 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUUIStatefulUIManager notifyRefreshScanResultsDelegates:andError:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v16 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](*(v21[0] + 30));
    v6 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
    if (v6)
    {
      v2 = *__b[2];
      v3 = 0;
      v4 = v6;
      while (1)
      {
        v1 = v3;
        if (*__b[2] != v2)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(__b[1] + 8 * v3);
        v13 = MEMORY[0x26D66ADC0](v15);
        if (v13)
        {
          (*(v13 + 2))(v13, *(a1 + 32), *(a1 + 40));
        }

        objc_storeStrong(&v13, 0);
        ++v3;
        if (v1 + 1 >= v4)
        {
          v3 = 0;
          v4 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v4)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    [*(v21[0] + 30) removeAllObjects];
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handleFullScanResults:(id)a3
{
  v3 = MEMORY[0x28223BE20](self, a2, a3);
  v442 = &v461;
  v443 = "[SUUIStatefulUIManager handleFullScanResults:]";
  v535 = *MEMORY[0x277D85DE8];
  location[2] = v3;
  location[1] = v4;
  location[0] = 0;
  objc_storeStrong(location, v5);
  v441 = [location[0] fullScanResults];
  v518 = v441;
  v440 = +[SUUILoggingContext statefulUILogger];
  v438 = v440;
  v439 = [v438 oslog];
  v517 = v439;
  MEMORY[0x277D82BD8](v438);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v517, OS_LOG_TYPE_DEFAULT))
  {
    log = v442[81];
    *v435 = type;
    v436 = v442[85];
    v6 = v442[85];
    aClass = objc_opt_class();
    v433 = NSStringFromClass(aClass);
    v430 = v433;
    v7 = MEMORY[0x277D82BE0](v430);
    v8 = v442;
    v431 = v7;
    v442[79] = v7;
    v432 = SUUIStatefulUIStateToString(*(v8[85] + 5));
    v427 = v432;
    v9 = MEMORY[0x277D82BE0](v427);
    v10 = v442;
    v428 = v9;
    v442[78] = v9;
    v429 = [v10[85] currentState];
    v426 = [v442[85] delegate];
    v425 = v426;
    v513 = 0;
    v512 = 0;
    if (v425)
    {
      v424 = [v442[85] delegate];
      v442[77] = v424;
      v513 = 1;
      v423 = objc_opt_class();
      v422 = NSStringFromClass(v423);
      v11 = v422;
      v442[75] = v11;
      v512 = 1;
      v421 = v11;
    }

    else
    {
      v421 = @"(null)";
    }

    v419 = v421;
    v420 = [v442[85] delegate];
    v417 = v420;
    v418 = [v442[85] scanError];
    v415 = v418;
    v416 = [v442[85] preferredStatefulDescriptor];
    v413 = v416;
    v414 = [v442[85] alternateStatefulDescriptor];
    v411 = v414;
    v412 = [v442[85] currentDownload];
    v410 = v412;
    v511 = 0;
    v510 = 0;
    v509 = 0;
    if (v410)
    {
      v409 = [v442[85] currentDownload];
      v12 = v409;
      v442[73] = v12;
      v511 = 1;
      v408 = [v12 descriptor];
      v13 = v408;
      v442[71] = v13;
      v510 = 1;
      v407 = [v13 updateName];
      v14 = v407;
      v442[69] = v14;
      v509 = 1;
      v406 = v14;
    }

    else
    {
      v406 = @"(null)";
    }

    v404 = v406;
    v405 = [v442[85] currentDownload];
    v402 = v405;
    v403 = [v442[85] currentUpdateOperationType];
    v401 = SUUIUpdateContinuousOperationTypeToString(v403);
    v398 = v401;
    v15 = MEMORY[0x277D82BE0](v398);
    v16 = v442;
    v399 = v15;
    v442[67] = v15;
    v400 = [v16[85] isTargetedUpdateScheduledForAutoInstall];
    v531 = v400;
    if (v400)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v397 = v17;
    v18 = v17;
    v394 = v397;
    v19 = MEMORY[0x277D82BE0](v394);
    v20 = v442;
    v395 = v19;
    v442[66] = v19;
    v396 = [v20[85] hidingPreferredDescriptor];
    v530 = v396;
    if (v396)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v393 = v21;
    v22 = v21;
    v390 = v393;
    v23 = MEMORY[0x277D82BE0](v390);
    v24 = v442;
    v391 = v23;
    v442[65] = v23;
    v392 = [v24[85] hiddenPreferredStatefulDescriptor];
    v388 = v392;
    v389 = [v388 updateName];
    v385 = v389;
    v25 = MEMORY[0x277D82BE0](v385);
    v26 = v442;
    v386 = v25;
    v442[64] = v25;
    v387 = [v26[85] hidingAlternateDescriptor];
    v529 = v387;
    if (v387)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v384 = v27;
    v28 = v27;
    v381 = v384;
    v29 = MEMORY[0x277D82BE0](v381);
    v30 = v442;
    v382 = v29;
    v442[63] = v29;
    v383 = [v30[85] hiddenAlternateStatefulDescriptor];
    v379 = v383;
    v380 = [v379 updateName];
    v376 = v380;
    v31 = MEMORY[0x277D82BE0](v376);
    v32 = v442;
    v377 = v31;
    v442[62] = v31;
    v378 = [v32[85] enrolledBetaProgram];
    v375 = v378;
    v502 = 0;
    if (v375)
    {
      v374 = [v442[85] enrolledBetaProgram];
      v33 = v374;
      v442[61] = v33;
      v502 = 1;
      v373 = [v33 programID];
      v372 = v373;
    }

    else
    {
      v372 = 0;
    }

    v370 = v372;
    v371 = [*(v442[85] + 15) count];
    v369 = [v442[85] canEnrollInBetaUpdates];
    v528 = v369;
    if (v369)
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    v368 = v34;
    v35 = v34;
    v362 = v368;
    v36 = MEMORY[0x277D82BE0](v362);
    v37 = v442;
    v363 = v36;
    v442[59] = v36;
    v364 = *(v37[85] + 21);
    v365 = *(v37[85] + 22);
    v366 = *(v37[85] + 23);
    v367 = [*(v37[85] + 24) count];
    v361 = [v442[82] identifier];
    v360 = v361;
    v38 = v442[82];
    v358 = &v140;
    buf = v534;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v534, v443, v436, v431, v428, v429, v419, v417, v415, v413, v411, v404, v402, v399, v395, v391, v386, v382, v377, v370, v371, v363, v364, v365, v366, v367, v360, v38);
    _os_log_impl(&dword_26ADE5000, log, v435[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with ID: %{public}@.\nResults: %{public}@", buf, 0x110u);
    MEMORY[0x277D82BD8](v360);
    MEMORY[0x277D82BD8](v362);
    if (v502)
    {
      MEMORY[0x277D82BD8](v442[61]);
    }

    MEMORY[0x277D82BD8](v375);
    MEMORY[0x277D82BD8](v376);
    MEMORY[0x277D82BD8](v379);
    MEMORY[0x277D82BD8](v381);
    MEMORY[0x277D82BD8](v385);
    MEMORY[0x277D82BD8](v388);
    MEMORY[0x277D82BD8](v390);
    MEMORY[0x277D82BD8](v394);
    MEMORY[0x277D82BD8](v398);
    MEMORY[0x277D82BD8](v402);
    if (v509)
    {
      MEMORY[0x277D82BD8](v442[69]);
    }

    if (v510)
    {
      MEMORY[0x277D82BD8](v442[71]);
    }

    if (v511)
    {
      MEMORY[0x277D82BD8](v442[73]);
    }

    MEMORY[0x277D82BD8](v410);
    MEMORY[0x277D82BD8](v411);
    MEMORY[0x277D82BD8](v413);
    MEMORY[0x277D82BD8](v415);
    MEMORY[0x277D82BD8](v417);
    if (v512)
    {
      MEMORY[0x277D82BD8](v442[75]);
    }

    if (v513)
    {
      MEMORY[0x277D82BD8](v442[77]);
    }

    MEMORY[0x277D82BD8](v425);
    MEMORY[0x277D82BD8](v427);
    MEMORY[0x277D82BD8](v430);
    objc_storeStrong(&v501, 0);
    objc_storeStrong(&v503, 0);
    objc_storeStrong(&v504, 0);
    objc_storeStrong(&v505, 0);
    objc_storeStrong(&v506, 0);
    objc_storeStrong(&v507, 0);
    objc_storeStrong(&v508, 0);
    objc_storeStrong(&v514, 0);
    objc_storeStrong(&v515, 0);
  }

  objc_storeStrong(&v517, 0);
  objc_initWeak(&from, v442[85]);
  v357 = [v442[85] preferredStatefulDescriptor];
  v39 = v357;
  v40 = v442;
  v442[57] = v39;
  v356 = [v40[85] alternateStatefulDescriptor];
  v41 = v356;
  v42 = v442;
  v442[54] = v41;
  v355 = [v42[85] currentUpdateOperation];
  v43 = v355;
  v44 = v442;
  v442[53] = v43;
  v354 = [v44[85] scanError];
  v45 = v354;
  v46 = v442;
  v442[52] = v45;
  if (v46[53])
  {
    v47 = v442[82];
    v495 = 0;
    v353 = [v47 isEmptyScanResults];
    v352 = 0;
    if (v353)
    {
      v351 = [v442[82] currentDownload];
      v48 = v351;
      v442[51] = v48;
      v495 = 1;
      v352 = v48 == 0;
    }

    v350 = v352;
    if (v495)
    {
      MEMORY[0x277D82BD8](v442[51]);
    }

    if (v350)
    {
      v349 = +[SUUILoggingContext statefulUILogger];
      v347 = v349;
      v348 = [v347 oslog];
      v49 = v348;
      v50 = v347;
      v442[49] = v49;
      MEMORY[0x277D82BD8](v50);
      v493 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v442[49], OS_LOG_TYPE_DEFAULT))
      {
        v343 = v442[49];
        *v344 = v493;
        v345 = v442[85];
        v51 = v442[85];
        v346 = objc_opt_class();
        v342 = NSStringFromClass(v346);
        v339 = v342;
        v52 = MEMORY[0x277D82BE0](v339);
        v53 = v442;
        v340 = v52;
        v442[47] = v52;
        v341 = SUUIStatefulUIStateToString(*(v53[85] + 5));
        v336 = v341;
        v54 = MEMORY[0x277D82BE0](v336);
        v55 = v442;
        v337 = v54;
        v442[46] = v54;
        v338 = [v55[85] currentState];
        v56 = v442[85];
        v490 = 0;
        v489 = 0;
        v335 = [v56 delegate];
        v334 = v335;
        if (v334)
        {
          v333 = [v442[85] delegate];
          v57 = v333;
          v442[45] = v57;
          v490 = 1;
          v332 = objc_opt_class();
          v331 = NSStringFromClass(v332);
          v58 = v331;
          v442[43] = v58;
          v489 = 1;
          v330 = v58;
        }

        else
        {
          v330 = @"(null)";
        }

        v328 = v330;
        v329 = [v442[85] delegate];
        v326 = v329;
        v327 = [v442[85] scanError];
        v324 = v327;
        v325 = [v442[85] preferredStatefulDescriptor];
        v322 = v325;
        v323 = [v442[85] alternateStatefulDescriptor];
        v320 = v323;
        v59 = v442[85];
        v488 = 0;
        v487 = 0;
        v486 = 0;
        v321 = [v59 currentDownload];
        v319 = v321;
        if (v319)
        {
          v318 = [v442[85] currentDownload];
          v60 = v318;
          v442[41] = v60;
          v488 = 1;
          v317 = [v60 descriptor];
          v61 = v317;
          v442[39] = v61;
          v487 = 1;
          v316 = [v61 updateName];
          v62 = v316;
          v442[37] = v62;
          v486 = 1;
          v315 = v62;
        }

        else
        {
          v315 = @"(null)";
        }

        v313 = v315;
        v314 = [v442[85] currentDownload];
        v311 = v314;
        v312 = [v442[85] currentUpdateOperationType];
        v310 = SUUIUpdateContinuousOperationTypeToString(v312);
        v307 = v310;
        v63 = MEMORY[0x277D82BE0](v307);
        v64 = v442;
        v308 = v63;
        v442[35] = v63;
        v309 = [v64[85] isTargetedUpdateScheduledForAutoInstall];
        v527 = v309;
        if (v309)
        {
          v65 = @"YES";
        }

        else
        {
          v65 = @"NO";
        }

        v306 = v65;
        v66 = v65;
        v303 = v306;
        v67 = MEMORY[0x277D82BE0](v303);
        v68 = v442;
        v304 = v67;
        v442[34] = v67;
        v305 = [v68[85] hidingPreferredDescriptor];
        v526 = v305;
        if (v305)
        {
          v69 = @"YES";
        }

        else
        {
          v69 = @"NO";
        }

        v302 = v69;
        v70 = v69;
        v299 = v302;
        v71 = MEMORY[0x277D82BE0](v299);
        v72 = v442;
        v300 = v71;
        v442[33] = v71;
        v301 = [v72[85] hiddenPreferredStatefulDescriptor];
        v297 = v301;
        v298 = [v297 updateName];
        v294 = v298;
        v73 = MEMORY[0x277D82BE0](v294);
        v74 = v442;
        v295 = v73;
        v442[32] = v73;
        v296 = [v74[85] hidingAlternateDescriptor];
        v525 = v296;
        if (v296)
        {
          v75 = @"YES";
        }

        else
        {
          v75 = @"NO";
        }

        v293 = v75;
        v76 = v75;
        v290 = v293;
        v77 = MEMORY[0x277D82BE0](v290);
        v78 = v442;
        v291 = v77;
        v442[31] = v77;
        v292 = [v78[85] hiddenAlternateStatefulDescriptor];
        v288 = v292;
        v289 = [v288 updateName];
        v285 = v289;
        v79 = MEMORY[0x277D82BE0](v285);
        v80 = v442;
        v286 = v79;
        v442[30] = v79;
        v81 = v80[85];
        v479 = 0;
        v287 = [v81 enrolledBetaProgram];
        v284 = v287;
        if (v284)
        {
          v283 = [v442[85] enrolledBetaProgram];
          v82 = v283;
          v442[29] = v82;
          v479 = 1;
          v282 = [v82 programID];
          v281 = v282;
        }

        else
        {
          v281 = 0;
        }

        v279 = v281;
        v280 = [*(v442[85] + 15) count];
        v278 = [v442[85] canEnrollInBetaUpdates];
        v524 = v278;
        if (v278)
        {
          v83 = @"YES";
        }

        else
        {
          v83 = @"NO";
        }

        v277 = v83;
        v84 = v83;
        v271 = v277;
        v85 = MEMORY[0x277D82BE0](v271);
        v86 = v442;
        v272 = v85;
        v442[27] = v85;
        v273 = *(v86[85] + 21);
        v274 = *(v86[85] + 22);
        v275 = *(v86[85] + 23);
        v276 = [*(v86[85] + 24) count];
        v269 = &v140;
        v270 = v533;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v533, v443, v345, v340, v337, v338, v328, v326, v324, v322, v320, v313, v311, v308, v304, v300, v295, v291, v286, v279, v280, v272, v273, v274, v275, v276);
        _os_log_impl(&dword_26ADE5000, v343, v344[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded empty scan results - cancelling the currently active update operation", v270, 0xFCu);
        MEMORY[0x277D82BD8](v271);
        if (v479)
        {
          MEMORY[0x277D82BD8](v442[29]);
        }

        MEMORY[0x277D82BD8](v284);
        MEMORY[0x277D82BD8](v285);
        MEMORY[0x277D82BD8](v288);
        MEMORY[0x277D82BD8](v290);
        MEMORY[0x277D82BD8](v294);
        MEMORY[0x277D82BD8](v297);
        MEMORY[0x277D82BD8](v299);
        MEMORY[0x277D82BD8](v303);
        MEMORY[0x277D82BD8](v307);
        MEMORY[0x277D82BD8](v311);
        if (v486)
        {
          MEMORY[0x277D82BD8](v442[37]);
        }

        if (v487)
        {
          MEMORY[0x277D82BD8](v442[39]);
        }

        if (v488)
        {
          MEMORY[0x277D82BD8](v442[41]);
        }

        MEMORY[0x277D82BD8](v319);
        MEMORY[0x277D82BD8](v320);
        MEMORY[0x277D82BD8](v322);
        MEMORY[0x277D82BD8](v324);
        MEMORY[0x277D82BD8](v326);
        if (v489)
        {
          MEMORY[0x277D82BD8](v442[43]);
        }

        if (v490)
        {
          MEMORY[0x277D82BD8](v442[45]);
        }

        MEMORY[0x277D82BD8](v334);
        MEMORY[0x277D82BD8](v336);
        MEMORY[0x277D82BD8](v339);
        objc_storeStrong(&v478, 0);
        objc_storeStrong(&v480, 0);
        objc_storeStrong(&v481, 0);
        objc_storeStrong(&v482, 0);
        objc_storeStrong(&v483, 0);
        objc_storeStrong(&v484, 0);
        objc_storeStrong(&v485, 0);
        objc_storeStrong(&v491, 0);
        objc_storeStrong(&v492, 0);
      }

      objc_storeStrong(&v494, 0);
      v87 = v442;
      v267 = v442[53];
      v442[21] = MEMORY[0x277D85DD0];
      v475 = -1073741824;
      v476 = 0;
      v87[23] = __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke;
      v87[24] = &unk_279CC6610;
      v268 = v477;
      objc_copyWeak(v477, &from);
      v88 = v267;
      v442[26] = v442[84];
      [v88 cancel:v474];
      objc_destroyWeak(v268);
    }

    else
    {
      v265 = v442[57];
      v89 = v442[82];
      v473 = 0;
      v472 = 0;
      v471 = 0;
      v266 = [v89 preferredDescriptor];
      v263 = v266;
      v264 = [v265 isEqualToDescriptor:? includeDocumentationComparison:?];
      if (v264)
      {
        goto LABEL_80;
      }

      v261 = v442[57];
      v262 = [v442[82] alternateDescriptor];
      v90 = v262;
      v91 = v261;
      v442[20] = v90;
      v473 = 1;
      v260 = [v91 isEqualToDescriptor:? includeDocumentationComparison:?];
      v259 = 1;
      if (v260)
      {
LABEL_80:
        v257 = v442[54];
        v258 = [v442[82] preferredDescriptor];
        v92 = v258;
        v93 = v257;
        v442[18] = v92;
        v472 = 1;
        v256 = [v93 isEqualToDescriptor:? includeDocumentationComparison:?];
        v255 = 0;
        if ((v256 & 1) == 0)
        {
          v253 = v442[54];
          v254 = [v442[82] alternateDescriptor];
          v94 = v254;
          v95 = v253;
          v442[16] = v94;
          v471 = 1;
          v252 = [v95 isEqualToDescriptor:? includeDocumentationComparison:?];
          v255 = v252 ^ 1;
        }

        v259 = v255;
      }

      v251 = v259;
      if (v471)
      {
        MEMORY[0x277D82BD8](v442[16]);
      }

      if (v472)
      {
        MEMORY[0x277D82BD8](v442[18]);
      }

      if (v473)
      {
        MEMORY[0x277D82BD8](v442[20]);
      }

      MEMORY[0x277D82BD8](v263);
      if (v251)
      {
        v250 = +[SUUILoggingContext statefulUILogger];
        v248 = v250;
        v249 = [v248 oslog];
        v96 = v249;
        v97 = v248;
        v442[14] = v96;
        MEMORY[0x277D82BD8](v97);
        v469 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v442[14], OS_LOG_TYPE_DEFAULT))
        {
          v244 = v442[14];
          *v245 = v469;
          v246 = v442[85];
          v98 = v442[85];
          v247 = objc_opt_class();
          v243 = NSStringFromClass(v247);
          v240 = v243;
          v99 = MEMORY[0x277D82BE0](v240);
          v100 = v442;
          v241 = v99;
          v442[12] = v99;
          v242 = SUUIStatefulUIStateToString(*(v100[85] + 5));
          v237 = v242;
          v101 = MEMORY[0x277D82BE0](v237);
          v102 = v442;
          v238 = v101;
          v442[11] = v101;
          v239 = [v102[85] currentState];
          v103 = v442[85];
          v466 = 0;
          v465 = 0;
          v236 = [v103 delegate];
          v235 = v236;
          if (v235)
          {
            v234 = [v442[85] delegate];
            v104 = v234;
            v442[10] = v104;
            v466 = 1;
            v233 = objc_opt_class();
            v232 = NSStringFromClass(v233);
            v105 = v232;
            v442[8] = v105;
            v465 = 1;
            v231 = v105;
          }

          else
          {
            v231 = @"(null)";
          }

          v229 = v231;
          v230 = [v442[85] delegate];
          v227 = v230;
          v228 = [v442[85] scanError];
          v225 = v228;
          v226 = [v442[85] preferredStatefulDescriptor];
          v223 = v226;
          v224 = [v442[85] alternateStatefulDescriptor];
          v221 = v224;
          v106 = v442[85];
          v464 = 0;
          v463 = 0;
          v462 = 0;
          v222 = [v106 currentDownload];
          v220 = v222;
          if (v220)
          {
            v219 = [v442[85] currentDownload];
            v107 = v219;
            v442[6] = v107;
            v464 = 1;
            v218 = [v107 descriptor];
            v108 = v218;
            v442[4] = v108;
            v463 = 1;
            v217 = [v108 updateName];
            v109 = v217;
            v442[2] = v109;
            v462 = 1;
            v216 = v109;
          }

          else
          {
            v216 = @"(null)";
          }

          v214 = v216;
          v215 = [v442[85] currentDownload];
          v212 = v215;
          v213 = [v442[85] currentUpdateOperationType];
          v211 = SUUIUpdateContinuousOperationTypeToString(v213);
          v208 = v211;
          v110 = MEMORY[0x277D82BE0](v208);
          v111 = v442;
          v209 = v110;
          *v442 = v110;
          v210 = [v111[85] isTargetedUpdateScheduledForAutoInstall];
          v523 = v210;
          if (v210)
          {
            v112 = @"YES";
          }

          else
          {
            v112 = @"NO";
          }

          v207 = v112;
          v113 = v112;
          v204 = v207;
          v205 = MEMORY[0x277D82BE0](v204);
          v460 = v205;
          v206 = [v442[85] hidingPreferredDescriptor];
          v522 = v206;
          if (v206)
          {
            v114 = @"YES";
          }

          else
          {
            v114 = @"NO";
          }

          v203 = v114;
          v115 = v114;
          v200 = v203;
          v201 = MEMORY[0x277D82BE0](v200);
          v459 = v201;
          v202 = [v442[85] hiddenPreferredStatefulDescriptor];
          v198 = v202;
          v199 = [v198 updateName];
          v195 = v199;
          v196 = MEMORY[0x277D82BE0](v195);
          v458 = v196;
          v197 = [v442[85] hidingAlternateDescriptor];
          v521 = v197;
          if (v197)
          {
            v116 = @"YES";
          }

          else
          {
            v116 = @"NO";
          }

          v194 = v116;
          v117 = v116;
          v191 = v194;
          v192 = MEMORY[0x277D82BE0](v191);
          v457 = v192;
          v193 = [v442[85] hiddenAlternateStatefulDescriptor];
          v189 = v193;
          v190 = [v189 updateName];
          v186 = v190;
          v187 = MEMORY[0x277D82BE0](v186);
          v456 = v187;
          v118 = v442[85];
          v454 = 0;
          v188 = [v118 enrolledBetaProgram];
          v185 = v188;
          if (v185)
          {
            v184 = [v442[85] enrolledBetaProgram];
            v455 = v184;
            v454 = 1;
            v183 = [v455 programID];
            v182 = v183;
          }

          else
          {
            v182 = 0;
          }

          v180 = v182;
          v181 = [*(v442[85] + 15) count];
          v179 = [v442[85] canEnrollInBetaUpdates];
          v520 = v179;
          if (v179)
          {
            v119 = @"YES";
          }

          else
          {
            v119 = @"NO";
          }

          v178 = v119;
          v120 = v119;
          v172 = v178;
          v173 = MEMORY[0x277D82BE0](v172);
          v453 = v173;
          v174 = *(v442[85] + 21);
          v175 = *(v442[85] + 22);
          v176 = *(v442[85] + 23);
          v177 = [*(v442[85] + 24) count];
          v171 = [v442[82] preferredDescriptor];
          v169 = v171;
          v170 = [v169 updateName];
          v166 = v170;
          v167 = MEMORY[0x277D82BE0](v166);
          v452 = v167;
          v168 = [v442[82] alternateDescriptor];
          v164 = v168;
          v165 = [v164 updateName];
          v121 = v192;
          v122 = v196;
          v123 = v201;
          v124 = v205;
          v125 = v209;
          v126 = v212;
          v127 = v214;
          v128 = v221;
          v129 = v223;
          v130 = v225;
          v163 = v165;
          v451 = MEMORY[0x277D82BE0](v163);
          v161 = &v140;
          v162 = v532;
          __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v532, v443, v246, v241, v238, v239, v229, v227, v130, v129, v128, v127, v126, v125, v124, v123, v122, v121, v187, v180, v181, v173, v174, v175, v176, v177, v167, v451);
          _os_log_impl(&dword_26ADE5000, v244, v245[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded results that are different than the previously discovered results - cancelling the currently active update operation.\n\tresults.preferredDescriptor: %{public}@\n\tresults.alternateDescriptor: %{public}@", v162, 0x110u);
          MEMORY[0x277D82BD8](v163);
          MEMORY[0x277D82BD8](v164);
          MEMORY[0x277D82BD8](v166);
          MEMORY[0x277D82BD8](v169);
          MEMORY[0x277D82BD8](v172);
          if (v454)
          {
            MEMORY[0x277D82BD8](v455);
          }

          MEMORY[0x277D82BD8](v185);
          MEMORY[0x277D82BD8](v186);
          MEMORY[0x277D82BD8](v189);
          MEMORY[0x277D82BD8](v191);
          MEMORY[0x277D82BD8](v195);
          MEMORY[0x277D82BD8](v198);
          MEMORY[0x277D82BD8](v200);
          MEMORY[0x277D82BD8](v204);
          MEMORY[0x277D82BD8](v208);
          MEMORY[0x277D82BD8](v212);
          if (v462)
          {
            MEMORY[0x277D82BD8](v442[2]);
          }

          if (v463)
          {
            MEMORY[0x277D82BD8](v442[4]);
          }

          if (v464)
          {
            MEMORY[0x277D82BD8](v442[6]);
          }

          MEMORY[0x277D82BD8](v220);
          MEMORY[0x277D82BD8](v221);
          MEMORY[0x277D82BD8](v223);
          MEMORY[0x277D82BD8](v225);
          MEMORY[0x277D82BD8](v227);
          if (v465)
          {
            MEMORY[0x277D82BD8](v442[8]);
          }

          if (v466)
          {
            MEMORY[0x277D82BD8](v442[10]);
          }

          MEMORY[0x277D82BD8](v235);
          MEMORY[0x277D82BD8](v237);
          MEMORY[0x277D82BD8](v240);
          objc_storeStrong(&v451, 0);
          objc_storeStrong(&v452, 0);
          objc_storeStrong(&v453, 0);
          objc_storeStrong(&v456, 0);
          objc_storeStrong(&v457, 0);
          objc_storeStrong(&v458, 0);
          objc_storeStrong(&v459, 0);
          objc_storeStrong(&v460, 0);
          objc_storeStrong(&v461, 0);
          objc_storeStrong(&v467, 0);
          objc_storeStrong(&v468, 0);
        }

        objc_storeStrong(&v470, 0);
        v159 = v442[53];
        v445 = MEMORY[0x277D85DD0];
        v446 = -1073741824;
        v447 = 0;
        v448 = __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke_447;
        v449 = &unk_279CC6610;
        v160 = v450;
        objc_copyWeak(v450, &from);
        v450[1] = v442[84];
        [v159 cancel:&v445];
        objc_destroyWeak(v160);
      }
    }
  }

  v157 = v442[85];
  v158 = [v442[83] fullScanResults];
  v156 = v158;
  [v157 assignFullScanResults:?];
  MEMORY[0x277D82BD8](v156);
  v155 = [v442[85] preferredStatefulDescriptor];
  v131 = v155;
  v132 = v442[57];
  v442[57] = v131;
  MEMORY[0x277D82BD8](v132);
  v154 = [v442[85] alternateStatefulDescriptor];
  v133 = v154;
  v134 = v442[54];
  v442[54] = v133;
  MEMORY[0x277D82BD8](v134);
  v153 = [v442[85] currentUpdateOperation];
  v135 = v153;
  v136 = v442[53];
  v442[53] = v135;
  MEMORY[0x277D82BD8](v136);
  v152 = [v442[85] scanError];
  v137 = v152;
  v138 = v442[52];
  v442[52] = v137;
  MEMORY[0x277D82BD8](v138);
  if (v442[52])
  {
    v151 = [v442[52] traits];
    v149 = v151;
    v150 = [v149 noUpdateFound];
    MEMORY[0x277D82BD8](v149);
    if (v150)
    {
      [v442[85] clearPastScanResults];
    }

    [*(v442[85] + 25) postEvent:@"FullScanNoUpdateAvailable" withInfo:v442[83]];
    v444 = 1;
  }

  else
  {
    v148 = [v442[82] isEmptyScanResults];
    if (v148)
    {
      v145 = [v442[85] currentDownload];
      v143 = v145;
      v144 = 0;
      if (v143)
      {
        v139 = v442[57];
        v142 = 1;
        if (!v139)
        {
          v142 = v442[54] != 0;
        }

        v144 = v142;
      }

      v141 = v144;
      MEMORY[0x277D82BD8](v143);
      if (v141)
      {
        [v442[85] updateDescriptorsUsingScanResults:v442[82] andWithConcreteError:0];
        [*(v442[85] + 25) postEvent:@"FullScanUpdatesAvailable" withInfo:v442[83]];
        v444 = 1;
      }

      else
      {
        [v442[85] clearPastScanResults];
        [*(v442[85] + 25) postEvent:@"FullScanNoUpdateAvailable" withInfo:v442[83]];
        v444 = 0;
      }
    }

    else
    {
      [v442[85] assignDescriptorOfType:0 fromSearchResults:v442[82]];
      [v442[85] assignDescriptorOfType:1 fromSearchResults:v442[82]];
      [v442[85] setHiddenPreferredStatefulDescriptor:0];
      [v442[85] setHiddenAlternateStatefulDescriptor:0];
      [v442[85] setHidingPreferredDescriptor:0];
      [v442[85] setHidingAlternateDescriptor:0];
      v147 = [v442[85] currentDownload];
      v146 = v147;
      MEMORY[0x277D82BD8](v146);
      if (v146)
      {
        [v442[85] hideNonTargetedUpdateDescriptors];
      }

      [*(v442[85] + 25) postEvent:@"FullScanUpdatesAvailable" withInfo:v442[83]];
      v444 = 1;
    }
  }

  objc_storeStrong(&v496, 0);
  objc_storeStrong(&v497, 0);
  objc_storeStrong(&v498, 0);
  objc_storeStrong(&v499, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v518, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager handleFullScanResults:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentUpdateOperation:0];
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

void __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke_447(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager handleFullScanResults:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentUpdateOperation:0];
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handleFailedFullScan:(id)a3
{
  v121 = "[SUUIStatefulUIManager handleFailedFullScan:]";
  v176 = *MEMORY[0x277D85DE8];
  val = self;
  v167 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v120 = +[SUUILoggingContext statefulUILogger];
  v118 = v120;
  v119 = [v118 oslog];
  oslog = v119;
  MEMORY[0x277D82BD8](v118);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v115 = type;
    v116 = val;
    aClass = objc_opt_class();
    v113 = NSStringFromClass(aClass);
    v110 = v113;
    v111 = MEMORY[0x277D82BE0](v110);
    v163 = v111;
    v112 = SUUIStatefulUIStateToString(*(val + 5));
    v107 = v112;
    v108 = MEMORY[0x277D82BE0](v107);
    v162 = v108;
    v109 = [val currentState];
    v106 = [val delegate];
    v105 = v106;
    v160 = 0;
    v158 = 0;
    if (v105)
    {
      v104 = [val delegate];
      v161 = v104;
      v160 = 1;
      v103 = objc_opt_class();
      v102 = NSStringFromClass(v103);
      v159 = v102;
      v158 = 1;
      v101 = v159;
    }

    else
    {
      v101 = @"(null)";
    }

    v99 = v101;
    v100 = [val delegate];
    v97 = v100;
    v98 = [val scanError];
    v95 = v98;
    v96 = [val preferredStatefulDescriptor];
    v93 = v96;
    v94 = [val alternateStatefulDescriptor];
    v91 = v94;
    v92 = [val currentDownload];
    v90 = v92;
    v156 = 0;
    v154 = 0;
    v152 = 0;
    if (v90)
    {
      v89 = [val currentDownload];
      v157 = v89;
      v156 = 1;
      v88 = [v157 descriptor];
      v155 = v88;
      v154 = 1;
      v87 = [v155 updateName];
      v153 = v87;
      v152 = 1;
      v86 = v153;
    }

    else
    {
      v86 = @"(null)";
    }

    v84 = v86;
    v85 = [val currentDownload];
    v82 = v85;
    v83 = [val currentUpdateOperationType];
    v81 = SUUIUpdateContinuousOperationTypeToString(v83);
    v78 = v81;
    v79 = MEMORY[0x277D82BE0](v78);
    v151 = v79;
    v80 = [val isTargetedUpdateScheduledForAutoInstall];
    v172 = v80;
    if (v80)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v77 = v3;
    v4 = v3;
    v74 = v77;
    v75 = MEMORY[0x277D82BE0](v74);
    v150 = v75;
    v76 = [val hidingPreferredDescriptor];
    v171 = v76;
    if (v76)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v73 = v5;
    v6 = v5;
    v70 = v73;
    v71 = MEMORY[0x277D82BE0](v70);
    v149 = v71;
    v72 = [val hiddenPreferredStatefulDescriptor];
    v68 = v72;
    v69 = [v68 updateName];
    v65 = v69;
    v66 = MEMORY[0x277D82BE0](v65);
    v148 = v66;
    v67 = [val hidingAlternateDescriptor];
    v170 = v67;
    if (v67)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v64 = v7;
    v8 = v7;
    v61 = v64;
    v62 = MEMORY[0x277D82BE0](v61);
    v147 = v62;
    v63 = [val hiddenAlternateStatefulDescriptor];
    v59 = v63;
    v60 = [v59 updateName];
    v56 = v60;
    v57 = MEMORY[0x277D82BE0](v56);
    v146 = v57;
    v58 = [val enrolledBetaProgram];
    v55 = v58;
    v144 = 0;
    if (v55)
    {
      v54 = [val enrolledBetaProgram];
      v145 = v54;
      v144 = 1;
      v53 = [v145 programID];
      v52 = v53;
    }

    else
    {
      v52 = 0;
    }

    v50 = v52;
    v51 = [*(val + 15) count];
    v49 = [val canEnrollInBetaUpdates];
    v169 = v49;
    if (v49)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v48 = v9;
    v10 = v9;
    v42 = v48;
    v43 = MEMORY[0x277D82BE0](v42);
    v143 = v43;
    v44 = *(val + 21);
    v45 = *(val + 22);
    v46 = *(val + 23);
    v47 = [*(val + 24) count];
    v41 = [location error];
    v40 = v41;
    v38 = &v12;
    buf = v175;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v175, v121, v116, v111, v108, v109, v99, v97, v95, v93, v91, v84, v82, v79, v75, v71, v66, v62, v57, v50, v51, v43, v44, v45, v46, v47, v40);
    _os_log_impl(&dword_26ADE5000, log, v115[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with error: %{public}@", buf, 0x106u);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v42);
    if (v144)
    {
      MEMORY[0x277D82BD8](v145);
    }

    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v82);
    if (v152)
    {
      MEMORY[0x277D82BD8](v153);
    }

    if (v154)
    {
      MEMORY[0x277D82BD8](v155);
    }

    if (v156)
    {
      MEMORY[0x277D82BD8](v157);
    }

    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v97);
    if (v158)
    {
      MEMORY[0x277D82BD8](v159);
    }

    if (v160)
    {
      MEMORY[0x277D82BD8](v161);
    }

    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v110);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
    objc_storeStrong(&v148, 0);
    objc_storeStrong(&v149, 0);
    objc_storeStrong(&v150, 0);
    objc_storeStrong(&v151, 0);
    objc_storeStrong(&v162, 0);
    objc_storeStrong(&v163, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_initWeak(&from, val);
  [val clearPastScanResults];
  v37 = [location error];
  v141 = v37;
  [val setScanError:v141];
  v36 = [v141 traits];
  v34 = v36;
  v35 = [v34 networkUnavailable];
  MEMORY[0x277D82BD8](v34);
  if ((v35 & 1) == 0)
  {
    v15 = val;
    v122 = MEMORY[0x277D85DD0];
    v123 = -1073741824;
    v124 = 0;
    v125 = __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke_448;
    v126 = &unk_279CC66D0;
    v16 = v128;
    objc_copyWeak(v128, &from);
    v14 = &v122;
    v128[1] = v167;
    v13 = &v127;
    v127 = MEMORY[0x277D82BE0](location);
    [v15 refreshBetaUpdates:v14 withRecheckForAvailableUpdates:0];
    objc_storeStrong(v13, 0);
    objc_destroyWeak(v16);
    goto LABEL_49;
  }

  v140 = 0;
  v33 = [location retries];
  v11 = __OFSUB__(v33, 1);
  v140 = v33 - 1;
  v173 = v11 || v33 - 1 != (v33 - 1);
  v32 = v173;
  v139 = v173;
  if (v173)
  {
    v31 = 0;
  }

  else
  {
    v31 = v140;
  }

  [location setRetries:v31];
  v30 = [location retries];
  if (v30 <= 0)
  {
    [*(val + 25) postEvent:@"FullScanFailed" withInfo:location];
LABEL_49:
    v129 = 0;
    goto LABEL_50;
  }

  v29 = +[SUUILoggingContext statefulUILogger];
  v27 = v29;
  v28 = [v27 oslog];
  v138 = v28;
  MEMORY[0x277D82BD8](v27);
  v137 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v138;
    *v24 = v137;
    v25 = val;
    v26 = [location retries];
    v22 = v174;
    __os_log_helper_16_2_3_8_32_8_0_4_0(v174, v121, v25, v26 + 1);
    _os_log_impl(&dword_26ADE5000, v23, v24[0], "%s [%p]: The scan failed but got %u retries left. Performing a retry.", v22, 0x1Cu);
  }

  objc_storeStrong(&v138, 0);
  when = dispatch_time(0, 1000000000 * kSUUIStatefulUIRetryDelay);
  queue = *(val + 26);
  v130 = MEMORY[0x277D85DD0];
  v131 = -1073741824;
  v132 = 0;
  v133 = __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke;
  v134 = &unk_279CC6368;
  v21 = v136;
  objc_copyWeak(v136, &from);
  block = &v130;
  v136[1] = v167;
  v18 = &v135;
  v135 = MEMORY[0x277D82BE0](location);
  dispatch_after(when, queue, block);
  v129 = 1;
  objc_storeStrong(v18, 0);
  objc_destroyWeak(v21);
LABEL_50:
  objc_storeStrong(&v141, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained((a1 + 40));
  v5 = 0;
  if (!v10[0])
  {
    v4 = +[SUUILoggingContext softwareUpdateUILogger];
    v9 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      v3 = NSStringFromSelector(*(a1 + 48));
      v7 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v11, "[SUUIStatefulUIManager handleFailedFullScan:]_block_invoke", v7);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v11, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v7, 0);
    }

    objc_storeStrong(&v9, 0);
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) setError:?];
    [v10[0] setCurrentFullScanOperation:0];
    [v10[0] performFullScan:*(a1 + 32)];
  }

  objc_storeStrong(v10, 0);
  *MEMORY[0x277D85DE8];
}

void __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke_448(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 40));
  v7 = 0;
  if (!v13[0])
  {
    v6 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v5 = NSStringFromSelector(*(a1 + 48));
      v10 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v16, "[SUUIStatefulUIManager handleFailedFullScan:]_block_invoke", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v16, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    [*(v13[0] + 25) postEvent:@"FullScanFailed" withInfo:*(a1 + 32)];
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handleRefreshScanResults:(id)a3
{
  v128 = &v144;
  v129 = "[SUUIStatefulUIManager handleRefreshScanResults:]";
  v164 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v127 = [location[0] refreshScanResults];
  v157 = v127;
  v126 = +[SUUILoggingContext statefulUILogger];
  v124 = v126;
  v125 = [v124 oslog];
  v156 = v125;
  MEMORY[0x277D82BD8](v124);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
  {
    log = v128[17];
    *v121 = type;
    v122 = v128[21];
    v3 = v128[21];
    aClass = objc_opt_class();
    v119 = NSStringFromClass(aClass);
    v116 = v119;
    v4 = MEMORY[0x277D82BE0](v116);
    v5 = v128;
    v117 = v4;
    v128[15] = v4;
    v118 = SUUIStatefulUIStateToString(*(v5[21] + 5));
    v113 = v118;
    v6 = MEMORY[0x277D82BE0](v113);
    v7 = v128;
    v114 = v6;
    v128[14] = v6;
    v115 = [v7[21] currentState];
    v112 = [v128[21] delegate];
    v111 = v112;
    v152 = 0;
    v151 = 0;
    if (v111)
    {
      v110 = [v128[21] delegate];
      v128[13] = v110;
      v152 = 1;
      v109 = objc_opt_class();
      v108 = NSStringFromClass(v109);
      v8 = v108;
      v128[11] = v8;
      v151 = 1;
      v107 = v8;
    }

    else
    {
      v107 = @"(null)";
    }

    v105 = v107;
    v106 = [v128[21] delegate];
    v103 = v106;
    v104 = [v128[21] scanError];
    v101 = v104;
    v102 = [v128[21] preferredStatefulDescriptor];
    v99 = v102;
    v100 = [v128[21] alternateStatefulDescriptor];
    v97 = v100;
    v98 = [v128[21] currentDownload];
    v96 = v98;
    v150 = 0;
    v149 = 0;
    v148 = 0;
    if (v96)
    {
      v95 = [v128[21] currentDownload];
      v9 = v95;
      v128[9] = v9;
      v150 = 1;
      v94 = [v9 descriptor];
      v10 = v94;
      v128[7] = v10;
      v149 = 1;
      v93 = [v10 updateName];
      v11 = v93;
      v128[5] = v11;
      v148 = 1;
      v92 = v11;
    }

    else
    {
      v92 = @"(null)";
    }

    v90 = v92;
    v91 = [v128[21] currentDownload];
    v88 = v91;
    v89 = [v128[21] currentUpdateOperationType];
    v87 = SUUIUpdateContinuousOperationTypeToString(v89);
    v84 = v87;
    v12 = MEMORY[0x277D82BE0](v84);
    v13 = v128;
    v85 = v12;
    v128[3] = v12;
    v86 = [v13[21] isTargetedUpdateScheduledForAutoInstall];
    v162 = v86;
    if (v86)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v83 = v14;
    v15 = v14;
    v80 = v83;
    v16 = MEMORY[0x277D82BE0](v80);
    v17 = v128;
    v81 = v16;
    v128[2] = v16;
    v82 = [v17[21] hidingPreferredDescriptor];
    v161 = v82;
    if (v82)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v79 = v18;
    v19 = v18;
    v76 = v79;
    v20 = MEMORY[0x277D82BE0](v76);
    v21 = v128;
    v77 = v20;
    v128[1] = v20;
    v78 = [v21[21] hiddenPreferredStatefulDescriptor];
    v74 = v78;
    v75 = [v74 updateName];
    v71 = v75;
    v22 = MEMORY[0x277D82BE0](v71);
    v23 = v128;
    v72 = v22;
    *v128 = v22;
    v73 = [v23[21] hidingAlternateDescriptor];
    v160 = v73;
    if (v73)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v70 = v24;
    v25 = v24;
    v67 = v70;
    v68 = MEMORY[0x277D82BE0](v67);
    v143 = v68;
    v69 = [v128[21] hiddenAlternateStatefulDescriptor];
    v65 = v69;
    v66 = [v65 updateName];
    v62 = v66;
    v63 = MEMORY[0x277D82BE0](v62);
    v142 = v63;
    v64 = [v128[21] enrolledBetaProgram];
    v61 = v64;
    v140 = 0;
    if (v61)
    {
      v60 = [v128[21] enrolledBetaProgram];
      v141 = v60;
      v140 = 1;
      v59 = [v141 programID];
      v58 = v59;
    }

    else
    {
      v58 = 0;
    }

    v56 = v58;
    v57 = [*(v128[21] + 15) count];
    v55 = [v128[21] canEnrollInBetaUpdates];
    v159 = v55;
    if (v55)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v54 = v26;
    v27 = v26;
    v48 = v54;
    v49 = MEMORY[0x277D82BE0](v48);
    v139 = v49;
    v50 = *(v128[21] + 21);
    v51 = *(v128[21] + 22);
    v52 = *(v128[21] + 23);
    v53 = [*(v128[21] + 24) count];
    v47 = [v128[18] identifier];
    v46 = v47;
    v28 = v128[18];
    v44 = &v30;
    buf = v163;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v163, v129, v122, v117, v114, v115, v105, v103, v101, v99, v97, v90, v88, v85, v81, v77, v72, v68, v63, v56, v57, v49, v50, v51, v52, v53, v46, v28);
    _os_log_impl(&dword_26ADE5000, log, v121[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to refresh the current scan results with ID: %{public}@.\nResults: %{public}@", buf, 0x110u);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v48);
    if (v140)
    {
      MEMORY[0x277D82BD8](v141);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v88);
    if (v148)
    {
      MEMORY[0x277D82BD8](v128[5]);
    }

    if (v149)
    {
      MEMORY[0x277D82BD8](v128[7]);
    }

    if (v150)
    {
      MEMORY[0x277D82BD8](v128[9]);
    }

    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v103);
    if (v151)
    {
      MEMORY[0x277D82BD8](v128[11]);
    }

    if (v152)
    {
      MEMORY[0x277D82BD8](v128[13]);
    }

    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v116);
    objc_storeStrong(&v139, 0);
    objc_storeStrong(&v142, 0);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, 0);
    objc_storeStrong(&v145, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
    objc_storeStrong(&v153, 0);
    objc_storeStrong(&v154, 0);
  }

  objc_storeStrong(&v156, 0);
  v43 = [v128[21] environment];
  v40 = v43;
  v41 = v128[21];
  v42 = [MEMORY[0x277CCAD78] UUID];
  v38 = v42;
  v39 = [v38 UUIDString];
  v36 = v39;
  v29 = *(v128[21] + 26);
  v37 = [v40 scanOperationWithManager:v41 identifier:? completionQueue:?];
  v138 = v37;
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v40);
  objc_initWeak(&from, v128[21]);
  v34 = v138;
  v130 = MEMORY[0x277D85DD0];
  v131 = -1073741824;
  v132 = 0;
  v133 = __50__SUUIStatefulUIManager_handleRefreshScanResults___block_invoke;
  v134 = &unk_279CC66F8;
  v35 = v136;
  objc_copyWeak(v136, &from);
  v33 = &v130;
  v136[1] = v128[20];
  v31 = v135;
  v135[0] = MEMORY[0x277D82BE0](v128[19]);
  v32 = (v33 + 5);
  v135[1] = MEMORY[0x277D82BE0](v128[18]);
  [v34 controllerCurrentlyScanning:v33];
  objc_storeStrong(v32, 0);
  objc_storeStrong(v31, 0);
  objc_destroyWeak(v35);
  objc_destroyWeak(&from);
  objc_storeStrong(&v138, 0);
  objc_storeStrong(&v157, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __50__SUUIStatefulUIManager_handleRefreshScanResults___block_invoke(uint64_t a1, unsigned __int8 a2, id obj)
{
  v122 = &v140;
  v121 = a1;
  v120 = "[SUUIStatefulUIManager handleRefreshScanResults:]_block_invoke";
  v165 = *MEMORY[0x277D85DE8];
  v156 = a1;
  v155 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v153[1] = v121;
  v153[0] = objc_loadWeakRetained((v121 + 48));
  v119 = 0;
  if (!v153[0])
  {
    v118 = +[SUUILoggingContext softwareUpdateUILogger];
    v3 = [v118 oslog];
    v4 = v118;
    v122[18] = v3;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v122[18], OS_LOG_TYPE_ERROR))
    {
      log = v122[18];
      *v114 = type;
      v116 = NSStringFromSelector(*(v121 + 56));
      v5 = MEMORY[0x277D82BE0](v116);
      v6 = v120;
      v117 = &v150;
      v122[16] = v5;
      buf = v164;
      __os_log_helper_16_2_2_8_32_8_66(v164, v6, v5);
      _os_log_error_impl(&dword_26ADE5000, log, v114[0], "%s: Self is nil in %{public}@. Stopping.", v164, 0x16u);
      MEMORY[0x277D82BD8](v116);
      objc_storeStrong(v117, 0);
    }

    objc_storeStrong(&v152, 0);
    v7 = v122;
    *(v122 + 31) = 1;
    v119 = *(v7 + 31) != 0;
  }

  if (v119)
  {
    *(v122 + 30) = 1;
  }

  else
  {
    v112 = +[SUUILoggingContext statefulUILogger];
    v8 = [v112 oslog];
    v9 = v112;
    v122[14] = v8;
    MEMORY[0x277D82BD8](v9);
    v148 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v122[14], OS_LOG_TYPE_DEFAULT))
    {
      v103 = v122[14];
      *v104 = v148;
      v105 = v122[19];
      v10 = v122[19];
      v11 = objc_opt_class();
      v106 = NSStringFromClass(v11);
      v12 = MEMORY[0x277D82BE0](v106);
      v13 = v122;
      v107 = v12;
      v122[12] = v12;
      v108 = SUUIStatefulUIStateToString(*(v13[19] + 5));
      v14 = MEMORY[0x277D82BE0](v108);
      v15 = v122;
      v109 = v14;
      v122[11] = v14;
      v110 = [v15[19] currentState];
      v111 = [v122[19] delegate];
      v145 = 0;
      v144 = 0;
      if (v111)
      {
        v122[10] = [v122[19] delegate];
        v101 = 1;
        v145 = 1;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v122[8] = v17;
        v144 = 1;
        v102 = v17;
      }

      else
      {
        v102 = @"(null)";
      }

      v95 = v102;
      v96 = [v122[19] delegate];
      v97 = [v122[19] scanError];
      v98 = [v122[19] preferredStatefulDescriptor];
      v99 = [v122[19] alternateStatefulDescriptor];
      v100 = [v122[19] currentDownload];
      v143 = 0;
      v142 = 0;
      v141 = 0;
      if (v100)
      {
        v18 = [v122[19] currentDownload];
        v122[6] = v18;
        v93 = 1;
        v143 = 1;
        v19 = [v18 descriptor];
        v122[4] = v19;
        v142 = 1;
        v20 = [v19 updateName];
        v21 = v93;
        v122[2] = v20;
        v141 = v21 & 1;
        v94 = v20;
      }

      else
      {
        v94 = @"(null)";
      }

      v70 = v94;
      v71 = [v122[19] currentDownload];
      v72 = SUUIUpdateContinuousOperationTypeToString([v122[19] currentUpdateOperationType]);
      v22 = MEMORY[0x277D82BE0](v72);
      v23 = v122;
      v73 = v22;
      *v122 = v22;
      v161 = [v23[19] isTargetedUpdateScheduledForAutoInstall];
      v83 = @"NO";
      v84 = @"YES";
      v91 = 1;
      if (v161)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v74 = v24;
      v25 = v24;
      v75 = v74;
      v76 = MEMORY[0x277D82BE0](v75);
      v139 = v76;
      v160 = [v122[19] hidingPreferredDescriptor];
      if (v160)
      {
        v26 = v84;
      }

      else
      {
        v26 = v83;
      }

      v77 = v26;
      v27 = v26;
      v78 = v77;
      v79 = MEMORY[0x277D82BE0](v78);
      v138 = v79;
      v80 = [v122[19] hiddenPreferredStatefulDescriptor];
      v81 = [v80 updateName];
      v82 = MEMORY[0x277D82BE0](v81);
      v137 = v82;
      v159 = [v122[19] hidingAlternateDescriptor];
      if (v159)
      {
        v28 = v84;
      }

      else
      {
        v28 = v83;
      }

      v85 = v28;
      v29 = v28;
      v86 = v85;
      v87 = MEMORY[0x277D82BE0](v86);
      v136 = v87;
      v88 = [v122[19] hiddenAlternateStatefulDescriptor];
      v89 = [v88 updateName];
      v90 = MEMORY[0x277D82BE0](v89);
      v135 = v90;
      v92 = [v122[19] enrolledBetaProgram];
      v133 = 0;
      if (v92)
      {
        v134 = [v122[19] enrolledBetaProgram];
        v133 = 1;
        v69 = [v134 programID];
      }

      else
      {
        v69 = 0;
      }

      v58 = v69;
      v59 = [*(v122[19] + 15) count];
      v158 = [v122[19] canEnrollInBetaUpdates];
      v55 = @"NO";
      v56 = @"YES";
      v54 = 1;
      if (v158)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v53 = v30;
      v31 = v30;
      v68 = v53;
      v60 = MEMORY[0x277D82BE0](v68);
      v132 = v60;
      v61 = *(v122[19] + 21);
      v62 = *(v122[19] + 22);
      v63 = *(v122[19] + 23);
      v64 = [*(v122[19] + 24) count];
      v157 = v155 & v54;
      if (v155 & v54)
      {
        v32 = v56;
      }

      else
      {
        v32 = v55;
      }

      v57 = v32;
      v33 = v32;
      v67 = v57;
      v131 = MEMORY[0x277D82BE0](v67);
      v34 = v122[21];
      v65 = &v37;
      v66 = v163;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v163, v120, v105, v107, v109, v110, v95, v96, v97, v98, v99, v70, v71, v73, v76, v79, v82, v87, v90, v58, v59, v60, v61, v62, v63, v64, v131, v34);
      _os_log_impl(&dword_26ADE5000, v103, v104[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nisScanning: %{public}@; error: %{public}@", v66, 0x110u);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v68);
      if (v133)
      {
        MEMORY[0x277D82BD8](v134);
      }

      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v71);
      if (v141)
      {
        MEMORY[0x277D82BD8](v122[2]);
      }

      if (v142)
      {
        MEMORY[0x277D82BD8](v122[4]);
      }

      if (v143)
      {
        MEMORY[0x277D82BD8](v122[6]);
      }

      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v96);
      if (v144)
      {
        MEMORY[0x277D82BD8](v122[8]);
      }

      if (v145)
      {
        MEMORY[0x277D82BD8](v122[10]);
      }

      MEMORY[0x277D82BD8](v111);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v106);
      obja = 0;
      objc_storeStrong(&v131, 0);
      objc_storeStrong(&v132, obja);
      objc_storeStrong(&v135, obja);
      objc_storeStrong(&v136, obja);
      objc_storeStrong(&v137, obja);
      objc_storeStrong(&v138, obja);
      objc_storeStrong(&v139, obja);
      objc_storeStrong(&v140, obja);
      objc_storeStrong(&v146, obja);
      objc_storeStrong(&v147, obja);
    }

    objc_storeStrong(&v149, 0);
    if (v155)
    {
      if ([v122[19] currentState] > 1)
      {
        [v122[19] checkForUpdatesInBackground];
      }

      else
      {
        [v122[19] checkForAvailableUpdates];
      }

      *(v122 + 30) = 1;
    }

    else
    {
      v49 = v122[19];
      v50 = [*(v121 + 32) refreshScanResults];
      v51 = [v49 assignScanResults:?];
      MEMORY[0x277D82BD8](v50);
      v130 = v51;
      v129 = [v122[19] preferredStatefulDescriptor];
      v128 = [v122[19] alternateStatefulDescriptor];
      v127 = [v122[19] preferredStatefulDescriptor];
      v126 = [v122[19] alternateStatefulDescriptor];
      if (v127 || v126)
      {
        [v122[19] updateDescriptorsUsingScanResults:*(v121 + 40) andWithConcreteError:0];
      }

      else
      {
        v48 = [v122[19] currentDownload];
        MEMORY[0x277D82BD8](v48);
        if (!v48)
        {
          v47 = 0;
          objc_storeStrong(&v127, 0);
          [v122[19] setPreferredStatefulDescriptor:v47];
          objc_storeStrong(&v126, v47);
          [v122[19] setAlternateStatefulDescriptor:v47];
        }
      }

      if (v127 == v129 || (v46 = 1, v127) && (v35 = [v127 isEqual:v129], v46 = 1, (v35 & 1) != 0))
      {
        v45 = 0;
        if (v126 != v128)
        {
          v44 = 1;
          if (v126)
          {
            v44 = [v126 isEqual:v128] ^ 1;
          }

          v45 = v44;
        }

        v46 = v45;
      }

      v125 = v46 & 1;
      v43 = +[SUUILoggingContext statefulUILogger];
      oslog = [v43 oslog];
      MEMORY[0x277D82BD8](v43);
      v123 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v40 = oslog;
        *v41 = v123;
        v36 = v122[19];
        v42 = v162;
        __os_log_helper_16_2_4_8_32_8_0_4_0_4_0(v162, v120, v36, v130 & 1, v125 & 1);
        _os_log_impl(&dword_26ADE5000, v40, v41[0], "%s [%p]: Refreshed results changes from previous data: changedScanRelatedData = %d, changedDescriptors: %d", v42, 0x22u);
      }

      objc_storeStrong(&oslog, 0);
      v39 = 1;
      if ((v130 & 1) == 0)
      {
        v39 = v125;
      }

      [*(v121 + 32) setRefreshHasAnyChanges:v39 & 1];
      if (v127 || v126)
      {
        [*(v122[19] + 25) postEvent:@"RefreshUpdatesAvailable" withInfo:*(v121 + 32)];
      }

      else if ([*(v121 + 32) refreshPreviousState] == 3)
      {
        [*(v122[19] + 25) postEvent:@"RefreshNoUpdateAvailable" withInfo:*(v121 + 32)];
      }

      else
      {
        [*(v122[19] + 25) postEvent:@"CheckForAvailableUpdate" withInfo:*(v121 + 32)];
      }

      v38 = 0;
      objc_storeStrong(&v126, 0);
      objc_storeStrong(&v127, v38);
      objc_storeStrong(&v128, v38);
      objc_storeStrong(&v129, v38);
      *(v122 + 30) = 0;
    }
  }

  objc_storeStrong(v153, 0);
  if (!*(v122 + 30))
  {
    *(v122 + 30) = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)clearPastScanResults
{
  [(SUUIStatefulUIManager *)self setPreferredStatefulDescriptor:?];
  [(SUUIStatefulUIManager *)self setAlternateStatefulDescriptor:0];
  [(SUUIStatefulUIManager *)self setHiddenPreferredStatefulDescriptor:0];
  [(SUUIStatefulUIManager *)self setHiddenAlternateStatefulDescriptor:0];
  [(SUUIStatefulUIManager *)self setHidingPreferredDescriptor:0];
  [(SUUIStatefulUIManager *)self setHidingAlternateDescriptor:0];
  [(SUUIStatefulUIManager *)self setCurrentDownload:0];
  [(SUUIStatefulUIManager *)self setIsAutoUpdateScheduled:0];
  [(SUUIStatefulUIManager *)self setClearingSpaceForDownload:0];
}

- (void)clearPastDownload:(id)a3
{
  v139 = "[SUUIStatefulUIManager clearPastDownload:]";
  v200 = *MEMORY[0x277D85DE8];
  v189 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v187 = [(SUUIStatefulUIManager *)v189 targetedUpdateForDownload:location[0]];
  if (v187)
  {
    v83 = +[SUUILoggingContext statefulUILogger];
    v162 = [v83 oslog];
    MEMORY[0x277D82BD8](v83);
    v161 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v162;
      *v75 = v161;
      v76 = v189;
      v14 = objc_opt_class();
      v77 = NSStringFromClass(v14);
      v78 = MEMORY[0x277D82BE0](v77);
      v160 = v78;
      v79 = SUUIStatefulUIStateToString(v189->_currentState);
      v80 = MEMORY[0x277D82BE0](v79);
      v159 = v80;
      v81 = [(SUUIStatefulUIManager *)v189 currentState];
      v82 = [(SUUIStatefulUIManager *)v189 delegate];
      v157 = 0;
      v155 = 0;
      if (v82)
      {
        v158 = [(SUUIStatefulUIManager *)v189 delegate];
        v72 = 1;
        v157 = 1;
        v15 = objc_opt_class();
        v156 = NSStringFromClass(v15);
        v155 = 1;
        v73 = v156;
      }

      else
      {
        v73 = @"(null)";
      }

      v66 = v73;
      v67 = [(SUUIStatefulUIManager *)v189 delegate];
      v68 = [(SUUIStatefulUIManager *)v189 scanError];
      v69 = [(SUUIStatefulUIManager *)v189 preferredStatefulDescriptor];
      v70 = [(SUUIStatefulUIManager *)v189 alternateStatefulDescriptor];
      v71 = [(SUUIStatefulUIManager *)v189 currentDownload];
      v153 = 0;
      v151 = 0;
      v149 = 0;
      if (v71)
      {
        v154 = [(SUUIStatefulUIManager *)v189 currentDownload];
        v64 = 1;
        v153 = 1;
        v152 = [(SUUIDownload *)v154 descriptor];
        v151 = 1;
        v150 = [v152 updateName];
        v149 = 1;
        v65 = v150;
      }

      else
      {
        v65 = @"(null)";
      }

      v41 = v65;
      v42 = [(SUUIStatefulUIManager *)v189 currentDownload];
      v43 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)v189 currentUpdateOperationType]);
      v44 = MEMORY[0x277D82BE0](v43);
      v148 = v44;
      v193 = [(SUUIStatefulUIManager *)v189 isTargetedUpdateScheduledForAutoInstall];
      v54 = @"NO";
      v55 = @"YES";
      v62 = 1;
      if (v193)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v45 = v16;
      v17 = v16;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v147 = v47;
      if ([(SUUIStatefulUIManager *)v189 hidingPreferredDescriptor])
      {
        v18 = v55;
      }

      else
      {
        v18 = v54;
      }

      v48 = v18;
      v19 = v18;
      v49 = v48;
      v50 = MEMORY[0x277D82BE0](v49);
      v146 = v50;
      v51 = [(SUUIStatefulUIManager *)v189 hiddenPreferredStatefulDescriptor];
      v52 = [(SUUIStatefulDescriptor *)v51 updateName];
      v53 = MEMORY[0x277D82BE0](v52);
      v145 = v53;
      if ([(SUUIStatefulUIManager *)v189 hidingAlternateDescriptor])
      {
        v20 = v55;
      }

      else
      {
        v20 = v54;
      }

      v56 = v20;
      v21 = v20;
      v57 = v56;
      v58 = MEMORY[0x277D82BE0](v57);
      v144 = v58;
      v59 = [(SUUIStatefulUIManager *)v189 hiddenAlternateStatefulDescriptor];
      v60 = [(SUUIStatefulDescriptor *)v59 updateName];
      v61 = MEMORY[0x277D82BE0](v60);
      v143 = v61;
      v63 = [(SUUIStatefulUIManager *)v189 enrolledBetaProgram];
      v141 = 0;
      if (v63)
      {
        v142 = [(SUUIStatefulUIManager *)v189 enrolledBetaProgram];
        v141 = 1;
        v40 = [(SDBetaProgram *)v142 programID];
      }

      else
      {
        v40 = 0;
      }

      v31 = v40;
      v32 = [(NSArray *)v189->_betaPrograms count];
      if ([(SUUIStatefulUIManager *)v189 canEnrollInBetaUpdates])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v30 = v22;
      v23 = v22;
      v39 = v30;
      v33 = MEMORY[0x277D82BE0](v39);
      v140 = v33;
      currentFullScanOperation = v189->_currentFullScanOperation;
      currentRefreshScanOperation = v189->_currentRefreshScanOperation;
      currentUpdateOperation = v189->_currentUpdateOperation;
      v24 = [(NSMutableSet *)v189->_auxiliaryOperations count];
      v37 = &v25;
      v38 = v198;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v198, v139, v76, v78, v80, v81, v66, v67, v68, v69, v70, v41, v42, v44, v47, v50, v53, v58, v61, v31, v32, v33, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v24, location[0]);
      _os_log_impl(&dword_26ADE5000, v74, v75[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCleaning the past download information: %{public}@", v38, 0x106u);
      MEMORY[0x277D82BD8](v39);
      if (v141)
      {
        MEMORY[0x277D82BD8](v142);
      }

      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v42);
      if (v149)
      {
        MEMORY[0x277D82BD8](v150);
      }

      if (v151)
      {
        MEMORY[0x277D82BD8](v152);
      }

      if (v153)
      {
        MEMORY[0x277D82BD8](v154);
      }

      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v67);
      if (v155)
      {
        MEMORY[0x277D82BD8](v156);
      }

      if (v157)
      {
        MEMORY[0x277D82BD8](v158);
      }

      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v77);
      v29 = 0;
      objc_storeStrong(&v140, 0);
      objc_storeStrong(&v143, v29);
      objc_storeStrong(&v144, v29);
      objc_storeStrong(&v145, v29);
      objc_storeStrong(&v146, v29);
      objc_storeStrong(&v147, v29);
      objc_storeStrong(&v148, v29);
      objc_storeStrong(&v159, v29);
      objc_storeStrong(&v160, v29);
    }

    objc_storeStrong(&v162, 0);
    v27 = 0;
    [v187 updateStateFromProgressedDownload:?];
    [(SUUIStatefulUIManager *)v189 setCurrentDownload:v27];
    v28 = 0;
    [(SUUIStatefulUIManager *)v189 setIsAutoUpdateScheduled:0];
    [(SUUIStatefulUIManager *)v189 setClearingSpaceForDownload:v28 & 1];
    if ([(SUUIStatefulUIManager *)v189 hidingAlternateDescriptor])
    {
      [(SUUIStatefulUIManager *)v189 revealHiddenAlteranteUpdate];
    }

    if ([(SUUIStatefulUIManager *)v189 hidingPreferredDescriptor])
    {
      [(SUUIStatefulUIManager *)v189 revealHiddenPreferredUpdate];
    }

    v163 = 0;
  }

  else
  {
    v138 = +[SUUILoggingContext statefulUILogger];
    oslog = [v138 oslog];
    MEMORY[0x277D82BD8](v138);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v130 = type;
      v131 = v189;
      v3 = objc_opt_class();
      v132 = NSStringFromClass(v3);
      v133 = MEMORY[0x277D82BE0](v132);
      v184 = v133;
      v134 = SUUIStatefulUIStateToString(v189->_currentState);
      v135 = MEMORY[0x277D82BE0](v134);
      v183 = v135;
      v136 = [(SUUIStatefulUIManager *)v189 currentState];
      v137 = [(SUUIStatefulUIManager *)v189 delegate];
      v181 = 0;
      v179 = 0;
      if (v137)
      {
        v182 = [(SUUIStatefulUIManager *)v189 delegate];
        v127 = 1;
        v181 = 1;
        v4 = objc_opt_class();
        v180 = NSStringFromClass(v4);
        v179 = 1;
        v128 = v180;
      }

      else
      {
        v128 = @"(null)";
      }

      v121 = v128;
      v122 = [(SUUIStatefulUIManager *)v189 delegate];
      v123 = [(SUUIStatefulUIManager *)v189 scanError];
      v124 = [(SUUIStatefulUIManager *)v189 preferredStatefulDescriptor];
      v125 = [(SUUIStatefulUIManager *)v189 alternateStatefulDescriptor];
      v126 = [(SUUIStatefulUIManager *)v189 currentDownload];
      v177 = 0;
      v175 = 0;
      v173 = 0;
      if (v126)
      {
        v178 = [(SUUIStatefulUIManager *)v189 currentDownload];
        v119 = 1;
        v177 = 1;
        v176 = [(SUUIDownload *)v178 descriptor];
        v175 = 1;
        v174 = [v176 updateName];
        v173 = 1;
        v120 = v174;
      }

      else
      {
        v120 = @"(null)";
      }

      v96 = v120;
      v97 = [(SUUIStatefulUIManager *)v189 currentDownload];
      v98 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)v189 currentUpdateOperationType]);
      v99 = MEMORY[0x277D82BE0](v98);
      v172 = v99;
      v197 = [(SUUIStatefulUIManager *)v189 isTargetedUpdateScheduledForAutoInstall];
      v109 = @"NO";
      v110 = @"YES";
      v117 = 1;
      if (v197)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v100 = v5;
      v6 = v5;
      v101 = v100;
      v102 = MEMORY[0x277D82BE0](v101);
      v171 = v102;
      if ([(SUUIStatefulUIManager *)v189 hidingPreferredDescriptor])
      {
        v7 = v110;
      }

      else
      {
        v7 = v109;
      }

      v103 = v7;
      v8 = v7;
      v104 = v103;
      v105 = MEMORY[0x277D82BE0](v104);
      v170 = v105;
      v106 = [(SUUIStatefulUIManager *)v189 hiddenPreferredStatefulDescriptor];
      v107 = [(SUUIStatefulDescriptor *)v106 updateName];
      v108 = MEMORY[0x277D82BE0](v107);
      v169 = v108;
      if ([(SUUIStatefulUIManager *)v189 hidingAlternateDescriptor])
      {
        v9 = v110;
      }

      else
      {
        v9 = v109;
      }

      v111 = v9;
      v10 = v9;
      v112 = v111;
      v113 = MEMORY[0x277D82BE0](v112);
      v168 = v113;
      v114 = [(SUUIStatefulUIManager *)v189 hiddenAlternateStatefulDescriptor];
      v115 = [(SUUIStatefulDescriptor *)v114 updateName];
      v116 = MEMORY[0x277D82BE0](v115);
      v167 = v116;
      v118 = [(SUUIStatefulUIManager *)v189 enrolledBetaProgram];
      v165 = 0;
      if (v118)
      {
        v166 = [(SUUIStatefulUIManager *)v189 enrolledBetaProgram];
        v165 = 1;
        v95 = [(SDBetaProgram *)v166 programID];
      }

      else
      {
        v95 = 0;
      }

      v86 = v95;
      v87 = [(NSArray *)v189->_betaPrograms count];
      if ([(SUUIStatefulUIManager *)v189 canEnrollInBetaUpdates])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v85 = v11;
      v12 = v11;
      v94 = v85;
      v88 = MEMORY[0x277D82BE0](v94);
      v164 = v88;
      v89 = v189->_currentFullScanOperation;
      v90 = v189->_currentRefreshScanOperation;
      v91 = v189->_currentUpdateOperation;
      v13 = [(NSMutableSet *)v189->_auxiliaryOperations count];
      v92 = &v25;
      buf = v199;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v199, v139, v131, v133, v135, v136, v121, v122, v123, v124, v125, v96, v97, v99, v102, v105, v108, v113, v116, v86, v87, v88, v89, v90, v91, v13, location[0]);
      _os_log_impl(&dword_26ADE5000, log, v130[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCouldn't clean the past discovered download as the targeted update could not be retrieved from the given download.\nDownload: %{public}@", buf, 0x106u);
      MEMORY[0x277D82BD8](v94);
      if (v165)
      {
        MEMORY[0x277D82BD8](v166);
      }

      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v97);
      if (v173)
      {
        MEMORY[0x277D82BD8](v174);
      }

      if (v175)
      {
        MEMORY[0x277D82BD8](v176);
      }

      if (v177)
      {
        MEMORY[0x277D82BD8](v178);
      }

      MEMORY[0x277D82BD8](v126);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v124);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v122);
      if (v179)
      {
        MEMORY[0x277D82BD8](v180);
      }

      if (v181)
      {
        MEMORY[0x277D82BD8](v182);
      }

      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v132);
      obj = 0;
      objc_storeStrong(&v164, 0);
      objc_storeStrong(&v167, obj);
      objc_storeStrong(&v168, obj);
      objc_storeStrong(&v169, obj);
      objc_storeStrong(&v170, obj);
      objc_storeStrong(&v171, obj);
      objc_storeStrong(&v172, obj);
      objc_storeStrong(&v183, obj);
      objc_storeStrong(&v184, obj);
    }

    objc_storeStrong(&oslog, 0);
    v163 = 1;
  }

  v26 = 0;
  objc_storeStrong(&v187, 0);
  objc_storeStrong(location, v26);
  *MEMORY[0x277D85DE8];
}

- (id)targetedUpdateForDownload:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v8;
  v5 = [location[0] descriptor];
  v6 = [(SUUIStatefulUIManager *)v4 targetedUpdateMatchingDescriptor:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)targetedUpdateMatchingDescriptor:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(SUUIStatefulUIManager *)v8 preferredStatefulDescriptor];
  v5 = [(SUUIStatefulUIManager *)v8 alternateStatefulDescriptor];
  if ([v6 isEqualToDescriptor:location[0]])
  {
    v9 = MEMORY[0x277D82BE0](v6);
  }

  else if ([v5 isEqualToDescriptor:location[0]])
  {
    v9 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)performUpdateOperation:(int64_t)a3 withDescriptor:(id)a4 byApplyingSelector:(SEL)a5 context:(id)a6 auxiliaryOperation:(BOOL)a7 delegate:(id)a8 delegateCallbackQueue:(id)a9 resultsValidation:(id)a10 resultsAssignment:(id)a11 completion:(id)a12
{
  v43 = self;
  v42 = a2;
  v41 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v39 = a5;
  v38 = 0;
  objc_storeStrong(&v38, a6);
  v37 = a7;
  v36 = 0;
  objc_storeStrong(&v36, a8);
  v35 = 0;
  objc_storeStrong(&v35, a9);
  v34 = 0;
  objc_storeStrong(&v34, a10);
  v33 = 0;
  objc_storeStrong(&v33, a11);
  v32 = 0;
  objc_storeStrong(&v32, a12);
  objc_initWeak(&v31, v43);
  queue = v43->_operationsQueue;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke;
  v21 = &unk_279CC6770;
  objc_copyWeak(v29, &v31);
  v29[1] = v42;
  v25 = MEMORY[0x277D82BE0](v32);
  v30 = v37;
  v29[2] = v41;
  v22 = MEMORY[0x277D82BE0](location);
  v23 = MEMORY[0x277D82BE0](v35);
  v29[3] = v39;
  v26 = MEMORY[0x277D82BE0](v38);
  v24 = MEMORY[0x277D82BE0](v36);
  v27 = MEMORY[0x277D82BE0](v34);
  v28 = MEMORY[0x277D82BE0](v33);
  dispatch_async(queue, &v17);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_destroyWeak(v29);
  objc_destroyWeak(&v31);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke(id *a1)
{
  v356 = &v375;
  v357 = a1;
  v358 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v359 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v433 = *MEMORY[0x277D85DE8];
  v421[2] = a1;
  v421[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v421[0] = WeakRetained;
  v355 = 0;
  if (!WeakRetained)
  {
    v354 = +[SUUILoggingContext softwareUpdateUILogger];
    v352 = v354;
    v353 = [v352 oslog];
    v1 = v353;
    v2 = v352;
    *(v356 + 67) = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(*(v356 + 67), OS_LOG_TYPE_ERROR))
    {
      log = *(v356 + 67);
      *v350 = type;
      v351 = NSStringFromSelector(v357[12]);
      v348 = v351;
      v3 = MEMORY[0x277D82BE0](v348);
      v4 = v358;
      *(v356 + 65) = v3;
      buf = v432;
      __os_log_helper_16_2_2_8_32_8_66(v432, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v350[0], "%s: Self is nil in %{public}@. Stopping.", v432, 0x16u);
      MEMORY[0x277D82BD8](v348);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v420, 0);
    v5 = v356;
    *(v356 + 129) = 1;
    v355 = *(v5 + 129) != 0;
  }

  if (v355)
  {
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8 = v357;
    v9 = v356;
    queue = v7;
    block = &v416;
    *(v356 + 59) = MEMORY[0x277D85DD0];
    *(v9 + 120) = -1073741824;
    *(v9 + 121) = 0;
    *(v9 + 61) = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_450;
    *(v9 + 62) = &unk_279CC61E0;
    v344 = &v417;
    v10 = MEMORY[0x277D82BE0](v8[7]);
    v11 = block;
    v12 = v10;
    v13 = queue;
    *(v356 + 63) = v12;
    dispatch_async(v13, v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v344, 0);
    *(v356 + 117) = 1;
  }

  else if ((v357[15] & 1) != 0 || (v343 = [*(v356 + 68) currentUpdateOperationType], v14 = v356, *(v356 + 57) = v343, !*(v14 + 57)))
  {
    v247 = [MEMORY[0x277CCAD78] UUID];
    v245 = v247;
    v246 = [v245 UUIDString];
    v89 = v246;
    v90 = v245;
    *(v356 + 24) = v89;
    MEMORY[0x277D82BD8](v90);
    v244 = [*(v356 + 68) environment];
    v240 = v244;
    v241 = *(v356 + 68);
    v242 = *(v356 + 24);
    v243 = v357[5];
    v391 = 0;
    if (v243)
    {
      v239 = v243;
    }

    else
    {
      v238 = [*(v356 + 68) delegateCallbackQueue];
      v91 = v238;
      *(v356 + 22) = v91;
      v391 = 1;
      v239 = v91;
    }

    v237 = [v240 updateOperationWithManager:v241 identifier:v242 delegateCallbackQueue:v239 completionQueue:*(*(v356 + 68) + 208)];
    *(v356 + 23) = v237;
    if (v391)
    {
      MEMORY[0x277D82BD8](*(v356 + 22));
    }

    MEMORY[0x277D82BD8](v240);
    v92 = *(v356 + 23);
    v93 = v357[14];
    v236 = objc_opt_respondsToSelector();
    if ((v236 & 1) == 0)
    {
      v234 = *(v356 + 23);
      v94 = *(v356 + 23);
      v235 = objc_opt_class();
      v233 = NSStringFromClass(v235);
      v231 = v233;
      v232 = NSStringFromSelector(v357[14]);
      _suui_precondition_failure_with_format(@"Can't perform the update request since the Update Operation object (%p, of type: %@) doesn't respond to the selector %@.", v234, v231, v232);
    }

    v230 = +[SUUILoggingContext statefulUILogger];
    v228 = v230;
    v229 = [v228 oslog];
    v95 = v229;
    v96 = v228;
    *(v356 + 20) = v95;
    MEMORY[0x277D82BD8](v96);
    v389 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v356 + 20), OS_LOG_TYPE_DEFAULT))
    {
      v224 = *(v356 + 20);
      *v225 = v389;
      v226 = *(v356 + 68);
      v97 = *(v356 + 68);
      v227 = objc_opt_class();
      v223 = NSStringFromClass(v227);
      v220 = v223;
      v98 = MEMORY[0x277D82BE0](v220);
      v99 = v356;
      v221 = v98;
      *(v356 + 18) = v98;
      v222 = SUUIStatefulUIStateToString(*(*(v99 + 68) + 40));
      v217 = v222;
      v100 = MEMORY[0x277D82BE0](v217);
      v101 = v356;
      v218 = v100;
      *(v356 + 17) = v100;
      v219 = [v101[68] currentState];
      v216 = [*(v356 + 68) delegate];
      v215 = v216;
      v386 = 0;
      v385 = 0;
      if (v215)
      {
        v214 = [*(v356 + 68) delegate];
        *(v356 + 16) = v214;
        v386 = 1;
        v213 = objc_opt_class();
        v212 = NSStringFromClass(v213);
        v102 = v212;
        *(v356 + 14) = v102;
        v385 = 1;
        v211 = v102;
      }

      else
      {
        v211 = @"(null)";
      }

      v209 = v211;
      v210 = [*(v356 + 68) delegate];
      v207 = v210;
      v208 = [*(v356 + 68) scanError];
      v205 = v208;
      v206 = [*(v356 + 68) preferredStatefulDescriptor];
      v203 = v206;
      v204 = [*(v356 + 68) alternateStatefulDescriptor];
      v201 = v204;
      v202 = [*(v356 + 68) currentDownload];
      v200 = v202;
      v384 = 0;
      v383 = 0;
      v382 = 0;
      if (v200)
      {
        v199 = [*(v356 + 68) currentDownload];
        v103 = v199;
        *(v356 + 12) = v103;
        v384 = 1;
        v198 = [v103 descriptor];
        v104 = v198;
        *(v356 + 10) = v104;
        v383 = 1;
        v197 = [v104 updateName];
        v105 = v197;
        *(v356 + 8) = v105;
        v382 = 1;
        v196 = v105;
      }

      else
      {
        v196 = @"(null)";
      }

      v194 = v196;
      v195 = [*(v356 + 68) currentDownload];
      v192 = v195;
      v193 = [*(v356 + 68) currentUpdateOperationType];
      v191 = SUUIUpdateContinuousOperationTypeToString(v193);
      v188 = v191;
      v106 = MEMORY[0x277D82BE0](v188);
      v107 = v356;
      v189 = v106;
      *(v356 + 6) = v106;
      v190 = [v107[68] isTargetedUpdateScheduledForAutoInstall];
      v425 = v190;
      if (v190)
      {
        v108 = @"YES";
      }

      else
      {
        v108 = @"NO";
      }

      v187 = v108;
      v109 = v108;
      v184 = v187;
      v110 = MEMORY[0x277D82BE0](v184);
      v111 = v356;
      v185 = v110;
      *(v356 + 5) = v110;
      v186 = [v111[68] hidingPreferredDescriptor];
      v424 = v186;
      if (v186)
      {
        v112 = @"YES";
      }

      else
      {
        v112 = @"NO";
      }

      v183 = v112;
      v113 = v112;
      v180 = v183;
      v114 = MEMORY[0x277D82BE0](v180);
      v115 = v356;
      v181 = v114;
      *(v356 + 4) = v114;
      v182 = [v115[68] hiddenPreferredStatefulDescriptor];
      v178 = v182;
      v179 = [v178 updateName];
      v175 = v179;
      v116 = MEMORY[0x277D82BE0](v175);
      v117 = v356;
      v176 = v116;
      *(v356 + 3) = v116;
      v177 = [v117[68] hidingAlternateDescriptor];
      v423 = v177;
      if (v177)
      {
        v118 = @"YES";
      }

      else
      {
        v118 = @"NO";
      }

      v174 = v118;
      v119 = v118;
      v171 = v174;
      v120 = MEMORY[0x277D82BE0](v171);
      v121 = v356;
      v172 = v120;
      *(v356 + 2) = v120;
      v173 = [v121[68] hiddenAlternateStatefulDescriptor];
      v169 = v173;
      v170 = [v169 updateName];
      v166 = v170;
      v122 = MEMORY[0x277D82BE0](v166);
      v123 = v356;
      v167 = v122;
      *(v356 + 1) = v122;
      v168 = [v123[68] enrolledBetaProgram];
      v165 = v168;
      v374 = 0;
      if (v165)
      {
        v164 = [*(v356 + 68) enrolledBetaProgram];
        v124 = v164;
        *v356 = v124;
        v374 = 1;
        v163 = [v124 programID];
        v162 = v163;
      }

      else
      {
        v162 = 0;
      }

      v160 = v162;
      v161 = [*(*(v356 + 68) + 120) count];
      v159 = [*(v356 + 68) canEnrollInBetaUpdates];
      v422 = v159;
      if (v159)
      {
        v125 = @"YES";
      }

      else
      {
        v125 = @"NO";
      }

      v158 = v125;
      v126 = v125;
      v152 = v158;
      v153 = MEMORY[0x277D82BE0](v152);
      v373 = v153;
      v154 = *(*(v356 + 68) + 168);
      v155 = *(*(v356 + 68) + 176);
      v156 = *(*(v356 + 68) + 184);
      v157 = [*(*(v356 + 68) + 192) count];
      v151 = SUUIUpdateContinuousOperationTypeToString(v357[13]);
      v150 = v151;
      v372 = MEMORY[0x277D82BE0](v150);
      v127 = v357[4];
      v128 = *(v356 + 24);
      v148 = &v130;
      v149 = v430;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v430, v359, v226, v221, v218, v219, v209, v207, v205, v203, v201, v194, v192, v189, v185, v181, v176, v172, v167, v160, v161, v153, v154, v155, v156, v157, v372, v127, v128);
      _os_log_impl(&dword_26ADE5000, v224, v225[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to perform the update operation %{public}@ into: %{public}@, using operation identifier: %{public}@", v149, 0x11Au);
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v152);
      if (v374)
      {
        MEMORY[0x277D82BD8](*v356);
      }

      MEMORY[0x277D82BD8](v165);
      MEMORY[0x277D82BD8](v166);
      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v171);
      MEMORY[0x277D82BD8](v175);
      MEMORY[0x277D82BD8](v178);
      MEMORY[0x277D82BD8](v180);
      MEMORY[0x277D82BD8](v184);
      MEMORY[0x277D82BD8](v188);
      MEMORY[0x277D82BD8](v192);
      if (v382)
      {
        MEMORY[0x277D82BD8](*(v356 + 8));
      }

      if (v383)
      {
        MEMORY[0x277D82BD8](*(v356 + 10));
      }

      if (v384)
      {
        MEMORY[0x277D82BD8](*(v356 + 12));
      }

      MEMORY[0x277D82BD8](v200);
      MEMORY[0x277D82BD8](v201);
      MEMORY[0x277D82BD8](v203);
      MEMORY[0x277D82BD8](v205);
      MEMORY[0x277D82BD8](v207);
      if (v385)
      {
        MEMORY[0x277D82BD8](*(v356 + 14));
      }

      if (v386)
      {
        MEMORY[0x277D82BD8](*(v356 + 16));
      }

      MEMORY[0x277D82BD8](v215);
      MEMORY[0x277D82BD8](v217);
      MEMORY[0x277D82BD8](v220);
      objc_storeStrong(&v372, 0);
      objc_storeStrong(&v373, 0);
      objc_storeStrong(&v376, 0);
      objc_storeStrong(&v377, 0);
      objc_storeStrong(&v378, 0);
      objc_storeStrong(&v379, 0);
      objc_storeStrong(&v380, 0);
      objc_storeStrong(&v381, 0);
      objc_storeStrong(&v387, 0);
      objc_storeStrong(&v388, 0);
    }

    objc_storeStrong(&v390, 0);
    if (v357[15])
    {
      [*(*(v356 + 68) + 192) addObject:*(v356 + 23)];
    }

    else
    {
      [*(v356 + 68) setCurrentUpdateOperation:*(v356 + 23)];
      [*(v356 + 68) setCurrentUpdateOperationType:v357[13]];
    }

    v144 = *(v356 + 68);
    v145 = v357[14];
    v146 = *(v356 + 23);
    v147 = [v357[4] descriptor];
    v142 = v147;
    v129 = *(v356 + 23);
    v143 = (*(v357[8] + 2))();
    v139 = v143;
    v140 = v357[6];
    v362 = MEMORY[0x277D85DD0];
    v363 = -1073741824;
    v364 = 0;
    v365 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_457;
    v366 = &unk_279CC6748;
    v141 = v370;
    objc_copyWeak(v370, v357 + 11);
    v133 = 1;
    v361 = 1;
    v137 = &v362;
    v370[1] = v357[12];
    v131 = v369;
    v369[0] = MEMORY[0x277D82BE0](v357[7]);
    v370[2] = v357[13];
    v132 = v137 + 4;
    v367 = MEMORY[0x277D82BE0](*(v356 + 24));
    v371 = v357[15] & v133;
    v134 = v137 + 5;
    v368 = MEMORY[0x277D82BE0](*(v356 + 23));
    v135 = v137 + 7;
    v369[1] = MEMORY[0x277D82BE0](v357[9]);
    v136 = v137 + 8;
    v369[2] = MEMORY[0x277D82BE0](v357[10]);
    v138 = MEMORY[0x26D66ADC0](v137);
    [v144 performSelector:v145 onTarget:v146 withObject:v142 withObject:v139 withObject:v140 withObject:v138];
    v361 = 0;
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v142);
    objc_storeStrong(v136, 0);
    objc_storeStrong(v135, 0);
    objc_storeStrong(v134, 0);
    objc_storeStrong(v132, 0);
    objc_storeStrong(v131, 0);
    objc_destroyWeak(v141);
    objc_storeStrong(&v392, 0);
    objc_storeStrong(&v393, 0);
    *(v356 + 117) = 0;
  }

  else
  {
    v342 = +[SUUILoggingContext statefulUILogger];
    v340 = v342;
    v341 = [v340 oslog];
    v15 = v341;
    v16 = v340;
    *(v356 + 56) = v15;
    MEMORY[0x277D82BD8](v16);
    v414 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v356 + 56), OS_LOG_TYPE_DEFAULT))
    {
      v336 = *(v356 + 56);
      *v337 = v414;
      v338 = *(v356 + 68);
      v17 = *(v356 + 68);
      aClass = objc_opt_class();
      v335 = NSStringFromClass(aClass);
      v332 = v335;
      v18 = MEMORY[0x277D82BE0](v332);
      v19 = v356;
      v333 = v18;
      *(v356 + 54) = v18;
      v334 = SUUIStatefulUIStateToString(*(*(v19 + 68) + 40));
      v329 = v334;
      v20 = MEMORY[0x277D82BE0](v329);
      v21 = v356;
      v330 = v20;
      *(v356 + 53) = v20;
      v331 = [v21[68] currentState];
      v328 = [*(v356 + 68) delegate];
      v327 = v328;
      v411 = 0;
      v410 = 0;
      if (v327)
      {
        v326 = [*(v356 + 68) delegate];
        *(v356 + 52) = v326;
        v411 = 1;
        v325 = objc_opt_class();
        v324 = NSStringFromClass(v325);
        v22 = v324;
        *(v356 + 50) = v22;
        v410 = 1;
        v323 = v22;
      }

      else
      {
        v323 = @"(null)";
      }

      v321 = v323;
      v322 = [*(v356 + 68) delegate];
      v319 = v322;
      v320 = [*(v356 + 68) scanError];
      v317 = v320;
      v318 = [*(v356 + 68) preferredStatefulDescriptor];
      v315 = v318;
      v316 = [*(v356 + 68) alternateStatefulDescriptor];
      v313 = v316;
      v314 = [*(v356 + 68) currentDownload];
      v312 = v314;
      v409 = 0;
      v408 = 0;
      v407 = 0;
      if (v312)
      {
        v311 = [*(v356 + 68) currentDownload];
        v23 = v311;
        *(v356 + 48) = v23;
        v409 = 1;
        v310 = [v23 descriptor];
        v24 = v310;
        *(v356 + 46) = v24;
        v408 = 1;
        v309 = [v24 updateName];
        v25 = v309;
        *(v356 + 44) = v25;
        v407 = 1;
        v308 = v25;
      }

      else
      {
        v308 = @"(null)";
      }

      v306 = v308;
      v307 = [*(v356 + 68) currentDownload];
      v304 = v307;
      v305 = [*(v356 + 68) currentUpdateOperationType];
      v303 = SUUIUpdateContinuousOperationTypeToString(v305);
      v300 = v303;
      v26 = MEMORY[0x277D82BE0](v300);
      v27 = v356;
      v301 = v26;
      *(v356 + 42) = v26;
      v302 = [v27[68] isTargetedUpdateScheduledForAutoInstall];
      v429 = v302;
      if (v302)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v299 = v28;
      v29 = v28;
      v296 = v299;
      v30 = MEMORY[0x277D82BE0](v296);
      v31 = v356;
      v297 = v30;
      *(v356 + 41) = v30;
      v298 = [v31[68] hidingPreferredDescriptor];
      v428 = v298;
      if (v298)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v295 = v32;
      v33 = v32;
      v292 = v295;
      v34 = MEMORY[0x277D82BE0](v292);
      v35 = v356;
      v293 = v34;
      *(v356 + 40) = v34;
      v294 = [v35[68] hiddenPreferredStatefulDescriptor];
      v290 = v294;
      v291 = [v290 updateName];
      v287 = v291;
      v36 = MEMORY[0x277D82BE0](v287);
      v37 = v356;
      v288 = v36;
      *(v356 + 39) = v36;
      v289 = [v37[68] hidingAlternateDescriptor];
      v427 = v289;
      if (v289)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v286 = v38;
      v39 = v38;
      v283 = v286;
      v40 = MEMORY[0x277D82BE0](v283);
      v41 = v356;
      v284 = v40;
      *(v356 + 38) = v40;
      v285 = [v41[68] hiddenAlternateStatefulDescriptor];
      v281 = v285;
      v282 = [v281 updateName];
      v278 = v282;
      v42 = MEMORY[0x277D82BE0](v278);
      v43 = v356;
      v279 = v42;
      *(v356 + 37) = v42;
      v280 = [v43[68] enrolledBetaProgram];
      v277 = v280;
      v400 = 0;
      if (v277)
      {
        v276 = [*(v356 + 68) enrolledBetaProgram];
        v44 = v276;
        *(v356 + 36) = v44;
        v400 = 1;
        v275 = [v44 programID];
        v274 = v275;
      }

      else
      {
        v274 = 0;
      }

      v272 = v274;
      v273 = [*(*(v356 + 68) + 120) count];
      v271 = [*(v356 + 68) canEnrollInBetaUpdates];
      v426 = v271;
      if (v271)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v270 = v45;
      v46 = v45;
      v264 = v270;
      v47 = MEMORY[0x277D82BE0](v264);
      v48 = v356;
      v265 = v47;
      *(v356 + 34) = v47;
      v266 = *(*(v48 + 68) + 168);
      v267 = *(*(v48 + 68) + 176);
      v268 = *(*(v48 + 68) + 184);
      v269 = [*(*(v48 + 68) + 192) count];
      v263 = SUUIUpdateContinuousOperationTypeToString(*(v356 + 57));
      v260 = v263;
      v49 = MEMORY[0x277D82BE0](v260);
      v50 = v357;
      v261 = v49;
      *(v356 + 33) = v49;
      v262 = SUUIUpdateContinuousOperationTypeToString(v50[13]);
      v51 = v279;
      v52 = v284;
      v53 = v288;
      v54 = v293;
      v55 = v297;
      v56 = v301;
      v57 = v304;
      v58 = v306;
      v59 = v313;
      v60 = v315;
      v259 = v262;
      v61 = MEMORY[0x277D82BE0](v259);
      v62 = v357;
      v63 = v272;
      v64 = v273;
      v65 = v265;
      v66 = v266;
      v67 = v267;
      v68 = v268;
      v69 = v269;
      v70 = v261;
      v71 = v359;
      v72 = v338;
      v73 = v333;
      v74 = v330;
      v75 = v331;
      v76 = v321;
      v77 = v319;
      v78 = v317;
      *(v356 + 32) = v61;
      v79 = v62[4];
      v257 = &v130;
      v258 = v431;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v431, v71, v72, v73, v74, v75, v76, v77, v78, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v63, v64, v65, v66, v67, v68, v69, v70, v61, v79);
      _os_log_impl(&dword_26ADE5000, v336, v337[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThere is already an update operation running (%{public}@). Ignoring update request %{public}@, into: %{public}@", v258, 0x11Au);
      MEMORY[0x277D82BD8](v259);
      MEMORY[0x277D82BD8](v260);
      MEMORY[0x277D82BD8](v264);
      if (v400)
      {
        MEMORY[0x277D82BD8](*(v356 + 36));
      }

      MEMORY[0x277D82BD8](v277);
      MEMORY[0x277D82BD8](v278);
      MEMORY[0x277D82BD8](v281);
      MEMORY[0x277D82BD8](v283);
      MEMORY[0x277D82BD8](v287);
      MEMORY[0x277D82BD8](v290);
      MEMORY[0x277D82BD8](v292);
      MEMORY[0x277D82BD8](v296);
      MEMORY[0x277D82BD8](v300);
      MEMORY[0x277D82BD8](v304);
      if (v407)
      {
        MEMORY[0x277D82BD8](*(v356 + 44));
      }

      if (v408)
      {
        MEMORY[0x277D82BD8](*(v356 + 46));
      }

      if (v409)
      {
        MEMORY[0x277D82BD8](*(v356 + 48));
      }

      MEMORY[0x277D82BD8](v312);
      MEMORY[0x277D82BD8](v313);
      MEMORY[0x277D82BD8](v315);
      MEMORY[0x277D82BD8](v317);
      MEMORY[0x277D82BD8](v319);
      if (v410)
      {
        MEMORY[0x277D82BD8](*(v356 + 50));
      }

      if (v411)
      {
        MEMORY[0x277D82BD8](*(v356 + 52));
      }

      MEMORY[0x277D82BD8](v327);
      MEMORY[0x277D82BD8](v329);
      MEMORY[0x277D82BD8](v332);
      objc_storeStrong(&v397, 0);
      objc_storeStrong(&v398, 0);
      objc_storeStrong(&v399, 0);
      objc_storeStrong(&v401, 0);
      objc_storeStrong(&v402, 0);
      objc_storeStrong(&v403, 0);
      objc_storeStrong(&v404, 0);
      objc_storeStrong(&v405, 0);
      objc_storeStrong(&v406, 0);
      objc_storeStrong(&v412, 0);
      objc_storeStrong(&v413, 0);
    }

    objc_storeStrong(&v415, 0);
    v256 = [MEMORY[0x277D643F8] sharedCore];
    v254 = v256;
    v255 = [*(v356 + 68) delegateCallbackQueue];
    v252 = v255;
    v253 = [v254 selectDelegateCallbackQueue:?];
    v80 = v253;
    v81 = v356;
    v82 = v357;
    v250 = v80;
    *(v356 + 25) = MEMORY[0x277D85DD0];
    *(v81 + 52) = -1073741824;
    *(v81 + 53) = 0;
    *(v81 + 27) = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_452;
    *(v81 + 28) = &unk_279CC6548;
    v251 = v396;
    objc_copyWeak(v396, v82 + 11);
    v83 = v357;
    v249 = &v394;
    *(v356 + 31) = v357[12];
    v248 = &v395;
    v84 = MEMORY[0x277D82BE0](v83[7]);
    v85 = v249;
    v86 = v84;
    v87 = v250;
    *(v356 + 29) = v86;
    dispatch_async(v87, v85);
    MEMORY[0x277D82BD8](v250);
    MEMORY[0x277D82BD8](v252);
    MEMORY[0x277D82BD8](v254);
    v88 = v248;
    *(v356 + 117) = 1;
    objc_storeStrong(v88, 0);
    objc_destroyWeak(v251);
  }

  objc_storeStrong(v421, 0);
  *MEMORY[0x277D85DE8];
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_450(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_452(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v28[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v27 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v6 = NSStringFromSelector(*(a1 + 48));
      v25 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v29, "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke", v25);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v29, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v2 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v2;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_453;
    v22 = &unk_279CC61E0;
    v23 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    v17 = 1;
  }

  else
  {
    v16 = MEMORY[0x26D66ADC0](*(a1 + 32));
    v14 = 0;
    v12 = 0;
    v10 = 0;
    if (v16)
    {
      v15 = [v28[0] environment];
      v14 = 1;
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:3 userInfo:?];
      v12 = 1;
      v11 = [v15 statefulErrorWithError:?];
      v10 = 1;
      (*(v16 + 2))(v16, 0, 0);
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_453(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_457(void *a1, void *a2, void *a3)
{
  v213 = &v228;
  v214 = a1;
  obj = a3;
  v216 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v217 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v267 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v259 = 0;
  objc_storeStrong(&v259, obj);
  v258[1] = v214;
  WeakRetained = objc_loadWeakRetained(v214 + 9);
  v258[0] = WeakRetained;
  v211 = 0;
  if (!WeakRetained)
  {
    v210 = +[SUUILoggingContext softwareUpdateUILogger];
    v208 = v210;
    v209 = [v208 oslog];
    v3 = v209;
    v4 = v208;
    v213[40] = v3;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v213[40], OS_LOG_TYPE_ERROR))
    {
      log = v213[40];
      *v206 = type;
      v207 = NSStringFromSelector(*(v214 + 10));
      v204 = v207;
      v5 = MEMORY[0x277D82BE0](v204);
      v6 = v216;
      v213[38] = v5;
      buf = v266;
      __os_log_helper_16_2_2_8_32_8_66(v266, v6, v5);
      _os_log_error_impl(&dword_26ADE5000, log, v206[0], "%s: Self is nil in %{public}@. Stopping.", v266, 0x16u);
      MEMORY[0x277D82BD8](v204);
      objc_storeStrong(&v255, 0);
    }

    objc_storeStrong(&v257, 0);
    v254[3] = 1;
    v211 = 1;
  }

  if (v211)
  {
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9 = v214;
    v10 = v213;
    queue = v8;
    block = &v251;
    v213[32] = MEMORY[0x277D85DD0];
    v252 = -1073741824;
    v253 = 0;
    v10[34] = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_458;
    v10[35] = &unk_279CC61E0;
    v200 = v254;
    v11 = MEMORY[0x277D82BE0](v9[6]);
    v12 = block;
    v13 = v11;
    v14 = queue;
    v213[36] = v13;
    dispatch_async(v14, v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v200, 0);
    v250 = 1;
  }

  else
  {
    v199 = +[SUUILoggingContext statefulUILogger];
    v197 = v199;
    v198 = [v197 oslog];
    v15 = v198;
    v16 = v197;
    v213[30] = v15;
    MEMORY[0x277D82BD8](v16);
    v248 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v213[30], OS_LOG_TYPE_DEFAULT))
    {
      v193 = v213[30];
      *v194 = v248;
      v195 = v213[41];
      v17 = v213[41];
      aClass = objc_opt_class();
      v192 = NSStringFromClass(aClass);
      v189 = v192;
      v18 = MEMORY[0x277D82BE0](v189);
      v19 = v213;
      v190 = v18;
      v213[28] = v18;
      v191 = SUUIStatefulUIStateToString(*(v19[41] + 40));
      v186 = v191;
      v20 = MEMORY[0x277D82BE0](v186);
      v21 = v213;
      v187 = v20;
      v213[27] = v20;
      v188 = [v21[41] currentState];
      v185 = [v213[41] delegate];
      v184 = v185;
      v245 = 0;
      v244 = 0;
      if (v184)
      {
        v183 = [v213[41] delegate];
        v213[26] = v183;
        v245 = 1;
        v182 = objc_opt_class();
        v181 = NSStringFromClass(v182);
        v22 = v181;
        v213[24] = v22;
        v244 = 1;
        v180 = v22;
      }

      else
      {
        v180 = @"(null)";
      }

      v178 = v180;
      v179 = [v213[41] delegate];
      v176 = v179;
      v177 = [v213[41] scanError];
      v174 = v177;
      v175 = [v213[41] preferredStatefulDescriptor];
      v172 = v175;
      v173 = [v213[41] alternateStatefulDescriptor];
      v170 = v173;
      v171 = [v213[41] currentDownload];
      v169 = v171;
      v243 = 0;
      v242 = 0;
      v241 = 0;
      if (v169)
      {
        v168 = [v213[41] currentDownload];
        v23 = v168;
        v213[22] = v23;
        v243 = 1;
        v167 = [v23 descriptor];
        v24 = v167;
        v213[20] = v24;
        v242 = 1;
        v166 = [v24 updateName];
        v25 = v166;
        v213[18] = v25;
        v241 = 1;
        v165 = v25;
      }

      else
      {
        v165 = @"(null)";
      }

      v163 = v165;
      v164 = [v213[41] currentDownload];
      v161 = v164;
      v162 = [v213[41] currentUpdateOperationType];
      v160 = SUUIUpdateContinuousOperationTypeToString(v162);
      v157 = v160;
      v26 = MEMORY[0x277D82BE0](v157);
      v27 = v213;
      v158 = v26;
      v213[16] = v26;
      v159 = [v27[41] isTargetedUpdateScheduledForAutoInstall];
      v264 = v159;
      if (v159)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v156 = v28;
      v29 = v28;
      v153 = v156;
      v30 = MEMORY[0x277D82BE0](v153);
      v31 = v213;
      v154 = v30;
      v213[15] = v30;
      v155 = [v31[41] hidingPreferredDescriptor];
      v263 = v155;
      if (v155)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v152 = v32;
      v33 = v32;
      v149 = v152;
      v34 = MEMORY[0x277D82BE0](v149);
      v35 = v213;
      v150 = v34;
      v213[14] = v34;
      v151 = [v35[41] hiddenPreferredStatefulDescriptor];
      v147 = v151;
      v148 = [v147 updateName];
      v144 = v148;
      v36 = MEMORY[0x277D82BE0](v144);
      v37 = v213;
      v145 = v36;
      v213[13] = v36;
      v146 = [v37[41] hidingAlternateDescriptor];
      v262 = v146;
      if (v146)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v143 = v38;
      v39 = v38;
      v140 = v143;
      v40 = MEMORY[0x277D82BE0](v140);
      v41 = v213;
      v141 = v40;
      v213[12] = v40;
      v142 = [v41[41] hiddenAlternateStatefulDescriptor];
      v138 = v142;
      v139 = [v138 updateName];
      v135 = v139;
      v42 = MEMORY[0x277D82BE0](v135);
      v43 = v213;
      v136 = v42;
      v213[11] = v42;
      v137 = [v43[41] enrolledBetaProgram];
      v134 = v137;
      v234 = 0;
      if (v134)
      {
        v133 = [v213[41] enrolledBetaProgram];
        v44 = v133;
        v213[10] = v44;
        v234 = 1;
        v132 = [v44 programID];
        v131 = v132;
      }

      else
      {
        v131 = 0;
      }

      v129 = v131;
      v130 = [*(v213[41] + 120) count];
      v128 = [v213[41] canEnrollInBetaUpdates];
      v261 = v128;
      if (v128)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v127 = v45;
      v46 = v45;
      v121 = v127;
      v47 = MEMORY[0x277D82BE0](v121);
      v48 = v213;
      v122 = v47;
      v213[8] = v47;
      v123 = *(v48[41] + 168);
      v124 = *(v48[41] + 176);
      v125 = *(v48[41] + 184);
      v126 = [*(v48[41] + 192) count];
      v120 = SUUIUpdateContinuousOperationTypeToString(*(v214 + 11));
      v49 = v141;
      v50 = v145;
      v51 = v150;
      v52 = v154;
      v53 = v158;
      v54 = v161;
      v55 = v163;
      v56 = v170;
      v57 = v172;
      v58 = v174;
      v119 = v120;
      v59 = MEMORY[0x277D82BE0](v119);
      v60 = v214;
      v61 = v136;
      v62 = v129;
      v63 = v130;
      v64 = v122;
      v65 = v123;
      v66 = v124;
      v67 = v125;
      v68 = v126;
      v69 = v217;
      v70 = v195;
      v71 = v190;
      v72 = v187;
      v73 = v188;
      v74 = v178;
      v75 = v176;
      v213[7] = v59;
      v76 = v60[4];
      v117 = &v91;
      v118 = v265;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v265, v69, v70, v71, v72, v73, v74, v75, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v61, v62, v63, v64, v65, v66, v67, v68, v59, v76);
      _os_log_impl(&dword_26ADE5000, v193, v194[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the update operation %{public}@ using operation identifier: %{public}@", v118, 0x110u);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v121);
      if (v234)
      {
        MEMORY[0x277D82BD8](v213[10]);
      }

      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v153);
      MEMORY[0x277D82BD8](v157);
      MEMORY[0x277D82BD8](v161);
      if (v241)
      {
        MEMORY[0x277D82BD8](v213[18]);
      }

      if (v242)
      {
        MEMORY[0x277D82BD8](v213[20]);
      }

      if (v243)
      {
        MEMORY[0x277D82BD8](v213[22]);
      }

      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](v174);
      MEMORY[0x277D82BD8](v176);
      if (v244)
      {
        MEMORY[0x277D82BD8](v213[24]);
      }

      if (v245)
      {
        MEMORY[0x277D82BD8](v213[26]);
      }

      MEMORY[0x277D82BD8](v184);
      MEMORY[0x277D82BD8](v186);
      MEMORY[0x277D82BD8](v189);
      objc_storeStrong(&v232, 0);
      objc_storeStrong(&v233, 0);
      objc_storeStrong(&v235, 0);
      objc_storeStrong(&v236, 0);
      objc_storeStrong(&v237, 0);
      objc_storeStrong(&v238, 0);
      objc_storeStrong(&v239, 0);
      objc_storeStrong(&v240, 0);
      objc_storeStrong(&v246, 0);
      objc_storeStrong(&v247, 0);
    }

    objc_storeStrong(&v249, 0);
    if (*(v214 + 96))
    {
      [*(v213[41] + 192) removeObject:*(v214 + 5)];
    }

    else
    {
      [v213[41] setCurrentUpdateOperation:0];
    }

    if (v213[44] && (!*(v214 + 7) || (v77 = v213[44], v116 = (*(*(v214 + 7) + 16))(), (v116 & 1) != 0)))
    {
      v102 = MEMORY[0x26D66ADC0](*(v214 + 8));
      v227 = v102;
      if (v102)
      {
        (*(v227 + 2))(v227, v213[44]);
        v226 = 0;
      }

      else
      {
        v225 = 0;
      }

      objc_storeStrong(&v227, 0);
      v100 = v213[41];
      v101 = [v213[41] currentDownload];
      v97 = v101;
      v98 = v213[43];
      v218 = MEMORY[0x277D85DD0];
      v219 = -1073741824;
      v220 = 0;
      v221 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2;
      v222 = &unk_279CC6720;
      v99 = v224;
      objc_copyWeak(v224, v214 + 9);
      v96 = &v218;
      v224[1] = *(v214 + 10);
      v224[2] = *(v214 + 11);
      v92 = v223;
      v223[0] = MEMORY[0x277D82BE0](*(v214 + 4));
      v93 = v96 + 7;
      v223[3] = MEMORY[0x277D82BE0](*(v214 + 6));
      v94 = v96 + 5;
      v223[1] = MEMORY[0x277D82BE0](v213[44]);
      v95 = v96 + 6;
      v223[2] = MEMORY[0x277D82BE0](v213[43]);
      [v100 performPostUpdateOperationRefreshWithDownload:v97 error:v98 completionHandler:v96];
      MEMORY[0x277D82BD8](v97);
      objc_storeStrong(v95, 0);
      objc_storeStrong(v94, 0);
      objc_storeStrong(v93, 0);
      objc_storeStrong(v92, 0);
      objc_destroyWeak(v99);
      v250 = 0;
    }

    else
    {
      [v213[41] setCurrentUpdateOperationType:0];
      v115 = [MEMORY[0x277D643F8] sharedCore];
      v113 = v115;
      v114 = [v213[41] delegateCallbackQueue];
      v111 = v114;
      v112 = [v113 selectDelegateCallbackQueue:?];
      v78 = v112;
      v79 = v214;
      v80 = v213;
      v110 = v78;
      v109 = &v228;
      v228 = MEMORY[0x277D85DD0];
      v229 = -1073741824;
      v230 = 0;
      v213[2] = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_459;
      v80[3] = &unk_279CC6570;
      v106 = &v231;
      v81 = MEMORY[0x277D82BE0](v79[6]);
      v82 = v213;
      v83 = v109;
      v213[6] = v81;
      v107 = (v83 + 32);
      v84 = MEMORY[0x277D82BE0](v82[44]);
      v85 = v213;
      v86 = v109;
      v213[4] = v84;
      v108 = (v86 + 40);
      v87 = MEMORY[0x277D82BE0](v85[43]);
      v88 = v109;
      v89 = v87;
      v90 = v110;
      v213[5] = v89;
      dispatch_async(v90, v88);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v111);
      MEMORY[0x277D82BD8](v113);
      v105 = [v213[43] traits];
      v103 = v105;
      v104 = [v103 noUpdateFound];
      MEMORY[0x277D82BD8](v103);
      if (v104)
      {
        [v213[41] checkForAvailableUpdates:1];
      }

      v250 = 1;
      objc_storeStrong(v108, 0);
      objc_storeStrong(v107, 0);
      objc_storeStrong(v106, 0);
    }
  }

  objc_storeStrong(v258, 0);
  if (!v250)
  {
    v250 = 0;
  }

  objc_storeStrong(&v259, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_458(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_459(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2(id *a1, char a2)
{
  v86 = a1;
  v87 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v88 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v135 = *MEMORY[0x277D85DE8];
  v128 = a1;
  v127 = a2;
  v126[1] = a1;
  v126[0] = objc_loadWeakRetained(a1 + 8);
  v85 = 0;
  if (!v126[0])
  {
    v84 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v84 oslog];
    MEMORY[0x277D82BD8](v84);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v80 = type;
      v82 = NSStringFromSelector(v86[9]);
      location = &v123;
      v123 = MEMORY[0x277D82BE0](v82);
      buf = v134;
      __os_log_helper_16_2_2_8_32_8_66(v134, v87, v123);
      _os_log_error_impl(&dword_26ADE5000, log, v80[0], "%s: Self is nil in %{public}@. Stopping.", v134, 0x16u);
      MEMORY[0x277D82BD8](v82);
      objc_storeStrong(&v123, 0);
    }

    objc_storeStrong(&oslog, 0);
    v122 = 1;
    v85 = 1;
  }

  if (v85)
  {
    v121 = 1;
  }

  else
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    v120 = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    v119 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v120;
      *v70 = v119;
      v71 = v126[0];
      v2 = objc_opt_class();
      v72 = NSStringFromClass(v2);
      v73 = MEMORY[0x277D82BE0](v72);
      v118 = v73;
      v74 = SUUIStatefulUIStateToString(*(v126[0] + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v117 = v75;
      v76 = [v126[0] currentState];
      v77 = [v126[0] delegate];
      v115 = 0;
      v113 = 0;
      if (v77)
      {
        v116 = [v126[0] delegate];
        v67 = 1;
        v115 = 1;
        v3 = objc_opt_class();
        v114 = NSStringFromClass(v3);
        v113 = 1;
        v68 = v114;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      v62 = [v126[0] delegate];
      v63 = [v126[0] scanError];
      v64 = [v126[0] preferredStatefulDescriptor];
      v65 = [v126[0] alternateStatefulDescriptor];
      v66 = [v126[0] currentDownload];
      v111 = 0;
      v109 = 0;
      v107 = 0;
      if (v66)
      {
        v112 = [v126[0] currentDownload];
        v59 = 1;
        v111 = 1;
        v110 = [v112 descriptor];
        v109 = 1;
        v108 = [v110 updateName];
        v107 = 1;
        v60 = v108;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      v37 = [v126[0] currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([v126[0] currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v106 = v39;
      v132 = [v126[0] isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (v132)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v40 = v4;
      v5 = v4;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v105 = v42;
      v131 = [v126[0] hidingPreferredDescriptor];
      if (v131)
      {
        v6 = v50;
      }

      else
      {
        v6 = v49;
      }

      v43 = v6;
      v7 = v6;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v104 = v45;
      v46 = [v126[0] hiddenPreferredStatefulDescriptor];
      v47 = [v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v103 = v48;
      v130 = [v126[0] hidingAlternateDescriptor];
      if (v130)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v51 = v8;
      v9 = v8;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v102 = v53;
      v54 = [v126[0] hiddenAlternateStatefulDescriptor];
      v55 = [v54 updateName];
      v56 = MEMORY[0x277D82BE0](v55);
      v101 = v56;
      v58 = [v126[0] enrolledBetaProgram];
      v99 = 0;
      if (v58)
      {
        v100 = [v126[0] enrolledBetaProgram];
        v99 = 1;
        v35 = [v100 programID];
      }

      else
      {
        v35 = 0;
      }

      v24 = v35;
      v25 = [*(v126[0] + 15) count];
      v129 = [v126[0] canEnrollInBetaUpdates];
      if (v129)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v23 = v10;
      v11 = v10;
      v34 = v23;
      v26 = MEMORY[0x277D82BE0](v34);
      v98 = v26;
      v27 = *(v126[0] + 21);
      v28 = *(v126[0] + 22);
      v29 = *(v126[0] + 23);
      v30 = [*(v126[0] + 24) count];
      v33 = SUUIUpdateContinuousOperationTypeToString(v86[10]);
      v97 = MEMORY[0x277D82BE0](v33);
      v12 = v86[4];
      v31 = &v13;
      v32 = v133;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v133, v88, v71, v73, v75, v76, v61, v62, v63, v64, v65, v36, v37, v39, v42, v45, v48, v53, v56, v24, v25, v26, v27, v28, v29, v30, v97, v12);
      _os_log_impl(&dword_26ADE5000, v69, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the post-update refresh for update operation %{public}@, using update operation identifier: %{public}@", v32, 0x110u);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      if (v99)
      {
        MEMORY[0x277D82BD8](v100);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v37);
      if (v107)
      {
        MEMORY[0x277D82BD8](v108);
      }

      if (v109)
      {
        MEMORY[0x277D82BD8](v110);
      }

      if (v111)
      {
        MEMORY[0x277D82BD8](v112);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      if (v113)
      {
        MEMORY[0x277D82BD8](v114);
      }

      if (v115)
      {
        MEMORY[0x277D82BD8](v116);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      obj = 0;
      objc_storeStrong(&v97, 0);
      objc_storeStrong(&v98, obj);
      objc_storeStrong(&v101, obj);
      objc_storeStrong(&v102, obj);
      objc_storeStrong(&v103, obj);
      objc_storeStrong(&v104, obj);
      objc_storeStrong(&v105, obj);
      objc_storeStrong(&v106, obj);
      objc_storeStrong(&v117, obj);
      objc_storeStrong(&v118, obj);
    }

    objc_storeStrong(&v120, 0);
    [v126[0] setCurrentUpdateOperationType:0];
    v17 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v126[0] delegateCallbackQueue];
    queue = [v17 selectDelegateCallbackQueue:?];
    block = &v89;
    v89 = MEMORY[0x277D85DD0];
    v90 = -1073741824;
    v91 = 0;
    v92 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_460;
    v93 = &unk_279CC6570;
    v20 = &v96;
    v96 = MEMORY[0x277D82BE0](v86[7]);
    v19 = (block + 32);
    v94 = MEMORY[0x277D82BE0](v86[5]);
    v18 = (block + 40);
    v95 = MEMORY[0x277D82BE0](v86[6]);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v21 = 0;
    objc_storeStrong(v18, 0);
    objc_storeStrong(v19, v21);
    objc_storeStrong(v20, v21);
    v121 = 0;
  }

  objc_storeStrong(v126, 0);
  *MEMORY[0x277D85DE8];
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_460(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

- (void)performUpdateOnDownloadByApplyingSelector:(SEL)a3 context:(id)a4 description:(id)a5 delegate:(id)a6 delegateCallbackQueue:(id)a7 resultsValidation:(id)a8 resultsAssignment:(id)a9 completion:(id)a10
{
  v38 = self;
  v37 = a2;
  v36 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v33 = 0;
  objc_storeStrong(&v33, a6);
  v32 = 0;
  objc_storeStrong(&v32, a7);
  v31 = 0;
  objc_storeStrong(&v31, a8);
  v30 = 0;
  objc_storeStrong(&v30, a9);
  v29 = 0;
  objc_storeStrong(&v29, a10);
  objc_initWeak(&v28, v38);
  queue = v38->_operationsQueue;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke;
  v19 = &unk_279CC67E8;
  objc_copyWeak(v27, &v28);
  v27[1] = v37;
  v23 = MEMORY[0x277D82BE0](v29);
  v20 = MEMORY[0x277D82BE0](v32);
  v27[2] = v36;
  v21 = MEMORY[0x277D82BE0](v34);
  v24 = MEMORY[0x277D82BE0](location);
  v22 = MEMORY[0x277D82BE0](v33);
  v25 = MEMORY[0x277D82BE0](v31);
  v26 = MEMORY[0x277D82BE0](v30);
  dispatch_async(queue, &v15);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_destroyWeak(v27);
  objc_destroyWeak(&v28);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke(id *a1)
{
  v184 = &v203;
  v185 = a1;
  v186 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v187 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v233 = *MEMORY[0x277D85DE8];
  v226[2] = a1;
  v226[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v226[0] = WeakRetained;
  v183 = 0;
  if (!WeakRetained)
  {
    v182 = +[SUUILoggingContext softwareUpdateUILogger];
    v180 = v182;
    v181 = [v180 oslog];
    v1 = v181;
    v2 = v180;
    v184[33] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v184[33], OS_LOG_TYPE_ERROR))
    {
      log = v184[33];
      *v178 = type;
      v179 = NSStringFromSelector(v185[12]);
      v176 = v179;
      v3 = MEMORY[0x277D82BE0](v176);
      v4 = v186;
      v184[31] = v3;
      buf = v232;
      __os_log_helper_16_2_2_8_32_8_66(v232, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v178[0], "%s: Self is nil in %{public}@. Stopping.", v232, 0x16u);
      MEMORY[0x277D82BD8](v176);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v225, 0);
    v5 = v184;
    *(v184 + 61) = 1;
    v183 = *(v5 + 61) != 0;
  }

  if (v183)
  {
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8 = v185;
    v9 = v184;
    queue = v7;
    block = &v221;
    v184[25] = MEMORY[0x277D85DD0];
    *(v9 + 52) = -1073741824;
    *(v9 + 53) = 0;
    v9[27] = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_462;
    v9[28] = &unk_279CC61E0;
    v172 = &v222;
    v10 = MEMORY[0x277D82BE0](v8[7]);
    v11 = block;
    v12 = v10;
    v13 = queue;
    v184[29] = v12;
    dispatch_async(v13, v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v172, 0);
    *(v184 + 49) = 1;
  }

  else
  {
    v171 = [MEMORY[0x277CCAD78] UUID];
    v169 = v171;
    v170 = [v169 UUIDString];
    v14 = v170;
    v15 = v169;
    v184[23] = v14;
    MEMORY[0x277D82BD8](v15);
    v168 = [v184[34] environment];
    v164 = v168;
    v165 = v184[34];
    v166 = v184[23];
    v167 = v185[4];
    v218 = 0;
    if (v167)
    {
      v163 = v167;
    }

    else
    {
      v162 = [v184[34] delegateCallbackQueue];
      v16 = v162;
      v184[21] = v16;
      v218 = 1;
      v163 = v16;
    }

    v161 = [v164 updateOperationWithManager:v165 identifier:v166 delegateCallbackQueue:v163 completionQueue:*(v184[34] + 26)];
    v184[22] = v161;
    if (v218)
    {
      MEMORY[0x277D82BD8](v184[21]);
    }

    MEMORY[0x277D82BD8](v164);
    v17 = v184[22];
    v18 = v185[13];
    v160 = objc_opt_respondsToSelector();
    if ((v160 & 1) == 0)
    {
      v158 = v184[22];
      v19 = v184[22];
      aClass = objc_opt_class();
      v157 = NSStringFromClass(aClass);
      v155 = v157;
      v156 = NSStringFromSelector(v185[13]);
      _suui_precondition_failure_with_format(@"Can't perform the update request since the Update Operation object (%p, of type: %@) doesn't respond to the selector %@.", v158, v155, v156);
    }

    v154 = +[SUUILoggingContext statefulUILogger];
    v152 = v154;
    v153 = [v152 oslog];
    v20 = v153;
    v21 = v152;
    v184[19] = v20;
    MEMORY[0x277D82BD8](v21);
    v216 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v184[19], OS_LOG_TYPE_DEFAULT))
    {
      v148 = v184[19];
      *v149 = v216;
      v150 = v184[34];
      v22 = v184[34];
      v151 = objc_opt_class();
      v147 = NSStringFromClass(v151);
      v144 = v147;
      v23 = MEMORY[0x277D82BE0](v144);
      v24 = v184;
      v145 = v23;
      v184[17] = v23;
      v146 = SUUIStatefulUIStateToString(*(v24[34] + 5));
      v141 = v146;
      v25 = MEMORY[0x277D82BE0](v141);
      v26 = v184;
      v142 = v25;
      v184[16] = v25;
      v143 = [v26[34] currentState];
      v140 = [v184[34] delegate];
      v139 = v140;
      v213 = 0;
      v212 = 0;
      if (v139)
      {
        v138 = [v184[34] delegate];
        v184[15] = v138;
        v213 = 1;
        v137 = objc_opt_class();
        v136 = NSStringFromClass(v137);
        v27 = v136;
        v184[13] = v27;
        v212 = 1;
        v135 = v27;
      }

      else
      {
        v135 = @"(null)";
      }

      v133 = v135;
      v134 = [v184[34] delegate];
      v131 = v134;
      v132 = [v184[34] scanError];
      v129 = v132;
      v130 = [v184[34] preferredStatefulDescriptor];
      v127 = v130;
      v128 = [v184[34] alternateStatefulDescriptor];
      v125 = v128;
      v126 = [v184[34] currentDownload];
      v124 = v126;
      v211 = 0;
      v210 = 0;
      v209 = 0;
      if (v124)
      {
        v123 = [v184[34] currentDownload];
        v28 = v123;
        v184[11] = v28;
        v211 = 1;
        v122 = [v28 descriptor];
        v29 = v122;
        v184[9] = v29;
        v210 = 1;
        v121 = [v29 updateName];
        v30 = v121;
        v184[7] = v30;
        v209 = 1;
        v120 = v30;
      }

      else
      {
        v120 = @"(null)";
      }

      v118 = v120;
      v119 = [v184[34] currentDownload];
      v116 = v119;
      v117 = [v184[34] currentUpdateOperationType];
      v115 = SUUIUpdateContinuousOperationTypeToString(v117);
      v112 = v115;
      v31 = MEMORY[0x277D82BE0](v112);
      v32 = v184;
      v113 = v31;
      v184[5] = v31;
      v114 = [v32[34] isTargetedUpdateScheduledForAutoInstall];
      v230 = v114;
      if (v114)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      v111 = v33;
      v34 = v33;
      v108 = v111;
      v35 = MEMORY[0x277D82BE0](v108);
      v36 = v184;
      v109 = v35;
      v184[4] = v35;
      v110 = [v36[34] hidingPreferredDescriptor];
      v229 = v110;
      if (v110)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v107 = v37;
      v38 = v37;
      v104 = v107;
      v39 = MEMORY[0x277D82BE0](v104);
      v40 = v184;
      v105 = v39;
      v184[3] = v39;
      v106 = [v40[34] hiddenPreferredStatefulDescriptor];
      v102 = v106;
      v103 = [v102 updateName];
      v99 = v103;
      v41 = MEMORY[0x277D82BE0](v99);
      v42 = v184;
      v100 = v41;
      v184[2] = v41;
      v101 = [v42[34] hidingAlternateDescriptor];
      v228 = v101;
      if (v101)
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      v98 = v43;
      v44 = v43;
      v95 = v98;
      v45 = MEMORY[0x277D82BE0](v95);
      v46 = v184;
      v96 = v45;
      v184[1] = v45;
      v97 = [v46[34] hiddenAlternateStatefulDescriptor];
      v93 = v97;
      v94 = [v93 updateName];
      v90 = v94;
      v47 = MEMORY[0x277D82BE0](v90);
      v48 = v184;
      v91 = v47;
      *v184 = v47;
      v92 = [v48[34] enrolledBetaProgram];
      v89 = v92;
      v201 = 0;
      if (v89)
      {
        v88 = [v184[34] enrolledBetaProgram];
        v202 = v88;
        v201 = 1;
        v87 = [v202 programID];
        v86 = v87;
      }

      else
      {
        v86 = 0;
      }

      v84 = v86;
      v85 = [*(v184[34] + 15) count];
      v83 = [v184[34] canEnrollInBetaUpdates];
      v227 = v83;
      if (v83)
      {
        v49 = @"YES";
      }

      else
      {
        v49 = @"NO";
      }

      v82 = v49;
      v50 = v49;
      v76 = v82;
      v77 = MEMORY[0x277D82BE0](v76);
      v200 = v77;
      v78 = *(v184[34] + 21);
      v79 = *(v184[34] + 22);
      v80 = *(v184[34] + 23);
      v81 = [*(v184[34] + 24) count];
      v74 = v185[5];
      v75 = [v184[34] currentDownload];
      v73 = v75;
      v51 = v184[23];
      v71 = &v53;
      v72 = v231;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v231, v187, v150, v145, v142, v143, v133, v131, v129, v127, v125, v118, v116, v113, v109, v105, v100, v96, v91, v84, v85, v77, v78, v79, v80, v81, v74, v73, v51);
      _os_log_impl(&dword_26ADE5000, v148, v149[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to perform the update operation %{public}@ on download: %{public}@, using operation identifier: %{public}@", v72, 0x11Au);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v76);
      if (v201)
      {
        MEMORY[0x277D82BD8](v202);
      }

      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v116);
      if (v209)
      {
        MEMORY[0x277D82BD8](v184[7]);
      }

      if (v210)
      {
        MEMORY[0x277D82BD8](v184[9]);
      }

      if (v211)
      {
        MEMORY[0x277D82BD8](v184[11]);
      }

      MEMORY[0x277D82BD8](v124);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v127);
      MEMORY[0x277D82BD8](v129);
      MEMORY[0x277D82BD8](v131);
      if (v212)
      {
        MEMORY[0x277D82BD8](v184[13]);
      }

      if (v213)
      {
        MEMORY[0x277D82BD8](v184[15]);
      }

      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v141);
      MEMORY[0x277D82BD8](v144);
      objc_storeStrong(&v200, 0);
      objc_storeStrong(&v203, 0);
      objc_storeStrong(&v204, 0);
      objc_storeStrong(&v205, 0);
      objc_storeStrong(&v206, 0);
      objc_storeStrong(&v207, 0);
      objc_storeStrong(&v208, 0);
      objc_storeStrong(&v214, 0);
      objc_storeStrong(&v215, 0);
    }

    objc_storeStrong(&v217, 0);
    [*(v184[34] + 24) addObject:v184[22]];
    v67 = v184[34];
    v68 = v185[13];
    v69 = v184[22];
    v70 = [v184[34] currentDownload];
    v65 = v70;
    v52 = v184[22];
    v66 = (*(v185[8] + 2))();
    v62 = v66;
    v63 = v185[6];
    v190 = MEMORY[0x277D85DD0];
    v191 = -1073741824;
    v192 = 0;
    v193 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_464;
    v194 = &unk_279CC67C0;
    v64 = v199;
    objc_copyWeak(v199, v185 + 11);
    v189 = 1;
    v60 = &v190;
    v199[1] = v185[12];
    v54 = v198;
    v198[0] = MEMORY[0x277D82BE0](v185[7]);
    v55 = v60 + 4;
    v195 = MEMORY[0x277D82BE0](v185[5]);
    v56 = v60 + 5;
    v196 = MEMORY[0x277D82BE0](v184[23]);
    v57 = v60 + 6;
    v197 = MEMORY[0x277D82BE0](v184[22]);
    v58 = v60 + 8;
    v198[1] = MEMORY[0x277D82BE0](v185[9]);
    v59 = v60 + 9;
    v198[2] = MEMORY[0x277D82BE0](v185[10]);
    v61 = MEMORY[0x26D66ADC0](v60);
    [v67 performSelector:v68 onTarget:v69 withObject:v65 withObject:v62 withObject:v63 withObject:v61];
    v189 = 0;
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v65);
    objc_storeStrong(v59, 0);
    objc_storeStrong(v58, 0);
    objc_storeStrong(v57, 0);
    objc_storeStrong(v56, 0);
    objc_storeStrong(v55, 0);
    objc_storeStrong(v54, 0);
    objc_destroyWeak(v64);
    objc_storeStrong(&v219, 0);
    objc_storeStrong(&v220, 0);
    *(v184 + 49) = 0;
  }

  objc_storeStrong(v226, 0);
  *MEMORY[0x277D85DE8];
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_462(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_464(void *a1, void *a2, void *a3)
{
  v183 = &v198;
  v184 = a1;
  obj = a3;
  v186 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v187 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v236 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v228 = 0;
  objc_storeStrong(&v228, obj);
  v227[1] = v184;
  WeakRetained = objc_loadWeakRetained(v184 + 10);
  v227[0] = WeakRetained;
  v181 = 0;
  if (!WeakRetained)
  {
    v180 = +[SUUILoggingContext softwareUpdateUILogger];
    v178 = v180;
    v179 = [v178 oslog];
    v3 = v179;
    v4 = v178;
    v183[39] = v3;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v183[39], OS_LOG_TYPE_ERROR))
    {
      log = v183[39];
      *v176 = type;
      v177 = NSStringFromSelector(*(v184 + 11));
      v174 = v177;
      v5 = MEMORY[0x277D82BE0](v174);
      v6 = v186;
      v183[37] = v5;
      buf = v235;
      __os_log_helper_16_2_2_8_32_8_66(v235, v6, v5);
      _os_log_error_impl(&dword_26ADE5000, log, v176[0], "%s: Self is nil in %{public}@. Stopping.", v235, 0x16u);
      MEMORY[0x277D82BD8](v174);
      objc_storeStrong(&v224, 0);
    }

    objc_storeStrong(&v226, 0);
    v223[3] = 1;
    v181 = 1;
  }

  if (v181)
  {
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9 = v184;
    v10 = v183;
    queue = v8;
    block = &v220;
    v183[31] = MEMORY[0x277D85DD0];
    v221 = -1073741824;
    v222 = 0;
    v10[33] = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_465;
    v10[34] = &unk_279CC61E0;
    v170 = v223;
    v11 = MEMORY[0x277D82BE0](v9[7]);
    v12 = block;
    v13 = v11;
    v14 = queue;
    v183[35] = v13;
    dispatch_async(v14, v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v170, 0);
    v219 = 1;
  }

  else
  {
    v169 = +[SUUILoggingContext statefulUILogger];
    v167 = v169;
    v168 = [v167 oslog];
    v15 = v168;
    v16 = v167;
    v183[29] = v15;
    MEMORY[0x277D82BD8](v16);
    v217 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v183[29], OS_LOG_TYPE_DEFAULT))
    {
      v163 = v183[29];
      *v164 = v217;
      v165 = v183[40];
      v17 = v183[40];
      aClass = objc_opt_class();
      v162 = NSStringFromClass(aClass);
      v159 = v162;
      v18 = MEMORY[0x277D82BE0](v159);
      v19 = v183;
      v160 = v18;
      v183[27] = v18;
      v161 = SUUIStatefulUIStateToString(*(v19[40] + 40));
      v156 = v161;
      v20 = MEMORY[0x277D82BE0](v156);
      v21 = v183;
      v157 = v20;
      v183[26] = v20;
      v158 = [v21[40] currentState];
      v155 = [v183[40] delegate];
      v154 = v155;
      v214 = 0;
      v213 = 0;
      if (v154)
      {
        v153 = [v183[40] delegate];
        v183[25] = v153;
        v214 = 1;
        v152 = objc_opt_class();
        v151 = NSStringFromClass(v152);
        v22 = v151;
        v183[23] = v22;
        v213 = 1;
        v150 = v22;
      }

      else
      {
        v150 = @"(null)";
      }

      v148 = v150;
      v149 = [v183[40] delegate];
      v146 = v149;
      v147 = [v183[40] scanError];
      v144 = v147;
      v145 = [v183[40] preferredStatefulDescriptor];
      v142 = v145;
      v143 = [v183[40] alternateStatefulDescriptor];
      v140 = v143;
      v141 = [v183[40] currentDownload];
      v139 = v141;
      v212 = 0;
      v211 = 0;
      v210 = 0;
      if (v139)
      {
        v138 = [v183[40] currentDownload];
        v23 = v138;
        v183[21] = v23;
        v212 = 1;
        v137 = [v23 descriptor];
        v24 = v137;
        v183[19] = v24;
        v211 = 1;
        v136 = [v24 updateName];
        v25 = v136;
        v183[17] = v25;
        v210 = 1;
        v135 = v25;
      }

      else
      {
        v135 = @"(null)";
      }

      v133 = v135;
      v134 = [v183[40] currentDownload];
      v131 = v134;
      v132 = [v183[40] currentUpdateOperationType];
      v130 = SUUIUpdateContinuousOperationTypeToString(v132);
      v127 = v130;
      v26 = MEMORY[0x277D82BE0](v127);
      v27 = v183;
      v128 = v26;
      v183[15] = v26;
      v129 = [v27[40] isTargetedUpdateScheduledForAutoInstall];
      v233 = v129;
      if (v129)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v126 = v28;
      v29 = v28;
      v123 = v126;
      v30 = MEMORY[0x277D82BE0](v123);
      v31 = v183;
      v124 = v30;
      v183[14] = v30;
      v125 = [v31[40] hidingPreferredDescriptor];
      v232 = v125;
      if (v125)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v122 = v32;
      v33 = v32;
      v119 = v122;
      v34 = MEMORY[0x277D82BE0](v119);
      v35 = v183;
      v120 = v34;
      v183[13] = v34;
      v121 = [v35[40] hiddenPreferredStatefulDescriptor];
      v117 = v121;
      v118 = [v117 updateName];
      v114 = v118;
      v36 = MEMORY[0x277D82BE0](v114);
      v37 = v183;
      v115 = v36;
      v183[12] = v36;
      v116 = [v37[40] hidingAlternateDescriptor];
      v231 = v116;
      if (v116)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v113 = v38;
      v39 = v38;
      v110 = v113;
      v40 = MEMORY[0x277D82BE0](v110);
      v41 = v183;
      v111 = v40;
      v183[11] = v40;
      v112 = [v41[40] hiddenAlternateStatefulDescriptor];
      v108 = v112;
      v109 = [v108 updateName];
      v105 = v109;
      v42 = MEMORY[0x277D82BE0](v105);
      v43 = v183;
      v106 = v42;
      v183[10] = v42;
      v107 = [v43[40] enrolledBetaProgram];
      v104 = v107;
      v203 = 0;
      if (v104)
      {
        v103 = [v183[40] enrolledBetaProgram];
        v44 = v103;
        v183[9] = v44;
        v203 = 1;
        v102 = [v44 programID];
        v101 = v102;
      }

      else
      {
        v101 = 0;
      }

      v99 = v101;
      v100 = [*(v183[40] + 120) count];
      v98 = [v183[40] canEnrollInBetaUpdates];
      v230 = v98;
      if (v98)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v97 = v45;
      v46 = v45;
      v91 = v97;
      v47 = MEMORY[0x277D82BE0](v91);
      v48 = v183;
      v92 = v47;
      v183[7] = v47;
      v93 = *(v48[40] + 168);
      v94 = *(v48[40] + 176);
      v95 = *(v48[40] + 184);
      v96 = [*(v48[40] + 192) count];
      v49 = *(v184 + 4);
      v50 = *(v184 + 5);
      v89 = &v65;
      v90 = v234;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v234, v187, v165, v160, v157, v158, v148, v146, v144, v142, v140, v133, v131, v128, v124, v120, v115, v111, v106, v99, v100, v92, v93, v94, v95, v96, v49, v50);
      _os_log_impl(&dword_26ADE5000, v163, v164[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the update operation %{public}@ using operation identifier: %{public}@", v90, 0x110u);
      MEMORY[0x277D82BD8](v91);
      if (v203)
      {
        MEMORY[0x277D82BD8](v183[9]);
      }

      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v127);
      MEMORY[0x277D82BD8](v131);
      if (v210)
      {
        MEMORY[0x277D82BD8](v183[17]);
      }

      if (v211)
      {
        MEMORY[0x277D82BD8](v183[19]);
      }

      if (v212)
      {
        MEMORY[0x277D82BD8](v183[21]);
      }

      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v146);
      if (v213)
      {
        MEMORY[0x277D82BD8](v183[23]);
      }

      if (v214)
      {
        MEMORY[0x277D82BD8](v183[25]);
      }

      MEMORY[0x277D82BD8](v154);
      MEMORY[0x277D82BD8](v156);
      MEMORY[0x277D82BD8](v159);
      objc_storeStrong(&v202, 0);
      objc_storeStrong(&v204, 0);
      objc_storeStrong(&v205, 0);
      objc_storeStrong(&v206, 0);
      objc_storeStrong(&v207, 0);
      objc_storeStrong(&v208, 0);
      objc_storeStrong(&v209, 0);
      objc_storeStrong(&v215, 0);
      objc_storeStrong(&v216, 0);
    }

    objc_storeStrong(&v218, 0);
    [*(v183[40] + 192) removeObject:*(v184 + 6)];
    if (v183[43] && (!*(v184 + 8) || (v51 = v183[43], v88 = (*(*(v184 + 8) + 16))(), (v88 & 1) != 0)))
    {
      v77 = MEMORY[0x26D66ADC0](*(v184 + 9));
      v197 = v77;
      if (v77)
      {
        (*(v197 + 2))(v197, v183[43]);
        v196 = 0;
      }

      else
      {
        v195 = 0;
      }

      objc_storeStrong(&v197, 0);
      v75 = v183[40];
      v76 = [v183[40] currentDownload];
      v72 = v76;
      v73 = v183[42];
      v188 = MEMORY[0x277D85DD0];
      v189 = -1073741824;
      v190 = 0;
      v191 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2;
      v192 = &unk_279CC6798;
      v74 = v194;
      objc_copyWeak(v194, v184 + 10);
      v71 = &v188;
      v194[1] = *(v184 + 11);
      v66 = v193;
      v193[0] = MEMORY[0x277D82BE0](*(v184 + 4));
      v67 = v71 + 5;
      v193[1] = MEMORY[0x277D82BE0](*(v184 + 5));
      v68 = v71 + 8;
      v193[4] = MEMORY[0x277D82BE0](*(v184 + 7));
      v69 = v71 + 6;
      v193[2] = MEMORY[0x277D82BE0](v183[43]);
      v70 = v71 + 7;
      v193[3] = MEMORY[0x277D82BE0](v183[42]);
      [v75 performPostUpdateOperationRefreshWithDownload:v72 error:v73 completionHandler:v71];
      MEMORY[0x277D82BD8](v72);
      objc_storeStrong(v70, 0);
      objc_storeStrong(v69, 0);
      objc_storeStrong(v68, 0);
      objc_storeStrong(v67, 0);
      objc_storeStrong(v66, 0);
      objc_destroyWeak(v74);
      v219 = 0;
    }

    else
    {
      v87 = [MEMORY[0x277D643F8] sharedCore];
      v85 = v87;
      v86 = [v183[40] delegateCallbackQueue];
      v83 = v86;
      v84 = [v85 selectDelegateCallbackQueue:?];
      v52 = v84;
      v53 = v184;
      v54 = v183;
      v82 = v52;
      v81 = &v198;
      v198 = MEMORY[0x277D85DD0];
      v199 = -1073741824;
      v200 = 0;
      v183[2] = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_466;
      v54[3] = &unk_279CC6570;
      v78 = &v201;
      v55 = MEMORY[0x277D82BE0](v53[7]);
      v56 = v183;
      v57 = v81;
      v183[6] = v55;
      v79 = (v57 + 32);
      v58 = MEMORY[0x277D82BE0](v56[43]);
      v59 = v183;
      v60 = v81;
      v183[4] = v58;
      v80 = (v60 + 40);
      v61 = MEMORY[0x277D82BE0](v59[42]);
      v62 = v81;
      v63 = v61;
      v64 = v82;
      v183[5] = v63;
      dispatch_async(v64, v62);
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      v219 = 1;
      objc_storeStrong(v80, 0);
      objc_storeStrong(v79, 0);
      objc_storeStrong(v78, 0);
    }
  }

  objc_storeStrong(v227, 0);
  if (!v219)
  {
    v219 = 0;
  }

  objc_storeStrong(&v228, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_465(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_466(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2(id *a1, char a2)
{
  v86 = a1;
  v87 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v88 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v134 = *MEMORY[0x277D85DE8];
  v127 = a1;
  v126 = a2;
  v125[1] = a1;
  v125[0] = objc_loadWeakRetained(a1 + 9);
  v85 = 0;
  if (!v125[0])
  {
    v84 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v84 oslog];
    MEMORY[0x277D82BD8](v84);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v80 = type;
      v82 = NSStringFromSelector(v86[10]);
      location = &v122;
      v122 = MEMORY[0x277D82BE0](v82);
      buf = v133;
      __os_log_helper_16_2_2_8_32_8_66(v133, v87, v122);
      _os_log_error_impl(&dword_26ADE5000, log, v80[0], "%s: Self is nil in %{public}@. Stopping.", v133, 0x16u);
      MEMORY[0x277D82BD8](v82);
      objc_storeStrong(&v122, 0);
    }

    objc_storeStrong(&oslog, 0);
    v121 = 1;
    v85 = 1;
  }

  if (v85)
  {
    v120 = 1;
  }

  else
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    v119 = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    v118 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v119;
      *v70 = v118;
      v71 = v125[0];
      v2 = objc_opt_class();
      v72 = NSStringFromClass(v2);
      v73 = MEMORY[0x277D82BE0](v72);
      v117 = v73;
      v74 = SUUIStatefulUIStateToString(*(v125[0] + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v116 = v75;
      v76 = [v125[0] currentState];
      v77 = [v125[0] delegate];
      v114 = 0;
      v112 = 0;
      if (v77)
      {
        v115 = [v125[0] delegate];
        v67 = 1;
        v114 = 1;
        v3 = objc_opt_class();
        v113 = NSStringFromClass(v3);
        v112 = 1;
        v68 = v113;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      v62 = [v125[0] delegate];
      v63 = [v125[0] scanError];
      v64 = [v125[0] preferredStatefulDescriptor];
      v65 = [v125[0] alternateStatefulDescriptor];
      v66 = [v125[0] currentDownload];
      v110 = 0;
      v108 = 0;
      v106 = 0;
      if (v66)
      {
        v111 = [v125[0] currentDownload];
        v59 = 1;
        v110 = 1;
        v109 = [v111 descriptor];
        v108 = 1;
        v107 = [v109 updateName];
        v106 = 1;
        v60 = v107;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      v37 = [v125[0] currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([v125[0] currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v105 = v39;
      v131 = [v125[0] isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (v131)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v40 = v4;
      v5 = v4;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v104 = v42;
      v130 = [v125[0] hidingPreferredDescriptor];
      if (v130)
      {
        v6 = v50;
      }

      else
      {
        v6 = v49;
      }

      v43 = v6;
      v7 = v6;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v103 = v45;
      v46 = [v125[0] hiddenPreferredStatefulDescriptor];
      v47 = [v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v102 = v48;
      v129 = [v125[0] hidingAlternateDescriptor];
      if (v129)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v51 = v8;
      v9 = v8;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v101 = v53;
      v54 = [v125[0] hiddenAlternateStatefulDescriptor];
      v55 = [v54 updateName];
      v56 = MEMORY[0x277D82BE0](v55);
      v100 = v56;
      v58 = [v125[0] enrolledBetaProgram];
      v98 = 0;
      if (v58)
      {
        v99 = [v125[0] enrolledBetaProgram];
        v98 = 1;
        v35 = [v99 programID];
      }

      else
      {
        v35 = 0;
      }

      v26 = v35;
      v27 = [*(v125[0] + 15) count];
      v128 = [v125[0] canEnrollInBetaUpdates];
      if (v128)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v25 = v10;
      v11 = v10;
      v34 = v25;
      v28 = MEMORY[0x277D82BE0](v34);
      v97 = v28;
      v29 = *(v125[0] + 21);
      v30 = *(v125[0] + 22);
      v31 = *(v125[0] + 23);
      v12 = [*(v125[0] + 24) count];
      v13 = v86[4];
      v14 = v86[5];
      v32 = &v15;
      v33 = v132;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v132, v88, v71, v73, v75, v76, v61, v62, v63, v64, v65, v36, v37, v39, v42, v45, v48, v53, v56, v26, v27, v28, v29, v30, v31, v12, v13, v14);
      _os_log_impl(&dword_26ADE5000, v69, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the post-update refresh for update operation %{public}@, using update operation identifier: %{public}@", v33, 0x110u);
      MEMORY[0x277D82BD8](v34);
      if (v98)
      {
        MEMORY[0x277D82BD8](v99);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v37);
      if (v106)
      {
        MEMORY[0x277D82BD8](v107);
      }

      if (v108)
      {
        MEMORY[0x277D82BD8](v109);
      }

      if (v110)
      {
        MEMORY[0x277D82BD8](v111);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      if (v112)
      {
        MEMORY[0x277D82BD8](v113);
      }

      if (v114)
      {
        MEMORY[0x277D82BD8](v115);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      obj = 0;
      objc_storeStrong(&v97, 0);
      objc_storeStrong(&v100, obj);
      objc_storeStrong(&v101, obj);
      objc_storeStrong(&v102, obj);
      objc_storeStrong(&v103, obj);
      objc_storeStrong(&v104, obj);
      objc_storeStrong(&v105, obj);
      objc_storeStrong(&v116, obj);
      objc_storeStrong(&v117, obj);
    }

    objc_storeStrong(&v119, 0);
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v125[0] delegateCallbackQueue];
    queue = [v19 selectDelegateCallbackQueue:?];
    block = &v89;
    v89 = MEMORY[0x277D85DD0];
    v90 = -1073741824;
    v91 = 0;
    v92 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_467;
    v93 = &unk_279CC6570;
    v22 = &v96;
    v96 = MEMORY[0x277D82BE0](v86[8]);
    v21 = (block + 32);
    v94 = MEMORY[0x277D82BE0](v86[6]);
    v20 = (block + 40);
    v95 = MEMORY[0x277D82BE0](v86[7]);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v23 = 0;
    objc_storeStrong(v20, 0);
    objc_storeStrong(v21, v23);
    objc_storeStrong(v22, v23);
    v120 = 0;
  }

  objc_storeStrong(v125, 0);
  *MEMORY[0x277D85DE8];
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_467(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

- (void)performPostUpdateOperationRefreshWithDownload:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  obj = a4;
  v126 = a5;
  v127 = "[SUUIStatefulUIManager performPostUpdateOperationRefreshWithDownload:error:completionHandler:]";
  v185 = *MEMORY[0x277D85DE8];
  val = self;
  v178 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v176 = 0;
  objc_storeStrong(&v176, obj);
  v175 = 0;
  objc_storeStrong(&v175, v126);
  v124 = [MEMORY[0x277CCAD78] UUID];
  v122 = v124;
  v123 = [v122 UUIDString];
  v174 = v123;
  MEMORY[0x277D82BD8](v122);
  v169 = 0;
  v170 = &v169;
  v171 = 0x20000000;
  v172 = 32;
  v173 = 0;
  v121 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  v167 = v121;
  if (v121)
  {
    v166 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.PostUpdateRefresh", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    isa = v167[2].isa;
    v167[2].isa = v166;
    MEMORY[0x277D82BD8](isa);
  }

  else
  {
    v120 = +[SUUILoggingContext softwareUpdateUILogger];
    v118 = v120;
    v119 = [v118 oslog];
    oslog = v119;
    MEMORY[0x277D82BD8](v118);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v116 = type;
      buf = v163;
      __os_log_helper_16_0_0(v163);
      _os_log_error_impl(&dword_26ADE5000, log, v116[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.PostUpdateRefresh", v163, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v162[2] = v167;
  state = v167;
  if (v167)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v162[1] = state;
  v170[3] = state;
  v114 = +[SUUILoggingContext statefulUILogger];
  v112 = v114;
  v113 = [v112 oslog];
  v162[0] = v113;
  MEMORY[0x277D82BD8](v112);
  v161 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v162[0], OS_LOG_TYPE_DEFAULT))
  {
    v108 = v162[0];
    *v109 = v161;
    v110 = val;
    aClass = objc_opt_class();
    v107 = NSStringFromClass(aClass);
    v104 = v107;
    v105 = MEMORY[0x277D82BE0](v104);
    v160 = v105;
    v106 = SUUIStatefulUIStateToString(*(val + 5));
    v101 = v106;
    v102 = MEMORY[0x277D82BE0](v101);
    v159 = v102;
    v103 = [val currentState];
    v157 = 0;
    v155 = 0;
    v100 = [val delegate];
    v99 = v100;
    if (v99)
    {
      v98 = [val delegate];
      v158 = v98;
      v157 = 1;
      v97 = objc_opt_class();
      v96 = NSStringFromClass(v97);
      v156 = v96;
      v155 = 1;
      v95 = v156;
    }

    else
    {
      v95 = @"(null)";
    }

    v93 = v95;
    v94 = [val delegate];
    v91 = v94;
    v92 = [val scanError];
    v89 = v92;
    v90 = [val preferredStatefulDescriptor];
    v87 = v90;
    v88 = [val alternateStatefulDescriptor];
    v85 = v88;
    v153 = 0;
    v151 = 0;
    v149 = 0;
    v86 = [val currentDownload];
    v84 = v86;
    if (v84)
    {
      v83 = [val currentDownload];
      v154 = v83;
      v153 = 1;
      v82 = [v154 descriptor];
      v152 = v82;
      v151 = 1;
      v81 = [v152 updateName];
      v150 = v81;
      v149 = 1;
      v80 = v150;
    }

    else
    {
      v80 = @"(null)";
    }

    v78 = v80;
    v79 = [val currentDownload];
    v76 = v79;
    v77 = [val currentUpdateOperationType];
    v75 = SUUIUpdateContinuousOperationTypeToString(v77);
    v72 = v75;
    v73 = MEMORY[0x277D82BE0](v72);
    v148 = v73;
    v74 = [val isTargetedUpdateScheduledForAutoInstall];
    v183 = v74;
    if (v74)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v71 = v6;
    v7 = v6;
    v68 = v71;
    v69 = MEMORY[0x277D82BE0](v68);
    v147 = v69;
    v70 = [val hidingPreferredDescriptor];
    v182 = v70;
    if (v70)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v67 = v8;
    v9 = v8;
    v64 = v67;
    v65 = MEMORY[0x277D82BE0](v64);
    v146 = v65;
    v66 = [val hiddenPreferredStatefulDescriptor];
    v62 = v66;
    v63 = [v62 updateName];
    v59 = v63;
    v60 = MEMORY[0x277D82BE0](v59);
    v145 = v60;
    v61 = [val hidingAlternateDescriptor];
    v181 = v61;
    if (v61)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v58 = v10;
    v11 = v10;
    v55 = v58;
    v56 = MEMORY[0x277D82BE0](v55);
    v144 = v56;
    v57 = [val hiddenAlternateStatefulDescriptor];
    v53 = v57;
    v54 = [v53 updateName];
    v50 = v54;
    v51 = MEMORY[0x277D82BE0](v50);
    v143 = v51;
    v141 = 0;
    v52 = [val enrolledBetaProgram];
    v49 = v52;
    if (v49)
    {
      v48 = [val enrolledBetaProgram];
      v142 = v48;
      v141 = 1;
      v47 = [v142 programID];
      v46 = v47;
    }

    else
    {
      v46 = 0;
    }

    v44 = v46;
    v45 = [*(val + 15) count];
    v43 = [val canEnrollInBetaUpdates];
    v180 = v43;
    if (v43)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v42 = v12;
    v13 = v12;
    v36 = v42;
    v37 = MEMORY[0x277D82BE0](v36);
    v140 = v37;
    v38 = *(val + 21);
    v39 = *(val + 22);
    v40 = *(val + 23);
    v41 = [*(val + 24) count];
    v34 = &v14;
    v35 = v184;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v184, v127, v110, v105, v102, v103, v93, v91, v89, v87, v85, v78, v76, v73, v69, v65, v60, v56, v51, v44, v45, v37, v38, v39, v40, v41, v174);
    _os_log_impl(&dword_26ADE5000, v108, v109[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a post download refresh operation with scan ID: %{public}@", v35, 0x106u);
    MEMORY[0x277D82BD8](v36);
    if (v141)
    {
      MEMORY[0x277D82BD8](v142);
    }

    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v76);
    if (v149)
    {
      MEMORY[0x277D82BD8](v150);
    }

    if (v151)
    {
      MEMORY[0x277D82BD8](v152);
    }

    if (v153)
    {
      MEMORY[0x277D82BD8](v154);
    }

    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v91);
    if (v155)
    {
      MEMORY[0x277D82BD8](v156);
    }

    if (v157)
    {
      MEMORY[0x277D82BD8](v158);
    }

    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v104);
    objc_storeStrong(&v140, 0);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, 0);
    objc_storeStrong(&v145, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
    objc_storeStrong(&v148, 0);
    objc_storeStrong(&v159, 0);
    objc_storeStrong(&v160, 0);
  }

  objc_storeStrong(v162, 0);
  v33 = [val environment];
  v31 = v33;
  v32 = [v31 scanOperationWithManager:val identifier:v174 completionQueue:*(val + 26)];
  v139 = v32;
  MEMORY[0x277D82BD8](v31);
  [*(val + 24) addObject:v139];
  v30 = [val contextForRefreshScanOperation:v139 withPreviouslyDiscoveredDownload:location encounteredError:v176];
  v138 = v30;
  objc_initWeak(&from, val);
  v28 = v139;
  v29 = [val preferredStatefulDescriptor];
  v26 = v29;
  v27 = [v26 descriptor];
  v24 = v27;
  v25 = [val alternateStatefulDescriptor];
  v22 = v25;
  v23 = [v22 descriptor];
  v19 = v23;
  v20 = v138;
  v128 = MEMORY[0x277D85DD0];
  v129 = -1073741824;
  v130 = 0;
  v131 = __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke;
  v132 = &unk_279CC6810;
  v21 = v136;
  objc_copyWeak(v136, &from);
  v18 = &v128;
  v136[1] = v178;
  v15 = v135;
  v135[0] = MEMORY[0x277D82BE0](v175);
  v16 = (v18 + 4);
  v133 = MEMORY[0x277D82BE0](v139);
  v17 = (v18 + 5);
  v134 = MEMORY[0x277D82BE0](v176);
  v135[1] = &v169;
  [v28 refreshScanResultsWithPreferredUpdate:v24 alternateUpdate:v19 context:v20 completionHandler:v18];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v26);
  objc_storeStrong(v17, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(v15, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v138, 0);
  objc_storeStrong(&v139, 0);
  _Block_object_dispose(&v169, 8);
  objc_storeStrong(&v174, 0);
  objc_storeStrong(&v175, 0);
  objc_storeStrong(&v176, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v94 = a1;
  obj = a3;
  v91 = "[SUUIStatefulUIManager performPostUpdateOperationRefreshWithDownload:error:completionHandler:]_block_invoke";
  v92 = "[SUUIStatefulUIManager performPostUpdateOperationRefreshWithDownload:error:completionHandler:]_block_invoke_2";
  v141 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v132 = 0;
  objc_storeStrong(&v132, obj);
  v131[1] = v94;
  v131[0] = objc_loadWeakRetained(v94 + 8);
  v90 = 0;
  if (!v131[0])
  {
    v89 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v89 oslog];
    MEMORY[0x277D82BD8](v89);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v85 = type;
      v87 = NSStringFromSelector(*(v94 + 9));
      v88 = &v128;
      v128 = MEMORY[0x277D82BE0](v87);
      buf = v140;
      __os_log_helper_16_2_2_8_32_8_66(v140, v91, v128);
      _os_log_error_impl(&dword_26ADE5000, log, v85[0], "%s: Self is nil in %{public}@. Stopping.", v140, 0x16u);
      MEMORY[0x277D82BD8](v87);
      objc_storeStrong(&v128, 0);
    }

    objc_storeStrong(&oslog, 0);
    v127 = 1;
    v90 = 1;
  }

  if (v90)
  {
    v80 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v80;
    block = &v121;
    v121 = MEMORY[0x277D85DD0];
    v122 = -1073741824;
    v123 = 0;
    v124 = __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke_468;
    v125 = &unk_279CC61E0;
    v83 = &v126;
    v126 = MEMORY[0x277D82BE0](*(v94 + 6));
    dispatch_async(queue, &v121);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v126, 0);
    v120 = 1;
  }

  else
  {
    v119 = 0;
    v79 = +[SUUILoggingContext statefulUILogger];
    v118 = [v79 oslog];
    MEMORY[0x277D82BD8](v79);
    v117 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v118;
      *v71 = v117;
      v72 = v131[0];
      v4 = objc_opt_class();
      v73 = NSStringFromClass(v4);
      v74 = MEMORY[0x277D82BE0](v73);
      v116 = v74;
      v75 = SUUIStatefulUIStateToString(*(v131[0] + 5));
      v76 = MEMORY[0x277D82BE0](v75);
      v115 = v76;
      v77 = [v131[0] currentState];
      v78 = [v131[0] delegate];
      v113 = 0;
      v111 = 0;
      if (v78)
      {
        v114 = [v131[0] delegate];
        v68 = 1;
        v113 = 1;
        v5 = objc_opt_class();
        v112 = NSStringFromClass(v5);
        v111 = 1;
        v69 = v112;
      }

      else
      {
        v69 = @"(null)";
      }

      v62 = v69;
      v63 = [v131[0] delegate];
      v64 = [v131[0] scanError];
      v65 = [v131[0] preferredStatefulDescriptor];
      v66 = [v131[0] alternateStatefulDescriptor];
      v67 = [v131[0] currentDownload];
      v109 = 0;
      v107 = 0;
      v105 = 0;
      if (v67)
      {
        v110 = [v131[0] currentDownload];
        v60 = 1;
        v109 = 1;
        v108 = [v110 descriptor];
        v107 = 1;
        v106 = [v108 updateName];
        v105 = 1;
        v61 = v106;
      }

      else
      {
        v61 = @"(null)";
      }

      v37 = v61;
      v38 = [v131[0] currentDownload];
      v39 = SUUIUpdateContinuousOperationTypeToString([v131[0] currentUpdateOperationType]);
      v40 = MEMORY[0x277D82BE0](v39);
      v104 = v40;
      v138 = [v131[0] isTargetedUpdateScheduledForAutoInstall];
      v50 = @"NO";
      v51 = @"YES";
      v58 = 1;
      if (v138)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v41 = v6;
      v7 = v6;
      v42 = v41;
      v43 = MEMORY[0x277D82BE0](v42);
      v103 = v43;
      v137 = [v131[0] hidingPreferredDescriptor];
      if (v137)
      {
        v8 = v51;
      }

      else
      {
        v8 = v50;
      }

      v44 = v8;
      v9 = v8;
      v45 = v44;
      v46 = MEMORY[0x277D82BE0](v45);
      v102 = v46;
      v47 = [v131[0] hiddenPreferredStatefulDescriptor];
      v48 = [v47 updateName];
      v49 = MEMORY[0x277D82BE0](v48);
      v101 = v49;
      v136 = [v131[0] hidingAlternateDescriptor];
      if (v136)
      {
        v10 = v51;
      }

      else
      {
        v10 = v50;
      }

      v52 = v10;
      v11 = v10;
      v53 = v52;
      v54 = MEMORY[0x277D82BE0](v53);
      v100 = v54;
      v55 = [v131[0] hiddenAlternateStatefulDescriptor];
      v56 = [v55 updateName];
      v57 = MEMORY[0x277D82BE0](v56);
      v99 = v57;
      v59 = [v131[0] enrolledBetaProgram];
      v97 = 0;
      if (v59)
      {
        v98 = [v131[0] enrolledBetaProgram];
        v97 = 1;
        v36 = [v98 programID];
      }

      else
      {
        v36 = 0;
      }

      v25 = v36;
      v26 = [*(v131[0] + 15) count];
      v135 = [v131[0] canEnrollInBetaUpdates];
      v22 = @"NO";
      v23 = @"YES";
      if (v135)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v21 = v12;
      v13 = v12;
      v35 = v21;
      v27 = MEMORY[0x277D82BE0](v35);
      v96 = v27;
      v28 = *(v131[0] + 21);
      v29 = *(v131[0] + 22);
      v30 = *(v131[0] + 23);
      v31 = [*(v131[0] + 24) count];
      v134 = v132 == 0;
      if (v132)
      {
        v14 = v22;
      }

      else
      {
        v14 = v23;
      }

      v24 = v14;
      v15 = v14;
      v34 = v24;
      v95 = MEMORY[0x277D82BE0](v34);
      v32 = &v16;
      v33 = v139;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v139, v92, v72, v74, v76, v77, v62, v63, v64, v65, v66, v37, v38, v40, v43, v46, v49, v54, v57, v25, v26, v27, v28, v29, v30, v31, v95, v132, location[0]);
      _os_log_impl(&dword_26ADE5000, v70, v71[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPost update request refresh operation completed successfully: %{public}@ with error: %{public}@; scan results: %{public}@", v33, 0x11Au);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      if (v97)
      {
        MEMORY[0x277D82BD8](v98);
      }

      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v38);
      if (v105)
      {
        MEMORY[0x277D82BD8](v106);
      }

      if (v107)
      {
        MEMORY[0x277D82BD8](v108);
      }

      if (v109)
      {
        MEMORY[0x277D82BD8](v110);
      }

      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      if (v111)
      {
        MEMORY[0x277D82BD8](v112);
      }

      if (v113)
      {
        MEMORY[0x277D82BD8](v114);
      }

      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v73);
      v20 = 0;
      objc_storeStrong(&v95, 0);
      objc_storeStrong(&v96, v20);
      objc_storeStrong(&v99, v20);
      objc_storeStrong(&v100, v20);
      objc_storeStrong(&v101, v20);
      objc_storeStrong(&v102, v20);
      objc_storeStrong(&v103, v20);
      objc_storeStrong(&v104, v20);
      objc_storeStrong(&v115, v20);
      objc_storeStrong(&v116, v20);
    }

    objc_storeStrong(&v118, 0);
    if (!v132)
    {
      v119 = 1;
      v18 = v131[0];
      v19 = [location[0] currentDownload];
      [v18 setCurrentDownload:?];
      MEMORY[0x277D82BD8](v19);
      [v131[0] updateDescriptorsUsingScanResults:location[0] andWithConcreteError:*(v94 + 5)];
    }

    [*(v131[0] + 24) removeObject:*(v94 + 4)];
    if (*(*(*(v94 + 7) + 8) + 24))
    {
      if (*(*(*(*(v94 + 7) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(v94 + 7) + 8) + 24));
      }

      free(*(*(*(v94 + 7) + 8) + 24));
      *(*(*(v94 + 7) + 8) + 24) = 0;
    }

    (*(*(v94 + 6) + 16))();
    v120 = 0;
  }

  objc_storeStrong(v131, 0);
  if (!v120)
  {
    v120 = 0;
  }

  v17 = 0;
  objc_storeStrong(&v132, 0);
  objc_storeStrong(location, v17);
  *MEMORY[0x277D85DE8];
}

void __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke_468(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

- (void)hidePreferredUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  v8 = [(SUUIStatefulUIManager *)self environment];
  v9 = [(SUUIStatefulUIEnvironment *)v8 options];
  MEMORY[0x277D82BD8](v8);
  if ((v9 & 4) != 0)
  {
    v13 = [(SUUIStatefulUIManager *)v16 preferredStatefulDescriptor];
    v6 = +[SUUILoggingContext statefulUILogger];
    v12 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v12;
      v4 = v11;
      v5 = [(SUUIStatefulDescriptor *)v13 updateName];
      v10 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v17, "[SUUIStatefulUIManager hidePreferredUpdate]", v16, v10);
      _os_log_impl(&dword_26ADE5000, v3, v4, "%s [%p]: Hiding preferred update: %{public}@", v17, 0x20u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    [(SUUIStatefulUIManager *)v16 setHiddenPreferredStatefulDescriptor:v13];
    v2 = [(SUUIStatefulUIManager *)v16 alternateStatefulDescriptor];
    [(SUUIStatefulUIManager *)v16 setPreferredStatefulDescriptor:?];
    MEMORY[0x277D82BD8](v2);
    [(SUUIStatefulUIManager *)v16 setAlternateStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)v16 setHidingPreferredDescriptor:1];
    [(SUUIStatefulUIManager *)v16 setHidingAlternateDescriptor:0];
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v7 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v18, "[SUUIStatefulUIManager hidePreferredUpdate]", v16);
      _os_log_impl(&dword_26ADE5000, location[0], v14, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v18, 0x16u);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)hideAlternateUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  v7 = [(SUUIStatefulUIManager *)self environment];
  v8 = [(SUUIStatefulUIEnvironment *)v7 options];
  MEMORY[0x277D82BD8](v7);
  if ((v8 & 4) != 0)
  {
    v12 = [(SUUIStatefulUIManager *)v15 alternateStatefulDescriptor];
    v5 = +[SUUILoggingContext statefulUILogger];
    v11 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v11;
      v3 = v10;
      v4 = [(SUUIStatefulDescriptor *)v12 updateName];
      v9 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v16, "[SUUIStatefulUIManager hideAlternateUpdate]", v15, v9);
      _os_log_impl(&dword_26ADE5000, v2, v3, "%s [%p]: Hiding alternate update: %{public}@", v16, 0x20u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
    [(SUUIStatefulUIManager *)v15 setHiddenAlternateStatefulDescriptor:v12];
    [(SUUIStatefulUIManager *)v15 setAlternateStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)v15 setHidingPreferredDescriptor:0];
    [(SUUIStatefulUIManager *)v15 setHidingAlternateDescriptor:1];
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v6 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v17, "[SUUIStatefulUIManager hideAlternateUpdate]", v15);
      _os_log_impl(&dword_26ADE5000, location[0], v13, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v17, 0x16u);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)revealHiddenPreferredUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  v8 = [(SUUIStatefulUIManager *)self environment];
  v9 = [(SUUIStatefulUIEnvironment *)v8 options];
  MEMORY[0x277D82BD8](v8);
  if ((v9 & 4) != 0)
  {
    v13 = [(SUUIStatefulUIManager *)v16 hiddenPreferredStatefulDescriptor];
    v6 = +[SUUILoggingContext statefulUILogger];
    v12 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v12;
      v4 = v11;
      v5 = [(SUUIStatefulDescriptor *)v13 updateName];
      v10 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v17, "[SUUIStatefulUIManager revealHiddenPreferredUpdate]", v16, v10);
      _os_log_impl(&dword_26ADE5000, v3, v4, "%s [%p]: Revealing the previously hidden preferred update: %{public}@", v17, 0x20u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v2 = [(SUUIStatefulUIManager *)v16 preferredStatefulDescriptor];
    [(SUUIStatefulUIManager *)v16 setAlternateStatefulDescriptor:?];
    MEMORY[0x277D82BD8](v2);
    [(SUUIStatefulUIManager *)v16 setPreferredStatefulDescriptor:v13];
    [(SUUIStatefulUIManager *)v16 setHiddenPreferredStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)v16 setHidingPreferredDescriptor:0];
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v7 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v18, "[SUUIStatefulUIManager revealHiddenPreferredUpdate]", v16);
      _os_log_impl(&dword_26ADE5000, location[0], v14, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v18, 0x16u);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)revealHiddenAlteranteUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  v7 = [(SUUIStatefulUIManager *)self environment];
  v8 = [(SUUIStatefulUIEnvironment *)v7 options];
  MEMORY[0x277D82BD8](v7);
  if ((v8 & 4) != 0)
  {
    v12 = [(SUUIStatefulUIManager *)v15 hiddenAlternateStatefulDescriptor];
    v5 = +[SUUILoggingContext statefulUILogger];
    v11 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v11;
      v3 = v10;
      v4 = [(SUUIStatefulDescriptor *)v12 updateName];
      v9 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v16, "[SUUIStatefulUIManager revealHiddenAlteranteUpdate]", v15, v9);
      _os_log_impl(&dword_26ADE5000, v2, v3, "%s [%p]: Reveal the previously hidden alternate update: %{public}@", v16, 0x20u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
    [(SUUIStatefulUIManager *)v15 setAlternateStatefulDescriptor:v12];
    [(SUUIStatefulUIManager *)v15 setHiddenAlternateStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)v15 setHidingAlternateDescriptor:0];
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v6 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v17, "[SUUIStatefulUIManager revealHiddenAlteranteUpdate]", v15);
      _os_log_impl(&dword_26ADE5000, location[0], v13, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v17, 0x16u);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)getEnrollInBetaUpdatesStatus
{
  v4 = 0;
  v3 = 0;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x277D4D310] sharedManager];
    v4 = 1;
    v3 = [v5 canCurrentDeviceEnrollInBetaUpdates];
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  return v3 & 1;
}

- (void)doEnrollInBetaUpdatesProgram:(id)a3 activity:(suui_activity_s *)a4 completionHandler:(id)a5
{
  v25 = self;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v22 = a4;
  v21 = 0;
  objc_storeStrong(&v21, a5);
  objc_initWeak(&v20, v25);
  v16[0] = 0;
  v16[1] = v16;
  v17 = 0x20000000;
  v18 = 32;
  v19 = *v22;
  *v22 = 0;
  queue = v25->_operationsQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke;
  v12 = &unk_279CC68D8;
  objc_copyWeak(v15, &v20);
  v15[1] = v24;
  v14[0] = MEMORY[0x277D82BE0](v21);
  v13 = MEMORY[0x277D82BE0](location);
  v14[1] = v16;
  dispatch_async(queue, &v8);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_destroyWeak(v15);
  _Block_object_dispose(v16, 8);
  objc_destroyWeak(&v20);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke(id *a1)
{
  v153 = &v172;
  v154 = a1;
  v155 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke";
  v156 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_2";
  v201 = *MEMORY[0x277D85DE8];
  v194[2] = a1;
  v194[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v194[0] = WeakRetained;
  v152 = 0;
  if (!WeakRetained)
  {
    v151 = +[SUUILoggingContext softwareUpdateUILogger];
    v149 = v151;
    v150 = [v149 oslog];
    v1 = v150;
    v2 = v149;
    v153[28] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v153[28], OS_LOG_TYPE_ERROR))
    {
      log = v153[28];
      *v147 = type;
      v148 = NSStringFromSelector(v154[8]);
      v145 = v148;
      v3 = MEMORY[0x277D82BE0](v145);
      v4 = v155;
      v153[26] = v3;
      buf = v200;
      __os_log_helper_16_2_2_8_32_8_66(v200, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v147[0], "%s: Self is nil in %{public}@. Stopping.", v200, 0x16u);
      MEMORY[0x277D82BD8](v145);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v193, 0);
    v190[3] = 1;
    v152 = 1;
  }

  if (v152)
  {
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v7 = v154;
    v8 = v153;
    queue = v6;
    block = &v187;
    v153[20] = MEMORY[0x277D85DD0];
    v188 = -1073741824;
    v189 = 0;
    v8[22] = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_471;
    v8[23] = &unk_279CC61E0;
    v141 = v190;
    v9 = MEMORY[0x277D82BE0](v7[5]);
    v10 = block;
    v11 = v9;
    v12 = queue;
    v153[24] = v11;
    dispatch_async(v12, v10);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v141, 0);
    v186 = 1;
  }

  else
  {
    v140 = [MEMORY[0x277CCAD78] UUID];
    v138 = v140;
    v139 = [v138 UUIDString];
    v13 = v139;
    v14 = v138;
    v153[18] = v13;
    MEMORY[0x277D82BD8](v14);
    v137 = +[SUUILoggingContext statefulUILogger];
    v135 = v137;
    v136 = [v135 oslog];
    v15 = v136;
    v16 = v135;
    v153[17] = v15;
    MEMORY[0x277D82BD8](v16);
    v183 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v153[17], OS_LOG_TYPE_DEFAULT))
    {
      v131 = v153[17];
      *v132 = v183;
      v133 = v153[29];
      v17 = v153[29];
      aClass = objc_opt_class();
      v130 = NSStringFromClass(aClass);
      v127 = v130;
      v18 = MEMORY[0x277D82BE0](v127);
      v19 = v153;
      v128 = v18;
      v153[15] = v18;
      v129 = SUUIStatefulUIStateToString(*(v19[29] + 5));
      v124 = v129;
      v20 = MEMORY[0x277D82BE0](v124);
      v21 = v153;
      v125 = v20;
      v153[14] = v20;
      v126 = [v21[29] currentState];
      v123 = [v153[29] delegate];
      v122 = v123;
      v180 = 0;
      v179 = 0;
      if (v122)
      {
        v121 = [v153[29] delegate];
        v153[13] = v121;
        v180 = 1;
        v120 = objc_opt_class();
        v119 = NSStringFromClass(v120);
        v22 = v119;
        v153[11] = v22;
        v179 = 1;
        v118 = v22;
      }

      else
      {
        v118 = @"(null)";
      }

      v116 = v118;
      v117 = [v153[29] delegate];
      v114 = v117;
      v115 = [v153[29] scanError];
      v112 = v115;
      v113 = [v153[29] preferredStatefulDescriptor];
      v110 = v113;
      v111 = [v153[29] alternateStatefulDescriptor];
      v108 = v111;
      v109 = [v153[29] currentDownload];
      v107 = v109;
      v178 = 0;
      v177 = 0;
      v176 = 0;
      if (v107)
      {
        v106 = [v153[29] currentDownload];
        v23 = v106;
        v153[9] = v23;
        v178 = 1;
        v105 = [v23 descriptor];
        v24 = v105;
        v153[7] = v24;
        v177 = 1;
        v104 = [v24 updateName];
        v25 = v104;
        v153[5] = v25;
        v176 = 1;
        v103 = v25;
      }

      else
      {
        v103 = @"(null)";
      }

      v101 = v103;
      v102 = [v153[29] currentDownload];
      v99 = v102;
      v100 = [v153[29] currentUpdateOperationType];
      v98 = SUUIUpdateContinuousOperationTypeToString(v100);
      v95 = v98;
      v26 = MEMORY[0x277D82BE0](v95);
      v27 = v153;
      v96 = v26;
      v153[3] = v26;
      v97 = [v27[29] isTargetedUpdateScheduledForAutoInstall];
      v198 = v97;
      if (v97)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v94 = v28;
      v29 = v28;
      v91 = v94;
      v30 = MEMORY[0x277D82BE0](v91);
      v31 = v153;
      v92 = v30;
      v153[2] = v30;
      v93 = [v31[29] hidingPreferredDescriptor];
      v197 = v93;
      if (v93)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v90 = v32;
      v33 = v32;
      v87 = v90;
      v34 = MEMORY[0x277D82BE0](v87);
      v35 = v153;
      v88 = v34;
      v153[1] = v34;
      v89 = [v35[29] hiddenPreferredStatefulDescriptor];
      v85 = v89;
      v86 = [v85 updateName];
      v82 = v86;
      v36 = MEMORY[0x277D82BE0](v82);
      v37 = v153;
      v83 = v36;
      *v153 = v36;
      v84 = [v37[29] hidingAlternateDescriptor];
      v196 = v84;
      if (v84)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v81 = v38;
      v39 = v38;
      v78 = v81;
      v79 = MEMORY[0x277D82BE0](v78);
      v171 = v79;
      v80 = [v153[29] hiddenAlternateStatefulDescriptor];
      v76 = v80;
      v77 = [v76 updateName];
      v73 = v77;
      v74 = MEMORY[0x277D82BE0](v73);
      v170 = v74;
      v75 = [v153[29] enrolledBetaProgram];
      v72 = v75;
      v168 = 0;
      if (v72)
      {
        v71 = [v153[29] enrolledBetaProgram];
        v169 = v71;
        v168 = 1;
        v70 = [v169 programID];
        v69 = v70;
      }

      else
      {
        v69 = 0;
      }

      v67 = v69;
      v68 = [*(v153[29] + 15) count];
      v66 = [v153[29] canEnrollInBetaUpdates];
      v195 = v66;
      if (v66)
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      v65 = v40;
      v41 = v40;
      v59 = v65;
      v60 = MEMORY[0x277D82BE0](v59);
      v167 = v60;
      v61 = *(v153[29] + 21);
      v62 = *(v153[29] + 22);
      v63 = *(v153[29] + 23);
      v64 = [*(v153[29] + 24) count];
      v58 = [v154[4] programID];
      v42 = v154[4];
      v43 = v153[18];
      v56 = &v44;
      v57 = v199;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v199, v156, v133, v128, v125, v126, v116, v114, v112, v110, v108, v101, v99, v96, v92, v88, v83, v79, v74, v67, v68, v60, v61, v62, v63, v64, v58, v42, v43);
      _os_log_impl(&dword_26ADE5000, v131, v132[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nAttempts to enroll in beta program: %ld (%p) using Beta Updates operation ID: %{public}@", v57, 0x11Au);
      MEMORY[0x277D82BD8](v59);
      if (v168)
      {
        MEMORY[0x277D82BD8](v169);
      }

      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v87);
      MEMORY[0x277D82BD8](v91);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v99);
      if (v176)
      {
        MEMORY[0x277D82BD8](v153[5]);
      }

      if (v177)
      {
        MEMORY[0x277D82BD8](v153[7]);
      }

      if (v178)
      {
        MEMORY[0x277D82BD8](v153[9]);
      }

      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v114);
      if (v179)
      {
        MEMORY[0x277D82BD8](v153[11]);
      }

      if (v180)
      {
        MEMORY[0x277D82BD8](v153[13]);
      }

      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v124);
      MEMORY[0x277D82BD8](v127);
      objc_storeStrong(&v167, 0);
      objc_storeStrong(&v170, 0);
      objc_storeStrong(&v171, 0);
      objc_storeStrong(&v172, 0);
      objc_storeStrong(&v173, 0);
      objc_storeStrong(&v174, 0);
      objc_storeStrong(&v175, 0);
      objc_storeStrong(&v181, 0);
      objc_storeStrong(&v182, 0);
    }

    objc_storeStrong(&v184, 0);
    v55 = [v153[29] environment];
    v53 = v55;
    v54 = [v53 betaUpdatesOperationWithManager:v153[29] identifier:v153[18] completionQueue:*(v153[29] + 26)];
    v166 = v54;
    MEMORY[0x277D82BD8](v53);
    v51 = v166;
    v52 = [v153[29] currentSeedingDevice];
    v48 = v52;
    v49 = v154[4];
    v158 = MEMORY[0x277D85DD0];
    v159 = -1073741824;
    v160 = 0;
    v161 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_473;
    v162 = &unk_279CC68B0;
    v50 = v165;
    objc_copyWeak(v165, v154 + 7);
    v47 = &v158;
    v165[1] = v154[8];
    v45 = v164;
    v164[0] = MEMORY[0x277D82BE0](v154[5]);
    v46 = (v47 + 4);
    v163 = MEMORY[0x277D82BE0](v154[4]);
    v164[1] = v154[6];
    [v51 enrollDevice:v48 inBetaProgram:v49 completionHandler:v47];
    MEMORY[0x277D82BD8](v48);
    objc_storeStrong(v46, 0);
    objc_storeStrong(v45, 0);
    objc_destroyWeak(v50);
    objc_storeStrong(&v166, 0);
    objc_storeStrong(&v185, 0);
    v186 = 0;
  }

  objc_storeStrong(v194, 0);
  *MEMORY[0x277D85DE8];
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_471(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_473(void *a1, void *a2)
{
  v122 = a1;
  v123 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke";
  v124 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_2";
  v183 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v175[1] = v122;
  WeakRetained = objc_loadWeakRetained(v122 + 7);
  v175[0] = WeakRetained;
  v120 = 0;
  if (!WeakRetained)
  {
    v119 = +[SUUILoggingContext softwareUpdateUILogger];
    v117 = v119;
    v118 = [v117 oslog];
    oslog = v118;
    MEMORY[0x277D82BD8](v117);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v115 = type;
      v116 = NSStringFromSelector(*(v122 + 8));
      v113 = v116;
      v172 = MEMORY[0x277D82BE0](v113);
      buf = v182;
      __os_log_helper_16_2_2_8_32_8_66(v182, v123, v172);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v182, 0x16u);
      MEMORY[0x277D82BD8](v113);
      objc_storeStrong(&v172, 0);
    }

    objc_storeStrong(&oslog, 0);
    v171 = 1;
    v120 = 1;
  }

  if (v120)
  {
    v2 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v165;
    v165 = MEMORY[0x277D85DD0];
    v166 = -1073741824;
    v167 = 0;
    v168 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_474;
    v169 = &unk_279CC61E0;
    v109 = &v170;
    v170 = MEMORY[0x277D82BE0](*(v122 + 5));
    dispatch_async(queue, &v165);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v170, 0);
    v164 = 1;
  }

  else
  {
    v108 = +[SUUILoggingContext statefulUILogger];
    v106 = v108;
    v107 = [v106 oslog];
    v163 = v107;
    MEMORY[0x277D82BD8](v106);
    v162 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      v102 = v163;
      *v103 = v162;
      v104 = v175[0];
      aClass = objc_opt_class();
      v101 = NSStringFromClass(aClass);
      v98 = v101;
      v99 = MEMORY[0x277D82BE0](v98);
      v161 = v99;
      v100 = SUUIStatefulUIStateToString(*(v175[0] + 5));
      v95 = v100;
      v96 = MEMORY[0x277D82BE0](v95);
      v160 = v96;
      v97 = [v175[0] currentState];
      v94 = [v175[0] delegate];
      v93 = v94;
      v158 = 0;
      v156 = 0;
      if (v93)
      {
        v92 = [v175[0] delegate];
        v159 = v92;
        v158 = 1;
        v91 = objc_opt_class();
        v90 = NSStringFromClass(v91);
        v157 = v90;
        v156 = 1;
        v89 = v157;
      }

      else
      {
        v89 = @"(null)";
      }

      v87 = v89;
      v88 = [v175[0] delegate];
      v85 = v88;
      v86 = [v175[0] scanError];
      v83 = v86;
      v84 = [v175[0] preferredStatefulDescriptor];
      v81 = v84;
      v82 = [v175[0] alternateStatefulDescriptor];
      v79 = v82;
      v80 = [v175[0] currentDownload];
      v78 = v80;
      v154 = 0;
      v152 = 0;
      v150 = 0;
      if (v78)
      {
        v77 = [v175[0] currentDownload];
        v155 = v77;
        v154 = 1;
        v76 = [v155 descriptor];
        v153 = v76;
        v152 = 1;
        v75 = [v153 updateName];
        v151 = v75;
        v150 = 1;
        v74 = v151;
      }

      else
      {
        v74 = @"(null)";
      }

      v72 = v74;
      v73 = [v175[0] currentDownload];
      v70 = v73;
      v71 = [v175[0] currentUpdateOperationType];
      v69 = SUUIUpdateContinuousOperationTypeToString(v71);
      v66 = v69;
      v67 = MEMORY[0x277D82BE0](v66);
      v149 = v67;
      v68 = [v175[0] isTargetedUpdateScheduledForAutoInstall];
      v180 = v68;
      if (v68)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v65 = v3;
      v4 = v3;
      v62 = v65;
      v63 = MEMORY[0x277D82BE0](v62);
      v148 = v63;
      v64 = [v175[0] hidingPreferredDescriptor];
      v179 = v64;
      if (v64)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v61 = v5;
      v6 = v5;
      v58 = v61;
      v59 = MEMORY[0x277D82BE0](v58);
      v147 = v59;
      v60 = [v175[0] hiddenPreferredStatefulDescriptor];
      v56 = v60;
      v57 = [v56 updateName];
      v53 = v57;
      v54 = MEMORY[0x277D82BE0](v53);
      v146 = v54;
      v55 = [v175[0] hidingAlternateDescriptor];
      v178 = v55;
      if (v55)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v52 = v7;
      v8 = v7;
      v49 = v52;
      v50 = MEMORY[0x277D82BE0](v49);
      v145 = v50;
      v51 = [v175[0] hiddenAlternateStatefulDescriptor];
      v47 = v51;
      v48 = [v47 updateName];
      v44 = v48;
      v45 = MEMORY[0x277D82BE0](v44);
      v144 = v45;
      v46 = [v175[0] enrolledBetaProgram];
      v43 = v46;
      v142 = 0;
      if (v43)
      {
        v42 = [v175[0] enrolledBetaProgram];
        v143 = v42;
        v142 = 1;
        v41 = [v143 programID];
        v40 = v41;
      }

      else
      {
        v40 = 0;
      }

      v38 = v40;
      v39 = [*(v175[0] + 15) count];
      v37 = [v175[0] canEnrollInBetaUpdates];
      v177 = v37;
      if (v37)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v36 = v9;
      v10 = v9;
      v30 = v36;
      v31 = MEMORY[0x277D82BE0](v30);
      v141 = v31;
      v32 = *(v175[0] + 21);
      v33 = *(v175[0] + 22);
      v34 = *(v175[0] + 23);
      v35 = [*(v175[0] + 24) count];
      v29 = [*(v122 + 4) programID];
      v11 = *(v122 + 4);
      v27 = &v12;
      v28 = v181;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v181, v124, v104, v99, v96, v97, v87, v85, v83, v81, v79, v72, v70, v67, v63, v59, v54, v50, v45, v38, v39, v31, v32, v33, v34, v35, v29, v11, location[0]);
      _os_log_impl(&dword_26ADE5000, v102, v103[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to enroll in beta program: %ld (%p); error: %{public}@", v28, 0x11Au);
      MEMORY[0x277D82BD8](v30);
      if (v142)
      {
        MEMORY[0x277D82BD8](v143);
      }

      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v70);
      if (v150)
      {
        MEMORY[0x277D82BD8](v151);
      }

      if (v152)
      {
        MEMORY[0x277D82BD8](v153);
      }

      if (v154)
      {
        MEMORY[0x277D82BD8](v155);
      }

      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      if (v156)
      {
        MEMORY[0x277D82BD8](v157);
      }

      if (v158)
      {
        MEMORY[0x277D82BD8](v159);
      }

      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v98);
      objc_storeStrong(&v141, 0);
      objc_storeStrong(&v144, 0);
      objc_storeStrong(&v145, 0);
      objc_storeStrong(&v146, 0);
      objc_storeStrong(&v147, 0);
      objc_storeStrong(&v148, 0);
      objc_storeStrong(&v149, 0);
      objc_storeStrong(&v160, 0);
      objc_storeStrong(&v161, 0);
    }

    objc_storeStrong(&v163, 0);
    [v175[0] setEnrolledBetaProgram:*(v122 + 4)];
    v25 = &v133;
    v133 = MEMORY[0x277D85DD0];
    v134 = -1073741824;
    v135 = 0;
    v136 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_475;
    v137 = &unk_279CC6860;
    v24 = v138;
    v138[0] = MEMORY[0x277D82BE0](v175[0]);
    v26 = v25 + 9;
    objc_copyWeak(v25 + 9, v122 + 7);
    v22 = &v133;
    v139[3] = *(v122 + 8);
    v19 = v139;
    v139[0] = MEMORY[0x277D82BE0](*(v122 + 5));
    v139[1] = *(v122 + 6);
    v20 = (v22 + 5);
    v138[1] = MEMORY[0x277D82BE0](*(v122 + 4));
    v21 = (v22 + 6);
    v138[2] = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x26D66ADC0](v22);
    v140 = v23;
    v18 = [v175[0] currentFullScanOperation];
    v132 = v18;
    if (v132)
    {
      v16 = v132;
      v125 = MEMORY[0x277D85DD0];
      v126 = -1073741824;
      v127 = 0;
      v128 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_481;
      v129 = &unk_279CC6888;
      v17 = v131;
      objc_copyWeak(v131, v122 + 7);
      v15 = &v125;
      v131[1] = *(v122 + 8);
      v13 = v130;
      v130[0] = MEMORY[0x277D82BE0](*(v122 + 5));
      v14 = (v15 + 5);
      v130[1] = MEMORY[0x277D82BE0](v140);
      [v16 cancel:v15];
      objc_storeStrong(v14, 0);
      objc_storeStrong(v13, 0);
      objc_destroyWeak(v17);
    }

    else
    {
      (*(v140 + 2))();
    }

    objc_storeStrong(&v132, 0);
    objc_storeStrong(&v140, 0);
    objc_storeStrong(v21, 0);
    objc_storeStrong(v20, 0);
    objc_storeStrong(v19, 0);
    objc_destroyWeak(v26);
    objc_storeStrong(v24, 0);
    v164 = 0;
  }

  objc_storeStrong(v175, 0);
  if (!v164)
  {
    v164 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_474(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_475(uint64_t a1)
{
  v11[3] = a1;
  v11[2] = a1;
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2;
  v7 = &unk_279CC6838;
  objc_copyWeak(v11, (a1 + 72));
  v11[1] = *(a1 + 80);
  v10[0] = MEMORY[0x277D82BE0](*(a1 + 56));
  v10[1] = *(a1 + 64);
  v8 = MEMORY[0x277D82BE0](*(a1 + 40));
  v9 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v2 checkForAvailableUpdatesWithForcedReload:1 completion:&v3];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v10, 0);
  objc_destroyWeak(v11);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v44 = 0;
  objc_storeStrong(&v44, a3);
  v43[1] = a1;
  v43[0] = objc_loadWeakRetained((a1 + 64));
  v13 = 0;
  if (!v43[0])
  {
    v12 = +[SUUILoggingContext softwareUpdateUILogger];
    v42 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      type = v41;
      v9 = NSStringFromSelector(*(a1 + 72));
      v40 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v46, "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_2", v40);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v46, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    v39 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v3 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_476;
    v37 = &unk_279CC61E0;
    v38 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_async(queue, &v33);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v38, 0);
    v32 = 1;
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (*(*(*(*(a1 + 56) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 56) + 8) + 24));
      }

      free(*(*(*(a1 + 56) + 8) + 24));
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v7 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v43[0] delegateCallbackQueue];
    v5 = [v7 selectDelegateCallbackQueue:?];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2_477;
    v28 = &unk_279CC6570;
    v31 = MEMORY[0x277D82BE0](*(a1 + 48));
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    v30 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(v5, &v24);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v4 = v43[0];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_3;
    v20 = &unk_279CC62A0;
    objc_copyWeak(v23, (a1 + 64));
    v23[1] = *(a1 + 72);
    v21 = MEMORY[0x277D82BE0](*(a1 + 32));
    v22 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v4 executeOperationOnDelegate:sel_statefulUIManager_didEnrollDevice_inBetaUpdatesProgram_withError_ usingBlock:&v16];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_destroyWeak(v23);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v31, 0);
    v32 = 0;
  }

  objc_storeStrong(v43, 0);
  if (!v32)
  {
    v32 = 0;
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_476(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2_477(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v15[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v14 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      v8 = NSStringFromSelector(*(a1 + 56));
      v12 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v16, "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_3", v12);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v16, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v5 = [v15[0] delegate];
    v3 = v15[0];
    v4 = [v15[0] currentSeedingDevice];
    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
    [v5 statefulUIManager:v3 didEnrollDevice:? inBetaUpdatesProgram:? withError:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_481(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a2;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v21[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v7 = NSStringFromSelector(*(a1 + 56));
      v18 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v24, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_482;
    v15 = &unk_279CC61E0;
    v16 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    [v21[0] setCurrentFullScanOperation:0];
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_482(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)doEnrollInBetaUpdatesProgram:(id)a3 afterPurgeConfirmation:(int64_t)a4 activity:(suui_activity_s *)a5 completionHandler:(id)a6
{
  v28 = self;
  v27 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v25 = a4;
  v24 = a5;
  v23 = 0;
  objc_storeStrong(&v23, a6);
  objc_initWeak(&v22, v28);
  v18[0] = 0;
  v18[1] = v18;
  v19 = 0x20000000;
  v20 = 32;
  v21 = *v24;
  *v24 = 0;
  queue = v28->_operationsQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke;
  v14 = &unk_279CC6950;
  objc_copyWeak(v17, &v22);
  v17[1] = v27;
  v16[0] = MEMORY[0x277D82BE0](v23);
  v15 = MEMORY[0x277D82BE0](location);
  v17[2] = v25;
  v16[1] = v18;
  dispatch_async(queue, &v10);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_destroyWeak(v17);
  _Block_object_dispose(v18, 8);
  objc_destroyWeak(&v22);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke(id *a1)
{
  v213 = &v228;
  v214 = a1;
  v215 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:afterPurgeConfirmation:activity:completionHandler:]_block_invoke";
  v216 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:afterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v268 = *MEMORY[0x277D85DE8];
  v261[2] = a1;
  v261[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v261[0] = WeakRetained;
  v212 = 0;
  if (!WeakRetained)
  {
    v211 = +[SUUILoggingContext softwareUpdateUILogger];
    v209 = v211;
    v210 = [v209 oslog];
    v1 = v210;
    v2 = v209;
    v213[40] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v213[40], OS_LOG_TYPE_ERROR))
    {
      log = v213[40];
      *v207 = type;
      v208 = NSStringFromSelector(v214[8]);
      v205 = v208;
      v3 = MEMORY[0x277D82BE0](v205);
      v4 = v215;
      v213[38] = v3;
      buf = v267;
      __os_log_helper_16_2_2_8_32_8_66(v267, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v207[0], "%s: Self is nil in %{public}@. Stopping.", v267, 0x16u);
      MEMORY[0x277D82BD8](v205);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v260, 0);
    v257[3] = 1;
    v212 = 1;
  }

  if (v212)
  {
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v7 = v214;
    v8 = v213;
    queue = v6;
    block = &v254;
    v213[32] = MEMORY[0x277D85DD0];
    v255 = -1073741824;
    v256 = 0;
    v8[34] = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_484;
    v8[35] = &unk_279CC61E0;
    v201 = v257;
    v9 = MEMORY[0x277D82BE0](v7[5]);
    v10 = block;
    v11 = v9;
    v12 = queue;
    v213[36] = v11;
    dispatch_async(v12, v10);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v201, 0);
    v253 = 1;
  }

  else
  {
    v200 = +[SUUILoggingContext statefulUILogger];
    v198 = v200;
    v199 = [v198 oslog];
    v13 = v199;
    v14 = v198;
    v213[30] = v13;
    MEMORY[0x277D82BD8](v14);
    v251 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v213[30], OS_LOG_TYPE_DEFAULT))
    {
      v194 = v213[30];
      *v195 = v251;
      v196 = v213[41];
      v15 = v213[41];
      aClass = objc_opt_class();
      v193 = NSStringFromClass(aClass);
      v190 = v193;
      v16 = MEMORY[0x277D82BE0](v190);
      v17 = v213;
      v191 = v16;
      v213[28] = v16;
      v192 = SUUIStatefulUIStateToString(*(v17[41] + 40));
      v187 = v192;
      v18 = MEMORY[0x277D82BE0](v187);
      v19 = v213;
      v188 = v18;
      v213[27] = v18;
      v189 = [v19[41] currentState];
      v186 = [v213[41] delegate];
      v185 = v186;
      v248 = 0;
      v247 = 0;
      if (v185)
      {
        v184 = [v213[41] delegate];
        v213[26] = v184;
        v248 = 1;
        v183 = objc_opt_class();
        v182 = NSStringFromClass(v183);
        v20 = v182;
        v213[24] = v20;
        v247 = 1;
        v181 = v20;
      }

      else
      {
        v181 = @"(null)";
      }

      v179 = v181;
      v180 = [v213[41] delegate];
      v177 = v180;
      v178 = [v213[41] scanError];
      v175 = v178;
      v176 = [v213[41] preferredStatefulDescriptor];
      v173 = v176;
      v174 = [v213[41] alternateStatefulDescriptor];
      v171 = v174;
      v172 = [v213[41] currentDownload];
      v170 = v172;
      v246 = 0;
      v245 = 0;
      v244 = 0;
      if (v170)
      {
        v169 = [v213[41] currentDownload];
        v21 = v169;
        v213[22] = v21;
        v246 = 1;
        v168 = [v21 descriptor];
        v22 = v168;
        v213[20] = v22;
        v245 = 1;
        v167 = [v22 updateName];
        v23 = v167;
        v213[18] = v23;
        v244 = 1;
        v166 = v23;
      }

      else
      {
        v166 = @"(null)";
      }

      v164 = v166;
      v165 = [v213[41] currentDownload];
      v162 = v165;
      v163 = [v213[41] currentUpdateOperationType];
      v161 = SUUIUpdateContinuousOperationTypeToString(v163);
      v158 = v161;
      v24 = MEMORY[0x277D82BE0](v158);
      v25 = v213;
      v159 = v24;
      v213[16] = v24;
      v160 = [v25[41] isTargetedUpdateScheduledForAutoInstall];
      v265 = v160;
      if (v160)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v157 = v26;
      v27 = v26;
      v154 = v157;
      v28 = MEMORY[0x277D82BE0](v154);
      v29 = v213;
      v155 = v28;
      v213[15] = v28;
      v156 = [v29[41] hidingPreferredDescriptor];
      v264 = v156;
      if (v156)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v153 = v30;
      v31 = v30;
      v150 = v153;
      v32 = MEMORY[0x277D82BE0](v150);
      v33 = v213;
      v151 = v32;
      v213[14] = v32;
      v152 = [v33[41] hiddenPreferredStatefulDescriptor];
      v148 = v152;
      v149 = [v148 updateName];
      v145 = v149;
      v34 = MEMORY[0x277D82BE0](v145);
      v35 = v213;
      v146 = v34;
      v213[13] = v34;
      v147 = [v35[41] hidingAlternateDescriptor];
      v263 = v147;
      if (v147)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v144 = v36;
      v37 = v36;
      v141 = v144;
      v38 = MEMORY[0x277D82BE0](v141);
      v39 = v213;
      v142 = v38;
      v213[12] = v38;
      v143 = [v39[41] hiddenAlternateStatefulDescriptor];
      v139 = v143;
      v140 = [v139 updateName];
      v136 = v140;
      v40 = MEMORY[0x277D82BE0](v136);
      v41 = v213;
      v137 = v40;
      v213[11] = v40;
      v138 = [v41[41] enrolledBetaProgram];
      v135 = v138;
      v237 = 0;
      if (v135)
      {
        v134 = [v213[41] enrolledBetaProgram];
        v42 = v134;
        v213[10] = v42;
        v237 = 1;
        v133 = [v42 programID];
        v132 = v133;
      }

      else
      {
        v132 = 0;
      }

      v130 = v132;
      v131 = [*(v213[41] + 120) count];
      v129 = [v213[41] canEnrollInBetaUpdates];
      v262 = v129;
      if (v129)
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      v128 = v43;
      v44 = v43;
      v122 = v128;
      v45 = MEMORY[0x277D82BE0](v122);
      v46 = v213;
      v123 = v45;
      v213[8] = v45;
      v124 = *(v46[41] + 168);
      v125 = *(v46[41] + 176);
      v126 = *(v46[41] + 184);
      v127 = [*(v46[41] + 192) count];
      v121 = [v213[41] currentDownload];
      v119 = v121;
      v120 = [v119 descriptor];
      v117 = v120;
      v118 = [v117 updateName];
      v114 = v118;
      v47 = MEMORY[0x277D82BE0](v114);
      v48 = v214;
      v115 = v47;
      v213[7] = v47;
      v116 = [v48[4] programID];
      v112 = v214[4];
      v113 = SUUIUserInteractionResponseToString(v214[9]);
      v49 = v130;
      v50 = v137;
      v51 = v142;
      v52 = v146;
      v53 = v151;
      v54 = v155;
      v55 = v159;
      v56 = v162;
      v57 = v164;
      v58 = v171;
      v111 = v113;
      v59 = MEMORY[0x277D82BE0](v111);
      v60 = v175;
      v61 = v131;
      v62 = v123;
      v63 = v124;
      v64 = v125;
      v65 = v126;
      v66 = v127;
      v67 = v115;
      v68 = v116;
      v69 = v216;
      v70 = v196;
      v71 = v191;
      v72 = v188;
      v73 = v189;
      v74 = v179;
      v75 = v177;
      v76 = v173;
      v213[6] = v59;
      v109 = &v84;
      v110 = v266;
      __os_log_helper_16_2_29_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0_8_66(v266, v69, v70, v71, v72, v73, v74, v75, v60, v76, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v61, v62, v63, v64, v65, v66, v67, v68, v112, v59);
      _os_log_impl(&dword_26ADE5000, v194, v195[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUser responded to the targeted update purge request of %{public}@, for beta program %ld (%p): %{public}@", v110, 0x124u);
      MEMORY[0x277D82BD8](v111);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v122);
      if (v237)
      {
        MEMORY[0x277D82BD8](v213[10]);
      }

      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v141);
      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v148);
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v154);
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](v162);
      if (v244)
      {
        MEMORY[0x277D82BD8](v213[18]);
      }

      if (v245)
      {
        MEMORY[0x277D82BD8](v213[20]);
      }

      if (v246)
      {
        MEMORY[0x277D82BD8](v213[22]);
      }

      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](v171);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](v175);
      MEMORY[0x277D82BD8](v177);
      if (v247)
      {
        MEMORY[0x277D82BD8](v213[24]);
      }

      if (v248)
      {
        MEMORY[0x277D82BD8](v213[26]);
      }

      MEMORY[0x277D82BD8](v185);
      MEMORY[0x277D82BD8](v187);
      MEMORY[0x277D82BD8](v190);
      objc_storeStrong(&v234, 0);
      objc_storeStrong(&v235, 0);
      objc_storeStrong(&v236, 0);
      objc_storeStrong(&v238, 0);
      objc_storeStrong(&v239, 0);
      objc_storeStrong(&v240, 0);
      objc_storeStrong(&v241, 0);
      objc_storeStrong(&v242, 0);
      objc_storeStrong(&v243, 0);
      objc_storeStrong(&v249, 0);
      objc_storeStrong(&v250, 0);
    }

    objc_storeStrong(&v252, 0);
    if (v214[9])
    {
      if (*(*(v214[6] + 1) + 24))
      {
        if (*(*(*(v214[6] + 1) + 24) + 24))
        {
          os_activity_scope_leave(*(*(v214[6] + 1) + 24));
        }

        free(*(*(v214[6] + 1) + 24));
        *(*(v214[6] + 1) + 24) = 0;
      }

      v108 = [MEMORY[0x277D643F8] sharedCore];
      v106 = v108;
      v107 = [v213[41] delegateCallbackQueue];
      v104 = v107;
      v105 = [v106 selectDelegateCallbackQueue:?];
      v103 = v105;
      v102 = &v228;
      v228 = MEMORY[0x277D85DD0];
      v229 = -1073741824;
      v230 = 0;
      v231 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_486;
      v232 = &unk_279CC6900;
      v100 = &v233;
      v77 = MEMORY[0x277D82BE0](v214[5]);
      v78 = v214;
      v79 = v102;
      v213[5] = v77;
      v101 = (v79 + 32);
      v80 = MEMORY[0x277D82BE0](v78[4]);
      v81 = v102;
      v82 = v80;
      v83 = v103;
      v213[4] = v82;
      dispatch_async(v83, v81);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v106);
      v253 = 1;
      objc_storeStrong(v101, 0);
      objc_storeStrong(v100, 0);
    }

    else
    {
      v99 = [MEMORY[0x277CCAD78] UUID];
      v97 = v99;
      v98 = [v97 UUIDString];
      v227 = v98;
      MEMORY[0x277D82BD8](v97);
      v96 = [v213[41] environment];
      v94 = v96;
      v95 = [v94 updateOperationWithManager:v213[41] identifier:v227 delegateCallbackQueue:0 completionQueue:*(v213[41] + 208)];
      v226 = v95;
      MEMORY[0x277D82BD8](v94);
      v92 = v226;
      v93 = [v213[41] currentDownload];
      v90 = v93;
      v91 = [v213[41] contextForPurgeUpdateOperation:v226 forUserRequestedOperation:1 notifyUser:0];
      v88 = v91;
      v218 = MEMORY[0x277D85DD0];
      v219 = -1073741824;
      v220 = 0;
      v221 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_2;
      v222 = &unk_279CC6928;
      v89 = v225;
      objc_copyWeak(v225, v214 + 7);
      v87 = &v218;
      v225[1] = v214[8];
      v85 = v224;
      v224[0] = MEMORY[0x277D82BE0](v214[5]);
      v224[1] = v214[6];
      v86 = (v87 + 4);
      v223 = MEMORY[0x277D82BE0](v214[4]);
      [v92 purgeDownload:v90 withContext:v88 delegate:0 completionHandler:v87];
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v90);
      objc_storeStrong(v86, 0);
      objc_storeStrong(v85, 0);
      objc_destroyWeak(v89);
      objc_storeStrong(&v226, 0);
      objc_storeStrong(&v227, 0);
      v253 = 0;
    }
  }

  objc_storeStrong(v261, 0);
  *MEMORY[0x277D85DE8];
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_484(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_486(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[5]);
  v3 = 0;
  if (location[0])
  {
    v1 = a1[4];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:1 userInfo:0];
    v3 = 1;
    (*(location[0] + 2))(location[0], v1);
  }

  if (v3)
  {
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v92 = a1;
  obj = a3;
  v90 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:afterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v143 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v135 = 0;
  objc_storeStrong(&v135, obj);
  v134[1] = v92;
  v134[0] = objc_loadWeakRetained(v92 + 7);
  v89 = 0;
  if (!v134[0])
  {
    v88 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v88 oslog];
    MEMORY[0x277D82BD8](v88);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v84 = type;
      v86 = NSStringFromSelector(*(v92 + 8));
      v87 = &v131;
      v131 = MEMORY[0x277D82BE0](v86);
      buf = v142;
      __os_log_helper_16_2_2_8_32_8_66(v142, v90, v131);
      _os_log_error_impl(&dword_26ADE5000, log, v84[0], "%s: Self is nil in %{public}@. Stopping.", v142, 0x16u);
      MEMORY[0x277D82BD8](v86);
      objc_storeStrong(&v131, 0);
    }

    objc_storeStrong(&oslog, 0);
    v130 = 1;
    v89 = 1;
  }

  if (v89)
  {
    v79 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v79;
    block = &v124;
    v124 = MEMORY[0x277D85DD0];
    v125 = -1073741824;
    v126 = 0;
    v127 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_487;
    v128 = &unk_279CC61E0;
    v82 = &v129;
    v129 = MEMORY[0x277D82BE0](*(v92 + 5));
    dispatch_async(queue, &v124);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v129, 0);
    v123 = 1;
  }

  else
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    v122 = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    v121 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v122;
      *v70 = v121;
      v71 = v134[0];
      v4 = objc_opt_class();
      v72 = NSStringFromClass(v4);
      v73 = MEMORY[0x277D82BE0](v72);
      v120 = v73;
      v74 = SUUIStatefulUIStateToString(*(v134[0] + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v119 = v75;
      v76 = [v134[0] currentState];
      v77 = [v134[0] delegate];
      v117 = 0;
      v115 = 0;
      if (v77)
      {
        v118 = [v134[0] delegate];
        v67 = 1;
        v117 = 1;
        v5 = objc_opt_class();
        v116 = NSStringFromClass(v5);
        v115 = 1;
        v68 = v116;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      v62 = [v134[0] delegate];
      v63 = [v134[0] scanError];
      v64 = [v134[0] preferredStatefulDescriptor];
      v65 = [v134[0] alternateStatefulDescriptor];
      v66 = [v134[0] currentDownload];
      v113 = 0;
      v111 = 0;
      v109 = 0;
      if (v66)
      {
        v114 = [v134[0] currentDownload];
        v59 = 1;
        v113 = 1;
        v112 = [v114 descriptor];
        v111 = 1;
        v110 = [v112 updateName];
        v109 = 1;
        v60 = v110;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      v37 = [v134[0] currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([v134[0] currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v108 = v39;
      v140 = [v134[0] isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (v140)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v40 = v6;
      v7 = v6;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v107 = v42;
      v139 = [v134[0] hidingPreferredDescriptor];
      if (v139)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v43 = v8;
      v9 = v8;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v106 = v45;
      v46 = [v134[0] hiddenPreferredStatefulDescriptor];
      v47 = [v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v105 = v48;
      v138 = [v134[0] hidingAlternateDescriptor];
      if (v138)
      {
        v10 = v50;
      }

      else
      {
        v10 = v49;
      }

      v51 = v10;
      v11 = v10;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v104 = v53;
      v54 = [v134[0] hiddenAlternateStatefulDescriptor];
      v55 = [v54 updateName];
      v56 = MEMORY[0x277D82BE0](v55);
      v103 = v56;
      v58 = [v134[0] enrolledBetaProgram];
      v101 = 0;
      if (v58)
      {
        v102 = [v134[0] enrolledBetaProgram];
        v101 = 1;
        v35 = [v102 programID];
      }

      else
      {
        v35 = 0;
      }

      v26 = v35;
      v27 = [*(v134[0] + 15) count];
      v137 = [v134[0] canEnrollInBetaUpdates];
      if (v137)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v25 = v12;
      v13 = v12;
      v34 = v25;
      v28 = MEMORY[0x277D82BE0](v34);
      v100 = v28;
      v29 = *(v134[0] + 21);
      v30 = *(v134[0] + 22);
      v31 = *(v134[0] + 23);
      v14 = [*(v134[0] + 24) count];
      v32 = &v15;
      v33 = v141;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v141, v90, v71, v73, v75, v76, v61, v62, v63, v64, v65, v36, v37, v39, v42, v45, v48, v53, v56, v26, v27, v28, v29, v30, v31, v14, location[0], v135);
      _os_log_impl(&dword_26ADE5000, v69, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPurge result: %{public}@; error: %{public}@", v33, 0x110u);
      MEMORY[0x277D82BD8](v34);
      if (v101)
      {
        MEMORY[0x277D82BD8](v102);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v37);
      if (v109)
      {
        MEMORY[0x277D82BD8](v110);
      }

      if (v111)
      {
        MEMORY[0x277D82BD8](v112);
      }

      if (v113)
      {
        MEMORY[0x277D82BD8](v114);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      if (v115)
      {
        MEMORY[0x277D82BD8](v116);
      }

      if (v117)
      {
        MEMORY[0x277D82BD8](v118);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      v24 = 0;
      objc_storeStrong(&v100, 0);
      objc_storeStrong(&v103, v24);
      objc_storeStrong(&v104, v24);
      objc_storeStrong(&v105, v24);
      objc_storeStrong(&v106, v24);
      objc_storeStrong(&v107, v24);
      objc_storeStrong(&v108, v24);
      objc_storeStrong(&v119, v24);
      objc_storeStrong(&v120, v24);
    }

    objc_storeStrong(&v122, 0);
    if (location[0])
    {
      [v134[0] doEnrollInBetaUpdatesProgram:*(v92 + 4) activity:*(*(v92 + 6) + 8) + 24 completionHandler:*(v92 + 5)];
      v123 = 0;
    }

    else
    {
      if (*(*(*(v92 + 6) + 8) + 24))
      {
        if (*(*(*(*(v92 + 6) + 8) + 24) + 24))
        {
          os_activity_scope_leave(*(*(*(v92 + 6) + 8) + 24));
        }

        free(*(*(*(v92 + 6) + 8) + 24));
        *(*(*(v92 + 6) + 8) + 24) = 0;
      }

      v20 = [MEMORY[0x277D643F8] sharedCore];
      v19 = [v134[0] delegateCallbackQueue];
      v18 = [v20 selectDelegateCallbackQueue:?];
      v17 = &v93;
      v93 = MEMORY[0x277D85DD0];
      v94 = -1073741824;
      v95 = 0;
      v96 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_488;
      v97 = &unk_279CC6900;
      v22 = &v99;
      v99 = MEMORY[0x277D82BE0](*(v92 + 5));
      v21 = (v17 + 32);
      v98 = MEMORY[0x277D82BE0](*(v92 + 4));
      dispatch_async(v18, v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      v123 = 1;
      v23 = 0;
      objc_storeStrong(v21, 0);
      objc_storeStrong(v22, v23);
    }
  }

  objc_storeStrong(v134, 0);
  if (!v123)
  {
    v123 = 0;
  }

  v16 = 0;
  objc_storeStrong(&v135, 0);
  objc_storeStrong(location, v16);
  *MEMORY[0x277D85DE8];
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_487(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_488(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[5]);
  v3 = 0;
  if (location[0])
  {
    v1 = a1[4];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:0];
    v3 = 1;
    (*(location[0] + 2))(location[0], v1);
  }

  if (v3)
  {
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)doUnenrollFromBetaUpdates:(suui_activity_s *)a3 completionHandler:(id)a4
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  objc_initWeak(&v16, v20);
  v12[0] = 0;
  v12[1] = v12;
  v13 = 0x20000000;
  v14 = 32;
  v15 = *v18;
  *v18 = 0;
  queue = v20->_operationsQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke;
  v9 = &unk_279CC6A40;
  objc_copyWeak(v11, &v16);
  v11[1] = v19;
  v10[0] = MEMORY[0x277D82BE0](location);
  v10[1] = v12;
  dispatch_async(queue, &v5);
  objc_storeStrong(v10, 0);
  objc_destroyWeak(v11);
  _Block_object_dispose(v12, 8);
  objc_destroyWeak(&v16);
  objc_storeStrong(&location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke(id *a1)
{
  v117 = a1;
  v118 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke";
  v119 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_2";
  v173 = *MEMORY[0x277D85DE8];
  v166[2] = a1;
  v166[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v166[0] = WeakRetained;
  v116 = 0;
  if (!WeakRetained)
  {
    v115 = +[SUUILoggingContext softwareUpdateUILogger];
    v113 = v115;
    v114 = [v113 oslog];
    oslog = v114;
    MEMORY[0x277D82BD8](v113);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v111 = type;
      v112 = NSStringFromSelector(v117[7]);
      v109 = v112;
      location = MEMORY[0x277D82BE0](v109);
      buf = v172;
      __os_log_helper_16_2_2_8_32_8_66(v172, v118, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v172, 0x16u);
      MEMORY[0x277D82BD8](v109);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v162 = 1;
    v116 = 1;
  }

  if (v116)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v156;
    v156 = MEMORY[0x277D85DD0];
    v157 = -1073741824;
    v158 = 0;
    v159 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_490;
    v160 = &unk_279CC61E0;
    v105 = &v161;
    v161 = MEMORY[0x277D82BE0](v117[4]);
    dispatch_async(queue, &v156);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v161, 0);
    v155 = 1;
  }

  else
  {
    v104 = [v166[0] currentSeedingDevice];
    v154 = v104;
    v103 = [v166[0] environment];
    v102 = v103;
    objc_initWeak(&v153, v102);
    MEMORY[0x277D82BD8](v102);
    v101 = [MEMORY[0x277CCAD78] UUID];
    v99 = v101;
    v100 = [v99 UUIDString];
    v152 = v100;
    MEMORY[0x277D82BD8](v99);
    v98 = +[SUUILoggingContext statefulUILogger];
    v96 = v98;
    v97 = [v96 oslog];
    v151 = v97;
    MEMORY[0x277D82BD8](v96);
    v150 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      v92 = v151;
      *v93 = v150;
      v94 = v166[0];
      aClass = objc_opt_class();
      v91 = NSStringFromClass(aClass);
      v88 = v91;
      v89 = MEMORY[0x277D82BE0](v88);
      v149 = v89;
      v90 = SUUIStatefulUIStateToString(*(v166[0] + 5));
      v85 = v90;
      v86 = MEMORY[0x277D82BE0](v85);
      v148 = v86;
      v87 = [v166[0] currentState];
      v146 = 0;
      v144 = 0;
      v84 = [v166[0] delegate];
      v83 = v84;
      if (v83)
      {
        v82 = [v166[0] delegate];
        v147 = v82;
        v146 = 1;
        v81 = objc_opt_class();
        v80 = NSStringFromClass(v81);
        v145 = v80;
        v144 = 1;
        v79 = v145;
      }

      else
      {
        v79 = @"(null)";
      }

      v77 = v79;
      v78 = [v166[0] delegate];
      v75 = v78;
      v76 = [v166[0] scanError];
      v73 = v76;
      v74 = [v166[0] preferredStatefulDescriptor];
      v71 = v74;
      v72 = [v166[0] alternateStatefulDescriptor];
      v69 = v72;
      v142 = 0;
      v140 = 0;
      v138 = 0;
      v70 = [v166[0] currentDownload];
      v68 = v70;
      if (v68)
      {
        v67 = [v166[0] currentDownload];
        v143 = v67;
        v142 = 1;
        v66 = [v143 descriptor];
        v141 = v66;
        v140 = 1;
        v65 = [v141 updateName];
        v139 = v65;
        v138 = 1;
        v64 = v139;
      }

      else
      {
        v64 = @"(null)";
      }

      v62 = v64;
      v63 = [v166[0] currentDownload];
      v60 = v63;
      v61 = [v166[0] currentUpdateOperationType];
      v59 = SUUIUpdateContinuousOperationTypeToString(v61);
      v56 = v59;
      v57 = MEMORY[0x277D82BE0](v56);
      v137 = v57;
      v58 = [v166[0] isTargetedUpdateScheduledForAutoInstall];
      v170 = v58;
      if (v58)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      v55 = v2;
      v3 = v2;
      v52 = v55;
      v53 = MEMORY[0x277D82BE0](v52);
      v136 = v53;
      v54 = [v166[0] hidingPreferredDescriptor];
      v169 = v54;
      if (v54)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v51 = v4;
      v5 = v4;
      v48 = v51;
      v49 = MEMORY[0x277D82BE0](v48);
      v135 = v49;
      v50 = [v166[0] hiddenPreferredStatefulDescriptor];
      v46 = v50;
      v47 = [v46 updateName];
      v43 = v47;
      v44 = MEMORY[0x277D82BE0](v43);
      v134 = v44;
      v45 = [v166[0] hidingAlternateDescriptor];
      v168 = v45;
      if (v45)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v42 = v6;
      v7 = v6;
      v39 = v42;
      v40 = MEMORY[0x277D82BE0](v39);
      v133 = v40;
      v41 = [v166[0] hiddenAlternateStatefulDescriptor];
      v37 = v41;
      v38 = [v37 updateName];
      v34 = v38;
      v35 = MEMORY[0x277D82BE0](v34);
      v132 = v35;
      v130 = 0;
      v36 = [v166[0] enrolledBetaProgram];
      v33 = v36;
      if (v33)
      {
        v32 = [v166[0] enrolledBetaProgram];
        v131 = v32;
        v130 = 1;
        v31 = [v131 programID];
        v30 = v31;
      }

      else
      {
        v30 = 0;
      }

      v28 = v30;
      v29 = [*(v166[0] + 15) count];
      v27 = [v166[0] canEnrollInBetaUpdates];
      v167 = v27;
      if (v27)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v26 = v8;
      v9 = v8;
      v20 = v26;
      v21 = MEMORY[0x277D82BE0](v20);
      v129 = v21;
      v22 = *(v166[0] + 21);
      v23 = *(v166[0] + 22);
      v24 = *(v166[0] + 23);
      v25 = [*(v166[0] + 24) count];
      v18 = &v10;
      v19 = v171;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v171, v119, v94, v89, v86, v87, v77, v75, v73, v71, v69, v62, v60, v57, v53, v49, v44, v40, v35, v28, v29, v21, v22, v23, v24, v25, v152);
      _os_log_impl(&dword_26ADE5000, v92, v93[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nAttempts to unenroll from Beta Updates program using operation ID: %{public}@", v19, 0x106u);
      MEMORY[0x277D82BD8](v20);
      if (v130)
      {
        MEMORY[0x277D82BD8](v131);
      }

      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v60);
      if (v138)
      {
        MEMORY[0x277D82BD8](v139);
      }

      if (v140)
      {
        MEMORY[0x277D82BD8](v141);
      }

      if (v142)
      {
        MEMORY[0x277D82BD8](v143);
      }

      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v75);
      if (v144)
      {
        MEMORY[0x277D82BD8](v145);
      }

      if (v146)
      {
        MEMORY[0x277D82BD8](v147);
      }

      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v88);
      objc_storeStrong(&v129, 0);
      objc_storeStrong(&v132, 0);
      objc_storeStrong(&v133, 0);
      objc_storeStrong(&v134, 0);
      objc_storeStrong(&v135, 0);
      objc_storeStrong(&v136, 0);
      objc_storeStrong(&v137, 0);
      objc_storeStrong(&v148, 0);
      objc_storeStrong(&v149, 0);
    }

    objc_storeStrong(&v151, 0);
    v17 = objc_loadWeakRetained(&v153);
    v16 = [v17 betaUpdatesOperationWithManager:v166[0] identifier:v152 completionQueue:*(v166[0] + 26)];
    v128 = v16;
    MEMORY[0x277D82BD8](v17);
    v13 = v128;
    v14 = v154;
    v121 = MEMORY[0x277D85DD0];
    v122 = -1073741824;
    v123 = 0;
    v124 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_492;
    v125 = &unk_279CC6A18;
    v15 = v127;
    objc_copyWeak(v127, v117 + 6);
    v12 = &v121;
    v127[1] = v117[7];
    v11 = v126;
    v126[0] = MEMORY[0x277D82BE0](v117[4]);
    v126[1] = v117[5];
    [v13 unenrollDevice:v14 completionHandler:v12];
    objc_storeStrong(v11, 0);
    objc_destroyWeak(v15);
    objc_storeStrong(&v128, 0);
    objc_storeStrong(&v152, 0);
    objc_destroyWeak(&v153);
    objc_storeStrong(&v154, 0);
    v155 = 0;
  }

  objc_storeStrong(v166, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_490(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_492(id *a1, char a2)
{
  v158 = &v171;
  v159 = a1;
  v160 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke";
  v161 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_2";
  v214 = *MEMORY[0x277D85DE8];
  v207 = a1;
  v206 = a2;
  v205[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v205[0] = WeakRetained;
  v157 = 0;
  if (!WeakRetained)
  {
    v156 = +[SUUILoggingContext softwareUpdateUILogger];
    v154 = v156;
    v155 = [v154 oslog];
    v2 = v155;
    v3 = v154;
    v158[43] = v2;
    MEMORY[0x277D82BD8](v3);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v158[43], OS_LOG_TYPE_ERROR))
    {
      log = v158[43];
      *v152 = type;
      v153 = NSStringFromSelector(v159[7]);
      v150 = v153;
      v4 = MEMORY[0x277D82BE0](v150);
      v5 = v160;
      v158[41] = v4;
      buf = v213;
      __os_log_helper_16_2_2_8_32_8_66(v213, v5, v4);
      _os_log_error_impl(&dword_26ADE5000, log, v152[0], "%s: Self is nil in %{public}@. Stopping.", v213, 0x16u);
      MEMORY[0x277D82BD8](v150);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v204, 0);
    v201[3] = 1;
    v157 = 1;
  }

  if (v157)
  {
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8 = v159;
    v9 = v158;
    queue = v7;
    block = &v198;
    v158[35] = MEMORY[0x277D85DD0];
    v199 = -1073741824;
    v200 = 0;
    v9[37] = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_493;
    v9[38] = &unk_279CC61E0;
    v146 = v201;
    v10 = MEMORY[0x277D82BE0](v8[4]);
    v11 = block;
    v12 = v10;
    v13 = queue;
    v158[39] = v12;
    dispatch_async(v13, v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v146, 0);
    v197 = 1;
  }

  else
  {
    v145 = +[SUUILoggingContext statefulUILogger];
    v143 = v145;
    v144 = [v143 oslog];
    v14 = v144;
    v15 = v143;
    v158[33] = v14;
    MEMORY[0x277D82BD8](v15);
    v195 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v158[33], OS_LOG_TYPE_DEFAULT))
    {
      v139 = v158[33];
      *v140 = v195;
      v141 = v158[44];
      v16 = v158[44];
      aClass = objc_opt_class();
      v138 = NSStringFromClass(aClass);
      v135 = v138;
      v17 = MEMORY[0x277D82BE0](v135);
      v18 = v158;
      v136 = v17;
      v158[31] = v17;
      v137 = SUUIStatefulUIStateToString(*(v18[44] + 40));
      v132 = v137;
      v19 = MEMORY[0x277D82BE0](v132);
      v20 = v158;
      v133 = v19;
      v158[30] = v19;
      v134 = [v20[44] currentState];
      v131 = [v158[44] delegate];
      v130 = v131;
      v192 = 0;
      v191 = 0;
      if (v130)
      {
        v129 = [v158[44] delegate];
        v158[29] = v129;
        v192 = 1;
        v128 = objc_opt_class();
        v127 = NSStringFromClass(v128);
        v21 = v127;
        v158[27] = v21;
        v191 = 1;
        v126 = v21;
      }

      else
      {
        v126 = @"(null)";
      }

      v124 = v126;
      v125 = [v158[44] delegate];
      v122 = v125;
      v123 = [v158[44] scanError];
      v120 = v123;
      v121 = [v158[44] preferredStatefulDescriptor];
      v118 = v121;
      v119 = [v158[44] alternateStatefulDescriptor];
      v116 = v119;
      v117 = [v158[44] currentDownload];
      v115 = v117;
      v190 = 0;
      v189 = 0;
      v188 = 0;
      if (v115)
      {
        v114 = [v158[44] currentDownload];
        v22 = v114;
        v158[25] = v22;
        v190 = 1;
        v113 = [v22 descriptor];
        v23 = v113;
        v158[23] = v23;
        v189 = 1;
        v112 = [v23 updateName];
        v24 = v112;
        v158[21] = v24;
        v188 = 1;
        v111 = v24;
      }

      else
      {
        v111 = @"(null)";
      }

      v109 = v111;
      v110 = [v158[44] currentDownload];
      v107 = v110;
      v108 = [v158[44] currentUpdateOperationType];
      v106 = SUUIUpdateContinuousOperationTypeToString(v108);
      v103 = v106;
      v25 = MEMORY[0x277D82BE0](v103);
      v26 = v158;
      v104 = v25;
      v158[19] = v25;
      v105 = [v26[44] isTargetedUpdateScheduledForAutoInstall];
      v211 = v105;
      if (v105)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v102 = v27;
      v28 = v27;
      v99 = v102;
      v29 = MEMORY[0x277D82BE0](v99);
      v30 = v158;
      v100 = v29;
      v158[18] = v29;
      v101 = [v30[44] hidingPreferredDescriptor];
      v210 = v101;
      if (v101)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v98 = v31;
      v32 = v31;
      v95 = v98;
      v33 = MEMORY[0x277D82BE0](v95);
      v34 = v158;
      v96 = v33;
      v158[17] = v33;
      v97 = [v34[44] hiddenPreferredStatefulDescriptor];
      v93 = v97;
      v94 = [v93 updateName];
      v90 = v94;
      v35 = MEMORY[0x277D82BE0](v90);
      v36 = v158;
      v91 = v35;
      v158[16] = v35;
      v92 = [v36[44] hidingAlternateDescriptor];
      v209 = v92;
      if (v92)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v89 = v37;
      v38 = v37;
      v86 = v89;
      v39 = MEMORY[0x277D82BE0](v86);
      v40 = v158;
      v87 = v39;
      v158[15] = v39;
      v88 = [v40[44] hiddenAlternateStatefulDescriptor];
      v84 = v88;
      v85 = [v84 updateName];
      v81 = v85;
      v41 = MEMORY[0x277D82BE0](v81);
      v42 = v158;
      v82 = v41;
      v158[14] = v41;
      v83 = [v42[44] enrolledBetaProgram];
      v80 = v83;
      v181 = 0;
      if (v80)
      {
        v79 = [v158[44] enrolledBetaProgram];
        v43 = v79;
        v158[13] = v43;
        v181 = 1;
        v78 = [v43 programID];
        v77 = v78;
      }

      else
      {
        v77 = 0;
      }

      v75 = v77;
      v76 = [*(v158[44] + 120) count];
      v74 = [v158[44] canEnrollInBetaUpdates];
      v208 = v74;
      if (v74)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v73 = v44;
      v45 = v44;
      v67 = v73;
      v46 = MEMORY[0x277D82BE0](v67);
      v47 = v158;
      v68 = v46;
      v158[11] = v46;
      v69 = *(v47[44] + 168);
      v70 = *(v47[44] + 176);
      v71 = *(v47[44] + 184);
      v72 = [*(v47[44] + 192) count];
      v65 = &v53;
      v66 = v212;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_4_0(v212, v161, v141, v136, v133, v134, v124, v122, v120, v118, v116, v109, v107, v104, v100, v96, v91, v87, v82, v75, v76, v68, v69, v70, v71, v72, v206 & 1);
      _os_log_impl(&dword_26ADE5000, v139, v140[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUn-enroll from beta program success: %d", v66, 0x102u);
      MEMORY[0x277D82BD8](v67);
      if (v181)
      {
        MEMORY[0x277D82BD8](v158[13]);
      }

      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v107);
      if (v188)
      {
        MEMORY[0x277D82BD8](v158[21]);
      }

      if (v189)
      {
        MEMORY[0x277D82BD8](v158[23]);
      }

      if (v190)
      {
        MEMORY[0x277D82BD8](v158[25]);
      }

      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v120);
      MEMORY[0x277D82BD8](v122);
      if (v191)
      {
        MEMORY[0x277D82BD8](v158[27]);
      }

      if (v192)
      {
        MEMORY[0x277D82BD8](v158[29]);
      }

      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v135);
      objc_storeStrong(&v180, 0);
      objc_storeStrong(&v182, 0);
      objc_storeStrong(&v183, 0);
      objc_storeStrong(&v184, 0);
      objc_storeStrong(&v185, 0);
      objc_storeStrong(&v186, 0);
      objc_storeStrong(&v187, 0);
      objc_storeStrong(&v193, 0);
      objc_storeStrong(&v194, 0);
    }

    objc_storeStrong(&v196, 0);
    if (v206)
    {
      [v158[44] setEnrolledBetaProgram:0];
    }

    v63 = &v171;
    v171 = MEMORY[0x277D85DD0];
    v172 = -1073741824;
    v173 = 0;
    v174 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_494;
    v175 = &unk_279CC69F0;
    v62 = &v176;
    v48 = MEMORY[0x277D82BE0](v158[44]);
    v49 = v63;
    v50 = v159;
    v176 = v48;
    v158[6] = v159[5];
    v64 = v49 + 7;
    objc_copyWeak(v49 + 7, v50 + 6);
    v51 = v159;
    v60 = &v171;
    v158[8] = v159[7];
    v59 = &v177;
    v177 = MEMORY[0x277D82BE0](v51[4]);
    v178 = v206 & 1;
    v61 = MEMORY[0x26D66ADC0](v60);
    v52 = v158;
    v158[10] = v61;
    v170 = MEMORY[0x277D82BE0](*(v52[44] + 168));
    if (v170)
    {
      v57 = v170;
      v163 = MEMORY[0x277D85DD0];
      v164 = -1073741824;
      v165 = 0;
      v166 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_499;
      v167 = &unk_279CC6888;
      v58 = v169;
      objc_copyWeak(v169, v159 + 6);
      v56 = &v163;
      v169[1] = v159[7];
      v54 = v168;
      v168[0] = MEMORY[0x277D82BE0](v159[4]);
      v55 = (v56 + 5);
      v168[1] = MEMORY[0x277D82BE0](v158[10]);
      [v57 cancel:v56];
      objc_storeStrong(v55, 0);
      objc_storeStrong(v54, 0);
      objc_destroyWeak(v58);
    }

    else
    {
      (*(v158[10] + 16))();
    }

    objc_storeStrong(&v170, 0);
    objc_storeStrong(&v179, 0);
    objc_storeStrong(v59, 0);
    objc_destroyWeak(v64);
    objc_storeStrong(v62, 0);
    v197 = 0;
  }

  objc_storeStrong(v205, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_493(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_494(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2;
  v7 = &unk_279CC69C8;
  v8[1] = *(a1 + 48);
  objc_copyWeak(v9, (a1 + 56));
  v9[1] = *(a1 + 64);
  v8[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v10 = *(a1 + 72) & 1;
  [v2 checkForAvailableUpdatesWithForcedReload:1 completion:&v3];
  objc_storeStrong(v8, 0);
  objc_destroyWeak(v9);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v42 = 0;
  objc_storeStrong(&v42, a3);
  v41[1] = a1;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (*(*(*(*(a1 + 40) + 8) + 24) + 24))
    {
      os_activity_scope_leave(*(*(*(a1 + 40) + 8) + 24));
    }

    free(*(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v41[0] = objc_loadWeakRetained((a1 + 48));
  v13 = 0;
  if (!v41[0])
  {
    v12 = +[SUUILoggingContext softwareUpdateUILogger];
    v40 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v39 = 16;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      log = v40;
      type = v39;
      v9 = NSStringFromSelector(*(a1 + 56));
      v38 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v44, "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_2", v38);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v44, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&v40, 0);
    v37 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v3 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v31 = MEMORY[0x277D85DD0];
    v32 = -1073741824;
    v33 = 0;
    v34 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_495;
    v35 = &unk_279CC61E0;
    v36 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v31);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v36, 0);
    v30 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v41[0] delegateCallbackQueue];
    v5 = [v7 selectDelegateCallbackQueue:?];
    v23 = MEMORY[0x277D85DD0];
    v24 = -1073741824;
    v25 = 0;
    v26 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2_496;
    v27 = &unk_279CC6978;
    v28 = MEMORY[0x277D82BE0](*(a1 + 32));
    v29 = *(a1 + 64) & 1;
    dispatch_async(v5, &v23);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v4 = v41[0];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_3;
    v20 = &unk_279CC69A0;
    objc_copyWeak(v21, (a1 + 48));
    v21[1] = *(a1 + 56);
    v22 = *(a1 + 64) & 1;
    [v4 executeOperationOnDelegate:sel_statefulUIManager_didUnenrollDevice_fromBetaUpdatesProgram_ usingBlock:&v16];
    objc_destroyWeak(v21);
    objc_storeStrong(&v28, 0);
    v30 = 0;
  }

  objc_storeStrong(v41, 0);
  if (!v30)
  {
    v30 = 0;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_495(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2_496(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](*(a1 + 32));
  if (location[0])
  {
    (*(location[0] + 2))(location[0], *(a1 + 40) & 1);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 32));
  v9 = 0;
  if (!v14[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v13 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v7 = NSStringFromSelector(*(a1 + 40));
      v11 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_3", v11);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v4 = [v14[0] delegate];
    v2 = v14[0];
    v3 = [v14[0] currentSeedingDevice];
    v1 = *(a1 + 48);
    [v4 statefulUIManager:v2 didUnenrollDevice:? fromBetaUpdatesProgram:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_499(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a2;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v21[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v7 = NSStringFromSelector(*(a1 + 56));
      v18 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v24, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_500;
    v15 = &unk_279CC61E0;
    v16 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    [v21[0] setCurrentFullScanOperation:0];
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_500(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)doUnenrollFromBetaUpdatesAfterPurgeConfirmation:(int64_t)a3 activity:(suui_activity_s *)a4 completionHandler:(id)a5
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  objc_initWeak(&v17, v22);
  v13[0] = 0;
  v13[1] = v13;
  v14 = 0x20000000;
  v15 = 32;
  v16 = *v19;
  *v19 = 0;
  queue = v22->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke;
  v10 = &unk_279CC6A90;
  objc_copyWeak(v12, &v17);
  v12[1] = v21;
  v11[0] = MEMORY[0x277D82BE0](location);
  v12[2] = v20;
  v11[1] = v13;
  dispatch_async(queue, &v6);
  objc_storeStrong(v11, 0);
  objc_destroyWeak(v12);
  _Block_object_dispose(v13, 8);
  objc_destroyWeak(&v17);
  objc_storeStrong(&location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke(id *a1)
{
  v191 = &v211;
  v192 = a1;
  v193 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdatesAfterPurgeConfirmation:activity:completionHandler:]_block_invoke";
  v194 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdatesAfterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v244 = *MEMORY[0x277D85DE8];
  v237[2] = a1;
  v237[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v237[0] = WeakRetained;
  v190 = 0;
  if (!WeakRetained)
  {
    v189 = +[SUUILoggingContext softwareUpdateUILogger];
    v187 = v189;
    v188 = [v187 oslog];
    v1 = v188;
    v2 = v187;
    v191[33] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v191[33], OS_LOG_TYPE_ERROR))
    {
      log = v191[33];
      *v185 = type;
      v186 = NSStringFromSelector(v192[7]);
      v183 = v186;
      v3 = MEMORY[0x277D82BE0](v183);
      v4 = v193;
      v191[31] = v3;
      buf = v243;
      __os_log_helper_16_2_2_8_32_8_66(v243, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v185[0], "%s: Self is nil in %{public}@. Stopping.", v243, 0x16u);
      MEMORY[0x277D82BD8](v183);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v236, 0);
    v233[3] = 1;
    v190 = 1;
  }

  if (v190)
  {
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v7 = v192;
    v8 = v191;
    queue = v6;
    block = &v230;
    v191[25] = MEMORY[0x277D85DD0];
    v231 = -1073741824;
    v232 = 0;
    v8[27] = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_501;
    v8[28] = &unk_279CC61E0;
    v179 = v233;
    v9 = MEMORY[0x277D82BE0](v7[4]);
    v10 = block;
    v11 = v9;
    v12 = queue;
    v191[29] = v11;
    dispatch_async(v12, v10);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v179, 0);
    v229 = 1;
  }

  else
  {
    v178 = +[SUUILoggingContext statefulUILogger];
    v176 = v178;
    v177 = [v176 oslog];
    v13 = v177;
    v14 = v176;
    v191[23] = v13;
    MEMORY[0x277D82BD8](v14);
    v227 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v191[23], OS_LOG_TYPE_DEFAULT))
    {
      v172 = v191[23];
      *v173 = v227;
      v174 = v191[34];
      v15 = v191[34];
      aClass = objc_opt_class();
      v171 = NSStringFromClass(aClass);
      v168 = v171;
      v16 = MEMORY[0x277D82BE0](v168);
      v17 = v191;
      v169 = v16;
      v191[21] = v16;
      v170 = SUUIStatefulUIStateToString(*(v17[34] + 5));
      v165 = v170;
      v18 = MEMORY[0x277D82BE0](v165);
      v19 = v191;
      v166 = v18;
      v191[20] = v18;
      v167 = [v19[34] currentState];
      v164 = [v191[34] delegate];
      v163 = v164;
      v224 = 0;
      v223 = 0;
      if (v163)
      {
        v162 = [v191[34] delegate];
        v191[19] = v162;
        v224 = 1;
        v161 = objc_opt_class();
        v160 = NSStringFromClass(v161);
        v20 = v160;
        v191[17] = v20;
        v223 = 1;
        v159 = v20;
      }

      else
      {
        v159 = @"(null)";
      }

      v157 = v159;
      v158 = [v191[34] delegate];
      v155 = v158;
      v156 = [v191[34] scanError];
      v153 = v156;
      v154 = [v191[34] preferredStatefulDescriptor];
      v151 = v154;
      v152 = [v191[34] alternateStatefulDescriptor];
      v149 = v152;
      v150 = [v191[34] currentDownload];
      v148 = v150;
      v222 = 0;
      v221 = 0;
      v220 = 0;
      if (v148)
      {
        v147 = [v191[34] currentDownload];
        v21 = v147;
        v191[15] = v21;
        v222 = 1;
        v146 = [v21 descriptor];
        v22 = v146;
        v191[13] = v22;
        v221 = 1;
        v145 = [v22 updateName];
        v23 = v145;
        v191[11] = v23;
        v220 = 1;
        v144 = v23;
      }

      else
      {
        v144 = @"(null)";
      }

      v142 = v144;
      v143 = [v191[34] currentDownload];
      v140 = v143;
      v141 = [v191[34] currentUpdateOperationType];
      v139 = SUUIUpdateContinuousOperationTypeToString(v141);
      v136 = v139;
      v24 = MEMORY[0x277D82BE0](v136);
      v25 = v191;
      v137 = v24;
      v191[9] = v24;
      v138 = [v25[34] isTargetedUpdateScheduledForAutoInstall];
      v241 = v138;
      if (v138)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v135 = v26;
      v27 = v26;
      v132 = v135;
      v28 = MEMORY[0x277D82BE0](v132);
      v29 = v191;
      v133 = v28;
      v191[8] = v28;
      v134 = [v29[34] hidingPreferredDescriptor];
      v240 = v134;
      if (v134)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v131 = v30;
      v31 = v30;
      v128 = v131;
      v32 = MEMORY[0x277D82BE0](v128);
      v33 = v191;
      v129 = v32;
      v191[7] = v32;
      v130 = [v33[34] hiddenPreferredStatefulDescriptor];
      v126 = v130;
      v127 = [v126 updateName];
      v123 = v127;
      v34 = MEMORY[0x277D82BE0](v123);
      v35 = v191;
      v124 = v34;
      v191[6] = v34;
      v125 = [v35[34] hidingAlternateDescriptor];
      v239 = v125;
      if (v125)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v122 = v36;
      v37 = v36;
      v119 = v122;
      v38 = MEMORY[0x277D82BE0](v119);
      v39 = v191;
      v120 = v38;
      v191[5] = v38;
      v121 = [v39[34] hiddenAlternateStatefulDescriptor];
      v117 = v121;
      v118 = [v117 updateName];
      v114 = v118;
      v40 = MEMORY[0x277D82BE0](v114);
      v41 = v191;
      v115 = v40;
      v191[4] = v40;
      v116 = [v41[34] enrolledBetaProgram];
      v113 = v116;
      v213 = 0;
      if (v113)
      {
        v112 = [v191[34] enrolledBetaProgram];
        v42 = v112;
        v191[3] = v42;
        v213 = 1;
        v111 = [v42 programID];
        v110 = v111;
      }

      else
      {
        v110 = 0;
      }

      v108 = v110;
      v109 = [*(v191[34] + 15) count];
      v107 = [v191[34] canEnrollInBetaUpdates];
      v238 = v107;
      if (v107)
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      v106 = v43;
      v44 = v43;
      v100 = v106;
      v45 = MEMORY[0x277D82BE0](v100);
      v46 = v191;
      v101 = v45;
      v191[1] = v45;
      v102 = *(v46[34] + 21);
      v103 = *(v46[34] + 22);
      v104 = *(v46[34] + 23);
      v105 = [*(v46[34] + 24) count];
      v99 = SUUIUserInteractionResponseToString(v192[8]);
      v47 = v124;
      v48 = v129;
      v49 = v133;
      v50 = v137;
      v51 = v140;
      v52 = v142;
      v53 = v149;
      v54 = v151;
      v55 = v153;
      v98 = v99;
      v56 = MEMORY[0x277D82BE0](v98);
      v57 = v120;
      v58 = v115;
      v59 = v108;
      v60 = v109;
      v61 = v101;
      v62 = v102;
      v63 = v103;
      v64 = v104;
      v65 = v105;
      v66 = v194;
      v67 = v174;
      v68 = v169;
      v69 = v166;
      v70 = v167;
      v71 = v157;
      v72 = v155;
      *v191 = v56;
      v96 = &v73;
      v97 = v242;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v242, v66, v67, v68, v69, v70, v71, v72, v55, v54, v53, v52, v51, v50, v49, v48, v47, v57, v58, v59, v60, v61, v62, v63, v64, v65, v56);
      _os_log_impl(&dword_26ADE5000, v172, v173[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUser responded to the targeted update purge request for unenrollment: %{public}@", v97, 0x106u);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v100);
      if (v213)
      {
        MEMORY[0x277D82BD8](v191[3]);
      }

      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v126);
      MEMORY[0x277D82BD8](v128);
      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v140);
      if (v220)
      {
        MEMORY[0x277D82BD8](v191[11]);
      }

      if (v221)
      {
        MEMORY[0x277D82BD8](v191[13]);
      }

      if (v222)
      {
        MEMORY[0x277D82BD8](v191[15]);
      }

      MEMORY[0x277D82BD8](v148);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v151);
      MEMORY[0x277D82BD8](v153);
      MEMORY[0x277D82BD8](v155);
      if (v223)
      {
        MEMORY[0x277D82BD8](v191[17]);
      }

      if (v224)
      {
        MEMORY[0x277D82BD8](v191[19]);
      }

      MEMORY[0x277D82BD8](v163);
      MEMORY[0x277D82BD8](v165);
      MEMORY[0x277D82BD8](v168);
      objc_storeStrong(&v211, 0);
      objc_storeStrong(&v212, 0);
      objc_storeStrong(&v214, 0);
      objc_storeStrong(&v215, 0);
      objc_storeStrong(&v216, 0);
      objc_storeStrong(&v217, 0);
      objc_storeStrong(&v218, 0);
      objc_storeStrong(&v219, 0);
      objc_storeStrong(&v225, 0);
      objc_storeStrong(&v226, 0);
    }

    objc_storeStrong(&v228, 0);
    if (v192[8])
    {
      if (*(*(v192[5] + 1) + 24))
      {
        if (*(*(*(v192[5] + 1) + 24) + 24))
        {
          os_activity_scope_leave(*(*(v192[5] + 1) + 24));
        }

        free(*(*(v192[5] + 1) + 24));
        *(*(v192[5] + 1) + 24) = 0;
      }

      v95 = [MEMORY[0x277D643F8] sharedCore];
      v93 = v95;
      v94 = [v191[34] delegateCallbackQueue];
      v91 = v94;
      v92 = [v93 selectDelegateCallbackQueue:?];
      v90 = v92;
      v89 = &v205;
      v205 = MEMORY[0x277D85DD0];
      v206 = -1073741824;
      v207 = 0;
      v208 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_503;
      v209 = &unk_279CC61E0;
      v88 = &v210;
      v210 = MEMORY[0x277D82BE0](v192[4]);
      dispatch_async(v90, v89);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v91);
      MEMORY[0x277D82BD8](v93);
      v229 = 1;
      objc_storeStrong(v88, 0);
    }

    else
    {
      v87 = [MEMORY[0x277CCAD78] UUID];
      v85 = v87;
      v86 = [v85 UUIDString];
      v204 = v86;
      MEMORY[0x277D82BD8](v85);
      v84 = [v191[34] environment];
      v82 = v84;
      v83 = [v82 updateOperationWithManager:v191[34] identifier:v204 delegateCallbackQueue:0 completionQueue:*(v191[34] + 26)];
      v203 = v83;
      MEMORY[0x277D82BD8](v82);
      v80 = v203;
      v81 = [v191[34] currentDownload];
      v78 = v81;
      v79 = [v191[34] contextForPurgeUpdateOperation:v203 forUserRequestedOperation:1 notifyUser:0];
      v76 = v79;
      v196 = MEMORY[0x277D85DD0];
      v197 = -1073741824;
      v198 = 0;
      v199 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_2;
      v200 = &unk_279CC6A68;
      v77 = v202;
      objc_copyWeak(v202, v192 + 6);
      v75 = &v196;
      v202[1] = v192[7];
      v74 = v201;
      v201[0] = MEMORY[0x277D82BE0](v192[4]);
      v201[1] = v192[5];
      [v80 purgeDownload:v78 withContext:v76 delegate:0 completionHandler:v75];
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v78);
      objc_storeStrong(v74, 0);
      objc_destroyWeak(v77);
      objc_storeStrong(&v203, 0);
      objc_storeStrong(&v204, 0);
      v229 = 0;
    }
  }

  objc_storeStrong(v237, 0);
  *MEMORY[0x277D85DE8];
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_501(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_503(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:1 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v90 = a1;
  obj = a3;
  v88 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdatesAfterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v140 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v132 = 0;
  objc_storeStrong(&v132, obj);
  v131[1] = v90;
  v131[0] = objc_loadWeakRetained(v90 + 6);
  v87 = 0;
  if (!v131[0])
  {
    v86 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v86 oslog];
    MEMORY[0x277D82BD8](v86);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v82 = type;
      v84 = NSStringFromSelector(*(v90 + 7));
      v85 = &v128;
      v128 = MEMORY[0x277D82BE0](v84);
      buf = v139;
      __os_log_helper_16_2_2_8_32_8_66(v139, v88, v128);
      _os_log_error_impl(&dword_26ADE5000, log, v82[0], "%s: Self is nil in %{public}@. Stopping.", v139, 0x16u);
      MEMORY[0x277D82BD8](v84);
      objc_storeStrong(&v128, 0);
    }

    objc_storeStrong(&oslog, 0);
    v127 = 1;
    v87 = 1;
  }

  if (v87)
  {
    v77 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v77;
    block = &v121;
    v121 = MEMORY[0x277D85DD0];
    v122 = -1073741824;
    v123 = 0;
    v124 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_504;
    v125 = &unk_279CC61E0;
    v80 = &v126;
    v126 = MEMORY[0x277D82BE0](*(v90 + 4));
    dispatch_async(queue, &v121);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v126, 0);
    v120 = 1;
  }

  else
  {
    v76 = +[SUUILoggingContext statefulUILogger];
    v119 = [v76 oslog];
    MEMORY[0x277D82BD8](v76);
    v118 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v67 = v119;
      *v68 = v118;
      v69 = v131[0];
      v4 = objc_opt_class();
      v70 = NSStringFromClass(v4);
      v71 = MEMORY[0x277D82BE0](v70);
      v117 = v71;
      v72 = SUUIStatefulUIStateToString(*(v131[0] + 5));
      v73 = MEMORY[0x277D82BE0](v72);
      v116 = v73;
      v74 = [v131[0] currentState];
      v75 = [v131[0] delegate];
      v114 = 0;
      v112 = 0;
      if (v75)
      {
        v115 = [v131[0] delegate];
        v65 = 1;
        v114 = 1;
        v5 = objc_opt_class();
        v113 = NSStringFromClass(v5);
        v112 = 1;
        v66 = v113;
      }

      else
      {
        v66 = @"(null)";
      }

      v59 = v66;
      v60 = [v131[0] delegate];
      v61 = [v131[0] scanError];
      v62 = [v131[0] preferredStatefulDescriptor];
      v63 = [v131[0] alternateStatefulDescriptor];
      v64 = [v131[0] currentDownload];
      v110 = 0;
      v108 = 0;
      v106 = 0;
      if (v64)
      {
        v111 = [v131[0] currentDownload];
        v57 = 1;
        v110 = 1;
        v109 = [v111 descriptor];
        v108 = 1;
        v107 = [v109 updateName];
        v106 = 1;
        v58 = v107;
      }

      else
      {
        v58 = @"(null)";
      }

      v34 = v58;
      v35 = [v131[0] currentDownload];
      v36 = SUUIUpdateContinuousOperationTypeToString([v131[0] currentUpdateOperationType]);
      v37 = MEMORY[0x277D82BE0](v36);
      v105 = v37;
      v137 = [v131[0] isTargetedUpdateScheduledForAutoInstall];
      v47 = @"NO";
      v48 = @"YES";
      v55 = 1;
      if (v137)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v38 = v6;
      v7 = v6;
      v39 = v38;
      v40 = MEMORY[0x277D82BE0](v39);
      v104 = v40;
      v136 = [v131[0] hidingPreferredDescriptor];
      if (v136)
      {
        v8 = v48;
      }

      else
      {
        v8 = v47;
      }

      v41 = v8;
      v9 = v8;
      v42 = v41;
      v43 = MEMORY[0x277D82BE0](v42);
      v103 = v43;
      v44 = [v131[0] hiddenPreferredStatefulDescriptor];
      v45 = [v44 updateName];
      v46 = MEMORY[0x277D82BE0](v45);
      v102 = v46;
      v135 = [v131[0] hidingAlternateDescriptor];
      if (v135)
      {
        v10 = v48;
      }

      else
      {
        v10 = v47;
      }

      v49 = v10;
      v11 = v10;
      v50 = v49;
      v51 = MEMORY[0x277D82BE0](v50);
      v101 = v51;
      v52 = [v131[0] hiddenAlternateStatefulDescriptor];
      v53 = [v52 updateName];
      v54 = MEMORY[0x277D82BE0](v53);
      v100 = v54;
      v56 = [v131[0] enrolledBetaProgram];
      v98 = 0;
      if (v56)
      {
        v99 = [v131[0] enrolledBetaProgram];
        v98 = 1;
        v33 = [v99 programID];
      }

      else
      {
        v33 = 0;
      }

      v24 = v33;
      v25 = [*(v131[0] + 15) count];
      v134 = [v131[0] canEnrollInBetaUpdates];
      if (v134)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v23 = v12;
      v13 = v12;
      v32 = v23;
      v26 = MEMORY[0x277D82BE0](v32);
      v97 = v26;
      v27 = *(v131[0] + 21);
      v28 = *(v131[0] + 22);
      v29 = *(v131[0] + 23);
      v14 = [*(v131[0] + 24) count];
      v30 = &v15;
      v31 = v138;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v138, v88, v69, v71, v73, v74, v59, v60, v61, v62, v63, v34, v35, v37, v40, v43, v46, v51, v54, v24, v25, v26, v27, v28, v29, v14, location[0], v132);
      _os_log_impl(&dword_26ADE5000, v67, v68[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPurge result for unenrollment: %{public}@; error: %{public}@", v31, 0x110u);
      MEMORY[0x277D82BD8](v32);
      if (v98)
      {
        MEMORY[0x277D82BD8](v99);
      }

      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v35);
      if (v106)
      {
        MEMORY[0x277D82BD8](v107);
      }

      if (v108)
      {
        MEMORY[0x277D82BD8](v109);
      }

      if (v110)
      {
        MEMORY[0x277D82BD8](v111);
      }

      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v60);
      if (v112)
      {
        MEMORY[0x277D82BD8](v113);
      }

      if (v114)
      {
        MEMORY[0x277D82BD8](v115);
      }

      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v70);
      v22 = 0;
      objc_storeStrong(&v97, 0);
      objc_storeStrong(&v100, v22);
      objc_storeStrong(&v101, v22);
      objc_storeStrong(&v102, v22);
      objc_storeStrong(&v103, v22);
      objc_storeStrong(&v104, v22);
      objc_storeStrong(&v105, v22);
      objc_storeStrong(&v116, v22);
      objc_storeStrong(&v117, v22);
    }

    objc_storeStrong(&v119, 0);
    if (location[0])
    {
      [v131[0] doUnenrollFromBetaUpdates:*(*(v90 + 5) + 8) + 24 completionHandler:*(v90 + 4)];
      v120 = 0;
    }

    else
    {
      if (*(*(*(v90 + 5) + 8) + 24))
      {
        if (*(*(*(*(v90 + 5) + 8) + 24) + 24))
        {
          os_activity_scope_leave(*(*(*(v90 + 5) + 8) + 24));
        }

        free(*(*(*(v90 + 5) + 8) + 24));
        *(*(*(v90 + 5) + 8) + 24) = 0;
      }

      v20 = [MEMORY[0x277D643F8] sharedCore];
      v19 = [v131[0] delegateCallbackQueue];
      v18 = [v20 selectDelegateCallbackQueue:?];
      v17 = &v91;
      v91 = MEMORY[0x277D85DD0];
      v92 = -1073741824;
      v93 = 0;
      v94 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_505;
      v95 = &unk_279CC61E0;
      v21 = &v96;
      v96 = MEMORY[0x277D82BE0](*(v90 + 4));
      dispatch_async(v18, v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      v120 = 1;
      objc_storeStrong(v21, 0);
    }
  }

  objc_storeStrong(v131, 0);
  if (!v120)
  {
    v120 = 0;
  }

  v16 = 0;
  objc_storeStrong(&v132, 0);
  objc_storeStrong(location, v16);
  *MEMORY[0x277D85DE8];
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_504(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_505(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (int64_t)fsmAction_CheckForAvailableUpdate:(id)a3 error:(id *)a4
{
  v205 = &v223;
  v203 = a4;
  v202 = "[SUUIStatefulUIManager fsmAction_CheckForAvailableUpdate:error:]";
  v263 = *MEMORY[0x277D85DE8];
  v252 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v250[1] = v203;
  v204 = [(SUCoreFSM *)v252->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v204);
  MEMORY[0x277D82BD8](v204);
  v250[0] = [(SUUIStatefulUIManager *)v252 currentRefreshScanOperation];
  if (v250[0])
  {
    v201 = +[SUUILoggingContext statefulUILogger];
    v4 = [v201 oslog];
    v5 = v201;
    *(v205 + 34) = v4;
    MEMORY[0x277D82BD8](v5);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v205 + 34), OS_LOG_TYPE_DEFAULT))
    {
      log = *(v205 + 34);
      *v193 = type;
      v194 = *(v205 + 39);
      v6 = *(v205 + 39);
      v7 = objc_opt_class();
      v195 = NSStringFromClass(v7);
      v8 = MEMORY[0x277D82BE0](v195);
      v9 = v205;
      v196 = v8;
      *(v205 + 32) = v8;
      v197 = SUUIStatefulUIStateToString(*(*(v9 + 39) + 40));
      v10 = MEMORY[0x277D82BE0](v197);
      v11 = v205;
      v198 = v10;
      *(v205 + 31) = v10;
      v199 = [v11[39] currentState];
      v200 = [*(v205 + 39) delegate];
      v245 = 0;
      v244 = 0;
      if (v200)
      {
        *(v205 + 30) = [*(v205 + 39) delegate];
        v190 = 1;
        v245 = 1;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *(v205 + 28) = v13;
        v244 = 1;
        v191 = v13;
      }

      else
      {
        v191 = @"(null)";
      }

      v184 = v191;
      v185 = [*(v205 + 39) delegate];
      v186 = [*(v205 + 39) scanError];
      v187 = [*(v205 + 39) preferredStatefulDescriptor];
      v188 = [*(v205 + 39) alternateStatefulDescriptor];
      v189 = [*(v205 + 39) currentDownload];
      v243 = 0;
      v242 = 0;
      v241 = 0;
      if (v189)
      {
        v14 = [*(v205 + 39) currentDownload];
        *(v205 + 26) = v14;
        v182 = 1;
        v243 = 1;
        v15 = [v14 descriptor];
        *(v205 + 24) = v15;
        v242 = 1;
        v16 = [v15 updateName];
        v17 = v182;
        *(v205 + 22) = v16;
        v241 = v17 & 1;
        v183 = v16;
      }

      else
      {
        v183 = @"(null)";
      }

      v159 = v183;
      v160 = [*(v205 + 39) currentDownload];
      v161 = SUUIUpdateContinuousOperationTypeToString([*(v205 + 39) currentUpdateOperationType]);
      v18 = MEMORY[0x277D82BE0](v161);
      v19 = v205;
      v162 = v18;
      *(v205 + 20) = v18;
      v260 = [v19[39] isTargetedUpdateScheduledForAutoInstall];
      v172 = @"NO";
      v173 = @"YES";
      v180 = 1;
      if (v260)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v163 = v20;
      v21 = v20;
      v164 = v163;
      v22 = MEMORY[0x277D82BE0](v164);
      v23 = v205;
      v165 = v22;
      *(v205 + 19) = v22;
      v259 = [v23[39] hidingPreferredDescriptor];
      if (v259)
      {
        v24 = v173;
      }

      else
      {
        v24 = v172;
      }

      v166 = v24;
      v25 = v24;
      v167 = v166;
      v26 = MEMORY[0x277D82BE0](v167);
      v27 = v205;
      v168 = v26;
      *(v205 + 18) = v26;
      v169 = [v27[39] hiddenPreferredStatefulDescriptor];
      v170 = [v169 updateName];
      v28 = MEMORY[0x277D82BE0](v170);
      v29 = v205;
      v171 = v28;
      *(v205 + 17) = v28;
      v258 = [v29[39] hidingAlternateDescriptor];
      if (v258)
      {
        v30 = v173;
      }

      else
      {
        v30 = v172;
      }

      v174 = v30;
      v31 = v30;
      v175 = v174;
      v32 = MEMORY[0x277D82BE0](v175);
      v33 = v205;
      v176 = v32;
      *(v205 + 16) = v32;
      v177 = [v33[39] hiddenAlternateStatefulDescriptor];
      v178 = [v177 updateName];
      v34 = MEMORY[0x277D82BE0](v178);
      v35 = v205;
      v179 = v34;
      *(v205 + 15) = v34;
      v181 = [v35[39] enrolledBetaProgram];
      v234 = 0;
      if (v181)
      {
        v36 = [*(v205 + 39) enrolledBetaProgram];
        *(v205 + 14) = v36;
        v234 = 1;
        v158 = [v36 programID];
      }

      else
      {
        v158 = 0;
      }

      v37 = v168;
      v38 = v165;
      v39 = v162;
      v40 = v160;
      v41 = v159;
      v42 = v188;
      v43 = v187;
      v44 = v186;
      v149 = v158;
      v150 = [*(*(v205 + 39) + 120) count];
      v257 = [*(v205 + 39) canEnrollInBetaUpdates];
      if (v257)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v148 = v45;
      v46 = v45;
      v157 = v148;
      v47 = MEMORY[0x277D82BE0](v157);
      v48 = v205;
      v151 = v47;
      *(v205 + 12) = v47;
      v152 = *(*(v48 + 39) + 168);
      v153 = *(*(v48 + 39) + 176);
      v154 = *(*(v48 + 39) + 184);
      v49 = [*(*(v48 + 39) + 192) count];
      v155 = &v85;
      buf = v262;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v262, v202, v194, v196, v198, v199, v184, v185, v44, v43, v42, v41, v40, v39, v38, v37, v171, v176, v179, v149, v150, v151, v152, v153, v154, v49);
      _os_log_impl(&dword_26ADE5000, log, v193[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v157);
      if (v234)
      {
        MEMORY[0x277D82BD8](*(v205 + 14));
      }

      MEMORY[0x277D82BD8](v181);
      MEMORY[0x277D82BD8](v178);
      MEMORY[0x277D82BD8](v177);
      MEMORY[0x277D82BD8](v175);
      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v167);
      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](v161);
      MEMORY[0x277D82BD8](v160);
      if (v241)
      {
        MEMORY[0x277D82BD8](*(v205 + 22));
      }

      if (v242)
      {
        MEMORY[0x277D82BD8](*(v205 + 24));
      }

      if (v243)
      {
        MEMORY[0x277D82BD8](*(v205 + 26));
      }

      MEMORY[0x277D82BD8](v189);
      MEMORY[0x277D82BD8](v188);
      MEMORY[0x277D82BD8](v187);
      MEMORY[0x277D82BD8](v186);
      MEMORY[0x277D82BD8](v185);
      if (v244)
      {
        MEMORY[0x277D82BD8](*(v205 + 28));
      }

      if (v245)
      {
        MEMORY[0x277D82BD8](*(v205 + 30));
      }

      MEMORY[0x277D82BD8](v200);
      MEMORY[0x277D82BD8](v197);
      MEMORY[0x277D82BD8](v195);
      obj = 0;
      objc_storeStrong(&v233, 0);
      objc_storeStrong(&v235, obj);
      objc_storeStrong(&v236, obj);
      objc_storeStrong(&v237, obj);
      objc_storeStrong(&v238, obj);
      objc_storeStrong(&v239, obj);
      objc_storeStrong(&v240, obj);
      objc_storeStrong(&v246, obj);
      objc_storeStrong(&v247, obj);
    }

    objc_storeStrong(&v249, 0);
    v50 = v205;
    v145 = *(v205 + 35);
    v144 = &v229;
    *(v205 + 7) = MEMORY[0x277D85DD0];
    v230 = -1073741824;
    v231 = 0;
    *(v50 + 9) = __65__SUUIStatefulUIManager_fsmAction_CheckForAvailableUpdate_error___block_invoke;
    *(v50 + 10) = &unk_279CC6AB8;
    v146 = &v232;
    v51 = MEMORY[0x277D82BE0](*(v50 + 39));
    v52 = v144;
    v53 = v51;
    v54 = v145;
    *(v205 + 11) = v53;
    [v54 cancel:v52];
    objc_storeStrong(v146, 0);
  }

  v143 = [*(v205 + 39) currentFullScanOperation];
  MEMORY[0x277D82BD8](v143);
  if (v143)
  {
    v142 = +[SUUILoggingContext statefulUILogger];
    v55 = [v142 oslog];
    v56 = v142;
    *(v205 + 6) = v55;
    MEMORY[0x277D82BD8](v56);
    v227 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v205 + 6), OS_LOG_TYPE_DEFAULT))
    {
      v133 = *(v205 + 6);
      *v134 = v227;
      v135 = *(v205 + 39);
      v57 = *(v205 + 39);
      v58 = objc_opt_class();
      v136 = NSStringFromClass(v58);
      v59 = MEMORY[0x277D82BE0](v136);
      v60 = v205;
      v137 = v59;
      *(v205 + 4) = v59;
      v138 = SUUIStatefulUIStateToString(*(*(v60 + 39) + 40));
      v61 = MEMORY[0x277D82BE0](v138);
      v62 = v205;
      v139 = v61;
      *(v205 + 3) = v61;
      v140 = [v62[39] currentState];
      v141 = [*(v205 + 39) delegate];
      v224 = 0;
      v222 = 0;
      if (v141)
      {
        v63 = [*(v205 + 39) delegate];
        *(v205 + 2) = v63;
        v131 = 1;
        v224 = 1;
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        v66 = v131;
        *v205 = v65;
        v222 = v66 & 1;
        v132 = v65;
      }

      else
      {
        v132 = @"(null)";
      }

      v125 = v132;
      v126 = [*(v205 + 39) delegate];
      v127 = [*(v205 + 39) scanError];
      v128 = [*(v205 + 39) preferredStatefulDescriptor];
      v129 = [*(v205 + 39) alternateStatefulDescriptor];
      v130 = [*(v205 + 39) currentDownload];
      v220 = 0;
      v218 = 0;
      v216 = 0;
      if (v130)
      {
        v221 = [*(v205 + 39) currentDownload];
        v123 = 1;
        v220 = 1;
        v219 = [v221 descriptor];
        v218 = v123 & 1;
        v217 = [v219 updateName];
        v216 = v123 & 1;
        v124 = v217;
      }

      else
      {
        v124 = @"(null)";
      }

      v100 = v124;
      v101 = [*(v205 + 39) currentDownload];
      v102 = SUUIUpdateContinuousOperationTypeToString([*(v205 + 39) currentUpdateOperationType]);
      v103 = MEMORY[0x277D82BE0](v102);
      v215 = v103;
      v256 = [*(v205 + 39) isTargetedUpdateScheduledForAutoInstall];
      v113 = @"NO";
      v114 = @"YES";
      v121 = 1;
      if (v256)
      {
        v67 = @"YES";
      }

      else
      {
        v67 = @"NO";
      }

      v104 = v67;
      v68 = v67;
      v105 = v104;
      v106 = MEMORY[0x277D82BE0](v105);
      v214 = v106;
      v255 = [*(v205 + 39) hidingPreferredDescriptor];
      if (v255)
      {
        v69 = v114;
      }

      else
      {
        v69 = v113;
      }

      v107 = v69;
      v70 = v69;
      v108 = v107;
      v109 = MEMORY[0x277D82BE0](v108);
      v213 = v109;
      v110 = [*(v205 + 39) hiddenPreferredStatefulDescriptor];
      v111 = [v110 updateName];
      v112 = MEMORY[0x277D82BE0](v111);
      v212 = v112;
      v254 = [*(v205 + 39) hidingAlternateDescriptor];
      if (v254)
      {
        v71 = v114;
      }

      else
      {
        v71 = v113;
      }

      v115 = v71;
      v72 = v71;
      v116 = v115;
      v117 = MEMORY[0x277D82BE0](v116);
      v211 = v117;
      v118 = [*(v205 + 39) hiddenAlternateStatefulDescriptor];
      v119 = [v118 updateName];
      v120 = MEMORY[0x277D82BE0](v119);
      v210 = v120;
      v122 = [*(v205 + 39) enrolledBetaProgram];
      v208 = 0;
      if (v122)
      {
        v209 = [*(v205 + 39) enrolledBetaProgram];
        v208 = 1;
        v99 = [v209 programID];
      }

      else
      {
        v99 = 0;
      }

      v73 = v109;
      v74 = v106;
      v75 = v103;
      v76 = v101;
      v77 = v100;
      v78 = v129;
      v79 = v128;
      v80 = v127;
      v90 = v99;
      v91 = [*(*(v205 + 39) + 120) count];
      v253 = [*(v205 + 39) canEnrollInBetaUpdates];
      if (v253)
      {
        v81 = @"YES";
      }

      else
      {
        v81 = @"NO";
      }

      v89 = v81;
      v82 = v81;
      v98 = v89;
      v92 = MEMORY[0x277D82BE0](v98);
      v207 = v92;
      v93 = *(*(v205 + 39) + 168);
      v94 = *(*(v205 + 39) + 176);
      v95 = *(*(v205 + 39) + 184);
      v83 = [*(*(v205 + 39) + 192) count];
      v96 = &v85;
      v97 = v261;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v261, v202, v135, v137, v139, v140, v125, v126, v80, v79, v78, v77, v76, v75, v74, v73, v112, v117, v120, v90, v91, v92, v93, v94, v95, v83);
      _os_log_impl(&dword_26ADE5000, v133, v134[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v97, 0xFCu);
      MEMORY[0x277D82BD8](v98);
      if (v208)
      {
        MEMORY[0x277D82BD8](v209);
      }

      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v111);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v101);
      if (v216)
      {
        MEMORY[0x277D82BD8](v217);
      }

      if (v218)
      {
        MEMORY[0x277D82BD8](v219);
      }

      if (v220)
      {
        MEMORY[0x277D82BD8](v221);
      }

      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v129);
      MEMORY[0x277D82BD8](v128);
      MEMORY[0x277D82BD8](v127);
      MEMORY[0x277D82BD8](v126);
      if (v222)
      {
        MEMORY[0x277D82BD8](*v205);
      }

      if (v224)
      {
        MEMORY[0x277D82BD8](*(v205 + 2));
      }

      MEMORY[0x277D82BD8](v141);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v136);
      v88 = 0;
      objc_storeStrong(&v207, 0);
      objc_storeStrong(&v210, v88);
      objc_storeStrong(&v211, v88);
      objc_storeStrong(&v212, v88);
      objc_storeStrong(&v213, v88);
      objc_storeStrong(&v214, v88);
      objc_storeStrong(&v215, v88);
      objc_storeStrong(&v225, v88);
      objc_storeStrong(&v226, v88);
    }

    objc_storeStrong(&v228, 0);
    *(v205 + 40) = 0;
    v206 = 1;
  }

  else
  {
    [*(v205 + 39) performFullScan:*(v205 + 37)];
    *(v205 + 40) = 0;
    v206 = 1;
  }

  v86 = 0;
  objc_storeStrong(v250, 0);
  objc_storeStrong(location, v86);
  v87 = *(v205 + 40);
  *MEMORY[0x277D85DE8];
  return v87;
}

- (int64_t)fsmAction_ReportUpdatesAvailable:(id)a3 error:(id *)a4
{
  v138 = a4;
  v139 = "[SUUIStatefulUIManager fsmAction_ReportUpdatesAvailable:error:]";
  v182 = *MEMORY[0x277D85DE8];
  val = self;
  v175 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = v138;
  v137 = [*(val + 25) extendedStateQueue];
  v136 = v137;
  dispatch_assert_queue_V2(v136);
  MEMORY[0x277D82BD8](v136);
  v135 = +[SUUILoggingContext statefulUILogger];
  v133 = v135;
  v134 = [v133 oslog];
  oslog[0] = v134;
  MEMORY[0x277D82BD8](v133);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v130 = type;
    v131 = val;
    aClass = objc_opt_class();
    v128 = NSStringFromClass(aClass);
    v125 = v128;
    v126 = MEMORY[0x277D82BE0](v125);
    v171 = v126;
    v127 = SUUIStatefulUIStateToString(*(val + 5));
    v122 = v127;
    v123 = MEMORY[0x277D82BE0](v122);
    v170 = v123;
    v124 = [val currentState];
    v121 = [val delegate];
    v120 = v121;
    v168 = 0;
    v166 = 0;
    if (v120)
    {
      v119 = [val delegate];
      v169 = v119;
      v168 = 1;
      v118 = objc_opt_class();
      v117 = NSStringFromClass(v118);
      v167 = v117;
      v166 = 1;
      v116 = v167;
    }

    else
    {
      v116 = @"(null)";
    }

    v114 = v116;
    v115 = [val delegate];
    v112 = v115;
    v113 = [val scanError];
    v110 = v113;
    v111 = [val preferredStatefulDescriptor];
    v108 = v111;
    v109 = [val alternateStatefulDescriptor];
    v106 = v109;
    v107 = [val currentDownload];
    v105 = v107;
    v164 = 0;
    v162 = 0;
    v160 = 0;
    if (v105)
    {
      v104 = [val currentDownload];
      v165 = v104;
      v164 = 1;
      v103 = [v165 descriptor];
      v163 = v103;
      v162 = 1;
      v102 = [v163 updateName];
      v161 = v102;
      v160 = 1;
      v101 = v161;
    }

    else
    {
      v101 = @"(null)";
    }

    v99 = v101;
    v100 = [val currentDownload];
    v97 = v100;
    v98 = [val currentUpdateOperationType];
    v96 = SUUIUpdateContinuousOperationTypeToString(v98);
    v93 = v96;
    v94 = MEMORY[0x277D82BE0](v93);
    v159 = v94;
    v95 = [val isTargetedUpdateScheduledForAutoInstall];
    v180 = v95;
    if (v95)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v92 = v4;
    v5 = v4;
    v89 = v92;
    v90 = MEMORY[0x277D82BE0](v89);
    v158 = v90;
    v91 = [val hidingPreferredDescriptor];
    v179 = v91;
    if (v91)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v88 = v6;
    v7 = v6;
    v85 = v88;
    v86 = MEMORY[0x277D82BE0](v85);
    v157 = v86;
    v87 = [val hiddenPreferredStatefulDescriptor];
    v83 = v87;
    v84 = [v83 updateName];
    v80 = v84;
    v81 = MEMORY[0x277D82BE0](v80);
    v156 = v81;
    v82 = [val hidingAlternateDescriptor];
    v178 = v82;
    if (v82)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v79 = v8;
    v9 = v8;
    v76 = v79;
    v77 = MEMORY[0x277D82BE0](v76);
    v155 = v77;
    v78 = [val hiddenAlternateStatefulDescriptor];
    v74 = v78;
    v75 = [v74 updateName];
    v71 = v75;
    v72 = MEMORY[0x277D82BE0](v71);
    v154 = v72;
    v73 = [val enrolledBetaProgram];
    v70 = v73;
    v152 = 0;
    if (v70)
    {
      v69 = [val enrolledBetaProgram];
      v153 = v69;
      v152 = 1;
      v68 = [v153 programID];
      v67 = v68;
    }

    else
    {
      v67 = 0;
    }

    v65 = v67;
    v66 = [*(val + 15) count];
    v64 = [val canEnrollInBetaUpdates];
    v177 = v64;
    if (v64)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v63 = v10;
    v11 = v10;
    v57 = v63;
    v58 = MEMORY[0x277D82BE0](v57);
    v151 = v58;
    v59 = *(val + 21);
    v60 = *(val + 22);
    v61 = *(val + 23);
    v62 = [*(val + 24) count];
    v56 = [location fullScanResults];
    v54 = v56;
    v55 = [v54 preferredDescriptor];
    v52 = v55;
    v53 = [v52 updateName];
    v49 = v53;
    v50 = MEMORY[0x277D82BE0](v49);
    v150 = v50;
    v51 = [location fullScanResults];
    v47 = v51;
    v48 = [v47 preferredDescriptor];
    v45 = v48;
    v46 = [location fullScanResults];
    v43 = v46;
    v44 = [v43 alternateDescriptor];
    v41 = v44;
    v42 = [v41 updateName];
    v38 = v42;
    v39 = MEMORY[0x277D82BE0](v38);
    v149 = v39;
    v40 = [location fullScanResults];
    v36 = v40;
    v37 = [v36 alternateDescriptor];
    v35 = v37;
    v33 = &v13;
    buf = v181;
    __os_log_helper_16_2_29_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66_8_0(v181, v139, v131, v126, v123, v124, v114, v112, v110, v108, v106, v99, v97, v94, v90, v86, v81, v77, v72, v65, v66, v58, v59, v60, v61, v62, v50, v45, v39, v35);
    _os_log_impl(&dword_26ADE5000, log, v130[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nReporting on available updates:\n\tPreferred update: %{public}@ (%p)\n\tAlternate update: %{public}@ (%p)", buf, 0x124u);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v57);
    if (v152)
    {
      MEMORY[0x277D82BD8](v153);
    }

    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v97);
    if (v160)
    {
      MEMORY[0x277D82BD8](v161);
    }

    if (v162)
    {
      MEMORY[0x277D82BD8](v163);
    }

    if (v164)
    {
      MEMORY[0x277D82BD8](v165);
    }

    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v112);
    if (v166)
    {
      MEMORY[0x277D82BD8](v167);
    }

    if (v168)
    {
      MEMORY[0x277D82BD8](v169);
    }

    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v125);
    objc_storeStrong(&v149, 0);
    objc_storeStrong(&v150, 0);
    objc_storeStrong(&v151, 0);
    objc_storeStrong(&v154, 0);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(&v156, 0);
    objc_storeStrong(&v157, 0);
    objc_storeStrong(&v158, 0);
    objc_storeStrong(&v159, 0);
    objc_storeStrong(&v170, 0);
    objc_storeStrong(&v171, 0);
  }

  objc_storeStrong(oslog, 0);
  [val setCurrentFullScanOperation:0];
  [val setCurrentRefreshScanOperation:0];
  v31 = val;
  v32 = [location fullScanResults];
  v29 = v32;
  v30 = [location error];
  v28 = v30;
  [v31 notifyFullScanResultsDelegates:v29 andError:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v27 = [val delegate];
  v26 = v27;
  objc_initWeak(&v148, v26);
  MEMORY[0x277D82BD8](v26);
  v25 = objc_loadWeakRetained(&v148);
  MEMORY[0x277D82BD8](v25);
  if (v25)
  {
    v24 = objc_loadWeakRetained(&v148);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v24);
    if (v23)
    {
      objc_initWeak(&from, val);
      v22 = [MEMORY[0x277D643F8] sharedCore];
      v20 = v22;
      v21 = [val delegateCallbackQueue];
      v18 = v21;
      v19 = [v20 selectDelegateCallbackQueue:?];
      queue = v19;
      v140 = MEMORY[0x277D85DD0];
      v141 = -1073741824;
      v142 = 0;
      v143 = __64__SUUIStatefulUIManager_fsmAction_ReportUpdatesAvailable_error___block_invoke;
      v144 = &unk_279CC6368;
      v17 = v146;
      objc_copyWeak(v146, &from);
      block = &v140;
      v146[1] = v175;
      v14 = &v145;
      v145 = MEMORY[0x277D82BE0](location);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(v14, 0);
      objc_destroyWeak(v17);
      objc_destroyWeak(&from);
    }
  }

  objc_destroyWeak(&v148);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return 0;
}

void __64__SUUIStatefulUIManager_fsmAction_ReportUpdatesAvailable_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v13[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 48));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager fsmAction_ReportUpdatesAvailable:error:]_block_invoke", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = [v13[0] delegate];
    v1 = v13[0];
    v2 = [*(a1 + 32) fullScanResults];
    [v3 statefulUIManager:v1 didFinishScanningForUpdatesWithResults:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(v13, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_ReportNoUpdateFound:(id)a3 error:(id *)a4
{
  v116 = a4;
  v117 = "[SUUIStatefulUIManager fsmAction_ReportNoUpdateFound:error:]";
  v158 = *MEMORY[0x277D85DE8];
  val = self;
  v151 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = v116;
  v115 = [*(val + 25) extendedStateQueue];
  v114 = v115;
  dispatch_assert_queue_V2(v114);
  MEMORY[0x277D82BD8](v114);
  v113 = +[SUUILoggingContext statefulUILogger];
  v111 = v113;
  v112 = [v111 oslog];
  oslog[0] = v112;
  MEMORY[0x277D82BD8](v111);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v108 = type;
    v109 = val;
    aClass = objc_opt_class();
    v106 = NSStringFromClass(aClass);
    v103 = v106;
    v104 = MEMORY[0x277D82BE0](v103);
    v147 = v104;
    v105 = SUUIStatefulUIStateToString(*(val + 5));
    v100 = v105;
    v101 = MEMORY[0x277D82BE0](v100);
    v146 = v101;
    v102 = [val currentState];
    v99 = [val delegate];
    v98 = v99;
    v144 = 0;
    v142 = 0;
    if (v98)
    {
      v97 = [val delegate];
      v145 = v97;
      v144 = 1;
      v96 = objc_opt_class();
      v95 = NSStringFromClass(v96);
      v143 = v95;
      v142 = 1;
      v94 = v143;
    }

    else
    {
      v94 = @"(null)";
    }

    v92 = v94;
    v93 = [val delegate];
    v90 = v93;
    v91 = [val scanError];
    v88 = v91;
    v89 = [val preferredStatefulDescriptor];
    v86 = v89;
    v87 = [val alternateStatefulDescriptor];
    v84 = v87;
    v85 = [val currentDownload];
    v83 = v85;
    v140 = 0;
    v138 = 0;
    v136 = 0;
    if (v83)
    {
      v82 = [val currentDownload];
      v141 = v82;
      v140 = 1;
      v81 = [v141 descriptor];
      v139 = v81;
      v138 = 1;
      v80 = [v139 updateName];
      v137 = v80;
      v136 = 1;
      v79 = v137;
    }

    else
    {
      v79 = @"(null)";
    }

    v77 = v79;
    v78 = [val currentDownload];
    v75 = v78;
    v76 = [val currentUpdateOperationType];
    v74 = SUUIUpdateContinuousOperationTypeToString(v76);
    v71 = v74;
    v72 = MEMORY[0x277D82BE0](v71);
    v135 = v72;
    v73 = [val isTargetedUpdateScheduledForAutoInstall];
    v156 = v73;
    if (v73)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v70 = v4;
    v5 = v4;
    v67 = v70;
    v68 = MEMORY[0x277D82BE0](v67);
    v134 = v68;
    v69 = [val hidingPreferredDescriptor];
    v155 = v69;
    if (v69)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v66 = v6;
    v7 = v6;
    v63 = v66;
    v64 = MEMORY[0x277D82BE0](v63);
    v133 = v64;
    v65 = [val hiddenPreferredStatefulDescriptor];
    v61 = v65;
    v62 = [v61 updateName];
    v58 = v62;
    v59 = MEMORY[0x277D82BE0](v58);
    v132 = v59;
    v60 = [val hidingAlternateDescriptor];
    v154 = v60;
    if (v60)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v57 = v8;
    v9 = v8;
    v54 = v57;
    v55 = MEMORY[0x277D82BE0](v54);
    v131 = v55;
    v56 = [val hiddenAlternateStatefulDescriptor];
    v52 = v56;
    v53 = [v52 updateName];
    v49 = v53;
    v50 = MEMORY[0x277D82BE0](v49);
    v130 = v50;
    v51 = [val enrolledBetaProgram];
    v48 = v51;
    v128 = 0;
    if (v48)
    {
      v47 = [val enrolledBetaProgram];
      v129 = v47;
      v128 = 1;
      v46 = [v129 programID];
      v45 = v46;
    }

    else
    {
      v45 = 0;
    }

    v43 = v45;
    v44 = [*(val + 15) count];
    v42 = [val canEnrollInBetaUpdates];
    v153 = v42;
    if (v42)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v41 = v10;
    v11 = v10;
    v35 = v41;
    v36 = MEMORY[0x277D82BE0](v35);
    v127 = v36;
    v37 = *(val + 21);
    v38 = *(val + 22);
    v39 = *(val + 23);
    v40 = [*(val + 24) count];
    v33 = &v13;
    buf = v157;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v157, v117, v109, v104, v101, v102, v92, v90, v88, v86, v84, v77, v75, v72, v68, v64, v59, v55, v50, v43, v44, v36, v37, v38, v39, v40);
    _os_log_impl(&dword_26ADE5000, log, v108[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v35);
    if (v128)
    {
      MEMORY[0x277D82BD8](v129);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v75);
    if (v136)
    {
      MEMORY[0x277D82BD8](v137);
    }

    if (v138)
    {
      MEMORY[0x277D82BD8](v139);
    }

    if (v140)
    {
      MEMORY[0x277D82BD8](v141);
    }

    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v90);
    if (v142)
    {
      MEMORY[0x277D82BD8](v143);
    }

    if (v144)
    {
      MEMORY[0x277D82BD8](v145);
    }

    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v103);
    objc_storeStrong(&v127, 0);
    objc_storeStrong(&v130, 0);
    objc_storeStrong(&v131, 0);
    objc_storeStrong(&v132, 0);
    objc_storeStrong(&v133, 0);
    objc_storeStrong(&v134, 0);
    objc_storeStrong(&v135, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
  }

  objc_storeStrong(oslog, 0);
  [val setCurrentFullScanOperation:0];
  [val setCurrentRefreshScanOperation:0];
  v31 = val;
  v32 = [location fullScanResults];
  v29 = v32;
  v30 = [location error];
  v28 = v30;
  [v31 notifyFullScanResultsDelegates:v29 andError:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v27 = [val delegate];
  v26 = v27;
  objc_initWeak(&v126, v26);
  MEMORY[0x277D82BD8](v26);
  v25 = objc_loadWeakRetained(&v126);
  MEMORY[0x277D82BD8](v25);
  if (v25)
  {
    v24 = objc_loadWeakRetained(&v126);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v24);
    if (v23)
    {
      objc_initWeak(&from, val);
      v22 = [MEMORY[0x277D643F8] sharedCore];
      v20 = v22;
      v21 = [val delegateCallbackQueue];
      v18 = v21;
      v19 = [v20 selectDelegateCallbackQueue:?];
      queue = v19;
      v118 = MEMORY[0x277D85DD0];
      v119 = -1073741824;
      v120 = 0;
      v121 = __61__SUUIStatefulUIManager_fsmAction_ReportNoUpdateFound_error___block_invoke;
      v122 = &unk_279CC6368;
      v17 = v124;
      objc_copyWeak(v124, &from);
      block = &v118;
      v124[1] = v151;
      v14 = &v123;
      v123 = MEMORY[0x277D82BE0](location);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(v14, 0);
      objc_destroyWeak(v17);
      objc_destroyWeak(&from);
    }
  }

  objc_destroyWeak(&v126);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return 0;
}

void __61__SUUIStatefulUIManager_fsmAction_ReportNoUpdateFound_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v13[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 48));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager fsmAction_ReportNoUpdateFound:error:]_block_invoke", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = [v13[0] delegate];
    v1 = v13[0];
    v2 = [*(a1 + 32) fullScanResults];
    [v3 statefulUIManager:v1 didFinishScanningForUpdatesWithResults:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(v13, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_ReportScanFailed:(id)a3 error:(id *)a4
{
  v116 = a4;
  v117 = "[SUUIStatefulUIManager fsmAction_ReportScanFailed:error:]";
  v158 = *MEMORY[0x277D85DE8];
  val = self;
  v151 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = v116;
  v115 = [*(val + 25) extendedStateQueue];
  v114 = v115;
  dispatch_assert_queue_V2(v114);
  MEMORY[0x277D82BD8](v114);
  v113 = +[SUUILoggingContext statefulUILogger];
  v111 = v113;
  v112 = [v111 oslog];
  oslog[0] = v112;
  MEMORY[0x277D82BD8](v111);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v108 = type;
    v109 = val;
    aClass = objc_opt_class();
    v106 = NSStringFromClass(aClass);
    v103 = v106;
    v104 = MEMORY[0x277D82BE0](v103);
    v147 = v104;
    v105 = SUUIStatefulUIStateToString(*(val + 5));
    v100 = v105;
    v101 = MEMORY[0x277D82BE0](v100);
    v146 = v101;
    v102 = [val currentState];
    v99 = [val delegate];
    v98 = v99;
    v144 = 0;
    v142 = 0;
    if (v98)
    {
      v97 = [val delegate];
      v145 = v97;
      v144 = 1;
      v96 = objc_opt_class();
      v95 = NSStringFromClass(v96);
      v143 = v95;
      v142 = 1;
      v94 = v143;
    }

    else
    {
      v94 = @"(null)";
    }

    v92 = v94;
    v93 = [val delegate];
    v90 = v93;
    v91 = [val scanError];
    v88 = v91;
    v89 = [val preferredStatefulDescriptor];
    v86 = v89;
    v87 = [val alternateStatefulDescriptor];
    v84 = v87;
    v85 = [val currentDownload];
    v83 = v85;
    v140 = 0;
    v138 = 0;
    v136 = 0;
    if (v83)
    {
      v82 = [val currentDownload];
      v141 = v82;
      v140 = 1;
      v81 = [v141 descriptor];
      v139 = v81;
      v138 = 1;
      v80 = [v139 updateName];
      v137 = v80;
      v136 = 1;
      v79 = v137;
    }

    else
    {
      v79 = @"(null)";
    }

    v77 = v79;
    v78 = [val currentDownload];
    v75 = v78;
    v76 = [val currentUpdateOperationType];
    v74 = SUUIUpdateContinuousOperationTypeToString(v76);
    v71 = v74;
    v72 = MEMORY[0x277D82BE0](v71);
    v135 = v72;
    v73 = [val isTargetedUpdateScheduledForAutoInstall];
    v156 = v73;
    if (v73)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v70 = v4;
    v5 = v4;
    v67 = v70;
    v68 = MEMORY[0x277D82BE0](v67);
    v134 = v68;
    v69 = [val hidingPreferredDescriptor];
    v155 = v69;
    if (v69)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v66 = v6;
    v7 = v6;
    v63 = v66;
    v64 = MEMORY[0x277D82BE0](v63);
    v133 = v64;
    v65 = [val hiddenPreferredStatefulDescriptor];
    v61 = v65;
    v62 = [v61 updateName];
    v58 = v62;
    v59 = MEMORY[0x277D82BE0](v58);
    v132 = v59;
    v60 = [val hidingAlternateDescriptor];
    v154 = v60;
    if (v60)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v57 = v8;
    v9 = v8;
    v54 = v57;
    v55 = MEMORY[0x277D82BE0](v54);
    v131 = v55;
    v56 = [val hiddenAlternateStatefulDescriptor];
    v52 = v56;
    v53 = [v52 updateName];
    v49 = v53;
    v50 = MEMORY[0x277D82BE0](v49);
    v130 = v50;
    v51 = [val enrolledBetaProgram];
    v48 = v51;
    v128 = 0;
    if (v48)
    {
      v47 = [val enrolledBetaProgram];
      v129 = v47;
      v128 = 1;
      v46 = [v129 programID];
      v45 = v46;
    }

    else
    {
      v45 = 0;
    }

    v43 = v45;
    v44 = [*(val + 15) count];
    v42 = [val canEnrollInBetaUpdates];
    v153 = v42;
    if (v42)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v41 = v10;
    v11 = v10;
    v35 = v41;
    v36 = MEMORY[0x277D82BE0](v35);
    v127 = v36;
    v37 = *(val + 21);
    v38 = *(val + 22);
    v39 = *(val + 23);
    v40 = [*(val + 24) count];
    v33 = &v13;
    buf = v157;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v157, v117, v109, v104, v101, v102, v92, v90, v88, v86, v84, v77, v75, v72, v68, v64, v59, v55, v50, v43, v44, v36, v37, v38, v39, v40);
    _os_log_impl(&dword_26ADE5000, log, v108[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v35);
    if (v128)
    {
      MEMORY[0x277D82BD8](v129);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v75);
    if (v136)
    {
      MEMORY[0x277D82BD8](v137);
    }

    if (v138)
    {
      MEMORY[0x277D82BD8](v139);
    }

    if (v140)
    {
      MEMORY[0x277D82BD8](v141);
    }

    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v90);
    if (v142)
    {
      MEMORY[0x277D82BD8](v143);
    }

    if (v144)
    {
      MEMORY[0x277D82BD8](v145);
    }

    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v103);
    objc_storeStrong(&v127, 0);
    objc_storeStrong(&v130, 0);
    objc_storeStrong(&v131, 0);
    objc_storeStrong(&v132, 0);
    objc_storeStrong(&v133, 0);
    objc_storeStrong(&v134, 0);
    objc_storeStrong(&v135, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
  }

  objc_storeStrong(oslog, 0);
  [val setCurrentFullScanOperation:0];
  [val setCurrentRefreshScanOperation:0];
  v31 = val;
  v32 = [location fullScanResults];
  v29 = v32;
  v30 = [location error];
  v28 = v30;
  [v31 notifyFullScanResultsDelegates:v29 andError:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v27 = [val delegate];
  v26 = v27;
  objc_initWeak(&v126, v26);
  MEMORY[0x277D82BD8](v26);
  v25 = objc_loadWeakRetained(&v126);
  MEMORY[0x277D82BD8](v25);
  if (v25)
  {
    v24 = objc_loadWeakRetained(&v126);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v24);
    if (v23)
    {
      objc_initWeak(&from, val);
      v22 = [MEMORY[0x277D643F8] sharedCore];
      v20 = v22;
      v21 = [val delegateCallbackQueue];
      v18 = v21;
      v19 = [v20 selectDelegateCallbackQueue:?];
      queue = v19;
      v118 = MEMORY[0x277D85DD0];
      v119 = -1073741824;
      v120 = 0;
      v121 = __58__SUUIStatefulUIManager_fsmAction_ReportScanFailed_error___block_invoke;
      v122 = &unk_279CC6368;
      v17 = v124;
      objc_copyWeak(v124, &from);
      block = &v118;
      v124[1] = v151;
      v14 = &v123;
      v123 = MEMORY[0x277D82BE0](location);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(v14, 0);
      objc_destroyWeak(v17);
      objc_destroyWeak(&from);
    }
  }

  objc_destroyWeak(&v126);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return 0;
}

void __58__SUUIStatefulUIManager_fsmAction_ReportScanFailed_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v14[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v13 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v4 = NSStringFromSelector(*(a1 + 48));
      v11 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUIStatefulUIManager fsmAction_ReportScanFailed:error:]_block_invoke", v11);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v10 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) error];
    v1 = [v14[0] delegate];
    [v1 statefulUIManager:v14[0] didFailToScanForUpdatesWithError:v8];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_RefreshScanResults:(id)a3 error:(id *)a4
{
  v140 = a4;
  v139 = "[SUUIStatefulUIManager fsmAction_RefreshScanResults:error:]";
  v203 = *MEMORY[0x277D85DE8];
  v191 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog[1] = v140;
  v141 = [(SUCoreFSM *)v191->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v141);
  MEMORY[0x277D82BD8](v141);
  v142 = [(SUUIStatefulUIManager *)v191 currentRefreshScanOperation];
  MEMORY[0x277D82BD8](v142);
  if (v142)
  {
    v138 = +[SUUILoggingContext statefulUILogger];
    oslog[0] = [v138 oslog];
    MEMORY[0x277D82BD8](v138);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v130 = type;
      v131 = v191;
      v4 = objc_opt_class();
      v132 = NSStringFromClass(v4);
      v133 = MEMORY[0x277D82BE0](v132);
      v187 = v133;
      v134 = SUUIStatefulUIStateToString(v191->_currentState);
      v135 = MEMORY[0x277D82BE0](v134);
      v186 = v135;
      v136 = [(SUUIStatefulUIManager *)v191 currentState];
      v137 = [(SUUIStatefulUIManager *)v191 delegate];
      v184 = 0;
      v182 = 0;
      if (v137)
      {
        v185 = [(SUUIStatefulUIManager *)v191 delegate];
        v127 = 1;
        v184 = 1;
        v5 = objc_opt_class();
        v183 = NSStringFromClass(v5);
        v182 = 1;
        v128 = v183;
      }

      else
      {
        v128 = @"(null)";
      }

      v121 = v128;
      v122 = [(SUUIStatefulUIManager *)v191 delegate];
      v123 = [(SUUIStatefulUIManager *)v191 scanError];
      v124 = [(SUUIStatefulUIManager *)v191 preferredStatefulDescriptor];
      v125 = [(SUUIStatefulUIManager *)v191 alternateStatefulDescriptor];
      v126 = [(SUUIStatefulUIManager *)v191 currentDownload];
      v180 = 0;
      v178 = 0;
      v176 = 0;
      if (v126)
      {
        v181 = [(SUUIStatefulUIManager *)v191 currentDownload];
        v119 = 1;
        v180 = 1;
        v179 = [(SUUIDownload *)v181 descriptor];
        v178 = 1;
        v177 = [v179 updateName];
        v176 = 1;
        v120 = v177;
      }

      else
      {
        v120 = @"(null)";
      }

      v96 = v120;
      v97 = [(SUUIStatefulUIManager *)v191 currentDownload];
      v98 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)v191 currentUpdateOperationType]);
      v99 = MEMORY[0x277D82BE0](v98);
      v175 = v99;
      v200 = [(SUUIStatefulUIManager *)v191 isTargetedUpdateScheduledForAutoInstall];
      v109 = @"NO";
      v110 = @"YES";
      v117 = 1;
      if (v200)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v100 = v6;
      v7 = v6;
      v101 = v100;
      v102 = MEMORY[0x277D82BE0](v101);
      v174 = v102;
      if ([(SUUIStatefulUIManager *)v191 hidingPreferredDescriptor])
      {
        v8 = v110;
      }

      else
      {
        v8 = v109;
      }

      v103 = v8;
      v9 = v8;
      v104 = v103;
      v105 = MEMORY[0x277D82BE0](v104);
      v173 = v105;
      v106 = [(SUUIStatefulUIManager *)v191 hiddenPreferredStatefulDescriptor];
      v107 = [(SUUIStatefulDescriptor *)v106 updateName];
      v108 = MEMORY[0x277D82BE0](v107);
      v172 = v108;
      if ([(SUUIStatefulUIManager *)v191 hidingAlternateDescriptor])
      {
        v10 = v110;
      }

      else
      {
        v10 = v109;
      }

      v111 = v10;
      v11 = v10;
      v112 = v111;
      v113 = MEMORY[0x277D82BE0](v112);
      v171 = v113;
      v114 = [(SUUIStatefulUIManager *)v191 hiddenAlternateStatefulDescriptor];
      v115 = [(SUUIStatefulDescriptor *)v114 updateName];
      v116 = MEMORY[0x277D82BE0](v115);
      v170 = v116;
      v118 = [(SUUIStatefulUIManager *)v191 enrolledBetaProgram];
      v168 = 0;
      if (v118)
      {
        v169 = [(SUUIStatefulUIManager *)v191 enrolledBetaProgram];
        v168 = 1;
        v95 = [(SDBetaProgram *)v169 programID];
      }

      else
      {
        v95 = 0;
      }

      v86 = v95;
      v87 = [(NSArray *)v191->_betaPrograms count];
      if ([(SUUIStatefulUIManager *)v191 canEnrollInBetaUpdates])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v85 = v12;
      v13 = v12;
      v94 = v85;
      v88 = MEMORY[0x277D82BE0](v94);
      v167 = v88;
      currentFullScanOperation = v191->_currentFullScanOperation;
      currentRefreshScanOperation = v191->_currentRefreshScanOperation;
      currentUpdateOperation = v191->_currentUpdateOperation;
      v14 = [(NSMutableSet *)v191->_auxiliaryOperations count];
      v92 = v27;
      buf = v202;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v202, v139, v131, v133, v135, v136, v121, v122, v123, v124, v125, v96, v97, v99, v102, v105, v108, v113, v116, v86, v87, v88, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v14);
      _os_log_impl(&dword_26ADE5000, log, v130[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is already running. Skipping on this refresh request. This should never happen.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v94);
      if (v168)
      {
        MEMORY[0x277D82BD8](v169);
      }

      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v97);
      if (v176)
      {
        MEMORY[0x277D82BD8](v177);
      }

      if (v178)
      {
        MEMORY[0x277D82BD8](v179);
      }

      if (v180)
      {
        MEMORY[0x277D82BD8](v181);
      }

      MEMORY[0x277D82BD8](v126);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v124);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v122);
      if (v182)
      {
        MEMORY[0x277D82BD8](v183);
      }

      if (v184)
      {
        MEMORY[0x277D82BD8](v185);
      }

      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v132);
      obj = 0;
      objc_storeStrong(&v167, 0);
      objc_storeStrong(&v170, obj);
      objc_storeStrong(&v171, obj);
      objc_storeStrong(&v172, obj);
      objc_storeStrong(&v173, obj);
      objc_storeStrong(&v174, obj);
      objc_storeStrong(&v175, obj);
      objc_storeStrong(&v186, obj);
      objc_storeStrong(&v187, obj);
    }

    objc_storeStrong(oslog, 0);
    v192 = 0;
    v166 = 1;
  }

  else
  {
    v83 = [(SUUIStatefulUIManager *)v191 currentFullScanOperation];
    MEMORY[0x277D82BD8](v83);
    if (v83)
    {
      v82 = +[SUUILoggingContext statefulUILogger];
      v165 = [v82 oslog];
      MEMORY[0x277D82BD8](v82);
      v164 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v165;
        *v74 = v164;
        v75 = v191;
        v15 = objc_opt_class();
        v76 = NSStringFromClass(v15);
        v77 = MEMORY[0x277D82BE0](v76);
        v163 = v77;
        v78 = SUUIStatefulUIStateToString(v191->_currentState);
        v79 = MEMORY[0x277D82BE0](v78);
        v162 = v79;
        v80 = [(SUUIStatefulUIManager *)v191 currentState];
        v81 = [(SUUIStatefulUIManager *)v191 delegate];
        v160 = 0;
        v158 = 0;
        if (v81)
        {
          v161 = [(SUUIStatefulUIManager *)v191 delegate];
          v71 = 1;
          v160 = 1;
          v16 = objc_opt_class();
          v159 = NSStringFromClass(v16);
          v158 = 1;
          v72 = v159;
        }

        else
        {
          v72 = @"(null)";
        }

        v65 = v72;
        v66 = [(SUUIStatefulUIManager *)v191 delegate];
        v67 = [(SUUIStatefulUIManager *)v191 scanError];
        v68 = [(SUUIStatefulUIManager *)v191 preferredStatefulDescriptor];
        v69 = [(SUUIStatefulUIManager *)v191 alternateStatefulDescriptor];
        v70 = [(SUUIStatefulUIManager *)v191 currentDownload];
        v156 = 0;
        v154 = 0;
        v152 = 0;
        if (v70)
        {
          v157 = [(SUUIStatefulUIManager *)v191 currentDownload];
          v63 = 1;
          v156 = 1;
          v155 = [(SUUIDownload *)v157 descriptor];
          v154 = 1;
          v153 = [v155 updateName];
          v152 = 1;
          v64 = v153;
        }

        else
        {
          v64 = @"(null)";
        }

        v40 = v64;
        v41 = [(SUUIStatefulUIManager *)v191 currentDownload];
        v42 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)v191 currentUpdateOperationType]);
        v43 = MEMORY[0x277D82BE0](v42);
        v151 = v43;
        v196 = [(SUUIStatefulUIManager *)v191 isTargetedUpdateScheduledForAutoInstall];
        v53 = @"NO";
        v54 = @"YES";
        v61 = 1;
        if (v196)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v44 = v17;
        v18 = v17;
        v45 = v44;
        v46 = MEMORY[0x277D82BE0](v45);
        v150 = v46;
        if ([(SUUIStatefulUIManager *)v191 hidingPreferredDescriptor])
        {
          v19 = v54;
        }

        else
        {
          v19 = v53;
        }

        v47 = v19;
        v20 = v19;
        v48 = v47;
        v49 = MEMORY[0x277D82BE0](v48);
        v149 = v49;
        v50 = [(SUUIStatefulUIManager *)v191 hiddenPreferredStatefulDescriptor];
        v51 = [(SUUIStatefulDescriptor *)v50 updateName];
        v52 = MEMORY[0x277D82BE0](v51);
        v148 = v52;
        if ([(SUUIStatefulUIManager *)v191 hidingAlternateDescriptor])
        {
          v21 = v54;
        }

        else
        {
          v21 = v53;
        }

        v55 = v21;
        v22 = v21;
        v56 = v55;
        v57 = MEMORY[0x277D82BE0](v56);
        v147 = v57;
        v58 = [(SUUIStatefulUIManager *)v191 hiddenAlternateStatefulDescriptor];
        v59 = [(SUUIStatefulDescriptor *)v58 updateName];
        v60 = MEMORY[0x277D82BE0](v59);
        v146 = v60;
        v62 = [(SUUIStatefulUIManager *)v191 enrolledBetaProgram];
        v144 = 0;
        if (v62)
        {
          v145 = [(SUUIStatefulUIManager *)v191 enrolledBetaProgram];
          v144 = 1;
          v39 = [(SDBetaProgram *)v145 programID];
        }

        else
        {
          v39 = 0;
        }

        v30 = v39;
        v31 = [(NSArray *)v191->_betaPrograms count];
        if ([(SUUIStatefulUIManager *)v191 canEnrollInBetaUpdates])
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v29 = v23;
        v24 = v23;
        v38 = v29;
        v32 = MEMORY[0x277D82BE0](v38);
        v143 = v32;
        v33 = v191->_currentFullScanOperation;
        v34 = v191->_currentRefreshScanOperation;
        v35 = v191->_currentUpdateOperation;
        v25 = [(NSMutableSet *)v191->_auxiliaryOperations count];
        v36 = v27;
        v37 = v201;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v201, v139, v75, v77, v79, v80, v65, v66, v67, v68, v69, v40, v41, v43, v46, v49, v52, v57, v60, v30, v31, v32, v33, v34, v35, v25);
        _os_log_impl(&dword_26ADE5000, v73, v74[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full scan operation is already running. Skipping on this refresh request. This should never happen.", v37, 0xFCu);
        MEMORY[0x277D82BD8](v38);
        if (v144)
        {
          MEMORY[0x277D82BD8](v145);
        }

        MEMORY[0x277D82BD8](v62);
        MEMORY[0x277D82BD8](v59);
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v56);
        MEMORY[0x277D82BD8](v51);
        MEMORY[0x277D82BD8](v50);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v45);
        MEMORY[0x277D82BD8](v42);
        MEMORY[0x277D82BD8](v41);
        if (v152)
        {
          MEMORY[0x277D82BD8](v153);
        }

        if (v154)
        {
          MEMORY[0x277D82BD8](v155);
        }

        if (v156)
        {
          MEMORY[0x277D82BD8](v157);
        }

        MEMORY[0x277D82BD8](v70);
        MEMORY[0x277D82BD8](v69);
        MEMORY[0x277D82BD8](v68);
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](v66);
        if (v158)
        {
          MEMORY[0x277D82BD8](v159);
        }

        if (v160)
        {
          MEMORY[0x277D82BD8](v161);
        }

        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](v78);
        MEMORY[0x277D82BD8](v76);
        v28 = 0;
        objc_storeStrong(&v143, 0);
        objc_storeStrong(&v146, v28);
        objc_storeStrong(&v147, v28);
        objc_storeStrong(&v148, v28);
        objc_storeStrong(&v149, v28);
        objc_storeStrong(&v150, v28);
        objc_storeStrong(&v151, v28);
        objc_storeStrong(&v162, v28);
        objc_storeStrong(&v163, v28);
      }

      objc_storeStrong(&v165, 0);
      v192 = 0;
      v166 = 1;
    }

    else
    {
      [(SUUIStatefulUIManager *)v191 performRefreshScan:location[0]];
      v192 = 0;
      v166 = 1;
    }
  }

  objc_storeStrong(location, 0);
  v27[18] = v192;
  *MEMORY[0x277D85DE8];
  return v192;
}

- (int64_t)fsmAction_ReportRefreshScanResults:(id)a3 error:(id *)a4
{
  v201 = a4;
  v202 = "[SUUIStatefulUIManager fsmAction_ReportRefreshScanResults:error:]";
  v273 = *MEMORY[0x277D85DE8];
  val = self;
  v260 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  from[1] = v201;
  v200 = [*(val + 25) extendedStateQueue];
  v199 = v200;
  dispatch_assert_queue_V2(v199);
  MEMORY[0x277D82BD8](v199);
  objc_initWeak(from, val);
  v256 = 0;
  v198 = [val currentState];
  v197 = [location refreshPreviousState];
  v196 = 0;
  if (v198 == v197)
  {
    v195 = [location refreshHasAnyChanges];
    v196 = 0;
    if ((v195 & 1) == 0)
    {
      v194 = [val scanError];
      v257 = v194;
      v256 = 1;
      v196 = v257 == 0;
    }
  }

  v193 = v196;
  if (v256)
  {
    MEMORY[0x277D82BD8](v257);
  }

  if (!v193)
  {
    goto LABEL_80;
  }

  v192 = [location forceReload];
  if (v192)
  {
    v110 = +[SUUILoggingContext statefulUILogger];
    v108 = v110;
    v109 = [v108 oslog];
    v231 = v109;
    MEMORY[0x277D82BD8](v108);
    v230 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
    {
      v104 = v231;
      *v105 = v230;
      v106 = val;
      v107 = objc_opt_class();
      v103 = NSStringFromClass(v107);
      v100 = v103;
      v101 = MEMORY[0x277D82BE0](v100);
      v229 = v101;
      v102 = SUUIStatefulUIStateToString(*(val + 5));
      v97 = v102;
      v98 = MEMORY[0x277D82BE0](v97);
      v228 = v98;
      v99 = [val currentState];
      v226 = 0;
      v224 = 0;
      v96 = [val delegate];
      v95 = v96;
      if (v95)
      {
        v94 = [val delegate];
        v227 = v94;
        v226 = 1;
        v93 = objc_opt_class();
        v92 = NSStringFromClass(v93);
        v225 = v92;
        v224 = 1;
        v91 = v225;
      }

      else
      {
        v91 = @"(null)";
      }

      v89 = v91;
      v90 = [val delegate];
      v87 = v90;
      v88 = [val scanError];
      v85 = v88;
      v86 = [val preferredStatefulDescriptor];
      v83 = v86;
      v84 = [val alternateStatefulDescriptor];
      v81 = v84;
      v222 = 0;
      v220 = 0;
      v218 = 0;
      v82 = [val currentDownload];
      v80 = v82;
      if (v80)
      {
        v79 = [val currentDownload];
        v223 = v79;
        v222 = 1;
        v78 = [v223 descriptor];
        v221 = v78;
        v220 = 1;
        v77 = [v221 updateName];
        v219 = v77;
        v218 = 1;
        v76 = v219;
      }

      else
      {
        v76 = @"(null)";
      }

      v74 = v76;
      v75 = [val currentDownload];
      v72 = v75;
      v73 = [val currentUpdateOperationType];
      v71 = SUUIUpdateContinuousOperationTypeToString(v73);
      v68 = v71;
      v69 = MEMORY[0x277D82BE0](v68);
      v217 = v69;
      v70 = [val isTargetedUpdateScheduledForAutoInstall];
      v266 = v70;
      if (v70)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v67 = v12;
      v13 = v12;
      v64 = v67;
      v65 = MEMORY[0x277D82BE0](v64);
      v216 = v65;
      v66 = [val hidingPreferredDescriptor];
      v265 = v66;
      if (v66)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v63 = v14;
      v15 = v14;
      v60 = v63;
      v61 = MEMORY[0x277D82BE0](v60);
      v215 = v61;
      v62 = [val hiddenPreferredStatefulDescriptor];
      v58 = v62;
      v59 = [v58 updateName];
      v55 = v59;
      v56 = MEMORY[0x277D82BE0](v55);
      v214 = v56;
      v57 = [val hidingAlternateDescriptor];
      v264 = v57;
      if (v57)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v54 = v16;
      v17 = v16;
      v51 = v54;
      v52 = MEMORY[0x277D82BE0](v51);
      v213 = v52;
      v53 = [val hiddenAlternateStatefulDescriptor];
      v49 = v53;
      v50 = [v49 updateName];
      v46 = v50;
      v47 = MEMORY[0x277D82BE0](v46);
      v212 = v47;
      v210 = 0;
      v48 = [val enrolledBetaProgram];
      v45 = v48;
      if (v45)
      {
        v44 = [val enrolledBetaProgram];
        v211 = v44;
        v210 = 1;
        v43 = [v211 programID];
        v42 = v43;
      }

      else
      {
        v42 = 0;
      }

      v40 = v42;
      v41 = [*(val + 15) count];
      v39 = [val canEnrollInBetaUpdates];
      v263 = v39;
      if (v39)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v38 = v18;
      v19 = v18;
      v32 = v38;
      v33 = MEMORY[0x277D82BE0](v32);
      v209 = v33;
      v34 = *(val + 21);
      v35 = *(val + 22);
      v36 = *(val + 23);
      v37 = [*(val + 24) count];
      v30 = v21;
      v31 = v271;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v271, v202, v106, v101, v98, v99, v89, v87, v85, v83, v81, v74, v72, v69, v65, v61, v56, v52, v47, v40, v41, v33, v34, v35, v36, v37);
      _os_log_impl(&dword_26ADE5000, v104, v105[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Force load was requested - proceeding to ask the delegate to reload the UI.", v31, 0xFCu);
      MEMORY[0x277D82BD8](v32);
      if (v210)
      {
        MEMORY[0x277D82BD8](v211);
      }

      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v72);
      if (v218)
      {
        MEMORY[0x277D82BD8](v219);
      }

      if (v220)
      {
        MEMORY[0x277D82BD8](v221);
      }

      if (v222)
      {
        MEMORY[0x277D82BD8](v223);
      }

      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v87);
      if (v224)
      {
        MEMORY[0x277D82BD8](v225);
      }

      if (v226)
      {
        MEMORY[0x277D82BD8](v227);
      }

      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v100);
      objc_storeStrong(&v209, 0);
      objc_storeStrong(&v212, 0);
      objc_storeStrong(&v213, 0);
      objc_storeStrong(&v214, 0);
      objc_storeStrong(&v215, 0);
      objc_storeStrong(&v216, 0);
      objc_storeStrong(&v217, 0);
      objc_storeStrong(&v228, 0);
      objc_storeStrong(&v229, 0);
    }

    objc_storeStrong(&v231, 0);
LABEL_80:
    [val setCurrentRefreshScanOperation:0];
    v28 = val;
    v29 = [location refreshScanResults];
    v26 = v29;
    v27 = [location error];
    v25 = v27;
    [v28 notifyRefreshScanResultsDelegates:v26 andError:?];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    v22 = val;
    v23 = sel_statefulUIManagerDidRefreshState_;
    v203 = MEMORY[0x277D85DD0];
    v204 = -1073741824;
    v205 = 0;
    v206 = __66__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResults_error___block_invoke;
    v207 = &unk_279CC63B8;
    v24 = v208;
    objc_copyWeak(v208, from);
    v208[1] = v260;
    [v22 executeOperationOnDelegate:v23 usingBlock:&v203];
    v262 = 0;
    v232 = 1;
    objc_destroyWeak(v24);
    goto LABEL_81;
  }

  v191 = +[SUUILoggingContext statefulUILogger];
  v189 = v191;
  v190 = [v189 oslog];
  oslog = v190;
  MEMORY[0x277D82BD8](v189);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v186 = type;
    v187 = val;
    aClass = objc_opt_class();
    v184 = NSStringFromClass(aClass);
    v181 = v184;
    v182 = MEMORY[0x277D82BE0](v181);
    v253 = v182;
    v183 = SUUIStatefulUIStateToString(*(val + 5));
    v178 = v183;
    v179 = MEMORY[0x277D82BE0](v178);
    v252 = v179;
    v180 = [val currentState];
    v250 = 0;
    v248 = 0;
    v177 = [val delegate];
    v176 = v177;
    if (v176)
    {
      v175 = [val delegate];
      v251 = v175;
      v250 = 1;
      v174 = objc_opt_class();
      v173 = NSStringFromClass(v174);
      v249 = v173;
      v248 = 1;
      v172 = v249;
    }

    else
    {
      v172 = @"(null)";
    }

    v170 = v172;
    v171 = [val delegate];
    v168 = v171;
    v169 = [val scanError];
    v166 = v169;
    v167 = [val preferredStatefulDescriptor];
    v164 = v167;
    v165 = [val alternateStatefulDescriptor];
    v162 = v165;
    v246 = 0;
    v244 = 0;
    v242 = 0;
    v163 = [val currentDownload];
    v161 = v163;
    if (v161)
    {
      v160 = [val currentDownload];
      v247 = v160;
      v246 = 1;
      v159 = [v247 descriptor];
      v245 = v159;
      v244 = 1;
      v158 = [v245 updateName];
      v243 = v158;
      v242 = 1;
      v157 = v243;
    }

    else
    {
      v157 = @"(null)";
    }

    v155 = v157;
    v156 = [val currentDownload];
    v153 = v156;
    v154 = [val currentUpdateOperationType];
    v152 = SUUIUpdateContinuousOperationTypeToString(v154);
    v149 = v152;
    v150 = MEMORY[0x277D82BE0](v149);
    v241 = v150;
    v151 = [val isTargetedUpdateScheduledForAutoInstall];
    v270 = v151;
    if (v151)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v148 = v4;
    v5 = v4;
    v145 = v148;
    v146 = MEMORY[0x277D82BE0](v145);
    v240 = v146;
    v147 = [val hidingPreferredDescriptor];
    v269 = v147;
    if (v147)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v144 = v6;
    v7 = v6;
    v141 = v144;
    v142 = MEMORY[0x277D82BE0](v141);
    v239 = v142;
    v143 = [val hiddenPreferredStatefulDescriptor];
    v139 = v143;
    v140 = [v139 updateName];
    v136 = v140;
    v137 = MEMORY[0x277D82BE0](v136);
    v238 = v137;
    v138 = [val hidingAlternateDescriptor];
    v268 = v138;
    if (v138)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v135 = v8;
    v9 = v8;
    v132 = v135;
    v133 = MEMORY[0x277D82BE0](v132);
    v237 = v133;
    v134 = [val hiddenAlternateStatefulDescriptor];
    v130 = v134;
    v131 = [v130 updateName];
    v127 = v131;
    v128 = MEMORY[0x277D82BE0](v127);
    v236 = v128;
    v234 = 0;
    v129 = [val enrolledBetaProgram];
    v126 = v129;
    if (v126)
    {
      v125 = [val enrolledBetaProgram];
      v235 = v125;
      v234 = 1;
      v124 = [v235 programID];
      v123 = v124;
    }

    else
    {
      v123 = 0;
    }

    v121 = v123;
    v122 = [*(val + 15) count];
    v120 = [val canEnrollInBetaUpdates];
    v267 = v120;
    if (v120)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v119 = v10;
    v11 = v10;
    v113 = v119;
    v114 = MEMORY[0x277D82BE0](v113);
    v233 = v114;
    v115 = *(val + 21);
    v116 = *(val + 22);
    v117 = *(val + 23);
    v118 = [*(val + 24) count];
    v111 = v21;
    buf = v272;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v272, v202, v187, v182, v179, v180, v170, v168, v166, v164, v162, v155, v153, v150, v146, v142, v137, v133, v128, v121, v122, v114, v115, v116, v117, v118);
    _os_log_impl(&dword_26ADE5000, log, v186[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Dropping the refresh request.", buf, 0xFCu);
    MEMORY[0x277D82BD8](v113);
    if (v234)
    {
      MEMORY[0x277D82BD8](v235);
    }

    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v153);
    if (v242)
    {
      MEMORY[0x277D82BD8](v243);
    }

    if (v244)
    {
      MEMORY[0x277D82BD8](v245);
    }

    if (v246)
    {
      MEMORY[0x277D82BD8](v247);
    }

    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](v166);
    MEMORY[0x277D82BD8](v168);
    if (v248)
    {
      MEMORY[0x277D82BD8](v249);
    }

    if (v250)
    {
      MEMORY[0x277D82BD8](v251);
    }

    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v178);
    MEMORY[0x277D82BD8](v181);
    objc_storeStrong(&v233, 0);
    objc_storeStrong(&v236, 0);
    objc_storeStrong(&v237, 0);
    objc_storeStrong(&v238, 0);
    objc_storeStrong(&v239, 0);
    objc_storeStrong(&v240, 0);
    objc_storeStrong(&v241, 0);
    objc_storeStrong(&v252, 0);
    objc_storeStrong(&v253, 0);
  }

  objc_storeStrong(&oslog, 0);
  [val setCurrentRefreshScanOperation:0];
  v262 = 0;
  v232 = 1;
LABEL_81:
  objc_destroyWeak(from);
  objc_storeStrong(&location, 0);
  v21[19] = v262;
  *MEMORY[0x277D85DE8];
  return v262;
}

void __66__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResults_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager fsmAction_ReportRefreshScanResults:error:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_ReportRefreshScanResultsFailed:(id)a3 error:(id *)a4
{
  v20 = self;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  from[1] = a4;
  v10 = [(SUCoreFSM *)v20->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v10);
  MEMORY[0x277D82BD8](v10);
  objc_initWeak(from, v20);
  [(SUUIStatefulUIManager *)v20 setCurrentRefreshScanOperation:0];
  v8 = v20;
  v7 = [location refreshScanResults];
  v6 = [location error];
  [(SUUIStatefulUIManager *)v8 notifyRefreshScanResultsDelegates:v7 andError:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v5 = v20;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __72__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResultsFailed_error___block_invoke;
  v15 = &unk_279CC63B8;
  objc_copyWeak(v16, from);
  v16[1] = v19;
  [(SUUIStatefulUIManager *)v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v11];
  objc_destroyWeak(v16);
  objc_destroyWeak(from);
  objc_storeStrong(&location, 0);
  return 0;
}

void __72__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResultsFailed_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager fsmAction_ReportRefreshScanResultsFailed:error:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_actionUnknownAction:(id)a3 error:(id *)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14[1] = a4;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v14[0] = [v4 initWithFormat:location[0]];
  v10 = [(SUCoreFSM *)v16->_managerFSM diag];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 initWithFormat:@"unknown action(%@)", location[0]];
  [v10 dumpTracked:? dumpingTo:? usingFilename:? clearingStatistics:? clearingHistory:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v11 = [MEMORY[0x277D643F8] sharedCore];
  v13 = [v11 buildError:8116 underlying:0 description:v14[0]];
  MEMORY[0x277D82BD8](v11);
  v12 = [(SUCoreFSM *)v16->_managerFSM diag];
  v6 = [v13 code];
  [v12 trackAnomaly:@"[SUUIStatefulUIManager]" forReason:@"Stateful UI FSM has reported an anomaly" withResult:v6 withError:v13];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)updateDescriptorsUsingScanResults:(id)a3 andWithConcreteError:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [(SUUIStatefulUIManager *)v9 hideNonTargetedUpdateDescriptors];
  v5 = [(SUUIStatefulUIManager *)v9 preferredStatefulDescriptor];
  [(SUUIStatefulDescriptor *)v5 updateStateWithScanResults:location[0] andWithConcreteError:v7];
  MEMORY[0x277D82BD8](v5);
  v6 = [(SUUIStatefulUIManager *)v9 alternateStatefulDescriptor];
  [(SUUIStatefulDescriptor *)v6 updateStateWithScanResults:location[0] andWithConcreteError:v7];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)hideNonTargetedUpdateDescriptors
{
  v11 = self;
  location[1] = a2;
  location[0] = [(SUUIStatefulUIManager *)self currentDownload];
  if (location[0] && ([location[0] isAutoDownload] & 1) == 0 && !-[SUUIStatefulUIManager hasHiddenDescriptors](v11, "hasHiddenDescriptors"))
  {
    v8 = [location[0] descriptor];
    v7 = [(SUUIStatefulUIManager *)v11 preferredStatefulDescriptor];
    v6 = [(SUUIStatefulDescriptor *)v7 descriptor];
    v9 = [v8 isEqual:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    if (v9)
    {
      [(SUUIStatefulUIManager *)v11 hideAlternateUpdate];
    }

    else
    {
      v4 = [location[0] descriptor];
      v3 = [(SUUIStatefulUIManager *)v11 alternateStatefulDescriptor];
      v2 = [(SUUIStatefulDescriptor *)v3 descriptor];
      v5 = [v4 isEqual:?];
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      if (v5)
      {
        [(SUUIStatefulUIManager *)v11 hidePreferredUpdate];
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)executeOperationOnDelegate:(SEL)a3 usingBlock:(id)a4
{
  v20 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v7 = [(SUUIStatefulUIManager *)v20 delegate];
  objc_initWeak(&v18, v7);
  MEMORY[0x277D82BD8](v7);
  v8 = objc_loadWeakRetained(&v18);
  v16 = 0;
  v9 = 0;
  if (v8)
  {
    v17 = objc_loadWeakRetained(&v18);
    v16 = 1;
    v9 = objc_opt_respondsToSelector();
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    v6 = [MEMORY[0x277D643F8] sharedCore];
    v5 = [(SUUIStatefulUIManager *)v20 delegateCallbackQueue];
    queue = [v6 selectDelegateCallbackQueue:?];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __63__SUUIStatefulUIManager_executeOperationOnDelegate_usingBlock___block_invoke;
    v14 = &unk_279CC61E0;
    v15 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v10);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v15, 0);
  }

  objc_destroyWeak(&v18);
  objc_storeStrong(location, 0);
}

- (int64_t)convertFSMStateToUIState:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"Idle"])
  {
    v5 = 0;
  }

  else if ([location[0] isEqualToString:@"CheckingForAvailableUpdate"])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:@"ScanFailed"])
  {
    v5 = 2;
  }

  else if ([location[0] isEqualToString:@"NoUpdateFound"])
  {
    v5 = 3;
  }

  else if ([location[0] isEqualToString:@"UpdatesAvailable"])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (void)assignDescriptorOfType:(unint64_t)a3 fromSearchResults:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v88 = self;
  v87 = a2;
  v86 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v86 < 2)
  {
    v78 = 0;
    v76 = 0;
    if (v86)
    {
      v77 = [(SUUIStatefulUIManager *)v88 alternateStatefulDescriptor];
      v76 = 1;
      v4 = MEMORY[0x277D82BE0](v77);
    }

    else
    {
      v79 = [(SUUIStatefulUIManager *)v88 preferredStatefulDescriptor];
      v78 = 1;
      v4 = MEMORY[0x277D82BE0](v79);
    }

    v80 = v4;
    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    if (v78)
    {
      MEMORY[0x277D82BD8](v79);
    }

    v73 = 0;
    v71 = 0;
    if (v86)
    {
      v72 = [location alternateDescriptor];
      v71 = 1;
      v5 = MEMORY[0x277D82BE0](v72);
    }

    else
    {
      v74 = [location preferredDescriptor];
      v73 = 1;
      v5 = MEMORY[0x277D82BE0](v74);
    }

    v75 = v5;
    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    if (v80 || v75)
    {
      if ([v80 isEqualToDescriptor:v75 includeDocumentationComparison:1])
      {
        v51 = +[SUUILoggingContext statefulUILogger];
        v70 = [v51 oslog];
        MEMORY[0x277D82BD8](v51);
        v69 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v70;
          v45 = v69;
          v38 = v88;
          v50 = SUUIStatefulDescriptorRoleToString(v86);
          v39 = MEMORY[0x277D82BE0](v50);
          v68 = v39;
          v49 = [v80 updateName];
          v40 = MEMORY[0x277D82BE0](v49);
          v67 = v40;
          v41 = v80;
          v48 = [v75 updateName];
          v42 = MEMORY[0x277D82BE0](v48);
          v66 = v42;
          v43 = v75;
          if ([(SUUIStatefulUIManager *)v88 hidingPreferredDescriptor])
          {
            v6 = @"YES";
          }

          else
          {
            v6 = @"NO";
          }

          v35 = v6;
          v7 = v6;
          v47 = v35;
          v37 = MEMORY[0x277D82BE0](v47);
          v65 = v37;
          if ([(SUUIStatefulUIManager *)v88 hidingAlternateDescriptor])
          {
            v8 = @"YES";
          }

          else
          {
            v8 = @"NO";
          }

          v36 = v8;
          v9 = v8;
          v46 = v36;
          v64 = MEMORY[0x277D82BE0](v46);
          __os_log_helper_16_2_9_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v94, "[SUUIStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v38, v39, v40, v41, v42, v43, v37, v64);
          _os_log_impl(&dword_26ADE5000, v44, v45, "%s [%p]: %{public}@ descriptor assignment: the given descriptor is equal to the current stateful descriptor. Updating internal state instead of creation of an entirely new one.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %{public}@; Alternate: %{public}@", v94, 0x5Cu);
          MEMORY[0x277D82BD8](v46);
          MEMORY[0x277D82BD8](v47);
          MEMORY[0x277D82BD8](v48);
          MEMORY[0x277D82BD8](v49);
          MEMORY[0x277D82BD8](v50);
          objc_storeStrong(&v64, 0);
          objc_storeStrong(&v65, 0);
          objc_storeStrong(&v66, 0);
          objc_storeStrong(&v67, 0);
          objc_storeStrong(&v68, 0);
        }

        objc_storeStrong(&v70, 0);
        [(SUUIStatefulUIManager *)v88 hideNonTargetedUpdateDescriptors];
        [v80 updateStateWithScanResults:location andWithConcreteError:0];
        v81 = 1;
      }

      else
      {
        v34 = +[SUUILoggingContext statefulUILogger];
        v63 = [v34 oslog];
        MEMORY[0x277D82BD8](v34);
        v62 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v63;
          v28 = v62;
          v21 = v88;
          v33 = SUUIStatefulDescriptorRoleToString(v86);
          v22 = MEMORY[0x277D82BE0](v33);
          v61 = v22;
          v32 = [v80 updateName];
          v23 = MEMORY[0x277D82BE0](v32);
          v60 = v23;
          v24 = v80;
          v31 = [v75 updateName];
          v25 = MEMORY[0x277D82BE0](v31);
          v59 = v25;
          v26 = v75;
          if ([(SUUIStatefulUIManager *)v88 hidingPreferredDescriptor])
          {
            v10 = @"YES";
          }

          else
          {
            v10 = @"NO";
          }

          v18 = v10;
          v11 = v10;
          v30 = v18;
          v20 = MEMORY[0x277D82BE0](v30);
          v58 = v20;
          if ([(SUUIStatefulUIManager *)v88 hidingAlternateDescriptor])
          {
            v12 = @"YES";
          }

          else
          {
            v12 = @"NO";
          }

          v19 = v12;
          v13 = v12;
          v29 = v19;
          v57 = MEMORY[0x277D82BE0](v29);
          __os_log_helper_16_2_9_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v93, "[SUUIStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v21, v22, v23, v24, v25, v26, v20, v57);
          _os_log_impl(&dword_26ADE5000, v27, v28, "%s [%p]: %{public}@ descriptor assignment: Replacing the current descriptor with a new descriptor.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %{public}@; Alternate: %{public}@", v93, 0x5Cu);
          MEMORY[0x277D82BD8](v29);
          MEMORY[0x277D82BD8](v30);
          MEMORY[0x277D82BD8](v31);
          MEMORY[0x277D82BD8](v32);
          MEMORY[0x277D82BD8](v33);
          objc_storeStrong(&v57, 0);
          objc_storeStrong(&v58, 0);
          objc_storeStrong(&v59, 0);
          objc_storeStrong(&v60, 0);
          objc_storeStrong(&v61, 0);
        }

        objc_storeStrong(&v63, 0);
        if (v86)
        {
          if (v75)
          {
            v15 = [SUUIStatefulDescriptor alloc];
            v16 = [(SUUIStatefulDescriptor *)v15 initForDescriptor:v86 fromScanResults:location managedBy:v88];
            [(SUUIStatefulUIManager *)v88 setAlternateStatefulDescriptor:?];
            MEMORY[0x277D82BD8](v16);
          }

          else
          {
            [(SUUIStatefulUIManager *)v88 setAlternateStatefulDescriptor:0];
          }
        }

        else if (v75)
        {
          v14 = [SUUIStatefulDescriptor alloc];
          v17 = [(SUUIStatefulDescriptor *)v14 initForDescriptor:v86 fromScanResults:location managedBy:v88];
          [(SUUIStatefulUIManager *)v88 setPreferredStatefulDescriptor:?];
          MEMORY[0x277D82BD8](v17);
        }

        else
        {
          [(SUUIStatefulUIManager *)v88 setPreferredStatefulDescriptor:0];
        }

        v81 = 0;
      }
    }

    else
    {
      v81 = 1;
    }

    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v80, 0);
  }

  else
  {
    v56 = +[SUUILoggingContext statefulUILogger];
    oslog = [v56 oslog];
    MEMORY[0x277D82BD8](v56);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v54 = type;
      v52 = v88;
      v55 = SUUIStatefulDescriptorRoleToString(v86);
      v82 = MEMORY[0x277D82BE0](v55);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v95, "[SUUIStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v52, v82);
      _os_log_error_impl(&dword_26ADE5000, log, v54, "%s [%p]: Invalid descriptor type: %{public}@", v95, 0x20u);
      MEMORY[0x277D82BD8](v55);
      objc_storeStrong(&v82, 0);
    }

    objc_storeStrong(&oslog, 0);
    v81 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)performSelector:(SEL)a3 onTarget:(id)a4 withObject:(id)a5 withObject:(id)a6 withObject:(id)a7 withObject:(id)a8
{
  obj = a5;
  v10 = a6;
  v11 = a7;
  v12 = a8;
  v22 = self;
  v21 = a2;
  v20 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v18 = 0;
  objc_storeStrong(&v18, obj);
  v17 = 0;
  objc_storeStrong(&v17, v10);
  v16 = 0;
  objc_storeStrong(&v16, v11);
  v15 = 0;
  objc_storeStrong(&v15, v12);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = NSStringFromSelector(v20);
    _suui_precondition_failure_with_format(@"Target does not respond to selector %@", v8);
  }

  v14 = [location methodSignatureForSelector:v20];
  if (v14)
  {
    v13 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v14];
    [v13 setSelector:v20];
    [v13 setTarget:location];
    [v13 setArgument:&v18 atIndex:2];
    [v13 setArgument:&v17 atIndex:3];
    [v13 setArgument:&v16 atIndex:4];
    [v13 setArgument:&v15 atIndex:5];
    [v13 invoke];
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

- (SUUIStatefulUIManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SUUIStatefulUIEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (id)contextForFullScanOperation:(id)a3 withThirdPartyScanResults:(id)a4 scanError:(id)a5 forceReloadScanResults:(BOOL)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v6 = [SUUIScanOperationFullScanContext alloc];
  v11 = [(SUUIScanOperationFullScanContext *)v6 initWithPreviousThirdPartyScanResults:v13 previousScanError:v12 forceReloadScanResults:a6];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)contextForRefreshScanOperation:(id)a3 withPreviouslyDiscoveredDownload:(id)a4 encounteredError:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v5 = [SUUIScanOperationRefreshScanContext alloc];
  v9 = [(SUUIScanOperationRefreshScanContext *)v5 initWithPreviousDownload:v11 previousEncounteredError:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)contextForDownloadUpdateOperation:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [SUUIUpdateOperationDownloadContext alloc];
  v5 = [(SUUIUpdateOperationDownloadContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)v7 updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForDownloadAndInstallUpdateOperation:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [SUUIUpdateOperationDownloadAndInstallContext alloc];
  v5 = [(SUUIUpdateOperationDownloadAndInstallContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)v7 updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForDownloadAndScheduleUpdateOperation:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [SUUIUpdateOperationDownloadAndScheduleContext alloc];
  v5 = [(SUUIUpdateOperationDownloadAndScheduleContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)v7 updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForInstallUpdateOperation:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [SUUIUpdateOperationInstallContext alloc];
  v5 = [(SUUIUpdateOperationInstallContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)v7 updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForUserPromotionUpdateOperation:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_opt_new();
  objc_storeStrong(location, 0);

  return v4;
}

- (id)contextForPurgeUpdateOperation:(id)a3 forUserRequestedOperation:(BOOL)a4 notifyUser:(BOOL)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [[SUUIUpdateOperationPurgeContext alloc] initAsUserRequest:a4 notifyUser:a5];
  objc_storeStrong(location, 0);

  return v8;
}

- (id)contextForScheduleUpdateOperation:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [SUUIUpdateOperationScheduleContext alloc];
  v5 = [(SUUIUpdateOperationScheduleContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)v7 updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForUserUnscheduleUpdateOperation:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_opt_new();
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)updateOperationShouldPerformUnattendedPurge:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [(SUUIStatefulUIManager *)v14 currentDownload];
  v11 = [(SUUIStatefulUIManager *)v14 preferredStatefulDescriptor];
  v10 = [(SUUIStatefulUIManager *)v14 alternateStatefulDescriptor];
  if (!v12)
  {
    goto LABEL_13;
  }

  v8 = 0;
  v5 = 0;
  if (v11)
  {
    v9 = [v12 descriptor];
    v8 = 1;
    v5 = [v11 isEqualToDescriptor:?];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  v6 = 0;
  v4 = 0;
  if (v10)
  {
    v7 = [v12 descriptor];
    v6 = 1;
    v4 = [v10 isEqualToDescriptor:?];
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v5 & 1) != 0 || (v4)
  {
LABEL_13:
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (BOOL)assignScanResults:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  v21 = [(SUUIStatefulUIManager *)v31 isClearingSpaceForDownload];
  if (v21 != [location[0] isClearingSpaceForDownload])
  {
    v3 = [location[0] isClearingSpaceForDownload];
    [(SUUIStatefulUIManager *)v31 setClearingSpaceForDownload:v3];
    v29 = 1;
  }

  v28 = [(SUUIStatefulUIManager *)v31 currentDownload];
  v19 = [location[0] currentDownload];
  v26 = 0;
  v20 = 0;
  if (v28 != v19)
  {
    LOBYTE(v18) = 1;
    if (v28)
    {
      v27 = [location[0] currentDownload];
      v26 = 1;
      v18 = [v27 isEqual:v28] ^ 1;
    }

    v20 = v18;
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](v27);
  }

  MEMORY[0x277D82BD8](v19);
  if (v20)
  {
    v16 = v31;
    v17 = [location[0] currentDownload];
    [(SUUIStatefulUIManager *)v16 setCurrentDownload:?];
    MEMORY[0x277D82BD8](v17);
    v29 = 1;
  }

  isAutoUpdateScheduled = v31->_isAutoUpdateScheduled;
  if (isAutoUpdateScheduled != [location[0] isAutoUpdateScheduled])
  {
    v4 = [location[0] isAutoUpdateScheduled];
    [(SUUIStatefulUIManager *)v31 setIsAutoUpdateScheduled:v4];
    v29 = 1;
  }

  v25 = [(SUUIStatefulUIManager *)v31 getEnrollInBetaUpdatesStatus];
  if (v31->_canEnrollInBetaUpdates != v25)
  {
    [(SUUIStatefulUIManager *)v31 setCanEnrollInBetaUpdates:v25];
    v29 = 1;
    v14 = +[SUUILoggingContext statefulUILogger];
    v24 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      log = v24;
      type = v23;
      v10 = v31;
      v32 = v25;
      if (v25)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v9 = v5;
      v6 = v5;
      v13 = v9;
      v22 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v33, "[SUUIStatefulUIManager(OperationsResultsAssignment) assignScanResults:]", v10, v22);
      _os_log_impl(&dword_26ADE5000, log, type, "%s [%p]: canEnrollInBetaUpdates status changed to: %{public}@", v33, 0x20u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v24, 0);
  }

  v8 = v29;
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (void)assignFullScanResults:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUUIStatefulUIManager *)v16 assignScanResults:location[0]];
  v11 = [location[0] scanError];
  v13 = 0;
  if (v11)
  {
    v14 = [location[0] scanError];
    v13 = 1;
    v10 = v14;
  }

  else
  {
    v10 = 0;
  }

  [(SUUIStatefulUIManager *)v16 setScanError:v10];
  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v11);
  v3 = [location[0] mdmPathRestrictions];
  [(SUUIStatefulUIManager *)v16 setMdmPathRestrictions:v3];
  v6 = [location[0] currentSeedingDevice];
  [(SUUIStatefulUIManager *)v16 setCurrentSeedingDevice:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] betaPrograms];
  [(SUUIStatefulUIManager *)v16 setBetaPrograms:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [location[0] enrolledBetaProgram];
  [(SUUIStatefulUIManager *)v16 setEnrolledBetaProgram:?];
  MEMORY[0x277D82BD8](v8);
  v9 = [location[0] ddmDeclaration];
  [(SUUIStatefulUIManager *)v16 setDDMDeclaration:?];
  MEMORY[0x277D82BD8](v9);
  [(SUUIStatefulUIManager *)v16 willChangeValueForKey:?];
  v12[0] = v16;
  v12[1] = @"rollingBackSplatUpdate";
  v5 = [location[0] isRollingBackSplatUpdate];
  v16->_rollingBackSplatUpdate = v5;
  v17 = v12;
  if (v12[0])
  {
    [*v17 didChangeValueForKey:v17[1]];
  }

  v4 = [location[0] isDelayingUpdate];
  v16->_delayingUpdate = v4;
  objc_storeStrong(location, 0);
}

- (void)assignDownloadUpdateResults:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [location[0] download];
  [(SUUIStatefulUIManager *)v3 setCurrentDownload:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)assignDownloadAndScheduleUpdateResults:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [location[0] download];
  [(SUUIStatefulUIManager *)v3 setCurrentDownload:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)assignInstallUpdateResults:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)assignScheduleUpdateResults:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)assignUserPromotionUpdateResults:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [location[0] download];
  [(SUUIStatefulUIManager *)v3 setCurrentDownload:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)assignUnscheduleUpdateResults:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end