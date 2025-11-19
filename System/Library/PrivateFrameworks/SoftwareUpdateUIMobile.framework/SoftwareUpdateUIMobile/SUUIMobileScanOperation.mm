@interface SUUIMobileScanOperation
+ (id)_generateStateTable;
- (BOOL)isActive;
- (BOOL)shouldConsiderErrorAsSuccessfulCase:(id)a3;
- (SUUIMobileScanOperation)init;
- (SUUIMobileScanOperation)initWithIdentifier:(id)a3 options:(id)a4 usingSUManagerClient:(id)a5 andBetaManager:(id)a6 withCompletionQueue:(id)a7;
- (id)baseDomain;
- (id)cachedScanResults;
- (id)cachedScanResults:(BOOL *)a3;
- (id)currentOSVersionIdentifier;
- (id)readScanResultsCacheExpectedTTLValue;
- (id)scanResultsCacheExpectedTTLDuration;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_CheckForAvailableUpdate:(id)a3 error:(id *)a4;
- (int64_t)action_ObserveConcurrentQueries:(id)a3 error:(id *)a4;
- (int64_t)action_QueryCurrentDownload:(id)a3 error:(id *)a4;
- (int64_t)action_QueryFullScanMetadata:(id)a3 error:(id *)a4;
- (int64_t)action_QueryUpdatesInfo:(id)a3 error:(id *)a4;
- (int64_t)action_ReportScanCanceled:(id)a3 error:(id *)a4;
- (int64_t)action_ReportScanOutcome:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)cacheDiscoveredScanResults:(id)a3;
- (void)cancel:(id)a3;
- (void)checkForAvailableUpdatesWithCompletionHandler:(id)a3;
- (void)checkForAvailableUpdatesWithContext:(id)a3 completionHandler:(id)a4;
- (void)checkForBetaPrograms:(id)a3 withReplyHandler:(id)a4;
- (void)checkForMDMRestrictions:(id)a3 withReplyHandler:(id)a4;
- (void)checkIfAutoUpdateScheduled:(id)a3 withReplyHandler:(id)a4;
- (void)checkIsEligibleForRollback:(id)a3 withReplyHandler:(id)a4;
- (void)controllerCurrentlyScanning:(id)a3;
- (void)dealloc;
- (void)handleDiscoveredScanResults:(id)a3 withError:(id)a4 usingEventInfo:(id)a5 isCachedResults:(BOOL)a6 activity:(suui_activity_s *)a7;
- (void)handleDiscoveredScanResults:(id)a3 withError:(id)a4 usingEventInfo:(id)a5 isCachedResults:(BOOL)a6 activity:(suui_activity_s *)a7 beforePostEvent:(id)a8;
- (void)hasScanResultsCacheWithCompletion:(id)a3;
- (void)invalidateMachine;
- (void)invalidateScanResultsCache:(id)a3;
- (void)queryDDMDeclaration:(id)a3 withReplyHandler:(id)a4;
- (void)queryRollbackStatus:(id)a3 withReplyHandler:(id)a4;
- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 completionHandler:(id)a5;
- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 context:(id)a5 completionHandler:(id)a6;
- (void)removeCachedScanResults;
- (void)scanForDeviceEligibleBetaPrograms:(id)a3 withReplyHandler:(id)a4;
- (void)scheduleConcurrentActionWithSelector:(SEL)a3 eventInfo:(id)a4;
@end

@implementation SUUIMobileScanOperation

+ (id)_generateStateTable
{
  v110[6] = *MEMORY[0x277D85DE8];
  v50[2] = a1;
  v50[1] = a2;
  v15 = MEMORY[0x277D64E88];
  v109[0] = *MEMORY[0x277D64E88];
  v107[0] = *MEMORY[0x277D64D18];
  v18 = MEMORY[0x277D64800];
  v105[0] = *MEMORY[0x277D64800];
  v4 = MEMORY[0x277D64E80];
  v106[0] = *MEMORY[0x277D64E80];
  v16 = MEMORY[0x277D644B8];
  v105[1] = *MEMORY[0x277D644B8];
  v106[1] = *MEMORY[0x277D64CC0];
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:?];
  v108[0] = v47;
  v107[1] = *MEMORY[0x277D64DD8];
  v103[0] = *v18;
  v6 = MEMORY[0x277D64EC0];
  v104[0] = *MEMORY[0x277D64EC0];
  v103[1] = *v16;
  v5 = MEMORY[0x277D64CB8];
  v104[1] = *MEMORY[0x277D64CB8];
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v108[1] = v46;
  v107[2] = *MEMORY[0x277D64DE0];
  v101[0] = *v18;
  v9 = MEMORY[0x277D64EC8];
  v102[0] = *MEMORY[0x277D64EC8];
  v101[1] = *v16;
  v7 = MEMORY[0x277D64CC8];
  v102[1] = *MEMORY[0x277D64CC8];
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v108[2] = v45;
  v14 = MEMORY[0x277D64D08];
  v107[3] = *MEMORY[0x277D64D08];
  v99[0] = *v18;
  v100[0] = *v15;
  v99[1] = *v16;
  v17 = MEMORY[0x277D64CD0];
  v100[1] = *MEMORY[0x277D64CD0];
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
  v108[3] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:?];
  v110[0] = v43;
  v109[1] = *v4;
  v97[0] = *MEMORY[0x277D64D88];
  v95 = *v16;
  v96 = *MEMORY[0x277D64C78];
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:?];
  v98[0] = v42;
  v97[1] = *MEMORY[0x277D64E70];
  v93[0] = *v18;
  v94[0] = *v6;
  v93[1] = *v16;
  v94[1] = *v5;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v98[1] = v41;
  v8 = MEMORY[0x277D64D80];
  v97[2] = *MEMORY[0x277D64D80];
  v91[0] = *v18;
  v92[0] = *v6;
  v91[1] = *v16;
  v92[1] = *v5;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  v98[2] = v40;
  v97[3] = *MEMORY[0x277D64D20];
  v89[0] = *v18;
  v90[0] = *v15;
  v89[1] = *v16;
  v13 = MEMORY[0x277D64CD8];
  v90[1] = *MEMORY[0x277D64CD8];
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v98[3] = v39;
  v12 = MEMORY[0x277D64D28];
  v97[4] = *MEMORY[0x277D64D28];
  v87[0] = *v18;
  v88[0] = *v15;
  v87[1] = *v16;
  v88[1] = *v13;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v98[4] = v38;
  v97[5] = *v14;
  v85[0] = *v18;
  v86[0] = *v15;
  v85[1] = *v16;
  v86[1] = *v17;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v98[5] = v37;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:?];
  v110[1] = v36;
  v109[2] = *v6;
  v83[0] = *MEMORY[0x277D64DC0];
  v81[0] = *v18;
  v82[0] = *v9;
  v81[1] = *v16;
  v82[1] = *v7;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v84[0] = v35;
  v83[1] = *MEMORY[0x277D64DB8];
  v79[0] = *v18;
  v80[0] = *v15;
  v79[1] = *v16;
  v80[1] = *v13;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v84[1] = v34;
  v83[2] = *v8;
  v77[0] = *v18;
  v11 = MEMORY[0x277D64EA0];
  v78[0] = *MEMORY[0x277D64EA0];
  v77[1] = *v16;
  v10 = MEMORY[0x277D64C90];
  v78[1] = *MEMORY[0x277D64C90];
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v84[2] = v33;
  v83[3] = *v12;
  v75[0] = *v18;
  v76[0] = *v15;
  v75[1] = *v16;
  v76[1] = *v13;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v84[3] = v32;
  v83[4] = *v14;
  v73[0] = *v18;
  v74[0] = *v15;
  v73[1] = *v16;
  v74[1] = *v17;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v84[4] = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:5];
  v110[2] = v30;
  v109[3] = *v9;
  v71[0] = *MEMORY[0x277D64DD0];
  v69[0] = *v18;
  v70[0] = *v11;
  v69[1] = *v16;
  v70[1] = *v10;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v72[0] = v29;
  v71[1] = *MEMORY[0x277D64DC8];
  v67[0] = *v18;
  v68[0] = *v15;
  v67[1] = *v16;
  v68[1] = *v13;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v72[1] = v28;
  v71[2] = *v12;
  v65[0] = *v18;
  v66[0] = *v15;
  v65[1] = *v16;
  v66[1] = *v13;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v72[2] = v27;
  v71[3] = *v14;
  v63[0] = *v18;
  v64[0] = *v15;
  v63[1] = *v16;
  v64[1] = *v17;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v72[3] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:4];
  v110[3] = v25;
  v109[4] = *v11;
  v61[0] = *MEMORY[0x277D64CF8];
  v59[0] = *v18;
  v60[0] = *v15;
  v59[1] = *v16;
  v60[1] = *v13;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v62[0] = v24;
  v61[1] = *v12;
  v57[0] = *v18;
  v58[0] = *v15;
  v57[1] = *v16;
  v58[1] = *v13;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v62[1] = v23;
  v61[2] = *v14;
  v55[0] = *v18;
  v56[0] = *v15;
  v55[1] = *v16;
  v56[1] = *v17;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v62[2] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v110[4] = v21;
  v109[5] = *MEMORY[0x277D647E8];
  v53 = *MEMORY[0x277D647E0];
  v51 = *v18;
  v52 = *MEMORY[0x277D647F0];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v54 = v20;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v110[5] = v19;
  v50[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:6];
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
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v49 = [v2 initWithDictionary:v50[0] copyItems:1];
  v48 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(v50, 0);
  *MEMORY[0x277D85DE8];

  return v48;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_activity)
  {
    if (v4->_activity->var2)
    {
      os_activity_scope_leave(&v4->_activity->var0);
    }

    free(v4->_activity);
    v4->_activity = 0;
  }

  v2.receiver = v4;
  v2.super_class = SUUIMobileScanOperation;
  [(SUUIMobileScanOperation *)&v2 dealloc];
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = 0;
  objc_storeStrong(&v32, a6);
  v31 = 0;
  objc_storeStrong(&v31, a7);
  v30 = a8;
  v17 = [(SUUIMobileScanOperation *)v36 scanFSM];
  v16 = [(SUCoreFSM *)v17 extendedStateQueue];
  dispatch_assert_queue_V2(v16);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v29[0] = 3;
  p_lock = &v36->_lock;
  v38 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v29[1] = p_lock;
  if (!v36->_canceled || ([location[0] isEqualToString:*MEMORY[0x277D64CD0]] & 1) != 0)
  {
    v28 = 2;
  }

  else
  {
    v15 = [MEMORY[0x277D64B58] scanOperationLogger];
    v27 = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(SUUIMobileScanOperation *)v36 identifier];
      v14 = MEMORY[0x277D82BE0](v13);
      v25 = v14;
      operationType = v36->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v42 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v42 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v42 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v42 = MEMORY[0x277D82BE0](@"N");
      }

      v12 = v42;
      v8 = v42;
      v11 = v12;
      v24 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_64(v43, "[SUUIMobileScanOperation performAction:onEvent:inState:withInfo:nextState:error:]", v14, v24, location[0]);
      _os_log_impl(&dword_26B0B9000, v27, v26, "%s [%{public}@|%{public}@]: Cancel has been requested. Skipping on %@", v43, 0x2Au);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v37 = 0;
    v28 = 1;
  }

  v40 = v29;
  switch(v29[0])
  {
    case 1:
      [v40[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v40[1]);
      break;
    case 3:
      v9 = v40[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v28 == 2)
  {
    if ([location[0] isEqualToString:*MEMORY[0x277D647D0]])
    {
      v23 = 0;
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CC0]])
    {
      v23 = [(SUUIMobileScanOperation *)v36 action_QueryFullScanMetadata:v32 error:v30];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64C78]])
    {
      v23 = [(SUUIMobileScanOperation *)v36 action_CheckForAvailableUpdate:v32 error:v30];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CB8]])
    {
      v23 = [(SUUIMobileScanOperation *)v36 action_QueryCurrentDownload:v32 error:v30];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CC8]])
    {
      v23 = [(SUUIMobileScanOperation *)v36 action_QueryUpdatesInfo:v32 error:v30];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64C90]])
    {
      v23 = [(SUUIMobileScanOperation *)v36 action_ObserveConcurrentQueries:v32 error:v30];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CD8]])
    {
      v23 = [(SUUIMobileScanOperation *)v36 action_ReportScanOutcome:v32 error:v30];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CD0]])
    {
      v23 = [(SUUIMobileScanOperation *)v36 action_ReportScanCanceled:v32 error:v30];
    }

    else
    {
      v23 = [(SUUIMobileScanOperation *)v36 actionUnknownAction:location[0] error:v30];
    }

    v37 = v23;
    v28 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v37;
}

- (int64_t)action_QueryFullScanMetadata:(id)a3 error:(id *)a4
{
  v90 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v88 = a4;
  v34 = [(SUUIMobileScanOperation *)v90 scanFSM];
  v33 = [(SUCoreFSM *)v34 extendedStateQueue];
  dispatch_assert_queue_V2(v33);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  if (location[0])
  {
    v84 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v84)
    {
      v83 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v84[1].opaque[0];
      v84[1].opaque[0] = v83;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      v29 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v82 = [v29 oslog];
      MEMORY[0x277D82BD8](v29);
      v81 = 16;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        log = v82;
        type = v81;
        __os_log_helper_16_0_0(v80);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions", v80, 2u);
      }

      objc_storeStrong(&v82, 0);
    }

    v79 = v84;
    v85 = v84;
    if (v84)
    {
      os_activity_scope_enter(v85[1].opaque[0], v85);
      LOBYTE(v85[1].opaque[1]) = 1;
    }

    v78 = v85;
    v86 = v85;
    v75 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v75)
    {
      v74 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryDDMDeclaration:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v5 = v75[1].opaque[0];
      v75[1].opaque[0] = v74;
      MEMORY[0x277D82BD8](v5);
    }

    else
    {
      v26 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v73 = [v26 oslog];
      MEMORY[0x277D82BD8](v26);
      v72 = 16;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v24 = v73;
        v25 = v72;
        __os_log_helper_16_0_0(v71);
        _os_log_error_impl(&dword_26B0B9000, v24, v25, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryDDMDeclaration:withReplyHandler:", v71, 2u);
      }

      objc_storeStrong(&v73, 0);
    }

    v70 = v75;
    v76 = v75;
    if (v75)
    {
      os_activity_scope_enter(v76[1].opaque[0], v76);
      LOBYTE(v76[1].opaque[1]) = 1;
    }

    v69 = v76;
    v77 = v76;
    [(SUUIMobileScanOperation *)v90 scheduleConcurrentActionWithSelector:sel_queryDDMDeclaration_withReplyHandler_ eventInfo:location[0]];
    if (v77)
    {
      if (LOBYTE(v77[1].opaque[1]))
      {
        os_activity_scope_leave(v77);
      }

      free(v77);
      v77 = 0;
    }

    v66 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v66)
    {
      v65 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForMDMRestrictions:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v6 = v66[1].opaque[0];
      v66[1].opaque[0] = v65;
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v23 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v64 = [v23 oslog];
      MEMORY[0x277D82BD8](v23);
      v63 = 16;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v21 = v64;
        v22 = v63;
        __os_log_helper_16_0_0(v62);
        _os_log_error_impl(&dword_26B0B9000, v21, v22, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForMDMRestrictions:withReplyHandler:", v62, 2u);
      }

      objc_storeStrong(&v64, 0);
    }

    v61 = v66;
    v67 = v66;
    if (v66)
    {
      os_activity_scope_enter(v67[1].opaque[0], v67);
      LOBYTE(v67[1].opaque[1]) = 1;
    }

    v60 = v67;
    v68 = v67;
    [(SUUIMobileScanOperation *)v90 scheduleConcurrentActionWithSelector:sel_checkForMDMRestrictions_withReplyHandler_ eventInfo:location[0]];
    if (v68)
    {
      if (LOBYTE(v68[1].opaque[1]))
      {
        os_activity_scope_leave(v68);
      }

      free(v68);
      v68 = 0;
    }

    v57 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v57)
    {
      v56 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForBetaPrograms:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v7 = v57[1].opaque[0];
      v57[1].opaque[0] = v56;
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v20 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [v20 oslog];
      MEMORY[0x277D82BD8](v20);
      v54 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v18 = oslog;
        v19 = v54;
        __os_log_helper_16_0_0(v53);
        _os_log_error_impl(&dword_26B0B9000, v18, v19, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForBetaPrograms:withReplyHandler:", v53, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v52 = v57;
    state = v57;
    if (v57)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v51 = state;
    v59 = state;
    [(SUUIMobileScanOperation *)v90 scheduleConcurrentActionWithSelector:sel_checkForBetaPrograms_withReplyHandler_ eventInfo:location[0]];
    if (v59)
    {
      if (LOBYTE(v59[1].opaque[1]))
      {
        os_activity_scope_leave(v59);
      }

      free(v59);
      v59 = 0;
    }

    v48 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v48)
    {
      v47 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryRollbackStatus:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v8 = v48[1].opaque[0];
      v48[1].opaque[0] = v47;
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      v17 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v46 = [v17 oslog];
      MEMORY[0x277D82BD8](v17);
      v45 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v15 = v46;
        v16 = v45;
        __os_log_helper_16_0_0(v44);
        _os_log_error_impl(&dword_26B0B9000, v15, v16, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryRollbackStatus:withReplyHandler:", v44, 2u);
      }

      objc_storeStrong(&v46, 0);
    }

    v43 = v48;
    v49 = v48;
    if (v48)
    {
      os_activity_scope_enter(v49[1].opaque[0], v49);
      LOBYTE(v49[1].opaque[1]) = 1;
    }

    v42 = v49;
    v50 = v49;
    [(SUUIMobileScanOperation *)v90 scheduleConcurrentActionWithSelector:sel_queryRollbackStatus_withReplyHandler_ eventInfo:location[0]];
    if (v50)
    {
      if (LOBYTE(v50[1].opaque[1]))
      {
        os_activity_scope_leave(v50);
      }

      free(v50);
      v50 = 0;
    }

    v39 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v39)
    {
      v38 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkIsEligibleForRollback:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v9 = v39[1].opaque[0];
      v39[1].opaque[0] = v38;
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v14 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v37 = [v14 oslog];
      MEMORY[0x277D82BD8](v14);
      v36 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v12 = v37;
        v13 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_error_impl(&dword_26B0B9000, v12, v13, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkIsEligibleForRollback:withReplyHandler:", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
    }

    v40 = v39;
    if (v39)
    {
      os_activity_scope_enter(v40[1].opaque[0], v40);
      LOBYTE(v40[1].opaque[1]) = 1;
    }

    v41 = v40;
    [(SUUIMobileScanOperation *)v90 scheduleConcurrentActionWithSelector:sel_checkIsEligibleForRollback_withReplyHandler_ eventInfo:location[0]];
    if (v41)
    {
      if (LOBYTE(v41[1].opaque[1]))
      {
        os_activity_scope_leave(v41);
      }

      free(v41);
      v41 = 0;
    }

    v11 = [(SUUIMobileScanOperation *)v90 scanFSM];
    [(SUCoreFSM *)v11 followupEvent:*MEMORY[0x277D64D88] withInfo:location[0]];
    MEMORY[0x277D82BD8](v11);
    v91 = 0;
    v87 = 1;
    _SUUIActivityCleanup(&v86);
  }

  else
  {
    v31 = [(SUUIMobileScanOperation *)v90 scanFSM];
    v30 = [(SUCoreFSM *)v31 diag];
    [v30 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    v91 = 8102;
    v87 = 1;
  }

  objc_storeStrong(location, 0);
  return v91;
}

- (int64_t)action_CheckForAvailableUpdate:(id)a3 error:(id *)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v85 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v83 = a4;
  v40 = [(SUUIMobileScanOperation *)v85 scanFSM];
  v39 = [(SUCoreFSM *)v40 extendedStateQueue];
  dispatch_assert_queue_V2(v39);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  if (location[0])
  {
    v77 = 0;
    v78 = &v77;
    v79 = 0x20000000;
    v80 = 32;
    v81 = 0;
    v75 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v75)
    {
      v74 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.CheckForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v75[1].opaque[0];
      v75[1].opaque[0] = v74;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      v36 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v73 = [v36 oslog];
      MEMORY[0x277D82BD8](v36);
      v72 = 16;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        log = v73;
        type = v72;
        __os_log_helper_16_0_0(v71);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.CheckForUpdates", v71, 2u);
      }

      objc_storeStrong(&v73, 0);
    }

    v70 = v75;
    v76 = v75;
    if (v75)
    {
      os_activity_scope_enter(v76[1].opaque[0], v76);
      LOBYTE(v76[1].opaque[1]) = 1;
    }

    v69 = v76;
    v78[3] = v76;
    v67 = 0;
    v32 = [location[0] options];
    v33 = 1;
    if (v32)
    {
      v68 = [location[0] options];
      v67 = 1;
      v33 = v68 == 0;
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    MEMORY[0x277D82BD8](v32);
    if (v33)
    {
      v31 = [(SUUIMobileScanOperation *)v85 scanFSM];
      v30 = [(SUCoreFSM *)v31 diag];
      [v30 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"Missing eventInfo parameter: scanOptions." withResult:8102 withError:0];
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      if (v78[3])
      {
        if (*(v78[3] + 24))
        {
          os_activity_scope_leave(v78[3]);
        }

        free(v78[3]);
        v78[3] = 0;
      }

      v86 = 8102;
      v82 = 1;
      goto LABEL_57;
    }

    v65 = 0;
    v28 = [location[0] thirdPartyDiscoveredScanResults];
    v29 = 0;
    if (!v28)
    {
      v66 = [location[0] thirdPartyDiscoveredScanError];
      v65 = 1;
      v29 = v66 == 0;
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    MEMORY[0x277D82BD8](v28);
    if (v29)
    {
      v63 = 0;
      v27 = 0;
      if (([location[0] forceReloadScanResults] & 1) == 0)
      {
        v64 = [(SUUIMobileScanOperation *)v85 options];
        v63 = 1;
        v27 = [(SUUIMobileScanOperationOptions *)v64 supportScanResultsCaching];
      }

      if (v63)
      {
        MEMORY[0x277D82BD8](v64);
      }

      if (v27)
      {
        v62 = 0;
        v61 = [(SUUIMobileScanOperation *)v85 cachedScanResults:&v62];
        if (v61 || (v62 & 1) != 0)
        {
          [(SUUIMobileScanOperation *)v85 handleDiscoveredScanResults:v61 withError:0 usingEventInfo:location[0] isCachedResults:1 activity:v78[3]];
          v86 = 0;
          v82 = 1;
        }

        else
        {
          v82 = 0;
        }

        objc_storeStrong(&v61, 0);
        if (v82)
        {
          goto LABEL_57;
        }
      }

      else if ([location[0] forceReloadScanResults])
      {
        [(SUUIMobileScanOperation *)v85 removeCachedScanResults];
      }

      v60 = 0uLL;
      v26 = [MEMORY[0x277D64B58] scanOperationLogger];
      v24 = [v26 oslog];
      *&v25 = _SUUISignpostCreate();
      *(&v25 + 1) = v5;
      v59 = v25;
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v26);
      if (v25)
      {
        v23 = [MEMORY[0x277D64B58] scanOperationLogger];
        v58 = [v23 oslog];
        MEMORY[0x277D82BD8](v23);
        v57 = OS_SIGNPOST_INTERVAL_BEGIN;
        v56 = v59;
        if (v59 != -1 && os_signpost_enabled(v58))
        {
          v22 = [(SUUIMobileScanOperation *)v85 identifier];
          __os_log_helper_16_2_1_8_66(v91, v22);
          _os_signpost_emit_with_name_impl(&dword_26B0B9000, v58, v57, v56, "CheckForAvailableUpdates", "Begins scanForUpdates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v91, 0xCu);
          MEMORY[0x277D82BD8](v22);
        }

        objc_storeStrong(&v58, 0);
        v21 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v54 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v59;
          v19 = [(SUUIMobileScanOperation *)v85 identifier];
          __os_log_helper_16_2_2_8_0_8_66(v90, v20, v19);
          _os_log_impl(&dword_26B0B9000, oslog, v54, "BEGIN [%lld]: CheckForAvailableUpdates Begins scanForUpdates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v90, 0x16u);
          MEMORY[0x277D82BD8](v19);
        }

        objc_storeStrong(&oslog, 0);
      }

      v60 = v59;
      v18 = [(SUUIMobileScanOperation *)v85 suClient];
      v17 = [location[0] options];
      v46 = MEMORY[0x277D85DD0];
      v47 = -1073741824;
      v48 = 0;
      v49 = __64__SUUIMobileScanOperation_action_CheckForAvailableUpdate_error___block_invoke;
      v50 = &unk_279CCCCE0;
      v53 = v60;
      v51 = MEMORY[0x277D82BE0](v85);
      v52[0] = MEMORY[0x277D82BE0](location[0]);
      v52[1] = &v77;
      [(SUManagerClient *)v18 scanForUpdates:v17 withScanResults:&v46];
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      objc_storeStrong(v52, 0);
      objc_storeStrong(&v51, 0);
    }

    else
    {
      v16 = [MEMORY[0x277D64B58] scanOperationLogger];
      v45 = [v16 oslog];
      MEMORY[0x277D82BD8](v16);
      v44 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(SUUIMobileScanOperation *)v85 identifier];
        v15 = MEMORY[0x277D82BE0](v14);
        v43 = v15;
        operationType = v85->_operationType;
        if (operationType)
        {
          if (operationType == 1)
          {
            v88 = MEMORY[0x277D82BE0](@"F");
          }

          else if (operationType == 2)
          {
            v88 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v88 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v88 = MEMORY[0x277D82BE0](@"N");
        }

        v13 = v88;
        v6 = v88;
        v12 = v13;
        v42 = MEMORY[0x277D82BE0](v12);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v89, "[SUUIMobileScanOperation action_CheckForAvailableUpdate:error:]", v15, v42);
        _os_log_impl(&dword_26B0B9000, v45, v44, "%s [%{public}@|%{public}@]: Got third-party discovered scan results. Using them instead of performing a new scan.", v89, 0x20u);
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v14);
        objc_storeStrong(&v42, 0);
        objc_storeStrong(&v43, 0);
      }

      objc_storeStrong(&v45, 0);
      v11 = v85;
      v10 = [location[0] thirdPartyDiscoveredScanResults];
      v9 = [location[0] thirdPartyDiscoveredScanError];
      v7 = v78[3];
      [SUUIMobileScanOperation handleDiscoveredScanResults:v11 withError:"handleDiscoveredScanResults:withError:usingEventInfo:isCachedResults:activity:" usingEventInfo:v10 isCachedResults:? activity:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
    }

    v86 = 0;
    v82 = 1;
