@interface NRDUpdateDCore
- (BOOL)isPasscodeLocked;
- (Class)_infoClassForAction:(id)action;
- (NRDUpdateDCore)initWithDelegate:(id)delegate;
- (double)_minimumInterval:(double)interval;
- (id)findLocalBrainAsset;
- (int64_t)actionBeginBrainScan:(id *)scan;
- (int64_t)actionCheckDeviceUnlockConstraint:(id *)constraint;
- (int64_t)actionDownloadBrainUpdate:(id *)update;
- (int64_t)actionLoadBrain:(id *)brain;
- (int64_t)actionLoadPersisted:(id *)persisted;
- (int64_t)actionPeriodicScan:(id *)scan;
- (int64_t)actionRunBrain:(id *)brain;
- (int64_t)actionScheduleRetry:(id)retry error:(id *)error;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)actionWaitForUnlock:(id *)unlock;
- (int64_t)getSchedulerQOS;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)cleanBeforeScan;
- (void)cleanReScanScheduler;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)maDownloadFailed:(id)failed;
- (void)maDownloadProgress:(id)progress;
- (void)maDownloadStalled:(id)stalled;
- (void)maDownloaded:(id)downloaded;
- (void)newBrain:(id)brain;
- (void)newSchedulerWithIdentifier:(id)identifier reply:(id)reply;
- (void)performUpdate:(id)update;
- (void)registerUpdatedFSMhandlers;
- (void)scheduleNRDUpdateBrainPeriodicScan;
- (void)scheduleNRDUpdateBrainReScan:(BOOL)scan;
@end

@implementation NRDUpdateDCore

- (NRDUpdateDCore)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v55.receiver = self;
  v55.super_class = NRDUpdateDCore;
  v5 = [(NRDUpdateDCore *)&v55 init];
  if (v5)
  {
    v53 = delegateCopy;
    v52 = kSU_S_Startup;
    v114[0] = kSU_S_Startup;
    v112[0] = @"ProceedToNextUpdateStep";
    v6 = kSUCoreNextStateKey;
    v7 = kSU_S_LoadingPersisted;
    v8 = kSUCoreActionKey;
    v110[0] = kSUCoreNextStateKey;
    v110[1] = kSUCoreActionKey;
    v9 = kSU_A_LoadPersisted;
    v111[0] = kSU_S_LoadingPersisted;
    v111[1] = kSU_A_LoadPersisted;
    v51 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:2];
    v113[0] = v51;
    v112[1] = @"PeriodicScanRequested";
    v108[0] = v6;
    v108[1] = v8;
    v109[0] = v7;
    v109[1] = v9;
    v50 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:2];
    v113[1] = v50;
    v49 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
    v115[0] = v49;
    v114[1] = v7;
    v106[0] = @"NoLocalBrainFound";
    v104[0] = v6;
    v104[1] = v8;
    v105[0] = @"ScanningBrain";
    v105[1] = @"ActionBeginBrainScan";
    v48 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:2];
    v107[0] = v48;
    v106[1] = @"LocalBrainFound";
    v102[0] = v6;
    v102[1] = v8;
    v103[0] = @"CheckingDeviceUnlockConstraint";
    v103[1] = @"ActionCheckDeviceUnlockConstraint";
    v47 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:2];
    v107[1] = v47;
    v46 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:2];
    v115[1] = v46;
    v114[2] = @"ScanningBrain";
    v100[0] = @"NoRemoteBrainFound";
    v98[0] = v6;
    v98[1] = v8;
    v99[0] = @"SchedulingRetry";
    v99[1] = @"ActionScheduleRetry";
    v45 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
    v101[0] = v45;
    v100[1] = @"ErrorGeneric";
    v96[0] = v6;
    v96[1] = v8;
    v97[0] = @"SchedulingRetry";
    v97[1] = @"ActionScheduleRetry";
    v44 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
    v101[1] = v44;
    v100[2] = @"ProceedToNextUpdateStep";
    v94[0] = v6;
    v94[1] = v8;
    v95[0] = @"DownloadingBrain";
    v95[1] = @"ActionDownloadBrain";
    v43 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];
    v101[2] = v43;
    v42 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:3];
    v115[2] = v42;
    v114[3] = @"DownloadingBrain";
    v92[0] = @"ProceedToNextUpdateStep";
    v90[0] = v6;
    v90[1] = v8;
    v91[0] = @"CheckingDeviceUnlockConstraint";
    v91[1] = @"ActionCheckDeviceUnlockConstraint";
    v41 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
    v93[0] = v41;
    v92[1] = kSU_E_DownloadFailed;
    v88[0] = v6;
    v88[1] = v8;
    v89[0] = @"SchedulingRetry";
    v89[1] = @"ActionScheduleRetry";
    v40 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:2];
    v93[1] = v40;
    v39 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
    v115[3] = v39;
    v114[4] = @"CheckingDeviceUnlockConstraint";
    v86[0] = @"DeviceLocked";
    v84[0] = v6;
    v84[1] = v8;
    v85[0] = @"WaitingForUnlock";
    v85[1] = @"ActionWaitForUnlock";
    v38 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
    v87[0] = v38;
    v86[1] = @"DeviceUnlocked";
    v82[0] = v6;
    v82[1] = v8;
    v83[0] = @"LoadingBrain";
    v83[1] = @"ActionLoadBrain";
    v37 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
    v87[1] = v37;
    v36 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];
    v115[4] = v36;
    v114[5] = @"WaitingForUnlock";
    v80[0] = @"DeviceUnlocked";
    v78[0] = v6;
    v78[1] = v8;
    v79[0] = @"LoadingBrain";
    v79[1] = @"ActionLoadBrain";
    v35 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
    v81[0] = v35;
    v80[1] = @"PeriodicScanRequested";
    v76 = v8;
    v77 = @"ActionWaitForUnlock";
    v34 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v81[1] = v34;
    v80[2] = @"ProceedToNextUpdateStep";
    v74 = v8;
    v75 = @"ActionWaitForUnlock";
    v33 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v81[2] = v33;
    v32 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:3];
    v115[5] = v32;
    v114[6] = @"LoadingBrain";
    v72[0] = @"ProceedToNextUpdateStep";
    v70[0] = v6;
    v70[1] = v8;
    v71[0] = @"RunningBrain";
    v71[1] = @"ActionRunBrain";
    v31 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];
    v72[1] = @"ErrorGeneric";
    v73[0] = v31;
    v68[0] = v6;
    v68[1] = v8;
    v69[0] = @"SchedulingRetry";
    v69[1] = @"ActionScheduleRetry";
    v30 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
    v73[1] = v30;
    v29 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
    v115[6] = v29;
    v114[7] = @"RunningBrain";
    v65 = @"ActionRunBrain";
    v66[0] = @"ProceedToNextUpdateStep";
    v64 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v66[1] = @"PeriodicScanRequested";
    v67[0] = v10;
    v62 = v8;
    v63 = @"ActionPeriodicScan";
    v11 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v67[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
    v115[7] = v12;
    v114[8] = @"SchedulingRetry";
    v60[0] = @"ProceedToNextUpdateStep";
    v58[0] = v6;
    v58[1] = v8;
    v59[0] = @"ScanningBrain";
    v59[1] = @"ActionBeginBrainScan";
    v13 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
    v60[1] = @"PeriodicScanRequested";
    v61[0] = v13;
    v56[0] = v6;
    v56[1] = v8;
    v57[0] = @"ScanningBrain";
    v57[1] = @"ActionBeginBrainScan";
    v14 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
    v61[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
    v115[8] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:9];

    v17 = [[NSDictionary alloc] initWithDictionary:v16 copyItems:1];
    [(NRDUpdateDCore *)v5 setStateTable:v17];

    v18 = nrdSharedLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating FSM", buf, 2u);
    }

    v19 = [[SUCoreFSM alloc] initMachine:@"NRDUpdated" withTable:v5->_stateTable startingIn:v52];
    [(NRDUpdateDCore *)v5 setUpdatedFSM:v19];

    v20 = +[SUCore sharedCore];
    kSUCoreFilesystemBaseDirDefault = [NSString stringWithFormat:@"%@_NRD", kSUCoreFilesystemBaseDirDefault];
    [v20 useFilesystemBaseDir:kSUCoreFilesystemBaseDirDefault];

    [(NRDUpdateDCore *)v5 setScanPolicy:0];
    [(NRDUpdateDCore *)v5 setDownloadPolicy:0];
    [(NRDUpdateDCore *)v5 registerUpdatedFSMhandlers];
    updatedFSM = [(NRDUpdateDCore *)v5 updatedFSM];
    [updatedFSM activateMachine];

    delegateCopy = v53;
    [(NRDUpdateDCore *)v5 setDelegate:v53];
    v23 = dispatch_queue_create("com.apple.NRDUpdated.keybag", 0);
    [(NRDUpdateDCore *)v5 setKeyBagQueue:v23];

    v24 = dispatch_queue_create("com.apple.NRDUpdated.update", 0);
    [(NRDUpdateDCore *)v5 setUpdateQueue:v24];

    v25 = dispatch_semaphore_create(0);
    fsmSemaphore = v5->_fsmSemaphore;
    v5->_fsmSemaphore = v25;

    v27 = nrdSharedLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Initialization of NRDUpdateDCore complete", buf, 2u);
    }
  }

  return v5;
}

