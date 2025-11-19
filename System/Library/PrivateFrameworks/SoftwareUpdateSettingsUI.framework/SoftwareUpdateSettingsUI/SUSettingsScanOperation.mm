@interface SUSettingsScanOperation
+ (id)_generateStateTable;
- (BOOL)shouldConsiderErrorAsSuccessfulCase:(id)a3;
- (SUSettingsScanOperation)initWithUUID:(id)a3 usingSUManagerClient:(id)a4 andBetaManager:(id)a5 withCompletionQueue:(id)a6;
- (id)baseDomain;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_CheckForAvailableUpdate:(id)a3 error:(id *)a4;
- (int64_t)action_ObserveConcurrentQueries:(id)a3 error:(id *)a4;
- (int64_t)action_QueryCurrentDownload:(id)a3 error:(id *)a4;
- (int64_t)action_QueryFullScanMetadata:(id)a3 error:(id *)a4;
- (int64_t)action_QueryUpdatesInfo:(id)a3 error:(id *)a4;
- (int64_t)action_ReportScanCanceled:(id)a3 error:(id *)a4;
- (int64_t)action_ReportScanOutcome:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)cancel:(id)a3;
- (void)checkForAvailableUpdatesWithCompletionHandler:(id)a3;
- (void)checkForAvailableUpdatesWithOptions:(id)a3 usingCompletionHandler:(id)a4;
- (void)checkForAvailableUpdatesWithOptions:(id)a3 usingCompletionHandler:(id)a4 usingThirdPartyScanResults:(id)a5 andScanError:(id)a6;
- (void)checkForBetaPrograms:(id)a3 withReplyHandler:(id)a4;
- (void)checkForMDMRestrictions:(id)a3 withReplyHandler:(id)a4;
- (void)checkIfAutoUpdateScheduled:(id)a3 withReplyHandler:(id)a4;
- (void)checkIsEligibleForRollback:(id)a3 withReplyHandler:(id)a4;
- (void)invalidateMachine;
- (void)queryDDMDeclaration:(id)a3 withReplyHandler:(id)a4;
- (void)queryRollbackStatus:(id)a3 withReplyHandler:(id)a4;
- (void)refreshBetaProgramsWithOptions:(id)a3 completionHandler:(id)a4;
- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5 options:(id)a6 previouslyDiscoveredDownload:(id)a7 encounteredError:(id)a8 completionHandler:(id)a9;
- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5 options:(id)a6 previouslyDiscoveredDownload:(id)a7 previouslyDiscoveredAutoInstallOperation:(id)a8 encounteredError:(id)a9 completionHandler:(id)a10;
- (void)scanForDeviceEligibleBetaPrograms:(id)a3 withReplyHandler:(id)a4;
- (void)scheduleConcurrentActionWithSelector:(SEL)a3 eventInfo:(id)a4;
- (void)startRefreshOperation:(id)a3 withEventInfo:(id)a4 completionHandler:(id)a5;
@end

@implementation SUSettingsScanOperation

+ (id)_generateStateTable
{
  v97[6] = *MEMORY[0x277D85DE8];
  v37[2] = a1;
  v37[1] = a2;
  v96[0] = @"Idle";
  v94[0] = @"CheckForAvailableUpdate";
  v5 = MEMORY[0x277D64800];
  v92[0] = *MEMORY[0x277D64800];
  v93[0] = @"CheckingForAvailableUpdate";
  v4 = MEMORY[0x277D644B8];
  v92[1] = *MEMORY[0x277D644B8];
  v93[1] = @"QueryFullScanMetadata";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:?];
  v95[0] = v34;
  v94[1] = @"RefreshScanResults";
  v90[0] = *v5;
  v91[0] = @"QueryingCurrentDownload";
  v90[1] = *v4;
  v91[1] = @"QueryCurrentDownload";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  v95[1] = v33;
  v94[2] = @"RefreshScanResultsPostDownload";
  v88[0] = *v5;
  v89[0] = @"QueryingUpdatesInfo";
  v88[1] = *v4;
  v89[1] = @"QueryUpdatesInfo";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v95[2] = v32;
  v94[3] = @"CancelScan";
  v86[0] = *v5;
  v87[0] = @"Idle";
  v86[1] = *v4;
  v87[1] = @"ReportScanCanceled";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v95[3] = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:?];
  v97[0] = v30;
  v96[1] = @"CheckingForAvailableUpdate";
  v84[0] = @"PerformFullScan";
  v82 = *v4;
  v83 = @"CheckForAvailableUpdate";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:?];
  v85[0] = v29;
  v84[1] = @"UpdatesAvailable";
  v80[0] = *v5;
  v81[0] = @"QueryingCurrentDownload";
  v80[1] = *v4;
  v81[1] = @"QueryCurrentDownload";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
  v85[1] = v28;
  v84[2] = @"NoUpdateAvailable";
  v78[0] = *v5;
  v79[0] = @"QueryingCurrentDownload";
  v78[1] = *v4;
  v79[1] = @"QueryCurrentDownload";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v85[2] = v27;
  v84[3] = @"CheckingForUpdatesFailed";
  v76[0] = *v5;
  v77[0] = @"Idle";
  v76[1] = *v4;
  v77[1] = @"ReportScanOutcome";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v85[3] = v26;
  v84[4] = @"ConcurrentActionFailed";
  v74[0] = *v5;
  v75[0] = @"Idle";
  v74[1] = *v4;
  v75[1] = @"ReportScanOutcome";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  v85[4] = v25;
  v84[5] = @"CancelScan";
  v72[0] = *v5;
  v73[0] = @"Idle";
  v72[1] = *v4;
  v73[1] = @"ReportScanCanceled";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
  v85[5] = v24;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:?];
  v97[1] = v23;
  v96[2] = @"QueryingCurrentDownload";
  v70[0] = @"QueryCurrentDownloadSuccess";
  v68[0] = *v5;
  v69[0] = @"QueryingUpdatesInfo";
  v68[1] = *v4;
  v69[1] = @"QueryUpdatesInfo";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
  v71[0] = v22;
  v70[1] = @"QueryCurrentDownloadFailed";
  v66[0] = *v5;
  v67[0] = @"Idle";
  v66[1] = *v4;
  v67[1] = @"ReportScanFailed";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v71[1] = v21;
  v70[2] = @"NoUpdateAvailable";
  v64[0] = *v5;
  v65[0] = @"ObservingConcurrentQueries";
  v64[1] = *v4;
  v65[1] = @"ObserveConcurrentQueries";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  v71[2] = v20;
  v70[3] = @"ConcurrentActionFailed";
  v62[0] = *v5;
  v63[0] = @"Idle";
  v62[1] = *v4;
  v63[1] = @"ReportScanOutcome";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
  v71[3] = v19;
  v70[4] = @"CancelScan";
  v60[0] = *v5;
  v61[0] = @"Idle";
  v60[1] = *v4;
  v61[1] = @"ReportScanCanceled";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
  v71[4] = v18;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:5];
  v97[2] = v17;
  v96[3] = @"QueryingUpdatesInfo";
  v58[0] = @"QueryUpdatesInfoSuccess";
  v56[0] = *v5;
  v57[0] = @"ObservingConcurrentQueries";
  v56[1] = *v4;
  v57[1] = @"ObserveConcurrentQueries";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v59[0] = v16;
  v58[1] = @"QueryUpdatesInfoFailed";
  v54[0] = *v5;
  v55[0] = @"Idle";
  v54[1] = *v4;
  v55[1] = @"ReportScanOutcome";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v59[1] = v15;
  v58[2] = @"ConcurrentActionFailed";
  v52[0] = *v5;
  v53[0] = @"Idle";
  v52[1] = *v4;
  v53[1] = @"ReportScanOutcome";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v59[2] = v14;
  v58[3] = @"CancelScan";
  v50[0] = *v5;
  v51[0] = @"Idle";
  v50[1] = *v4;
  v51[1] = @"ReportScanCanceled";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  v59[3] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
  v97[3] = v12;
  v96[4] = @"ObservingConcurrentQueries";
  v48[0] = @"AllConcurrentActionsFinished";
  v46[0] = *v5;
  v47[0] = @"Idle";
  v46[1] = *v4;
  v47[1] = @"ReportScanOutcome";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v49[0] = v11;
  v48[1] = @"ConcurrentActionFailed";
  v44[0] = *v5;
  v45[0] = @"Idle";
  v44[1] = *v4;
  v45[1] = @"ReportScanOutcome";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v49[1] = v10;
  v48[2] = @"CancelScan";
  v42[0] = *v5;
  v43[0] = @"Idle";
  v42[1] = *v4;
  v43[1] = @"ReportScanCanceled";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v49[2] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v97[4] = v8;
  v96[5] = *MEMORY[0x277D647E8];
  v40 = *MEMORY[0x277D647E0];
  v38 = *v5;
  v39 = *MEMORY[0x277D647F0];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v41 = v7;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v97[5] = v6;
  v37[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:6];
  MEMORY[0x277D82BD8](v6);
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
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v36 = [v2 initWithDictionary:v37[0] copyItems:1];
  v35 = MEMORY[0x277D82BE0](v36);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v37, 0);
  *MEMORY[0x277D85DE8];

  return v35;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v15 = [(SUSettingsScanOperation *)v24 scanFSM];
  v14 = [(SUCoreFSM *)v15 extendedStateQueue];
  dispatch_assert_queue_V2(v14);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v16 = MEMORY[0x277D82BE0](v24);
  objc_sync_enter(v16);
  if (!v24->_canceled || ([location[0] isEqualToString:@"ReportScanCanceled"] & 1) != 0)
  {
    v18 = 0;
  }

  else
  {
    v25 = 0;
    v18 = 1;
  }

  objc_sync_exit(v16);
  MEMORY[0x277D82BD8](v16);
  if (!v18)
  {
    if ([location[0] isEqualToString:*MEMORY[0x277D647D0]])
    {
      v17 = 0;
    }

    else if ([location[0] isEqualToString:@"QueryFullScanMetadata"])
    {
      v17 = [(SUSettingsScanOperation *)v24 action_QueryFullScanMetadata:v20 error:a8];
    }

    else if ([location[0] isEqualToString:@"CheckForAvailableUpdate"])
    {
      v17 = [(SUSettingsScanOperation *)v24 action_CheckForAvailableUpdate:v20 error:a8];
    }

    else if ([location[0] isEqualToString:@"QueryCurrentDownload"])
    {
      v17 = [(SUSettingsScanOperation *)v24 action_QueryCurrentDownload:v20 error:a8];
    }

    else if ([location[0] isEqualToString:@"QueryUpdatesInfo"])
    {
      v17 = [(SUSettingsScanOperation *)v24 action_QueryUpdatesInfo:v20 error:a8];
    }

    else if ([location[0] isEqualToString:@"ObserveConcurrentQueries"])
    {
      v17 = [(SUSettingsScanOperation *)v24 action_ObserveConcurrentQueries:v20 error:a8];
    }

    else if ([location[0] isEqualToString:@"ReportScanOutcome"])
    {
      v17 = [(SUSettingsScanOperation *)v24 action_ReportScanOutcome:v20 error:a8];
    }

    else
    {
      v17 = [(SUSettingsScanOperation *)v24 actionUnknownAction:location[0] error:a8];
    }

    v25 = v17;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v25;
}