LABEL_57:
    _Block_object_dispose(&v77, 8);
    goto LABEL_58;
  }

  v38 = [(SUUIMobileScanOperation *)v85 scanFSM];
  v37 = [(SUCoreFSM *)v38 diag];
  [v37 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  v86 = 8102;
  v82 = 1;
LABEL_58:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v86;
}

void __64__SUUIMobileScanOperation_action_CheckForAvailableUpdate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v62 = 0;
  objc_storeStrong(&v62, a3);
  v61 = a1;
  v3 = *(a1 + 56);
  v59 = 0;
  v57 = 0;
  v22 = 0;
  if (v3)
  {
    v60 = [MEMORY[0x277D64B58] scanOperationLogger];
    v59 = 1;
    v58 = [v60 oslog];
    v57 = 1;
    v22 = os_signpost_enabled(v58);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](v58);
  }

  if (v59)
  {
    MEMORY[0x277D82BD8](v60);
  }

  if (v22)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v56 = _SUUISignpostGetNanoseconds() / 1000000000.0;
    v19 = [MEMORY[0x277D64B58] scanOperationLogger];
    v55 = [v19 oslog];
    MEMORY[0x277D82BD8](v19);
    v54 = OS_SIGNPOST_EVENT;
    v53 = *(a1 + 56);
    if (v53 && v53 != -1 && os_signpost_enabled(v55))
    {
      v51 = 0;
      v49 = 0;
      v47 = 0;
      v45 = 0;
      v43 = 0;
      v41 = 0;
      v39 = 0;
      if (location[0])
      {
        v18 = MEMORY[0x277CCACA8];
        v52 = [location[0] preferredDescriptor];
        v51 = 1;
        if (v52)
        {
          v50 = [location[0] preferredDescriptor];
          v49 = 1;
          v48 = [v50 humanReadableUpdateName];
          v47 = 1;
          v17 = v48;
        }

        else
        {
          v17 = @"N/A";
        }

        v46 = [location[0] alternateDescriptor];
        v45 = 1;
        if (v46)
        {
          v44 = [location[0] alternateDescriptor];
          v43 = 1;
          v42 = [v44 humanReadableUpdateName];
          v41 = 1;
          v6 = [v18 stringWithFormat:@"Preferred: %@; Alternate: %@", v17, v42];
        }

        else
        {
          v6 = [v18 stringWithFormat:@"Preferred: %@; Alternate: %@", v17, @"N/A"];
        }

        v40 = v6;
        v39 = 1;
        v16 = v40;
      }

      else
      {
        v16 = @"N/A";
      }

      if (v62)
      {
        v15 = [v62 code];
      }

      else
      {
        v15 = 0;
      }

      __os_log_helper_16_2_2_8_66_4_2(v65, v16, v15);
      _os_signpost_emit_with_name_impl(&dword_26B0B9000, v55, v54, v53, "CheckForAvailableUpdates", "Scan Finished ScanResults=%{public,signpost.telemetry:string1,name=ScanResults}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v65, 0x12u);
      if (v39)
      {
        MEMORY[0x277D82BD8](v40);
      }

      if (v41)
      {
        MEMORY[0x277D82BD8](v42);
      }

      if (v43)
      {
        MEMORY[0x277D82BD8](v44);
      }

      if (v45)
      {
        MEMORY[0x277D82BD8](v46);
      }

      if (v47)
      {
        MEMORY[0x277D82BD8](v48);
      }

      if (v49)
      {
        MEMORY[0x277D82BD8](v50);
      }

      if (v51)
      {
        MEMORY[0x277D82BD8](v52);
      }
    }

    objc_storeStrong(&v55, 0);
    v14 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 56);
      v13 = *&v56;
      v36 = 0;
      v34 = 0;
      v32 = 0;
      v30 = 0;
      v28 = 0;
      v26 = 0;
      v24 = 0;
      if (location[0])
      {
        v11 = MEMORY[0x277CCACA8];
        v37 = [location[0] preferredDescriptor];
        v36 = 1;
        if (v37)
        {
          v35 = [location[0] preferredDescriptor];
          v34 = 1;
          v33 = [v35 humanReadableUpdateName];
          v32 = 1;
          v10 = v33;
        }

        else
        {
          v10 = @"N/A";
        }

        v31 = [location[0] alternateDescriptor];
        v30 = 1;
        if (v31)
        {
          v29 = [location[0] alternateDescriptor];
          v28 = 1;
          v27 = [v29 humanReadableUpdateName];
          v26 = 1;
          v7 = [v11 stringWithFormat:@"Preferred: %@; Alternate: %@", v10, v27];
        }

        else
        {
          v7 = [v11 stringWithFormat:@"Preferred: %@; Alternate: %@", v10, @"N/A"];
        }

        v25 = v7;
        v24 = 1;
        v9 = v25;
      }

      else
      {
        v9 = @"N/A";
      }

      if (v62)
      {
        v8 = [v62 code];
      }

      else
      {
        v8 = 0;
      }

      __os_log_helper_16_2_4_8_0_8_0_8_66_4_2(v64, v12, v13, v9, v8);
      _os_log_impl(&dword_26B0B9000, oslog, OS_LOG_TYPE_DEFAULT, "EVENT [%lld] %fs: CheckForAvailableUpdates Scan Finished ScanResults=%{public,signpost.telemetry:string1,name=ScanResults}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v64, 0x26u);
      if (v24)
      {
        MEMORY[0x277D82BD8](v25);
      }

      if (v26)
      {
        MEMORY[0x277D82BD8](v27);
      }

      if (v28)
      {
        MEMORY[0x277D82BD8](v29);
      }

      if (v30)
      {
        MEMORY[0x277D82BD8](v31);
      }

      if (v32)
      {
        MEMORY[0x277D82BD8](v33);
      }

      if (v34)
      {
        MEMORY[0x277D82BD8](v35);
      }

      if (v36)
      {
        MEMORY[0x277D82BD8](v37);
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  v23 = *(a1 + 56);
  [*(a1 + 32) handleDiscoveredScanResults:location[0] withError:v62 usingEventInfo:*(a1 + 40) isCachedResults:0 activity:*(*(*(a1 + 48) + 8) + 24) beforePostEvent:?];
  objc_storeStrong(&v62, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __64__SUUIMobileScanOperation_action_CheckForAvailableUpdate_error___block_invoke_325(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v15 = a1;
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
    v14 = _SUUISignpostGetNanoseconds() / 1000000000.0;
    v7 = [MEMORY[0x277D64B58] scanOperationLogger];
    location = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v12 = 2;
    v11 = *(a1 + 32);
    if (v11 && v11 != -1 && os_signpost_enabled(location))
    {
      log = location;
      type = v12;
      spid = v11;
      __os_log_helper_16_0_0(v10);
      _os_signpost_emit_with_name_impl(&dword_26B0B9000, log, type, spid, "CheckForAvailableUpdates", "", v10, 2u);
    }

    objc_storeStrong(&location, 0);
    v3 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v3 oslog];
    MEMORY[0x277D82BD8](v3);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v17, *(a1 + 32), *&v14);
      _os_log_impl(&dword_26B0B9000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckForAvailableUpdates ", v17, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (int64_t)action_QueryCurrentDownload:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v58 = self;
  v57 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v55 = a4;
  v27 = [(SUUIMobileScanOperation *)v58 scanFSM];
  v26 = [(SUCoreFSM *)v27 extendedStateQueue];
  dispatch_assert_queue_V2(v26);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  if (location)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x20000000;
    v52 = 32;
    v53 = 0;
    v47 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v47)
    {
      v46 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v47[1].opaque[0];
      v47[1].opaque[0] = v46;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      v23 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v45 = [v23 oslog];
      MEMORY[0x277D82BD8](v23);
      v44 = 16;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        log = v45;
        type = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
    }

    from[2] = v47;
    v48 = v47;
    if (v47)
    {
      os_activity_scope_enter(v48[1].opaque[0], v48);
      LOBYTE(v48[1].opaque[1]) = 1;
    }

    from[1] = v48;
    v50[3] = v48;
    objc_initWeak(from, v58);
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke;
    v38 = &unk_279CCCD30;
    objc_copyWeak(v40, from);
    v40[1] = v57;
    v39[1] = &v49;
    v39[0] = MEMORY[0x277D82BE0](location);
    v41 = MEMORY[0x26D66ED00](&v34);
    v20 = [location currentDownload];
    MEMORY[0x277D82BD8](v20);
    if (v20)
    {
      v18 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [v18 oslog];
      MEMORY[0x277D82BD8](v18);
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(SUUIMobileScanOperation *)v58 identifier];
        v17 = MEMORY[0x277D82BE0](v16);
        v31 = v17;
        operationType = v58->_operationType;
        if (operationType)
        {
          if (operationType == 1)
          {
            v61 = MEMORY[0x277D82BE0](@"F");
          }

          else if (operationType == 2)
          {
            v61 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v61 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v61 = MEMORY[0x277D82BE0](@"N");
        }

        v15 = v61;
        v5 = v61;
        v14 = v15;
        v30 = MEMORY[0x277D82BE0](v14);
        v13 = [location currentDownload];
        v12 = [v13 descriptor];
        v11 = [v12 humanReadableUpdateName];
        v29 = MEMORY[0x277D82BE0](v11);
        v10 = [location currentDownload];
        __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_0(v62, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]", v17, v30, v29, v10);
        _os_log_impl(&dword_26B0B9000, oslog, v32, "%s [%{public}@|%{public}@]: Scan operation has already been given a download (%{public}@, %p) - skipping on the download lookup.", v62, 0x34u);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v16);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
      }

      objc_storeStrong(&oslog, 0);
      v9 = v41;
      v8 = [location currentDownload];
      v7 = [location operationError];
      v9[2](v9, v8);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      v19 = [(SUUIMobileScanOperation *)v58 suClient];
      [(SUManagerClient *)v19 download:v41];
      MEMORY[0x277D82BD8](v19);
    }

    v59 = 0;
    v54 = 1;
    objc_storeStrong(&v41, 0);
    objc_storeStrong(v39, 0);
    objc_destroyWeak(v40);
    objc_destroyWeak(from);
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v25 = [(SUUIMobileScanOperation *)v58 scanFSM];
    v24 = [(SUCoreFSM *)v25 diag];
    [v24 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    v59 = 8102;
    v54 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v59;
}