- (Class)_infoClassForAction:(id)action
{
  if ([action compare:@"ActionScheduleRetry"])
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (void)registerUpdatedFSMhandlers
{
  stateTable = [(NRDUpdateDCore *)self stateTable];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke;
  v4[3] = &unk_100018A10;
  v4[4] = self;
  [stateTable enumerateKeysAndObjectsUsingBlock:v4];
}

void __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke_2;
  v7[3] = &unk_1000189E8;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKey:kSUCoreActionKey];
  if (v5)
  {
    v6 = [*(a1 + 32) updatedFSM];
    [v6 registerAction:v5 ForEvent:v7 inState:*(a1 + 40) usingDelegate:*(a1 + 32) withInfoClass:{objc_msgSend(*(a1 + 32), "_infoClassForAction:", v5)}];
  }
}

- (id)findLocalBrainAsset
{
  v2 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingExtensions:0];
  [v2 setAllowSameVersion:1];
  [v2 setRestrictToFull:1];
  [v2 setReleaseType:0];
  v3 = [NSNumber numberWithInt:1];
  [v2 setCompatibilityVersion:v3];

  constructSoftwareUpdateMAAssetQuery = [v2 constructSoftwareUpdateMAAssetQuery];
  [constructSoftwareUpdateMAAssetQuery returnTypes:1];
  [constructSoftwareUpdateMAAssetQuery setDoNotBlockOnNetworkStatus:1];
  if ([constructSoftwareUpdateMAAssetQuery queryMetaDataSync])
  {
    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDCore findLocalBrainAsset];
    }

    firstObject = 0;
    results = 0;
    goto LABEL_10;
  }

  results = [constructSoftwareUpdateMAAssetQuery results];
  if ([results count] >= 2)
  {
    v8 = nrdSharedLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = [results count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found %lu brain assets.  Removing all...", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke;
    v11[3] = &unk_100018A38;
    v12 = dispatch_semaphore_create(0);
    v5 = v12;
    [SUCorePurge removeAllAssetsOfType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" completion:v11];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

LABEL_9:
    firstObject = 0;
    goto LABEL_10;
  }

  if (![results count])
  {
    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No local brain asset found", buf, 2u);
    }

    goto LABEL_9;
  }

  firstObject = [results firstObject];
  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [firstObject description];
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found local brain asset:%{public}@", buf, 0xCu);
  }

LABEL_10:

  return firstObject;
}

void __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing all update brain assets succeeded", v6, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)cleanReScanScheduler
{
  rescanScheduler = [(NRDUpdateDCore *)self rescanScheduler];

  if (rescanScheduler)
  {
    v4 = nrdSharedLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      rescanScheduler2 = [(NRDUpdateDCore *)self rescanScheduler];
      rescanScheduler3 = [(NRDUpdateDCore *)self rescanScheduler];
      identifier = [rescanScheduler3 identifier];
      v9 = 138543618;
      v10 = rescanScheduler2;
      v11 = 2114;
      v12 = identifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating Activity %{public}@ %{public}@", &v9, 0x16u);
    }

    rescanScheduler4 = [(NRDUpdateDCore *)self rescanScheduler];
    [rescanScheduler4 invalidate];

    [(NRDUpdateDCore *)self setRescanScheduler:0];
  }
}