- (int64_t)action_QueryFullScanMetadata:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(SUSettingsScanOperation *)v10 scanFSM];
  v7 = [(SUCoreFSM *)v8 extendedStateQueue];
  dispatch_assert_queue_V2(v7);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  if (location[0])
  {
    [(SUSettingsScanOperation *)v10 scheduleConcurrentActionWithSelector:sel_queryDDMDeclaration_withReplyHandler_ eventInfo:location[0]];
    [(SUSettingsScanOperation *)v10 scheduleConcurrentActionWithSelector:sel_checkForMDMRestrictions_withReplyHandler_ eventInfo:location[0]];
    [(SUSettingsScanOperation *)v10 scheduleConcurrentActionWithSelector:sel_checkForBetaPrograms_withReplyHandler_ eventInfo:location[0]];
    [(SUSettingsScanOperation *)v10 scheduleConcurrentActionWithSelector:sel_queryRollbackStatus_withReplyHandler_ eventInfo:location[0]];
    [(SUSettingsScanOperation *)v10 scheduleConcurrentActionWithSelector:sel_checkIsEligibleForRollback_withReplyHandler_ eventInfo:location[0]];
    [(SUCoreFSM *)v10->_scanFSM followupEvent:@"PerformFullScan" withInfo:location[0]];
    v11 = 0;
  }

  else
  {
    v6 = [(SUSettingsScanOperation *)v10 scanFSM];
    v5 = [(SUCoreFSM *)v6 diag];
    [v5 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v11 = 8102;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (int64_t)action_CheckForAvailableUpdate:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = self;
  v43 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v41 = a4;
  v22 = [(SUSettingsScanOperation *)v44 scanFSM];
  v21 = [(SUCoreFSM *)v22 extendedStateQueue];
  dispatch_assert_queue_V2(v21);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  if (location)
  {
    v17 = [location options];
    v38 = 0;
    v36 = 0;
    v18 = 1;
    if (v17)
    {
      v39 = [location options];
      v38 = 1;
      v37 = [v39 scanOptions];
      v36 = 1;
      v18 = v37 == 0;
    }

    if (v36)
    {
      MEMORY[0x277D82BD8](v37);
    }

    if (v38)
    {
      MEMORY[0x277D82BD8](v39);
    }

    MEMORY[0x277D82BD8](v17);
    if (v18)
    {
      v16 = [(SUSettingsScanOperation *)v44 scanFSM];
      v15 = [(SUCoreFSM *)v16 diag];
      [v15 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"Missing eventInfo parameter: scanOptions." withResult:8102 withError:0];
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      v45 = 8102;
      v40 = 1;
    }

    else
    {
      objc_initWeak(&from, v44);
      v27 = MEMORY[0x277D85DD0];
      v28 = -1073741824;
      v29 = 0;
      v30 = __64__SUSettingsScanOperation_action_CheckForAvailableUpdate_error___block_invoke;
      v31 = &unk_279CBF1E0;
      objc_copyWeak(v33, &from);
      v33[1] = v43;
      v32 = MEMORY[0x277D82BE0](location);
      v34 = MEMORY[0x26D66A460](&v27);
      v25 = 0;
      v13 = [location thirdPartyDiscoveredScanResults];
      v14 = 0;
      if (!v13)
      {
        v26 = [location thirdPartyDiscoveredScanError];
        v25 = 1;
        v14 = v26 == 0;
      }

      if (v25)
      {
        MEMORY[0x277D82BD8](v26);
      }

      MEMORY[0x277D82BD8](v13);
      if (v14)
      {
        v12 = [(SUSettingsScanOperation *)v44 suClient];
        v11 = [location options];
        v10 = [v11 scanOptions];
        [SUManagerClient scanForUpdates:v12 withScanResults:"scanForUpdates:withScanResults:"];
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
      }

      else
      {
        v9 = [(SUSettingsScanOperation *)v44 log];
        v24 = [(SUCoreLog *)v9 oslog];
        MEMORY[0x277D82BD8](v9);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [(SUSettingsScanOperation *)v44 scanUUID];
          __os_log_helper_16_2_2_8_32_8_66(v46, "[SUSettingsScanOperation action_CheckForAvailableUpdate:error:]", v8);
          _os_log_impl(&dword_26AC94000, v24, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: Got third-party discovered scan results. Using them instead of performing a new scan.", v46, 0x16u);
          MEMORY[0x277D82BD8](v8);
        }

        objc_storeStrong(&v24, 0);
        v7 = v34;
        v6 = [location thirdPartyDiscoveredScanResults];
        v5 = [location thirdPartyDiscoveredScanError];
        v7[2](v7, v6);
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
      }

      v45 = 0;
      v40 = 1;
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v32, 0);
      objc_destroyWeak(v33);
      objc_destroyWeak(&from);
    }
  }

  else
  {
    v20 = [(SUSettingsScanOperation *)v44 scanFSM];
    v19 = [(SUCoreFSM *)v20 diag];
    [v19 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v45 = 8102;
    v40 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v45;
}

void __64__SUSettingsScanOperation_action_CheckForAvailableUpdate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v38 = 0;
  objc_storeStrong(&v38, a3);
  v37[1] = a1;
  v37[0] = objc_loadWeakRetained((a1 + 40));
  v24 = 0;
  if (!v37[0])
  {
    v23 = SUSettingsSharedLogger();
    v36 = [v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v35 = 16;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      log = v36;
      type = v35;
      v22 = NSStringFromSelector(*(a1 + 48));
      v34 = MEMORY[0x277D82BE0](v22);
      __os_log_helper_16_2_2_8_32_8_66(v42, "[SUSettingsScanOperation action_CheckForAvailableUpdate:error:]_block_invoke", v34);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v42, 0x16u);
      MEMORY[0x277D82BD8](v22);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&v36, 0);
    v33 = 1;
    v24 = 1;
  }

  if (v24)
  {
    v32 = 1;
    goto LABEL_26;
  }

  v19 = [v37[0] log];
  v31 = [v19 oslog];
  MEMORY[0x277D82BD8](v19);
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v37[0] scanUUID];
    __os_log_helper_16_2_4_8_32_8_66_8_66_8_64(v41, "[SUSettingsScanOperation action_CheckForAvailableUpdate:error:]_block_invoke", v18, v38, location[0]);
    _os_log_impl(&dword_26AC94000, v31, v30, "%s [%{public}@]: scanForUpdates results: error: %{public}@; SUScanResults: %@", v41, 0x2Au);
    MEMORY[0x277D82BD8](v18);
  }

  objc_storeStrong(&v31, 0);
  if (*(v37[0] + 8))
  {
    v17 = [v37[0] log];
    v29 = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v37[0] scanUUID];
      __os_log_helper_16_2_2_8_32_8_66(v40, "[SUSettingsScanOperation action_CheckForAvailableUpdate:error:]_block_invoke", v16);
      _os_log_impl(&dword_26AC94000, v29, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: The task has already been canceled. Stopping.", v40, 0x16u);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v29, 0);
    v32 = 1;
  }

  else
  {
    [*(a1 + 32) setScanError:v38];
    if (v38 && ([v37[0] shouldConsiderErrorAsSuccessfulCase:v38] & 1) == 0)
    {
      v15 = [v37[0] scanFSM];
      v3 = [SUSettingsScanParam alloc];
      v14 = [(SUSettingsScanParam *)v3 initWithError:v38];
      [v15 postEvent:@"CheckingForUpdatesFailed" withInfo:?];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      v32 = 1;
      goto LABEL_26;
    }

    if (location[0])
    {
      [*(a1 + 32) setEmptyScanResults:0];
      v6 = *(a1 + 32);
      v7 = [location[0] preferredDescriptor];
      [v6 setPreferredDescriptor:?];
      MEMORY[0x277D82BD8](v7);
      v8 = *(a1 + 32);
      v9 = [location[0] alternateDescriptor];
      [v8 setAlternateDescriptor:?];
      MEMORY[0x277D82BD8](v9);
      v10 = *(a1 + 32);
      v11 = [location[0] latestUpdate];
      [v10 setLatestDescriptor:?];
      MEMORY[0x277D82BD8](v11);
      v12 = [location[0] preferredDescriptor];
      v27 = 0;
      v13 = 1;
      if (!v12)
      {
        v28 = [location[0] alternateDescriptor];
        v27 = 1;
        v13 = v28 != 0;
      }

      if (v27)
      {
        MEMORY[0x277D82BD8](v28);
      }

      MEMORY[0x277D82BD8](v12);
      if (v13)
      {
        v5 = [v37[0] scanFSM];
        [v5 postEvent:@"UpdatesAvailable" withInfo:*(a1 + 32)];
        MEMORY[0x277D82BD8](v5);
        v32 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      [*(a1 + 32) setEmptyScanResults:1];
    }

    v4 = [v37[0] scanFSM];
    [v4 postEvent:@"NoUpdateAvailable" withInfo:*(a1 + 32)];
    MEMORY[0x277D82BD8](v4);
    v32 = 0;
  }

LABEL_26:
  objc_storeStrong(v37, 0);
  if (!v32)
  {
    v32 = 0;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_QueryCurrentDownload:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = self;
  v36 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v34 = a4;
  v19 = [(SUSettingsScanOperation *)v37 scanFSM];
  v18 = [(SUCoreFSM *)v19 extendedStateQueue];
  dispatch_assert_queue_V2(v18);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  if (location)
  {
    objc_initWeak(&from, v37);
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __61__SUSettingsScanOperation_action_QueryCurrentDownload_error___block_invoke;
    v28 = &unk_279CBF230;
    objc_copyWeak(v30, &from);
    v30[1] = v36;
    v29 = MEMORY[0x277D82BE0](location);
    v31 = MEMORY[0x26D66A460](&v24);
    v15 = [location currentDownload];
    MEMORY[0x277D82BD8](v15);
    if (v15)
    {
      v13 = [(SUSettingsScanOperation *)v37 log];
      v23 = [(SUCoreLog *)v13 oslog];
      MEMORY[0x277D82BD8](v13);
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(SUSettingsScanOperation *)v37 scanUUID];
        v11 = [location currentDownload];
        v10 = [v11 descriptor];
        v9 = [v10 humanReadableUpdateName];
        v21 = MEMORY[0x277D82BE0](v9);
        v8 = [location currentDownload];
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v39, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]", v12, v21, v8);
        _os_log_impl(&dword_26AC94000, v23, v22, "%s [%{public}@]: Scan operation has already been given a download (%{public}@, %p) - skipping on the download lookup.", v39, 0x2Au);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&v23, 0);
      v7 = v31;
      v6 = [location currentDownload];
      v5 = [location operationError];
      v7[2](v7, v6);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v14 = [(SUSettingsScanOperation *)v37 suClient];
      [(SUManagerClient *)v14 download:v31];
      MEMORY[0x277D82BD8](v14);
    }

    v38 = 0;
    v33 = 1;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v29, 0);
    objc_destroyWeak(v30);
    objc_destroyWeak(&from);
  }

  else
  {
    v17 = [(SUSettingsScanOperation *)v37 scanFSM];
    v16 = [(SUCoreFSM *)v17 diag];
    [v16 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v38 = 8102;
    v33 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v38;
}

void __61__SUSettingsScanOperation_action_QueryCurrentDownload_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v58 = 0;
  objc_storeStrong(&v58, a3);
  v57[1] = a1;
  v57[0] = objc_loadWeakRetained((a1 + 40));
  v29 = 0;
  if (!v57[0])
  {
    v28 = SUSettingsSharedLogger();
    v56 = [v28 oslog];
    MEMORY[0x277D82BD8](v28);
    v55 = 16;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      log = v56;
      type = v55;
      v25 = NSStringFromSelector(*(a1 + 48));
      v54 = MEMORY[0x277D82BE0](v25);
      __os_log_helper_16_2_2_8_32_8_66(v63, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]_block_invoke", v54);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v63, 0x16u);
      MEMORY[0x277D82BD8](v25);
      objc_storeStrong(&v54, 0);
    }

    objc_storeStrong(&v56, 0);
    v53 = 1;
    v29 = 1;
  }

  if (v29)
  {
    v52 = 1;
  }

  else
  {
    v24 = [v57[0] log];
    v51 = [v24 oslog];
    MEMORY[0x277D82BD8](v24);
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v57[0] scanUUID];
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v62, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]_block_invoke", v23, v58, location[0], location[0]);
      _os_log_impl(&dword_26AC94000, v51, v50, "%s [%{public}@]: error: %{public}@, download: <%p> %{public}@", v62, 0x34u);
      MEMORY[0x277D82BD8](v23);
    }

    objc_storeStrong(&v51, 0);
    if (*(v57[0] + 8))
    {
      v22 = [v57[0] log];
      v49 = [v22 oslog];
      MEMORY[0x277D82BD8](v22);
      v48 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v57[0] scanUUID];
        __os_log_helper_16_2_2_8_32_8_66(v61, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]_block_invoke", v21);
        _os_log_impl(&dword_26AC94000, v49, v48, "%s [%{public}@]: The task has already been canceled. Stopping.", v61, 0x16u);
        MEMORY[0x277D82BD8](v21);
      }

      objc_storeStrong(&v49, 0);
      v52 = 1;
    }

    else if (!v58 || ([v57[0] shouldConsiderErrorAsSuccessfulCase:v58] & 1) != 0)
    {
      v46 = 0;
      v18 = 0;
      if (!location[0])
      {
        v47 = [v58 domain];
        v46 = 1;
        v18 = 0;
        if ([v47 isEqualToString:*MEMORY[0x277D64910]])
        {
          v18 = [v58 code] == 11;
        }
      }

      if (v46)
      {
        MEMORY[0x277D82BD8](v47);
      }

      if (v18)
      {
        v17 = [[SUSUIUninitializedDownload alloc] initWithDescriptor:0];
        v3 = location[0];
        location[0] = v17;
        MEMORY[0x277D82BD8](v3);
        v16 = [v57[0] log];
        oslog = [v16 oslog];
        MEMORY[0x277D82BD8](v16);
        v44 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v57[0] scanUUID];
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v60, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]_block_invoke", v15, v58, location[0]);
          _os_log_impl(&dword_26AC94000, oslog, v44, "%s [%{public}@]: Received a nil download and SUErrorCodeDownloadInProgress error (%{public}@) - assigned SUDownloadUninitialized to the download object: %{public}@", v60, 0x2Au);
          MEMORY[0x277D82BD8](v15);
        }

        objc_storeStrong(&oslog, 0);
      }

      v42 = 0;
      v40 = 0;
      v14 = 0;
      if (!location[0])
      {
        v13 = 1;
        if (([*(a1 + 32) emptyScanResults] & 1) == 0)
        {
          v43 = [*(a1 + 32) preferredDescriptor];
          v42 = 1;
          v12 = 0;
          if (!v43)
          {
            v41 = [*(a1 + 32) alternateDescriptor];
            v40 = 1;
            v12 = v41 == 0;
          }

          v13 = v12;
        }

        v14 = v13;
      }

      if (v40)
      {
        MEMORY[0x277D82BD8](v41);
      }

      if (v42)
      {
        MEMORY[0x277D82BD8](v43);
      }

      if (v14)
      {
        v11 = [v57[0] scanFSM];
        [v11 postEvent:@"NoUpdateAvailable" withInfo:*(a1 + 32)];
        MEMORY[0x277D82BD8](v11);
        v52 = 1;
      }

      else
      {
        [*(a1 + 32) setCurrentDownload:location[0]];
        v39 = objc_alloc_init(SUSUIUpdateAgreementManager);
        v9 = [location[0] downloadOptions];
        v10 = [v9 downloadFeeAgreementStatus];
        v8 = [location[0] descriptor];
        [v39 setCellularFeeAgreementStatus:v10 forUpdate:?];
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        v6 = [location[0] downloadOptions];
        v7 = [v6 termsAndConditionsAgreementStatus];
        v5 = [location[0] descriptor];
        [v39 setTermsAgreementStatus:v7 forUpdate:?];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        [v57[0] scheduleConcurrentActionWithSelector:sel_checkIfAutoUpdateScheduled_withReplyHandler_ eventInfo:*(a1 + 32)];
        v4 = [v57[0] suClient];
        v32 = MEMORY[0x277D85DD0];
        v33 = -1073741824;
        v34 = 0;
        v35 = __61__SUSettingsScanOperation_action_QueryCurrentDownload_error___block_invoke_321;
        v36 = &unk_279CBF208;
        objc_copyWeak(v38, (a1 + 40));
        v38[1] = *(a1 + 48);
        v37 = MEMORY[0x277D82BE0](*(a1 + 32));
        [v4 isClearingSpaceForDownload:&v32];
        MEMORY[0x277D82BD8](v4);
        objc_storeStrong(&v37, 0);
        objc_destroyWeak(v38);
        objc_storeStrong(&v39, 0);
        v52 = 0;
      }
    }

    else
    {
      v20 = [v57[0] scanFSM];
      v19 = [[SUSettingsScanParam alloc] initWithError:v58];
      [v20 postEvent:@"QueryCurrentDownloadFailed" withInfo:v19];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      v52 = 1;
    }
  }

  objc_storeStrong(v57, 0);
  if (!v52)
  {
    v52 = 0;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __61__SUSettingsScanOperation_action_QueryCurrentDownload_error___block_invoke_321(uint64_t a1, char a2, id obj)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v27 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v25[1] = a1;
  v25[0] = objc_loadWeakRetained((a1 + 40));
  v15 = 0;
  if (!v25[0])
  {
    v14 = SUSettingsSharedLogger();
    v24 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      v13 = NSStringFromSelector(*(a1 + 48));
      v22 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v31, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]_block_invoke", v22);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v31, 0x16u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v24, 0);
    v21 = 1;
    v15 = 1;
  }

  if (v15)
  {
    v20 = 1;
  }

  else
  {
    v10 = [v25[0] log];
    v19 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v25[0] scanUUID];
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v30, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]_block_invoke", v9, v27 & 1, location);
      _os_log_impl(&dword_26AC94000, v19, v18, "%s [%{public}@]: isClearingSpaceForDownload? %d, isClearingSpaceError: %{public}@", v30, 0x26u);
      MEMORY[0x277D82BD8](v9);
    }

    objc_storeStrong(&v19, 0);
    if (*(v25[0] + 8))
    {
      v8 = [v25[0] log];
      oslog = [v8 oslog];
      MEMORY[0x277D82BD8](v8);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v25[0] scanUUID];
        __os_log_helper_16_2_2_8_32_8_66(v29, "[SUSettingsScanOperation action_QueryCurrentDownload:error:]_block_invoke", v7);
        _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: The task has already been canceled. Stopping.", v29, 0x16u);
        MEMORY[0x277D82BD8](v7);
      }

      objc_storeStrong(&oslog, 0);
      v20 = 1;
    }

    else if (location)
    {
      v6 = [v25[0] scanFSM];
      v3 = [SUSettingsScanParam alloc];
      v5 = [(SUSettingsScanParam *)v3 initWithError:location];
      [v6 postEvent:@"QueryCurrentDownloadFailed" withInfo:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      v20 = 1;
    }

    else
    {
      [*(a1 + 32) setClearingSpaceForDownload:v27 & 1];
      v4 = [v25[0] scanFSM];
      [v4 postEvent:@"QueryCurrentDownloadSuccess" withInfo:*(a1 + 32)];
      MEMORY[0x277D82BD8](v4);
      v20 = 0;
    }
  }

  objc_storeStrong(v25, 0);
  if (!v20)
  {
    v20 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_QueryUpdatesInfo:(id)a3 error:(id *)a4
{
  v46 = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v43 = a4;
  v26 = [(SUSettingsScanOperation *)v46 scanFSM];
  v25 = [(SUCoreFSM *)v26 extendedStateQueue];
  dispatch_assert_queue_V2(v25);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  if (location)
  {
    v21 = [location preferredDescriptor];
    v40 = 0;
    v38 = 0;
    if (v21 || (v41 = [location alternateDescriptor], v40 = 1, v20 = 1, v41))
    {
      v39 = [location agreementManager];
      v38 = 1;
      v20 = v39 != 0;
    }

    if (v38)
    {
      MEMORY[0x277D82BD8](v39);
    }

    if (v40)
    {
      MEMORY[0x277D82BD8](v41);
    }

    MEMORY[0x277D82BD8](v21);
    if (v20)
    {
      v19 = [(SUSettingsScanOperation *)v46 scanFSM];
      v18 = [(SUCoreFSM *)v19 diag];
      [v18 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"Both the preferredUpdate and alternateUpdate are empty withResult:or agreementManager is missing." withError:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v47 = 8102;
      v42 = 1;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277D64890]);
      v9 = [location preferredDescriptor];
      v37 = [v8 initWithDescriptor:?];
      MEMORY[0x277D82BD8](v9);
      v10 = [location options];
      [v37 setAllowUnrestrictedCellularDownload:{objc_msgSend(v10, "allowUnrestrictedCellularDownload")}];
      MEMORY[0x277D82BD8](v10);
      v12 = [location agreementManager];
      v11 = [location preferredDescriptor];
      [v37 setDownloadFeeAgreementStatus:{objc_msgSend(v12, "cellularFeeAgreementStatusForUpdate:")}];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      v13 = objc_alloc(MEMORY[0x277D64890]);
      v14 = [location alternateDescriptor];
      v36 = [v13 initWithDescriptor:?];
      MEMORY[0x277D82BD8](v14);
      v15 = [location options];
      [v36 setAllowUnrestrictedCellularDownload:{objc_msgSend(v15, "allowUnrestrictedCellularDownload")}];
      MEMORY[0x277D82BD8](v15);
      v17 = [location agreementManager];
      v16 = [location alternateDescriptor];
      [v36 setDownloadFeeAgreementStatus:{objc_msgSend(v17, "cellularFeeAgreementStatusForUpdate:")}];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      objc_initWeak(&from, v46);
      v7 = [(SUSettingsScanOperation *)v46 suClient];
      v5 = v37;
      v6 = v36;
      v27 = MEMORY[0x277D85DD0];
      v28 = -1073741824;
      v29 = 0;
      v30 = __57__SUSettingsScanOperation_action_QueryUpdatesInfo_error___block_invoke;
      v31 = &unk_279CBF258;
      objc_copyWeak(v34, &from);
      v34[1] = v45;
      v32 = MEMORY[0x277D82BE0](location);
      v33 = MEMORY[0x277D82BE0](v46);
      [(SUManagerClient *)v7 updatesDownloadableWithOptions:v5 alternateDownloadOptions:v6 replyHandler:&v27];
      MEMORY[0x277D82BD8](v7);
      v47 = 0;
      v42 = 1;
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v32, 0);
      objc_destroyWeak(v34);
      objc_destroyWeak(&from);
      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v37, 0);
    }
  }

  else
  {
    v23 = [(SUSettingsScanOperation *)v46 scanFSM];
    v22 = [(SUCoreFSM *)v23 diag];
    [v22 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    v47 = 8102;
    v42 = 1;
  }

  objc_storeStrong(&location, 0);
  return v47;
}