void __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v109 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v97 = 0;
  objc_storeStrong(&v97, a3);
  v96[1] = a1;
  v96[0] = objc_loadWeakRetained((a1 + 48));
  v56 = 0;
  if (!v96[0])
  {
    v55 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v95 = [v55 oslog];
    MEMORY[0x277D82BD8](v55);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      log = v95;
      v54 = type;
      v52 = NSStringFromSelector(*(a1 + 56));
      v93 = MEMORY[0x277D82BE0](v52);
      __os_log_helper_16_2_2_8_32_8_66(v108, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v93);
      _os_log_error_impl(&dword_26B0B9000, log, v54, "%s: Self is nil in %{public}@. Stopping.", v108, 0x16u);
      MEMORY[0x277D82BD8](v52);
      objc_storeStrong(&v93, 0);
    }

    objc_storeStrong(&v95, 0);
    v92 = 1;
    v56 = 1;
  }

  if (v56)
  {
    v91 = 1;
  }

  else if (*(v96[0] + 40))
  {
    v51 = [MEMORY[0x277D64B58] scanOperationLogger];
    v90 = [v51 oslog];
    MEMORY[0x277D82BD8](v51);
    v89 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v90;
      v50 = v89;
      v47 = [v96[0] identifier];
      v48 = MEMORY[0x277D82BE0](v47);
      v88 = v48;
      v103 = *(v96[0] + 18);
      if (v103)
      {
        if (v103 == 1)
        {
          v104 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v103 == 2)
          {
            v3 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v3 = MEMORY[0x277D82BE0](@"N/A");
          }

          v104 = v3;
        }
      }

      else
      {
        v104 = MEMORY[0x277D82BE0](@"N");
      }

      v46 = v104;
      v4 = v104;
      v45 = v46;
      v87 = MEMORY[0x277D82BE0](v45);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v107, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v48, v87);
      _os_log_impl(&dword_26B0B9000, v49, v50, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v107, 0x20u);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v47);
      objc_storeStrong(&v87, 0);
      objc_storeStrong(&v88, 0);
    }

    objc_storeStrong(&v90, 0);
    v91 = 1;
  }

  else
  {
    v44 = [MEMORY[0x277D64B58] scanOperationLogger];
    v86 = [v44 oslog];
    MEMORY[0x277D82BD8](v44);
    v85 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v86;
      v43 = v85;
      v40 = [v96[0] identifier];
      v41 = MEMORY[0x277D82BE0](v40);
      v84 = v41;
      v101 = *(v96[0] + 18);
      if (v101)
      {
        if (v101 == 1)
        {
          v102 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v101 == 2)
          {
            v5 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v5 = MEMORY[0x277D82BE0](@"N/A");
          }

          v102 = v5;
        }
      }

      else
      {
        v102 = MEMORY[0x277D82BE0](@"N");
      }

      v39 = v102;
      v6 = v102;
      v38 = v39;
      v83 = MEMORY[0x277D82BE0](v38);
      __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_0_8_66(v106, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v41, v83, v97, location[0], location[0]);
      _os_log_impl(&dword_26B0B9000, v42, v43, "%s [%{public}@|%{public}@]: error: %{public}@, download: <%p> %{public}@", v106, 0x3Eu);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v40);
      objc_storeStrong(&v83, 0);
      objc_storeStrong(&v84, 0);
    }

    objc_storeStrong(&v86, 0);
    if (!v97 || ([v96[0] shouldConsiderErrorAsSuccessfulCase:v97] & 1) != 0)
    {
      v81 = 0;
      v34 = 0;
      if (!location[0])
      {
        v82 = [v97 domain];
        v81 = 1;
        v34 = 0;
        if ([v82 isEqualToString:*MEMORY[0x277D64910]])
        {
          v34 = [v97 code] == 11;
        }
      }

      if (v81)
      {
        MEMORY[0x277D82BD8](v82);
      }

      if (v34)
      {
        v33 = [[SUUIMobileUninitializedDownload alloc] initWithDescriptor:0];
        v7 = location[0];
        location[0] = v33;
        MEMORY[0x277D82BD8](v7);
        v32 = [MEMORY[0x277D64B58] scanOperationLogger];
        v80 = [v32 oslog];
        MEMORY[0x277D82BD8](v32);
        v79 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v80;
          v31 = v79;
          v28 = [v96[0] identifier];
          v29 = MEMORY[0x277D82BE0](v28);
          v78 = v29;
          v99 = *(v96[0] + 18);
          if (v99)
          {
            if (v99 == 1)
            {
              v100 = MEMORY[0x277D82BE0](@"F");
            }

            else
            {
              if (v99 == 2)
              {
                v8 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v8 = MEMORY[0x277D82BE0](@"N/A");
              }

              v100 = v8;
            }
          }

          else
          {
            v100 = MEMORY[0x277D82BE0](@"N");
          }

          v27 = v100;
          v9 = v100;
          v26 = v27;
          v77 = MEMORY[0x277D82BE0](v26);
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v105, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v29, v77, v97, location[0]);
          _os_log_impl(&dword_26B0B9000, v30, v31, "%s [%{public}@|%{public}@]: Received a nil download and SUErrorCodeDownloadInProgress error (%{public}@) - assigned SUDownloadUninitialized to the download object: %{public}@", v105, 0x34u);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v28);
          objc_storeStrong(&v77, 0);
          objc_storeStrong(&v78, 0);
        }

        objc_storeStrong(&v80, 0);
      }

      v75 = 0;
      v73 = 0;
      v25 = 0;
      if (!location[0])
      {
        v24 = 1;
        if (([*(a1 + 32) emptyScanResults] & 1) == 0)
        {
          v76 = [*(a1 + 32) preferredDescriptor];
          v75 = 1;
          v23 = 0;
          if (!v76)
          {
            v74 = [*(a1 + 32) alternateDescriptor];
            v73 = 1;
            v23 = v74 == 0;
          }

          v24 = v23;
        }

        v25 = v24;
      }

      if (v73)
      {
        MEMORY[0x277D82BD8](v74);
      }

      if (v75)
      {
        MEMORY[0x277D82BD8](v76);
      }

      if (v25)
      {
        [*(v96[0] + 7) postEvent:*MEMORY[0x277D64D80] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
        v91 = 1;
      }

      else
      {
        [*(a1 + 32) setCurrentDownload:location[0]];
        v22 = [*(a1 + 32) agreementStatusRegistry];
        v20 = [location[0] downloadOptions];
        v21 = [v20 downloadFeeAgreementStatus];
        v19 = [location[0] descriptor];
        [v22 setAgreementStatus:v21 type:1 forDescriptor:?];
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v22);
        v18 = [*(a1 + 32) agreementStatusRegistry];
        v16 = [location[0] downloadOptions];
        v17 = [v16 termsAndConditionsAgreementStatus];
        v15 = [location[0] descriptor];
        [v18 setAgreementStatus:v17 type:2 forDescriptor:?];
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v18);
        v70 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
        if (v70)
        {
          v69 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload: checkIfAutoUpdateScheduled:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
          v10 = v70[1].opaque[0];
          v70[1].opaque[0] = v69;
          MEMORY[0x277D82BD8](v10);
        }

        else
        {
          v14 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
          oslog = [v14 oslog];
          MEMORY[0x277D82BD8](v14);
          v67 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v12 = oslog;
            v13 = v67;
            __os_log_helper_16_0_0(v66);
            _os_log_error_impl(&dword_26B0B9000, v12, v13, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload: checkIfAutoUpdateScheduled:withReplyHandler:", v66, 2u);
          }

          objc_storeStrong(&oslog, 0);
        }

        v65[3] = v70;
        v71 = v70;
        if (v70)
        {
          os_activity_scope_enter(v71[1].opaque[0], v71);
          LOBYTE(v71[1].opaque[1]) = 1;
        }

        v65[2] = v71;
        v72 = v71;
        [v96[0] scheduleConcurrentActionWithSelector:sel_checkIfAutoUpdateScheduled_withReplyHandler_ eventInfo:*(a1 + 32)];
        if (v72)
        {
          if (LOBYTE(v72[1].opaque[1]))
          {
            os_activity_scope_leave(v72);
          }

          free(v72);
          v72 = 0;
        }

        v11 = *(v96[0] + 8);
        v59 = MEMORY[0x277D85DD0];
        v60 = -1073741824;
        v61 = 0;
        v62 = __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke_332;
        v63 = &unk_279CCCD08;
        objc_copyWeak(v65, (a1 + 48));
        v65[1] = *(a1 + 56);
        v64[1] = *(a1 + 40);
        v64[0] = MEMORY[0x277D82BE0](*(a1 + 32));
        [v11 isClearingSpaceForDownload:&v59];
        objc_storeStrong(v64, 0);
        objc_destroyWeak(v65);
        v91 = 0;
      }
    }

    else
    {
      v36 = *(v96[0] + 7);
      v37 = *MEMORY[0x277D64DB8];
      v35 = [[SUUIMobileScanOperationParam alloc] initWithError:v97];
      [v36 postEvent:v37 withInfo:v35 endingActivity:*(*(a1 + 40) + 8) + 24];
      MEMORY[0x277D82BD8](v35);
      v91 = 1;
    }
  }

  objc_storeStrong(v96, 0);
  if (!v91)
  {
    v91 = 0;
  }

  objc_storeStrong(&v97, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke_332(uint64_t a1, char a2, id obj)
{
  v54 = *MEMORY[0x277D85DE8];
  v46 = a1;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v43[1] = a1;
  v43[0] = objc_loadWeakRetained((a1 + 48));
  v28 = 0;
  if (!v43[0])
  {
    v27 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v42 = [v27 oslog];
    MEMORY[0x277D82BD8](v27);
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      type = v41;
      v26 = NSStringFromSelector(*(a1 + 56));
      v40 = MEMORY[0x277D82BE0](v26);
      __os_log_helper_16_2_2_8_32_8_66(v53, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v40);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v53, 0x16u);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    v39 = 1;
    v28 = 1;
  }

  if (v28)
  {
    v38 = 1;
  }

  else if (*(v43[0] + 40))
  {
    v23 = [MEMORY[0x277D64B58] scanOperationLogger];
    v37 = [v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v37;
      v20 = v36;
      v21 = [v43[0] identifier];
      v22 = MEMORY[0x277D82BE0](v21);
      v35 = v22;
      v49 = *(v43[0] + 18);
      if (v49)
      {
        if (v49 == 1)
        {
          v50 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v49 == 2)
        {
          v50 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v50 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v50 = MEMORY[0x277D82BE0](@"N");
      }

      v17 = v50;
      v3 = v50;
      v18 = v17;
      v34 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v52, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v22, v34);
      _os_log_impl(&dword_26B0B9000, v19, v20, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v52, 0x20u);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    objc_storeStrong(&v37, 0);
    v38 = 1;
  }

  else
  {
    v16 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = oslog;
      v13 = v32;
      v14 = [v43[0] identifier];
      v15 = MEMORY[0x277D82BE0](v14);
      v31 = v15;
      v47 = *(v43[0] + 18);
      if (v47)
      {
        if (v47 == 1)
        {
          v48 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v47 == 2)
        {
          v48 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v48 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v48 = MEMORY[0x277D82BE0](@"N");
      }

      v10 = v48;
      v4 = v48;
      v11 = v10;
      v30 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(v51, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v15, v30, v45 & 1, location);
      _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: isClearingSpaceForDownload? %d, isClearingSpaceError: %{public}@", v51, 0x30u);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (location)
    {
      v8 = *(v43[0] + 7);
      v7 = *MEMORY[0x277D64DB8];
      v5 = [SUUIMobileScanOperationParam alloc];
      v9 = [(SUUIMobileScanOperationParam *)v5 initWithError:location];
      v6 = *(*(a1 + 40) + 8);
      [v8 postEvent:v7 withInfo:? endingActivity:?];
      MEMORY[0x277D82BD8](v9);
      v38 = 1;
    }

    else
    {
      [*(a1 + 32) setClearingSpaceForDownload:v45 & 1];
      [*(v43[0] + 7) postEvent:*MEMORY[0x277D64DC0] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
      v38 = 0;
    }
  }

  objc_storeStrong(v43, 0);
  if (!v38)
  {
    v38 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_QueryUpdatesInfo:(id)a3 error:(id *)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v68 = self;
  v67 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v65 = a4;
  v31 = [(SUUIMobileScanOperation *)v68 scanFSM];
  v30 = [(SUCoreFSM *)v31 extendedStateQueue];
  dispatch_assert_queue_V2(v30);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  if (location)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x20000000;
    v62 = 32;
    v63 = 0;
    v57 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v57)
    {
      v56 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryUpdateInfo", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v57[1].opaque[0];
      v57[1].opaque[0] = v56;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      v27 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v55 = [v27 oslog];
      MEMORY[0x277D82BD8](v27);
      v54 = 16;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        log = v55;
        type = v54;
        __os_log_helper_16_0_0(v53);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryUpdateInfo", v53, 2u);
      }

      objc_storeStrong(&v55, 0);
    }

    v52 = v57;
    v58 = v57;
    if (v57)
    {
      os_activity_scope_enter(v58[1].opaque[0], v58);
      LOBYTE(v58[1].opaque[1]) = 1;
    }

    v51 = v58;
    v60[3] = v58;
    v49 = 0;
    v47 = 0;
    v24 = [location preferredDescriptor];
    if (v24 || (v50 = [location alternateDescriptor], v49 = 1, v23 = 1, v50))
    {
      v48 = [location agreementStatusRegistry];
      v47 = 1;
      v23 = v48 == 0;
    }

    if (v47)
    {
      MEMORY[0x277D82BD8](v48);
    }

    if (v49)
    {
      MEMORY[0x277D82BD8](v50);
    }

    MEMORY[0x277D82BD8](v24);
    if (v23)
    {
      v22 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [v22 oslog];
      MEMORY[0x277D82BD8](v22);
      v45 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v20 = [(SUUIMobileScanOperation *)v68 identifier];
        v21 = MEMORY[0x277D82BE0](v20);
        v44 = v21;
        operationType = v68->_operationType;
        if (operationType)
        {
          if (operationType == 1)
          {
            v71 = MEMORY[0x277D82BE0](@"F");
          }

          else if (operationType == 2)
          {
            v71 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v71 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v71 = MEMORY[0x277D82BE0](@"N");
        }

        v19 = v71;
        v5 = v71;
        v18 = v19;
        v43 = MEMORY[0x277D82BE0](v18);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v72, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]", v21, v43);
        _os_log_error_impl(&dword_26B0B9000, oslog, v45, "%s [%{public}@|%{public}@]: Both the preferredUpdate and alternateUpdate are empty, or agreementStatusRegistry is missing - yet there is a download. Trying to recovery by querying for downloadability.", v72, 0x20u);
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v20);
        objc_storeStrong(&v43, 0);
        objc_storeStrong(&v44, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v17 = objc_alloc(MEMORY[0x277D64890]);
    v16 = [location preferredDescriptor];
    v42 = [v17 initWithDescriptor:?];
    MEMORY[0x277D82BD8](v16);
    [v42 setAllowUnrestrictedCellularDownload:{-[SUUIMobileScanOperationOptions doesAllowUnrestrictedCellularDownload](v68->_options, "doesAllowUnrestrictedCellularDownload")}];
    v15 = [location agreementStatusRegistry];
    v14 = [location preferredDescriptor];
    [v42 setDownloadFeeAgreementStatus:{objc_msgSend(v15, "agreementStatusForType:descriptor:", 1)}];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    v13 = objc_alloc(MEMORY[0x277D64890]);
    v12 = [location alternateDescriptor];
    v41 = [v13 initWithDescriptor:?];
    MEMORY[0x277D82BD8](v12);
    [v41 setAllowUnrestrictedCellularDownload:{-[SUUIMobileScanOperationOptions doesAllowUnrestrictedCellularDownload](v68->_options, "doesAllowUnrestrictedCellularDownload")}];
    v11 = [location agreementStatusRegistry];
    v10 = [location alternateDescriptor];
    [v41 setDownloadFeeAgreementStatus:{objc_msgSend(v11, "agreementStatusForType:descriptor:", 1)}];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_initWeak(&from, v68);
    v7 = [(SUUIMobileScanOperation *)v68 suClient];
    v8 = v42;
    v9 = v41;
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke;
    v37 = &unk_279CCCD80;
    objc_copyWeak(v39, &from);
    v39[1] = v67;
    v38[0] = MEMORY[0x277D82BE0](location);
    v38[1] = &v59;
    [(SUManagerClient *)v7 updatesDownloadableWithOptions:v8 alternateDownloadOptions:v9 replyHandler:&v33];
    MEMORY[0x277D82BD8](v7);
    v69 = 0;
    v64 = 1;
    objc_storeStrong(v38, 0);
    objc_destroyWeak(v39);
    objc_destroyWeak(&from);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    _Block_object_dispose(&v59, 8);
  }

  else
  {
    v29 = [(SUUIMobileScanOperation *)v68 scanFSM];
    v28 = [(SUCoreFSM *)v29 diag];
    [v28 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    v69 = 8102;
    v64 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v69;
}

void __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke(uint64_t a1, char a2, char a3, id obj, void *a5)
{
  v87 = *MEMORY[0x277D85DE8];
  v77 = a1;
  v76 = a2;
  v75 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v73 = 0;
  objc_storeStrong(&v73, a5);
  v72[1] = a1;
  v72[0] = objc_loadWeakRetained((a1 + 48));
  v42 = 0;
  if (!v72[0])
  {
    v41 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v71 = [v41 oslog];
    MEMORY[0x277D82BD8](v41);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      log = v71;
      v40 = type;
      v38 = NSStringFromSelector(*(a1 + 56));
      v69 = MEMORY[0x277D82BE0](v38);
      __os_log_helper_16_2_2_8_32_8_66(v86, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v69);
      _os_log_error_impl(&dword_26B0B9000, log, v40, "%s: Self is nil in %{public}@. Stopping.", v86, 0x16u);
      MEMORY[0x277D82BD8](v38);
      objc_storeStrong(&v69, 0);
    }

    objc_storeStrong(&v71, 0);
    v68 = 1;
    v42 = 1;
  }

  if (v42)
  {
    v67 = 1;
  }

  else if (*(v72[0] + 40))
  {
    v37 = [MEMORY[0x277D64B58] scanOperationLogger];
    v66 = [v37 oslog];
    MEMORY[0x277D82BD8](v37);
    v65 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v66;
      v36 = v65;
      v33 = [v72[0] identifier];
      v34 = MEMORY[0x277D82BE0](v33);
      v64 = v34;
      v80 = *(v72[0] + 18);
      if (v80)
      {
        if (v80 == 1)
        {
          v81 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v80 == 2)
          {
            v5 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v5 = MEMORY[0x277D82BE0](@"N/A");
          }

          v81 = v5;
        }
      }

      else
      {
        v81 = MEMORY[0x277D82BE0](@"N");
      }

      v32 = v81;
      v6 = v81;
      v31 = v32;
      v63 = MEMORY[0x277D82BE0](v31);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v85, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v34, v63);
      _os_log_impl(&dword_26B0B9000, v35, v36, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v85, 0x20u);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v33);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v64, 0);
    }

    objc_storeStrong(&v66, 0);
    v67 = 1;
  }

  else
  {
    v30 = [MEMORY[0x277D64B58] scanOperationLogger];
    v62 = [v30 oslog];
    MEMORY[0x277D82BD8](v30);
    v61 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v62;
      v29 = v61;
      v26 = [v72[0] identifier];
      v27 = MEMORY[0x277D82BE0](v26);
      v60 = v27;
      v78 = *(v72[0] + 18);
      if (v78)
      {
        if (v78 == 1)
        {
          v79 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v78 == 2)
          {
            v7 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v7 = MEMORY[0x277D82BE0](@"N/A");
          }

          v79 = v7;
        }
      }

      else
      {
        v79 = MEMORY[0x277D82BE0](@"N");
      }

      v25 = v79;
      v8 = v79;
      v22 = v25;
      v23 = MEMORY[0x277D82BE0](v22);
      v59 = v23;
      v83 = v76 & 1;
      if (v76)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v24 = v9;
      v10 = v9;
      v18 = v24;
      v19 = MEMORY[0x277D82BE0](v18);
      v58 = v19;
      v20 = location;
      v82 = v75 & 1;
      if (v75)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v21 = v11;
      v12 = v11;
      v17 = v21;
      v57 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_66(v84, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v27, v23, v19, v20, v57, v73);
      _os_log_impl(&dword_26B0B9000, v28, v29, "%s [%{public}@|%{public}@]: preferredDownloadable: %{public}@, preferredError: %{public}@, alternateDownloadable: %{public}@, alternateError: %{public}@", v84, 0x48u);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v57, 0);
      objc_storeStrong(&v58, 0);
      objc_storeStrong(&v59, 0);
      objc_storeStrong(&v60, 0);
    }

    objc_storeStrong(&v62, 0);
    [*(a1 + 32) setPreferredUpdateDownloadable:v76 & 1];
    [*(a1 + 32) setAlternateUpdateDownloadable:v75 & 1];
    [*(a1 + 32) setPreferredUpdateDownloadError:location];
    [*(a1 + 32) setAlternateUpdateDownloadError:v73];
    v15 = [*(a1 + 32) currentDownload];
    v55 = 0;
    v53 = 0;
    v16 = 0;
    if (v15)
    {
      v56 = [*(a1 + 32) currentDownload];
      v55 = 1;
      v54 = [v56 progress];
      v53 = 1;
      v16 = [v54 isDone];
    }

    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v15);
    if (v16)
    {
      v52 = objc_alloc_init(MEMORY[0x277D648A0]);
      [v52 setIgnorableConstraints:{objc_msgSend(objc_opt_class(), "installationIgnorableConstraints")}];
      v13 = *(v72[0] + 8);
      v14 = v52;
      v45 = MEMORY[0x277D85DD0];
      v46 = -1073741824;
      v47 = 0;
      v48 = __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke_337;
      v49 = &unk_279CCCD58;
      objc_copyWeak(v51, (a1 + 48));
      v51[1] = *(a1 + 56);
      v50[0] = MEMORY[0x277D82BE0](*(a1 + 32));
      v50[1] = *(a1 + 40);
      [v13 isUpdateReadyForInstallationWithOptions:v14 withResult:&v45];
      objc_storeStrong(v50, 0);
      objc_destroyWeak(v51);
      objc_storeStrong(&v52, 0);
    }

    else
    {
      [*(v72[0] + 7) postEvent:*MEMORY[0x277D64DD0] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
    }

    v67 = 0;
  }

  objc_storeStrong(v72, 0);
  if (!v67)
  {
    v67 = 0;
  }

  objc_storeStrong(&v73, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke_337(uint64_t a1, char a2, id obj)
{
  v56 = *MEMORY[0x277D85DE8];
  v47 = a1;
  v46 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v44[1] = a1;
  v44[0] = objc_loadWeakRetained((a1 + 48));
  v28 = 0;
  if (!v44[0])
  {
    v27 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v43 = [v27 oslog];
    MEMORY[0x277D82BD8](v27);
    v42 = 16;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      log = v43;
      type = v42;
      v26 = NSStringFromSelector(*(a1 + 56));
      v41 = MEMORY[0x277D82BE0](v26);
      __os_log_helper_16_2_2_8_32_8_66(v55, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v41);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v55, 0x16u);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v43, 0);
    v40 = 1;
    v28 = 1;
  }

  if (v28)
  {
    v39 = 1;
  }

  else if (*(v44[0] + 40))
  {
    v23 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = oslog;
      v20 = v37;
      v21 = [v44[0] identifier];
      v22 = MEMORY[0x277D82BE0](v21);
      v36 = v22;
      v50 = *(v44[0] + 18);
      if (v50)
      {
        if (v50 == 1)
        {
          v51 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v50 == 2)
        {
          v51 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v51 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v51 = MEMORY[0x277D82BE0](@"N");
      }

      v17 = v51;
      v3 = v51;
      v18 = v17;
      v35 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v54, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v22, v35);
      _os_log_impl(&dword_26B0B9000, v19, v20, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v54, 0x20u);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&oslog, 0);
    v39 = 1;
  }

  else
  {
    v16 = [MEMORY[0x277D64B58] scanOperationLogger];
    v34 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v34;
      v13 = v33;
      v14 = [v44[0] identifier];
      v15 = MEMORY[0x277D82BE0](v14);
      v32 = v15;
      v48 = *(v44[0] + 18);
      if (v48)
      {
        if (v48 == 1)
        {
          v49 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v48 == 2)
        {
          v49 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v49 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v49 = MEMORY[0x277D82BE0](@"N");
      }

      v7 = v49;
      v4 = v49;
      v11 = v7;
      v9 = MEMORY[0x277D82BE0](v11);
      v31 = v9;
      v52 = v46 & 1;
      if (v46)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v8 = v5;
      v6 = v5;
      v10 = v8;
      v30 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v53, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v15, v9, v30, location);
      _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: Ready to install: %{public}@; error: %{public}@", v53, 0x34u);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&v34, 0);
    [*(a1 + 32) setIsUpdateReadyForInstallation:v46 & 1];
    [*(a1 + 32) setUpdateInstallationError:location];
    [*(v44[0] + 7) postEvent:*MEMORY[0x277D64DD0] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
    v39 = 0;
  }

  objc_storeStrong(v44, 0);
  if (!v39)
  {
    v39 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ObserveConcurrentQueries:(id)a3 error:(id *)a4
{
  v112 = *MEMORY[0x277D85DE8];
  val = self;
  v94 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v92 = a4;
  v39 = [val scanFSM];
  v38 = [v39 extendedStateQueue];
  dispatch_assert_queue_V2(v38);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  if (location)
  {
    v86 = 0;
    v87 = &v86;
    v88 = 0x20000000;
    v89 = 32;
    v90 = 0;
    v84 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v84)
    {
      v83 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ObserveConcurrentQueries", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v84[1].opaque[0];
      v84[1].opaque[0] = v83;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      v35 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [v35 oslog];
      MEMORY[0x277D82BD8](v35);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v34 = type;
        __os_log_helper_16_0_0(v80);
        _os_log_error_impl(&dword_26B0B9000, log, v34, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ObserveConcurrentQueries", v80, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v79 = v84;
    state = v84;
    if (v84)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v78 = state;
    v87[3] = state;
    v77 = 0;
    v76 = 0;
    v75 = 0;
    v74[0] = 3;
    v100 = val + 8;
    v99 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v74[1] = v100;
    v73[0] = 3;
    v98 = val + 16;
    v97 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v73[1] = v98;
    v77 = [*(val + 19) count];
    v76 = *(val + 41) & 1;
    if (v77)
    {
      v32 = [*(val + 19) allObjects];
      v5 = [v32 componentsJoinedByString:{@", "}];
      v6 = v75;
      v75 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v32);
    }

    v91 = 9;
    v102 = v73;
    os_unfair_recursive_lock_unlock();
    v91 = 6;
    v101 = v74;
    switch(v74[0])
    {
      case 1:
        [v101[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v101[1]);
        break;
      case 3:
        v7 = v101[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v77)
    {
      if (v76)
      {
        v26 = [MEMORY[0x277D64B58] scanOperationLogger];
        v68 = [v26 oslog];
        MEMORY[0x277D82BD8](v26);
        v67 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [val identifier];
          v25 = MEMORY[0x277D82BE0](v24);
          v66 = v25;
          v105 = *(val + 18);
          if (v105)
          {
            if (v105 == 1)
            {
              v106 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v105 == 2)
            {
              v106 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v106 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v106 = MEMORY[0x277D82BE0](@"N");
          }

          v23 = v106;
          v9 = v106;
          v22 = v23;
          v65 = MEMORY[0x277D82BE0](v22);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v110, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]", v25, v65);
          _os_log_impl(&dword_26B0B9000, v68, v67, "%s [%{public}@|%{public}@]: One or more of the concurrent operations have been failed/timed out.", v110, 0x20u);
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](v24);
          objc_storeStrong(&v65, 0);
          objc_storeStrong(&v66, 0);
        }

        objc_storeStrong(&v68, 0);
        [*(val + 7) postEvent:*MEMORY[0x277D64D28] withInfo:location endingActivity:v87 + 3];
        v96 = 0;
        v91 = 1;
      }

      else
      {
        v21 = [MEMORY[0x277D64B58] scanOperationLogger];
        v64 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v63 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [val identifier];
          v20 = MEMORY[0x277D82BE0](v19);
          v62 = v20;
          v103 = *(val + 18);
          if (v103)
          {
            if (v103 == 1)
            {
              v104 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v103 == 2)
            {
              v104 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v104 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v104 = MEMORY[0x277D82BE0](@"N");
          }

          v18 = v104;
          v10 = v104;
          v17 = v18;
          v61 = MEMORY[0x277D82BE0](v17);
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v109, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]", v20, v61, v77, v75);
          _os_log_impl(&dword_26B0B9000, v64, v63, "%s [%{public}@|%{public}@]: Waiting for %lu concurrent operations to complete: %{public}@", v109, 0x34u);
          MEMORY[0x277D82BD8](v17);
          MEMORY[0x277D82BD8](v19);
          objc_storeStrong(&v61, 0);
          objc_storeStrong(&v62, 0);
        }

        objc_storeStrong(&v64, 0);
        objc_initWeak(&from, val);
        v56[0] = 0;
        v56[1] = v56;
        v57 = 0x20000000;
        v58 = 32;
        v59 = 0;
        group = [val scanGroup];
        queue = *(val + 17);
        v49 = MEMORY[0x277D85DD0];
        v50 = -1073741824;
        v51 = 0;
        v52 = __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke;
        v53 = &unk_279CCCDA8;
        objc_copyWeak(v55, &from);
        v55[1] = v94;
        v54[1] = v56;
        v54[0] = MEMORY[0x277D82BE0](location);
        v54[2] = &v86;
        dispatch_group_notify(group, queue, &v49);
        MEMORY[0x277D82BD8](group);
        v48 = dispatch_time(0, 300000000000);
        when = v48;
        v13 = [val scanFSM];
        v12 = [v13 extendedStateQueue];
        v41 = MEMORY[0x277D85DD0];
        v42 = -1073741824;
        v43 = 0;
        v44 = __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke_342;
        v45 = &unk_279CCCDA8;
        objc_copyWeak(v47, &from);
        v47[1] = v94;
        v46[1] = v56;
        v46[0] = MEMORY[0x277D82BE0](location);
        v46[2] = &v86;
        dispatch_after(when, v12, &v41);
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        v96 = 0;
        v91 = 1;
        objc_storeStrong(v46, 0);
        objc_destroyWeak(v47);
        objc_storeStrong(v54, 0);
        objc_destroyWeak(v55);
        _Block_object_dispose(v56, 8);
        objc_destroyWeak(&from);
      }
    }

    else
    {
      v31 = [MEMORY[0x277D64B58] scanOperationLogger];
      v72 = [v31 oslog];
      MEMORY[0x277D82BD8](v31);
      v71 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [val identifier];
        v30 = MEMORY[0x277D82BE0](v29);
        v70 = v30;
        v107 = *(val + 18);
        if (v107)
        {
          if (v107 == 1)
          {
            v108 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v107 == 2)
          {
            v108 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v108 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v108 = MEMORY[0x277D82BE0](@"N");
        }

        v28 = v108;
        v8 = v108;
        v27 = v28;
        v69 = MEMORY[0x277D82BE0](v27);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v111, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]", v30, v69);
        _os_log_impl(&dword_26B0B9000, v72, v71, "%s [%{public}@|%{public}@]: No concurrent operations are running, proceeding immediately.", v111, 0x20u);
        MEMORY[0x277D82BD8](v27);
        MEMORY[0x277D82BD8](v29);
        objc_storeStrong(&v69, 0);
        objc_storeStrong(&v70, 0);
      }

      objc_storeStrong(&v72, 0);
      [*(val + 7) postEvent:*MEMORY[0x277D64CF8] withInfo:location endingActivity:v87 + 3];
      v96 = 0;
      v91 = 1;
    }

    objc_storeStrong(&v75, 0);
    _Block_object_dispose(&v86, 8);
  }

  else
  {
    v37 = [val scanFSM];
    v36 = [v37 diag];
    [v36 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    v96 = 8102;
    v91 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v96;
}

void __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v46[2] = a1;
  v46[1] = a1;
  v46[0] = objc_loadWeakRetained((a1 + 56));
  v25 = 0;
  if (!v46[0])
  {
    v24 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v24 oslog];
    MEMORY[0x277D82BD8](v24);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v23);
      __os_log_helper_16_2_2_8_32_8_66(v62, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v62, 0x16u);
      MEMORY[0x277D82BD8](v23);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v42 = 1;
    v25 = 1;
  }

  if (v25)
  {
    v41 = 1;
  }

  else if (*(v46[0] + 40))
  {
    v22 = [MEMORY[0x277D64B58] scanOperationLogger];
    v40 = [v22 oslog];
    MEMORY[0x277D82BD8](v22);
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v46[0] identifier];
      v21 = MEMORY[0x277D82BE0](v20);
      v38 = v21;
      v57 = *(v46[0] + 18);
      if (v57)
      {
        if (v57 == 1)
        {
          v58 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v57 == 2)
        {
          v58 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v58 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v58 = MEMORY[0x277D82BE0](@"N");
      }

      v19 = v58;
      v1 = v58;
      v18 = v19;
      v37 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v61, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v21, v37);
      _os_log_impl(&dword_26B0B9000, v40, v39, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v61, 0x20u);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&v40, 0);
    v41 = 1;
  }

  else
  {
    v36[0] = 3;
    v50 = v46[0] + 8;
    v49 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v36[1] = v50;
    v35[0] = 3;
    v48 = v46[0] + 16;
    v47 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v35[1] = v48;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v17 = [MEMORY[0x277D64B58] scanOperationLogger];
      v34 = [v17 oslog];
      MEMORY[0x277D82BD8](v17);
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v46[0] identifier];
        v16 = MEMORY[0x277D82BE0](v15);
        v32 = v16;
        v55 = *(v46[0] + 18);
        if (v55)
        {
          if (v55 == 1)
          {
            v56 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v55 == 2)
          {
            v56 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v56 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v56 = MEMORY[0x277D82BE0](@"N");
        }

        v14 = v56;
        v2 = v56;
        v13 = v14;
        v31 = MEMORY[0x277D82BE0](v13);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v60, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v16, v31);
        _os_log_impl(&dword_26B0B9000, v34, v33, "%s [%{public}@|%{public}@]: Concurrent operations completed, but timeout already handled.", v60, 0x20u);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v15);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
      }

      objc_storeStrong(&v34, 0);
      v41 = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v41 = 14;
    }

    v52 = v35;
    switch(v35[0])
    {
      case 1:
        [v52[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v52[1]);
        break;
      case 3:
        v3 = v52[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v41 == 14)
    {
      v41 = 11;
    }

    v51 = v36;
    switch(v36[0])
    {
      case 1:
        [v51[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v51[1]);
        break;
      case 3:
        v4 = v51[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v41 == 11)
    {
      v12 = [MEMORY[0x277D64B58] scanOperationLogger];
      v30 = [v12 oslog];
      MEMORY[0x277D82BD8](v12);
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v46[0] identifier];
        v11 = MEMORY[0x277D82BE0](v10);
        v28 = v11;
        v53 = *(v46[0] + 18);
        if (v53)
        {
          if (v53 == 1)
          {
            v54 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v53 == 2)
          {
            v54 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v54 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v54 = MEMORY[0x277D82BE0](@"N");
        }

        v9 = v54;
        v5 = v54;
        v8 = v9;
        v27 = MEMORY[0x277D82BE0](v8);
        v7 = [*(a1 + 32) operationError];
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v59, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v11, v27, v7);
        _os_log_impl(&dword_26B0B9000, v30, v29, "%s [%{public}@|%{public}@]: All of the concurrent operations has been finished. Current operation error: %{public}@", v59, 0x2Au);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v10);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v28, 0);
      }

      objc_storeStrong(&v30, 0);
      v6 = [*(a1 + 32) operationError];
      MEMORY[0x277D82BD8](v6);
      if (v6)
      {
        [*(v46[0] + 7) postEvent:*MEMORY[0x277D64D28] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 48) + 8) + 24];
        v41 = 1;
      }

      else
      {
        [*(v46[0] + 7) postEvent:*MEMORY[0x277D64CF8] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 48) + 8) + 24];
        v41 = 0;
      }
    }
  }

  objc_storeStrong(v46, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke_342(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v38[2] = a1;
  v38[1] = a1;
  v38[0] = objc_loadWeakRetained((a1 + 56));
  v20 = 0;
  if (!v38[0])
  {
    v19 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v37 = [v19 oslog];
    MEMORY[0x277D82BD8](v19);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_2_8_32_8_66(v53, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v37, type, "%s: Self is nil in %{public}@. Stopping.", v53, 0x16u);
      MEMORY[0x277D82BD8](v18);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v37, 0);
    v34 = 1;
    v20 = 1;
  }

  if (v20)
  {
    v33 = 1;
  }

  else
  {
    v32[0] = 3;
    v42 = v38[0] + 8;
    v41 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v32[1] = v42;
    v31[0] = 3;
    v40 = v38[0] + 16;
    v39 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v31[1] = v40;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v17 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [v17 oslog];
      MEMORY[0x277D82BD8](v17);
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v38[0] identifier];
        v16 = MEMORY[0x277D82BE0](v15);
        v28 = v16;
        v47 = *(v38[0] + 18);
        if (v47)
        {
          if (v47 == 1)
          {
            v48 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v47 == 2)
          {
            v48 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v48 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v48 = MEMORY[0x277D82BE0](@"N");
        }

        v14 = v48;
        v1 = v48;
        v13 = v14;
        v27 = MEMORY[0x277D82BE0](v13);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v52, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v16, v27);
        _os_log_impl(&dword_26B0B9000, oslog, v29, "%s [%{public}@|%{public}@]: Timeout fired, but concurrent operations already completed.", v52, 0x20u);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v15);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v28, 0);
      }

      objc_storeStrong(&oslog, 0);
      v33 = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *(v38[0] + 41) = 1;
      v33 = 10;
    }

    v44 = v31;
    switch(v31[0])
    {
      case 1:
        [v44[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v44[1]);
        break;
      case 3:
        v2 = v44[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v33 == 10)
    {
      v33 = 7;
    }

    v43 = v32;
    switch(v32[0])
    {
      case 1:
        [v43[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v43[1]);
        break;
      case 3:
        v3 = v43[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v33 == 7)
    {
      v12 = [MEMORY[0x277D64B58] scanOperationLogger];
      v26 = [v12 oslog];
      MEMORY[0x277D82BD8](v12);
      v25 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v10 = [v38[0] identifier];
        v11 = MEMORY[0x277D82BE0](v10);
        v24 = v11;
        v45 = *(v38[0] + 18);
        if (v45)
        {
          if (v45 == 1)
          {
            v46 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v45 == 2)
          {
            v46 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v46 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v46 = MEMORY[0x277D82BE0](@"N");
        }

        v9 = v46;
        v4 = v46;
        v8 = v9;
        v23 = MEMORY[0x277D82BE0](v8);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v51, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v11, v23);
        _os_log_error_impl(&dword_26B0B9000, v26, v25, "%s [%{public}@|%{public}@]: Concurrent operations timed out. Bailing out.", v51, 0x20u);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v10);
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v24, 0);
      }

      objc_storeStrong(&v26, 0);
      v6 = MEMORY[0x277CCA9B8];
      v7 = *MEMORY[0x277D64C28];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"Concurrent operations timed out.";
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v22 = [v6 errorWithDomain:v7 code:0 userInfo:?];
      MEMORY[0x277D82BD8](v5);
      [*(a1 + 32) setOperationError:v22];
      [*(v38[0] + 7) postEvent:*MEMORY[0x277D64D28] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 48) + 8) + 24];
      objc_storeStrong(&v22, 0);
      v33 = 0;
    }
  }

  objc_storeStrong(v38, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ReportScanOutcome:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v50 = self;
  v49 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v47[2] = a4;
  v24 = [(SUUIMobileScanOperation *)v50 scanFSM];
  v23 = [(SUCoreFSM *)v24 extendedStateQueue];
  dispatch_assert_queue_V2(v23);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v47[0] = 3;
  p_lock = &v50->_lock;
  v52 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v47[1] = p_lock;
  if (location)
  {
    v20 = [MEMORY[0x277D64B58] scanOperationLogger];
    v45 = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(SUUIMobileScanOperation *)v50 identifier];
      v19 = MEMORY[0x277D82BE0](v18);
      v43 = v19;
      operationType = v50->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v56 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v56 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v56 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v56 = MEMORY[0x277D82BE0](@"N");
      }

      v17 = v56;
      v4 = v56;
      v15 = v17;
      v16 = MEMORY[0x277D82BE0](v15);
      v42 = v16;
      v13 = [location operationError];
      v5 = "successful";
      if (v13)
      {
        v5 = "failed";
      }

      v14 = v5;
      v12 = SUUIMobileScanOperationTypeToString(v50->_operationType);
      v41 = MEMORY[0x277D82BE0](v12);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_32_8_66(v57, "[SUUIMobileScanOperation action_ReportScanOutcome:error:]", v19, v16, v14, v41);
      _os_log_impl(&dword_26B0B9000, v45, v44, "%s [%{public}@|%{public}@]: Reporting a %s scan of type: %{public}@", v57, 0x34u);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v18);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v43, 0);
    }

    objc_storeStrong(&v45, 0);
    if (v50->_activity && v50->_activity->var2)
    {
      os_activity_scope_leave(&v50->_activity->var0);
      v50->_activity->var2 = 0;
    }

    objc_initWeak(&from, v50);
    v11 = v50->_operationType;
    if (v11)
    {
      if (v11 == 1)
      {
        queue = v50->_clientCompletionQueue;
        v33 = MEMORY[0x277D85DD0];
        v34 = -1073741824;
        v35 = 0;
        v36 = __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke;
        v37 = &unk_279CCBD58;
        objc_copyWeak(v39, &from);
        v39[1] = v49;
        v38 = MEMORY[0x277D82BE0](location);
        dispatch_async(queue, &v33);
        objc_storeStrong(&v38, 0);
        objc_destroyWeak(v39);
      }

      else if (v11 == 2)
      {
        clientCompletionQueue = v50->_clientCompletionQueue;
        v26 = MEMORY[0x277D85DD0];
        v27 = -1073741824;
        v28 = 0;
        v29 = __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke_354;
        v30 = &unk_279CCBD58;
        objc_copyWeak(v32, &from);
        v32[1] = v49;
        v31 = MEMORY[0x277D82BE0](location);
        dispatch_async(clientCompletionQueue, &v26);
        objc_storeStrong(&v31, 0);
        objc_destroyWeak(v32);
      }
    }

    else
    {
      v10 = [(SUCoreFSM *)v50->_scanFSM diag];
      [v10 dumpTracked:@"Could not invoke a completion handler for a 'None' operation type." dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
      MEMORY[0x277D82BD8](v10);
      [(SUUIMobileScanOperation *)v50 invalidateMachine];
    }

    objc_destroyWeak(&from);
    v46 = 2;
  }

  else
  {
    v22 = [(SUUIMobileScanOperation *)v50 scanFSM];
    v21 = [(SUCoreFSM *)v22 diag];
    [v21 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    v51 = 8102;
    v46 = 1;
  }

  v54 = v47;
  switch(v47[0])
  {
    case 1:
      [v54[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v54[1]);
      break;
    case 3:
      v6 = v54[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v46 == 2)
  {
    v51 = 0;
    v46 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v51;
}

void __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v26[2] = a1;
  v26[1] = a1;
  v26[0] = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  if (!v26[0])
  {
    v8 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v25 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      v7 = NSStringFromSelector(*(a1 + 48));
      v23 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v27, "[SUUIMobileScanOperation action_ReportScanOutcome:error:]_block_invoke", v23);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v27, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v21 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) operationError];
    v18 = 0;
    if (v4)
    {
      v2 = MEMORY[0x277D82BE0](0);
    }

    else
    {
      v1 = [SUUIMobileScanOperationFullScanResults alloc];
      v19 = [(SUUIMobileScanOperationFullScanResults *)v1 initFromScanParam:*(a1 + 32) withIdentifier:*(v26[0] + 6)];
      v18 = 1;
      v2 = MEMORY[0x277D82BE0](v19);
    }

    v20 = v2;
    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    MEMORY[0x277D82BD8](v4);
    v17 = MEMORY[0x26D66ED00](*(v26[0] + 13));
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v17)
    {
      v16 = [*(a1 + 32) operationError];
      v15 = 1;
      if (v16)
      {
        v3 = [SUUIMobileStatefulError alloc];
        v14 = [*(a1 + 32) operationError];
        v13 = 1;
        v12 = [(SUUIStatefulError *)v3 initFromError:?];
        v11 = 1;
        (*(v17 + 2))(v17, v20, v12);
      }

      else
      {
        (*(v17 + 2))(v17, v20, 0);
      }
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v17, 0);
    [v26[0] invalidateMachine];
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];
}