- (int64_t)actionLoadPersisted:(id *)persisted
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionLoadPersisted", &v21, 2u);
  }

  forceBrainUpdate = [(NRDUpdateDCore *)self forceBrainUpdate];
  [(NRDUpdateDCore *)self setForceBrainUpdate:0];
  [(NRDUpdateDCore *)self cleanBeforeScan];
  [(NRDUpdateDCore *)self cleanReScanScheduler];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"NRDBrainPath"];

  if (!v7)
  {
    updateOptions = [(NRDUpdateDCore *)self updateOptions];
    v10 = [updateOptions objectForKeyedSubscript:@"__nrd_brain-location_key"];

    if (v10)
    {
      v8 = nrdSharedLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        updateOptions2 = [(NRDUpdateDCore *)self updateOptions];
        v12 = [updateOptions2 objectForKeyedSubscript:@"__nrd_brain-location_key"];
        v21 = 138543362;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Brain path specified by options:%{public}@, skipping scan", &v21, 0xCu);
      }

      goto LABEL_9;
    }

    findLocalBrainAsset = [(NRDUpdateDCore *)self findLocalBrainAsset];
    if (findLocalBrainAsset)
    {
      [(NRDUpdateDCore *)self setLocalBrainAsset:findLocalBrainAsset];
      v15 = nrdSharedLogger();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (!forceBrainUpdate)
      {
        if (v16)
        {
          assetId = [findLocalBrainAsset assetId];
          v21 = 138543362;
          v22 = assetId;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found brain asset:%{public}@ on disk, skipping scan", &v21, 0xCu);
        }

        v18 = @"LocalBrainFound";
        goto LABEL_21;
      }

      if (v16)
      {
        assetId2 = [findLocalBrainAsset assetId];
        v21 = 138543362;
        v22 = assetId2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found brain asset:%{public}@ on disk but forced to scan again", &v21, 0xCu);
      }
    }

    else
    {
      v15 = nrdSharedLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not find brain asset on disk, going to scan", &v21, 2u);
      }
    }

    v18 = @"NoLocalBrainFound";
LABEL_21:

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:v18];

    goto LABEL_10;
  }

  v8 = nrdSharedLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Brain path specified by a default:%{public}@, skipping scan", &v21, 0xCu);
  }

LABEL_9:

  findLocalBrainAsset = [(NRDUpdateDCore *)self updatedFSM];
  [findLocalBrainAsset postEvent:@"LocalBrainFound"];
LABEL_10:

  return 0;
}

- (void)cleanBeforeScan
{
  [(NRDUpdateDCore *)self setUuid:0];

  [(NRDUpdateDCore *)self setUpdateBrainAsset:0];
}

- (int64_t)actionBeginBrainScan:(id *)scan
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionBeginBrainScan", buf, 2u);
  }

  [(NRDUpdateDCore *)self cleanBeforeScan];
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v7 = [[SUCoreScan alloc] initWithUUID:uUIDString];
  [(NRDUpdateDCore *)self setScanner:v7];
  scanPolicy = [(NRDUpdateDCore *)self scanPolicy];

  if (!scanPolicy)
  {
    v9 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingPolicies:127 usingExtensions:0];
    softwareUpdateScanPolicy = [v9 softwareUpdateScanPolicy];
    [softwareUpdateScanPolicy setAllowSameVersion:1];

    softwareUpdateScanPolicy2 = [v9 softwareUpdateScanPolicy];
    [softwareUpdateScanPolicy2 setRestrictToFull:1];

    softwareUpdateScanPolicy3 = [v9 softwareUpdateScanPolicy];
    [softwareUpdateScanPolicy3 setDisableUI:1];

    [v9 setReleaseType:0];
    v13 = [NSNumber numberWithInt:1];
    [v9 setCompatibilityVersion:v13];

    [(NRDUpdateDCore *)self setScanPolicy:v9];
  }

  v14 = nrdSharedLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    scanPolicy2 = [(NRDUpdateDCore *)self scanPolicy];
    v16 = [scanPolicy2 description];
    *buf = 138543362;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ScanPolicy: %{public}@", buf, 0xCu);
  }

  updateAttempt = [(NRDUpdateDCore *)self updateAttempt];
  v18 = [updateAttempt unsignedLongLongValue] + 1;

  if (v18 < 4)
  {
    scanner = self->_scanner;
    scanPolicy3 = [(NRDUpdateDCore *)self scanPolicy];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __39__NRDUpdateDCore_actionBeginBrainScan___block_invoke;
    v24[3] = &unk_100018A60;
    v24[4] = self;
    v25 = uUIDString;
    [(SUCoreScan *)scanner locateAvailableUpdateWithPolicy:scanPolicy3 completion:v24];
  }

  else
  {
    v19 = nrdSharedLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDCore actionBeginBrainScan:];
    }

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:@"ErrorGeneric"];
  }

  return 0;
}

void __39__NRDUpdateDCore_actionBeginBrainScan___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nrdSharedLogger();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __39__NRDUpdateDCore_actionBeginBrainScan___block_invoke_cold_1();
    }

    v23[0] = NSDebugDescriptionErrorKey;
    v23[1] = NSUnderlyingErrorKey;
    v24[0] = @"brain scan failed";
    v24[1] = v10;
    v13 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v14 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:607 userInfo:v13];

    v15 = [*(a1 + 32) updatedFSM];
    [v15 postEvent:@"ErrorGeneric" withInfo:v14];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scan returned with success\n primaryUpdateAsset: %{public}@\n secondaryUpdateAsset: %{public}@\n", &v19, 0x16u);
    }

    if (v8)
    {
      [*(a1 + 32) setUpdateBrainAsset:v8];
      [*(a1 + 32) setUuid:*(a1 + 40)];
      v16 = [*(a1 + 32) updatedFSM];
      v14 = v16;
      v17 = @"ProceedToNextUpdateStep";
    }

    else
    {
      v18 = nrdSharedLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No brain update found", &v19, 2u);
      }

      v16 = [*(a1 + 32) updatedFSM];
      v14 = v16;
      v17 = @"NoRemoteBrainFound";
    }

    [v16 postEvent:v17];
  }
}