void __57__SUSettingsScanOperation_action_QueryUpdatesInfo_error___block_invoke(uint64_t a1, char a2, char a3, id obj, void *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v50 = a1;
  v49 = a2;
  v48 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v46 = 0;
  objc_storeStrong(&v46, a5);
  v45[1] = a1;
  v45[0] = objc_loadWeakRetained((a1 + 48));
  v21 = 0;
  if (!v45[0])
  {
    v20 = SUSettingsSharedLogger();
    v44 = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    v43 = 16;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      log = v44;
      type = v43;
      v17 = NSStringFromSelector(*(a1 + 56));
      v42 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_2_8_32_8_66(v53, "[SUSettingsScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v42);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v53, 0x16u);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v42, 0);
    }

    objc_storeStrong(&v44, 0);
    v41 = 1;
    v21 = 1;
  }

  if (v21)
  {
    v40 = 1;
  }

  else
  {
    v16 = [v45[0] log];
    v39 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v45[0] scanUUID];
      v15 = v5;
      if (v49)
      {
        v6 = "YES";
      }

      else
      {
        v6 = "NO";
      }

      if (v48)
      {
        v7 = "YES";
      }

      else
      {
        v7 = "NO";
      }

      __os_log_helper_16_2_6_8_32_8_66_8_32_8_66_8_32_8_66(v52, "[SUSettingsScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v5, v6, location, v7, v46);
      _os_log_impl(&dword_26AC94000, v39, v38, "%s [%{public}@]: preferredDownloadable: %s, preferredError: %{public}@, alternateDownloadable: %s, alternateError: %{public}@", v52, 0x3Eu);
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&v39, 0);
    if (*(v45[0] + 8))
    {
      v14 = [v45[0] log];
      v37 = [v14 oslog];
      MEMORY[0x277D82BD8](v14);
      v36 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v45[0] scanUUID];
        __os_log_helper_16_2_2_8_32_8_66(v51, "[SUSettingsScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v13);
        _os_log_impl(&dword_26AC94000, v37, v36, "%s [%{public}@]: The task has already been canceled. Stopping.", v51, 0x16u);
        MEMORY[0x277D82BD8](v13);
      }

      objc_storeStrong(&v37, 0);
      v40 = 1;
    }

    else
    {
      [*(a1 + 32) setPreferredUpdateDownloadable:v49 & 1];
      [*(a1 + 32) setAlternateUpdateDownloadable:v48 & 1];
      [*(a1 + 32) setPreferredUpdateDownloadError:location];
      [*(a1 + 32) setAlternateUpdateDownloadError:v46];
      v11 = [*(a1 + 32) currentDownload];
      v34 = 0;
      v32 = 0;
      v12 = 0;
      if (v11)
      {
        v35 = [*(a1 + 32) currentDownload];
        v34 = 1;
        v33 = [v35 progress];
        v32 = 1;
        v12 = [v33 isDone];
      }

      if (v32)
      {
        MEMORY[0x277D82BD8](v33);
      }

      if (v34)
      {
        MEMORY[0x277D82BD8](v35);
      }

      MEMORY[0x277D82BD8](v11);
      if (v12)
      {
        v31 = objc_alloc_init(MEMORY[0x277D648A0]);
        [v31 setIgnorableConstraints:{objc_msgSend(objc_opt_class(), "installationIgnorableConstraints")}];
        v9 = *(*(a1 + 40) + 88);
        v10 = v31;
        v24 = MEMORY[0x277D85DD0];
        v25 = -1073741824;
        v26 = 0;
        v27 = __57__SUSettingsScanOperation_action_QueryUpdatesInfo_error___block_invoke_331;
        v28 = &unk_279CBF208;
        objc_copyWeak(v30, (a1 + 48));
        v30[1] = *(a1 + 56);
        v29 = MEMORY[0x277D82BE0](*(a1 + 32));
        [v9 isUpdateReadyForInstallationWithOptions:v10 withResult:&v24];
        objc_storeStrong(&v29, 0);
        objc_destroyWeak(v30);
        objc_storeStrong(&v31, 0);
      }

      else
      {
        v8 = [v45[0] scanFSM];
        [v8 postEvent:@"QueryUpdatesInfoSuccess" withInfo:*(a1 + 32)];
        MEMORY[0x277D82BD8](v8);
      }

      v40 = 0;
    }
  }

  objc_storeStrong(v45, 0);
  if (!v40)
  {
    v40 = 0;
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __57__SUSettingsScanOperation_action_QueryUpdatesInfo_error___block_invoke_331(uint64_t a1, char a2, id obj)
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  if (!v22[0])
  {
    v11 = SUSettingsSharedLogger();
    v21 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v10 = NSStringFromSelector(*(a1 + 48));
      v19 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v28, "[SUSettingsScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v19);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v28, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v7 = [v22[0] log];
    oslog = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v22[0] scanUUID];
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v27, "[SUSettingsScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v6, v24 & 1, location);
      _os_log_impl(&dword_26AC94000, oslog, v15, "%s [%{public}@]: Ready to install: %d; error: %{public}@", v27, 0x26u);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&oslog, 0);
    if (*(v22[0] + 8))
    {
      v5 = [v22[0] log];
      v14 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [v22[0] scanUUID];
        __os_log_helper_16_2_2_8_32_8_66(v26, "[SUSettingsScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v4);
        _os_log_impl(&dword_26AC94000, v14, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: The task has already been canceled. Stopping.", v26, 0x16u);
        MEMORY[0x277D82BD8](v4);
      }

      objc_storeStrong(&v14, 0);
      v17 = 1;
    }

    else
    {
      [*(a1 + 32) setIsUpdateReadyForInstallation:v24 & 1];
      [*(a1 + 32) setUpdateInstallationError:location];
      v3 = [v22[0] scanFSM];
      [v3 postEvent:@"QueryUpdatesInfoSuccess" withInfo:*(a1 + 32)];
      MEMORY[0x277D82BD8](v3);
      v17 = 0;
    }
  }

  objc_storeStrong(v22, 0);
  if (!v17)
  {
    v17 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ObserveConcurrentQueries:(id)a3 error:(id *)a4
{
  v25 = self;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v22 = a4;
  v11 = [(SUSettingsScanOperation *)v25 scanFSM];
  v10 = [(SUCoreFSM *)v11 extendedStateQueue];
  dispatch_assert_queue_V2(v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  if (location)
  {
    objc_initWeak(&v20, v25);
    group = v25->_scanGroup;
    queue = v25->_concurrentQueue;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __65__SUSettingsScanOperation_action_ObserveConcurrentQueries_error___block_invoke;
    v16 = &unk_279CBC6F0;
    objc_copyWeak(v19, &v20);
    v19[1] = v24;
    v17 = MEMORY[0x277D82BE0](location);
    v18 = MEMORY[0x277D82BE0](v25);
    dispatch_group_notify(group, queue, &v12);
    v26 = 0;
    v21 = 1;
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_destroyWeak(v19);
    objc_destroyWeak(&v20);
  }

  else
  {
    v8 = [(SUSettingsScanOperation *)v25 scanFSM];
    v7 = [(SUCoreFSM *)v8 diag];
    [v7 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v26 = 8102;
    v21 = 1;
  }

  objc_storeStrong(&location, 0);
  return v26;
}

void __65__SUSettingsScanOperation_action_ObserveConcurrentQueries_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v21[0])
  {
    v10 = SUSettingsSharedLogger();
    v20 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v9 = NSStringFromSelector(*(a1 + 56));
      v18 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUSettingsScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v18);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v24, 0x16u);
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
    v6 = [v21[0] log];
    v15 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v21[0] scanUUID];
      v4 = [*(a1 + 32) operationError];
      __os_log_helper_16_2_3_8_32_8_66_8_66(v23, "[SUSettingsScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v5, v4);
      _os_log_impl(&dword_26AC94000, v15, v14, "%s [%{public}@]: All of the concurrent operations has been finished. Current operation error: %{public}@", v23, 0x20u);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&v15, 0);
    if (*(v21[0] + 8))
    {
      v3 = [v21[0] log];
      oslog = [v3 oslog];
      MEMORY[0x277D82BD8](v3);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v2 = [v21[0] scanUUID];
        __os_log_helper_16_2_2_8_32_8_66(v22, "[SUSettingsScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v2);
        _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: The task has already been canceled. Stopping.", v22, 0x16u);
        MEMORY[0x277D82BD8](v2);
      }

      objc_storeStrong(&oslog, 0);
      v16 = 1;
    }

    else
    {
      v1 = [*(a1 + 32) operationError];
      MEMORY[0x277D82BD8](v1);
      if (v1)
      {
        [*(*(a1 + 40) + 80) postEvent:@"ConcurrentActionFailed" withInfo:*(a1 + 32)];
        v16 = 1;
      }

      else
      {
        [*(*(a1 + 40) + 80) postEvent:@"AllConcurrentActionsFinished" withInfo:*(a1 + 32)];
        v16 = 0;
      }
    }
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ReportScanOutcome:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = self;
  v42 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v40 = a4;
  v19 = [(SUSettingsScanOperation *)v43 scanFSM];
  v18 = [(SUCoreFSM *)v19 extendedStateQueue];
  dispatch_assert_queue_V2(v18);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  if (location)
  {
    v15 = [(SUSettingsScanOperation *)v43 log];
    v38 = [(SUCoreLog *)v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(SUSettingsScanOperation *)v43 scanUUID];
      v12 = [location operationError];
      v4 = "successful";
      if (v12)
      {
        v4 = "failed";
      }

      v13 = v4;
      v11 = SUSettingsScanOperationTypeToString([(SUSettingsScanOperation *)v43 operationType]);
      v36 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_4_8_32_8_66_8_32_8_66(v45, "[SUSettingsScanOperation action_ReportScanOutcome:error:]", v14, v13, v36);
      _os_log_impl(&dword_26AC94000, v38, v37, "%s [%{public}@]: Reporting a %s scan of type: %{public}@", v45, 0x2Au);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v38, 0);
    objc_initWeak(&from, v43);
    v10 = [(SUSettingsScanOperation *)v43 operationType];
    if (v10)
    {
      if (v10 == 1)
      {
        queue = [(SUSettingsScanOperation *)v43 clientCompletionQueue];
        v28 = MEMORY[0x277D85DD0];
        v29 = -1073741824;
        v30 = 0;
        v31 = __58__SUSettingsScanOperation_action_ReportScanOutcome_error___block_invoke;
        v32 = &unk_279CBC768;
        objc_copyWeak(v34, &from);
        v34[1] = v42;
        v33 = MEMORY[0x277D82BE0](location);
        dispatch_async(queue, &v28);
        MEMORY[0x277D82BD8](queue);
        objc_storeStrong(&v33, 0);
        objc_destroyWeak(v34);
      }

      else if (v10 == 2)
      {
        v6 = [(SUSettingsScanOperation *)v43 clientCompletionQueue];
        v21 = MEMORY[0x277D85DD0];
        v22 = -1073741824;
        v23 = 0;
        v24 = __58__SUSettingsScanOperation_action_ReportScanOutcome_error___block_invoke_340;
        v25 = &unk_279CBC768;
        objc_copyWeak(v27, &from);
        v27[1] = v42;
        v26 = MEMORY[0x277D82BE0](location);
        dispatch_async(v6, &v21);
        MEMORY[0x277D82BD8](v6);
        objc_storeStrong(&v26, 0);
        objc_destroyWeak(v27);
      }
    }

    else
    {
      v9 = [(SUSettingsScanOperation *)v43 scanFSM];
      v8 = [(SUCoreFSM *)v9 diag];
      [v8 dumpTracked:@"Could not invoke a completion handler for a 'None' operation type." dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      [(SUSettingsScanOperation *)v43 invalidateMachine];
    }

    v44 = 0;
    v39 = 1;
    objc_destroyWeak(&from);
  }

  else
  {
    v17 = [(SUSettingsScanOperation *)v43 scanFSM];
    v16 = [(SUCoreFSM *)v17 diag];
    [v16 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v44 = 8102;
    v39 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v44;
}

void __58__SUSettingsScanOperation_action_ReportScanOutcome_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v24[2] = a1;
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  if (!v24[0])
  {
    v11 = SUSettingsSharedLogger();
    v23 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      v10 = NSStringFromSelector(*(a1 + 48));
      v21 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v25, "[SUSettingsScanOperation action_ReportScanOutcome:error:]_block_invoke", v21);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v25, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v19 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) operationError];
    v16 = 0;
    v14 = 0;
    if (v7)
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    else
    {
      v6 = [SUSettingsFullScanResults alloc];
      v5 = *(a1 + 32);
      v17 = [v24[0] scanUUID];
      v16 = 1;
      v15 = [(SUSettingsFullScanResults *)v6 initFromScanParam:v5 withUUID:?];
      v14 = 1;
      v1 = MEMORY[0x277D82BE0](v15);
    }

    v18 = v1;
    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BD8](v7);
    v4 = [v24[0] fullScanCompletionHandler];
    v2 = v18;
    v3 = [*(a1 + 32) operationError];
    v4[2](v4, v2);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    [v24[0] invalidateMachine];
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  objc_storeStrong(v24, 0);
  *MEMORY[0x277D85DE8];
}