void __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke_354(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v26[2] = a1;
  v26[1] = a1;
  v26[0] = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  if (!v26[0])
  {
    v8 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v25 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      v7 = NSStringFromSelector(*(a1 + 48));
      v23 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v27, "[SUUIMobileScanOperation action_ReportScanOutcome:error:]_block_invoke", v23);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v27, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v21 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) operationError];
    v18 = 0;
    if (v4)
    {
      v2 = MEMORY[0x277D82BE0](0);
    }

    else
    {
      v1 = [SUUIMobileScanOperationResults alloc];
      v19 = [(SUUIMobileScanOperationResults *)v1 initFromScanParam:*(a1 + 32) withIdentifier:*(v26[0] + 6)];
      v18 = 1;
      v2 = MEMORY[0x277D82BE0](v19);
    }

    v20 = v2;
    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    MEMORY[0x277D82BD8](v4);
    v17 = MEMORY[0x26D66ED00](*(v26[0] + 14));
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v17)
    {
      v16 = [*(a1 + 32) operationError];
      v15 = 1;
      if (v16)
      {
        v3 = [SUUIMobileStatefulError alloc];
        v14 = [*(a1 + 32) operationError];
        v13 = 1;
        v12 = [(SUUIStatefulError *)v3 initFromError:?];
        v11 = 1;
        (*(v17 + 2))(v17, v20, v12);
      }

      else
      {
        (*(v17 + 2))(v17, v20, 0);
      }
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v17, 0);
    [v26[0] invalidateMachine];
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ReportScanCanceled:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = self;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v31 = a4;
  v16 = [(SUUIMobileScanOperation *)v34 scanFSM];
  v15 = [(SUCoreFSM *)v16 extendedStateQueue];
  dispatch_assert_queue_V2(v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  if (location)
  {
    v29[0] = 3;
    p_lock = &v34->_lock;
    v36 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v29[1] = p_lock;
    v12 = [MEMORY[0x277D64B58] scanOperationLogger];
    v28 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SUUIMobileScanOperation *)v34 identifier];
      v11 = MEMORY[0x277D82BE0](v10);
      v26 = v11;
      operationType = v34->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v40 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v40 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v40 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v40 = MEMORY[0x277D82BE0](@"N");
      }

      v9 = v40;
      v4 = v40;
      v8 = v9;
      v25 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v41, "[SUUIMobileScanOperation action_ReportScanCanceled:error:]", v11, v25);
      _os_log_impl(&dword_26B0B9000, v28, v27, "%s [%{public}@|%{public}@]: The scan was canceled. Calling the cancelation handler.", v41, 0x20u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    if (v34->_activity && v34->_activity->var2)
    {
      os_activity_scope_leave(&v34->_activity->var0);
      v34->_activity->var2 = 0;
    }

    if (v34->_cancelHandler)
    {
      objc_initWeak(&from, v34);
      queue = v34->_clientCompletionQueue;
      block = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __59__SUUIMobileScanOperation_action_ReportScanCanceled_error___block_invoke;
      v22 = &unk_279CCC6E8;
      objc_copyWeak(v23, &from);
      v23[1] = v33;
      dispatch_async(queue, &block);
      objc_destroyWeak(v23);
      objc_destroyWeak(&from);
    }

    else
    {
      [(SUUIMobileScanOperation *)v34 invalidateMachine];
    }

    v30 = 4;
    v38 = v29;
    switch(v29[0])
    {
      case 1:
        [v38[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v38[1]);
        break;
      case 3:
        v5 = v38[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    v35 = 0;
    v30 = 1;
  }

  else
  {
    v14 = [(SUUIMobileScanOperation *)v34 scanFSM];
    v13 = [(SUCoreFSM *)v14 diag];
    [v13 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v35 = 8102;
    v30 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v35;
}

void __59__SUUIMobileScanOperation_action_ReportScanCanceled_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 32));
  v5 = 0;
  if (!v13[0])
  {
    v4 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v12 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v3 = NSStringFromSelector(*(a1 + 40));
      v10 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIMobileScanOperation action_ReportScanCanceled:error:]_block_invoke", v10);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v9 = 1;
    v5 = 1;
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v7 = MEMORY[0x26D66ED00](*(v13[0] + 15));
    if (v7)
    {
      (*(v7 + 2))(v7, 1);
    }

    objc_storeStrong(&v7, 0);
    [v13[0] invalidateMachine];
    v8 = 0;
  }

  objc_storeStrong(v13, 0);
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
  v11 = [(SUUIMobileScanOperation *)v18 scanFSM];
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
  v14 = [(SUUIMobileScanOperation *)v18 scanFSM];
  v13 = [(SUCoreFSM *)v14 diag];
  v6 = [v15 code];
  [v13 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"Scan FSM has reported an anomaly" withResult:v6 withError:v15];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (SUUIMobileScanOperation)init
{
  exception = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Use the designated initializer" userInfo:0];
  v2 = exception;
  objc_exception_throw(exception);
}

- (SUUIMobileScanOperation)initWithIdentifier:(id)a3 options:(id)a4 usingSUManagerClient:(id)a5 andBetaManager:(id)a6 withCompletionQueue:(id)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  v43 = 0;
  objc_storeStrong(&v43, a5);
  v42 = 0;
  objc_storeStrong(&v42, a6);
  v41 = 0;
  objc_storeStrong(&v41, a7);
  v7 = v46;
  v46 = 0;
  v40.receiver = v7;
  v40.super_class = SUUIMobileScanOperation;
  v34 = [(SUUIMobileScanOperation *)&v40 init];
  v46 = v34;
  objc_storeStrong(&v46, v34);
  if (!v34)
  {
    goto LABEL_8;
  }

  v49 = MGCopyAnswer();
  v25 = v49;
  v8 = v49;
  v39 = v25;
  v48 = MGCopyAnswer();
  v26 = v48;
  v9 = v48;
  v38 = v26;
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_opt_class();
  v28 = NSStringFromClass(v10);
  v37 = [v27 initWithFormat:@"%@:%@(%@, %@)", v28, v39, v38, location[0]];
  MEMORY[0x277D82BD8](v28);
  objc_storeStrong(v46 + 6, location[0]);
  objc_storeStrong(v46 + 9, v44);
  objc_storeStrong(v46 + 8, v43);
  objc_storeStrong(v46 + 10, v42);
  v36[2] = 0;
  *(v46 + 1) = 0;
  v36[1] = 0;
  *(v46 + 2) = 0;
  v11 = [objc_opt_class() _generateStateTable];
  v12 = *(v46 + 11);
  *(v46 + 11) = v11;
  MEMORY[0x277D82BD8](v12);
  *(v46 + 18) = 0;
  v13 = objc_alloc(MEMORY[0x277CBEBD0]);
  v14 = [v13 initWithSuiteName:*MEMORY[0x277D64C60]];
  v15 = *(v46 + 3);
  *(v46 + 3) = v14;
  MEMORY[0x277D82BD8](v15);
  v29 = objc_alloc(MEMORY[0x277D64458]);
  v16 = [v29 initMachine:v37 withTable:*(v46 + 11) startingIn:*MEMORY[0x277D64E88] usingDelegate:v46 registeringAllInfoClass:objc_opt_class()];
  v17 = *(v46 + 7);
  *(v46 + 7) = v16;
  MEMORY[0x277D82BD8](v17);
  if (*(v46 + 7))
  {
    v23 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v23 selectCompletionQueue:v41];
    v19 = *(v46 + 12);
    *(v46 + 12) = v18;
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v23);
    v20 = objc_opt_new();
    v21 = *(v46 + 19);
    *(v46 + 19) = v20;
    MEMORY[0x277D82BD8](v21);
    v35 = 0;
  }

  else
  {
    v24 = [MEMORY[0x277D64B58] scanOperationLogger];
    v36[0] = [v24 oslog];
    MEMORY[0x277D82BD8](v24);
    if (os_log_type_enabled(v36[0], OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_32(v50, "[SUUIMobileScanOperation initWithIdentifier:options:usingSUManagerClient:andBetaManager:withCompletionQueue:]");
      _os_log_fault_impl(&dword_26B0B9000, v36[0], OS_LOG_TYPE_FAULT, "%s: Failed creating the Mobile Scan FSM", v50, 0xCu);
    }

    objc_storeStrong(v36, 0);
    v47 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  if (!v35)
  {
LABEL_8:
    v47 = MEMORY[0x277D82BE0](v46);
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v46, 0);
  *MEMORY[0x277D85DE8];
  return v47;
}

- (void)checkForAvailableUpdatesWithCompletionHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = objc_opt_new();
  [SUUIMobileScanOperation checkForAvailableUpdatesWithContext:v3 completionHandler:"checkForAvailableUpdatesWithContext:completionHandler:"];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableUpdatesWithContext:(id)a3 completionHandler:(id)a4
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38[0] = 3;
  p_lock = &v41->_lock;
  v42 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v38[1] = p_lock;
  if (v41->_operationType)
  {
    v26 = [(SUCoreFSM *)v41->_scanFSM diag];
    [v26 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v26);
    v37 = 1;
  }

  else
  {
    v35 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v35)
    {
      v34 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.FullScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v35[1].opaque[0];
      v35[1].opaque[0] = v34;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      v25 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v33 = [v25 oslog];
      MEMORY[0x277D82BD8](v25);
      v32 = 16;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        log = v33;
        type = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.FullScan", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
    }

    v30[2] = v35;
    v36 = v35;
    if (v35)
    {
      os_activity_scope_enter(v36->var1, &v36->var0);
      v36->var2 = 1;
    }

    v30[1] = v36;
    v41->_activity = v36;
    v5 = MEMORY[0x26D66ED00](v39);
    fullScanCompletionHandler = v41->_fullScanCompletionHandler;
    v41->_fullScanCompletionHandler = v5;
    MEMORY[0x277D82BD8](fullScanCompletionHandler);
    v41->_operationType = 1;
    v7 = dispatch_group_create();
    scanGroup = v41->_scanGroup;
    v41->_scanGroup = v7;
    MEMORY[0x277D82BD8](scanGroup);
    v22 = MEMORY[0x277CCACA8];
    v21 = [(SUUIMobileScanOperation *)v41 baseDomain];
    v19 = [v22 stringWithFormat:@"%@.concurrent-queue", v21];
    v9 = v19;
    label = [v19 UTF8String];
    v10 = dispatch_queue_create(label, MEMORY[0x277D85CD8]);
    concurrentQueue = v41->_concurrentQueue;
    v41->_concurrentQueue = v10;
    MEMORY[0x277D82BD8](concurrentQueue);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v21);
    v41->_concurrentActionsFailed = 0;
    v41->_canceled = 0;
    [(SUCoreFSM *)v41->_scanFSM activateMachine];
    v18 = objc_opt_new();
    concurrentRunningActionsNames = v41->_concurrentRunningActionsNames;
    v41->_concurrentRunningActionsNames = v18;
    MEMORY[0x277D82BD8](concurrentRunningActionsNames);
    v29 = MEMORY[0x277D82BE0](location[0]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v28 = MEMORY[0x277D82BE0](v29);
    objc_storeStrong(&v29, 0);
    v30[0] = v28;
    scanFSM = v41->_scanFSM;
    v16 = *MEMORY[0x277D64D18];
    v17 = [SUUIMobileScanOperationParam alloc];
    v14 = [(SUUIMobileScanOperationParam *)v17 initWithFullScanContext:v30[0]];
    [(SUCoreFSM *)scanFSM postEvent:v16 withInfo:v14];
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(v30, 0);
    v37 = 2;
  }

  v44 = v38;
  switch(v38[0])
  {
    case 1:
      [v44[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v44[1]);
      break;
    case 3:
      v13 = v44[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v37 == 2)
  {
    v37 = 0;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerCurrentlyScanning:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUUIMobileScanOperation *)v11 suClient];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__SUUIMobileScanOperation_controllerCurrentlyScanning___block_invoke;
  v8 = &unk_279CCC968;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)v3 isScanning:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __55__SUUIMobileScanOperation_controllerCurrentlyScanning___block_invoke(uint64_t a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = *(a1 + 32);
  v6 = v10;
  v7 = 0;
  if (location)
  {
    v3 = [SUUIMobileStatefulError alloc];
    v8 = [(SUUIStatefulError *)v3 initFromError:location];
    v7 = 1;
    (*(v5 + 16))(v5, v6 & 1, v8);
  }

  else
  {
    (*(v5 + 16))(v5, v10 & 1, 0);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&location, 0);
}

- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 completionHandler:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v9 = v14;
  v7 = location[0];
  v8 = v12;
  v10 = objc_opt_new();
  [SUUIMobileScanOperation refreshScanResultsWithPreferredUpdate:v9 alternateUpdate:"refreshScanResultsWithPreferredUpdate:alternateUpdate:context:completionHandler:" context:v7 completionHandler:v8];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshScanResultsWithPreferredUpdate:(id)a3 alternateUpdate:(id)a4 context:(id)a5 completionHandler:(id)a6
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v43 = 0;
  objc_storeStrong(&v43, a6);
  v42[0] = 3;
  p_lock = &v47->_lock;
  v48 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v42[1] = p_lock;
  if (v47->_operationType)
  {
    v27 = [(SUCoreFSM *)v47->_scanFSM diag];
    [v27 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v27);
    v41 = 1;
  }

  else
  {
    v39 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v39)
    {
      v38 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.RefreshScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v6 = v39[1].opaque[0];
      v39[1].opaque[0] = v38;
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v26 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      v37 = [v26 oslog];
      MEMORY[0x277D82BD8](v26);
      v36 = 16;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        log = v37;
        type = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.RefreshScan", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
    }

    v34[2] = v39;
    v40 = v39;
    if (v39)
    {
      os_activity_scope_enter(v40->var1, &v40->var0);
      v40->var2 = 1;
    }

    v34[1] = v40;
    v47->_activity = v40;
    v7 = MEMORY[0x26D66ED00](v43);
    refreshScanCompletionHandler = v47->_refreshScanCompletionHandler;
    v47->_refreshScanCompletionHandler = v7;
    MEMORY[0x277D82BD8](refreshScanCompletionHandler);
    v47->_operationType = 2;
    v9 = dispatch_group_create();
    scanGroup = v47->_scanGroup;
    v47->_scanGroup = v9;
    MEMORY[0x277D82BD8](scanGroup);
    v23 = MEMORY[0x277CCACA8];
    v22 = [(SUUIMobileScanOperation *)v47 baseDomain];
    v20 = [v23 stringWithFormat:@"%@.concurrent-queue", v22];
    v11 = v20;
    label = [v20 UTF8String];
    v12 = dispatch_queue_create(label, MEMORY[0x277D85CD8]);
    concurrentQueue = v47->_concurrentQueue;
    v47->_concurrentQueue = v12;
    MEMORY[0x277D82BD8](concurrentQueue);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v22);
    v47->_concurrentActionsFailed = 0;
    v47->_canceled = 0;
    v19 = objc_opt_new();
    concurrentRunningActionsNames = v47->_concurrentRunningActionsNames;
    v47->_concurrentRunningActionsNames = v19;
    MEMORY[0x277D82BD8](concurrentRunningActionsNames);
    v33 = MEMORY[0x277D82BE0](v44);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v32 = MEMORY[0x277D82BE0](v33);
    objc_storeStrong(&v33, 0);
    v34[0] = v32;
    v18 = [SUUIMobileScanOperationParam alloc];
    v17 = [location[0] underlyingDescriptor];
    v16 = [v45 underlyingDescriptor];
    v31 = [SUUIMobileScanOperationParam initWithPreferredDescriptor:v18 alternateDescriptor:"initWithPreferredDescriptor:alternateDescriptor:andRefreshContext:" andRefreshContext:v17];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    [(SUCoreFSM *)v47->_scanFSM activateMachine];
    [(SUCoreFSM *)v47->_scanFSM postEvent:*MEMORY[0x277D64DD8] withInfo:v31];
    objc_storeStrong(&v31, 0);
    objc_storeStrong(v34, 0);
    v41 = 2;
  }

  v50 = v42;
  switch(v42[0])
  {
    case 1:
      [v50[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v50[1]);
      break;
    case 3:
      v15 = v50[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v41 == 2)
  {
    v41 = 0;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

- (id)scanResultsCacheExpectedTTLDuration
{
  location[2] = self;
  location[1] = a2;
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x277D64BD8] sharedDefaults];
    location[0] = [v4 scanResultsCachingDuration];
    MEMORY[0x277D82BD8](v4);
    if (location[0])
    {
      v5 = (60 * [location[0] intValue]);
    }

    else if (os_variant_has_internal_content())
    {
      v5 = 60 * *MEMORY[0x277D64C50];
    }

    else
    {
      v5 = 60 * *MEMORY[0x277D64C58];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithLong:v5];
    objc_storeStrong(location, 0);
  }

  else
  {
    v7 = 0;
  }

  v2 = v7;

  return v2;
}

- (id)readScanResultsCacheExpectedTTLValue
{
  v13 = self;
  v12 = a2;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x277D64BD8] sharedDefaults];
    v2 = [v5 defaultsContainsKey:*MEMORY[0x277D64C68]];
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (v2)
    {
      v11 = [MEMORY[0x277D64BD8] sharedDefaults];
      v10 = 1;
      v9 = [v11 scanResultsCachingDuration];
      v8 = 1;
      v6 = [v9 intValue] == 0;
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    MEMORY[0x277D82BD8](v5);
    if (v6)
    {
      v14 = 0;
    }

    else
    {
      v7 = [(NSUserDefaults *)v13->_userDefaultsSuite objectForKey:@"SUCachedScanResultsTTL"];
      v14 = MEMORY[0x277D82BE0](v7);
      objc_storeStrong(&v7, 0);
    }
  }

  else
  {
    v14 = 0;
  }

  v3 = v14;

  return v3;
}