- (int64_t)actionDownloadBrainUpdate:(id *)update
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionDownloadBrainUpdate", v34, 2u);
  }

  updateBrainAsset = [(NRDUpdateDCore *)self updateBrainAsset];

  if (updateBrainAsset)
  {
    v6 = [SUCoreMobileAsset alloc];
    updateBrainAsset2 = [(NRDUpdateDCore *)self updateBrainAsset];
    uuid = [(NRDUpdateDCore *)self uuid];
    updatedFSM = [v6 initWithDelegate:self forAsset:updateBrainAsset2 updateUUID:uuid];

    [(NRDUpdateDCore *)self setMaControl:updatedFSM];
    v10 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingPolicies:127 usingExtensions:0];
    loadBrainPolicy = [v10 loadBrainPolicy];
    [loadBrainPolicy setDiscretionary:0];

    loadBrainPolicy2 = [v10 loadBrainPolicy];
    [loadBrainPolicy2 setDisableUI:1];

    loadBrainPolicy3 = [v10 loadBrainPolicy];
    [loadBrainPolicy3 setAllowsCellular:0];

    downloadPreflightPolicy = [v10 downloadPreflightPolicy];
    [downloadPreflightPolicy setDiscretionary:0];

    downloadPreflightPolicy2 = [v10 downloadPreflightPolicy];
    [downloadPreflightPolicy2 setDisableUI:1];

    downloadPreflightPolicy3 = [v10 downloadPreflightPolicy];
    [downloadPreflightPolicy3 setAllowsCellular:0];

    softwareUpdateDownloadPolicy = [v10 softwareUpdateDownloadPolicy];
    [softwareUpdateDownloadPolicy setDiscretionary:0];

    softwareUpdateDownloadPolicy2 = [v10 softwareUpdateDownloadPolicy];
    [softwareUpdateDownloadPolicy2 setDisableUI:1];

    softwareUpdateDownloadPolicy3 = [v10 softwareUpdateDownloadPolicy];
    [softwareUpdateDownloadPolicy3 setAllowsCellular:0];

    [v10 setReleaseType:0];
    v20 = [NSNumber numberWithInt:1];
    [v10 setCompatibilityVersion:v20];

    [(NRDUpdateDCore *)self setDownloadPolicy:v10];
    maControl = [(NRDUpdateDCore *)self maControl];
    downloadPolicy = [(NRDUpdateDCore *)self downloadPolicy];
    uuid2 = [(NRDUpdateDCore *)self uuid];
    [maControl downloadSoftwareUpdateAssetWithPolicy:downloadPolicy withUUID:uuid2];

    v24 = 0;
  }

  else
  {
    v25 = nrdSharedLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(NRDUpdateDCore *)v25 actionDownloadBrainUpdate:v26, v27, v28, v29, v30, v31, v32];
    }

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:@"ErrorGeneric"];
    v24 = 8700;
  }

  return v24;
}

- (void)maDownloadProgress:(id)progress
{
  progressCopy = progress;
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = progressCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Download progress is : %{public}@", &v5, 0xCu);
  }
}

- (void)maDownloadStalled:(id)stalled
{
  stalledCopy = stalled;
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = stalledCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Download is currently stalled : %{public}@", &v5, 0xCu);
  }
}

- (void)maDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = downloadedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update brain asset has downloaded successfully : %@", &v7, 0xCu);
  }

  updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
  [updatedFSM postEvent:@"ProceedToNextUpdateStep"];
}

- (void)maDownloadFailed:(id)failed
{
  failedCopy = failed;
  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NRDUpdateDCore maDownloadFailed:];
  }

  v9[0] = NSDebugDescriptionErrorKey;
  v9[1] = NSUnderlyingErrorKey;
  v10[0] = @"Update brain asset download failed";
  v10[1] = failedCopy;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:608 userInfo:v6];

  updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
  [updatedFSM postEvent:kSU_E_DownloadFailed withInfo:v7];
}

- (int64_t)actionCheckDeviceUnlockConstraint:(id *)constraint
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionCheckDeviceUnlockConstraint", buf, 2u);
  }

  brainLoadRequiresUnlock = [(NRDUpdateDCore *)self brainLoadRequiresUnlock];
  v6 = nrdSharedLogger();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!brainLoadRequiresUnlock)
  {
    if (v7)
    {
      *buf = 0;
      v14 = "brain load does not require unlock";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_15:

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    v12 = updatedFSM;
    v13 = @"DeviceUnlocked";
    goto LABEL_16;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "brain load requires unlock", buf, 2u);
  }

  isPasscodeLocked = [(NRDUpdateDCore *)self isPasscodeLocked];
  v6 = nrdSharedLogger();
  v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if ((isPasscodeLocked & 1) == 0)
  {
    if (v9)
    {
      *buf = 0;
      v14 = "device is unlocked";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Need to wait for device unlock before loading brain", buf, 2u);
  }

  [(NRDUpdateDCore *)self setKeyBagStateChangedNotifyToken:0xFFFFFFFFLL];
  keyBagQueue = [(NRDUpdateDCore *)self keyBagQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __52__NRDUpdateDCore_actionCheckDeviceUnlockConstraint___block_invoke;
  handler[3] = &unk_100018A88;
  handler[4] = self;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_keyBagStateChangedNotifyToken, keyBagQueue, handler);

  updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
  v12 = updatedFSM;
  v13 = @"DeviceLocked";
LABEL_16:
  [updatedFSM postEvent:v13];

  return 0;
}

void __52__NRDUpdateDCore_actionCheckDeviceUnlockConstraint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isPasscodeLocked];
  v3 = nrdSharedLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device lock status changed: passcodeLocked = %{public}@", &v7, 0xCu);
  }

  if ((v2 & 1) == 0)
  {
    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device unlocked, sending device unlocked event", &v7, 2u);
    }

    notify_cancel([*(a1 + 32) keyBagStateChangedNotifyToken]);
    v6 = [*(a1 + 32) updatedFSM];
    [v6 postEvent:@"DeviceUnlocked"];
  }
}