void __58__SUSettingsScanOperation_action_ReportScanOutcome_error___block_invoke_340(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v24[2] = a1;
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  if (!v24[0])
  {
    v11 = SUSettingsSharedLogger();
    v23 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      v10 = NSStringFromSelector(*(a1 + 48));
      v21 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v25, "[SUSettingsScanOperation action_ReportScanOutcome:error:]_block_invoke", v21);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v25, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v19 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) operationError];
    v16 = 0;
    v14 = 0;
    if (v7)
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    else
    {
      v6 = [SUSettingsScanResults alloc];
      v5 = *(a1 + 32);
      v17 = [v24[0] scanUUID];
      v16 = 1;
      v15 = [(SUSettingsScanResults *)v6 initFromScanParam:v5 withUUID:?];
      v14 = 1;
      v1 = MEMORY[0x277D82BE0](v15);
    }

    v18 = v1;
    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BD8](v7);
    v4 = [v24[0] refreshScanCompletionHandler];
    v2 = v18;
    v3 = [*(a1 + 32) operationError];
    v4[2](v4, v2);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    [v24[0] invalidateMachine];
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  objc_storeStrong(v24, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ReportScanCanceled:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = self;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v24 = a4;
  v12 = [(SUSettingsScanOperation *)v27 scanFSM];
  v11 = [(SUCoreFSM *)v12 extendedStateQueue];
  dispatch_assert_queue_V2(v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (location)
  {
    v8 = [(SUSettingsScanOperation *)v27 log];
    v22 = [(SUCoreLog *)v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SUSettingsScanOperation *)v27 scanUUID];
      __os_log_helper_16_2_2_8_32_8_66(v29, "[SUSettingsScanOperation action_ReportScanCanceled:error:]", v7);
      _os_log_impl(&dword_26AC94000, v22, v21, "%s [%{public}@]: The scan was canceled. Calling the cancelation handler.", v29, 0x16u);
      MEMORY[0x277D82BD8](v7);
    }

    objc_storeStrong(&v22, 0);
    v6 = [(SUSettingsScanOperation *)v27 cancelHandler];
    MEMORY[0x277D82BD8](v6);
    if (v6)
    {
      objc_initWeak(&from, v27);
      queue = [(SUSettingsScanOperation *)v27 clientCompletionQueue];
      block = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __59__SUSettingsScanOperation_action_ReportScanCanceled_error___block_invoke;
      v18 = &unk_279CBF280;
      objc_copyWeak(v19, &from);
      v19[1] = v26;
      dispatch_async(queue, &block);
      MEMORY[0x277D82BD8](queue);
      objc_destroyWeak(v19);
      objc_destroyWeak(&from);
    }

    else
    {
      [(SUSettingsScanOperation *)v27 invalidateMachine];
    }

    v28 = 0;
    v23 = 1;
  }

  else
  {
    v10 = [(SUSettingsScanOperation *)v27 scanFSM];
    v9 = [(SUCoreFSM *)v10 diag];
    [v9 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v28 = 8102;
    v23 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v28;
}

void __59__SUSettingsScanOperation_action_ReportScanCanceled_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = SUSettingsSharedLogger();
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUSettingsScanOperation action_ReportScanCanceled:error:]_block_invoke", v8);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] cancelHandler];
    v1[2]();
    MEMORY[0x277D82BD8](v1);
    [v11[0] invalidateMachine];
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16[1] = a4;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v16[0] = [v4 initWithFormat:location[0]];
  v11 = [(SUSettingsScanOperation *)v18 scanFSM];
  v10 = [(SUCoreFSM *)v11 diag];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 initWithFormat:@"unknown action(%@)", location[0]];
  [v10 dumpTracked:? dumpingTo:? usingFilename:? clearingStatistics:? clearingHistory:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277D643F8] sharedCore];
  v15 = [v12 buildError:8116 underlying:0 description:v16[0]];
  MEMORY[0x277D82BD8](v12);
  v14 = [(SUSettingsScanOperation *)v18 scanFSM];
  v13 = [(SUCoreFSM *)v14 diag];
  v6 = [v15 code];
  [v13 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"Scan FSM has reported an anomaly" withResult:v6 withError:v15];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (SUSettingsScanOperation)initWithUUID:(id)a3 usingSUManagerClient:(id)a4 andBetaManager:(id)a5 withCompletionQueue:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v39 = 0;
  objc_storeStrong(&v39, a6);
  v6 = v43;
  v43 = 0;
  v38.receiver = v6;
  v38.super_class = SUSettingsScanOperation;
  v30 = [(SUSettingsScanOperation *)&v38 init];
  v43 = v30;
  objc_storeStrong(&v43, v30);
  if (!v30)
  {
    goto LABEL_12;
  }

  v7 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUSettingsScanOperation"];
  v8 = *(v43 + 3);
  *(v43 + 3) = v7;
  MEMORY[0x277D82BD8](v8);
  if (!*(v43 + 3))
  {
    v26 = SUSettingsSharedLogger();
    v37 = [v26 oslog];
    MEMORY[0x277D82BD8](v26);
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v48, "[SUSettingsScanOperation initWithUUID:usingSUManagerClient:andBetaManager:withCompletionQueue:]", @"SUSettingsScanOperation");
      _os_log_impl(&dword_26AC94000, v37, v36, "%s: Could not create a log category for %@", v48, 0x16u);
    }

    objc_storeStrong(&v37, 0);
    v44 = 0;
    v35 = 1;
    goto LABEL_13;
  }

  v46 = MGCopyAnswer();
  v21 = v46;
  v9 = v46;
  v34 = v21;
  v45 = MGCopyAnswer();
  v22 = v45;
  v10 = v45;
  v33 = v22;
  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = objc_opt_class();
  v24 = NSStringFromClass(v11);
  v32 = [v23 initWithFormat:@"%@:%@(%@, %@)", v24, v34, v33, location[0]];
  MEMORY[0x277D82BD8](v24);
  objc_storeStrong(v43 + 2, location[0]);
  objc_storeStrong(v43 + 11, v41);
  objc_storeStrong(v43 + 12, v40);
  v12 = [objc_opt_class() _generateStateTable];
  v13 = *(v43 + 13);
  *(v43 + 13) = v12;
  MEMORY[0x277D82BD8](v13);
  *(v43 + 9) = 0;
  v25 = objc_alloc(MEMORY[0x277D64458]);
  v14 = [v25 initMachine:v32 withTable:*(v43 + 13) startingIn:@"Idle" usingDelegate:v43 registeringAllInfoClass:objc_opt_class()];
  v15 = *(v43 + 10);
  *(v43 + 10) = v14;
  MEMORY[0x277D82BD8](v15);
  if (*(v43 + 10))
  {
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v19 selectCompletionQueue:v39];
    v17 = *(v43 + 14);
    *(v43 + 14) = v16;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v19);
    v35 = 0;
  }

  else
  {
    v20 = SUSettingsSharedLogger();
    v31 = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v47, "[SUSettingsScanOperation initWithUUID:usingSUManagerClient:andBetaManager:withCompletionQueue:]");
      _os_log_impl(&dword_26AC94000, v31, OS_LOG_TYPE_DEFAULT, "%s: Failed creating a scan FSM", v47, 0xCu);
    }

    objc_storeStrong(&v31, 0);
    v44 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  if (!v35)
  {
LABEL_12:
    v44 = MEMORY[0x277D82BE0](v43);
    v35 = 1;
  }