- (void)hasScanResultsCacheWithCompletion:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v94 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_2;
  }

  v56 = [MEMORY[0x277D64BD8] sharedDefaults];
  v3 = [v56 defaultsContainsKey:*MEMORY[0x277D64C68]];
  v90 = 0;
  v88 = 0;
  v57 = 0;
  if (v3)
  {
    v91 = [MEMORY[0x277D64BD8] sharedDefaults];
    v90 = 1;
    v89 = [v91 scanResultsCachingDuration];
    v88 = 1;
    v57 = [v89 intValue] == 0;
  }

  if (v88)
  {
    MEMORY[0x277D82BD8](v89);
  }

  if (v90)
  {
    MEMORY[0x277D82BD8](v91);
  }

  MEMORY[0x277D82BD8](v56);
  if (v57)
  {
LABEL_2:
    (*(location[0] + 2))(location[0], 0, 0);
    v92 = 1;
  }

  else
  {
    v87 = [(NSUserDefaults *)v94->_userDefaultsSuite objectForKey:@"SUCachedScanResultsTTL"];
    v86 = [(NSUserDefaults *)v94->_userDefaultsSuite stringForKey:@"SUCachedAudience"];
    v85 = [(NSUserDefaults *)v94->_userDefaultsSuite stringForKey:@"SUCachedOSVersion"];
    if (v87 || v86 || v85)
    {
      if (v87 && v86 && v85)
      {
        v40 = [MEMORY[0x277CBEAA8] date];
        v41 = [v40 compare:v87];
        MEMORY[0x277D82BD8](v40);
        if (v41 == 1)
        {
          v39 = [MEMORY[0x277D64B58] scanOperationLogger];
          v76 = [v39 oslog];
          MEMORY[0x277D82BD8](v39);
          v75 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v76;
            v36 = v75;
            v37 = [(SUUIMobileScanOperation *)v94 identifier];
            v38 = MEMORY[0x277D82BE0](v37);
            v74 = v38;
            operationType = v94->_operationType;
            if (operationType)
            {
              if (operationType == 1)
              {
                v102 = MEMORY[0x277D82BE0](@"F");
              }

              else if (operationType == 2)
              {
                v102 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v102 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v102 = MEMORY[0x277D82BE0](@"N");
            }

            v31 = v102;
            v6 = v102;
            v34 = v31;
            v32 = MEMORY[0x277D82BE0](v34);
            v73 = v32;
            v33 = [MEMORY[0x277CBEAA8] date];
            v72 = MEMORY[0x277D82BE0](v33);
            __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v110, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v38, v32, v72, v87);
            _os_log_impl(&dword_26B0B9000, v35, v36, "%s [%{public}@|%{public}@]: The cached version of SUScanResults has been expired. Assuming that cache doesn't exists.\n\t- Now: %{public}@\n\t- TTL: %{public}@", v110, 0x34u);
            MEMORY[0x277D82BD8](v33);
            MEMORY[0x277D82BD8](v34);
            MEMORY[0x277D82BD8](v37);
            objc_storeStrong(&v72, 0);
            objc_storeStrong(&v73, 0);
            objc_storeStrong(&v74, 0);
          }

          objc_storeStrong(&v76, 0);
          (*(location[0] + 2))(location[0], 0, 0);
          v92 = 1;
        }

        else
        {
          v71 = [(SUUIMobileScanOperation *)v94 pallasAudience];
          if ([v71 isEqualToString:v86])
          {
            v66 = [(SUUIMobileScanOperation *)v94 currentOSVersionIdentifier];
            if ([v66 isEqualToString:v85])
            {
              v16 = [MEMORY[0x277D64B58] scanOperationLogger];
              v61 = [v16 oslog];
              MEMORY[0x277D82BD8](v16);
              v60 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v12 = v61;
                v13 = v60;
                v14 = [(SUUIMobileScanOperation *)v94 identifier];
                v15 = MEMORY[0x277D82BE0](v14);
                v59 = v15;
                v95 = v94->_operationType;
                if (v95)
                {
                  if (v95 == 1)
                  {
                    v96 = MEMORY[0x277D82BE0](@"F");
                  }

                  else if (v95 == 2)
                  {
                    v96 = MEMORY[0x277D82BE0](@"R");
                  }

                  else
                  {
                    v96 = MEMORY[0x277D82BE0](@"N/A");
                  }
                }

                else
                {
                  v96 = MEMORY[0x277D82BE0](@"N");
                }

                v10 = v96;
                v9 = v96;
                v11 = v10;
                v58 = MEMORY[0x277D82BE0](v11);
                __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v107, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v15, v58, v87);
                _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: Found a valid SUScanResults cache: %{public}@", v107, 0x2Au);
                MEMORY[0x277D82BD8](v11);
                MEMORY[0x277D82BD8](v14);
                objc_storeStrong(&v58, 0);
                objc_storeStrong(&v59, 0);
              }

              objc_storeStrong(&v61, 0);
              (*(location[0] + 2))(location[0], 1, 0);
              v92 = 0;
            }

            else
            {
              v23 = [MEMORY[0x277D64B58] scanOperationLogger];
              v65 = [v23 oslog];
              MEMORY[0x277D82BD8](v23);
              v64 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v19 = v65;
                v20 = v64;
                v21 = [(SUUIMobileScanOperation *)v94 identifier];
                v22 = MEMORY[0x277D82BE0](v21);
                v63 = v22;
                v97 = v94->_operationType;
                if (v97)
                {
                  if (v97 == 1)
                  {
                    v98 = MEMORY[0x277D82BE0](@"F");
                  }

                  else if (v97 == 2)
                  {
                    v98 = MEMORY[0x277D82BE0](@"R");
                  }

                  else
                  {
                    v98 = MEMORY[0x277D82BE0](@"N/A");
                  }
                }

                else
                {
                  v98 = MEMORY[0x277D82BE0](@"N");
                }

                v17 = v98;
                v8 = v98;
                v18 = v17;
                v62 = MEMORY[0x277D82BE0](v18);
                __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v108, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v22, v62, v66, v85);
                _os_log_impl(&dword_26B0B9000, v19, v20, "%s [%{public}@|%{public}@]: The cached SUScanResults OS Version is different than the current one. Assuming that cache doesn't exists.\n\t- Now: %{public}@\n\t- OS Version: %{public}@", v108, 0x34u);
                MEMORY[0x277D82BD8](v18);
                MEMORY[0x277D82BD8](v21);
                objc_storeStrong(&v62, 0);
                objc_storeStrong(&v63, 0);
              }

              objc_storeStrong(&v65, 0);
              (*(location[0] + 2))(location[0], 0, 0);
              v92 = 1;
            }

            objc_storeStrong(&v66, 0);
          }

          else
          {
            v30 = [MEMORY[0x277D64B58] scanOperationLogger];
            v70 = [v30 oslog];
            MEMORY[0x277D82BD8](v30);
            v69 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v70;
              v27 = v69;
              v28 = [(SUUIMobileScanOperation *)v94 identifier];
              v29 = MEMORY[0x277D82BE0](v28);
              v68 = v29;
              v99 = v94->_operationType;
              if (v99)
              {
                if (v99 == 1)
                {
                  v100 = MEMORY[0x277D82BE0](@"F");
                }

                else if (v99 == 2)
                {
                  v100 = MEMORY[0x277D82BE0](@"R");
                }

                else
                {
                  v100 = MEMORY[0x277D82BE0](@"N/A");
                }
              }

              else
              {
                v100 = MEMORY[0x277D82BE0](@"N");
              }

              v24 = v100;
              v7 = v100;
              v25 = v24;
              v67 = MEMORY[0x277D82BE0](v25);
              __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v109, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v29, v67, v71, v86);
              _os_log_impl(&dword_26B0B9000, v26, v27, "%s [%{public}@|%{public}@]: The cached SUScanResults audience is different than the current one. Assuming that cache doesn't exists.\n\t- Now: %{public}@\n\t- Audience: %{public}@", v109, 0x34u);
              MEMORY[0x277D82BD8](v25);
              MEMORY[0x277D82BD8](v28);
              objc_storeStrong(&v67, 0);
              objc_storeStrong(&v68, 0);
            }

            objc_storeStrong(&v70, 0);
            (*(location[0] + 2))(location[0], 0, 0);
            v92 = 1;
          }

          objc_storeStrong(&v71, 0);
        }
      }

      else
      {
        v48 = [MEMORY[0x277D64B58] scanOperationLogger];
        v80 = [v48 oslog];
        MEMORY[0x277D82BD8](v48);
        v79 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v44 = v80;
          v45 = v79;
          v46 = [(SUUIMobileScanOperation *)v94 identifier];
          v47 = MEMORY[0x277D82BE0](v46);
          v78 = v47;
          v103 = v94->_operationType;
          if (v103)
          {
            if (v103 == 1)
            {
              v104 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v103 == 2)
            {
              v104 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v104 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v104 = MEMORY[0x277D82BE0](@"N");
          }

          v42 = v104;
          v5 = v104;
          v43 = v42;
          v77 = MEMORY[0x277D82BE0](v43);
          __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_8_66(v111, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v47, v77, v87, v86, v85);
          _os_log_error_impl(&dword_26B0B9000, v44, v45, "%s [%{public}@|%{public}@]: One of the required cached fields is/are missing. Assuming that cache doesn't exists.\n\t- TTL: %{public}@\n\t- Audience: %{public}@\n\t- OS Version: %{public}@", v111, 0x3Eu);
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](v46);
          objc_storeStrong(&v77, 0);
          objc_storeStrong(&v78, 0);
        }

        objc_storeStrong(&v80, 0);
        (*(location[0] + 2))(location[0], 0, 0);
        v92 = 1;
      }
    }

    else
    {
      v55 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [v55 oslog];
      MEMORY[0x277D82BD8](v55);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v52 = type;
        v53 = [(SUUIMobileScanOperation *)v94 identifier];
        v54 = MEMORY[0x277D82BE0](v53);
        v82 = v54;
        v105 = v94->_operationType;
        if (v105)
        {
          if (v105 == 1)
          {
            v106 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v105 == 2)
          {
            v106 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v106 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v106 = MEMORY[0x277D82BE0](@"N");
        }

        v49 = v106;
        v4 = v106;
        v50 = v49;
        v81 = MEMORY[0x277D82BE0](v50);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v112, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v54, v81);
        _os_log_impl(&dword_26B0B9000, log, v52, "%s [%{public}@|%{public}@]: No cached version of SUScanResults has been found.", v112, 0x20u);
        MEMORY[0x277D82BD8](v50);
        MEMORY[0x277D82BD8](v53);
        objc_storeStrong(&v81, 0);
        objc_storeStrong(&v82, 0);
      }

      objc_storeStrong(&oslog, 0);
      (*(location[0] + 2))(location[0], 0, 0);
      v92 = 1;
    }

    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)invalidateScanResultsCache:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUUIMobileScanOperation *)v4 removeCachedScanResults];
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (void)cancel:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10[0] = 3;
  p_lock = &v12->_lock;
  v13 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v10[1] = p_lock;
  if (v12->_operationType)
  {
    if (!v12->_canceled)
    {
      v12->_canceled = 1;
      v3 = MEMORY[0x26D66ED00](location[0]);
      cancelHandler = v12->_cancelHandler;
      v12->_cancelHandler = v3;
      MEMORY[0x277D82BD8](cancelHandler);
      scanFSM = v12->_scanFSM;
      v7 = *MEMORY[0x277D64D08];
      v8 = objc_alloc_init(SUUIMobileScanOperationParam);
      [(SUCoreFSM *)scanFSM postEvent:v7 withInfo:v8];
      MEMORY[0x277D82BD8](v8);
    }
  }

  else
  {
    v9 = [(SUCoreFSM *)v12->_scanFSM diag];
    [v9 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v9);
  }

  v15 = v10;
  switch(v10[0])
  {
    case 1:
      [v15[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v15[1]);
      break;
    case 3:
      v5 = v15[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isActive
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 3;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_recursive_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = v4->_operationType != 0;
  v7 = v3;
  os_unfair_recursive_lock_unlock();
  return v5[0] & 1;
}

- (void)scheduleConcurrentActionWithSelector:(SEL)a3 eventInfo:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v44 = self;
  v43 = a2;
  v42 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v40 = NSStringFromSelector(v42);
  v39[0] = 3;
  p_lock = &v44->_lock;
  v47 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v39[1] = p_lock;
  v37[0] = 3;
  p_concurrentLock = &v44->_concurrentLock;
  v45 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v37[1] = p_concurrentLock;
  if (!v44->_concurrentQueue)
  {
    v19 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v19 oslog];
    MEMORY[0x277D82BD8](v19);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SUUIMobileScanOperation *)v44 identifier];
      v18 = MEMORY[0x277D82BE0](v17);
      v34 = v18;
      operationType = v44->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v54 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v54 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v54 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v54 = MEMORY[0x277D82BE0](@"N");
      }

      v16 = v54;
      v4 = v54;
      v15 = v16;
      v33 = MEMORY[0x277D82BE0](v15);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v56, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]", v18, v33, v40);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s [%{public}@|%{public}@]: Concurrent queue is nil, cannot dispatch action %{public}@", v56, 0x2Au);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&oslog, 0);
    v44->_concurrentActionsFailed = 1;
  }

  if (v44->_concurrentActionsFailed)
  {
    v14 = [MEMORY[0x277D64B58] scanOperationLogger];
    v32 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SUUIMobileScanOperation *)v44 identifier];
      v13 = MEMORY[0x277D82BE0](v12);
      v30 = v13;
      v51 = v44->_operationType;
      if (v51)
      {
        if (v51 == 1)
        {
          v52 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v51 == 2)
        {
          v52 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v52 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v52 = MEMORY[0x277D82BE0](@"N");
      }

      v11 = v52;
      v5 = v52;
      v10 = v11;
      v29 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v55, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]", v13, v29, v40);
      _os_log_impl(&dword_26B0B9000, v32, v31, "%s [%{public}@|%{public}@]: Not scheduling action %{public}@ because a previous action has already failed or timed out", v55, 0x2Au);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
    }

    objc_storeStrong(&v32, 0);
    v38 = 1;
  }

  else
  {
    [(NSMutableSet *)v44->_concurrentRunningActionsNames addObject:v40];
    v38 = 5;
  }

  v50 = v37;
  switch(v37[0])
  {
    case 1:
      [v50[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v50[1]);
      break;
    case 3:
      v6 = v50[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v38 == 5)
  {
    v38 = 2;
  }

  v49 = v39;
  switch(v39[0])
  {
    case 1:
      [v49[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v49[1]);
      break;
    case 3:
      v7 = v49[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v38 == 2)
  {
    v9 = [(SUUIMobileScanOperation *)v44 scanGroup];
    dispatch_group_enter(v9);
    MEMORY[0x277D82BD8](v9);
    objc_initWeak(&from, v44);
    queue = [(SUUIMobileScanOperation *)v44 concurrentQueue];
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke;
    v24 = &unk_279CCC760;
    objc_copyWeak(v27, &from);
    v27[1] = v43;
    v25 = MEMORY[0x277D82BE0](v40);
    v26 = MEMORY[0x277D82BE0](location);
    v27[2] = v42;
    dispatch_async(queue, &v20);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_destroyWeak(v27);
    objc_destroyWeak(&from);
    v38 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke(uint64_t a1)
{
  v175 = *MEMORY[0x277D85DE8];
  v131[2] = a1;
  v131[1] = a1;
  v131[0] = objc_loadWeakRetained((a1 + 48));
  v69 = 0;
  if (!v131[0])
  {
    v68 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v68 oslog];
    MEMORY[0x277D82BD8](v68);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v67 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v67);
      __os_log_helper_16_2_2_8_32_8_66(v174, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v174, 0x16u);
      MEMORY[0x277D82BD8](v67);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v127 = 1;
    v69 = 1;
  }

  if (v69)
  {
    v126 = 1;
  }

  else
  {
    v125[0] = 3;
    v139 = v131[0] + 8;
    v138 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v125[1] = v139;
    v124[0] = 3;
    v137 = v131[0] + 16;
    v136 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v124[1] = v137;
    if (*(v131[0] + 41))
    {
      v66 = [MEMORY[0x277D64B58] scanOperationLogger];
      v123 = [v66 oslog];
      MEMORY[0x277D82BD8](v66);
      v122 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v131[0] identifier];
        v65 = MEMORY[0x277D82BE0](v64);
        v121 = v65;
        v162 = *(v131[0] + 18);
        if (v162)
        {
          if (v162 == 1)
          {
            v163 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v162 == 2)
          {
            v163 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v163 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v163 = MEMORY[0x277D82BE0](@"N");
        }

        v63 = v163;
        v1 = v163;
        v62 = v63;
        v120 = MEMORY[0x277D82BE0](v62);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v173, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v65, v120, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v123, v122, "%s [%{public}@|%{public}@]: Stop resolving %{public}@ because a previous action has already been failed", v173, 0x2Au);
        MEMORY[0x277D82BD8](v62);
        MEMORY[0x277D82BD8](v64);
        objc_storeStrong(&v120, 0);
        objc_storeStrong(&v121, 0);
      }

      objc_storeStrong(&v123, 0);
      if ([*(v131[0] + 19) containsObject:*(a1 + 32)])
      {
        v61 = [MEMORY[0x277D64B58] scanOperationLogger];
        v119 = [v61 oslog];
        MEMORY[0x277D82BD8](v61);
        v118 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
        {
          v59 = [v131[0] identifier];
          v60 = MEMORY[0x277D82BE0](v59);
          v117 = v60;
          v160 = *(v131[0] + 18);
          if (v160)
          {
            if (v160 == 1)
            {
              v161 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v160 == 2)
            {
              v161 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v161 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v161 = MEMORY[0x277D82BE0](@"N");
          }

          v58 = v161;
          v2 = v161;
          v57 = v58;
          v116 = MEMORY[0x277D82BE0](v57);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v172, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v60, v116, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v119, v118, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v172, 0x2Au);
          MEMORY[0x277D82BD8](v57);
          MEMORY[0x277D82BD8](v59);
          objc_storeStrong(&v116, 0);
          objc_storeStrong(&v117, 0);
        }

        objc_storeStrong(&v119, 0);
        dispatch_group_leave(*(v131[0] + 16));
        [*(v131[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v56 = [MEMORY[0x277D64B58] scanOperationLogger];
        v115 = [v56 oslog];
        MEMORY[0x277D82BD8](v56);
        v114 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v54 = [v131[0] identifier];
          v55 = MEMORY[0x277D82BE0](v54);
          v113 = v55;
          v158 = *(v131[0] + 18);
          if (v158)
          {
            if (v158 == 1)
            {
              v159 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v158 == 2)
            {
              v159 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v159 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v159 = MEMORY[0x277D82BE0](@"N");
          }

          v53 = v159;
          v3 = v159;
          v52 = v53;
          v112 = MEMORY[0x277D82BE0](v52);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v171, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v55, v112, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v115, v114, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v171, 0x2Au);
          MEMORY[0x277D82BD8](v52);
          MEMORY[0x277D82BD8](v54);
          objc_storeStrong(&v112, 0);
          objc_storeStrong(&v113, 0);
        }

        objc_storeStrong(&v115, 0);
      }

      v126 = 1;
    }

    else if (*(v131[0] + 40))
    {
      v51 = [MEMORY[0x277D64B58] scanOperationLogger];
      v111 = [v51 oslog];
      MEMORY[0x277D82BD8](v51);
      v110 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [v131[0] identifier];
        v50 = MEMORY[0x277D82BE0](v49);
        v109 = v50;
        v156 = *(v131[0] + 18);
        if (v156)
        {
          if (v156 == 1)
          {
            v157 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v156 == 2)
          {
            v157 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v157 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v157 = MEMORY[0x277D82BE0](@"N");
        }

        v48 = v157;
        v4 = v157;
        v47 = v48;
        v108 = MEMORY[0x277D82BE0](v47);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v170, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v50, v108, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v111, v110, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping execution for %{public}@.", v170, 0x2Au);
        MEMORY[0x277D82BD8](v47);
        MEMORY[0x277D82BD8](v49);
        objc_storeStrong(&v108, 0);
        objc_storeStrong(&v109, 0);
      }

      objc_storeStrong(&v111, 0);
      if ([*(v131[0] + 19) containsObject:*(a1 + 32)])
      {
        v46 = [MEMORY[0x277D64B58] scanOperationLogger];
        v107 = [v46 oslog];
        MEMORY[0x277D82BD8](v46);
        v106 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          v44 = [v131[0] identifier];
          v45 = MEMORY[0x277D82BE0](v44);
          v105 = v45;
          v154 = *(v131[0] + 18);
          if (v154)
          {
            if (v154 == 1)
            {
              v155 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v154 == 2)
            {
              v155 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v155 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v155 = MEMORY[0x277D82BE0](@"N");
          }

          v43 = v155;
          v5 = v155;
          v42 = v43;
          v104 = MEMORY[0x277D82BE0](v42);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v169, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v45, v104, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v107, v106, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v169, 0x2Au);
          MEMORY[0x277D82BD8](v42);
          MEMORY[0x277D82BD8](v44);
          objc_storeStrong(&v104, 0);
          objc_storeStrong(&v105, 0);
        }

        objc_storeStrong(&v107, 0);
        dispatch_group_leave(*(v131[0] + 16));
        [*(v131[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v41 = [MEMORY[0x277D64B58] scanOperationLogger];
        v103 = [v41 oslog];
        MEMORY[0x277D82BD8](v41);
        v102 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v39 = [v131[0] identifier];
          v40 = MEMORY[0x277D82BE0](v39);
          v101 = v40;
          v152 = *(v131[0] + 18);
          if (v152)
          {
            if (v152 == 1)
            {
              v153 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v152 == 2)
            {
              v153 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v153 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v153 = MEMORY[0x277D82BE0](@"N");
          }

          v38 = v153;
          v6 = v153;
          v37 = v38;
          v100 = MEMORY[0x277D82BE0](v37);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v168, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v40, v100, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v103, v102, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v168, 0x2Au);
          MEMORY[0x277D82BD8](v37);
          MEMORY[0x277D82BD8](v39);
          objc_storeStrong(&v100, 0);
          objc_storeStrong(&v101, 0);
        }

        objc_storeStrong(&v103, 0);
      }

      v126 = 1;
    }

    else
    {
      v126 = 12;
    }

    v143 = v124;
    switch(v124[0])
    {
      case 1:
        [v143[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v143[1]);
        break;
      case 3:
        v7 = v143[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v126 == 12)
    {
      v126 = 9;
    }

    v142 = v125;
    switch(v125[0])
    {
      case 1:
        [v142[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v142[1]);
        break;
      case 3:
        v8 = v142[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v126 == 9)
    {
      v36 = [*(a1 + 40) operationError];
      MEMORY[0x277D82BD8](v36);
      if (v36)
      {
        v99[0] = 3;
        v135 = v131[0] + 8;
        v134 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v99[1] = v135;
        v98[0] = 3;
        v133 = v131[0] + 16;
        v132 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v98[1] = v133;
        *(v131[0] + 41) = 1;
        if ([*(v131[0] + 19) containsObject:*(a1 + 32)])
        {
          v35 = [MEMORY[0x277D64B58] scanOperationLogger];
          v97 = [v35 oslog];
          MEMORY[0x277D82BD8](v35);
          v96 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            v33 = [v131[0] identifier];
            v34 = MEMORY[0x277D82BE0](v33);
            v95 = v34;
            v150 = *(v131[0] + 18);
            if (v150)
            {
              if (v150 == 1)
              {
                v151 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v150 == 2)
              {
                v151 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v151 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v151 = MEMORY[0x277D82BE0](@"N");
            }

            v32 = v151;
            v9 = v151;
            v31 = v32;
            v94 = MEMORY[0x277D82BE0](v31);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v167, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v34, v94, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v97, v96, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v167, 0x2Au);
            MEMORY[0x277D82BD8](v31);
            MEMORY[0x277D82BD8](v33);
            objc_storeStrong(&v94, 0);
            objc_storeStrong(&v95, 0);
          }

          objc_storeStrong(&v97, 0);
          dispatch_group_leave(*(v131[0] + 16));
          [*(v131[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v30 = [MEMORY[0x277D64B58] scanOperationLogger];
          v93 = [v30 oslog];
          MEMORY[0x277D82BD8](v30);
          v92 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            v28 = [v131[0] identifier];
            v29 = MEMORY[0x277D82BE0](v28);
            v91 = v29;
            v148 = *(v131[0] + 18);
            if (v148)
            {
              if (v148 == 1)
              {
                v149 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v148 == 2)
              {
                v149 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v149 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v149 = MEMORY[0x277D82BE0](@"N");
            }

            v27 = v149;
            v10 = v149;
            v26 = v27;
            v90 = MEMORY[0x277D82BE0](v26);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v166, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v29, v90, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v93, v92, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v166, 0x2Au);
            MEMORY[0x277D82BD8](v26);
            MEMORY[0x277D82BD8](v28);
            objc_storeStrong(&v90, 0);
            objc_storeStrong(&v91, 0);
          }

          objc_storeStrong(&v93, 0);
        }

        v126 = 34;
        v141 = v98;
        switch(v98[0])
        {
          case 1:
            [v141[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v141[1]);
            break;
          case 3:
            v11 = v141[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        v126 = 31;
        v140 = v99;
        switch(v99[0])
        {
          case 1:
            [v140[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v140[1]);
            break;
          case 3:
            v12 = v140[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        v25 = [MEMORY[0x277D64B58] scanOperationLogger];
        v89 = [v25 oslog];
        MEMORY[0x277D82BD8](v25);
        v88 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v131[0] identifier];
          v24 = MEMORY[0x277D82BE0](v23);
          v87 = v24;
          v146 = *(v131[0] + 18);
          if (v146)
          {
            if (v146 == 1)
            {
              v147 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v146 == 2)
            {
              v147 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v147 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v147 = MEMORY[0x277D82BE0](@"N");
          }

          v22 = v147;
          v13 = v147;
          v21 = v22;
          v86 = MEMORY[0x277D82BE0](v21);
          v20 = [*(a1 + 40) operationError];
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v165, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v24, v86, v20, *(a1 + 32));
          _os_log_impl(&dword_26B0B9000, v89, v88, "%s [%{public}@|%{public}@]: There's a previous operation error (%{public}@). Skipping on the execution of: %{public}@", v165, 0x34u);
          MEMORY[0x277D82BD8](v20);
          MEMORY[0x277D82BD8](v21);
          MEMORY[0x277D82BD8](v23);
          objc_storeStrong(&v86, 0);
          objc_storeStrong(&v87, 0);
        }

        objc_storeStrong(&v89, 0);
        v126 = 1;
      }

      else
      {
        v85 = [v131[0] methodSignatureForSelector:*(a1 + 64)];
        v84 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v85];
        [v84 setTarget:v131[0]];
        [v84 setSelector:*(a1 + 64)];
        [v84 setArgument:a1 + 40 atIndex:2];
        v19 = [MEMORY[0x277D64B58] scanOperationLogger];
        v83 = [v19 oslog];
        MEMORY[0x277D82BD8](v19);
        v82 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v131[0] identifier];
          v18 = MEMORY[0x277D82BE0](v17);
          v81 = v18;
          v144 = *(v131[0] + 18);
          if (v144)
          {
            if (v144 == 1)
            {
              v145 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v144 == 2)
            {
              v145 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v145 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v145 = MEMORY[0x277D82BE0](@"N");
          }

          v16 = v145;
          v14 = v145;
          v15 = v16;
          v80 = MEMORY[0x277D82BE0](v15);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v164, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v18, v80, *(a1 + 32));
          _os_log_impl(&dword_26B0B9000, v83, v82, "%s [%{public}@|%{public}@]: Starting to execute concurrent action: %{public}@", v164, 0x2Au);
          MEMORY[0x277D82BD8](v15);
          MEMORY[0x277D82BD8](v17);
          objc_storeStrong(&v80, 0);
          objc_storeStrong(&v81, 0);
        }

        objc_storeStrong(&v83, 0);
        v71 = MEMORY[0x277D85DD0];
        v72 = -1073741824;
        v73 = 0;
        v74 = __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_403;
        v75 = &unk_279CCC850;
        objc_copyWeak(v78, (a1 + 48));
        v78[1] = *(a1 + 56);
        v76 = MEMORY[0x277D82BE0](*(a1 + 32));
        v77 = MEMORY[0x277D82BE0](*(a1 + 40));
        v79 = MEMORY[0x26D66ED00](&v71);
        [v84 setArgument:&v79 atIndex:3];
        [v84 invoke];
        objc_storeStrong(&v79, 0);
        objc_storeStrong(&v77, 0);
        objc_storeStrong(&v76, 0);
        objc_destroyWeak(v78);
        objc_storeStrong(&v84, 0);
        objc_storeStrong(&v85, 0);
        v126 = 0;
      }
    }
  }

  objc_storeStrong(v131, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_403(uint64_t a1, char a2, id obj)
{
  v116 = *MEMORY[0x277D85DE8];
  v90 = a1;
  v89 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v87[1] = a1;
  v87[0] = objc_loadWeakRetained((a1 + 48));
  v44 = 0;
  if (!v87[0])
  {
    v43 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v43 oslog];
    MEMORY[0x277D82BD8](v43);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(*(a1 + 56));
      v84 = MEMORY[0x277D82BE0](v42);
      __os_log_helper_16_2_2_8_32_8_66(v115, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v84);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v115, 0x16u);
      MEMORY[0x277D82BD8](v42);
      objc_storeStrong(&v84, 0);
    }

    objc_storeStrong(&oslog, 0);
    v83 = 1;
    v44 = 1;
  }

  if (v44)
  {
    v82 = 1;
  }

  else
  {
    v81[0] = 3;
    v94 = v87[0] + 8;
    v93 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v81[1] = v94;
    v80[0] = 3;
    v92 = v87[0] + 16;
    v91 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v80[1] = v92;
    if (*(v87[0] + 41))
    {
      v41 = [MEMORY[0x277D64B58] scanOperationLogger];
      v79 = [v41 oslog];
      MEMORY[0x277D82BD8](v41);
      v78 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v87[0] identifier];
        v40 = MEMORY[0x277D82BE0](v39);
        v77 = v40;
        v107 = *(v87[0] + 18);
        if (v107)
        {
          if (v107 == 1)
          {
            v108 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v107 == 2)
          {
            v108 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v108 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v108 = MEMORY[0x277D82BE0](@"N");
        }

        v38 = v108;
        v3 = v108;
        v37 = v38;
        v76 = MEMORY[0x277D82BE0](v37);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v114, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v40, v76, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v79, v78, "%s [%{public}@|%{public}@]: Stop resolving %{public}@ because a previous action has already been failed", v114, 0x2Au);
        MEMORY[0x277D82BD8](v37);
        MEMORY[0x277D82BD8](v39);
        objc_storeStrong(&v76, 0);
        objc_storeStrong(&v77, 0);
      }

      objc_storeStrong(&v79, 0);
      if ([*(v87[0] + 19) containsObject:*(a1 + 32)])
      {
        v36 = [MEMORY[0x277D64B58] scanOperationLogger];
        v75 = [v36 oslog];
        MEMORY[0x277D82BD8](v36);
        v74 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          v34 = [v87[0] identifier];
          v35 = MEMORY[0x277D82BE0](v34);
          v73 = v35;
          v105 = *(v87[0] + 18);
          if (v105)
          {
            if (v105 == 1)
            {
              v106 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v105 == 2)
            {
              v106 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v106 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v106 = MEMORY[0x277D82BE0](@"N");
          }

          v33 = v106;
          v4 = v106;
          v32 = v33;
          v72 = MEMORY[0x277D82BE0](v32);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v113, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v35, v72, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v75, v74, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v113, 0x2Au);
          MEMORY[0x277D82BD8](v32);
          MEMORY[0x277D82BD8](v34);
          objc_storeStrong(&v72, 0);
          objc_storeStrong(&v73, 0);
        }

        objc_storeStrong(&v75, 0);
        dispatch_group_leave(*(v87[0] + 16));
        [*(v87[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v31 = [MEMORY[0x277D64B58] scanOperationLogger];
        v71 = [v31 oslog];
        MEMORY[0x277D82BD8](v31);
        v70 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v29 = [v87[0] identifier];
          v30 = MEMORY[0x277D82BE0](v29);
          v69 = v30;
          v103 = *(v87[0] + 18);
          if (v103)
          {
            if (v103 == 1)
            {
              v104 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v103 == 2)
            {
              v104 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v104 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v104 = MEMORY[0x277D82BE0](@"N");
          }

          v28 = v104;
          v5 = v104;
          v27 = v28;
          v68 = MEMORY[0x277D82BE0](v27);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v112, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v30, v68, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v71, v70, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v112, 0x2Au);
          MEMORY[0x277D82BD8](v27);
          MEMORY[0x277D82BD8](v29);
          objc_storeStrong(&v68, 0);
          objc_storeStrong(&v69, 0);
        }

        objc_storeStrong(&v71, 0);
      }

      v82 = 1;
    }

    else if (*(v87[0] + 40))
    {
      v26 = [MEMORY[0x277D64B58] scanOperationLogger];
      v67 = [v26 oslog];
      MEMORY[0x277D82BD8](v26);
      v66 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v87[0] identifier];
        v25 = MEMORY[0x277D82BE0](v24);
        v65 = v25;
        v101 = *(v87[0] + 18);
        if (v101)
        {
          if (v101 == 1)
          {
            v102 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v101 == 2)
          {
            v102 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v102 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v102 = MEMORY[0x277D82BE0](@"N");
        }

        v23 = v102;
        v6 = v102;
        v22 = v23;
        v64 = MEMORY[0x277D82BE0](v22);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v111, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v25, v64, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v67, v66, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping execution for %{public}@.", v111, 0x2Au);
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BD8](v24);
        objc_storeStrong(&v64, 0);
        objc_storeStrong(&v65, 0);
      }

      objc_storeStrong(&v67, 0);
      if ([*(v87[0] + 19) containsObject:*(a1 + 32)])
      {
        v21 = [MEMORY[0x277D64B58] scanOperationLogger];
        v63 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v62 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v87[0] identifier];
          v20 = MEMORY[0x277D82BE0](v19);
          v61 = v20;
          v99 = *(v87[0] + 18);
          if (v99)
          {
            if (v99 == 1)
            {
              v100 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v99 == 2)
            {
              v100 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v100 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v100 = MEMORY[0x277D82BE0](@"N");
          }

          v18 = v100;
          v7 = v100;
          v17 = v18;
          v60 = MEMORY[0x277D82BE0](v17);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v110, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v20, v60, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v63, v62, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v110, 0x2Au);
          MEMORY[0x277D82BD8](v17);
          MEMORY[0x277D82BD8](v19);
          objc_storeStrong(&v60, 0);
          objc_storeStrong(&v61, 0);
        }

        objc_storeStrong(&v63, 0);
        dispatch_group_leave(*(v87[0] + 16));
        [*(v87[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v16 = [MEMORY[0x277D64B58] scanOperationLogger];
        v59 = [v16 oslog];
        MEMORY[0x277D82BD8](v16);
        v58 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v14 = [v87[0] identifier];
          v15 = MEMORY[0x277D82BE0](v14);
          v57 = v15;
          v97 = *(v87[0] + 18);
          if (v97)
          {
            if (v97 == 1)
            {
              v98 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v97 == 2)
            {
              v98 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v98 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v98 = MEMORY[0x277D82BE0](@"N");
          }

          v13 = v98;
          v8 = v98;
          v12 = v13;
          v56 = MEMORY[0x277D82BE0](v12);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v109, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v15, v56, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v59, v58, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v109, 0x2Au);
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v14);
          objc_storeStrong(&v56, 0);
          objc_storeStrong(&v57, 0);
        }

        objc_storeStrong(&v59, 0);
      }

      v82 = 1;
    }

    else
    {
      v82 = 12;
    }

    v96 = v80;
    switch(v80[0])
    {
      case 1:
        [v96[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v96[1]);
        break;
      case 3:
        v9 = v96[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v82 == 12)
    {
      v82 = 9;
    }

    v95 = v81;
    switch(v81[0])
    {
      case 1:
        [v95[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v95[1]);
        break;
      case 3:
        v10 = v95[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v82 == 9)
    {
      queue = *(v87[0] + 17);
      v46 = MEMORY[0x277D85DD0];
      v47 = -1073741824;
      v48 = 0;
      v49 = __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_404;
      v50 = &unk_279CCCDD0;
      objc_copyWeak(v54, (a1 + 48));
      v54[1] = *(a1 + 56);
      v51 = MEMORY[0x277D82BE0](*(a1 + 32));
      v55 = v89 & 1;
      v52 = MEMORY[0x277D82BE0](location);
      v53 = MEMORY[0x277D82BE0](*(a1 + 40));
      dispatch_async(queue, &v46);
      objc_storeStrong(&v53, 0);
      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v51, 0);
      objc_destroyWeak(v54);
      v82 = 0;
    }
  }

  objc_storeStrong(v87, 0);
  if (!v82)
  {
    v82 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_404(uint64_t a1)
{
  v235 = *MEMORY[0x277D85DE8];
  v169[2] = a1;
  v169[1] = a1;
  v169[0] = objc_loadWeakRetained((a1 + 56));
  v99 = 0;
  if (!v169[0])
  {
    v98 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v98 oslog];
    MEMORY[0x277D82BD8](v98);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v97 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v97);
      __os_log_helper_16_2_2_8_32_8_66(v234, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v234, 0x16u);
      MEMORY[0x277D82BD8](v97);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v165 = 1;
    v99 = 1;
  }

  if (v99)
  {
    v164 = 1;
  }

  else
  {
    v163[0] = 3;
    v185 = v169[0] + 8;
    v184 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v163[1] = v185;
    v162[0] = 3;
    v183 = v169[0] + 16;
    v182 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v162[1] = v183;
    if (*(v169[0] + 41))
    {
      v96 = [MEMORY[0x277D64B58] scanOperationLogger];
      v161 = [v96 oslog];
      MEMORY[0x277D82BD8](v96);
      v160 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        v94 = [v169[0] identifier];
        v95 = MEMORY[0x277D82BE0](v94);
        v159 = v95;
        v218 = *(v169[0] + 18);
        if (v218)
        {
          if (v218 == 1)
          {
            v219 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v218 == 2)
          {
            v219 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v219 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v219 = MEMORY[0x277D82BE0](@"N");
        }

        v93 = v219;
        v1 = v219;
        v92 = v93;
        v158 = MEMORY[0x277D82BE0](v92);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v233, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v95, v158, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v161, v160, "%s [%{public}@|%{public}@]: Stop resolving %{public}@ because a previous action has already been failed", v233, 0x2Au);
        MEMORY[0x277D82BD8](v92);
        MEMORY[0x277D82BD8](v94);
        objc_storeStrong(&v158, 0);
        objc_storeStrong(&v159, 0);
      }

      objc_storeStrong(&v161, 0);
      if ([*(v169[0] + 19) containsObject:*(a1 + 32)])
      {
        v91 = [MEMORY[0x277D64B58] scanOperationLogger];
        v157 = [v91 oslog];
        MEMORY[0x277D82BD8](v91);
        v156 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
        {
          v89 = [v169[0] identifier];
          v90 = MEMORY[0x277D82BE0](v89);
          v155 = v90;
          v216 = *(v169[0] + 18);
          if (v216)
          {
            if (v216 == 1)
            {
              v217 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v216 == 2)
            {
              v217 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v217 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v217 = MEMORY[0x277D82BE0](@"N");
          }

          v88 = v217;
          v2 = v217;
          v87 = v88;
          v154 = MEMORY[0x277D82BE0](v87);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v232, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v90, v154, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v157, v156, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v232, 0x2Au);
          MEMORY[0x277D82BD8](v87);
          MEMORY[0x277D82BD8](v89);
          objc_storeStrong(&v154, 0);
          objc_storeStrong(&v155, 0);
        }

        objc_storeStrong(&v157, 0);
        dispatch_group_leave(*(v169[0] + 16));
        [*(v169[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v86 = [MEMORY[0x277D64B58] scanOperationLogger];
        v153 = [v86 oslog];
        MEMORY[0x277D82BD8](v86);
        v152 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
        {
          v84 = [v169[0] identifier];
          v85 = MEMORY[0x277D82BE0](v84);
          v151 = v85;
          v214 = *(v169[0] + 18);
          if (v214)
          {
            if (v214 == 1)
            {
              v215 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v214 == 2)
            {
              v215 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v215 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v215 = MEMORY[0x277D82BE0](@"N");
          }

          v83 = v215;
          v3 = v215;
          v82 = v83;
          v150 = MEMORY[0x277D82BE0](v82);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v231, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v85, v150, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v153, v152, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v231, 0x2Au);
          MEMORY[0x277D82BD8](v82);
          MEMORY[0x277D82BD8](v84);
          objc_storeStrong(&v150, 0);
          objc_storeStrong(&v151, 0);
        }

        objc_storeStrong(&v153, 0);
      }

      v164 = 1;
    }

    else if (*(v169[0] + 40))
    {
      v81 = [MEMORY[0x277D64B58] scanOperationLogger];
      v149 = [v81 oslog];
      MEMORY[0x277D82BD8](v81);
      v148 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        v79 = [v169[0] identifier];
        v80 = MEMORY[0x277D82BE0](v79);
        v147 = v80;
        v212 = *(v169[0] + 18);
        if (v212)
        {
          if (v212 == 1)
          {
            v213 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v212 == 2)
          {
            v213 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v213 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v213 = MEMORY[0x277D82BE0](@"N");
        }

        v78 = v213;
        v4 = v213;
        v77 = v78;
        v146 = MEMORY[0x277D82BE0](v77);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v230, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v80, v146, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v149, v148, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping execution for %{public}@.", v230, 0x2Au);
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](v79);
        objc_storeStrong(&v146, 0);
        objc_storeStrong(&v147, 0);
      }

      objc_storeStrong(&v149, 0);
      if ([*(v169[0] + 19) containsObject:*(a1 + 32)])
      {
        v76 = [MEMORY[0x277D64B58] scanOperationLogger];
        v145 = [v76 oslog];
        MEMORY[0x277D82BD8](v76);
        v144 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
        {
          v74 = [v169[0] identifier];
          v75 = MEMORY[0x277D82BE0](v74);
          v143 = v75;
          v210 = *(v169[0] + 18);
          if (v210)
          {
            if (v210 == 1)
            {
              v211 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v210 == 2)
            {
              v211 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v211 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v211 = MEMORY[0x277D82BE0](@"N");
          }

          v73 = v211;
          v5 = v211;
          v72 = v73;
          v142 = MEMORY[0x277D82BE0](v72);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v229, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v75, v142, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v145, v144, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v229, 0x2Au);
          MEMORY[0x277D82BD8](v72);
          MEMORY[0x277D82BD8](v74);
          objc_storeStrong(&v142, 0);
          objc_storeStrong(&v143, 0);
        }

        objc_storeStrong(&v145, 0);
        dispatch_group_leave(*(v169[0] + 16));
        [*(v169[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v71 = [MEMORY[0x277D64B58] scanOperationLogger];
        v141 = [v71 oslog];
        MEMORY[0x277D82BD8](v71);
        v140 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          v69 = [v169[0] identifier];
          v70 = MEMORY[0x277D82BE0](v69);
          v139 = v70;
          v208 = *(v169[0] + 18);
          if (v208)
          {
            if (v208 == 1)
            {
              v209 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v208 == 2)
            {
              v209 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v209 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v209 = MEMORY[0x277D82BE0](@"N");
          }

          v68 = v209;
          v6 = v209;
          v67 = v68;
          v138 = MEMORY[0x277D82BE0](v67);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v228, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v70, v138, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v141, v140, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v228, 0x2Au);
          MEMORY[0x277D82BD8](v67);
          MEMORY[0x277D82BD8](v69);
          objc_storeStrong(&v138, 0);
          objc_storeStrong(&v139, 0);
        }

        objc_storeStrong(&v141, 0);
      }

      v164 = 1;
    }

    else
    {
      v164 = 12;
    }

    v193 = v162;
    switch(v162[0])
    {
      case 1:
        [v193[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v193[1]);
        break;
      case 3:
        v7 = v193[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v164 == 12)
    {
      v164 = 9;
    }

    v192 = v163;
    switch(v163[0])
    {
      case 1:
        [v192[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v192[1]);
        break;
      case 3:
        v8 = v192[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v164 == 9)
    {
      v66 = [MEMORY[0x277D64B58] scanOperationLogger];
      v137 = [v66 oslog];
      MEMORY[0x277D82BD8](v66);
      v136 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v169[0] identifier];
        v65 = MEMORY[0x277D82BE0](v64);
        v135 = v65;
        v206 = *(v169[0] + 18);
        if (v206)
        {
          if (v206 == 1)
          {
            v207 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v206 == 2)
          {
            v207 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v207 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v207 = MEMORY[0x277D82BE0](@"N");
        }

        v63 = v207;
        v9 = v207;
        v59 = v63;
        v60 = MEMORY[0x277D82BE0](v59);
        v134 = v60;
        v61 = *(a1 + 32);
        v220 = *(a1 + 72) & 1;
        if (v220)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v62 = v10;
        v11 = v10;
        v57 = v62;
        v133 = MEMORY[0x277D82BE0](v57);
        v58 = *(a1 + 40);
        v56 = [*(a1 + 48) operationError];
        __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_66(v227, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v65, v60, v61, v133, v58, v56);
        _os_log_impl(&dword_26B0B9000, v137, v136, "%s [%{public}@|%{public}@]: Concurrent operation %{public}@ has been finished. Success: %{public}@; error: %{public}@. Previous error: %{public}@", v227, 0x48u);
        MEMORY[0x277D82BD8](v56);
        MEMORY[0x277D82BD8](v57);
        MEMORY[0x277D82BD8](v59);
        MEMORY[0x277D82BD8](v64);
        objc_storeStrong(&v133, 0);
        objc_storeStrong(&v134, 0);
        objc_storeStrong(&v135, 0);
      }

      objc_storeStrong(&v137, 0);
      v55 = [*(a1 + 48) operationError];
      MEMORY[0x277D82BD8](v55);
      if (v55)
      {
        v132[0] = 3;
        v181 = v169[0] + 8;
        v180 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v132[1] = v181;
        v131[0] = 3;
        v179 = v169[0] + 16;
        v178 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v131[1] = v179;
        *(v169[0] + 41) = 1;
        if ([*(v169[0] + 19) containsObject:*(a1 + 32)])
        {
          v54 = [MEMORY[0x277D64B58] scanOperationLogger];
          v130 = [v54 oslog];
          MEMORY[0x277D82BD8](v54);
          v129 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
          {
            v52 = [v169[0] identifier];
            v53 = MEMORY[0x277D82BE0](v52);
            v128 = v53;
            v204 = *(v169[0] + 18);
            if (v204)
            {
              if (v204 == 1)
              {
                v205 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v204 == 2)
              {
                v205 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v205 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v205 = MEMORY[0x277D82BE0](@"N");
            }

            v51 = v205;
            v12 = v205;
            v50 = v51;
            v127 = MEMORY[0x277D82BE0](v50);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v226, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v53, v127, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v130, v129, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v226, 0x2Au);
            MEMORY[0x277D82BD8](v50);
            MEMORY[0x277D82BD8](v52);
            objc_storeStrong(&v127, 0);
            objc_storeStrong(&v128, 0);
          }

          objc_storeStrong(&v130, 0);
          dispatch_group_leave(*(v169[0] + 16));
          [*(v169[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v49 = [MEMORY[0x277D64B58] scanOperationLogger];
          v126 = [v49 oslog];
          MEMORY[0x277D82BD8](v49);
          v125 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            v47 = [v169[0] identifier];
            v48 = MEMORY[0x277D82BE0](v47);
            v124 = v48;
            v202 = *(v169[0] + 18);
            if (v202)
            {
              if (v202 == 1)
              {
                v203 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v202 == 2)
              {
                v203 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v203 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v203 = MEMORY[0x277D82BE0](@"N");
            }

            v46 = v203;
            v13 = v203;
            v45 = v46;
            v123 = MEMORY[0x277D82BE0](v45);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v225, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v48, v123, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v126, v125, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v225, 0x2Au);
            MEMORY[0x277D82BD8](v45);
            MEMORY[0x277D82BD8](v47);
            objc_storeStrong(&v123, 0);
            objc_storeStrong(&v124, 0);
          }

          objc_storeStrong(&v126, 0);
        }

        v164 = 36;
        v191 = v131;
        switch(v131[0])
        {
          case 1:
            [v191[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v191[1]);
            break;
          case 3:
            v14 = v191[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        v164 = 33;
        v190 = v132;
        switch(v132[0])
        {
          case 1:
            [v190[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v190[1]);
            break;
          case 3:
            v15 = v190[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        v164 = 1;
      }

      else if (*(a1 + 72))
      {
        v110[0] = 3;
        v173 = v169[0] + 8;
        v172 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v110[1] = v173;
        v109[0] = 3;
        v171 = v169[0] + 16;
        v170 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v109[1] = v171;
        if ([*(v169[0] + 19) containsObject:*(a1 + 32)])
        {
          v33 = [MEMORY[0x277D64B58] scanOperationLogger];
          v108 = [v33 oslog];
          MEMORY[0x277D82BD8](v33);
          v107 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            v31 = [v169[0] identifier];
            v32 = MEMORY[0x277D82BE0](v31);
            v106 = v32;
            v196 = *(v169[0] + 18);
            if (v196)
            {
              if (v196 == 1)
              {
                v197 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v196 == 2)
              {
                v197 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v197 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v197 = MEMORY[0x277D82BE0](@"N");
            }

            v30 = v197;
            v20 = v197;
            v29 = v30;
            v105 = MEMORY[0x277D82BE0](v29);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v222, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v32, v105, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v108, v107, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v222, 0x2Au);
            MEMORY[0x277D82BD8](v29);
            MEMORY[0x277D82BD8](v31);
            objc_storeStrong(&v105, 0);
            objc_storeStrong(&v106, 0);
          }

          objc_storeStrong(&v108, 0);
          dispatch_group_leave(*(v169[0] + 16));
          [*(v169[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v28 = [MEMORY[0x277D64B58] scanOperationLogger];
          v104 = [v28 oslog];
          MEMORY[0x277D82BD8](v28);
          v103 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v26 = [v169[0] identifier];
            v27 = MEMORY[0x277D82BE0](v26);
            v102 = v27;
            v194 = *(v169[0] + 18);
            if (v194)
            {
              if (v194 == 1)
              {
                v195 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v194 == 2)
              {
                v195 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v195 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v195 = MEMORY[0x277D82BE0](@"N");
            }

            v25 = v195;
            v21 = v195;
            v24 = v25;
            v101 = MEMORY[0x277D82BE0](v24);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v221, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v27, v101, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v104, v103, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v221, 0x2Au);
            MEMORY[0x277D82BD8](v24);
            MEMORY[0x277D82BD8](v26);
            objc_storeStrong(&v101, 0);
            objc_storeStrong(&v102, 0);
          }

          objc_storeStrong(&v104, 0);
        }

        v164 = 60;
        v187 = v109;
        switch(v109[0])
        {
          case 1:
            [v187[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v187[1]);
            break;
          case 3:
            v22 = v187[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        v164 = 57;
        v186 = v110;
        switch(v110[0])
        {
          case 1:
            [v186[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v186[1]);
            break;
          case 3:
            v23 = v186[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        v164 = 0;
      }

      else
      {
        v122[0] = 3;
        v177 = v169[0] + 8;
        v176 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v122[1] = v177;
        v121[0] = 3;
        v175 = v169[0] + 16;
        v174 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v121[1] = v175;
        *(v169[0] + 41) = 1;
        v44 = *(a1 + 40);
        v119 = 0;
        if (v44)
        {
          [*(a1 + 48) setOperationError:v44];
        }

        else
        {
          v120 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:0 userInfo:0];
          v119 = 1;
          [*(a1 + 48) setOperationError:v120];
        }

        if (v119)
        {
          MEMORY[0x277D82BD8](v120);
        }

        if ([*(v169[0] + 19) containsObject:*(a1 + 32)])
        {
          v43 = [MEMORY[0x277D64B58] scanOperationLogger];
          v118 = [v43 oslog];
          MEMORY[0x277D82BD8](v43);
          v117 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
          {
            v41 = [v169[0] identifier];
            v42 = MEMORY[0x277D82BE0](v41);
            v116 = v42;
            v200 = *(v169[0] + 18);
            if (v200)
            {
              if (v200 == 1)
              {
                v201 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v200 == 2)
              {
                v201 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v201 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v201 = MEMORY[0x277D82BE0](@"N");
            }

            v40 = v201;
            v16 = v201;
            v39 = v40;
            v115 = MEMORY[0x277D82BE0](v39);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v224, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v42, v115, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v118, v117, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v224, 0x2Au);
            MEMORY[0x277D82BD8](v39);
            MEMORY[0x277D82BD8](v41);
            objc_storeStrong(&v115, 0);
            objc_storeStrong(&v116, 0);
          }

          objc_storeStrong(&v118, 0);
          dispatch_group_leave(*(v169[0] + 16));
          [*(v169[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v38 = [MEMORY[0x277D64B58] scanOperationLogger];
          v114 = [v38 oslog];
          MEMORY[0x277D82BD8](v38);
          v113 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            v36 = [v169[0] identifier];
            v37 = MEMORY[0x277D82BE0](v36);
            v112 = v37;
            v198 = *(v169[0] + 18);
            if (v198)
            {
              if (v198 == 1)
              {
                v199 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v198 == 2)
              {
                v199 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v199 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v199 = MEMORY[0x277D82BE0](@"N");
            }

            v35 = v199;
            v17 = v199;
            v34 = v35;
            v111 = MEMORY[0x277D82BE0](v34);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v223, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v37, v111, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v114, v113, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v223, 0x2Au);
            MEMORY[0x277D82BD8](v34);
            MEMORY[0x277D82BD8](v36);
            objc_storeStrong(&v111, 0);
            objc_storeStrong(&v112, 0);
          }

          objc_storeStrong(&v114, 0);
        }

        v164 = 48;
        v189 = v121;
        switch(v121[0])
        {
          case 1:
            [v189[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v189[1]);
            break;
          case 3:
            v18 = v189[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        v164 = 45;
        v188 = v122;
        switch(v122[0])
        {
          case 1:
            [v188[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v188[1]);
            break;
          case 3:
            v19 = v188[1];
            os_unfair_recursive_lock_unlock();
            break;
        }

        [*(v169[0] + 7) postEvent:*MEMORY[0x277D64D28] withInfo:*(a1 + 48)];
        v164 = 1;
      }
    }
  }

  objc_storeStrong(v169, 0);
  *MEMORY[0x277D85DE8];
}

- (void)checkForMDMRestrictions:(id)a3 withReplyHandler:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [(SUUIMobileScanOperation *)v16 suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke;
  v10 = &unk_279CCCE20;
  v11 = MEMORY[0x277D82BE0](v16);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)v5 softwareUpdatePathRestriction:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke(uint64_t a1, void *a2, id obj)
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v30 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v28[1] = a1;
  v13 = [MEMORY[0x277D64B58] scanOperationLogger];
  v28[0] = [v13 oslog];
  MEMORY[0x277D82BD8](v13);
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v28[0];
    type = v27;
    v11 = [*(a1 + 32) identifier];
    v12 = MEMORY[0x277D82BE0](v11);
    v26 = v12;
    v32 = *(*(a1 + 32) + 144);
    if (v32)
    {
      if (v32 == 1)
      {
        v33 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v32 == 2)
      {
        v33 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v33 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v33 = MEMORY[0x277D82BE0](@"N");
    }

    v5 = v33;
    v3 = v33;
    v8 = v5;
    v6 = MEMORY[0x277D82BE0](v8);
    v25 = v6;
    v7 = SUStringFromMDMSUPath();
    v24 = MEMORY[0x277D82BE0](v7);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_64_8_0_8_66(v34, "[SUUIMobileScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v12, v6, v24, v30, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Found path restriction: %@ (%ld); error: %{public}@", v34, 0x3Eu);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(v28, 0);
  if (location)
  {
    (*(*(a1 + 48) + 16))();
    v23 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) suClient];
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke_405;
    v19 = &unk_279CCCDF8;
    v20 = MEMORY[0x277D82BE0](*(a1 + 32));
    v22[0] = MEMORY[0x277D82BE0](*(a1 + 48));
    v21 = MEMORY[0x277D82BE0](*(a1 + 40));
    v22[1] = v30;
    [v4 isDelayingUpdates:&v15];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(v22, 0);
    objc_storeStrong(&v20, 0);
    v23 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke_405(uint64_t a1, char a2, id obj)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  v10 = [MEMORY[0x277D64B58] scanOperationLogger];
  v15[0] = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v15[0];
    type = v14;
    v8 = [*(a1 + 32) identifier];
    v9 = MEMORY[0x277D82BE0](v8);
    v13 = v9;
    v19 = *(*(a1 + 32) + 144);
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v19 == 2)
      {
        v20 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v20 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v20 = MEMORY[0x277D82BE0](@"N");
    }

    v4 = v20;
    v3 = v20;
    v5 = v4;
    v12 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(v21, "[SUUIMobileScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v9, v12, v17 & 1, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Is delaying updates: %d; error: %{public}@", v21, 0x30u);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(v15, 0);
  if (!location)
  {
    [*(a1 + 40) setMdmPathRestrictions:*(a1 + 56)];
    [*(a1 + 40) setIsDelayingUpdate:v17 & 1];
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)queryDDMDeclaration:(id)a3 withReplyHandler:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = [(SUUIMobileScanOperation *)v15 suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__SUUIMobileScanOperation_queryDDMDeclaration_withReplyHandler___block_invoke;
  v10 = &unk_279CCCE48;
  v12 = MEMORY[0x277D82BE0](v13);
  v11 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)v5 getDDMDeclarationWithHandler:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __64__SUUIMobileScanOperation_queryDDMDeclaration_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v7 = 0;
  v6 = 0;
  if (v9)
  {
    v8 = [v9 domain];
    v7 = 1;
    v3 = 0;
    if ([v8 isEqualToString:*MEMORY[0x277D64910]])
    {
      v3 = [v9 code] == 102;
    }

    v6 = !v3;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (!v6)
  {
    [*(a1 + 32) setDDMDeclaration:location[0]];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)checkForBetaPrograms:(id)a3 withReplyHandler:(id)a4
{
  v95 = *MEMORY[0x277D85DE8];
  v79 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v77 = 0;
  objc_storeStrong(&v77, a4);
  if (_os_feature_enabled_impl())
  {
    v39 = [(SUUIMobileScanOperation *)v79 seedingBetaManager];
    MEMORY[0x277D82BD8](v39);
    if (v39)
    {
      if ([(SUUIMobileScanOperationOptions *)v79->_options clientIsBuddy])
      {
        v31 = [MEMORY[0x277D64B58] scanOperationLogger];
        v67 = [v31 oslog];
        MEMORY[0x277D82BD8](v31);
        v66 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v67;
          v28 = v66;
          v29 = [(SUUIMobileScanOperation *)v79 identifier];
          v30 = MEMORY[0x277D82BE0](v29);
          v65 = v30;
          operationType = v79->_operationType;
          if (operationType)
          {
            if (operationType == 1)
            {
              v85 = MEMORY[0x277D82BE0](@"F");
            }

            else if (operationType == 2)
            {
              v85 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v85 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v85 = MEMORY[0x277D82BE0](@"N");
          }

          v25 = v85;
          v6 = v85;
          v26 = v25;
          v64 = MEMORY[0x277D82BE0](v26);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v92, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v30, v64);
          _os_log_impl(&dword_26B0B9000, v27, v28, "%s [%{public}@|%{public}@]: The client is Buddy - skipping on the Seeding feature.", v92, 0x20u);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v29);
          objc_storeStrong(&v64, 0);
          objc_storeStrong(&v65, 0);
        }

        objc_storeStrong(&v67, 0);
        (*(v77 + 2))(v77, 1, 0);
        v72 = 1;
      }

      else
      {
        v24 = [location[0] currentSeedingDevice];
        MEMORY[0x277D82BD8](v24);
        if (v24)
        {
          v23 = [MEMORY[0x277D64B58] scanOperationLogger];
          v63 = [v23 oslog];
          MEMORY[0x277D82BD8](v23);
          v62 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v63;
            v20 = v62;
            v21 = [(SUUIMobileScanOperation *)v79 identifier];
            v22 = MEMORY[0x277D82BE0](v21);
            v61 = v22;
            v82 = v79->_operationType;
            if (v82)
            {
              if (v82 == 1)
              {
                v83 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v82 == 2)
              {
                v83 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v83 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v83 = MEMORY[0x277D82BE0](@"N");
            }

            v17 = v83;
            v7 = v83;
            v18 = v17;
            v60 = MEMORY[0x277D82BE0](v18);
            __os_log_helper_16_2_3_8_32_8_66_8_66(v91, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v22, v60);
            _os_log_impl(&dword_26B0B9000, v19, v20, "%s [%{public}@|%{public}@]: A seeding device has been provided, using it.", v91, 0x20u);
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v21);
            objc_storeStrong(&v60, 0);
            objc_storeStrong(&v61, 0);
          }

          objc_storeStrong(&v63, 0);
          [(SUUIMobileScanOperation *)v79 scanForDeviceEligibleBetaPrograms:location[0] withReplyHandler:v77];
        }

        else
        {
          v16 = [MEMORY[0x277D64B58] scanOperationLogger];
          v59 = [v16 oslog];
          MEMORY[0x277D82BD8](v16);
          v58 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v59;
            v13 = v58;
            v14 = [(SUUIMobileScanOperation *)v79 identifier];
            v15 = MEMORY[0x277D82BE0](v14);
            v57 = v15;
            v80 = v79->_operationType;
            if (v80)
            {
              if (v80 == 1)
              {
                v81 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v80 == 2)
              {
                v81 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v81 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v81 = MEMORY[0x277D82BE0](@"N");
            }

            v10 = v81;
            v8 = v81;
            v11 = v10;
            v56 = MEMORY[0x277D82BE0](v11);
            __os_log_helper_16_2_3_8_32_8_66_8_66(v90, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v15, v56);
            _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: A seeding device has not been provided, attempting to find one.", v90, 0x20u);
            MEMORY[0x277D82BD8](v11);
            MEMORY[0x277D82BD8](v14);
            objc_storeStrong(&v56, 0);
            objc_storeStrong(&v57, 0);
          }

          objc_storeStrong(&v59, 0);
          v9 = MEMORY[0x277D4D320];
          v48 = MEMORY[0x277D85DD0];
          v49 = -1073741824;
          v50 = 0;
          v51 = __65__SUUIMobileScanOperation_checkForBetaPrograms_withReplyHandler___block_invoke;
          v52 = &unk_279CCCE70;
          v53 = MEMORY[0x277D82BE0](location[0]);
          v54 = MEMORY[0x277D82BE0](v79);
          v55 = MEMORY[0x277D82BE0](v77);
          [v9 getCurrentDevice:&v48];
          objc_storeStrong(&v55, 0);
          objc_storeStrong(&v54, 0);
          objc_storeStrong(&v53, 0);
        }

        v72 = 0;
      }
    }

    else
    {
      v38 = [MEMORY[0x277D64B58] scanOperationLogger];
      v71 = [v38 oslog];
      MEMORY[0x277D82BD8](v38);
      v70 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v71;
        v35 = v70;
        v36 = [(SUUIMobileScanOperation *)v79 identifier];
        v37 = MEMORY[0x277D82BE0](v36);
        v69 = v37;
        v86 = v79->_operationType;
        if (v86)
        {
          if (v86 == 1)
          {
            v87 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v86 == 2)
          {
            v87 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v87 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v87 = MEMORY[0x277D82BE0](@"N");
        }

        v32 = v87;
        v5 = v87;
        v33 = v32;
        v68 = MEMORY[0x277D82BE0](v33);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v93, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v37, v68);
        _os_log_impl(&dword_26B0B9000, v34, v35, "%s [%{public}@|%{public}@]: The seeding beta manager was not configured for this scan operation. Skipping.", v93, 0x20u);
        MEMORY[0x277D82BD8](v33);
        MEMORY[0x277D82BD8](v36);
        objc_storeStrong(&v68, 0);
        objc_storeStrong(&v69, 0);
      }

      objc_storeStrong(&v71, 0);
      (*(v77 + 2))(v77, 1, 0);
      v72 = 1;
    }
  }

  else
  {
    v46 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v46 oslog];
    MEMORY[0x277D82BD8](v46);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v43 = type;
      v44 = [(SUUIMobileScanOperation *)v79 identifier];
      v45 = MEMORY[0x277D82BE0](v44);
      v74 = v45;
      v88 = v79->_operationType;
      if (v88)
      {
        if (v88 == 1)
        {
          v89 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v88 == 2)
        {
          v89 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v89 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v89 = MEMORY[0x277D82BE0](@"N");
      }

      v40 = v89;
      v4 = v89;
      v41 = v40;
      v73 = MEMORY[0x277D82BE0](v41);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v94, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v45, v73);
      _os_log_impl(&dword_26B0B9000, log, v43, "%s [%{public}@|%{public}@]: The Seeding feature is unavailable.", v94, 0x20u);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v44);
      objc_storeStrong(&v73, 0);
      objc_storeStrong(&v74, 0);
    }

    objc_storeStrong(&oslog, 0);
    (*(v77 + 2))(v77, 1, 0);
    v72 = 1;
  }

  objc_storeStrong(&v77, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUUIMobileScanOperation_checkForBetaPrograms_withReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) setCurrentSeedingDevice:location[0]];
  [*(a1 + 40) scanForDeviceEligibleBetaPrograms:*(a1 + 32) withReplyHandler:*(a1 + 48)];
  objc_storeStrong(location, 0);
}

- (void)scanForDeviceEligibleBetaPrograms:(id)a3 withReplyHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v16 = [location[0] currentSeedingDevice];
  MEMORY[0x277D82BD8](v16);
  if (v16)
  {
    v7 = [(SUUIMobileScanOperation *)v32 seedingBetaManager];
    v6 = [location[0] currentSeedingDevice];
    v5 = [v6 platform];
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke;
    v21 = &unk_279CCCEC0;
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x277D82BE0](v32);
    v24 = MEMORY[0x277D82BE0](v30);
    [(SDBetaManager *)v7 queryProgramsForSystemAccountsWithPlatforms:v5 completion:&v17];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    v25 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277D64B58] scanOperationLogger];
    v29 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      log = v29;
      type = v28;
      v12 = [(SUUIMobileScanOperation *)v32 identifier];
      v13 = MEMORY[0x277D82BE0](v12);
      v27 = v13;
      operationType = v32->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v34 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v34 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v34 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v34 = MEMORY[0x277D82BE0](@"N");
      }

      v8 = v34;
      v4 = v34;
      v9 = v8;
      v26 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v35, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]", v13, v26);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Tried to scan for beta programs without a seeding device.", v35, 0x20u);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    (*(v30 + 2))(v30, 0, 0);
    v25 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v44 = a3;
  v43[1] = a1;
  if (a3)
  {
    [*(a1 + 32) setBetaPrograms:MEMORY[0x277CBEBF8]];
    v23 = [MEMORY[0x277D64B58] scanOperationLogger];
    v43[0] = [v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v43[0];
      type = v42;
      v21 = [*(a1 + 40) identifier];
      v22 = MEMORY[0x277D82BE0](v21);
      v41 = v22;
      v48 = *(*(a1 + 40) + 144);
      if (v48)
      {
        if (v48 == 1)
        {
          v49 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v48 == 2)
        {
          v49 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v49 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v49 = MEMORY[0x277D82BE0](@"N");
      }

      v17 = v49;
      v3 = v49;
      v18 = v17;
      v40 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v51, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v22, v40, v44);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Could not fetch new beta programs: %ld", v51, 0x2Au);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(v43, 0);
    (*(*(a1 + 48) + 16))();
    v39 = 1;
  }

  else
  {
    [*(a1 + 32) setBetaPrograms:location[0]];
    v16 = [MEMORY[0x277D64B58] scanOperationLogger];
    v38 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v38;
      v13 = v37;
      v14 = [*(a1 + 40) identifier];
      v15 = MEMORY[0x277D82BE0](v14);
      v36 = v15;
      v46 = *(*(a1 + 40) + 144);
      if (v46)
      {
        if (v46 == 1)
        {
          v47 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v46 == 2)
        {
          v47 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v47 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v47 = MEMORY[0x277D82BE0](@"N");
      }

      v7 = v47;
      v4 = v47;
      v11 = v7;
      v8 = MEMORY[0x277D82BE0](v11);
      v35 = v8;
      v9 = [location[0] count];
      v10 = [location[0] valueForKey:@"programID"];
      v34 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_64(v50, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v15, v8, v9, v34);
      _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: Got the device available Beta Programs (count: %ld): %@", v50, 0x34u);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v38, 0);
    v6 = [*(a1 + 40) seedingBetaManager];
    v5 = [*(a1 + 32) currentSeedingDevice];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke_415;
    v30 = &unk_279CCCE98;
    v31 = MEMORY[0x277D82BE0](*(a1 + 32));
    v32 = MEMORY[0x277D82BE0](*(a1 + 40));
    v33 = MEMORY[0x277D82BE0](*(a1 + 48));
    [v6 enrolledBetaProgramForDevice:v5 completion:&v26];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v31, 0);
    v39 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke_415(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[1] = a1;
  [*(a1 + 32) setEnrolledBetaProgram:location[0]];
  v10 = [MEMORY[0x277D64B58] scanOperationLogger];
  v17[0] = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) identifier];
    v9 = MEMORY[0x277D82BE0](v8);
    v15 = v9;
    v19 = *(*(a1 + 40) + 144);
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v19 == 2)
      {
        v20 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v20 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v20 = MEMORY[0x277D82BE0](@"N");
    }

    v4 = v20;
    v2 = v20;
    v5 = v4;
    v6 = MEMORY[0x277D82BE0](v5);
    v14 = v6;
    v7 = location[0];
    v12 = 0;
    if (location[0])
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "programID")}];
      v12 = 1;
      v3 = v13;
    }

    else
    {
      v3 = @"(null)";
    }

    __os_log_helper_16_2_5_8_32_8_66_8_66_8_64_8_66(v21, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v9, v6, v7, v3);
    _os_log_impl(&dword_26B0B9000, v17[0], v16, "%s [%{public}@|%{public}@]: Refreshed current beta program: %@ (program ID: %{public}@", v21, 0x34u);
    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v17, 0);
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)queryRollbackStatus:(id)a3 withReplyHandler:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [(SUUIMobileScanOperation *)v16 suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke;
  v10 = &unk_279CCCF10;
  v11 = MEMORY[0x277D82BE0](v16);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)v5 isRollingBack:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke(uint64_t a1, char a2, id obj, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v31 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28[1] = a1;
  v12 = [MEMORY[0x277D64B58] scanOperationLogger];
  v28[0] = [v12 oslog];
  MEMORY[0x277D82BD8](v12);
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v28[0];
    type = v27;
    v10 = [*(a1 + 32) identifier];
    v11 = MEMORY[0x277D82BE0](v10);
    v26 = v11;
    v33 = *(*(a1 + 32) + 144);
    if (v33)
    {
      if (v33 == 1)
      {
        v34 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v33 == 2)
      {
        v34 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v34 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v34 = MEMORY[0x277D82BE0](@"N");
    }

    v6 = v34;
    v4 = v34;
    v7 = v6;
    v25 = MEMORY[0x277D82BE0](v7);
    __os_log_helper_16_2_6_8_32_8_66_8_66_4_0_8_66_8_64(v35, "[SUUIMobileScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v11, v25, v31 & 1, location, v29);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Is rolling back? %d; error: %{public}@; rollback descriptor: %@", v35, 0x3Au);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(v28, 0);
  if (v29)
  {
    (*(*(a1 + 48) + 16))();
    v24 = 1;
  }

  else
  {
    [*(a1 + 40) setRollingBackSplatUpdate:v31 & 1];
    queue = [*(a1 + 32) concurrentQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke_421;
    v19 = &unk_279CCCEE8;
    v20 = MEMORY[0x277D82BE0](location);
    v21 = MEMORY[0x277D82BE0](*(a1 + 32));
    v22 = MEMORY[0x277D82BE0](*(a1 + 40));
    v23 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_barrier_async(queue, &v15);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    v24 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke_421(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  if (*(a1 + 32))
  {
    v12 = [MEMORY[0x277D64B58] scanOperationLogger];
    v17[0] = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v17[0];
      type = v16;
      v10 = [*(a1 + 40) identifier];
      v11 = MEMORY[0x277D82BE0](v10);
      v15 = v11;
      v18 = *(*(a1 + 40) + 144);
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v18 == 2)
        {
          v19 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v19 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v19 = MEMORY[0x277D82BE0](@"N");
      }

      v1 = v19;
      v7 = v19;
      v3 = MEMORY[0x277D82BE0](v7);
      v14 = v3;
      v4 = *(a1 + 32);
      v6 = [*(a1 + 48) rollbackDescriptor];
      v5 = [*(a1 + 48) rollbackDescriptor];
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_64_8_0_8_64_8_0(v20, "[SUUIMobileScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v11, v3, v4, v4, v6, v5);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Assigning rollback descriptor %@ (%p) instead of %@ (%p)", v20, 0x48u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(v17, 0);
    [*(a1 + 48) setRollbackDescriptor:*(a1 + 32)];
  }

  result = (*(*(a1 + 56) + 16))();
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)checkIsEligibleForRollback:(id)a3 withReplyHandler:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [(SUUIMobileScanOperation *)v16 suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke;
  v10 = &unk_279CCCF38;
  v11 = MEMORY[0x277D82BE0](v16);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)v5 eligibleRollbackWithOptions:0 withResult:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  v11 = [MEMORY[0x277D64B58] scanOperationLogger];
  v27[0] = [v11 oslog];
  MEMORY[0x277D82BD8](v11);
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v27[0];
    type = v26;
    v9 = [*(a1 + 32) identifier];
    v10 = MEMORY[0x277D82BE0](v9);
    v25 = v10;
    v30 = *(*(a1 + 32) + 144);
    if (v30)
    {
      if (v30 == 1)
      {
        v31 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v30 == 2)
      {
        v31 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v31 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v31 = MEMORY[0x277D82BE0](@"N");
    }

    v5 = v31;
    v3 = v31;
    v6 = v5;
    v24 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_64(v32, "[SUUIMobileScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v10, v24, v28, location[0]);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: error: %{public}@; eligible rollback descriptor: %@", v32, 0x34u);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(v27, 0);
  if (v28)
  {
    (*(*(a1 + 48) + 16))();
    v23 = 1;
  }

  else
  {
    queue = [*(a1 + 32) concurrentQueue];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke_423;
    v18 = &unk_279CCCEE8;
    v19 = MEMORY[0x277D82BE0](location[0]);
    v20 = MEMORY[0x277D82BE0](*(a1 + 32));
    v21 = MEMORY[0x277D82BE0](*(a1 + 40));
    v22 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_barrier_async(queue, &v14);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    v23 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke_423(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  if (*(a1 + 32))
  {
    v12 = [MEMORY[0x277D64B58] scanOperationLogger];
    v17[0] = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v17[0];
      type = v16;
      v10 = [*(a1 + 40) identifier];
      v11 = MEMORY[0x277D82BE0](v10);
      v15 = v11;
      v18 = *(*(a1 + 40) + 144);
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v18 == 2)
        {
          v19 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v19 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v19 = MEMORY[0x277D82BE0](@"N");
      }

      v1 = v19;
      v7 = v19;
      v3 = MEMORY[0x277D82BE0](v7);
      v14 = v3;
      v4 = *(a1 + 32);
      v6 = [*(a1 + 48) rollbackDescriptor];
      v5 = [*(a1 + 48) rollbackDescriptor];
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_64_8_0_8_64_8_0(v20, "[SUUIMobileScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v11, v3, v4, v4, v6, v5);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Assigning rollback descriptor %@ (%p) instead of %@ (%p)", v20, 0x48u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(v17, 0);
    [*(a1 + 48) setRollbackDescriptor:*(a1 + 32)];
  }

  result = (*(*(a1 + 56) + 16))();
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)checkIfAutoUpdateScheduled:(id)a3 withReplyHandler:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [(SUUIMobileScanOperation *)v16 suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke;
  v10 = &unk_279CCCF88;
  v11 = MEMORY[0x277D82BE0](v16);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)v5 isAutoUpdateScheduled:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v28 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v26[1] = a1;
  v11 = [MEMORY[0x277D64B58] scanOperationLogger];
  v26[0] = [v11 oslog];
  MEMORY[0x277D82BD8](v11);
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v26[0];
    type = v25;
    v9 = [*(a1 + 32) identifier];
    v10 = MEMORY[0x277D82BE0](v9);
    v24 = v10;
    v30 = *(*(a1 + 32) + 144);
    if (v30)
    {
      if (v30 == 1)
      {
        v31 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v30 == 2)
      {
        v31 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v31 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v31 = MEMORY[0x277D82BE0](@"N");
    }

    v5 = v31;
    v3 = v31;
    v6 = v5;
    v23 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(v32, "[SUUIMobileScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v10, v23, v28 & 1, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: isAutoUpdateScheduled - result: %d, error: %{public}@", v32, 0x30u);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(v26, 0);
  if (location || ([*(a1 + 40) setIsAutoUpdateScheduled:v28 & 1], (v28 & 1) == 0))
  {
    (*(*(a1 + 48) + 16))();
    v22 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) suClient];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke_425;
    v17 = &unk_279CCCF60;
    v18 = MEMORY[0x277D82BE0](*(a1 + 32));
    v21 = v28 & 1;
    v20 = MEMORY[0x277D82BE0](*(a1 + 48));
    v19 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v4 currentAutoInstallOperation:0 withResult:&v13];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v18, 0);
    v22 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke_425(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v10 = [MEMORY[0x277D64B58] scanOperationLogger];
  v16[0] = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v16[0];
    type = v15;
    v8 = [*(a1 + 32) identifier];
    v9 = MEMORY[0x277D82BE0](v8);
    v14 = v9;
    v19 = *(*(a1 + 32) + 144);
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v19 == 2)
      {
        v20 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v20 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v20 = MEMORY[0x277D82BE0](@"N");
    }

    v4 = v20;
    v3 = v20;
    v5 = v4;
    v13 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_4_0(v21, "[SUUIMobileScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v9, v13, location[0], v17, *(a1 + 56) & 1);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: currentAutoInstallOperation - result: %{public}@, error: %{public}@; was scheduled: %d", v21, 0x3Au);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v16, 0);
  if (!v17)
  {
    [*(a1 + 40) setCurrentAutoInstallOperation:location[0]];
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handleDiscoveredScanResults:(id)a3 withError:(id)a4 usingEventInfo:(id)a5 isCachedResults:(BOOL)a6 activity:(suui_activity_s *)a7
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  [(SUUIMobileScanOperation *)v14 handleDiscoveredScanResults:location[0] withError:v12 usingEventInfo:v11 isCachedResults:a6 activity:a7 beforePostEvent:0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)handleDiscoveredScanResults:(id)a3 withError:(id)a4 usingEventInfo:(id)a5 isCachedResults:(BOOL)a6 activity:(suui_activity_s *)a7 beforePostEvent:(id)a8
{
  v87 = *MEMORY[0x277D85DE8];
  v78 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v76 = 0;
  objc_storeStrong(&v76, a4);
  v75 = 0;
  objc_storeStrong(&v75, a5);
  v74 = a6;
  v73 = a7;
  v72 = 0;
  objc_storeStrong(&v72, a8);
  if (v78->_canceled)
  {
    v46 = [MEMORY[0x277D64B58] scanOperationLogger];
    v71 = [v46 oslog];
    MEMORY[0x277D82BD8](v46);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      log = v71;
      v43 = type;
      v44 = [(SUUIMobileScanOperation *)v78 identifier];
      v45 = MEMORY[0x277D82BE0](v44);
      v69 = v45;
      operationType = v78->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v82 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v82 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v82 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v82 = MEMORY[0x277D82BE0](@"N");
      }

      v40 = v82;
      v8 = v82;
      v41 = v40;
      v68 = MEMORY[0x277D82BE0](v41);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v86, "[SUUIMobileScanOperation handleDiscoveredScanResults:withError:usingEventInfo:isCachedResults:activity:beforePostEvent:]", v45, v68);
      _os_log_impl(&dword_26B0B9000, log, v43, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v86, 0x20u);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v44);
      objc_storeStrong(&v68, 0);
      objc_storeStrong(&v69, 0);
    }

    objc_storeStrong(&v71, 0);
    v67 = 1;
  }

  else
  {
    v39 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v39 oslog];
    MEMORY[0x277D82BD8](v39);
    v65 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v35 = oslog;
      v36 = v65;
      v37 = [(SUUIMobileScanOperation *)v78 identifier];
      v38 = MEMORY[0x277D82BE0](v37);
      v64 = v38;
      v79 = v78->_operationType;
      if (v79)
      {
        if (v79 == 1)
        {
          v80 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v79 == 2)
        {
          v80 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v80 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v80 = MEMORY[0x277D82BE0](@"N");
      }

      v26 = v80;
      v9 = v80;
      v34 = v26;
      v29 = MEMORY[0x277D82BE0](v34);
      v63 = v29;
      v30 = v76;
      v84 = v74;
      if (v74)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v27 = v10;
      v11 = v10;
      v33 = v27;
      v31 = MEMORY[0x277D82BE0](v33);
      v62 = v31;
      v83 = [v75 forceReloadScanResults];
      if (v83)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v28 = v12;
      v13 = v12;
      v32 = v28;
      v61 = MEMORY[0x277D82BE0](v32);
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_64(v85, "[SUUIMobileScanOperation handleDiscoveredScanResults:withError:usingEventInfo:isCachedResults:activity:beforePostEvent:]", v38, v29, v30, v31, v61, location[0]);
      _os_log_impl(&dword_26B0B9000, v35, v36, "%s [%{public}@|%{public}@]: scanForUpdates results: error: %{public}@; isCachedResults: %{public}@; forcedReload: %{public}@; SUScanResults: %@", v85, 0x48u);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v37);
      objc_storeStrong(&v61, 0);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v64, 0);
    }

    objc_storeStrong(&oslog, 0);
    [v75 setScanError:v76];
    if (v76 && ![(SUUIMobileScanOperation *)v78 shouldConsiderErrorAsSuccessfulCase:v76])
    {
      v60 = MEMORY[0x26D66ED00](v72);
      if (v60)
      {
        (*(v60 + 2))();
        v59 = 0;
      }

      else
      {
        v58 = 0;
      }

      objc_storeStrong(&v60, 0);
      scanFSM = v78->_scanFSM;
      v23 = *MEMORY[0x277D64D20];
      v14 = [SUUIMobileScanOperationParam alloc];
      v25 = [(SUUIMobileScanOperationParam *)v14 initWithError:v76];
      [SUCoreFSM postEvent:"postEvent:withInfo:endingActivity:" withInfo:v23 endingActivity:?];
      MEMORY[0x277D82BD8](v25);
      v67 = 1;
      goto LABEL_52;
    }

    v21 = [(SUUIMobileScanOperation *)v78 options];
    v22 = 0;
    if ([(SUUIMobileScanOperationOptions *)v21 supportScanResultsCaching])
    {
      v22 = !v74;
    }

    MEMORY[0x277D82BD8](v21);
    if (v22)
    {
      [(SUUIMobileScanOperation *)v78 cacheDiscoveredScanResults:location[0]];
    }

    if (location[0])
    {
      [v75 setEmptyScanResults:0];
      v15 = v75;
      v16 = [location[0] preferredDescriptor];
      [v15 setPreferredDescriptor:?];
      MEMORY[0x277D82BD8](v16);
      v17 = v75;
      v18 = [location[0] alternateDescriptor];
      [v17 setAlternateDescriptor:?];
      MEMORY[0x277D82BD8](v18);
      v19 = [location[0] preferredDescriptor];
      v56 = 0;
      v20 = 1;
      if (!v19)
      {
        v57 = [location[0] alternateDescriptor];
        v56 = 1;
        v20 = v57 != 0;
      }

      if (v56)
      {
        MEMORY[0x277D82BD8](v57);
      }

      MEMORY[0x277D82BD8](v19);
      if (v20)
      {
        v55 = MEMORY[0x26D66ED00](v72);
        if (v55)
        {
          (*(v55 + 2))();
          v54 = 0;
        }

        else
        {
          v53 = 0;
        }

        objc_storeStrong(&v55, 0);
        [(SUCoreFSM *)v78->_scanFSM postEvent:*MEMORY[0x277D64E70] withInfo:v75 endingActivity:&v73];
        v67 = 1;
        goto LABEL_52;
      }
    }

    else
    {
      [v75 setEmptyScanResults:1];
    }

    v52 = MEMORY[0x26D66ED00](v72);
    if (v52)
    {
      (*(v52 + 2))();
    }

    objc_storeStrong(&v52, 0);
    [(SUCoreFSM *)v78->_scanFSM postEvent:*MEMORY[0x277D64D80] withInfo:v75 endingActivity:&v73];
    v67 = 0;
  }

LABEL_52:
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)cachedScanResults
{
  v5 = self;
  v4 = a2;
  v3 = 0;
  return [(SUUIMobileScanOperation *)self cachedScanResults:&v3];
}

- (id)cachedScanResults:(BOOL *)a3
{
  v168 = *MEMORY[0x277D85DE8];
  v139 = self;
  v138 = a2;
  v137 = a3;
  *a3 = 0;
  if (_os_feature_enabled_impl())
  {
    v85 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v85 oslog];
    MEMORY[0x277D82BD8](v85);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v82 = type;
      v83 = [(SUUIMobileScanOperation *)v139 identifier];
      v84 = MEMORY[0x277D82BE0](v83);
      v134 = v84;
      operationType = v139->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v158 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v158 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v158 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v158 = MEMORY[0x277D82BE0](@"N");
      }

      v3 = v158;
      v80 = v158;
      v133 = MEMORY[0x277D82BE0](v80);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v167, "[SUUIMobileScanOperation cachedScanResults:]", v84, v133);
      _os_log_impl(&dword_26B0B9000, log, v82, "%s [%{public}@|%{public}@]: Looking for a previously cached version of SUScanResults", v167, 0x20u);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v83);
      objc_storeStrong(&v133, 0);
      objc_storeStrong(&v134, 0);
    }

    objc_storeStrong(&oslog, 0);
    v78 = [MEMORY[0x277D64BD8] sharedDefaults];
    v4 = [v78 defaultsContainsKey:*MEMORY[0x277D64C68]];
    v131 = 0;
    v129 = 0;
    v79 = 0;
    if (v4)
    {
      v132 = [MEMORY[0x277D64BD8] sharedDefaults];
      v131 = 1;
      v130 = [v132 scanResultsCachingDuration];
      v129 = 1;
      v79 = [v130 intValue] == 0;
    }

    if (v129)
    {
      MEMORY[0x277D82BD8](v130);
    }

    if (v131)
    {
      MEMORY[0x277D82BD8](v132);
    }

    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      v140 = 0;
    }

    else
    {
      v128 = [(NSUserDefaults *)v139->_userDefaultsSuite objectForKey:@"SUCachedScanResults"];
      v127 = [(NSUserDefaults *)v139->_userDefaultsSuite objectForKey:@"SUCachedScanResultsTTL"];
      v126 = [(NSUserDefaults *)v139->_userDefaultsSuite stringForKey:@"SUCachedAudience"];
      v125 = [(NSUserDefaults *)v139->_userDefaultsSuite stringForKey:@"SUCachedOSVersion"];
      if (v127 || v126 || v125)
      {
        if (v127 && v126 && v125)
        {
          v62 = [MEMORY[0x277CBEAA8] date];
          v63 = [v62 compare:v127];
          MEMORY[0x277D82BD8](v62);
          if (v63 == 1)
          {
            v61 = [MEMORY[0x277D64B58] scanOperationLogger];
            v115 = [v61 oslog];
            MEMORY[0x277D82BD8](v61);
            v114 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              v57 = v115;
              v58 = v114;
              v59 = [(SUUIMobileScanOperation *)v139 identifier];
              v60 = MEMORY[0x277D82BE0](v59);
              v113 = v60;
              v151 = v139->_operationType;
              if (v151)
              {
                if (v151 == 1)
                {
                  v152 = MEMORY[0x277D82BE0](@"F");
                }

                else if (v151 == 2)
                {
                  v152 = MEMORY[0x277D82BE0](@"R");
                }

                else
                {
                  v152 = MEMORY[0x277D82BE0](@"N/A");
                }
              }

              else
              {
                v152 = MEMORY[0x277D82BE0](@"N");
              }

              v53 = v152;
              v7 = v152;
              v56 = v53;
              v54 = MEMORY[0x277D82BE0](v56);
              v112 = v54;
              v55 = [MEMORY[0x277CBEAA8] date];
              v111 = MEMORY[0x277D82BE0](v55);
              __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v164, "[SUUIMobileScanOperation cachedScanResults:]", v60, v54, v111, v127);
              _os_log_impl(&dword_26B0B9000, v57, v58, "%s [%{public}@|%{public}@]: The cached version of SUScanResults has been expired. Skipping.\n\t- Now: %{public}@\n\t- TTL: %{public}@", v164, 0x34u);
              MEMORY[0x277D82BD8](v55);
              MEMORY[0x277D82BD8](v56);
              MEMORY[0x277D82BD8](v59);
              objc_storeStrong(&v111, 0);
              objc_storeStrong(&v112, 0);
              objc_storeStrong(&v113, 0);
            }

            objc_storeStrong(&v115, 0);
            [(SUUIMobileScanOperation *)v139 removeCachedScanResults];
            v140 = 0;
            v120 = 1;
          }

          else
          {
            v110 = [(SUUIMobileScanOperation *)v139 pallasAudience];
            if ([v110 isEqualToString:v126])
            {
              v105 = [(SUUIMobileScanOperation *)v139 currentOSVersionIdentifier];
              if ([v105 isEqualToString:v125])
              {
                if (v128)
                {
                  v96 = 0;
                  v30 = MEMORY[0x277CCAAC8];
                  v11 = objc_opt_class();
                  v94 = v96;
                  v31 = [v30 unarchivedObjectOfClass:v11 fromData:v128 error:&v94];
                  objc_storeStrong(&v96, v94);
                  v95 = v31;
                  if (v96)
                  {
                    v29 = [MEMORY[0x277D64B58] scanOperationLogger];
                    v93 = [v29 oslog];
                    MEMORY[0x277D82BD8](v29);
                    v92 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                    {
                      v25 = v93;
                      v26 = v92;
                      v27 = [(SUUIMobileScanOperation *)v139 identifier];
                      v28 = MEMORY[0x277D82BE0](v27);
                      v91 = v28;
                      v143 = v139->_operationType;
                      if (v143)
                      {
                        if (v143 == 1)
                        {
                          v144 = MEMORY[0x277D82BE0](@"F");
                        }

                        else if (v143 == 2)
                        {
                          v144 = MEMORY[0x277D82BE0](@"R");
                        }

                        else
                        {
                          v144 = MEMORY[0x277D82BE0](@"N/A");
                        }
                      }

                      else
                      {
                        v144 = MEMORY[0x277D82BE0](@"N");
                      }

                      v23 = v144;
                      v12 = v144;
                      v24 = v23;
                      v90 = MEMORY[0x277D82BE0](v24);
                      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v160, "[SUUIMobileScanOperation cachedScanResults:]", v28, v90, v96);
                      _os_log_error_impl(&dword_26B0B9000, v25, v26, "%s [%{public}@|%{public}@]: Failed to unarchive SUScanResults: %{public}@", v160, 0x2Au);
                      MEMORY[0x277D82BD8](v24);
                      MEMORY[0x277D82BD8](v27);
                      objc_storeStrong(&v90, 0);
                      objc_storeStrong(&v91, 0);
                    }

                    objc_storeStrong(&v93, 0);
                    [(SUUIMobileScanOperation *)v139 removeCachedScanResults];
                    v140 = 0;
                    v120 = 1;
                  }

                  else
                  {
                    v22 = [MEMORY[0x277D64B58] scanOperationLogger];
                    v89 = [v22 oslog];
                    MEMORY[0x277D82BD8](v22);
                    v88 = OS_LOG_TYPE_DEFAULT;
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                    {
                      v18 = v89;
                      v19 = v88;
                      v20 = [(SUUIMobileScanOperation *)v139 identifier];
                      v21 = MEMORY[0x277D82BE0](v20);
                      v87 = v21;
                      v141 = v139->_operationType;
                      if (v141)
                      {
                        if (v141 == 1)
                        {
                          v142 = MEMORY[0x277D82BE0](@"F");
                        }

                        else if (v141 == 2)
                        {
                          v142 = MEMORY[0x277D82BE0](@"R");
                        }

                        else
                        {
                          v142 = MEMORY[0x277D82BE0](@"N/A");
                        }
                      }

                      else
                      {
                        v142 = MEMORY[0x277D82BE0](@"N");
                      }

                      v16 = v142;
                      v13 = v142;
                      v17 = v16;
                      v86 = MEMORY[0x277D82BE0](v17);
                      __os_log_helper_16_2_5_8_32_8_66_8_66_8_2_8_66(v159, "[SUUIMobileScanOperation cachedScanResults:]", v21, v86, v95, v127);
                      _os_log_impl(&dword_26B0B9000, v18, v19, "%s [%{public}@|%{public}@]: Found cached version of SUScanResults. Using them.\n\t- SUScanResults: %{public}p\n\t- TTL: %{public}@", v159, 0x34u);
                      MEMORY[0x277D82BD8](v17);
                      MEMORY[0x277D82BD8](v20);
                      objc_storeStrong(&v86, 0);
                      objc_storeStrong(&v87, 0);
                    }

                    objc_storeStrong(&v89, 0);
                    v140 = MEMORY[0x277D82BE0](v95);
                    v120 = 1;
                  }

                  objc_storeStrong(&v95, 0);
                  objc_storeStrong(&v96, 0);
                }

                else
                {
                  *v137 = 1;
                  v38 = [MEMORY[0x277D64B58] scanOperationLogger];
                  v100 = [v38 oslog];
                  MEMORY[0x277D82BD8](v38);
                  v99 = OS_LOG_TYPE_DEFAULT;
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = v100;
                    v35 = v99;
                    v36 = [(SUUIMobileScanOperation *)v139 identifier];
                    v37 = MEMORY[0x277D82BE0](v36);
                    v98 = v37;
                    v145 = v139->_operationType;
                    if (v145)
                    {
                      if (v145 == 1)
                      {
                        v146 = MEMORY[0x277D82BE0](@"F");
                      }

                      else if (v145 == 2)
                      {
                        v146 = MEMORY[0x277D82BE0](@"R");
                      }

                      else
                      {
                        v146 = MEMORY[0x277D82BE0](@"N/A");
                      }
                    }

                    else
                    {
                      v146 = MEMORY[0x277D82BE0](@"N");
                    }

                    v32 = v146;
                    v10 = v146;
                    v33 = v32;
                    v97 = MEMORY[0x277D82BE0](v33);
                    __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v161, "[SUUIMobileScanOperation cachedScanResults:]", v37, v97, v127);
                    _os_log_impl(&dword_26B0B9000, v34, v35, "%s [%{public}@|%{public}@]: Found cached version of nil SUScanResults - OS is up to date. Using them.\n\t- TTL: %{public}@", v161, 0x2Au);
                    MEMORY[0x277D82BD8](v33);
                    MEMORY[0x277D82BD8](v36);
                    objc_storeStrong(&v97, 0);
                    objc_storeStrong(&v98, 0);
                  }

                  objc_storeStrong(&v100, 0);
                  v140 = 0;
                  v120 = 1;
                }
              }

              else
              {
                v45 = [MEMORY[0x277D64B58] scanOperationLogger];
                v104 = [v45 oslog];
                MEMORY[0x277D82BD8](v45);
                v103 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = v104;
                  v42 = v103;
                  v43 = [(SUUIMobileScanOperation *)v139 identifier];
                  v44 = MEMORY[0x277D82BE0](v43);
                  v102 = v44;
                  v147 = v139->_operationType;
                  if (v147)
                  {
                    if (v147 == 1)
                    {
                      v148 = MEMORY[0x277D82BE0](@"F");
                    }

                    else if (v147 == 2)
                    {
                      v148 = MEMORY[0x277D82BE0](@"R");
                    }

                    else
                    {
                      v148 = MEMORY[0x277D82BE0](@"N/A");
                    }
                  }

                  else
                  {
                    v148 = MEMORY[0x277D82BE0](@"N");
                  }

                  v39 = v148;
                  v9 = v148;
                  v40 = v39;
                  v101 = MEMORY[0x277D82BE0](v40);
                  __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v162, "[SUUIMobileScanOperation cachedScanResults:]", v44, v101, v105, v125);
                  _os_log_impl(&dword_26B0B9000, v41, v42, "%s [%{public}@|%{public}@]: The cached SUScanResults OS Version is different than the current one. Skipping.\n\t- Now: %{public}@\n\t- OS Version: %{public}@", v162, 0x34u);
                  MEMORY[0x277D82BD8](v40);
                  MEMORY[0x277D82BD8](v43);
                  objc_storeStrong(&v101, 0);
                  objc_storeStrong(&v102, 0);
                }

                objc_storeStrong(&v104, 0);
                [(SUUIMobileScanOperation *)v139 removeCachedScanResults];
                v140 = 0;
                v120 = 1;
              }

              objc_storeStrong(&v105, 0);
            }

            else
            {
              v52 = [MEMORY[0x277D64B58] scanOperationLogger];
              v109 = [v52 oslog];
              MEMORY[0x277D82BD8](v52);
              v108 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
              {
                v48 = v109;
                v49 = v108;
                v50 = [(SUUIMobileScanOperation *)v139 identifier];
                v51 = MEMORY[0x277D82BE0](v50);
                v107 = v51;
                v149 = v139->_operationType;
                if (v149)
                {
                  if (v149 == 1)
                  {
                    v150 = MEMORY[0x277D82BE0](@"F");
                  }

                  else if (v149 == 2)
                  {
                    v150 = MEMORY[0x277D82BE0](@"R");
                  }

                  else
                  {
                    v150 = MEMORY[0x277D82BE0](@"N/A");
                  }
                }

                else
                {
                  v150 = MEMORY[0x277D82BE0](@"N");
                }

                v46 = v150;
                v8 = v150;
                v47 = v46;
                v106 = MEMORY[0x277D82BE0](v47);
                __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v163, "[SUUIMobileScanOperation cachedScanResults:]", v51, v106, v110, v126);
                _os_log_impl(&dword_26B0B9000, v48, v49, "%s [%{public}@|%{public}@]: The cached SUScanResults audience is different than the current one. Skipping.\n\t- Now: %{public}@\n\t- Audience: %{public}@", v163, 0x34u);
                MEMORY[0x277D82BD8](v47);
                MEMORY[0x277D82BD8](v50);
                objc_storeStrong(&v106, 0);
                objc_storeStrong(&v107, 0);
              }

              objc_storeStrong(&v109, 0);
              [(SUUIMobileScanOperation *)v139 removeCachedScanResults];
              v140 = 0;
              v120 = 1;
            }

            objc_storeStrong(&v110, 0);
          }
        }

        else
        {
          v70 = [MEMORY[0x277D64B58] scanOperationLogger];
          v119 = [v70 oslog];
          MEMORY[0x277D82BD8](v70);
          v118 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            v66 = v119;
            v67 = v118;
            v68 = [(SUUIMobileScanOperation *)v139 identifier];
            v69 = MEMORY[0x277D82BE0](v68);
            v117 = v69;
            v153 = v139->_operationType;
            if (v153)
            {
              if (v153 == 1)
              {
                v154 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v153 == 2)
              {
                v154 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v154 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v154 = MEMORY[0x277D82BE0](@"N");
            }

            v64 = v154;
            v6 = v154;
            v65 = v64;
            v116 = MEMORY[0x277D82BE0](v65);
            __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_8_66(v165, "[SUUIMobileScanOperation cachedScanResults:]", v69, v116, v127, v126, v125);
            _os_log_error_impl(&dword_26B0B9000, v66, v67, "%s [%{public}@|%{public}@]: One of the required cached fields is/are missing. Skipping on using the cached SUScanResults version.\n\t- TTL: %{public}@\n\t- Audience: %{public}@\n\t- OS Version: %{public}@", v165, 0x3Eu);
            MEMORY[0x277D82BD8](v65);
            MEMORY[0x277D82BD8](v68);
            objc_storeStrong(&v116, 0);
            objc_storeStrong(&v117, 0);
          }

          objc_storeStrong(&v119, 0);
          [(SUUIMobileScanOperation *)v139 removeCachedScanResults];
          v140 = 0;
          v120 = 1;
        }
      }

      else
      {
        v77 = [MEMORY[0x277D64B58] scanOperationLogger];
        v124 = [v77 oslog];
        MEMORY[0x277D82BD8](v77);
        v123 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v73 = v124;
          v74 = v123;
          v75 = [(SUUIMobileScanOperation *)v139 identifier];
          v76 = MEMORY[0x277D82BE0](v75);
          v122 = v76;
          v155 = v139->_operationType;
          if (v155)
          {
            if (v155 == 1)
            {
              v156 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v155 == 2)
            {
              v156 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v156 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v156 = MEMORY[0x277D82BE0](@"N");
          }

          v71 = v156;
          v5 = v156;
          v72 = v71;
          v121 = MEMORY[0x277D82BE0](v72);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v166, "[SUUIMobileScanOperation cachedScanResults:]", v76, v121);
          _os_log_impl(&dword_26B0B9000, v73, v74, "%s [%{public}@|%{public}@]: No cached version of SUScanResults has been found.", v166, 0x20u);
          MEMORY[0x277D82BD8](v72);
          MEMORY[0x277D82BD8](v75);
          objc_storeStrong(&v121, 0);
          objc_storeStrong(&v122, 0);
        }

        objc_storeStrong(&v124, 0);
        v140 = 0;
        v120 = 1;
      }

      objc_storeStrong(&v125, 0);
      objc_storeStrong(&v126, 0);
      objc_storeStrong(&v127, 0);
      objc_storeStrong(&v128, 0);
    }
  }

  else
  {
    v140 = 0;
  }

  *MEMORY[0x277D85DE8];
  v14 = v140;

  return v14;
}