- (int64_t)actionWaitForUnlock:(id *)unlock
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionWaitForUnlock", v9, 2u);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  v10 = NSDebugDescriptionErrorKey;
  v11 = @"Device is locked, unable to load brain";
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:601 userInfo:v6];
  [delegate updateCompleted:v7];

  dispatch_semaphore_signal(self->_fsmSemaphore);
  return 0;
}

- (int64_t)actionLoadBrain:(id *)brain
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionLoadBrain", buf, 2u);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  path = [v5 objectForKey:@"NRDBrainPath"];

  if (path)
  {
    v7 = nrdSharedLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = path;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Defaults specified brain path is %{public}@", buf, 0xCu);
    }

    [(NRDUpdateDCore *)self setUpdateOptions:0];
    goto LABEL_11;
  }

  updateOptions = [(NRDUpdateDCore *)self updateOptions];
  v9 = [updateOptions objectForKeyedSubscript:@"__nrd_brain-location_key"];

  if (v9)
  {
    updateOptions2 = [(NRDUpdateDCore *)self updateOptions];
    path = [updateOptions2 objectForKeyedSubscript:@"__nrd_brain-location_key"];

    v11 = nrdSharedLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = path;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Option specified brain path is %{public}@", buf, 0xCu);
    }

    [(NRDUpdateDCore *)self setUpdateOptions:0];
    if (path)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  updateBrainAsset = [(NRDUpdateDCore *)self updateBrainAsset];

  if (updateBrainAsset)
  {
    updateBrainAsset2 = [(NRDUpdateDCore *)self updateBrainAsset];
    getLocalUrl = [updateBrainAsset2 getLocalUrl];
    path = [getLocalUrl path];

    v24 = nrdSharedLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = path;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Downloaded brain path is %{public}@", buf, 0xCu);
    }

    updateBrainAsset3 = [(NRDUpdateDCore *)self updateBrainAsset];
  }

  else
  {
    localBrainAsset = [(NRDUpdateDCore *)self localBrainAsset];

    if (!localBrainAsset)
    {
      v41 = nrdSharedLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [(NRDUpdateDCore *)v41 actionLoadBrain:v42, v43, v44, v45, v46, v47, v48];
      }

      v54 = NSDebugDescriptionErrorKey;
      v55 = @"LoadingBrain state was reached without either a downloaded brain or an existing local brain";
      v39 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v40 = 600;
      goto LABEL_32;
    }

    localBrainAsset2 = [(NRDUpdateDCore *)self localBrainAsset];
    getLocalUrl2 = [localBrainAsset2 getLocalUrl];
    path = [getLocalUrl2 path];

    v29 = nrdSharedLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = path;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Existing local brain path is %{public}@", buf, 0xCu);
    }

    updateBrainAsset3 = [(NRDUpdateDCore *)self localBrainAsset];
  }

  v30 = updateBrainAsset3;
  [(NRDUpdateDCore *)self setLoadBrainAsset:updateBrainAsset3];

  if (!path)
  {
LABEL_29:
    v31 = nrdSharedLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(NRDUpdateDCore *)v31 actionLoadBrain:v32, v33, v34, v35, v36, v37, v38];
    }

    v52 = NSDebugDescriptionErrorKey;
    v53 = @"brain path is nil";
    v39 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v40 = 603;
LABEL_32:
    v13 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:v40 userInfo:v39];

    path = [(NRDUpdateDCore *)self updatedFSM];
    [path postEvent:@"ErrorGeneric" withInfo:v13];
    goto LABEL_19;
  }

LABEL_11:
  v12 = nrdSharedLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trying to load update brain", buf, 2u);
  }

  v49 = 0;
  v13 = [NRDUpdateBrainLoader brainAtPath:path delegate:self error:&v49];
  v14 = v49;
  v15 = v14;
  if (v14)
  {
    v50[0] = NSDebugDescriptionErrorKey;
    v50[1] = NSUnderlyingErrorKey;
    v51[0] = @"load brain failed";
    v51[1] = v14;
    v16 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    updatedFSM2 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:602 userInfo:v16];

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:@"ErrorGeneric" withInfo:updatedFSM2];
  }

  else
  {
    [(NRDUpdateDCore *)self setBrain:v13];
    v19 = nrdSharedLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "update brain load succeeded", buf, 2u);
    }

    updatedFSM2 = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM2 postEvent:@"ProceedToNextUpdateStep"];
  }

LABEL_19:
  return 0;
}

- (int64_t)actionRunBrain:(id *)brain
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionRunBrain", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = 3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__NRDUpdateDCore_actionRunBrain___block_invoke;
  block[3] = &unk_100018AB0;
  block[4] = buf;
  if (actionRunBrain__onceToken != -1)
  {
    dispatch_once(&actionRunBrain__onceToken, block);
  }

  updateOptions = [(NRDUpdateDCore *)self updateOptions];
  v6 = [updateOptions objectForKeyedSubscript:@"__nrd_brain-location_key"];

  if (v6 && +[NRDUpdateBrainLoader isBrainLoaded])
  {
    delegate = [(NRDUpdateDCore *)self delegate];
    [delegate requestExit:0 reason:@"A new NRD brain will be loaded from an option-specified local path."];

    v21[0] = NSDebugDescriptionErrorKey;
    v21[1] = @"com.apple.NRD-Resend";
    v22[0] = @"new local brain load needed";
    v22[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v9 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:610 userInfo:v8];

    delegate2 = [(NRDUpdateDCore *)self delegate];
    [delegate2 updateCompleted:v9];

    dispatch_semaphore_signal(self->_fsmSemaphore);
  }

  else
  {
    brain = [(NRDUpdateDCore *)self brain];
    v12 = *(v18 + 3);
    updateOptions2 = [(NRDUpdateDCore *)self updateOptions];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __33__NRDUpdateDCore_actionRunBrain___block_invoke_2;
    v15[3] = &unk_100018A38;
    v15[4] = self;
    [brain run:v12 options:updateOptions2 callback:v15];
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

void __33__NRDUpdateDCore_actionRunBrain___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = [v3 domain];
  if ([v5 isEqualToString:@"NRDUpdateErrorDomain"])
  {
    v6 = [v4 code];

    if (v6 == 111)
    {
LABEL_4:
      v7 = nrdSharedLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "brain run completed successfully", v14, 2u);
      }

      v8 = [*(a1 + 32) brain];
      [*(a1 + 32) setRunningBrain:v8];

      v9 = [*(a1 + 32) delegate];
      [v9 updateCompleted:0];

      dispatch_semaphore_signal(*(*(a1 + 32) + 8));
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = nrdSharedLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __33__NRDUpdateDCore_actionRunBrain___block_invoke_2_cold_1();
  }

  v15[0] = NSDebugDescriptionErrorKey;
  v15[1] = NSUnderlyingErrorKey;
  v16[0] = @"run brain failed";
  v16[1] = v4;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:609 userInfo:v11];

  v13 = [*(a1 + 32) delegate];
  [v13 updateCompleted:v12];

  dispatch_semaphore_signal(*(*(a1 + 32) + 8));