LABEL_13:
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v43, 0);
  *MEMORY[0x277D85DE8];
  return v44;
}

- (void)checkForAvailableUpdatesWithCompletionHandler:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSettingsScanOperation *)v4 checkForAvailableUpdatesWithOptions:0 usingCompletionHandler:location[0] usingThirdPartyScanResults:0 andScanError:?];
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableUpdatesWithOptions:(id)a3 usingCompletionHandler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSettingsScanOperation *)v7 checkForAvailableUpdatesWithOptions:location[0] usingCompletionHandler:v5 usingThirdPartyScanResults:0 andScanError:?];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableUpdatesWithOptions:(id)a3 usingCompletionHandler:(id)a4 usingThirdPartyScanResults:(id)a5 andScanError:(id)a6
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = 0;
  objc_storeStrong(&v29, a6);
  v24 = MEMORY[0x277D82BE0](v33);
  objc_sync_enter(v24);
  if ([(SUSettingsScanOperation *)v33 isActive])
  {
    v20 = [(SUSettingsScanOperation *)v33 scanFSM];
    v19 = [(SUCoreFSM *)v20 diag];
    [v19 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"This scan machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v28 = 1;
  }

  else
  {
    v6 = MEMORY[0x26D66A460](v31);
    fullScanCompletionHandler = v33->_fullScanCompletionHandler;
    v33->_fullScanCompletionHandler = v6;
    MEMORY[0x277D82BD8](fullScanCompletionHandler);
    v33->_operationType = 1;
    v8 = dispatch_group_create();
    scanGroup = v33->_scanGroup;
    v33->_scanGroup = v8;
    MEMORY[0x277D82BD8](scanGroup);
    v18 = MEMORY[0x277CCACA8];
    v17 = [(SUSettingsScanOperation *)v33 baseDomain];
    v15 = [v18 stringWithFormat:@"%@.concurrentQueue", v17];
    v10 = v15;
    label = [v15 UTF8String];
    v11 = dispatch_queue_create(label, MEMORY[0x277D85CD8]);
    concurrentQueue = v33->_concurrentQueue;
    v33->_concurrentQueue = v11;
    MEMORY[0x277D82BD8](concurrentQueue);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v17);
    [(SUCoreFSM *)v33->_scanFSM activateMachine];
    v14 = [SUSettingsScanParam alloc];
    v25 = 0;
    if (location[0])
    {
      v13 = location[0];
    }

    else
    {
      v26 = objc_alloc_init(SUSettingsScanOptions);
      v25 = 1;
      v13 = v26;
    }

    v27 = [(SUSettingsScanParam *)v14 initWithScanOptions:v13];
    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    [v27 setThirdPartyDiscoveredScanResults:v30];
    [v27 setThirdPartyDiscoveredScanError:v29];
    [(SUCoreFSM *)v33->_scanFSM postEvent:@"CheckForAvailableUpdate" withInfo:v27];
    objc_storeStrong(&v27, 0);
    v28 = 0;
  }

  objc_sync_exit(v24);
  MEMORY[0x277D82BD8](v24);
  if (!v28)
  {
    v28 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v14 = 0;
  objc_storeStrong(&v14, a7);
  v12 = v19;
  v7 = [SUSettingsScanParam alloc];
  v13 = [(SUSettingsScanParam *)v7 initWithPreferredDescriptor:location[0] alternateDescriptor:v17 andLatestDescriptor:v16];
  [SUSettingsScanOperation startRefreshOperation:v12 withEventInfo:"startRefreshOperation:withEventInfo:completionHandler:" completionHandler:@"RefreshScanResults"];
  MEMORY[0x277D82BD8](v13);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5 options:(id)a6 previouslyDiscoveredDownload:(id)a7 encounteredError:(id)a8 completionHandler:(id)a9
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v18 = 0;
  objc_storeStrong(&v18, a8);
  v17 = 0;
  objc_storeStrong(&v17, a9);
  v15 = v24;
  v9 = [SUSettingsScanParam alloc];
  v16 = [(SUSettingsScanParam *)v9 initWithPreferredDescriptor:location[0] alternateDescriptor:v22 andLatestDescriptor:v21 previouslyDiscoveredDownloadedUpdate:v19 encounteredError:v18];
  [SUSettingsScanOperation startRefreshOperation:v15 withEventInfo:"startRefreshOperation:withEventInfo:completionHandler:" completionHandler:@"RefreshScanResults"];
  MEMORY[0x277D82BD8](v16);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5 options:(id)a6 previouslyDiscoveredDownload:(id)a7 previouslyDiscoveredAutoInstallOperation:(id)a8 encounteredError:(id)a9 completionHandler:(id)a10
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = 0;
  objc_storeStrong(&v22, a6);
  v21 = 0;
  objc_storeStrong(&v21, a7);
  v20 = 0;
  objc_storeStrong(&v20, a8);
  v19 = 0;
  objc_storeStrong(&v19, a9);
  v18 = 0;
  objc_storeStrong(&v18, a10);
  v16 = v26;
  v10 = [SUSettingsScanParam alloc];
  v17 = [(SUSettingsScanParam *)v10 initWithPreferredDescriptor:location[0] alternateDescriptor:v24 andLatestDescriptor:v23 previouslyDiscoveredDownloadedUpdate:v21 previouslyDiscoveredAutoInstallOperation:v20 encounteredError:v19];
  [SUSettingsScanOperation startRefreshOperation:v16 withEventInfo:"startRefreshOperation:withEventInfo:completionHandler:" completionHandler:@"RefreshScanResultsPostDownload"];
  MEMORY[0x277D82BD8](v17);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshBetaProgramsWithOptions:(id)a3 completionHandler:(id)a4
{
  v27 = self;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v10 = MEMORY[0x277D82BE0](v27);
  objc_sync_enter(v10);
  if ([(SUSettingsScanOperation *)v27 isActive])
  {
    v8 = [(SUCoreFSM *)v27->_scanFSM diag];
    [v8 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The scan machine is currently active" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v8);
    v23 = 1;
  }

  else
  {
    v7 = [SUSettingsScanParam alloc];
    v20 = 0;
    if (location)
    {
      v6 = location;
    }

    else
    {
      v21 = objc_alloc_init(SUSettingsScanOptions);
      v20 = 1;
      v6 = v21;
    }

    v22 = [(SUSettingsScanParam *)v7 initWithScanOptions:v6];
    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    objc_initWeak(&v19, v27);
    v5 = v27;
    v4 = v22;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __76__SUSettingsScanOperation_refreshBetaProgramsWithOptions_completionHandler___block_invoke;
    v15 = &unk_279CBC790;
    objc_copyWeak(v18, &v19);
    v18[1] = v26;
    v17 = MEMORY[0x277D82BE0](v24);
    v16 = MEMORY[0x277D82BE0](v22);
    [(SUSettingsScanOperation *)v5 checkForBetaPrograms:v4 withReplyHandler:&v11];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_destroyWeak(v18);
    objc_destroyWeak(&v19);
    objc_storeStrong(&v22, 0);
    v23 = 0;
  }

  objc_sync_exit(v10);
  MEMORY[0x277D82BD8](v10);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
}

void __76__SUSettingsScanOperation_refreshBetaProgramsWithOptions_completionHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 48));
  v8 = 0;
  if (!v24[0])
  {
    v7 = SUSettingsSharedLogger();
    v23 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      v6 = NSStringFromSelector(*(a1 + 56));
      v21 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v28, "[SUSettingsScanOperation refreshBetaProgramsWithOptions:completionHandler:]_block_invoke", v21);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v28, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v19 = 1;
  }

  else
  {
    queue = [v24[0] clientCompletionQueue];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __76__SUSettingsScanOperation_refreshBetaProgramsWithOptions_completionHandler___block_invoke_373;
    v14 = &unk_279CBF2A8;
    objc_copyWeak(v18, (a1 + 48));
    v18[1] = *(a1 + 56);
    v17 = MEMORY[0x277D82BE0](*(a1 + 40));
    v15 = MEMORY[0x277D82BE0](*(a1 + 32));
    v16 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v10);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v17, 0);
    objc_destroyWeak(v18);
    v19 = 0;
  }

  objc_storeStrong(v24, 0);
  if (!v19)
  {
    v19 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __76__SUSettingsScanOperation_refreshBetaProgramsWithOptions_completionHandler___block_invoke_373(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained((a1 + 56));
  v11 = 0;
  if (!v16[0])
  {
    v10 = SUSettingsSharedLogger();
    v15 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v15;
      type = v14;
      v9 = NSStringFromSelector(*(a1 + 64));
      v13 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v17, "[SUSettingsScanOperation refreshBetaProgramsWithOptions:completionHandler:]_block_invoke", v13);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v17, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v4 = (*(a1 + 48) + 16);
    v3 = [SUSettingsBetaUpdatesScanResults alloc];
    v2 = *(a1 + 32);
    v6 = [v16[0] scanUUID];
    v5 = [(SUSettingsBetaUpdatesScanResults *)v3 initFromScanParam:v2 withUUID:?];
    v1 = *(a1 + 40);
    (*v4)();
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(v16, 0);
  *MEMORY[0x277D85DE8];
}

- (void)cancel:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = MEMORY[0x277D82BE0](v8);
  objc_sync_enter(obj);
  if ([(SUSettingsScanOperation *)v8 isActive])
  {
    if (![(SUSettingsScanOperation *)v8 isCanceled])
    {
      [(SUSettingsScanOperation *)v8 setCanceled:1];
      [(SUSettingsScanOperation *)v8 setCancelHandler:location[0]];
      scanFSM = v8->_scanFSM;
      v4 = objc_alloc_init(SUSettingsScanParam);
      [(SUCoreFSM *)scanFSM postEvent:@"CancelScan" withInfo:v4];
      MEMORY[0x277D82BD8](v4);
    }
  }

  else
  {
    v5 = [(SUCoreFSM *)v8->_scanFSM diag];
    [v5 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v5);
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
}

- (void)scheduleConcurrentActionWithSelector:(SEL)a3 eventInfo:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  dispatch_group_enter(v17[7]);
  objc_initWeak(&v13, v17);
  queue = v17[8];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __74__SUSettingsScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke;
  v9 = &unk_279CBC6A0;
  objc_copyWeak(v12, &v13);
  v12[1] = v16;
  v10 = MEMORY[0x277D82BE0](v17);
  v11 = MEMORY[0x277D82BE0](location);
  v12[2] = v15;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v12);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void __74__SUSettingsScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v30[2] = a1;
  v30[1] = a1;
  v30[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v30[0])
  {
    v8 = SUSettingsSharedLogger();
    v29 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v28 = 16;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      log = v29;
      type = v28;
      v5 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v32, "[SUSettingsScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", location);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v32, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v29, 0);
    v26 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v25 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(*(a1 + 32) + 64));
    v4 = [*(a1 + 40) operationError];
    MEMORY[0x277D82BD8](v4);
    if (v4)
    {
      dispatch_group_leave(*(*(a1 + 32) + 56));
      v25 = 1;
    }

    else
    {
      v24 = [v30[0] methodSignatureForSelector:*(a1 + 64)];
      v23 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v24];
      [v23 setTarget:v30[0]];
      [v23 setSelector:*(a1 + 64)];
      [v23 setArgument:a1 + 40 atIndex:2];
      v3 = [v30[0] log];
      v22 = [v3 oslog];
      MEMORY[0x277D82BD8](v3);
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v2 = [v30[0] scanUUID];
        v1 = NSStringFromSelector(*(a1 + 64));
        v20 = MEMORY[0x277D82BE0](v1);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v31, "[SUSettingsScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v2, v20);
        _os_log_impl(&dword_26AC94000, v22, v21, "%s [%{public}@]: Starting to execute concurrent action: %{public}@", v31, 0x20u);
        MEMORY[0x277D82BD8](v1);
        MEMORY[0x277D82BD8](v2);
        objc_storeStrong(&v20, 0);
      }

      objc_storeStrong(&v22, 0);
      v11 = MEMORY[0x277D85DD0];
      v12 = -1073741824;
      v13 = 0;
      v14 = __74__SUSettingsScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_379;
      v15 = &unk_279CBF2D0;
      v16 = MEMORY[0x277D82BE0](*(a1 + 32));
      objc_copyWeak(v18, (a1 + 48));
      v18[1] = *(a1 + 56);
      v18[2] = *(a1 + 64);
      v17 = MEMORY[0x277D82BE0](*(a1 + 40));
      v19 = MEMORY[0x26D66A460](&v11);
      [v23 setArgument:&v19 atIndex:3];
      [v23 invoke];
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v17, 0);
      objc_destroyWeak(v18);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      v25 = 0;
    }
  }

  objc_storeStrong(v30, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUSettingsScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_379(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  queue = *(*(a1 + 32) + 64);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __74__SUSettingsScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_2;
  v9 = &unk_279CBC600;
  objc_copyWeak(v13, (a1 + 48));
  v13[1] = *(a1 + 56);
  v10 = MEMORY[0x277D82BE0](*(a1 + 32));
  v13[2] = *(a1 + 64);
  v14 = v17 & 1;
  v11 = MEMORY[0x277D82BE0](location);
  v12 = MEMORY[0x277D82BE0](*(a1 + 40));
  dispatch_barrier_async(queue, &v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v13);
  objc_storeStrong(&location, 0);
}

void __74__SUSettingsScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 56));
  v16 = 0;
  if (!v28[0])
  {
    v15 = SUSettingsSharedLogger();
    v27 = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v14 = NSStringFromSelector(*(a1 + 64));
      v25 = MEMORY[0x277D82BE0](v14);
      __os_log_helper_16_2_2_8_32_8_66(v30, "[SUSettingsScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke_2", v25);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v30, 0x16u);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v16 = 1;
  }

  if (v16)
  {
    v23 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(*(a1 + 32) + 64));
    v11 = [v28[0] log];
    v22 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v22;
      v7 = v21;
      v10 = [v28[0] scanUUID];
      v9 = NSStringFromSelector(*(a1 + 72));
      v3 = MEMORY[0x277D82BE0](v9);
      v20 = v3;
      v1 = "YES";
      if ((*(a1 + 80) & 1) == 0)
      {
        v1 = "NO";
      }

      v4 = v1;
      v5 = *(a1 + 40);
      v8 = [*(a1 + 48) operationError];
      __os_log_helper_16_2_6_8_32_8_66_8_66_8_32_8_66_8_66(v29, "[SUSettingsScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v10, v3, v4, v5, v8);
      _os_log_impl(&dword_26AC94000, v6, v7, "%s [%{public}@]: Concurrent operation %{public}@ has been finished. Success: %s; error: %{public}@. Previous error: %{public}@", v29, 0x3Eu);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v22, 0);
    v2 = [*(a1 + 48) operationError];
    MEMORY[0x277D82BD8](v2);
    if (v2)
    {
      dispatch_group_leave(*(*(a1 + 32) + 56));
      v23 = 1;
    }

    else if (*(a1 + 80))
    {
      dispatch_group_leave(*(*(a1 + 32) + 56));
      v23 = 0;
    }

    else
    {
      v18 = 0;
      if (*(a1 + 40))
      {
        [*(a1 + 48) setOperationError:*(a1 + 40)];
      }

      else
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:5 userInfo:0];
        v18 = 1;
        [*(a1 + 48) setOperationError:v19];
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }

      dispatch_group_leave(*(*(a1 + 32) + 56));
      [*(*(a1 + 32) + 80) postEvent:@"ConcurrentActionFailed" withInfo:*(a1 + 48)];
      v23 = 1;
    }
  }

  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];
}