- (void)cacheDiscoveredScanResults:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v64 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (_os_feature_enabled_impl())
  {
    v61 = 0;
    v44 = [MEMORY[0x277D64BD8] sharedDefaults];
    v60 = [v44 scanResultsCachingDuration];
    MEMORY[0x277D82BD8](v44);
    if (v60)
    {
      v43 = [MEMORY[0x277CBEAA8] date];
      v3 = [v43 dateByAddingTimeInterval:{(60 * objc_msgSend(v60, "intValue"))}];
      v4 = v61;
      v61 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v43);
    }

    else if (os_variant_has_internal_content())
    {
      v42 = [MEMORY[0x277CBEAA8] date];
      v5 = [v42 dateByAddingTimeInterval:(60 * *MEMORY[0x277D64C50])];
      v6 = v61;
      v61 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v42);
    }

    else
    {
      v41 = [MEMORY[0x277CBEAA8] date];
      v7 = [v41 dateByAddingTimeInterval:(60 * *MEMORY[0x277D64C58])];
      v8 = v61;
      v61 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v41);
    }

    [(NSUserDefaults *)v64->_userDefaultsSuite setObject:v61 forKey:@"SUCachedScanResultsTTL"];
    userDefaultsSuite = v64->_userDefaultsSuite;
    v38 = [(SUUIMobileScanOperation *)v64 pallasAudience];
    [NSUserDefaults setObject:"setObject:forKey:" forKey:?];
    MEMORY[0x277D82BD8](v38);
    v39 = v64->_userDefaultsSuite;
    v40 = [(SUUIMobileScanOperation *)v64 currentOSVersionIdentifier];
    [NSUserDefaults setObject:v39 forKey:"setObject:forKey:"];
    MEMORY[0x277D82BD8](v40);
    if (location[0])
    {
      v59 = 0;
      obj = 0;
      v36 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&obj];
      objc_storeStrong(&v59, obj);
      v58 = v36;
      if (!v59 && v58)
      {
        [(NSUserDefaults *)v64->_userDefaultsSuite setObject:v58 forKey:@"SUCachedScanResults"];
        v28 = [MEMORY[0x277D64B58] scanOperationLogger];
        v52 = [v28 oslog];
        MEMORY[0x277D82BD8](v28);
        v51 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v52;
          v25 = v51;
          v26 = [(SUUIMobileScanOperation *)v64 identifier];
          v27 = MEMORY[0x277D82BE0](v26);
          v50 = v27;
          operationType = v64->_operationType;
          if (operationType)
          {
            if (operationType == 1)
            {
              v68 = MEMORY[0x277D82BE0](@"F");
            }

            else if (operationType == 2)
            {
              v68 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v68 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v68 = MEMORY[0x277D82BE0](@"N");
          }

          v20 = v68;
          v10 = v68;
          v23 = v20;
          v21 = MEMORY[0x277D82BE0](v23);
          v49 = v21;
          v22 = location[0];
          v11 = [v58 length];
          __os_log_helper_16_2_6_8_32_8_66_8_66_8_2_8_2_8_66(v72, "[SUUIMobileScanOperation cacheDiscoveredScanResults:]", v27, v21, v22, v11, v61);
          _os_log_impl(&dword_26B0B9000, v24, v25, "%s [%{public}@|%{public}@]: Caching the discovered SUScanResults %{public}p (data length: %{public}lu) with TTL: %{public}@", v72, 0x3Eu);
          MEMORY[0x277D82BD8](v23);
          MEMORY[0x277D82BD8](v26);
          objc_storeStrong(&v49, 0);
          objc_storeStrong(&v50, 0);
        }

        objc_storeStrong(&v52, 0);
        v62 = 0;
      }

      else
      {
        v35 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog = [v35 oslog];
        MEMORY[0x277D82BD8](v35);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v32 = type;
          v33 = [(SUUIMobileScanOperation *)v64 identifier];
          v34 = MEMORY[0x277D82BE0](v33);
          v54 = v34;
          v69 = v64->_operationType;
          if (v69)
          {
            if (v69 == 1)
            {
              v70 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v69 == 2)
            {
              v70 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v70 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v70 = MEMORY[0x277D82BE0](@"N");
          }

          v29 = v70;
          v9 = v70;
          v30 = v29;
          v53 = MEMORY[0x277D82BE0](v30);
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_2_8_66(v73, "[SUUIMobileScanOperation cacheDiscoveredScanResults:]", v34, v53, location[0], v59);
          _os_log_error_impl(&dword_26B0B9000, log, v32, "%s [%{public}@|%{public}@]: Failed to archive SUScanResults (%{public}p): %{public}@", v73, 0x34u);
          MEMORY[0x277D82BD8](v30);
          MEMORY[0x277D82BD8](v33);
          objc_storeStrong(&v53, 0);
          objc_storeStrong(&v54, 0);
        }

        objc_storeStrong(&oslog, 0);
        [(SUUIMobileScanOperation *)v64 removeCachedScanResults];
        v62 = 1;
      }

      objc_storeStrong(&v58, 0);
      objc_storeStrong(&v59, 0);
      if (v62)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v19 = [MEMORY[0x277D64B58] scanOperationLogger];
      v48 = [v19 oslog];
      MEMORY[0x277D82BD8](v19);
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v48;
        v16 = v47;
        v17 = [(SUUIMobileScanOperation *)v64 identifier];
        v18 = MEMORY[0x277D82BE0](v17);
        v46 = v18;
        v65 = v64->_operationType;
        if (v65)
        {
          if (v65 == 1)
          {
            v66 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v65 == 2)
          {
            v66 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v66 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v66 = MEMORY[0x277D82BE0](@"N");
        }

        v13 = v66;
        v12 = v66;
        v14 = v13;
        v45 = MEMORY[0x277D82BE0](v14);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v71, "[SUUIMobileScanOperation cacheDiscoveredScanResults:]", v18, v45, v61);
        _os_log_impl(&dword_26B0B9000, v15, v16, "%s [%{public}@|%{public}@]: Caching an up-to-date SUScanResults with TTL: %{public}@", v71, 0x2Au);
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v17);
        objc_storeStrong(&v45, 0);
        objc_storeStrong(&v46, 0);
      }

      objc_storeStrong(&v48, 0);
    }

    v62 = 0;