LABEL_11:
}

- (int64_t)actionScheduleRetry:(id)retry error:(id *)error
{
  retryCopy = retry;
  v6 = nrdSharedLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "In actionScheduleRetry", buf, 2u);
  }

  v7 = nrdSharedLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing all update brain assets", buf, 2u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __44__NRDUpdateDCore_actionScheduleRetry_error___block_invoke;
  v10[3] = &unk_100018AD8;
  v10[4] = self;
  v11 = retryCopy;
  v8 = retryCopy;
  [SUCorePurge removeAllAssetsOfType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" completion:v10];

  return 0;
}

void __44__NRDUpdateDCore_actionScheduleRetry_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing all update brain assets succeeded", v7, 2u);
  }

  [*(a1 + 32) scheduleNRDUpdateBrainReScan:0];
  v6 = [*(a1 + 32) delegate];
  [v6 updateCompleted:*(a1 + 40)];

  dispatch_semaphore_signal(*(*(a1 + 32) + 8));
}

- (int64_t)actionPeriodicScan:(id *)scan
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionPeriodicScan", buf, 2u);
  }

  runningBrain = [(NRDUpdateDCore *)self runningBrain];

  if (runningBrain)
  {
    runningBrain2 = [(NRDUpdateDCore *)self runningBrain];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __37__NRDUpdateDCore_actionPeriodicScan___block_invoke;
    v9[3] = &unk_100018A38;
    v9[4] = self;
    [runningBrain2 run:4 callback:v9];
  }

  else
  {
    v7 = nrdSharedLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "actionPeriodicScan no running brain", buf, 2u);
    }

    dispatch_semaphore_signal(self->_fsmSemaphore);
  }

  return 0;
}

void __37__NRDUpdateDCore_actionPeriodicScan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_cold_1();
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 8));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "brain run idle completed successfully", buf, 2u);
    }

    v6 = [SUCoreScan alloc];
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    v9 = [v6 initWithUUID:v8];

    v10 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingPolicies:127 usingExtensions:0];
    v11 = [v10 softwareUpdateScanPolicy];
    [v11 setAllowSameVersion:1];

    v12 = [v10 softwareUpdateScanPolicy];
    [v12 setRestrictToFull:1];

    v13 = [v10 softwareUpdateScanPolicy];
    [v13 setDisableUI:1];

    [v10 setReleaseType:0];
    v14 = [NSNumber numberWithInt:1];
    [v10 setCompatibilityVersion:v14];

    v15 = nrdSharedLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 description];
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Periodic ScanPolicy: %{public}@", buf, 0xCu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_435;
    v19[3] = &unk_100018A60;
    v17 = *(a1 + 32);
    v20 = v9;
    v21 = v17;
    v18 = v9;
    [v18 locateAvailableUpdateWithPolicy:v10 completion:v19];
  }
}

void __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_435(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nrdSharedLogger();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_435_cold_1();
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543618;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Periodic Scan returned with success\n primaryUpdateAsset: %{public}@\n secondaryUpdateAsset: %{public}@\n", &v26, 0x16u);
  }

  if (v8)
  {
    v12 = [v8 assetProperty:@"Build"];
    if (!v12)
    {
      v12 = [v8 assetProperty:@"_MasteredVersion"];
    }

    v13 = [*(a1 + 40) loadBrainAsset];
    v14 = [v13 assetProperty:@"Build"];

    if (!v14)
    {
      v15 = [*(a1 + 40) loadBrainAsset];
      v14 = [v15 assetProperty:@"_MasteredVersion"];
    }

    v16 = nrdSharedLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Periodic Scan found brain version:%{public}@, existing version:%{public}@", &v26, 0x16u);
    }

    v17 = [v14 isEqual:v12];
    v18 = nrdSharedLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        LOWORD(v26) = 0;
        v20 = "Periodic Scan returned with the existing brain asset";
        v21 = v18;
        v22 = 2;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v26, v22);
      }
    }

    else
    {
      if (v19)
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Periodic Scan returned with new brain asset, purging old asset", &v26, 2u);
      }

      v23 = [*(a1 + 40) loadBrainAsset];
      v24 = [v23 purgeSync];

      v18 = nrdSharedLogger();
      v25 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (!v24)
      {
        if (v25)
        {
          LOWORD(v26) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Purged old brain asset, send new brain notification", &v26, 2u);
        }

        [*(a1 + 40) newBrain:v12];
        goto LABEL_25;
      }

      if (v25)
      {
        v26 = 134217984;
        v27 = v24;
        v20 = "Purging old brain asset failed with result:%ld";
        v21 = v18;
        v22 = 12;
        goto LABEL_23;
      }
    }

LABEL_25:
    goto LABEL_26;
  }

  v12 = nrdSharedLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No brain update found", &v26, 2u);
  }

LABEL_26:

  dispatch_semaphore_signal(*(*(a1 + 40) + 8));
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  actionCopy = action;
  v6 = nrdSharedLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [NRDUpdateDCore actionUnknownAction:actionCopy error:error];
  }

  return 8113;
}

- (int64_t)getSchedulerQOS
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"SchedulerQOS"];

  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = @"SchedulerQOS";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %{public}@=%{public}@ in preferences", &v8, 0x16u);
  }

  if ([v3 caseInsensitiveCompare:@"Background"])
  {
    if ([v3 caseInsensitiveCompare:@"Utility"])
    {
      if ([v3 caseInsensitiveCompare:@"UserInitiated"])
      {
        if ([v3 caseInsensitiveCompare:@"UserInteractive"])
        {
          if ([v3 caseInsensitiveCompare:@"Default"])
          {
            v5 = nrdSharedLogger();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              [NRDUpdateDCore getSchedulerQOS];
            }
          }

          v6 = -1;
        }

        else
        {
          v6 = 33;
        }
      }

      else
      {
        v6 = 25;
      }
    }

    else
    {
      v6 = 17;
    }
  }

  else
  {
LABEL_13:
    v6 = 9;
  }

  return v6;
}