- (void)checkForMDMRestrictions:(id)a3 withReplyHandler:(id)a4
{
  v19 = self;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v19);
  suClient = v19->_suClient;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__SUSettingsScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke;
  v10 = &unk_279CBF320;
  objc_copyWeak(v14, &v15);
  v14[1] = v18;
  v13 = MEMORY[0x277D82BE0](v16);
  v11 = MEMORY[0x277D82BE0](v19);
  v12 = MEMORY[0x277D82BE0](location);
  [(SUManagerClient *)suClient softwareUpdatePathRestriction:&v6];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

void __68__SUSettingsScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke(uint64_t a1, void *a2, id obj)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v30 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 56));
  v10 = 0;
  if (!v28[0])
  {
    v9 = SUSettingsSharedLogger();
    v27 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      v7 = NSStringFromSelector(*(a1 + 64));
      v25 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v33, "[SUSettingsScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v25);
      _os_log_error_impl(&dword_26AC94000, log, v26, "%s: Self is nil in %{public}@. Stopping.", v33, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v23 = 1;
  }

  else
  {
    v6 = [v28[0] log];
    v22 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v28[0] scanUUID];
      v4 = SUStringFromMDMSUPath();
      v20 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_5_8_32_8_66_8_64_8_0_8_66(v32, "[SUSettingsScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v5, v20, v30, location);
      _os_log_impl(&dword_26AC94000, v22, v21, "%s [%{public}@]: Found path restriction: %@ (%ld); error: %{public}@", v32, 0x34u);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v22, 0);
    if (location)
    {
      (*(*(a1 + 48) + 16))();
      v23 = 1;
    }

    else
    {
      v3 = *(*(a1 + 32) + 88);
      v12 = MEMORY[0x277D85DD0];
      v13 = -1073741824;
      v14 = 0;
      v15 = __68__SUSettingsScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke_381;
      v16 = &unk_279CBF2F8;
      objc_copyWeak(v19, (a1 + 56));
      v19[1] = *(a1 + 64);
      v18 = MEMORY[0x277D82BE0](*(a1 + 48));
      v17 = MEMORY[0x277D82BE0](*(a1 + 40));
      v19[2] = v30;
      [v3 isDelayingUpdates:&v12];
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      objc_destroyWeak(v19);
      v23 = 0;
    }
  }

  objc_storeStrong(v28, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUSettingsScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke_381(uint64_t a1, char a2, id obj)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = a1;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v17[0])
  {
    v8 = SUSettingsSharedLogger();
    v16 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      v7 = NSStringFromSelector(*(a1 + 56));
      v14 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUSettingsScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v14);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v4 = [v17[0] log];
    oslog = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v17[0] scanUUID];
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v21, "[SUSettingsScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v3, v19 & 1, location);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: Is delaying updates: %d; error: %{public}@", v21, 0x26u);
      MEMORY[0x277D82BD8](v3);
    }

    objc_storeStrong(&oslog, 0);
    if (location)
    {
      (*(*(a1 + 40) + 16))();
      v12 = 1;
    }

    else
    {
      [*(a1 + 32) setMdmPathRestrictions:*(a1 + 64)];
      [*(a1 + 32) setIsDelayingUpdate:v19 & 1];
      (*(*(a1 + 40) + 16))();
      v12 = 0;
    }
  }

  objc_storeStrong(v17, 0);
  if (!v12)
  {
    v12 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)queryDDMDeclaration:(id)a3 withReplyHandler:(id)a4
{
  v18 = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  objc_initWeak(&v14, v18);
  suClient = v18->_suClient;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__SUSettingsScanOperation_queryDDMDeclaration_withReplyHandler___block_invoke;
  v10 = &unk_279CBF348;
  objc_copyWeak(v13, &v14);
  v13[1] = v17;
  v12 = MEMORY[0x277D82BE0](v15);
  v11 = MEMORY[0x277D82BE0](location);
  [(SUManagerClient *)suClient getDDMDeclarationWithHandler:&v6];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
}