LABEL_44:
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v61, 0);
    goto LABEL_45;
  }

  v62 = 1;
LABEL_45:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)removeCachedScanResults
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = self;
  v12[1] = a2;
  if (_os_feature_enabled_impl())
  {
    v8 = [MEMORY[0x277D64B58] scanOperationLogger];
    v12[0] = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v12[0];
      type = v11;
      v6 = [(SUUIMobileScanOperation *)v13 identifier];
      v7 = MEMORY[0x277D82BE0](v6);
      v10 = v7;
      operationType = v13->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v15 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v15 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v15 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v15 = MEMORY[0x277D82BE0](@"N");
      }

      v2 = v15;
      v3 = v15;
      v9 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v16, "[SUUIMobileScanOperation removeCachedScanResults]", v7, v9);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Removing the currently stored cached SUScanResults", v16, 0x20u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(v12, 0);
    [(NSUserDefaults *)v13->_userDefaultsSuite removeObjectForKey:@"SUCachedScanResults"];
    [(NSUserDefaults *)v13->_userDefaultsSuite removeObjectForKey:@"SUCachedScanResultsTTL"];
    [(NSUserDefaults *)v13->_userDefaultsSuite removeObjectForKey:@"SUCachedAudience"];
    [(NSUserDefaults *)v13->_userDefaultsSuite removeObjectForKey:@"SUCachedOSVersion"];
  }

  *MEMORY[0x277D85DE8];
}