- (double)_minimumInterval:(double)interval
{
  intervalCopy = interval;
  if (interval < 60.0)
  {
    v4 = nrdSharedLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = intervalCopy;
      v8 = 2048;
      v9 = 0x404E000000000000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "interval of %.1f seconds is too low. clamping to %.1f seconds.", &v6, 0x16u);
    }

    return 60.0;
  }

  return intervalCopy;
}

- (void)scheduleNRDUpdateBrainReScan:(BOOL)scan
{
  scanCopy = scan;
  [(NRDUpdateDCore *)self cleanReScanScheduler];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"NRDBrainReScanInterval"];

  if (v6)
  {
    v7 = nrdSharedLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = @"NRDBrainReScanInterval";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found %{public}@ in defaults", buf, 0xCu);
    }

    [v6 doubleValue];
    [(NRDUpdateDCore *)self _minimumInterval:?];
    v9 = v8;
  }

  else
  {
    v9 = XPC_ACTIVITY_INTERVAL_1_HOUR;
  }

  v10 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download"];
  v11 = v10;
  if (v10)
  {
    [v10 setInterval:v9];
    [v11 setQualityOfService:{-[NRDUpdateDCore getSchedulerQOS](self, "getSchedulerQOS")}];
    delegate2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(delegate2, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(delegate2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    [v11 _setAdditionalXPCActivityProperties:delegate2];
    [(NRDUpdateDCore *)self setRescanScheduler:v11];
    v13 = nrdSharedLogger();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (scanCopy)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Checking in retry activity for brain scan", buf, 2u);
      }

      v15 = [v11 description];
      [v11 identifier];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke;
      v23[3] = &unk_1000188B8;
      v25 = v24 = v15;
      v16 = v25;
      v13 = v15;
      [v11 setCheckInHandler:v23];
      [v11 setPreregistered:1];
    }

    else if (v14)
    {
      *buf = 134217984;
      v27 = *&v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Scheduling a retry for brain update in %lf seconds", buf, 0xCu);
    }

    v17 = +[NRDUpdateBrainLoader isBrainLoaded];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke_467;
    v19[3] = &unk_100018B00;
    v22 = v17;
    v20 = v11;
    selfCopy = self;
    [v20 scheduleWithBlock:v19];
    if (v17)
    {
      delegate = [(NRDUpdateDCore *)self delegate];
      [delegate requestExit:0 reason:@"NRD brain service has already been bootstrapped into the xpc namespace of this process."];
    }
  }

  else
  {
    delegate2 = [(NRDUpdateDCore *)self delegate];
    [delegate2 requestExit:1 reason:@"Failed to schedule a retry for NRD brain update"];
  }
}

void __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in.", &v8, 0x16u);
  }

  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in complete.", &v8, 0x16u);
  }
}

void __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke_467(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ fired", &v10, 0xCu);
  }

  if ([*(a1 + 32) shouldDefer])
  {
    v6 = nrdSharedLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v10 = 138543362;
      v11 = v7;
      v8 = "Activity %{public}@ is deferred";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
    }
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      [*(a1 + 40) performUpdate:&off_100019B28];
      v9 = 1;
      goto LABEL_12;
    }

    v6 = nrdSharedLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v10 = 138543362;
      v11 = v7;
      v8 = "Activity %{public}@ will be deferred because daemon needs to exit.";
      goto LABEL_9;
    }
  }

  v9 = 2;
LABEL_12:
  v3[2](v3, v9);
}

- (void)scheduleNRDUpdateBrainPeriodicScan
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"NRDBrainPeriodicScanInterval"];

  if (v4)
  {
    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = @"NRDBrainPeriodicScanInterval";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found %{public}@ in defaults", buf, 0xCu);
    }

    [v4 doubleValue];
    [(NRDUpdateDCore *)self _minimumInterval:?];
    v7 = v6;
  }

  else
  {
    v7 = XPC_ACTIVITY_INTERVAL_7_DAYS;
  }

  v8 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_autoscan"];
  v9 = v8;
  if (v8)
  {
    [v8 setInterval:v7];
    [v9 setDelay:v7 * 0.5];
    [v9 setQualityOfService:{-[NRDUpdateDCore getSchedulerQOS](self, "getSchedulerQOS")}];
    delegate = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(delegate, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(delegate, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    [v9 _setAdditionalXPCActivityProperties:delegate];
    [(NRDUpdateDCore *)self setPeriodicScheduler:v9];
    v11 = nrdSharedLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking in periodic activity for brain scan", buf, 2u);
    }

    v12 = [v9 description];
    [v9 identifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke;
    v18[3] = &unk_100018B28;
    v20 = v19 = v12;
    selfCopy = self;
    v22 = v7;
    v13 = v20;
    v14 = v12;
    [v9 setCheckInHandler:v18];
    [v9 setPreregistered:1];
    [v9 setRepeats:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke_485;
    v15[3] = &unk_1000187B8;
    v16 = v9;
    selfCopy2 = self;
    [v16 scheduleWithBlock:v15];
  }

  else
  {
    delegate = [(NRDUpdateDCore *)self delegate];
    [delegate requestExit:1 reason:@"Failed to schedule periodic scan for NRD brain update"];
  }
}

void __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v24 = 138543618;
    v25 = v3;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in.", &v24, 0x16u);
  }

  v5 = [*(a1 + 48) periodicScheduler];
  [v5 interval];
  v7 = v6;

  v8 = nrdSharedLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 48) periodicScheduler];
    v10 = [*(a1 + 48) periodicScheduler];
    v11 = [v10 identifier];
    v24 = 138543874;
    v25 = v9;
    v26 = 2114;
    v27 = v11;
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ was preregistered with interval: %lf", &v24, 0x20u);
  }

  v12 = *(a1 + 56);
  if (v12 != v7)
  {
    v13 = [*(a1 + 48) periodicScheduler];
    [v13 setInterval:v12];

    v14 = *(a1 + 56) * 0.5;
    v15 = [*(a1 + 48) periodicScheduler];
    [v15 setDelay:v14];

    v16 = nrdSharedLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 48) periodicScheduler];
      v18 = [*(a1 + 48) periodicScheduler];
      v19 = [v18 identifier];
      v20 = *(a1 + 56);
      v24 = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      v28 = 2048;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ new interval: %lf", &v24, 0x20u);
    }
  }

  v21 = nrdSharedLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = 138543618;
    v25 = v22;
    v26 = 2114;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in complete.", &v24, 0x16u);
  }
}