void __64__SUSettingsScanOperation_queryDDMDeclaration_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v17[0])
  {
    v8 = SUSettingsSharedLogger();
    v16 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      v7 = NSStringFromSelector(*(a1 + 56));
      v14 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUSettingsScanOperation queryDDMDeclaration:withReplyHandler:]_block_invoke", v14);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v12 = 0;
    v4 = 0;
    if (v18)
    {
      v13 = [v18 domain];
      v12 = 1;
      v3 = 0;
      if ([v13 isEqualToString:*MEMORY[0x277D64910]])
      {
        v3 = [v18 code] == 102;
      }

      v4 = !v3;
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    if (!v4)
    {
      [*(a1 + 32) setDDMDeclaration:location[0]];
    }

    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)checkForBetaPrograms:(id)a3 withReplyHandler:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = self;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  if (_os_feature_enabled_impl())
  {
    if (v34->_seedingBetaManager)
    {
      v8 = [location options];
      v9 = [v8 clientIsBuddy];
      MEMORY[0x277D82BD8](v8);
      if (v9)
      {
        v7 = [(SUSettingsScanOperation *)v34 log];
        v25 = [(SUCoreLog *)v7 oslog];
        MEMORY[0x277D82BD8](v7);
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [(SUSettingsScanOperation *)v34 scanUUID];
          __os_log_helper_16_2_2_8_32_8_66(v35, "[SUSettingsScanOperation checkForBetaPrograms:withReplyHandler:]", v6);
          _os_log_impl(&dword_26AC94000, v25, v24, "%s [%{public}@]: The client is Buddy - skipping on the Seeding feature.", v35, 0x16u);
          MEMORY[0x277D82BD8](v6);
        }

        objc_storeStrong(&v25, 0);
        (*(v31 + 2))();
        v28 = 1;
      }

      else
      {
        v5 = [location currentSeedingDevice];
        MEMORY[0x277D82BD8](v5);
        if (v5)
        {
          [(SUSettingsScanOperation *)v34 scanForDeviceEligibleBetaPrograms:location withReplyHandler:v31];
        }

        else
        {
          objc_initWeak(&from, v34);
          v4 = MEMORY[0x277D4D320];
          v15 = MEMORY[0x277D85DD0];
          v16 = -1073741824;
          v17 = 0;
          v18 = __65__SUSettingsScanOperation_checkForBetaPrograms_withReplyHandler___block_invoke;
          v19 = &unk_279CBF370;
          objc_copyWeak(v22, &from);
          v22[1] = v33;
          v20 = MEMORY[0x277D82BE0](location);
          v21 = MEMORY[0x277D82BE0](v31);
          [v4 getCurrentDevice:&v15];
          objc_storeStrong(&v21, 0);
          objc_storeStrong(&v20, 0);
          objc_destroyWeak(v22);
          objc_destroyWeak(&from);
        }

        v28 = 0;
      }
    }

    else
    {
      v11 = [(SUSettingsScanOperation *)v34 log];
      v27 = [(SUCoreLog *)v11 oslog];
      MEMORY[0x277D82BD8](v11);
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(SUSettingsScanOperation *)v34 scanUUID];
        __os_log_helper_16_2_2_8_32_8_66(v36, "[SUSettingsScanOperation checkForBetaPrograms:withReplyHandler:]", v10);
        _os_log_impl(&dword_26AC94000, v27, v26, "%s [%{public}@]: The seeding beta manager was not configured for this scan operation. Skipping.", v36, 0x16u);
        MEMORY[0x277D82BD8](v10);
      }

      objc_storeStrong(&v27, 0);
      (*(v31 + 2))();
      v28 = 1;
    }
  }

  else
  {
    v13 = [(SUSettingsScanOperation *)v34 log];
    v30 = [(SUCoreLog *)v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SUSettingsScanOperation *)v34 scanUUID];
      __os_log_helper_16_2_2_8_32_8_66(v37, "[SUSettingsScanOperation checkForBetaPrograms:withReplyHandler:]", v12);
      _os_log_impl(&dword_26AC94000, v30, v29, "%s [%{public}@]: The Seeding feature is unavailable.", v37, 0x16u);
      MEMORY[0x277D82BD8](v12);
    }

    objc_storeStrong(&v30, 0);
    (*(v31 + 2))();
    v28 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUSettingsScanOperation_checkForBetaPrograms_withReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v11[0])
  {
    v5 = SUSettingsSharedLogger();
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 56));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsScanOperation checkForBetaPrograms:withReplyHandler:]_block_invoke", v8);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v13, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [*(a1 + 32) setCurrentSeedingDevice:location[0]];
    [v11[0] scanForDeviceEligibleBetaPrograms:*(a1 + 32) withReplyHandler:*(a1 + 40)];
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)scanForDeviceEligibleBetaPrograms:(id)a3 withReplyHandler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = self;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v9 = [location currentSeedingDevice];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    objc_initWeak(&from, v27);
    seedingBetaManager = v27->_seedingBetaManager;
    v4 = [location currentSeedingDevice];
    v5 = [v4 platform];
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __78__SUSettingsScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke;
    v15 = &unk_279CBF3C0;
    objc_copyWeak(v19, &from);
    v19[1] = v26;
    v16 = MEMORY[0x277D82BE0](location);
    v18 = MEMORY[0x277D82BE0](v24);
    v17 = MEMORY[0x277D82BE0](v27);
    [(SDBetaManager *)seedingBetaManager queryProgramsForSystemAccountsWithPlatforms:v5 completion:&v11];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v16, 0);
    objc_destroyWeak(v19);
    objc_destroyWeak(&from);
    v21 = 0;
  }

  else
  {
    v8 = [(SUSettingsScanOperation *)v27 log];
    v23 = [(SUCoreLog *)v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SUSettingsScanOperation *)v27 scanUUID];
      __os_log_helper_16_2_2_8_32_8_66(v28, "[SUSettingsScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]", v7);
      _os_log_impl(&dword_26AC94000, v23, v22, "%s [%{public}@]: Tried to scan for beta programs without a seeding device.", v28, 0x16u);
      MEMORY[0x277D82BD8](v7);
    }

    objc_storeStrong(&v23, 0);
    (*(v24 + 2))(v24, 0, 0);
    v21 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __78__SUSettingsScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = a3;
  v35[1] = a1;
  v35[0] = objc_loadWeakRetained((a1 + 56));
  v14 = 0;
  if (!v35[0])
  {
    v13 = SUSettingsSharedLogger();
    v34 = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      log = v34;
      v11 = NSStringFromSelector(*(a1 + 64));
      v32 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_2_8_32_8_66(v40, "[SUSettingsScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v32);
      _os_log_error_impl(&dword_26AC94000, log, v33, "%s: Self is nil in %{public}@. Stopping.", v40, 0x16u);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&v34, 0);
    v31 = 1;
    v14 = 1;
  }

  if (v14)
  {
    v30 = 1;
  }

  else if (v36)
  {
    [*(a1 + 32) setBetaPrograms:MEMORY[0x277CBEBF8]];
    v10 = [v35[0] log];
    v29 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v35[0] scanUUID];
      __os_log_helper_16_2_3_8_32_8_66_8_0(v39, "[SUSettingsScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v9, v36);
      _os_log_impl(&dword_26AC94000, v29, v28, "%s [%{public}@]: Could not fetch new beta programs: %ld", v39, 0x20u);
      MEMORY[0x277D82BD8](v9);
    }

    objc_storeStrong(&v29, 0);
    (*(*(a1 + 48) + 16))();
    v30 = 1;
  }

  else
  {
    [*(a1 + 32) setBetaPrograms:location[0]];
    v8 = [v35[0] log];
    v27 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v35[0] scanUUID];
      v7 = [location[0] count];
      v5 = [location[0] valueForKey:@"programID"];
      v25 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_4_8_32_8_66_8_0_8_64(v38, "[SUSettingsScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v6, v7, v25);
      _os_log_impl(&dword_26AC94000, v27, v26, "%s [%{public}@]: Got the device available Beta Programs (count: %ld): %@", v38, 0x2Au);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v4 = *(*(a1 + 40) + 96);
    v3 = [*(a1 + 32) currentSeedingDevice];
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __78__SUSettingsScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke_391;
    v21 = &unk_279CBF398;
    objc_copyWeak(v24, (a1 + 56));
    v24[1] = *(a1 + 64);
    v22 = MEMORY[0x277D82BE0](*(a1 + 32));
    v23 = MEMORY[0x277D82BE0](*(a1 + 48));
    [v4 enrolledBetaProgramForDevice:v3 completion:&v17];
    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_destroyWeak(v24);
    v30 = 0;
  }

  objc_storeStrong(v35, 0);
  if (!v30)
  {
    v30 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __78__SUSettingsScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke_391(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20[1] = a1;
  v20[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v20[0])
  {
    v9 = SUSettingsSharedLogger();
    v19 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      v8 = NSStringFromSelector(*(a1 + 56));
      v17 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUSettingsScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v17);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
    v16 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v15 = 1;
  }

  else
  {
    [*(a1 + 32) setEnrolledBetaProgram:location[0]];
    v5 = [v20[0] log];
    oslog = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v20[0] scanUUID];
      v4 = location[0];
      v12 = 0;
      if (location[0])
      {
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "programID")}];
        v12 = 1;
        v2 = v13;
      }

      else
      {
        v2 = @"(null)";
      }

      __os_log_helper_16_2_4_8_32_8_66_8_64_8_66(v22, "[SUSettingsScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v3, v4, v2);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: Refreshed current beta program: %@ (program ID: %{public}@", v22, 0x2Au);
      if (v12)
      {
        MEMORY[0x277D82BD8](v13);
      }

      MEMORY[0x277D82BD8](v3);
    }

    objc_storeStrong(&oslog, 0);
    (*(*(a1 + 40) + 16))();
    v15 = 0;
  }

  objc_storeStrong(v20, 0);
  if (!v15)
  {
    v15 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)queryRollbackStatus:(id)a3 withReplyHandler:(id)a4
{
  v19 = self;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v19);
  suClient = v19->_suClient;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__SUSettingsScanOperation_queryRollbackStatus_withReplyHandler___block_invoke;
  v10 = &unk_279CBF410;
  objc_copyWeak(v14, &v15);
  v14[1] = v18;
  v13 = MEMORY[0x277D82BE0](v16);
  v11 = MEMORY[0x277D82BE0](location);
  v12 = MEMORY[0x277D82BE0](v19);
  [(SUManagerClient *)suClient isRollingBack:&v6];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