- (id)currentOSVersionIdentifier
{
  v13[2] = self;
  v13[1] = a2;
  v13[0] = _CFCopySupplementalVersionDictionary();
  if (v13[0])
  {
    v11 = [v13[0] objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v10 = [v13[0] objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
    v9 = [v13[0] objectForKeyedSubscript:*MEMORY[0x277CBEC80]];
    v8 = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      [v8 addObject:v11];
    }

    if (v10)
    {
      [v8 addObject:v10];
    }

    if (v9)
    {
      [v8 addObject:v9];
    }

    if (os_variant_has_internal_content())
    {
      [v8 addObject:@"Internal"];
    }

    v14 = [v8 componentsJoinedByString:@"|"];
    v12 = 1;
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v6 = CFCopySystemVersionString();
    has_internal_content = os_variant_has_internal_content();
    v3 = @"Internal";
    if ((has_internal_content & 1) == 0)
    {
      v3 = @"Release";
    }

    v14 = [v7 stringWithFormat:@"%@|%@", v6, v3];
    v12 = 1;
  }

  objc_storeStrong(v13, 0);
  v4 = v14;

  return v4;
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
  if (self->_activity)
  {
    if (self->_activity->var2)
    {
      os_activity_scope_leave(&self->_activity->var0);
    }

    free(self->_activity);
    self->_activity = 0;
  }

  fullScanCompletionHandler = self->_fullScanCompletionHandler;
  self->_fullScanCompletionHandler = 0;
  MEMORY[0x277D82BD8](fullScanCompletionHandler);
  refreshScanCompletionHandler = self->_refreshScanCompletionHandler;
  self->_refreshScanCompletionHandler = 0;
  MEMORY[0x277D82BD8](refreshScanCompletionHandler);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
  MEMORY[0x277D82BD8](cancelHandler);
  self->_operationType = 0;
}

- (id)baseDomain
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithFormat:@"%@.stateful-ui.scan.%@", *MEMORY[0x277D64C30], self->_identifier];

  return v3;
}

@end