void __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke_485(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ fired", &v9, 0xCu);
  }

  if ([*(a1 + 32) shouldDefer])
  {
    v6 = nrdSharedLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ is deferred", &v9, 0xCu);
    }

    v8 = 2;
  }

  else
  {
    [*(a1 + 40) performUpdate:&off_100019B50];
    v8 = 1;
  }

  v3[2](v3, v8);
}

- (BOOL)isPasscodeLocked
{
  v5[0] = kMKBUserSessionIDKey;
  v5[1] = @"ExtendedDeviceLockState";
  v6[0] = &off_100019AB8;
  v6[1] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v2 = MKBGetDeviceLockState();
  return (v2 < 7) & (0x46u >> v2);
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  eventCopy = event;
  stateCopy = state;
  infoCopy = info;
  nextStateCopy = nextState;
  v19 = nrdSharedLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138544130;
    v24 = actionCopy;
    v25 = 2114;
    v26 = eventCopy;
    v27 = 2114;
    v28 = stateCopy;
    v29 = 2114;
    v30 = nextStateCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PerformAction: Action:%{public}@ Event:%{public}@ inState:%{public}@ nextState:%{public}@", &v23, 0x2Au);
  }

  if ([actionCopy isEqualToString:kSUCoreFSMActionNoOp])
  {
    v20 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:kSU_A_LoadPersisted])
    {
      v21 = [(NRDUpdateDCore *)self actionLoadPersisted:error];
    }

    else if ([actionCopy isEqualToString:@"ActionBeginBrainScan"])
    {
      v21 = [(NRDUpdateDCore *)self actionBeginBrainScan:error];
    }

    else if ([actionCopy isEqualToString:@"ActionDownloadBrain"])
    {
      v21 = [(NRDUpdateDCore *)self actionDownloadBrainUpdate:error];
    }

    else if ([actionCopy isEqualToString:@"ActionCheckDeviceUnlockConstraint"])
    {
      v21 = [(NRDUpdateDCore *)self actionCheckDeviceUnlockConstraint:error];
    }

    else if ([actionCopy isEqualToString:@"ActionWaitForUnlock"])
    {
      v21 = [(NRDUpdateDCore *)self actionWaitForUnlock:error];
    }

    else if ([actionCopy isEqualToString:@"ActionLoadBrain"])
    {
      v21 = [(NRDUpdateDCore *)self actionLoadBrain:error];
    }

    else if ([actionCopy isEqualToString:@"ActionRunBrain"])
    {
      v21 = [(NRDUpdateDCore *)self actionRunBrain:error];
    }

    else if ([actionCopy isEqualToString:@"ActionScheduleRetry"])
    {
      v21 = [(NRDUpdateDCore *)self actionScheduleRetry:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ActionPeriodicScan"])
    {
      v21 = [(NRDUpdateDCore *)self actionPeriodicScan:error];
    }

    else
    {
      v21 = [(NRDUpdateDCore *)self actionUnknownAction:actionCopy error:error];
    }

    v20 = v21;
  }

  return v20;
}

- (void)performUpdate:(id)update
{
  updateCopy = update;
  updateQueue = [(NRDUpdateDCore *)self updateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __32__NRDUpdateDCore_performUpdate___block_invoke;
  v7[3] = &unk_1000188B8;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(updateQueue, v7);
}

intptr_t __32__NRDUpdateDCore_performUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"TriggeredByDeviceUnlock"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = nrdSharedLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Continuing update on device unlock event", buf, 2u);
    }

    v5 = [*(a1 + 40) updatedFSM];
    v6 = v5;
    v7 = @"DeviceUnlocked";
  }

  else
  {
    v8 = [*(a1 + 32) objectForKey:@"TriggeredByPeriodicActivity"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = nrdSharedLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "perform periodic scan", v12, 2u);
      }

      [*(a1 + 40) setForceBrainUpdate:1];
      v5 = [*(a1 + 40) updatedFSM];
      v6 = v5;
      v7 = @"PeriodicScanRequested";
    }

    else
    {
      v5 = [*(a1 + 40) updatedFSM];
      v6 = v5;
      v7 = @"ProceedToNextUpdateStep";
    }
  }

  [v5 postEvent:v7];

  return dispatch_semaphore_wait(*(*(a1 + 40) + 8), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)newSchedulerWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v7 = [[NRDBackgroundActivitySchedulerServerImpl alloc] initWithIdentifier:identifierCopy];
  v8 = nrdSharedLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ created.", &v9, 0x16u);
  }

  replyCopy[2](replyCopy, v7);
}

- (void)newBrain:(id)brain
{
  brainCopy = brain;
  v5 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:112 userInfo:0];
  v6 = nrdSharedLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"(unversioned)";
    if (brainCopy)
    {
      v7 = brainCopy;
    }

    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got newBrain notification, brainVersion:%{public}@", &v9, 0xCu);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  [delegate requestExit:0 reason:@"NRD brain has downloaded a new brain (via delegate)" relaunchError:v5];
}

- (void)connectionInterrupted
{
  v3 = nrdSharedLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got connectionInterrupted notification", v5, 2u);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  [delegate requestExit:1 reason:@"NRD brain connection has been unexpectedly interrupted"];
}

- (void)connectionInvalidated
{
  v3 = nrdSharedLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got connectionInvalidated notification", v5, 2u);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  [delegate requestExit:1 reason:@"NRD brain connection has been unexpectedly invalidated"];
}

- (void)actionUnknownAction:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_1();
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "In unknown state!..action: %{public}@ error:%{public}@", v5, 0x16u);
}

@end