void __64__SUSettingsScanOperation_queryRollbackStatus_withReplyHandler___block_invoke(uint64_t a1, char a2, id obj, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30[1] = a1;
  v30[0] = objc_loadWeakRetained((a1 + 56));
  v11 = 0;
  if (!v30[0])
  {
    v10 = SUSettingsSharedLogger();
    v29 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v28 = 16;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      log = v29;
      type = v28;
      v9 = NSStringFromSelector(*(a1 + 64));
      v27 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v36, "[SUSettingsScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v27);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v36, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    v26 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v25 = 1;
  }

  else
  {
    v6 = [v30[0] log];
    v24 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v30[0] scanUUID];
      __os_log_helper_16_2_5_8_32_8_66_4_0_8_66_8_64(v35, "[SUSettingsScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v5, v33 & 1, location, v31);
      _os_log_impl(&dword_26AC94000, v24, v23, "%s [%{public}@]: Is rolling back? %d; error: %{public}@; rollback descriptor: %@", v35, 0x30u);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&v24, 0);
    if (v31)
    {
      (*(*(a1 + 48) + 16))();
      v25 = 1;
    }

    else
    {
      [*(a1 + 32) setIsRollingBack:v33 & 1];
      queue = *(*(a1 + 40) + 64);
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __64__SUSettingsScanOperation_queryRollbackStatus_withReplyHandler___block_invoke_398;
      v18 = &unk_279CBF3E8;
      objc_copyWeak(v22, (a1 + 56));
      v22[1] = *(a1 + 64);
      v19 = MEMORY[0x277D82BE0](location);
      v20 = MEMORY[0x277D82BE0](*(a1 + 32));
      v21 = MEMORY[0x277D82BE0](*(a1 + 48));
      dispatch_barrier_async(queue, &v14);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v22);
      v25 = 0;
    }
  }

  objc_storeStrong(v30, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __64__SUSettingsScanOperation_queryRollbackStatus_withReplyHandler___block_invoke_398(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 56));
  v9 = 0;
  if (!v17[0])
  {
    v8 = SUSettingsSharedLogger();
    v16 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      v7 = NSStringFromSelector(*(a1 + 64));
      v14 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v19, "[SUSettingsScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v14);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v19, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v12 = 1;
  }

  else
  {
    if (*(a1 + 32))
    {
      v4 = [v17[0] log];
      oslog = [v4 oslog];
      MEMORY[0x277D82BD8](v4);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v1 = *(a1 + 32);
        v3 = [*(a1 + 40) rollbackDescriptor];
        v2 = [*(a1 + 40) rollbackDescriptor];
        __os_log_helper_16_2_5_8_32_8_64_8_0_8_64_8_0(v18, "[SUSettingsScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v1, v1, v3, v2);
        _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Assigning rollback descriptor %@ (%p) instead of %@ (%p)", v18, 0x34u);
        MEMORY[0x277D82BD8](v2);
        MEMORY[0x277D82BD8](v3);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 40) setRollbackDescriptor:*(a1 + 32)];
    }

    (*(*(a1 + 48) + 16))();
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
  *MEMORY[0x277D85DE8];
}

- (void)checkIsEligibleForRollback:(id)a3 withReplyHandler:(id)a4
{
  v19 = self;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v19);
  suClient = v19->_suClient;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__SUSettingsScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke;
  v10 = &unk_279CBF438;
  objc_copyWeak(v14, &v15);
  v14[1] = v18;
  v13 = MEMORY[0x277D82BE0](v16);
  v11 = MEMORY[0x277D82BE0](v19);
  v12 = MEMORY[0x277D82BE0](location);
  [(SUManagerClient *)suClient eligibleRollbackWithOptions:0 withResult:&v6];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

void __71__SUSettingsScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29[1] = a1;
  v29[0] = objc_loadWeakRetained((a1 + 56));
  v10 = 0;
  if (!v29[0])
  {
    v9 = SUSettingsSharedLogger();
    v28 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      v8 = NSStringFromSelector(*(a1 + 64));
      v26 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v33, "[SUSettingsScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v26);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v33, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    v25 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v24 = 1;
  }

  else
  {
    v5 = [v29[0] log];
    v23 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v29[0] scanUUID];
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_64(v32, "[SUSettingsScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v4, v30, location[0]);
      _os_log_impl(&dword_26AC94000, v23, v22, "%s [%{public}@]: error: %{public}@; eligible rollback descriptor: %@", v32, 0x2Au);
      MEMORY[0x277D82BD8](v4);
    }

    objc_storeStrong(&v23, 0);
    if (v30)
    {
      (*(*(a1 + 48) + 16))();
      v24 = 1;
    }

    else
    {
      queue = *(*(a1 + 32) + 64);
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __71__SUSettingsScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke_400;
      v17 = &unk_279CBF3E8;
      objc_copyWeak(v21, (a1 + 56));
      v21[1] = *(a1 + 64);
      v18 = MEMORY[0x277D82BE0](location[0]);
      v19 = MEMORY[0x277D82BE0](*(a1 + 40));
      v20 = MEMORY[0x277D82BE0](*(a1 + 48));
      dispatch_barrier_async(queue, &v13);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_destroyWeak(v21);
      v24 = 0;
    }
  }

  objc_storeStrong(v29, 0);
  if (!v24)
  {
    v24 = 0;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSettingsScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke_400(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 56));
  v9 = 0;
  if (!v17[0])
  {
    v8 = SUSettingsSharedLogger();
    v16 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      v7 = NSStringFromSelector(*(a1 + 64));
      v14 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v19, "[SUSettingsScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v14);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v19, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v12 = 1;
  }

  else
  {
    if (*(a1 + 32))
    {
      v4 = [v17[0] log];
      oslog = [v4 oslog];
      MEMORY[0x277D82BD8](v4);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v1 = *(a1 + 32);
        v3 = [*(a1 + 40) rollbackDescriptor];
        v2 = [*(a1 + 40) rollbackDescriptor];
        __os_log_helper_16_2_5_8_32_8_64_8_0_8_64_8_0(v18, "[SUSettingsScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v1, v1, v3, v2);
        _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Assigning rollback descriptor %@ (%p) instead of %@ (%p)", v18, 0x34u);
        MEMORY[0x277D82BD8](v2);
        MEMORY[0x277D82BD8](v3);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 40) setRollbackDescriptor:*(a1 + 32)];
    }

    (*(*(a1 + 48) + 16))();
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
  *MEMORY[0x277D85DE8];
}

- (void)checkIfAutoUpdateScheduled:(id)a3 withReplyHandler:(id)a4
{
  v19 = self;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v19);
  suClient = v19->_suClient;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__SUSettingsScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke;
  v10 = &unk_279CBF488;
  objc_copyWeak(v14, &v15);
  v14[1] = v18;
  v13 = MEMORY[0x277D82BE0](v16);
  v11 = MEMORY[0x277D82BE0](location);
  v12 = MEMORY[0x277D82BE0](v19);
  [(SUManagerClient *)suClient isAutoUpdateScheduled:&v6];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

void __71__SUSettingsScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v28 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v26[1] = a1;
  v26[0] = objc_loadWeakRetained((a1 + 56));
  v8 = 0;
  if (!v26[0])
  {
    v7 = SUSettingsSharedLogger();
    v25 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 64));
      v23 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v31, "[SUSettingsScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v23);
      _os_log_error_impl(&dword_26AC94000, v25, v24, "%s: Self is nil in %{public}@. Stopping.", v31, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v21 = 1;
  }

  else
  {
    v5 = [v26[0] log];
    v20 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v26[0] scanUUID];
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v30, "[SUSettingsScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v4, v28 & 1, location);
      _os_log_impl(&dword_26AC94000, v20, v19, "%s [%{public}@]: isAutoUpdateScheduled - result: %d, error: %{public}@", v30, 0x26u);
      MEMORY[0x277D82BD8](v4);
    }

    objc_storeStrong(&v20, 0);
    if (location || ([*(a1 + 32) setIsAutoUpdateScheduled:v28 & 1], (v28 & 1) == 0))
    {
      (*(*(a1 + 48) + 16))();
      v21 = 1;
    }

    else
    {
      v3 = *(*(a1 + 40) + 88);
      v10 = MEMORY[0x277D85DD0];
      v11 = -1073741824;
      v12 = 0;
      v13 = __71__SUSettingsScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke_402;
      v14 = &unk_279CBF460;
      objc_copyWeak(v17, (a1 + 56));
      v17[1] = *(a1 + 64);
      v18 = v28 & 1;
      v16 = MEMORY[0x277D82BE0](*(a1 + 48));
      v15 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v3 currentAutoInstallOperation:0 withResult:&v10];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_destroyWeak(v17);
      v21 = 0;
    }
  }

  objc_storeStrong(v26, 0);
  if (!v21)
  {
    v21 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSettingsScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke_402(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18[1] = a1;
  v18[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v18[0])
  {
    v8 = SUSettingsSharedLogger();
    v17 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      v7 = NSStringFromSelector(*(a1 + 56));
      v15 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUSettingsScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v15);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v17, 0);
    v14 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v4 = [v18[0] log];
    oslog = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v18[0] scanUUID];
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_4_0(v21, "[SUSettingsScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v3, location[0], v19, *(a1 + 64) & 1);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s [%{public}@]: currentAutoInstallOperation - result: %{public}@, error: %{public}@; was scheduled: %d", v21, 0x30u);
      MEMORY[0x277D82BD8](v3);
    }

    objc_storeStrong(&oslog, 0);
    if (v19)
    {
      (*(*(a1 + 40) + 16))();
      v13 = 1;
    }

    else
    {
      [*(a1 + 32) setCurrentAutoInstallOperation:location[0]];
      (*(*(a1 + 40) + 16))();
      v13 = 0;
    }
  }

  objc_storeStrong(v18, 0);
  if (!v13)
  {
    v13 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)startRefreshOperation:(id)a3 withEventInfo:(id)a4 completionHandler:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = MEMORY[0x277D82BE0](v23);
  objc_sync_enter(v19);
  if ([(SUSettingsScanOperation *)v23 isActive])
  {
    v16 = [(SUCoreFSM *)v23->_scanFSM diag];
    [v16 trackAnomaly:@"[SUSettingsScanOperation]" forReason:@"The scan machine is currently active" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    v5 = MEMORY[0x26D66A460](v20);
    refreshScanCompletionHandler = v23->_refreshScanCompletionHandler;
    v23->_refreshScanCompletionHandler = v5;
    MEMORY[0x277D82BD8](refreshScanCompletionHandler);
    v23->_operationType = 2;
    v7 = dispatch_group_create();
    scanGroup = v23->_scanGroup;
    v23->_scanGroup = v7;
    MEMORY[0x277D82BD8](scanGroup);
    v15 = MEMORY[0x277CCACA8];
    v14 = [(SUSettingsScanOperation *)v23 baseDomain];
    v12 = [v15 stringWithFormat:@"%@.concurrentQueue", v14];
    v9 = v12;
    label = [v12 UTF8String];
    v10 = dispatch_queue_create(label, MEMORY[0x277D85CD8]);
    concurrentQueue = v23->_concurrentQueue;
    v23->_concurrentQueue = v10;
    MEMORY[0x277D82BD8](concurrentQueue);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v14);
    [(SUCoreFSM *)v23->_scanFSM activateMachine];
    [(SUCoreFSM *)v23->_scanFSM postEvent:location[0] withInfo:v21];
  }

  objc_sync_exit(v19);
  MEMORY[0x277D82BD8](v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldConsiderErrorAsSuccessfulCase:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v5 = [location[0] domain];
    v6 = [v5 isEqualToString:*MEMORY[0x277D64910]];
    MEMORY[0x277D82BD8](v5);
    if (v6)
    {
      v7 = [location[0] code];
      v4 = 1;
      if (v7 != 3)
      {
        v4 = 1;
        if (v7 != 55)
        {
          v4 = 1;
          if (v7 != 13)
          {
            v4 = 1;
            if (v7 != 11)
            {
              v4 = v7 == 14;
            }
          }
        }
      }

      v9 = v4;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)invalidateMachine
{
  [(SUSettingsScanOperation *)self setFullScanCompletionHandler:?];
  [(SUSettingsScanOperation *)self setRefreshScanCompletionHandler:0];
  [(SUSettingsScanOperation *)self setCancelHandler:0];
  [(SUSettingsScanOperation *)self setOperationType:0];
}

- (id)baseDomain
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [MEMORY[0x277D643F8] sharedCore];
  v4 = [v5 commonDomain];
  v6 = [v3 initWithFormat:@"%@.susettings.fsm.scan.%@", v4, self->_scanUUID];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

@end