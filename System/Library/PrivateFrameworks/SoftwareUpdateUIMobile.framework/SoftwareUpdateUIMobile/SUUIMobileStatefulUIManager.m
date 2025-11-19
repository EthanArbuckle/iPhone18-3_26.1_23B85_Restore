@interface SUUIMobileStatefulUIManager
- (BOOL)assignScanResults:(id)a3;
- (BOOL)isTargetedUpdateScheduledForAutoInstall;
- (NSString)description;
- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)a3;
- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)a3 identifier:(id)a4;
- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)a3 identifier:(id)a4 andSUManagerClient:(id)a5;
- (id)contextForDownloadAndInstallUpdateOperation:(id)a3;
- (id)contextForDownloadAndScheduleUpdateOperation:(id)a3;
- (id)contextForDownloadUpdateOperation:(id)a3;
- (id)contextForFullScanOperation:(id)a3 withThirdPartyScanResults:(id)a4 scanError:(id)a5 forceReloadScanResults:(BOOL)a6;
- (id)contextForInstallUpdateOperation:(id)a3;
- (id)contextForRefreshScanOperation:(id)a3 withPreviouslyDiscoveredDownload:(id)a4 encounteredError:(id)a5;
- (id)contextForScheduleUpdateOperation:(id)a3;
- (id)contextForUserUnscheduleUpdateOperation:(id)a3;
- (void)assignDownloadAndScheduleUpdateResults:(id)a3;
- (void)assignFullScanResults:(id)a3;
- (void)assignScheduleUpdateResults:(id)a3;
- (void)assignUnscheduleUpdateResults:(id)a3;
- (void)autoInstallOperationDidConsent:(id)a3;
- (void)autoInstallOperationDidExpire:(id)a3 withError:(id)a4;
- (void)autoInstallOperationIsReadyToInstall:(id)a3 withResponse:(id)a4;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)a3 passcodePolicyType:(unint64_t)a4;
- (void)autoInstallOperationWasCancelled:(id)a3;
- (void)batteryLevelChanged:(id)a3;
- (void)batteryStateChanged:(id)a3;
- (void)clearPastDownload:(id)a3;
- (void)clearPastScanResults;
- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5;
- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5;
- (void)client:(id)a3 downloadDidStart:(id)a4;
- (void)client:(id)a3 downloadProgressDidChange:(id)a4;
- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4;
- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 installDidStart:(id)a4;
- (void)client:(id)a3 installTonightScheduled:(BOOL)a4 operationID:(id)a5;
- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6;
- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4;
- (void)dealloc;
- (void)didBecomeActive:(id)a3;
- (void)handleFullScanResults:(id)a3;
- (void)handleScanFinishedRollbackApplied:(id)a3;
- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4;
- (void)setupBatteryMonitoring;
- (void)setupNetworkMonitoring;
- (void)setupObservers;
- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)a3 delegateCallbackQueue:(id)a4 completionHandler:(id)a5;
@end

@implementation SUUIMobileStatefulUIManager

- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)a3
{
  v12 = self;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v6 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(v11);
  v7 = [v4 stringWithFormat:@"%@ is unavailable", v8];
  v9 = [v6 exceptionWithName:v5 reason:? userInfo:?];
  v3 = v9;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_exception_throw(v9);
}

- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)a3 identifier:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(SUUIMobileStatefulUIManager *)v4 initWithEnvironment:location[0] identifier:v8 andSUManagerClient:0];
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)a3 identifier:(id)a4 andSUManagerClient:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v5 = v19;
  v19 = 0;
  v15.receiver = v5;
  v15.super_class = SUUIMobileStatefulUIManager;
  v12 = [(SUUIStatefulUIManager *)&v15 initWithEnvironment:location[0]];
  v19 = v12;
  objc_storeStrong(&v19, v12);
  if (v12)
  {
    objc_storeStrong(&v19->_clientIdentifier, v17);
    v13 = 0;
    if (v16)
    {
      objc_storeStrong(&v19->_client, v16);
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277D648B8]) initWithDelegate:0 queue:? clientType:?];
      v13 = 1;
      objc_storeStrong(&v19->_client, v14);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    [(SUManagerClient *)v19->_client setDelegate:v19];
    v6 = objc_alloc_init(SUUIMobileDescriptorAgreementStatusRegistry);
    agreementStatusRegistry = v19->_agreementStatusRegistry;
    v19->_agreementStatusRegistry = v6;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
    [(SUUIMobileStatefulUIManager *)v19 setupNetworkMonitoring];
    [(SUUIMobileStatefulUIManager *)v19 setupBatteryMonitoring];
    [(SUUIMobileStatefulUIManager *)v19 setupObservers];
  }

  v9 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v9;
}

- (void)dealloc
{
  v7 = self;
  v6 = a2;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x26D66E8F0](v2, v7->_originalCellFlag, v7->_originalWifiFlag);
  v3 = [MEMORY[0x277D648C0] sharedInstance];
  [v3 removeObserver:v7];
  MEMORY[0x277D82BD8](v3);
  PSSetBatteryMonitoringEnabled();
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:v7];
  MEMORY[0x277D82BD8](v4);
  v5.receiver = v7;
  v5.super_class = SUUIMobileStatefulUIManager;
  [(SUUIMobileStatefulUIManager *)&v5 dealloc];
}

- (BOOL)isTargetedUpdateScheduledForAutoInstall
{
  v6 = self;
  location[1] = a2;
  location[0] = [(SUUIMobileStatefulUIManager *)self currentAutoInstallOperation];
  v4.receiver = v6;
  v4.super_class = SUUIMobileStatefulUIManager;
  LOBYTE(v3) = 0;
  if ([(SUUIStatefulUIManager *)&v4 isTargetedUpdateScheduledForAutoInstall])
  {
    LOBYTE(v3) = 0;
    if (location[0])
    {
      LOBYTE(v3) = 0;
      if (([location[0] isCanceled] & 1) == 0)
      {
        v3 = [location[0] isExpired] ^ 1;
      }
    }
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)a3 delegateCallbackQueue:(id)a4 completionHandler:(id)a5
{
  obj = a4;
  v83 = a5;
  v81 = "[SUUIMobileStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation:delegateCallbackQueue:completionHandler:]";
  v119 = *MEMORY[0x277D85DE8];
  v113 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v111 = 0;
  objc_storeStrong(&v111, obj);
  v110 = 0;
  objc_storeStrong(&v110, v83);
  v84 = [(SUUIMobileStatefulUIManager *)v113 currentAutoInstallOperation];
  MEMORY[0x277D82BD8](v84);
  if (v84)
  {
    v85.receiver = v113;
    v85.super_class = SUUIMobileStatefulUIManager;
    [(SUUIStatefulUIManager *)&v85 unscheduleTargetedUpdateAutomaticInstallation:location[0] delegateCallbackQueue:v111 completionHandler:v110];
    v86 = 0;
  }

  else
  {
    v80 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [v80 oslog];
    MEMORY[0x277D82BD8](v80);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v72 = type;
      v73 = v113;
      v5 = objc_opt_class();
      v74 = NSStringFromClass(v5);
      v75 = MEMORY[0x277D82BE0](v74);
      v107 = v75;
      v6 = *(&v113->super.super.isa + *MEMORY[0x277D64C00]);
      v76 = SUUIStatefulUIStateToString();
      v77 = MEMORY[0x277D82BE0](v76);
      v106 = v77;
      v78 = [(SUUIStatefulUIManager *)v113 currentState];
      v79 = [(SUUIStatefulUIManager *)v113 delegate];
      v104 = 0;
      v102 = 0;
      if (v79)
      {
        v105 = [(SUUIStatefulUIManager *)v113 delegate];
        v69 = 1;
        v104 = 1;
        v7 = objc_opt_class();
        v103 = NSStringFromClass(v7);
        v102 = 1;
        v70 = v103;
      }

      else
      {
        v70 = @"(null)";
      }

      v63 = v70;
      v64 = [(SUUIStatefulUIManager *)v113 delegate];
      v65 = [(SUUIStatefulUIManager *)v113 scanError];
      v66 = [(SUUIStatefulUIManager *)v113 preferredStatefulDescriptor];
      v67 = [(SUUIStatefulUIManager *)v113 alternateStatefulDescriptor];
      v68 = [(SUUIStatefulUIManager *)v113 currentDownload];
      v100 = 0;
      v98 = 0;
      v96 = 0;
      if (v68)
      {
        v101 = [(SUUIStatefulUIManager *)v113 currentDownload];
        v61 = 1;
        v100 = 1;
        v99 = [(SUUIDownload *)v101 descriptor];
        v98 = 1;
        v97 = [v99 updateName];
        v96 = 1;
        v62 = v97;
      }

      else
      {
        v62 = @"(null)";
      }

      v38 = v62;
      v39 = [(SUUIStatefulUIManager *)v113 currentDownload];
      [(SUUIStatefulUIManager *)v113 currentUpdateOperationType];
      v40 = SUUIUpdateContinuousOperationTypeToString();
      v41 = MEMORY[0x277D82BE0](v40);
      v95 = v41;
      v117 = [(SUUIMobileStatefulUIManager *)v113 isTargetedUpdateScheduledForAutoInstall];
      v51 = @"NO";
      v52 = @"YES";
      v59 = 1;
      if (v117)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v42 = v8;
      v9 = v8;
      v43 = v42;
      v44 = MEMORY[0x277D82BE0](v43);
      v94 = v44;
      if ([(SUUIStatefulUIManager *)v113 hidingPreferredDescriptor])
      {
        v10 = v52;
      }

      else
      {
        v10 = v51;
      }

      v45 = v10;
      v11 = v10;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v93 = v47;
      v48 = [(SUUIStatefulUIManager *)v113 hiddenPreferredStatefulDescriptor];
      v49 = [(SUUIStatefulDescriptor *)v48 updateName];
      v50 = MEMORY[0x277D82BE0](v49);
      v92 = v50;
      if ([(SUUIStatefulUIManager *)v113 hidingAlternateDescriptor])
      {
        v12 = v52;
      }

      else
      {
        v12 = v51;
      }

      v53 = v12;
      v13 = v12;
      v54 = v53;
      v55 = MEMORY[0x277D82BE0](v54);
      v91 = v55;
      v56 = [(SUUIStatefulUIManager *)v113 hiddenAlternateStatefulDescriptor];
      v57 = [(SUUIStatefulDescriptor *)v56 updateName];
      v58 = MEMORY[0x277D82BE0](v57);
      v90 = v58;
      v60 = [(SUUIStatefulUIManager *)v113 enrolledBetaProgram];
      v88 = 0;
      if (v60)
      {
        v89 = [(SUUIStatefulUIManager *)v113 enrolledBetaProgram];
        v88 = 1;
        v37 = [(SDBetaProgram *)v89 programID];
      }

      else
      {
        v37 = 0;
      }

      v28 = v37;
      v29 = [*(&v113->super.super.isa + *MEMORY[0x277D64BE8]) count];
      if ([(SUUIStatefulUIManager *)v113 canEnrollInBetaUpdates])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v27 = v14;
      v15 = v14;
      v36 = v27;
      v30 = MEMORY[0x277D82BE0](v36);
      v87 = v30;
      v31 = *(&v113->super.super.isa + *MEMORY[0x277D64BF0]);
      v32 = *(&v113->super.super.isa + *MEMORY[0x277D64BF8]);
      v33 = *(&v113->super.super.isa + *MEMORY[0x277D64C08]);
      v16 = [*(&v113->super.super.isa + *MEMORY[0x277D64BE0]) count];
      v34 = &v18;
      buf = v118;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v118, v81, v73, v75, v77, v78, v63, v64, v65, v66, v67, v38, v39, v41, v44, v47, v50, v55, v58, v28, v29, v30, v31, v32, v33, v16);
      _os_log_impl(&dword_26B0B9000, log, v72[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unschedule an update when the auto-install operation is nil.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v36);
      if (v88)
      {
        MEMORY[0x277D82BD8](v89);
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
      if (v96)
      {
        MEMORY[0x277D82BD8](v97);
      }

      if (v98)
      {
        MEMORY[0x277D82BD8](v99);
      }

      if (v100)
      {
        MEMORY[0x277D82BD8](v101);
      }

      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      if (v102)
      {
        MEMORY[0x277D82BD8](v103);
      }

      if (v104)
      {
        MEMORY[0x277D82BD8](v105);
      }

      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v74);
      v26 = 0;
      objc_storeStrong(&v87, 0);
      objc_storeStrong(&v90, v26);
      objc_storeStrong(&v91, v26);
      objc_storeStrong(&v92, v26);
      objc_storeStrong(&v93, v26);
      objc_storeStrong(&v94, v26);
      objc_storeStrong(&v95, v26);
      objc_storeStrong(&v106, v26);
      objc_storeStrong(&v107, v26);
    }

    objc_storeStrong(&oslog, 0);
    v22 = v110;
    v21 = v110 + 16;
    v20 = [SUUIMobileStatefulError alloc];
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:10 userInfo:0];
    v23 = [(SUUIStatefulError *)v20 initFromError:?];
    v17 = v22[2];
    v25 = 1;
    v17(v22, 0);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v86 = v25;
  }

  v19 = 0;
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v111, v19);
  objc_storeStrong(location, v19);
  *MEMORY[0x277D85DE8];
}

- (void)handleFullScanResults:(id)a3
{
  v71 = "[SUUIMobileStatefulUIManager handleFullScanResults:]";
  v106 = *MEMORY[0x277D85DE8];
  v100 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v72 = [MEMORY[0x277D64418] sharedDevice];
  v73 = [v72 hasSemiSplatActive];
  MEMORY[0x277D82BD8](v72);
  if (v73)
  {
    v70 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [v70 oslog];
    MEMORY[0x277D82BD8](v70);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v62 = type;
      v63 = v100;
      v3 = objc_opt_class();
      v64 = NSStringFromClass(v3);
      v65 = MEMORY[0x277D82BE0](v64);
      v96 = v65;
      v4 = *(&v100->super.super.isa + *MEMORY[0x277D64C00]);
      v66 = SUUIStatefulUIStateToString();
      v67 = MEMORY[0x277D82BE0](v66);
      v95 = v67;
      v68 = [(SUUIStatefulUIManager *)v100 currentState];
      v69 = [(SUUIStatefulUIManager *)v100 delegate];
      v93 = 0;
      v91 = 0;
      if (v69)
      {
        v94 = [(SUUIStatefulUIManager *)v100 delegate];
        v59 = 1;
        v93 = 1;
        v5 = objc_opt_class();
        v92 = NSStringFromClass(v5);
        v91 = 1;
        v60 = v92;
      }

      else
      {
        v60 = @"(null)";
      }

      v53 = v60;
      v54 = [(SUUIStatefulUIManager *)v100 delegate];
      v55 = [(SUUIStatefulUIManager *)v100 scanError];
      v56 = [(SUUIStatefulUIManager *)v100 preferredStatefulDescriptor];
      v57 = [(SUUIStatefulUIManager *)v100 alternateStatefulDescriptor];
      v58 = [(SUUIStatefulUIManager *)v100 currentDownload];
      v89 = 0;
      v87 = 0;
      v85 = 0;
      if (v58)
      {
        v90 = [(SUUIStatefulUIManager *)v100 currentDownload];
        v51 = 1;
        v89 = 1;
        v88 = [(SUUIDownload *)v90 descriptor];
        v87 = 1;
        v86 = [v88 updateName];
        v85 = 1;
        v52 = v86;
      }

      else
      {
        v52 = @"(null)";
      }

      v28 = v52;
      v29 = [(SUUIStatefulUIManager *)v100 currentDownload];
      [(SUUIStatefulUIManager *)v100 currentUpdateOperationType];
      v30 = SUUIUpdateContinuousOperationTypeToString();
      v31 = MEMORY[0x277D82BE0](v30);
      v84 = v31;
      v104 = [(SUUIMobileStatefulUIManager *)v100 isTargetedUpdateScheduledForAutoInstall];
      v41 = @"NO";
      v42 = @"YES";
      v49 = 1;
      if (v104)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v32 = v6;
      v7 = v6;
      v33 = v32;
      v34 = MEMORY[0x277D82BE0](v33);
      v83 = v34;
      if ([(SUUIStatefulUIManager *)v100 hidingPreferredDescriptor])
      {
        v8 = v42;
      }

      else
      {
        v8 = v41;
      }

      v35 = v8;
      v9 = v8;
      v36 = v35;
      v37 = MEMORY[0x277D82BE0](v36);
      v82 = v37;
      v38 = [(SUUIStatefulUIManager *)v100 hiddenPreferredStatefulDescriptor];
      v39 = [(SUUIStatefulDescriptor *)v38 updateName];
      v40 = MEMORY[0x277D82BE0](v39);
      v81 = v40;
      if ([(SUUIStatefulUIManager *)v100 hidingAlternateDescriptor])
      {
        v10 = v42;
      }

      else
      {
        v10 = v41;
      }

      v43 = v10;
      v11 = v10;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v80 = v45;
      v46 = [(SUUIStatefulUIManager *)v100 hiddenAlternateStatefulDescriptor];
      v47 = [(SUUIStatefulDescriptor *)v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v79 = v48;
      v50 = [(SUUIStatefulUIManager *)v100 enrolledBetaProgram];
      v77 = 0;
      if (v50)
      {
        v78 = [(SUUIStatefulUIManager *)v100 enrolledBetaProgram];
        v77 = 1;
        v27 = [(SDBetaProgram *)v78 programID];
      }

      else
      {
        v27 = 0;
      }

      v18 = v27;
      v19 = [*(&v100->super.super.isa + *MEMORY[0x277D64BE8]) count];
      if ([(SUUIStatefulUIManager *)v100 canEnrollInBetaUpdates])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v17 = v12;
      v13 = v12;
      v26 = v17;
      v20 = MEMORY[0x277D82BE0](v26);
      v76 = v20;
      v21 = *(&v100->super.super.isa + *MEMORY[0x277D64BF0]);
      v22 = *(&v100->super.super.isa + *MEMORY[0x277D64BF8]);
      v23 = *(&v100->super.super.isa + *MEMORY[0x277D64C08]);
      v14 = [*(&v100->super.super.isa + *MEMORY[0x277D64BE0]) count];
      v24 = &v15;
      buf = v105;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v105, v71, v63, v65, v67, v68, v53, v54, v55, v56, v57, v28, v29, v31, v34, v37, v40, v45, v48, v18, v19, v20, v21, v22, v23, v14);
      _os_log_impl(&dword_26B0B9000, log, v62[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nRollback already applied, show the user an alert to reboot, and show no available updates.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v26);
      if (v77)
      {
        MEMORY[0x277D82BD8](v78);
      }

      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v29);
      if (v85)
      {
        MEMORY[0x277D82BD8](v86);
      }

      if (v87)
      {
        MEMORY[0x277D82BD8](v88);
      }

      if (v89)
      {
        MEMORY[0x277D82BD8](v90);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      if (v91)
      {
        MEMORY[0x277D82BD8](v92);
      }

      if (v93)
      {
        MEMORY[0x277D82BD8](v94);
      }

      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v64);
      obj = 0;
      objc_storeStrong(&v76, 0);
      objc_storeStrong(&v79, obj);
      objc_storeStrong(&v80, obj);
      objc_storeStrong(&v81, obj);
      objc_storeStrong(&v82, obj);
      objc_storeStrong(&v83, obj);
      objc_storeStrong(&v84, obj);
      objc_storeStrong(&v95, obj);
      objc_storeStrong(&v96, obj);
    }

    objc_storeStrong(&oslog, 0);
    [(SUUIMobileStatefulUIManager *)v100 clearPastScanResults];
    [(SUUIMobileStatefulUIManager *)v100 handleScanFinishedRollbackApplied:location[0]];
    [*(&v100->super.super.isa + *MEMORY[0x277D64C10]) postEvent:*MEMORY[0x277D64D50] withInfo:location[0]];
    v75 = 1;
  }

  else
  {
    v74.receiver = v100;
    v74.super_class = SUUIMobileStatefulUIManager;
    [(SUUIStatefulUIManager *)&v74 handleFullScanResults:location[0]];
    v75 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)clearPastScanResults
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v4 clearPastScanResults];
  v3 = [(SUUIMobileStatefulUIManager *)v6 currentAutoInstallOperation];
  MEMORY[0x277D82BD8](v3);
  if (v3)
  {
    v2 = [(SUUIMobileStatefulUIManager *)v6 currentAutoInstallOperation];
    [(SUAutoInstallOperation *)v2 setDelegate:?];
    MEMORY[0x277D82BD8](v2);
    [(SUUIMobileStatefulUIManager *)v6 setCurrentAutoInstallOperation:0];
  }
}

- (void)clearPastDownload:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v5 clearPastDownload:location[0]];
  v4 = [(SUUIMobileStatefulUIManager *)v7 currentAutoInstallOperation];
  MEMORY[0x277D82BD8](v4);
  if (v4)
  {
    v3 = [(SUUIMobileStatefulUIManager *)v7 currentAutoInstallOperation];
    [(SUAutoInstallOperation *)v3 setDelegate:?];
    MEMORY[0x277D82BD8](v3);
    [(SUUIMobileStatefulUIManager *)v7 setCurrentAutoInstallOperation:0];
  }

  objc_storeStrong(location, 0);
}

- (NSString)description
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = SUUIMobileStatefulUIManager;
  return [(SUUIMobileStatefulUIManager *)&v3 description];
}

- (void)setupNetworkMonitoring
{
  v6 = self;
  v5[1] = a2;
  v5[0] = [MEMORY[0x277D648C0] sharedInstance];
  v2 = [v5[0] currentNetworkType];
  v6->_networkType = v2;
  [v5[0] addObserver:v6];
  v3 = SBSSpringBoardServerPort();
  MEMORY[0x26D66E8D0](v3, &v6->_originalCellFlag, &v6->_originalWifiFlag);
  v4 = SBSSpringBoardServerPort();
  MEMORY[0x26D66E8F0](v4, 1);
  objc_storeStrong(v5, 0);
}

- (void)setupBatteryMonitoring
{
  PSSetBatteryMonitoringEnabled();
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 batteryState];
  MEMORY[0x277D82BD8](v6);
  v8 = 1;
  if (v7 != 2)
  {
    v8 = v7 == 3;
  }

  self->_connectedToPowerSource = v8;
  v3 = [MEMORY[0x277D75418] currentDevice];
  [v3 batteryLevel];
  self->_batteryLevel = v2;
  MEMORY[0x277D82BD8](v3);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_batteryStateChanged_ name:*MEMORY[0x277D76870] object:?];
  MEMORY[0x277D82BD8](v4);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_batteryLevelChanged_ name:*MEMORY[0x277D76868] object:0];
  MEMORY[0x277D82BD8](v5);
}

- (void)setupObservers
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:self selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  MEMORY[0x277D82BD8](v2);
}

- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  objc_initWeak(&location, self);
  queue = *(&v17->super.super.isa + *MEMORY[0x277D64C18]);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75__SUUIMobileStatefulUIManager_networkChangedFromNetworkType_toNetworkType___block_invoke;
  v9 = &unk_279CCF740;
  objc_copyWeak(v10, &location);
  v10[1] = v16;
  v11 = v14;
  v12 = v15;
  dispatch_async(queue, &v5);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __75__SUUIMobileStatefulUIManager_networkChangedFromNetworkType_toNetworkType___block_invoke(id *a1)
{
  v117 = &v135;
  v115 = a1;
  v116 = "[SUUIMobileStatefulUIManager networkChangedFromNetworkType:toNetworkType:]_block_invoke";
  v157 = *MEMORY[0x277D85DE8];
  v150[2] = a1;
  v150[1] = a1;
  v150[0] = objc_loadWeakRetained(a1 + 4);
  v114 = 0;
  if (!v150[0])
  {
    v113 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v1 = [v113 oslog];
    v2 = v113;
    *(v117 + 18) = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(*(v117 + 18), OS_LOG_TYPE_ERROR))
    {
      log = *(v117 + 18);
      *v109 = type;
      v111 = NSStringFromSelector(v115[5]);
      v3 = MEMORY[0x277D82BE0](v111);
      v4 = v116;
      location = &v147;
      *(v117 + 16) = v3;
      buf = v156;
      __os_log_helper_16_2_2_8_32_8_66(v156, v4, v3);
      _os_log_error_impl(&dword_26B0B9000, log, v109[0], "%s: Self is nil in %{public}@. Stopping.", v156, 0x16u);
      MEMORY[0x277D82BD8](v111);
      objc_storeStrong(location, 0);
    }

    objc_storeStrong(&v149, 0);
    v5 = v117;
    *(v117 + 31) = 1;
    v114 = *(v5 + 31) != 0;
  }

  if (v114)
  {
    *(v117 + 30) = 1;
  }

  else
  {
    v146 = 0;
    v145 = 0;
    v144 = 0;
    v6 = [*(v117 + 19) networkType];
    v7 = v117;
    *(v117 + 28) = v6;
    v8 = [v7[19] currentState];
    v9 = v117;
    v10 = v115;
    *(v117 + 13) = v8;
    if (*(v9 + 28) != *(v10 + 12))
    {
      v107 = [MEMORY[0x277D64B58] statefulUILogger];
      v11 = [v107 oslog];
      v12 = v107;
      *(v117 + 12) = v11;
      MEMORY[0x277D82BD8](v12);
      v142 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(*(v117 + 12), OS_LOG_TYPE_DEFAULT))
      {
        v98 = *(v117 + 12);
        *v99 = v142;
        v100 = *(v117 + 19);
        v13 = *(v117 + 19);
        v14 = objc_opt_class();
        v101 = NSStringFromClass(v14);
        v15 = MEMORY[0x277D82BE0](v101);
        v16 = v117;
        v102 = v15;
        *(v117 + 10) = v15;
        v17 = *(*(v16 + 19) + *MEMORY[0x277D64C00]);
        v103 = SUUIStatefulUIStateToString();
        v18 = MEMORY[0x277D82BE0](v103);
        v19 = v117;
        v104 = v18;
        *(v117 + 9) = v18;
        v105 = [v19[19] currentState];
        v106 = [*(v117 + 19) delegate];
        v139 = 0;
        v138 = 0;
        if (v106)
        {
          *(v117 + 8) = [*(v117 + 19) delegate];
          v96 = 1;
          v139 = 1;
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *(v117 + 6) = v21;
          v138 = 1;
          v97 = v21;
        }

        else
        {
          v97 = @"(null)";
        }

        v90 = v97;
        v91 = [*(v117 + 19) delegate];
        v92 = [*(v117 + 19) scanError];
        v93 = [*(v117 + 19) preferredStatefulDescriptor];
        v94 = [*(v117 + 19) alternateStatefulDescriptor];
        v95 = [*(v117 + 19) currentDownload];
        v137 = 0;
        v136 = 0;
        v134 = 0;
        if (v95)
        {
          v22 = [*(v117 + 19) currentDownload];
          *(v117 + 4) = v22;
          v88 = 1;
          v137 = 1;
          v23 = [v22 descriptor];
          *(v117 + 2) = v23;
          v136 = 1;
          v24 = [v23 updateName];
          v25 = v88;
          *v117 = v24;
          v134 = v25 & 1;
          v89 = v24;
        }

        else
        {
          v89 = @"(null)";
        }

        v65 = v89;
        v66 = [*(v117 + 19) currentDownload];
        [*(v117 + 19) currentUpdateOperationType];
        v67 = SUUIUpdateContinuousOperationTypeToString();
        v68 = MEMORY[0x277D82BE0](v67);
        v133 = v68;
        v154 = [*(v117 + 19) isTargetedUpdateScheduledForAutoInstall];
        v78 = @"NO";
        v79 = @"YES";
        v86 = 1;
        if (v154)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v69 = v26;
        v27 = v26;
        v70 = v69;
        v71 = MEMORY[0x277D82BE0](v70);
        v132 = v71;
        v153 = [*(v117 + 19) hidingPreferredDescriptor];
        if (v153)
        {
          v28 = v79;
        }

        else
        {
          v28 = v78;
        }

        v72 = v28;
        v29 = v28;
        v73 = v72;
        v74 = MEMORY[0x277D82BE0](v73);
        v131 = v74;
        v75 = [*(v117 + 19) hiddenPreferredStatefulDescriptor];
        v76 = [v75 updateName];
        v77 = MEMORY[0x277D82BE0](v76);
        v130 = v77;
        v152 = [*(v117 + 19) hidingAlternateDescriptor];
        if (v152)
        {
          v30 = v79;
        }

        else
        {
          v30 = v78;
        }

        v80 = v30;
        v31 = v30;
        v81 = v80;
        v82 = MEMORY[0x277D82BE0](v81);
        v129 = v82;
        v83 = [*(v117 + 19) hiddenAlternateStatefulDescriptor];
        v84 = [v83 updateName];
        v85 = MEMORY[0x277D82BE0](v84);
        v128 = v85;
        v87 = [*(v117 + 19) enrolledBetaProgram];
        v126 = 0;
        if (v87)
        {
          v127 = [*(v117 + 19) enrolledBetaProgram];
          v126 = 1;
          v64 = [v127 programID];
        }

        else
        {
          v64 = 0;
        }

        v32 = [*(*(v117 + 19) + *MEMORY[0x277D64BE8]) count];
        v151 = [*(v117 + 19) canEnrollInBetaUpdates];
        if (v151)
        {
          v33 = @"YES";
        }

        else
        {
          v33 = @"NO";
        }

        v49 = v33;
        v34 = v33;
        v63 = v49;
        v125 = MEMORY[0x277D82BE0](v63);
        v50 = *(*(v117 + 19) + *MEMORY[0x277D64BF0]);
        v51 = *(*(v117 + 19) + *MEMORY[0x277D64BF8]);
        v52 = *(*(v117 + 19) + *MEMORY[0x277D64C08]);
        v53 = [*(*(v117 + 19) + *MEMORY[0x277D64BE0]) count];
        v35 = *(v115 + 13);
        v62 = SUStringFromNetworkType();
        v54 = MEMORY[0x277D82BE0](v62);
        v124 = v54;
        v55 = *(v115 + 13);
        v36 = *(v115 + 12);
        v61 = SUStringFromNetworkType();
        v56 = MEMORY[0x277D82BE0](v61);
        v123 = v56;
        v57 = *(v115 + 12);
        v37 = *(v117 + 28);
        v60 = SUStringFromNetworkType();
        v122 = MEMORY[0x277D82BE0](v60);
        v38 = *(v117 + 28);
        v58 = &v40;
        v59 = v155;
        __os_log_helper_16_2_31_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_64_4_0_8_66_4_0_8_66_4_0(v155, v116, v100, v102, v104, v105, v90, v91, v92, v93, v94, v65, v66, v68, v71, v74, v77, v82, v85, v64, v32, v125, v50, v51, v52, v53, v54, v55, v56, v57, v122, v38);
        _os_log_impl(&dword_26B0B9000, v98, v99[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nChanged network type: %@ (%d) -> %{public}@ (%d) (current network type: %{public}@ (%d))", v59, 0x12Cu);
        MEMORY[0x277D82BD8](v60);
        MEMORY[0x277D82BD8](v61);
        MEMORY[0x277D82BD8](v62);
        MEMORY[0x277D82BD8](v63);
        if (v126)
        {
          MEMORY[0x277D82BD8](v127);
        }

        MEMORY[0x277D82BD8](v87);
        MEMORY[0x277D82BD8](v84);
        MEMORY[0x277D82BD8](v83);
        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](v76);
        MEMORY[0x277D82BD8](v75);
        MEMORY[0x277D82BD8](v73);
        MEMORY[0x277D82BD8](v70);
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](v66);
        if (v134)
        {
          MEMORY[0x277D82BD8](*v117);
        }

        if (v136)
        {
          MEMORY[0x277D82BD8](*(v117 + 2));
        }

        if (v137)
        {
          MEMORY[0x277D82BD8](*(v117 + 4));
        }

        MEMORY[0x277D82BD8](v95);
        MEMORY[0x277D82BD8](v94);
        MEMORY[0x277D82BD8](v93);
        MEMORY[0x277D82BD8](v92);
        MEMORY[0x277D82BD8](v91);
        if (v138)
        {
          MEMORY[0x277D82BD8](*(v117 + 6));
        }

        if (v139)
        {
          MEMORY[0x277D82BD8](*(v117 + 8));
        }

        MEMORY[0x277D82BD8](v106);
        MEMORY[0x277D82BD8](v103);
        MEMORY[0x277D82BD8](v101);
        obj = 0;
        objc_storeStrong(&v122, 0);
        objc_storeStrong(&v123, obj);
        objc_storeStrong(&v124, obj);
        objc_storeStrong(&v125, obj);
        objc_storeStrong(&v128, obj);
        objc_storeStrong(&v129, obj);
        objc_storeStrong(&v130, obj);
        objc_storeStrong(&v131, obj);
        objc_storeStrong(&v132, obj);
        objc_storeStrong(&v133, obj);
        objc_storeStrong(&v140, obj);
        objc_storeStrong(&v141, obj);
      }

      objc_storeStrong(&v143, 0);
      [*(v117 + 19) setNetworkType:*(v115 + 12)];
      if (*(v115 + 12))
      {
        v47 = [*(v117 + 19) preferredStatefulDescriptor];
        if (v47 || (v39 = *(v117 + 13) - 3, v46 = 1, !v39))
        {
          v46 = *(v117 + 13) == 2;
        }

        v45 = v46;
        MEMORY[0x277D82BD8](v47);
        if (v45)
        {
          v146 = 1;
        }

        else
        {
          [*(v117 + 19) setScanError:0];
          v144 = 1;
        }
      }

      else if (*(v117 + 13) != 2)
      {
        v44 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:7 userInfo:0];
        v120 = 0;
        v118 = 0;
        if (v44)
        {
          v41 = [SUUIMobileStatefulError alloc];
          v121 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:7 userInfo:0];
          v42 = 1;
          v120 = 1;
          v119 = [(SUUIStatefulError *)v41 initFromError:?];
          v118 = v42 & 1;
          v43 = v119;
        }

        else
        {
          v43 = 0;
        }

        [*(v117 + 19) setScanError:v43];
        if (v118)
        {
          MEMORY[0x277D82BD8](v119);
        }

        if (v120)
        {
          MEMORY[0x277D82BD8](v121);
        }

        MEMORY[0x277D82BD8](v44);
        v145 = 1;
      }
    }

    if (v146)
    {
      [*(v117 + 19) checkForAvailableUpdatesWithRetriesCount:kSUUIMobileStatefulUINetworkErrorRetriesCount];
    }

    else if (v144)
    {
      [*(v117 + 19) refreshState:1];
    }

    else if (v145)
    {
      [*(v117 + 19) refreshState];
    }

    *(v117 + 30) = 0;
  }

  objc_storeStrong(v150, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4
{
  obj = a4;
  v142 = "[SUUIMobileStatefulUIManager client:scanRequestDidStartForOptions:]";
  v207 = *MEMORY[0x277D85DE8];
  v196 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v194 = 0;
  objc_storeStrong(&v194, obj);
  v192 = 0;
  v144 = 1;
  if (v194)
  {
    v193 = [v194 identifier];
    v192 = 1;
    v144 = v193 == 0;
  }

  v141 = v144;
  if (v192)
  {
    MEMORY[0x277D82BD8](v193);
  }

  if (v141)
  {
    v140 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [v140 oslog];
    MEMORY[0x277D82BD8](v140);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v132 = type;
      v133 = v196;
      v4 = objc_opt_class();
      v134 = NSStringFromClass(v4);
      v135 = MEMORY[0x277D82BE0](v134);
      v189 = v135;
      v5 = *(&v196->super.super.isa + *MEMORY[0x277D64C00]);
      v136 = SUUIStatefulUIStateToString();
      v137 = MEMORY[0x277D82BE0](v136);
      v188 = v137;
      v138 = [(SUUIStatefulUIManager *)v196 currentState];
      v139 = [(SUUIStatefulUIManager *)v196 delegate];
      v186 = 0;
      v184 = 0;
      if (v139)
      {
        v187 = [(SUUIStatefulUIManager *)v196 delegate];
        v129 = 1;
        v186 = 1;
        v6 = objc_opt_class();
        v185 = NSStringFromClass(v6);
        v184 = 1;
        v130 = v185;
      }

      else
      {
        v130 = @"(null)";
      }

      v123 = v130;
      v124 = [(SUUIStatefulUIManager *)v196 delegate];
      v125 = [(SUUIStatefulUIManager *)v196 scanError];
      v126 = [(SUUIStatefulUIManager *)v196 preferredStatefulDescriptor];
      v127 = [(SUUIStatefulUIManager *)v196 alternateStatefulDescriptor];
      v128 = [(SUUIStatefulUIManager *)v196 currentDownload];
      v182 = 0;
      v180 = 0;
      v178 = 0;
      if (v128)
      {
        v183 = [(SUUIStatefulUIManager *)v196 currentDownload];
        v121 = 1;
        v182 = 1;
        v181 = [(SUUIDownload *)v183 descriptor];
        v180 = 1;
        v179 = [v181 updateName];
        v178 = 1;
        v122 = v179;
      }

      else
      {
        v122 = @"(null)";
      }

      v98 = v122;
      v99 = [(SUUIStatefulUIManager *)v196 currentDownload];
      [(SUUIStatefulUIManager *)v196 currentUpdateOperationType];
      v100 = SUUIUpdateContinuousOperationTypeToString();
      v101 = MEMORY[0x277D82BE0](v100);
      v177 = v101;
      v204 = [(SUUIMobileStatefulUIManager *)v196 isTargetedUpdateScheduledForAutoInstall];
      v111 = @"NO";
      v112 = @"YES";
      v119 = 1;
      if (v204)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v102 = v7;
      v8 = v7;
      v103 = v102;
      v104 = MEMORY[0x277D82BE0](v103);
      v176 = v104;
      if ([(SUUIStatefulUIManager *)v196 hidingPreferredDescriptor])
      {
        v9 = v112;
      }

      else
      {
        v9 = v111;
      }

      v105 = v9;
      v10 = v9;
      v106 = v105;
      v107 = MEMORY[0x277D82BE0](v106);
      v175 = v107;
      v108 = [(SUUIStatefulUIManager *)v196 hiddenPreferredStatefulDescriptor];
      v109 = [(SUUIStatefulDescriptor *)v108 updateName];
      v110 = MEMORY[0x277D82BE0](v109);
      v174 = v110;
      if ([(SUUIStatefulUIManager *)v196 hidingAlternateDescriptor])
      {
        v11 = v112;
      }

      else
      {
        v11 = v111;
      }

      v113 = v11;
      v12 = v11;
      v114 = v113;
      v115 = MEMORY[0x277D82BE0](v114);
      v173 = v115;
      v116 = [(SUUIStatefulUIManager *)v196 hiddenAlternateStatefulDescriptor];
      v117 = [(SUUIStatefulDescriptor *)v116 updateName];
      v118 = MEMORY[0x277D82BE0](v117);
      v172 = v118;
      v120 = [(SUUIStatefulUIManager *)v196 enrolledBetaProgram];
      v170 = 0;
      if (v120)
      {
        v171 = [(SUUIStatefulUIManager *)v196 enrolledBetaProgram];
        v170 = 1;
        v97 = [(SDBetaProgram *)v171 programID];
      }

      else
      {
        v97 = 0;
      }

      v88 = v97;
      v89 = [*(&v196->super.super.isa + *MEMORY[0x277D64BE8]) count];
      if ([(SUUIStatefulUIManager *)v196 canEnrollInBetaUpdates])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v87 = v13;
      v14 = v13;
      v96 = v87;
      v90 = MEMORY[0x277D82BE0](v96);
      v169 = v90;
      v91 = *(&v196->super.super.isa + *MEMORY[0x277D64BF0]);
      v92 = *(&v196->super.super.isa + *MEMORY[0x277D64BF8]);
      v93 = *(&v196->super.super.isa + *MEMORY[0x277D64C08]);
      v15 = [*(&v196->super.super.isa + *MEMORY[0x277D64BE0]) count];
      v94 = &v27;
      buf = v206;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v206, v142, v133, v135, v137, v138, v123, v124, v125, v126, v127, v98, v99, v101, v104, v107, v110, v115, v118, v88, v89, v90, v91, v92, v93, v15);
      _os_log_impl(&dword_26B0B9000, log, v132[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, but we've been given a nil options. Skipping.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v96);
      if (v170)
      {
        MEMORY[0x277D82BD8](v171);
      }

      MEMORY[0x277D82BD8](v120);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v109);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v99);
      if (v178)
      {
        MEMORY[0x277D82BD8](v179);
      }

      if (v180)
      {
        MEMORY[0x277D82BD8](v181);
      }

      if (v182)
      {
        MEMORY[0x277D82BD8](v183);
      }

      MEMORY[0x277D82BD8](v128);
      MEMORY[0x277D82BD8](v127);
      MEMORY[0x277D82BD8](v126);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v124);
      if (v184)
      {
        MEMORY[0x277D82BD8](v185);
      }

      if (v186)
      {
        MEMORY[0x277D82BD8](v187);
      }

      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v134);
      v86 = 0;
      objc_storeStrong(&v169, 0);
      objc_storeStrong(&v172, v86);
      objc_storeStrong(&v173, v86);
      objc_storeStrong(&v174, v86);
      objc_storeStrong(&v175, v86);
      objc_storeStrong(&v176, v86);
      objc_storeStrong(&v177, v86);
      objc_storeStrong(&v188, v86);
      objc_storeStrong(&v189, v86);
    }

    objc_storeStrong(&oslog, 0);
    v168 = 1;
  }

  else
  {
    v85 = [MEMORY[0x277D64B58] statefulUILogger];
    v167 = [v85 oslog];
    MEMORY[0x277D82BD8](v85);
    v166 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      v76 = v167;
      *v77 = v166;
      v78 = v196;
      v16 = objc_opt_class();
      v79 = NSStringFromClass(v16);
      v80 = MEMORY[0x277D82BE0](v79);
      v165 = v80;
      v17 = *(&v196->super.super.isa + *MEMORY[0x277D64C00]);
      v81 = SUUIStatefulUIStateToString();
      v82 = MEMORY[0x277D82BE0](v81);
      v164 = v82;
      v83 = [(SUUIStatefulUIManager *)v196 currentState];
      v84 = [(SUUIStatefulUIManager *)v196 delegate];
      v162 = 0;
      v160 = 0;
      if (v84)
      {
        v163 = [(SUUIStatefulUIManager *)v196 delegate];
        v74 = 1;
        v162 = 1;
        v18 = objc_opt_class();
        v161 = NSStringFromClass(v18);
        v160 = 1;
        v75 = v161;
      }

      else
      {
        v75 = @"(null)";
      }

      v68 = v75;
      v69 = [(SUUIStatefulUIManager *)v196 delegate];
      v70 = [(SUUIStatefulUIManager *)v196 scanError];
      v71 = [(SUUIStatefulUIManager *)v196 preferredStatefulDescriptor];
      v72 = [(SUUIStatefulUIManager *)v196 alternateStatefulDescriptor];
      v73 = [(SUUIStatefulUIManager *)v196 currentDownload];
      v158 = 0;
      v156 = 0;
      v154 = 0;
      if (v73)
      {
        v159 = [(SUUIStatefulUIManager *)v196 currentDownload];
        v66 = 1;
        v158 = 1;
        v157 = [(SUUIDownload *)v159 descriptor];
        v156 = 1;
        v155 = [v157 updateName];
        v154 = 1;
        v67 = v155;
      }

      else
      {
        v67 = @"(null)";
      }

      v43 = v67;
      v44 = [(SUUIStatefulUIManager *)v196 currentDownload];
      [(SUUIStatefulUIManager *)v196 currentUpdateOperationType];
      v45 = SUUIUpdateContinuousOperationTypeToString();
      v46 = MEMORY[0x277D82BE0](v45);
      v153 = v46;
      v200 = [(SUUIMobileStatefulUIManager *)v196 isTargetedUpdateScheduledForAutoInstall];
      v56 = @"NO";
      v57 = @"YES";
      v64 = 1;
      if (v200)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v47 = v19;
      v20 = v19;
      v48 = v47;
      v49 = MEMORY[0x277D82BE0](v48);
      v152 = v49;
      if ([(SUUIStatefulUIManager *)v196 hidingPreferredDescriptor])
      {
        v21 = v57;
      }

      else
      {
        v21 = v56;
      }

      v50 = v21;
      v22 = v21;
      v51 = v50;
      v52 = MEMORY[0x277D82BE0](v51);
      v151 = v52;
      v53 = [(SUUIStatefulUIManager *)v196 hiddenPreferredStatefulDescriptor];
      v54 = [(SUUIStatefulDescriptor *)v53 updateName];
      v55 = MEMORY[0x277D82BE0](v54);
      v150 = v55;
      if ([(SUUIStatefulUIManager *)v196 hidingAlternateDescriptor])
      {
        v23 = v57;
      }

      else
      {
        v23 = v56;
      }

      v58 = v23;
      v24 = v23;
      v59 = v58;
      v60 = MEMORY[0x277D82BE0](v59);
      v149 = v60;
      v61 = [(SUUIStatefulUIManager *)v196 hiddenAlternateStatefulDescriptor];
      v62 = [(SUUIStatefulDescriptor *)v61 updateName];
      v63 = MEMORY[0x277D82BE0](v62);
      v148 = v63;
      v65 = [(SUUIStatefulUIManager *)v196 enrolledBetaProgram];
      v146 = 0;
      if (v65)
      {
        v147 = [(SUUIStatefulUIManager *)v196 enrolledBetaProgram];
        v146 = 1;
        v42 = [(SDBetaProgram *)v147 programID];
      }

      else
      {
        v42 = 0;
      }

      v31 = v42;
      v32 = [*(&v196->super.super.isa + *MEMORY[0x277D64BE8]) count];
      if ([(SUUIStatefulUIManager *)v196 canEnrollInBetaUpdates])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v30 = v25;
      v26 = v25;
      v41 = v30;
      v33 = MEMORY[0x277D82BE0](v41);
      v145 = v33;
      v34 = *(&v196->super.super.isa + *MEMORY[0x277D64BF0]);
      v35 = *(&v196->super.super.isa + *MEMORY[0x277D64BF8]);
      v36 = *(&v196->super.super.isa + *MEMORY[0x277D64C08]);
      v37 = [*(&v196->super.super.isa + *MEMORY[0x277D64BE0]) count];
      v40 = [v194 identifier];
      v38 = &v27;
      v39 = v205;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v205, v142, v78, v80, v82, v83, v68, v69, v70, v71, v72, v43, v44, v46, v49, v52, v55, v60, v63, v31, v32, v33, v34, v35, v36, v37, v40);
      _os_log_impl(&dword_26B0B9000, v76, v77[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has started on behalf of: %{public}@", v39, 0x106u);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      if (v146)
      {
        MEMORY[0x277D82BD8](v147);
      }

      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v44);
      if (v154)
      {
        MEMORY[0x277D82BD8](v155);
      }

      if (v156)
      {
        MEMORY[0x277D82BD8](v157);
      }

      if (v158)
      {
        MEMORY[0x277D82BD8](v159);
      }

      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v69);
      if (v160)
      {
        MEMORY[0x277D82BD8](v161);
      }

      if (v162)
      {
        MEMORY[0x277D82BD8](v163);
      }

      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v79);
      v29 = 0;
      objc_storeStrong(&v145, 0);
      objc_storeStrong(&v148, v29);
      objc_storeStrong(&v149, v29);
      objc_storeStrong(&v150, v29);
      objc_storeStrong(&v151, v29);
      objc_storeStrong(&v152, v29);
      objc_storeStrong(&v153, v29);
      objc_storeStrong(&v164, v29);
      objc_storeStrong(&v165, v29);
    }

    objc_storeStrong(&v167, 0);
    v168 = 0;
  }

  v28 = 0;
  objc_storeStrong(&v194, 0);
  objc_storeStrong(location, v28);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6
{
  obj = a4;
  v188 = a5;
  v189 = a6;
  v186 = "[SUUIMobileStatefulUIManager client:scanRequestDidFinishForOptions:results:error:]";
  v289 = *MEMORY[0x277D85DE8];
  val = self;
  v273 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v271 = 0;
  objc_storeStrong(&v271, obj);
  v270 = 0;
  objc_storeStrong(&v270, v188);
  v269 = 0;
  objc_storeStrong(&v269, v189);
  v267 = 0;
  v190 = 1;
  if (v271)
  {
    v268 = [v271 identifier];
    v267 = 1;
    v190 = v268 == 0;
  }

  v185 = v190;
  if (v267)
  {
    MEMORY[0x277D82BD8](v268);
  }

  if (v185)
  {
    v184 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [v184 oslog];
    MEMORY[0x277D82BD8](v184);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v176 = type;
      v177 = val;
      v6 = objc_opt_class();
      v178 = NSStringFromClass(v6);
      v179 = MEMORY[0x277D82BE0](v178);
      v264 = v179;
      v7 = *(val + *MEMORY[0x277D64C00]);
      v180 = SUUIStatefulUIStateToString();
      v181 = MEMORY[0x277D82BE0](v180);
      v263 = v181;
      v182 = [val currentState];
      v183 = [val delegate];
      v261 = 0;
      v259 = 0;
      if (v183)
      {
        v262 = [val delegate];
        v173 = 1;
        v261 = 1;
        v8 = objc_opt_class();
        v260 = NSStringFromClass(v8);
        v259 = 1;
        v174 = v260;
      }

      else
      {
        v174 = @"(null)";
      }

      v167 = v174;
      v168 = [val delegate];
      v169 = [val scanError];
      v170 = [val preferredStatefulDescriptor];
      v171 = [val alternateStatefulDescriptor];
      v172 = [val currentDownload];
      v257 = 0;
      v255 = 0;
      v253 = 0;
      if (v172)
      {
        v258 = [val currentDownload];
        v165 = 1;
        v257 = 1;
        v256 = [v258 descriptor];
        v255 = 1;
        v254 = [v256 updateName];
        v253 = 1;
        v166 = v254;
      }

      else
      {
        v166 = @"(null)";
      }

      v142 = v166;
      v143 = [val currentDownload];
      [val currentUpdateOperationType];
      v144 = SUUIUpdateContinuousOperationTypeToString();
      v145 = MEMORY[0x277D82BE0](v144);
      v252 = v145;
      v282 = [val isTargetedUpdateScheduledForAutoInstall];
      v155 = @"NO";
      v156 = @"YES";
      v163 = 1;
      if (v282)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v146 = v9;
      v10 = v9;
      v147 = v146;
      v148 = MEMORY[0x277D82BE0](v147);
      v251 = v148;
      v281 = [val hidingPreferredDescriptor];
      if (v281)
      {
        v11 = v156;
      }

      else
      {
        v11 = v155;
      }

      v149 = v11;
      v12 = v11;
      v150 = v149;
      v151 = MEMORY[0x277D82BE0](v150);
      v250 = v151;
      v152 = [val hiddenPreferredStatefulDescriptor];
      v153 = [v152 updateName];
      v154 = MEMORY[0x277D82BE0](v153);
      v249 = v154;
      v280 = [val hidingAlternateDescriptor];
      if (v280)
      {
        v13 = v156;
      }

      else
      {
        v13 = v155;
      }

      v157 = v13;
      v14 = v13;
      v158 = v157;
      v159 = MEMORY[0x277D82BE0](v158);
      v248 = v159;
      v160 = [val hiddenAlternateStatefulDescriptor];
      v161 = [v160 updateName];
      v162 = MEMORY[0x277D82BE0](v161);
      v247 = v162;
      v164 = [val enrolledBetaProgram];
      v245 = 0;
      if (v164)
      {
        v246 = [val enrolledBetaProgram];
        v245 = 1;
        v141 = [v246 programID];
      }

      else
      {
        v141 = 0;
      }

      v132 = v141;
      v133 = [*(val + *MEMORY[0x277D64BE8]) count];
      v279 = [val canEnrollInBetaUpdates];
      if (v279)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v131 = v15;
      v16 = v15;
      v140 = v131;
      v134 = MEMORY[0x277D82BE0](v140);
      v244 = v134;
      v135 = *(val + *MEMORY[0x277D64BF0]);
      v136 = *(val + *MEMORY[0x277D64BF8]);
      v137 = *(val + *MEMORY[0x277D64C08]);
      v17 = [*(val + *MEMORY[0x277D64BE0]) count];
      v138 = &v33;
      buf = v288;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v288, v186, v177, v179, v181, v182, v167, v168, v169, v170, v171, v142, v143, v145, v148, v151, v154, v159, v162, v132, v133, v134, v135, v136, v137, v17);
      _os_log_impl(&dword_26B0B9000, log, v176[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, but we've been given a nil options. Skipping.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v140);
      if (v245)
      {
        MEMORY[0x277D82BD8](v246);
      }

      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](v161);
      MEMORY[0x277D82BD8](v160);
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](v153);
      MEMORY[0x277D82BD8](v152);
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v143);
      if (v253)
      {
        MEMORY[0x277D82BD8](v254);
      }

      if (v255)
      {
        MEMORY[0x277D82BD8](v256);
      }

      if (v257)
      {
        MEMORY[0x277D82BD8](v258);
      }

      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](v171);
      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v168);
      if (v259)
      {
        MEMORY[0x277D82BD8](v260);
      }

      if (v261)
      {
        MEMORY[0x277D82BD8](v262);
      }

      MEMORY[0x277D82BD8](v183);
      MEMORY[0x277D82BD8](v180);
      MEMORY[0x277D82BD8](v178);
      v130 = 0;
      objc_storeStrong(&v244, 0);
      objc_storeStrong(&v247, v130);
      objc_storeStrong(&v248, v130);
      objc_storeStrong(&v249, v130);
      objc_storeStrong(&v250, v130);
      objc_storeStrong(&v251, v130);
      objc_storeStrong(&v252, v130);
      objc_storeStrong(&v263, v130);
      objc_storeStrong(&v264, v130);
    }

    objc_storeStrong(&oslog, 0);
    v243 = 1;
    goto LABEL_116;
  }

  v129 = [MEMORY[0x277D64B58] statefulUILogger];
  v242 = [v129 oslog];
  MEMORY[0x277D82BD8](v129);
  v241 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
  {
    v120 = v242;
    *v121 = v241;
    v122 = val;
    v18 = objc_opt_class();
    v123 = NSStringFromClass(v18);
    v124 = MEMORY[0x277D82BE0](v123);
    v240 = v124;
    v19 = *(val + *MEMORY[0x277D64C00]);
    v125 = SUUIStatefulUIStateToString();
    v126 = MEMORY[0x277D82BE0](v125);
    v239 = v126;
    v127 = [val currentState];
    v128 = [val delegate];
    v237 = 0;
    v235 = 0;
    if (v128)
    {
      v238 = [val delegate];
      v118 = 1;
      v237 = 1;
      v20 = objc_opt_class();
      v236 = NSStringFromClass(v20);
      v235 = 1;
      v119 = v236;
    }

    else
    {
      v119 = @"(null)";
    }

    v112 = v119;
    v113 = [val delegate];
    v114 = [val scanError];
    v115 = [val preferredStatefulDescriptor];
    v116 = [val alternateStatefulDescriptor];
    v117 = [val currentDownload];
    v233 = 0;
    v231 = 0;
    v229 = 0;
    if (v117)
    {
      v234 = [val currentDownload];
      v110 = 1;
      v233 = 1;
      v232 = [v234 descriptor];
      v231 = 1;
      v230 = [v232 updateName];
      v229 = 1;
      v111 = v230;
    }

    else
    {
      v111 = @"(null)";
    }

    v87 = v111;
    v88 = [val currentDownload];
    [val currentUpdateOperationType];
    v89 = SUUIUpdateContinuousOperationTypeToString();
    v90 = MEMORY[0x277D82BE0](v89);
    v228 = v90;
    v278 = [val isTargetedUpdateScheduledForAutoInstall];
    v100 = @"NO";
    v101 = @"YES";
    v108 = 1;
    if (v278)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v91 = v21;
    v22 = v21;
    v92 = v91;
    v93 = MEMORY[0x277D82BE0](v92);
    v227 = v93;
    v277 = [val hidingPreferredDescriptor];
    if (v277)
    {
      v23 = v101;
    }

    else
    {
      v23 = v100;
    }

    v94 = v23;
    v24 = v23;
    v95 = v94;
    v96 = MEMORY[0x277D82BE0](v95);
    v226 = v96;
    v97 = [val hiddenPreferredStatefulDescriptor];
    v98 = [v97 updateName];
    v99 = MEMORY[0x277D82BE0](v98);
    v225 = v99;
    v276 = [val hidingAlternateDescriptor];
    if (v276)
    {
      v25 = v101;
    }

    else
    {
      v25 = v100;
    }

    v102 = v25;
    v26 = v25;
    v103 = v102;
    v104 = MEMORY[0x277D82BE0](v103);
    v224 = v104;
    v105 = [val hiddenAlternateStatefulDescriptor];
    v106 = [v105 updateName];
    v107 = MEMORY[0x277D82BE0](v106);
    v223 = v107;
    v109 = [val enrolledBetaProgram];
    v221 = 0;
    if (v109)
    {
      v222 = [val enrolledBetaProgram];
      v221 = 1;
      v86 = [v222 programID];
    }

    else
    {
      v86 = 0;
    }

    v75 = v86;
    v76 = [*(val + *MEMORY[0x277D64BE8]) count];
    v275 = [val canEnrollInBetaUpdates];
    if (v275)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v74 = v27;
    v28 = v27;
    v85 = v74;
    v77 = MEMORY[0x277D82BE0](v85);
    v220 = v77;
    v78 = *(val + *MEMORY[0x277D64BF0]);
    v79 = *(val + *MEMORY[0x277D64BF8]);
    v80 = *(val + *MEMORY[0x277D64C08]);
    v81 = [*(val + *MEMORY[0x277D64BE0]) count];
    v84 = [v271 identifier];
    v82 = &v33;
    v83 = v287;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v287, v186, v122, v124, v126, v127, v112, v113, v114, v115, v116, v87, v88, v90, v93, v96, v99, v104, v107, v75, v76, v77, v78, v79, v80, v81, v84);
    _os_log_impl(&dword_26B0B9000, v120, v121[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, triggered by the initiator: %{public}@", v83, 0x106u);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    if (v221)
    {
      MEMORY[0x277D82BD8](v222);
    }

    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v88);
    if (v229)
    {
      MEMORY[0x277D82BD8](v230);
    }

    if (v231)
    {
      MEMORY[0x277D82BD8](v232);
    }

    if (v233)
    {
      MEMORY[0x277D82BD8](v234);
    }

    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v113);
    if (v235)
    {
      MEMORY[0x277D82BD8](v236);
    }

    if (v237)
    {
      MEMORY[0x277D82BD8](v238);
    }

    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v123);
    v73 = 0;
    objc_storeStrong(&v220, 0);
    objc_storeStrong(&v223, v73);
    objc_storeStrong(&v224, v73);
    objc_storeStrong(&v225, v73);
    objc_storeStrong(&v226, v73);
    objc_storeStrong(&v227, v73);
    objc_storeStrong(&v228, v73);
    objc_storeStrong(&v239, v73);
    objc_storeStrong(&v240, v73);
  }

  objc_storeStrong(&v242, 0);
  v71 = [v271 identifier];
  v70 = [val clientIdentifier];
  v72 = [v71 isEqualToString:?];
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  if (v72)
  {
    v243 = 1;
    goto LABEL_116;
  }

  v29 = [v270 preferredDescriptor];
  v68 = v29 != 0;
  MEMORY[0x277D82BD8](v29);
  v219 = v68;
  v30 = [v270 alternateDescriptor];
  v69 = v30 != 0;
  MEMORY[0x277D82BD8](v30);
  v218 = v69;
  v217 = 1;
  if (!v219 && !v218)
  {
LABEL_115:
    from = &v200;
    objc_initWeak(&v200, val);
    queue = *(val + *MEMORY[0x277D64C18]);
    block = &v191;
    v191 = MEMORY[0x277D85DD0];
    v192 = -1073741824;
    v193 = 0;
    v194 = __83__SUUIMobileStatefulUIManager_client_scanRequestDidFinishForOptions_results_error___block_invoke;
    v195 = &unk_279CCF768;
    v40 = v198;
    objc_copyWeak(v198, from);
    v198[1] = v273;
    v199 = v217 & 1;
    v38 = (block + 32);
    v196 = MEMORY[0x277D82BE0](v270);
    v37 = (block + 40);
    v197 = MEMORY[0x277D82BE0](v269);
    dispatch_async(queue, block);
    v39 = 0;
    objc_storeStrong(v37, 0);
    objc_storeStrong(v38, v39);
    objc_destroyWeak(v40);
    objc_destroyWeak(from);
    v243 = 0;
    goto LABEL_116;
  }

  v215 = 0;
  v67 = 0;
  if (v219)
  {
    v67 = 0;
    if (!v218)
    {
      v216 = [v270 preferredDescriptor];
      v215 = 1;
      v67 = [v216 isSplatOnly];
    }
  }

  v66 = v67;
  if (v215)
  {
    MEMORY[0x277D82BD8](v216);
  }

  if (v66)
  {
    v65 = [MEMORY[0x277D64B58] statefulUILogger];
    v214 = [v65 oslog];
    MEMORY[0x277D82BD8](v65);
    v213 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v214;
      *v63 = v213;
      v64 = v286;
      __os_log_helper_16_2_2_8_32_8_0(v286, v186, val);
      _os_log_impl(&dword_26B0B9000, v62, v63[0], "%s [%p]: Dropping a 3rd party scan results notification: the results contains only a SPLAT preferred descriptor.", v64, 0x16u);
    }

    objc_storeStrong(&v214, 0);
    v243 = 1;
    goto LABEL_116;
  }

  v211 = 0;
  v61 = 0;
  if (!v219)
  {
    v61 = 0;
    if (v218)
    {
      v212 = [v270 alternateDescriptor];
      v211 = 1;
      v61 = [v212 isSplatOnly];
    }
  }

  v60 = v61;
  if (v211)
  {
    MEMORY[0x277D82BD8](v212);
  }

  if (v60)
  {
    v59 = [MEMORY[0x277D64B58] statefulUILogger];
    v210 = [v59 oslog];
    MEMORY[0x277D82BD8](v59);
    v209 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v210;
      *v57 = v209;
      v58 = v285;
      __os_log_helper_16_2_2_8_32_8_0(v285, v186, val);
      _os_log_impl(&dword_26B0B9000, v56, v57[0], "%s [%p]: Dropping a 3rd party scan results notification: the results contains only a SPLAT alternate descriptor.", v58, 0x16u);
    }

    objc_storeStrong(&v210, 0);
    v243 = 1;
    goto LABEL_116;
  }

  v54 = [v270 alternateDescriptor];
  v31 = [v54 isSplatOnly];
  v207 = 0;
  v55 = 0;
  if (v31)
  {
    v208 = [v270 alternateDescriptor];
    v207 = 1;
    v55 = [v208 isSplatOnly];
  }

  v53 = v55;
  if (v207)
  {
    MEMORY[0x277D82BD8](v208);
  }

  MEMORY[0x277D82BD8](v54);
  if ((v53 & 1) == 0)
  {
    v47 = [v270 alternateDescriptor];
    v32 = [v47 isSplatOnly];
    v203 = 0;
    v48 = 1;
    if ((v32 & 1) == 0)
    {
      v204 = [v270 alternateDescriptor];
      v203 = 1;
      v48 = [v204 isSplatOnly];
    }

    v46 = v48;
    if (v203)
    {
      MEMORY[0x277D82BD8](v204);
    }

    MEMORY[0x277D82BD8](v47);
    if (v46)
    {
      v45 = [MEMORY[0x277D64B58] statefulUILogger];
      v202 = [v45 oslog];
      MEMORY[0x277D82BD8](v45);
      v201 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v202;
        *v43 = v201;
        v44 = v283;
        __os_log_helper_16_2_2_8_32_8_0(v283, v186, val);
        _os_log_impl(&dword_26B0B9000, v42, v43[0], "%s [%p]: Modifying the 3rd party scan pipeline: One of the 3rd party scan results was a SPLAT update, while the other wasn't. Requesting a fresh background full scan.", v44, 0x16u);
      }

      objc_storeStrong(&v202, 0);
      v217 = 0;
    }

    goto LABEL_115;
  }

  v52 = [MEMORY[0x277D64B58] statefulUILogger];
  v206 = [v52 oslog];
  MEMORY[0x277D82BD8](v52);
  v205 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v206;
    *v50 = v205;
    v51 = v284;
    __os_log_helper_16_2_2_8_32_8_0(v284, v186, val);
    _os_log_impl(&dword_26B0B9000, v49, v50[0], "%s [%p]: Dropping a 3rd party scan results notification: the results contains a SPLAT update for both the preferred and alternate descriptors.", v51, 0x16u);
  }

  objc_storeStrong(&v206, 0);
  v243 = 1;
LABEL_116:
  v34 = 0;
  objc_storeStrong(&v269, 0);
  objc_storeStrong(&v270, v34);
  objc_storeStrong(&v271, v34);
  objc_storeStrong(&location, v34);
  *MEMORY[0x277D85DE8];
}

void __83__SUUIMobileStatefulUIManager_client_scanRequestDidFinishForOptions_results_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 48));
  v7 = 0;
  if (!v14[0])
  {
    v6 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v13 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v5 = NSStringFromSelector(*(a1 + 56));
      v11 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUIMobileStatefulUIManager client:scanRequestDidFinishForOptions:results:error:]_block_invoke", v11);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    if (*(a1 + 64))
    {
      v1 = v14[0];
      v2 = [objc_alloc(MEMORY[0x277D64B80]) initFromSUScanResults:*(a1 + 32)];
      v9 = 0;
      if (*(a1 + 40))
      {
        v10 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:*(a1 + 40)];
        v9 = 1;
        [v1 performFullScanWithScanResults:v2 andScanError:{v10, v10}];
      }

      else
      {
        [v1 performFullScanWithScanResults:v2 andScanError:{0, 0}];
      }

      if (v9)
      {
        MEMORY[0x277D82BD8](v10);
      }

      MEMORY[0x277D82BD8](v2);
    }

    else
    {
      [v14[0] checkForUpdatesInBackground:1];
    }
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 downloadDidStart:(id)a4
{
  v287 = &v303;
  obj = a4;
  v289 = "[SUUIMobileStatefulUIManager client:downloadDidStart:]";
  v351 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v339 = 0;
  objc_storeStrong(&v339, obj);
  v286 = [MEMORY[0x277D64B58] statefulUILogger];
  v284 = v286;
  v285 = [v284 oslog];
  v338 = v285;
  MEMORY[0x277D82BD8](v284);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
  {
    log = v287[48];
    *v281 = type;
    v282 = v287[52];
    v4 = v287[52];
    aClass = objc_opt_class();
    v279 = NSStringFromClass(aClass);
    v276 = v279;
    v5 = MEMORY[0x277D82BE0](v276);
    v6 = v287;
    v277 = v5;
    v287[46] = v5;
    v7 = *(v6[52] + *MEMORY[0x277D64C00]);
    v278 = SUUIStatefulUIStateToString();
    v273 = v278;
    v8 = MEMORY[0x277D82BE0](v273);
    v9 = v287;
    v274 = v8;
    v287[45] = v8;
    v275 = [v9[52] currentState];
    v272 = [v287[52] delegate];
    v271 = v272;
    v334 = 0;
    v333 = 0;
    if (v271)
    {
      v270 = [v287[52] delegate];
      v287[44] = v270;
      v334 = 1;
      v269 = objc_opt_class();
      v268 = NSStringFromClass(v269);
      v10 = v268;
      v287[42] = v10;
      v333 = 1;
      v267 = v10;
    }

    else
    {
      v267 = @"(null)";
    }

    v265 = v267;
    v266 = [v287[52] delegate];
    v263 = v266;
    v264 = [v287[52] scanError];
    v261 = v264;
    v262 = [v287[52] preferredStatefulDescriptor];
    v259 = v262;
    v260 = [v287[52] alternateStatefulDescriptor];
    v257 = v260;
    v258 = [v287[52] currentDownload];
    v256 = v258;
    v332 = 0;
    v331 = 0;
    v330 = 0;
    if (v256)
    {
      v255 = [v287[52] currentDownload];
      v11 = v255;
      v287[40] = v11;
      v332 = 1;
      v254 = [v11 descriptor];
      v12 = v254;
      v287[38] = v12;
      v331 = 1;
      v253 = [v12 updateName];
      v13 = v253;
      v287[36] = v13;
      v330 = 1;
      v252 = v13;
    }

    else
    {
      v252 = @"(null)";
    }

    v250 = v252;
    v251 = [v287[52] currentDownload];
    v248 = v251;
    v249 = [v287[52] currentUpdateOperationType];
    v247 = SUUIUpdateContinuousOperationTypeToString();
    v244 = v247;
    v14 = MEMORY[0x277D82BE0](v244);
    v15 = v287;
    v245 = v14;
    v287[34] = v14;
    v246 = [v15[52] isTargetedUpdateScheduledForAutoInstall];
    v348 = v246;
    if (v246)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v243 = v16;
    v17 = v16;
    v240 = v243;
    v18 = MEMORY[0x277D82BE0](v240);
    v19 = v287;
    v241 = v18;
    v287[33] = v18;
    v242 = [v19[52] hidingPreferredDescriptor];
    v347 = v242;
    if (v242)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v239 = v20;
    v21 = v20;
    v236 = v239;
    v22 = MEMORY[0x277D82BE0](v236);
    v23 = v287;
    v237 = v22;
    v287[32] = v22;
    v238 = [v23[52] hiddenPreferredStatefulDescriptor];
    v234 = v238;
    v235 = [v234 updateName];
    v231 = v235;
    v24 = MEMORY[0x277D82BE0](v231);
    v25 = v287;
    v232 = v24;
    v287[31] = v24;
    v233 = [v25[52] hidingAlternateDescriptor];
    v346 = v233;
    if (v233)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v230 = v26;
    v27 = v26;
    v227 = v230;
    v28 = MEMORY[0x277D82BE0](v227);
    v29 = v287;
    v228 = v28;
    v287[30] = v28;
    v229 = [v29[52] hiddenAlternateStatefulDescriptor];
    v225 = v229;
    v226 = [v225 updateName];
    v222 = v226;
    v30 = MEMORY[0x277D82BE0](v222);
    v31 = v287;
    v223 = v30;
    v287[29] = v30;
    v224 = [v31[52] enrolledBetaProgram];
    v221 = v224;
    v323 = 0;
    if (v221)
    {
      v220 = [v287[52] enrolledBetaProgram];
      v32 = v220;
      v287[28] = v32;
      v323 = 1;
      v219 = [v32 programID];
      v218 = v219;
    }

    else
    {
      v218 = 0;
    }

    v216 = v218;
    v217 = [*(v287[52] + *MEMORY[0x277D64BE8]) count];
    v215 = [v287[52] canEnrollInBetaUpdates];
    v345 = v215;
    if (v215)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v214 = v33;
    v34 = v33;
    v208 = v214;
    v35 = MEMORY[0x277D82BE0](v208);
    v36 = v287;
    v209 = v35;
    v287[26] = v35;
    v210 = *(v36[52] + *MEMORY[0x277D64BF0]);
    v211 = *(v36[52] + *MEMORY[0x277D64BF8]);
    v212 = *(v36[52] + *MEMORY[0x277D64C08]);
    v213 = [*(v36[52] + *MEMORY[0x277D64BE0]) count];
    v207 = [v287[49] descriptor];
    v205 = v207;
    v206 = [v205 humanReadableUpdateName];
    v37 = v228;
    v38 = v232;
    v39 = v237;
    v40 = v241;
    v41 = v245;
    v42 = v248;
    v43 = v250;
    v44 = v257;
    v45 = v259;
    v46 = v261;
    v204 = v206;
    v47 = MEMORY[0x277D82BE0](v204);
    v48 = v287;
    v49 = v223;
    v50 = v216;
    v51 = v217;
    v52 = v209;
    v53 = v210;
    v54 = v211;
    v55 = v212;
    v56 = v213;
    v57 = v289;
    v58 = v282;
    v59 = v277;
    v60 = v274;
    v61 = v275;
    v62 = v265;
    v63 = v263;
    v287[25] = v47;
    v64 = v48[49];
    v202 = v103;
    buf = v350;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(v350, v57, v58, v59, v60, v61, v62, v63, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v49, v50, v51, v52, v53, v54, v55, v56, v47, v64);
    _os_log_impl(&dword_26B0B9000, log, v281[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to download an update targeting %{public}@ (%p)", buf, 0x110u);
    MEMORY[0x277D82BD8](v204);
    MEMORY[0x277D82BD8](v205);
    MEMORY[0x277D82BD8](v208);
    if (v323)
    {
      MEMORY[0x277D82BD8](v287[28]);
    }

    MEMORY[0x277D82BD8](v221);
    MEMORY[0x277D82BD8](v222);
    MEMORY[0x277D82BD8](v225);
    MEMORY[0x277D82BD8](v227);
    MEMORY[0x277D82BD8](v231);
    MEMORY[0x277D82BD8](v234);
    MEMORY[0x277D82BD8](v236);
    MEMORY[0x277D82BD8](v240);
    MEMORY[0x277D82BD8](v244);
    MEMORY[0x277D82BD8](v248);
    if (v330)
    {
      MEMORY[0x277D82BD8](v287[36]);
    }

    if (v331)
    {
      MEMORY[0x277D82BD8](v287[38]);
    }

    if (v332)
    {
      MEMORY[0x277D82BD8](v287[40]);
    }

    MEMORY[0x277D82BD8](v256);
    MEMORY[0x277D82BD8](v257);
    MEMORY[0x277D82BD8](v259);
    MEMORY[0x277D82BD8](v261);
    MEMORY[0x277D82BD8](v263);
    if (v333)
    {
      MEMORY[0x277D82BD8](v287[42]);
    }

    if (v334)
    {
      MEMORY[0x277D82BD8](v287[44]);
    }

    MEMORY[0x277D82BD8](v271);
    MEMORY[0x277D82BD8](v273);
    MEMORY[0x277D82BD8](v276);
    objc_storeStrong(&v321, 0);
    objc_storeStrong(&v322, 0);
    objc_storeStrong(&v324, 0);
    objc_storeStrong(&v325, 0);
    objc_storeStrong(&v326, 0);
    objc_storeStrong(&v327, 0);
    objc_storeStrong(&v328, 0);
    objc_storeStrong(&v329, 0);
    objc_storeStrong(&v335, 0);
    objc_storeStrong(&v336, 0);
  }

  objc_storeStrong(&v338, 0);
  if (v287[49])
  {
    v201 = [v287[52] currentUpdateOperation];
    v200 = v201;
    MEMORY[0x277D82BD8](v200);
    if (v200)
    {
      v320 = 1;
    }

    else
    {
      v65 = v287[49];
      v317 = 0;
      if (v65)
      {
        v199 = [SUUIMobileDownload alloc];
        v198 = [(SUUIMobileDownload *)v199 initWithDownload:v287[49]];
        v66 = v198;
        v287[21] = v198;
        v317 = 1;
        v197 = v66;
      }

      else
      {
        v197 = 0;
      }

      v67 = MEMORY[0x277D82BE0](v197);
      v287[22] = v67;
      if (v317)
      {
        MEMORY[0x277D82BD8](v287[21]);
      }

      v196 = [v287[22] conformsToProtocol:&unk_287BBC258];
      if ((v196 & 1) == 0)
      {
        v195 = NSStringFromProtocol(&unk_287BBC258);
        v68 = v195;
        v103[0] = @"SUUIMobileDownloadFromSUDownload(download)";
        v103[1] = v68;
        _suui_precondition_failure_with_format();
        __break(1u);
      }

      v194 = &v318;
      v69 = MEMORY[0x277D82BE0](v287[22]);
      v70 = v194;
      v287[19] = v69;
      objc_storeStrong(v70, 0);
      v71 = v287;
      v287[23] = v287[19];
      v193 = [v71[52] targetedUpdateForDownload:v71[23]];
      v72 = v193;
      v73 = v287;
      v287[18] = v72;
      if (v73[18])
      {
        objc_initWeak(&from, v287[52]);
        v107 = v287[52];
        v108 = v287[23];
        v110 = &v290;
        v290 = MEMORY[0x277D85DD0];
        v291 = -1073741824;
        v292 = 0;
        v293 = __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke;
        v294 = &unk_279CCF790;
        v109 = &v295;
        v295 = MEMORY[0x277D82BE0](v287[52]);
        v111 = v110 + 7;
        objc_copyWeak(v110 + 7, &from);
        v106 = &v290;
        v296[3] = v287[51];
        v104 = v296;
        v296[0] = MEMORY[0x277D82BE0](v287[18]);
        v105 = (v106 + 6);
        v296[1] = MEMORY[0x277D82BE0](v287[23]);
        [v107 performPostUpdateOperationRefreshWithDownload:v108 error:0 completionHandler:v106];
        objc_storeStrong(v105, 0);
        objc_storeStrong(v104, 0);
        objc_destroyWeak(v111);
        objc_storeStrong(v109, 0);
        objc_destroyWeak(&from);
        v320 = 0;
      }

      else
      {
        v192 = [MEMORY[0x277D64B58] statefulUILogger];
        v190 = v192;
        v191 = [v190 oslog];
        v74 = v191;
        v75 = v190;
        v287[17] = v74;
        MEMORY[0x277D82BD8](v75);
        v314 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v287[17], OS_LOG_TYPE_DEFAULT))
        {
          v186 = v287[17];
          *v187 = v314;
          v188 = v287[52];
          v76 = v287[52];
          v189 = objc_opt_class();
          v185 = NSStringFromClass(v189);
          v182 = v185;
          v77 = MEMORY[0x277D82BE0](v182);
          v78 = v287;
          v183 = v77;
          v287[15] = v77;
          v79 = *(v78[52] + *MEMORY[0x277D64C00]);
          v184 = SUUIStatefulUIStateToString();
          v179 = v184;
          v80 = MEMORY[0x277D82BE0](v179);
          v81 = v287;
          v180 = v80;
          v287[14] = v80;
          v181 = [v81[52] currentState];
          v178 = [v287[52] delegate];
          v177 = v178;
          v311 = 0;
          v310 = 0;
          if (v177)
          {
            v176 = [v287[52] delegate];
            v82 = v176;
            v287[13] = v82;
            v311 = 1;
            v175 = objc_opt_class();
            v174 = NSStringFromClass(v175);
            v83 = v174;
            v287[11] = v83;
            v310 = 1;
            v173 = v83;
          }

          else
          {
            v173 = @"(null)";
          }

          v171 = v173;
          v172 = [v287[52] delegate];
          v169 = v172;
          v170 = [v287[52] scanError];
          v167 = v170;
          v168 = [v287[52] preferredStatefulDescriptor];
          v165 = v168;
          v166 = [v287[52] alternateStatefulDescriptor];
          v163 = v166;
          v164 = [v287[52] currentDownload];
          v162 = v164;
          v309 = 0;
          v308 = 0;
          v307 = 0;
          if (v162)
          {
            v161 = [v287[52] currentDownload];
            v84 = v161;
            v287[9] = v84;
            v309 = 1;
            v160 = [v84 descriptor];
            v85 = v160;
            v287[7] = v85;
            v308 = 1;
            v159 = [v85 updateName];
            v86 = v159;
            v287[5] = v86;
            v307 = 1;
            v158 = v86;
          }

          else
          {
            v158 = @"(null)";
          }

          v156 = v158;
          v157 = [v287[52] currentDownload];
          v154 = v157;
          v155 = [v287[52] currentUpdateOperationType];
          v153 = SUUIUpdateContinuousOperationTypeToString();
          v150 = v153;
          v87 = MEMORY[0x277D82BE0](v150);
          v88 = v287;
          v151 = v87;
          v287[3] = v87;
          v152 = [v88[52] isTargetedUpdateScheduledForAutoInstall];
          v344 = v152;
          if (v152)
          {
            v89 = @"YES";
          }

          else
          {
            v89 = @"NO";
          }

          v149 = v89;
          v90 = v89;
          v146 = v149;
          v91 = MEMORY[0x277D82BE0](v146);
          v92 = v287;
          v147 = v91;
          v287[2] = v91;
          v148 = [v92[52] hidingPreferredDescriptor];
          v343 = v148;
          if (v148)
          {
            v93 = @"YES";
          }

          else
          {
            v93 = @"NO";
          }

          v145 = v93;
          v94 = v93;
          v142 = v145;
          v95 = MEMORY[0x277D82BE0](v142);
          v96 = v287;
          v143 = v95;
          v287[1] = v95;
          v144 = [v96[52] hiddenPreferredStatefulDescriptor];
          v140 = v144;
          v141 = [v140 updateName];
          v137 = v141;
          v97 = MEMORY[0x277D82BE0](v137);
          v98 = v287;
          v138 = v97;
          *v287 = v97;
          v139 = [v98[52] hidingAlternateDescriptor];
          v342 = v139;
          if (v139)
          {
            v99 = @"YES";
          }

          else
          {
            v99 = @"NO";
          }

          v136 = v99;
          v100 = v99;
          v133 = v136;
          v134 = MEMORY[0x277D82BE0](v133);
          v302 = v134;
          v135 = [v287[52] hiddenAlternateStatefulDescriptor];
          v131 = v135;
          v132 = [v131 updateName];
          v128 = v132;
          v129 = MEMORY[0x277D82BE0](v128);
          v301 = v129;
          v130 = [v287[52] enrolledBetaProgram];
          v127 = v130;
          v299 = 0;
          if (v127)
          {
            v126 = [v287[52] enrolledBetaProgram];
            v300 = v126;
            v299 = 1;
            v125 = [v300 programID];
            v124 = v125;
          }

          else
          {
            v124 = 0;
          }

          v122 = v124;
          v123 = [*(v287[52] + *MEMORY[0x277D64BE8]) count];
          v121 = [v287[52] canEnrollInBetaUpdates];
          v341 = v121;
          if (v121)
          {
            v101 = @"YES";
          }

          else
          {
            v101 = @"NO";
          }

          v120 = v101;
          v102 = v101;
          v114 = v120;
          v115 = MEMORY[0x277D82BE0](v114);
          v298 = v115;
          v116 = *(v287[52] + *MEMORY[0x277D64BF0]);
          v117 = *(v287[52] + *MEMORY[0x277D64BF8]);
          v118 = *(v287[52] + *MEMORY[0x277D64C08]);
          v119 = [*(v287[52] + *MEMORY[0x277D64BE0]) count];
          v112 = v103;
          v113 = v349;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v349, v289, v188, v183, v180, v181, v171, v169, v167, v165, v163, v156, v154, v151, v147, v143, v138, v134, v129, v122, v123, v115, v116, v117, v118, v119);
          _os_log_impl(&dword_26B0B9000, v186, v187[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCould not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v113, 0xFCu);
          MEMORY[0x277D82BD8](v114);
          if (v299)
          {
            MEMORY[0x277D82BD8](v300);
          }

          MEMORY[0x277D82BD8](v127);
          MEMORY[0x277D82BD8](v128);
          MEMORY[0x277D82BD8](v131);
          MEMORY[0x277D82BD8](v133);
          MEMORY[0x277D82BD8](v137);
          MEMORY[0x277D82BD8](v140);
          MEMORY[0x277D82BD8](v142);
          MEMORY[0x277D82BD8](v146);
          MEMORY[0x277D82BD8](v150);
          MEMORY[0x277D82BD8](v154);
          if (v307)
          {
            MEMORY[0x277D82BD8](v287[5]);
          }

          if (v308)
          {
            MEMORY[0x277D82BD8](v287[7]);
          }

          if (v309)
          {
            MEMORY[0x277D82BD8](v287[9]);
          }

          MEMORY[0x277D82BD8](v162);
          MEMORY[0x277D82BD8](v163);
          MEMORY[0x277D82BD8](v165);
          MEMORY[0x277D82BD8](v167);
          MEMORY[0x277D82BD8](v169);
          if (v310)
          {
            MEMORY[0x277D82BD8](v287[11]);
          }

          if (v311)
          {
            MEMORY[0x277D82BD8](v287[13]);
          }

          MEMORY[0x277D82BD8](v177);
          MEMORY[0x277D82BD8](v179);
          MEMORY[0x277D82BD8](v182);
          objc_storeStrong(&v298, 0);
          objc_storeStrong(&v301, 0);
          objc_storeStrong(&v302, 0);
          objc_storeStrong(&v303, 0);
          objc_storeStrong(&v304, 0);
          objc_storeStrong(&v305, 0);
          objc_storeStrong(&v306, 0);
          objc_storeStrong(&v312, 0);
          objc_storeStrong(&v313, 0);
        }

        objc_storeStrong(&v315, 0);
        [v287[52] checkForUpdatesInBackground];
        v320 = 1;
      }

      objc_storeStrong(&v316, 0);
      objc_storeStrong(&v319, 0);
    }
  }

  else
  {
    v320 = 1;
  }

  objc_storeStrong(&v339, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke(uint64_t a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[2] = a1;
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke_2;
  v8 = &unk_279CCC7B0;
  objc_copyWeak(v11, (a1 + 56));
  v11[1] = *(a1 + 64);
  v9 = MEMORY[0x277D82BE0](*(a1 + 40));
  v10 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v3 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v11);
}

void __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 56));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:downloadDidStart:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didStartDownloadForDescriptor:*(a1 + 32) withDownload:*(a1 + 40)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 downloadProgressDidChange:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = self;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  if (v31)
  {
    if ([(SUUIStatefulUIManager *)v34 currentState]== 4)
    {
      v29 = [v31 progress];
      [v29 normalizedPercentComplete];
      v28 = v4;
      v27 = [v29 phase];
      v14 = [MEMORY[0x277D64B58] statefulUILogger];
      v26 = [v14 oslog];
      MEMORY[0x277D82BD8](v14);
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        log = v26;
        type = v25;
        v13 = [v31 descriptor];
        v12 = [v13 humanReadableUpdateName];
        v7 = MEMORY[0x277D82BE0](v12);
        v24 = v7;
        *&v8 = v28;
        v9 = v27;
        [v29 timeRemaining];
        __os_log_helper_16_2_6_8_32_8_66_8_0_8_66_8_0_8_0(v35, "[SUUIMobileStatefulUIManager client:downloadProgressDidChange:]", v7, v8, v9, v5, v31);
        _os_log_impl(&dword_26B0B9000, log, type, "%s [->%{public}@]: progress: %.02f; phase: %{public}@; time remaining: %f, download: %p", v35, 0x3Eu);
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        objc_storeStrong(&v24, 0);
      }

      objc_storeStrong(&v26, 0);
      objc_initWeak(&v23, v34);
      queue = *(&v34->super.super.isa + *MEMORY[0x277D64C18]);
      v16 = MEMORY[0x277D85DD0];
      v17 = -1073741824;
      v18 = 0;
      v19 = __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke;
      v20 = &unk_279CCBD58;
      objc_copyWeak(v22, &v23);
      v22[1] = v33;
      v21 = MEMORY[0x277D82BE0](v31);
      dispatch_async(queue, &v16);
      objc_storeStrong(&v21, 0);
      objc_destroyWeak(v22);
      objc_destroyWeak(&v23);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v29, 0);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    [(SUUIStatefulUIManager *)v34 checkForAvailableUpdates:0 forceScan:1];
    v30 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke(id *a1)
{
  v139 = &v158;
  v140 = a1;
  v141 = "[SUUIMobileStatefulUIManager client:downloadProgressDidChange:]_block_invoke";
  v185 = *MEMORY[0x277D85DE8];
  v178[2] = a1;
  v178[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v178[0] = WeakRetained;
  v138 = 0;
  if (!WeakRetained)
  {
    v137 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v135 = v137;
    v136 = [v135 oslog];
    v1 = v136;
    v2 = v135;
    v139[25] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v139[25], OS_LOG_TYPE_ERROR))
    {
      log = v139[25];
      *v133 = type;
      v134 = NSStringFromSelector(v140[6]);
      v131 = v134;
      v3 = MEMORY[0x277D82BE0](v131);
      v4 = v141;
      v139[23] = v3;
      buf = v184;
      __os_log_helper_16_2_2_8_32_8_66(v184, v4, v3);
      _os_log_error_impl(&dword_26B0B9000, log, v133[0], "%s: Self is nil in %{public}@. Stopping.", v184, 0x16u);
      MEMORY[0x277D82BD8](v131);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v177, 0);
    v174 = 1;
    v138 = 1;
  }

  if (v138)
  {
    v173 = 1;
  }

  else
  {
    v5 = v140[4];
    v170 = 0;
    if (v5)
    {
      v129 = [SUUIMobileDownload alloc];
      v128 = [(SUUIMobileDownload *)v129 initWithDownload:v140[4]];
      v6 = v128;
      v139[19] = v128;
      v170 = 1;
      v127 = v6;
    }

    else
    {
      v127 = 0;
    }

    v139[20] = MEMORY[0x277D82BE0](v127);
    if (v170)
    {
      MEMORY[0x277D82BD8](v139[19]);
    }

    v126 = [v139[20] conformsToProtocol:&unk_287BBC258];
    if ((v126 & 1) == 0)
    {
      v125 = NSStringFromProtocol(&unk_287BBC258);
      v34 = @"SUUIMobileDownloadFromSUDownload(download)";
      v35 = v125;
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v124 = &v171;
    v139[17] = MEMORY[0x277D82BE0](v139[20]);
    objc_storeStrong(&v171, 0);
    v7 = v139;
    v139[21] = v139[17];
    [v7[26] setCurrentDownload:v7[21]];
    v123 = [v139[26] targetedUpdateForDownload:v139[21]];
    v8 = v123;
    v9 = v139;
    v139[16] = v8;
    if (v9[16])
    {
      [v139[16] updateStateFromProgressedDownload:v139[21]];
      v39 = v139[26];
      v40 = sel_statefulUIManager_didChangeProgressForDownloadOfDescriptor_withDownload_;
      v143 = MEMORY[0x277D85DD0];
      v144 = -1073741824;
      v145 = 0;
      v146 = __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke_409;
      v147 = &unk_279CCC7B0;
      v41 = v150;
      objc_copyWeak(v150, v140 + 5);
      v38 = &v143;
      v150[1] = v140[6];
      v36 = &v148;
      v148 = MEMORY[0x277D82BE0](v139[16]);
      v37 = &v149;
      v149 = MEMORY[0x277D82BE0](v139[21]);
      [v39 executeOperationOnDelegate:sel_statefulUIManager_didChangeProgressForDownloadOfDescriptor_withDownload_ usingBlock:&v143];
      objc_storeStrong(&v149, 0);
      objc_storeStrong(&v148, 0);
      objc_destroyWeak(v150);
      v173 = 0;
    }

    else
    {
      v122 = [MEMORY[0x277D64B58] statefulUILogger];
      v120 = v122;
      v121 = [v120 oslog];
      v10 = v121;
      v11 = v120;
      v139[15] = v10;
      MEMORY[0x277D82BD8](v11);
      v167 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v139[15], OS_LOG_TYPE_DEFAULT))
      {
        v116 = v139[15];
        *v117 = v167;
        v118 = v139[26];
        v12 = v139[26];
        aClass = objc_opt_class();
        v115 = NSStringFromClass(aClass);
        v112 = v115;
        v13 = MEMORY[0x277D82BE0](v112);
        v14 = v139;
        v113 = v13;
        v139[13] = v13;
        v15 = *(v14[26] + *MEMORY[0x277D64C00]);
        v114 = SUUIStatefulUIStateToString();
        v109 = v114;
        v16 = MEMORY[0x277D82BE0](v109);
        v17 = v139;
        v110 = v16;
        v139[12] = v16;
        v111 = [v17[26] currentState];
        v108 = [v139[26] delegate];
        v107 = v108;
        v164 = 0;
        v163 = 0;
        if (v107)
        {
          v106 = [v139[26] delegate];
          v139[11] = v106;
          v164 = 1;
          v105 = objc_opt_class();
          v104 = NSStringFromClass(v105);
          v18 = v104;
          v139[9] = v18;
          v163 = 1;
          v103 = v18;
        }

        else
        {
          v103 = @"(null)";
        }

        v101 = v103;
        v102 = [v139[26] delegate];
        v99 = v102;
        v100 = [v139[26] scanError];
        v97 = v100;
        v98 = [v139[26] preferredStatefulDescriptor];
        v95 = v98;
        v96 = [v139[26] alternateStatefulDescriptor];
        v93 = v96;
        v94 = [v139[26] currentDownload];
        v92 = v94;
        v162 = 0;
        v161 = 0;
        v160 = 0;
        if (v92)
        {
          v91 = [v139[26] currentDownload];
          v19 = v91;
          v139[7] = v19;
          v162 = 1;
          v90 = [v19 descriptor];
          v20 = v90;
          v139[5] = v20;
          v161 = 1;
          v89 = [v20 updateName];
          v21 = v89;
          v139[3] = v21;
          v160 = 1;
          v88 = v21;
        }

        else
        {
          v88 = @"(null)";
        }

        v86 = v88;
        v87 = [v139[26] currentDownload];
        v84 = v87;
        v85 = [v139[26] currentUpdateOperationType];
        v83 = SUUIUpdateContinuousOperationTypeToString();
        v80 = v83;
        v22 = MEMORY[0x277D82BE0](v80);
        v23 = v139;
        v81 = v22;
        v139[1] = v22;
        v82 = [v23[26] isTargetedUpdateScheduledForAutoInstall];
        v182 = v82;
        if (v82)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        v79 = v24;
        v25 = v24;
        v76 = v79;
        v26 = MEMORY[0x277D82BE0](v76);
        v27 = v139;
        v77 = v26;
        *v139 = v26;
        v78 = [v27[26] hidingPreferredDescriptor];
        v181 = v78;
        if (v78)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        v75 = v28;
        v29 = v28;
        v72 = v75;
        v73 = MEMORY[0x277D82BE0](v72);
        v157 = v73;
        v74 = [v139[26] hiddenPreferredStatefulDescriptor];
        v70 = v74;
        v71 = [v70 updateName];
        v67 = v71;
        v68 = MEMORY[0x277D82BE0](v67);
        v156 = v68;
        v69 = [v139[26] hidingAlternateDescriptor];
        v180 = v69;
        if (v69)
        {
          v30 = @"YES";
        }

        else
        {
          v30 = @"NO";
        }

        v66 = v30;
        v31 = v30;
        v63 = v66;
        v64 = MEMORY[0x277D82BE0](v63);
        v155 = v64;
        v65 = [v139[26] hiddenAlternateStatefulDescriptor];
        v61 = v65;
        v62 = [v61 updateName];
        v58 = v62;
        v59 = MEMORY[0x277D82BE0](v58);
        v154 = v59;
        v60 = [v139[26] enrolledBetaProgram];
        v57 = v60;
        v152 = 0;
        if (v57)
        {
          v56 = [v139[26] enrolledBetaProgram];
          v153 = v56;
          v152 = 1;
          v55 = [v153 programID];
          v54 = v55;
        }

        else
        {
          v54 = 0;
        }

        v52 = v54;
        v53 = [*(v139[26] + *MEMORY[0x277D64BE8]) count];
        v51 = [v139[26] canEnrollInBetaUpdates];
        v179 = v51;
        if (v51)
        {
          v32 = @"YES";
        }

        else
        {
          v32 = @"NO";
        }

        v50 = v32;
        v33 = v32;
        v44 = v50;
        v45 = MEMORY[0x277D82BE0](v44);
        v151 = v45;
        v46 = *(v139[26] + *MEMORY[0x277D64BF0]);
        v47 = *(v139[26] + *MEMORY[0x277D64BF8]);
        v48 = *(v139[26] + *MEMORY[0x277D64C08]);
        v49 = [*(v139[26] + *MEMORY[0x277D64BE0]) count];
        v42 = &v34;
        v43 = v183;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v183, v141, v118, v113, v110, v111, v101, v99, v97, v95, v93, v86, v84, v81, v77, v73, v68, v64, v59, v52, v53, v45, v46, v47, v48, v49);
        _os_log_impl(&dword_26B0B9000, v116, v117[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCould not resolve the targeted update from the current download. Skipping on the downloadProgressDidChange event and performing a new scan instead.", v43, 0xFCu);
        MEMORY[0x277D82BD8](v44);
        if (v152)
        {
          MEMORY[0x277D82BD8](v153);
        }

        MEMORY[0x277D82BD8](v57);
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v61);
        MEMORY[0x277D82BD8](v63);
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](v70);
        MEMORY[0x277D82BD8](v72);
        MEMORY[0x277D82BD8](v76);
        MEMORY[0x277D82BD8](v80);
        MEMORY[0x277D82BD8](v84);
        if (v160)
        {
          MEMORY[0x277D82BD8](v139[3]);
        }

        if (v161)
        {
          MEMORY[0x277D82BD8](v139[5]);
        }

        if (v162)
        {
          MEMORY[0x277D82BD8](v139[7]);
        }

        MEMORY[0x277D82BD8](v92);
        MEMORY[0x277D82BD8](v93);
        MEMORY[0x277D82BD8](v95);
        MEMORY[0x277D82BD8](v97);
        MEMORY[0x277D82BD8](v99);
        if (v163)
        {
          MEMORY[0x277D82BD8](v139[9]);
        }

        if (v164)
        {
          MEMORY[0x277D82BD8](v139[11]);
        }

        MEMORY[0x277D82BD8](v107);
        MEMORY[0x277D82BD8](v109);
        MEMORY[0x277D82BD8](v112);
        objc_storeStrong(&v151, 0);
        objc_storeStrong(&v154, 0);
        objc_storeStrong(&v155, 0);
        objc_storeStrong(&v156, 0);
        objc_storeStrong(&v157, 0);
        objc_storeStrong(&v158, 0);
        objc_storeStrong(&v159, 0);
        objc_storeStrong(&v165, 0);
        objc_storeStrong(&v166, 0);
      }

      objc_storeStrong(&v168, 0);
      [v139[26] checkForAvailableUpdates:1 forceScan:1];
      v173 = 1;
    }

    objc_storeStrong(&v169, 0);
    objc_storeStrong(&v172, 0);
  }

  objc_storeStrong(v178, 0);
  *MEMORY[0x277D85DE8];
}

void __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke_409(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 56));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:downloadProgressDidChange:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didChangeProgressForDownloadOfDescriptor:*(a1 + 32) withDownload:*(a1 + 40)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5
{
  v288 = &v305;
  obj = a4;
  v290 = a5;
  v291 = "[SUUIMobileStatefulUIManager client:downloadDidFinish:withInstallPolicy:]";
  v354 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v342 = 0;
  objc_storeStrong(&v342, obj);
  v341 = 0;
  objc_storeStrong(&v341, v290);
  v287 = [MEMORY[0x277D64B58] statefulUILogger];
  v285 = v287;
  v286 = [v285 oslog];
  v340 = v286;
  MEMORY[0x277D82BD8](v285);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
  {
    log = v288[48];
    *v282 = type;
    v283 = v288[53];
    v5 = v288[53];
    aClass = objc_opt_class();
    v280 = NSStringFromClass(aClass);
    v277 = v280;
    v6 = MEMORY[0x277D82BE0](v277);
    v7 = v288;
    v278 = v6;
    v288[46] = v6;
    v8 = *(v7[53] + *MEMORY[0x277D64C00]);
    v279 = SUUIStatefulUIStateToString();
    v274 = v279;
    v9 = MEMORY[0x277D82BE0](v274);
    v10 = v288;
    v275 = v9;
    v288[45] = v9;
    v276 = [v10[53] currentState];
    v273 = [v288[53] delegate];
    v272 = v273;
    v336 = 0;
    v335 = 0;
    if (v272)
    {
      v271 = [v288[53] delegate];
      v288[44] = v271;
      v336 = 1;
      v270 = objc_opt_class();
      v269 = NSStringFromClass(v270);
      v11 = v269;
      v288[42] = v11;
      v335 = 1;
      v268 = v11;
    }

    else
    {
      v268 = @"(null)";
    }

    v266 = v268;
    v267 = [v288[53] delegate];
    v264 = v267;
    v265 = [v288[53] scanError];
    v262 = v265;
    v263 = [v288[53] preferredStatefulDescriptor];
    v260 = v263;
    v261 = [v288[53] alternateStatefulDescriptor];
    v258 = v261;
    v259 = [v288[53] currentDownload];
    v257 = v259;
    v334 = 0;
    v333 = 0;
    v332 = 0;
    if (v257)
    {
      v256 = [v288[53] currentDownload];
      v12 = v256;
      v288[40] = v12;
      v334 = 1;
      v255 = [v12 descriptor];
      v13 = v255;
      v288[38] = v13;
      v333 = 1;
      v254 = [v13 updateName];
      v14 = v254;
      v288[36] = v14;
      v332 = 1;
      v253 = v14;
    }

    else
    {
      v253 = @"(null)";
    }

    v251 = v253;
    v252 = [v288[53] currentDownload];
    v249 = v252;
    v250 = [v288[53] currentUpdateOperationType];
    v248 = SUUIUpdateContinuousOperationTypeToString();
    v245 = v248;
    v15 = MEMORY[0x277D82BE0](v245);
    v16 = v288;
    v246 = v15;
    v288[34] = v15;
    v247 = [v16[53] isTargetedUpdateScheduledForAutoInstall];
    v351 = v247;
    if (v247)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v244 = v17;
    v18 = v17;
    v241 = v244;
    v19 = MEMORY[0x277D82BE0](v241);
    v20 = v288;
    v242 = v19;
    v288[33] = v19;
    v243 = [v20[53] hidingPreferredDescriptor];
    v350 = v243;
    if (v243)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v240 = v21;
    v22 = v21;
    v237 = v240;
    v23 = MEMORY[0x277D82BE0](v237);
    v24 = v288;
    v238 = v23;
    v288[32] = v23;
    v239 = [v24[53] hiddenPreferredStatefulDescriptor];
    v235 = v239;
    v236 = [v235 updateName];
    v232 = v236;
    v25 = MEMORY[0x277D82BE0](v232);
    v26 = v288;
    v233 = v25;
    v288[31] = v25;
    v234 = [v26[53] hidingAlternateDescriptor];
    v349 = v234;
    if (v234)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v231 = v27;
    v28 = v27;
    v228 = v231;
    v29 = MEMORY[0x277D82BE0](v228);
    v30 = v288;
    v229 = v29;
    v288[30] = v29;
    v230 = [v30[53] hiddenAlternateStatefulDescriptor];
    v226 = v230;
    v227 = [v226 updateName];
    v223 = v227;
    v31 = MEMORY[0x277D82BE0](v223);
    v32 = v288;
    v224 = v31;
    v288[29] = v31;
    v225 = [v32[53] enrolledBetaProgram];
    v222 = v225;
    v325 = 0;
    if (v222)
    {
      v221 = [v288[53] enrolledBetaProgram];
      v33 = v221;
      v288[28] = v33;
      v325 = 1;
      v220 = [v33 programID];
      v219 = v220;
    }

    else
    {
      v219 = 0;
    }

    v217 = v219;
    v218 = [*(v288[53] + *MEMORY[0x277D64BE8]) count];
    v216 = [v288[53] canEnrollInBetaUpdates];
    v348 = v216;
    if (v216)
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    v215 = v34;
    v35 = v34;
    v209 = v215;
    v36 = MEMORY[0x277D82BE0](v209);
    v37 = v288;
    v210 = v36;
    v288[26] = v36;
    v211 = *(v37[53] + *MEMORY[0x277D64BF0]);
    v212 = *(v37[53] + *MEMORY[0x277D64BF8]);
    v213 = *(v37[53] + *MEMORY[0x277D64C08]);
    v214 = [*(v37[53] + *MEMORY[0x277D64BE0]) count];
    v208 = [v288[50] descriptor];
    v206 = v208;
    v207 = [v206 humanReadableUpdateName];
    v38 = v229;
    v39 = v233;
    v40 = v238;
    v41 = v242;
    v42 = v246;
    v43 = v249;
    v44 = v251;
    v45 = v258;
    v46 = v260;
    v47 = v262;
    v205 = v207;
    v48 = MEMORY[0x277D82BE0](v205);
    v49 = v288;
    v50 = v224;
    v51 = v217;
    v52 = v218;
    v53 = v210;
    v54 = v211;
    v55 = v212;
    v56 = v213;
    v57 = v214;
    v58 = v291;
    v59 = v283;
    v60 = v278;
    v61 = v275;
    v62 = v276;
    v63 = v266;
    v64 = v264;
    v288[25] = v48;
    v65 = v49[50];
    v203 = v104;
    buf = v353;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(v353, v58, v59, v60, v61, v62, v63, v64, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v50, v51, v52, v53, v54, v55, v56, v57, v48, v65);
    _os_log_impl(&dword_26B0B9000, log, v282[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to download an update targeting %{public}@: (%p)", buf, 0x110u);
    MEMORY[0x277D82BD8](v205);
    MEMORY[0x277D82BD8](v206);
    MEMORY[0x277D82BD8](v209);
    if (v325)
    {
      MEMORY[0x277D82BD8](v288[28]);
    }

    MEMORY[0x277D82BD8](v222);
    MEMORY[0x277D82BD8](v223);
    MEMORY[0x277D82BD8](v226);
    MEMORY[0x277D82BD8](v228);
    MEMORY[0x277D82BD8](v232);
    MEMORY[0x277D82BD8](v235);
    MEMORY[0x277D82BD8](v237);
    MEMORY[0x277D82BD8](v241);
    MEMORY[0x277D82BD8](v245);
    MEMORY[0x277D82BD8](v249);
    if (v332)
    {
      MEMORY[0x277D82BD8](v288[36]);
    }

    if (v333)
    {
      MEMORY[0x277D82BD8](v288[38]);
    }

    if (v334)
    {
      MEMORY[0x277D82BD8](v288[40]);
    }

    MEMORY[0x277D82BD8](v257);
    MEMORY[0x277D82BD8](v258);
    MEMORY[0x277D82BD8](v260);
    MEMORY[0x277D82BD8](v262);
    MEMORY[0x277D82BD8](v264);
    if (v335)
    {
      MEMORY[0x277D82BD8](v288[42]);
    }

    if (v336)
    {
      MEMORY[0x277D82BD8](v288[44]);
    }

    MEMORY[0x277D82BD8](v272);
    MEMORY[0x277D82BD8](v274);
    MEMORY[0x277D82BD8](v277);
    objc_storeStrong(&v323, 0);
    objc_storeStrong(&v324, 0);
    objc_storeStrong(&v326, 0);
    objc_storeStrong(&v327, 0);
    objc_storeStrong(&v328, 0);
    objc_storeStrong(&v329, 0);
    objc_storeStrong(&v330, 0);
    objc_storeStrong(&v331, 0);
    objc_storeStrong(&v337, 0);
    objc_storeStrong(&v338, 0);
  }

  objc_storeStrong(&v340, 0);
  if (v288[50])
  {
    v202 = [v288[53] currentUpdateOperation];
    v201 = v202;
    MEMORY[0x277D82BD8](v201);
    if (v201)
    {
      v322 = 1;
    }

    else
    {
      v66 = v288[50];
      v319 = 0;
      if (v66)
      {
        v200 = [SUUIMobileDownload alloc];
        v199 = [(SUUIMobileDownload *)v200 initWithDownload:v288[50]];
        v67 = v199;
        v288[21] = v199;
        v319 = 1;
        v198 = v67;
      }

      else
      {
        v198 = 0;
      }

      v68 = MEMORY[0x277D82BE0](v198);
      v288[22] = v68;
      if (v319)
      {
        MEMORY[0x277D82BD8](v288[21]);
      }

      v197 = [v288[22] conformsToProtocol:&unk_287BBC258];
      if ((v197 & 1) == 0)
      {
        v196 = NSStringFromProtocol(&unk_287BBC258);
        v69 = v196;
        v104[0] = @"SUUIMobileDownloadFromSUDownload(download)";
        v104[1] = v69;
        _suui_precondition_failure_with_format();
        __break(1u);
      }

      v195 = &v320;
      v70 = MEMORY[0x277D82BE0](v288[22]);
      v71 = v195;
      v288[19] = v70;
      objc_storeStrong(v71, 0);
      v72 = v288;
      v288[23] = v288[19];
      v194 = [v72[53] targetedUpdateForDownload:v72[23]];
      v73 = v194;
      v74 = v288;
      v288[18] = v73;
      if (v74[18])
      {
        objc_initWeak(&from, v288[53]);
        v108 = v288[53];
        v109 = v288[23];
        v111 = &v292;
        v292 = MEMORY[0x277D85DD0];
        v293 = -1073741824;
        v294 = 0;
        v295 = __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke;
        v296 = &unk_279CCF790;
        v110 = &v297;
        v297 = MEMORY[0x277D82BE0](v288[53]);
        v112 = v111 + 7;
        objc_copyWeak(v111 + 7, &from);
        v107 = &v292;
        v298[3] = v288[52];
        v105 = v298;
        v298[0] = MEMORY[0x277D82BE0](v288[18]);
        v106 = (v107 + 6);
        v298[1] = MEMORY[0x277D82BE0](v288[23]);
        [v108 performPostUpdateOperationRefreshWithDownload:v109 error:0 completionHandler:v107];
        objc_storeStrong(v106, 0);
        objc_storeStrong(v105, 0);
        objc_destroyWeak(v112);
        objc_storeStrong(v110, 0);
        objc_destroyWeak(&from);
        v322 = 0;
      }

      else
      {
        v193 = [MEMORY[0x277D64B58] statefulUILogger];
        v191 = v193;
        v192 = [v191 oslog];
        v75 = v192;
        v76 = v191;
        v288[17] = v75;
        MEMORY[0x277D82BD8](v76);
        v316 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v288[17], OS_LOG_TYPE_DEFAULT))
        {
          v187 = v288[17];
          *v188 = v316;
          v189 = v288[53];
          v77 = v288[53];
          v190 = objc_opt_class();
          v186 = NSStringFromClass(v190);
          v183 = v186;
          v78 = MEMORY[0x277D82BE0](v183);
          v79 = v288;
          v184 = v78;
          v288[15] = v78;
          v80 = *(v79[53] + *MEMORY[0x277D64C00]);
          v185 = SUUIStatefulUIStateToString();
          v180 = v185;
          v81 = MEMORY[0x277D82BE0](v180);
          v82 = v288;
          v181 = v81;
          v288[14] = v81;
          v182 = [v82[53] currentState];
          v179 = [v288[53] delegate];
          v178 = v179;
          v313 = 0;
          v312 = 0;
          if (v178)
          {
            v177 = [v288[53] delegate];
            v83 = v177;
            v288[13] = v83;
            v313 = 1;
            v176 = objc_opt_class();
            v175 = NSStringFromClass(v176);
            v84 = v175;
            v288[11] = v84;
            v312 = 1;
            v174 = v84;
          }

          else
          {
            v174 = @"(null)";
          }

          v172 = v174;
          v173 = [v288[53] delegate];
          v170 = v173;
          v171 = [v288[53] scanError];
          v168 = v171;
          v169 = [v288[53] preferredStatefulDescriptor];
          v166 = v169;
          v167 = [v288[53] alternateStatefulDescriptor];
          v164 = v167;
          v165 = [v288[53] currentDownload];
          v163 = v165;
          v311 = 0;
          v310 = 0;
          v309 = 0;
          if (v163)
          {
            v162 = [v288[53] currentDownload];
            v85 = v162;
            v288[9] = v85;
            v311 = 1;
            v161 = [v85 descriptor];
            v86 = v161;
            v288[7] = v86;
            v310 = 1;
            v160 = [v86 updateName];
            v87 = v160;
            v288[5] = v87;
            v309 = 1;
            v159 = v87;
          }

          else
          {
            v159 = @"(null)";
          }

          v157 = v159;
          v158 = [v288[53] currentDownload];
          v155 = v158;
          v156 = [v288[53] currentUpdateOperationType];
          v154 = SUUIUpdateContinuousOperationTypeToString();
          v151 = v154;
          v88 = MEMORY[0x277D82BE0](v151);
          v89 = v288;
          v152 = v88;
          v288[3] = v88;
          v153 = [v89[53] isTargetedUpdateScheduledForAutoInstall];
          v347 = v153;
          if (v153)
          {
            v90 = @"YES";
          }

          else
          {
            v90 = @"NO";
          }

          v150 = v90;
          v91 = v90;
          v147 = v150;
          v92 = MEMORY[0x277D82BE0](v147);
          v93 = v288;
          v148 = v92;
          v288[2] = v92;
          v149 = [v93[53] hidingPreferredDescriptor];
          v346 = v149;
          if (v149)
          {
            v94 = @"YES";
          }

          else
          {
            v94 = @"NO";
          }

          v146 = v94;
          v95 = v94;
          v143 = v146;
          v96 = MEMORY[0x277D82BE0](v143);
          v97 = v288;
          v144 = v96;
          v288[1] = v96;
          v145 = [v97[53] hiddenPreferredStatefulDescriptor];
          v141 = v145;
          v142 = [v141 updateName];
          v138 = v142;
          v98 = MEMORY[0x277D82BE0](v138);
          v99 = v288;
          v139 = v98;
          *v288 = v98;
          v140 = [v99[53] hidingAlternateDescriptor];
          v345 = v140;
          if (v140)
          {
            v100 = @"YES";
          }

          else
          {
            v100 = @"NO";
          }

          v137 = v100;
          v101 = v100;
          v134 = v137;
          v135 = MEMORY[0x277D82BE0](v134);
          v304 = v135;
          v136 = [v288[53] hiddenAlternateStatefulDescriptor];
          v132 = v136;
          v133 = [v132 updateName];
          v129 = v133;
          v130 = MEMORY[0x277D82BE0](v129);
          v303 = v130;
          v131 = [v288[53] enrolledBetaProgram];
          v128 = v131;
          v301 = 0;
          if (v128)
          {
            v127 = [v288[53] enrolledBetaProgram];
            v302 = v127;
            v301 = 1;
            v126 = [v302 programID];
            v125 = v126;
          }

          else
          {
            v125 = 0;
          }

          v123 = v125;
          v124 = [*(v288[53] + *MEMORY[0x277D64BE8]) count];
          v122 = [v288[53] canEnrollInBetaUpdates];
          v344 = v122;
          if (v122)
          {
            v102 = @"YES";
          }

          else
          {
            v102 = @"NO";
          }

          v121 = v102;
          v103 = v102;
          v115 = v121;
          v116 = MEMORY[0x277D82BE0](v115);
          v300 = v116;
          v117 = *(v288[53] + *MEMORY[0x277D64BF0]);
          v118 = *(v288[53] + *MEMORY[0x277D64BF8]);
          v119 = *(v288[53] + *MEMORY[0x277D64C08]);
          v120 = [*(v288[53] + *MEMORY[0x277D64BE0]) count];
          v113 = v104;
          v114 = v352;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v352, v291, v189, v184, v181, v182, v172, v170, v168, v166, v164, v157, v155, v152, v148, v144, v139, v135, v130, v123, v124, v116, v117, v118, v119, v120);
          _os_log_impl(&dword_26B0B9000, v187, v188[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCould not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v114, 0xFCu);
          MEMORY[0x277D82BD8](v115);
          if (v301)
          {
            MEMORY[0x277D82BD8](v302);
          }

          MEMORY[0x277D82BD8](v128);
          MEMORY[0x277D82BD8](v129);
          MEMORY[0x277D82BD8](v132);
          MEMORY[0x277D82BD8](v134);
          MEMORY[0x277D82BD8](v138);
          MEMORY[0x277D82BD8](v141);
          MEMORY[0x277D82BD8](v143);
          MEMORY[0x277D82BD8](v147);
          MEMORY[0x277D82BD8](v151);
          MEMORY[0x277D82BD8](v155);
          if (v309)
          {
            MEMORY[0x277D82BD8](v288[5]);
          }

          if (v310)
          {
            MEMORY[0x277D82BD8](v288[7]);
          }

          if (v311)
          {
            MEMORY[0x277D82BD8](v288[9]);
          }

          MEMORY[0x277D82BD8](v163);
          MEMORY[0x277D82BD8](v164);
          MEMORY[0x277D82BD8](v166);
          MEMORY[0x277D82BD8](v168);
          MEMORY[0x277D82BD8](v170);
          if (v312)
          {
            MEMORY[0x277D82BD8](v288[11]);
          }

          if (v313)
          {
            MEMORY[0x277D82BD8](v288[13]);
          }

          MEMORY[0x277D82BD8](v178);
          MEMORY[0x277D82BD8](v180);
          MEMORY[0x277D82BD8](v183);
          objc_storeStrong(&v300, 0);
          objc_storeStrong(&v303, 0);
          objc_storeStrong(&v304, 0);
          objc_storeStrong(&v305, 0);
          objc_storeStrong(&v306, 0);
          objc_storeStrong(&v307, 0);
          objc_storeStrong(&v308, 0);
          objc_storeStrong(&v314, 0);
          objc_storeStrong(&v315, 0);
        }

        objc_storeStrong(&v317, 0);
        [v288[53] checkForAvailableUpdates:1 forceScan:1];
        v322 = 1;
      }

      objc_storeStrong(&v318, 0);
      objc_storeStrong(&v321, 0);
    }
  }

  else
  {
    [v288[53] checkForAvailableUpdates:0 forceScan:1];
    v322 = 1;
  }

  objc_storeStrong(&v341, 0);
  objc_storeStrong(&v342, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke(uint64_t a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[2] = a1;
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke_2;
  v8 = &unk_279CCC7B0;
  objc_copyWeak(v11, (a1 + 56));
  v11[1] = *(a1 + 64);
  v9 = MEMORY[0x277D82BE0](*(a1 + 40));
  v10 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v3 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v11);
}

void __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 56));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:downloadDidFinish:withInstallPolicy:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didFinishDownloadForDescriptor:*(a1 + 32) withDownload:*(a1 + 40)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4
{
  obj = a4;
  v73 = "[SUUIMobileStatefulUIManager client:downloadWasInvalidatedForNewUpdatesAvailable:]";
  v106 = *MEMORY[0x277D85DE8];
  v100 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v98 = 0;
  objc_storeStrong(&v98, obj);
  v72 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v72 oslog];
  MEMORY[0x277D82BD8](v72);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v64 = type;
    v65 = v100;
    v4 = objc_opt_class();
    v66 = NSStringFromClass(v4);
    v67 = MEMORY[0x277D82BE0](v66);
    v95 = v67;
    v5 = *(&v100->super.super.isa + *MEMORY[0x277D64C00]);
    v68 = SUUIStatefulUIStateToString();
    v69 = MEMORY[0x277D82BE0](v68);
    v94 = v69;
    v70 = [(SUUIStatefulUIManager *)v100 currentState];
    v71 = [(SUUIStatefulUIManager *)v100 delegate];
    v92 = 0;
    v90 = 0;
    if (v71)
    {
      v93 = [(SUUIStatefulUIManager *)v100 delegate];
      v61 = 1;
      v92 = 1;
      v6 = objc_opt_class();
      v91 = NSStringFromClass(v6);
      v90 = 1;
      v62 = v91;
    }

    else
    {
      v62 = @"(null)";
    }

    v55 = v62;
    v56 = [(SUUIStatefulUIManager *)v100 delegate];
    v57 = [(SUUIStatefulUIManager *)v100 scanError];
    v58 = [(SUUIStatefulUIManager *)v100 preferredStatefulDescriptor];
    v59 = [(SUUIStatefulUIManager *)v100 alternateStatefulDescriptor];
    v60 = [(SUUIStatefulUIManager *)v100 currentDownload];
    v88 = 0;
    v86 = 0;
    v84 = 0;
    if (v60)
    {
      v89 = [(SUUIStatefulUIManager *)v100 currentDownload];
      v53 = 1;
      v88 = 1;
      v87 = [(SUUIDownload *)v89 descriptor];
      v86 = 1;
      v85 = [v87 updateName];
      v84 = 1;
      v54 = v85;
    }

    else
    {
      v54 = @"(null)";
    }

    v30 = v54;
    v31 = [(SUUIStatefulUIManager *)v100 currentDownload];
    [(SUUIStatefulUIManager *)v100 currentUpdateOperationType];
    v32 = SUUIUpdateContinuousOperationTypeToString();
    v33 = MEMORY[0x277D82BE0](v32);
    v83 = v33;
    v104 = [(SUUIMobileStatefulUIManager *)v100 isTargetedUpdateScheduledForAutoInstall];
    v43 = @"NO";
    v44 = @"YES";
    v51 = 1;
    if (v104)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v34 = v7;
    v8 = v7;
    v35 = v34;
    v36 = MEMORY[0x277D82BE0](v35);
    v82 = v36;
    if ([(SUUIStatefulUIManager *)v100 hidingPreferredDescriptor])
    {
      v9 = v44;
    }

    else
    {
      v9 = v43;
    }

    v37 = v9;
    v10 = v9;
    v38 = v37;
    v39 = MEMORY[0x277D82BE0](v38);
    v81 = v39;
    v40 = [(SUUIStatefulUIManager *)v100 hiddenPreferredStatefulDescriptor];
    v41 = [(SUUIStatefulDescriptor *)v40 updateName];
    v42 = MEMORY[0x277D82BE0](v41);
    v80 = v42;
    if ([(SUUIStatefulUIManager *)v100 hidingAlternateDescriptor])
    {
      v11 = v44;
    }

    else
    {
      v11 = v43;
    }

    v45 = v11;
    v12 = v11;
    v46 = v45;
    v47 = MEMORY[0x277D82BE0](v46);
    v79 = v47;
    v48 = [(SUUIStatefulUIManager *)v100 hiddenAlternateStatefulDescriptor];
    v49 = [(SUUIStatefulDescriptor *)v48 updateName];
    v50 = MEMORY[0x277D82BE0](v49);
    v78 = v50;
    v52 = [(SUUIStatefulUIManager *)v100 enrolledBetaProgram];
    v76 = 0;
    if (v52)
    {
      v77 = [(SUUIStatefulUIManager *)v100 enrolledBetaProgram];
      v76 = 1;
      v29 = [(SDBetaProgram *)v77 programID];
    }

    else
    {
      v29 = 0;
    }

    v20 = v29;
    v21 = [*(&v100->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)v100 canEnrollInBetaUpdates])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v19 = v13;
    v14 = v13;
    v28 = v19;
    v22 = MEMORY[0x277D82BE0](v28);
    v75 = v22;
    v23 = *(&v100->super.super.isa + *MEMORY[0x277D64BF0]);
    v24 = *(&v100->super.super.isa + *MEMORY[0x277D64BF8]);
    v25 = *(&v100->super.super.isa + *MEMORY[0x277D64C08]);
    v15 = [*(&v100->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v26 = &v16;
    buf = v105;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v105, v73, v65, v67, v69, v70, v55, v56, v57, v58, v59, v30, v31, v33, v36, v39, v42, v47, v50, v20, v21, v22, v23, v24, v25, v15, v98);
    _os_log_impl(&dword_26B0B9000, log, v64[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload was invalidated for new updates available: %{public}@", buf, 0x106u);
    MEMORY[0x277D82BD8](v28);
    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
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
    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v66);
    v18 = 0;
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v78, v18);
    objc_storeStrong(&v79, v18);
    objc_storeStrong(&v80, v18);
    objc_storeStrong(&v81, v18);
    objc_storeStrong(&v82, v18);
    objc_storeStrong(&v83, v18);
    objc_storeStrong(&v94, v18);
    objc_storeStrong(&v95, v18);
  }

  objc_storeStrong(&oslog, 0);
  [(SUUIStatefulUIManager *)v100 checkForAvailableUpdates:1 forceScan:1];
  v17 = 0;
  objc_storeStrong(&v98, 0);
  objc_storeStrong(location, v17);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5
{
  obj = a4;
  v85 = a5;
  v83 = "[SUUIMobileStatefulUIManager client:downloadDidFail:withError:]";
  v130 = *MEMORY[0x277D85DE8];
  val = self;
  v123 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v121 = 0;
  objc_storeStrong(&v121, obj);
  v120 = 0;
  objc_storeStrong(&v120, v85);
  v82 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v82 oslog];
  MEMORY[0x277D82BD8](v82);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v74 = type;
    v75 = val;
    v5 = objc_opt_class();
    v76 = NSStringFromClass(v5);
    v77 = MEMORY[0x277D82BE0](v76);
    v117 = v77;
    v6 = *(val + *MEMORY[0x277D64C00]);
    v78 = SUUIStatefulUIStateToString();
    v79 = MEMORY[0x277D82BE0](v78);
    v116 = v79;
    v80 = [val currentState];
    v81 = [val delegate];
    v114 = 0;
    v112 = 0;
    if (v81)
    {
      v115 = [val delegate];
      v71 = 1;
      v114 = 1;
      v7 = objc_opt_class();
      v113 = NSStringFromClass(v7);
      v112 = 1;
      v72 = v113;
    }

    else
    {
      v72 = @"(null)";
    }

    v65 = v72;
    v66 = [val delegate];
    v67 = [val scanError];
    v68 = [val preferredStatefulDescriptor];
    v69 = [val alternateStatefulDescriptor];
    v70 = [val currentDownload];
    v110 = 0;
    v108 = 0;
    v106 = 0;
    if (v70)
    {
      v111 = [val currentDownload];
      v63 = 1;
      v110 = 1;
      v109 = [v111 descriptor];
      v108 = 1;
      v107 = [v109 updateName];
      v106 = 1;
      v64 = v107;
    }

    else
    {
      v64 = @"(null)";
    }

    v40 = v64;
    v41 = [val currentDownload];
    [val currentUpdateOperationType];
    v42 = SUUIUpdateContinuousOperationTypeToString();
    v43 = MEMORY[0x277D82BE0](v42);
    v105 = v43;
    v128 = [val isTargetedUpdateScheduledForAutoInstall];
    v53 = @"NO";
    v54 = @"YES";
    v61 = 1;
    if (v128)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v44 = v8;
    v9 = v8;
    v45 = v44;
    v46 = MEMORY[0x277D82BE0](v45);
    v104 = v46;
    v127 = [val hidingPreferredDescriptor];
    if (v127)
    {
      v10 = v54;
    }

    else
    {
      v10 = v53;
    }

    v47 = v10;
    v11 = v10;
    v48 = v47;
    v49 = MEMORY[0x277D82BE0](v48);
    v103 = v49;
    v50 = [val hiddenPreferredStatefulDescriptor];
    v51 = [v50 updateName];
    v52 = MEMORY[0x277D82BE0](v51);
    v102 = v52;
    v126 = [val hidingAlternateDescriptor];
    if (v126)
    {
      v12 = v54;
    }

    else
    {
      v12 = v53;
    }

    v55 = v12;
    v13 = v12;
    v56 = v55;
    v57 = MEMORY[0x277D82BE0](v56);
    v101 = v57;
    v58 = [val hiddenAlternateStatefulDescriptor];
    v59 = [v58 updateName];
    v60 = MEMORY[0x277D82BE0](v59);
    v100 = v60;
    v62 = [val enrolledBetaProgram];
    v98 = 0;
    if (v62)
    {
      v99 = [val enrolledBetaProgram];
      v98 = 1;
      v39 = [v99 programID];
    }

    else
    {
      v39 = 0;
    }

    v27 = v39;
    v28 = [*(val + *MEMORY[0x277D64BE8]) count];
    v125 = [val canEnrollInBetaUpdates];
    if (v125)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v26 = v14;
    v15 = v14;
    v38 = v26;
    v29 = MEMORY[0x277D82BE0](v38);
    v97 = v29;
    v30 = *(val + *MEMORY[0x277D64BF0]);
    v31 = *(val + *MEMORY[0x277D64BF8]);
    v32 = *(val + *MEMORY[0x277D64C08]);
    v33 = [*(val + *MEMORY[0x277D64BE0]) count];
    v37 = [v121 descriptor];
    v36 = [v37 humanReadableUpdateName];
    v96 = MEMORY[0x277D82BE0](v36);
    v34 = &v16;
    buf = v129;
    __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66(v129, v83, v75, v77, v79, v80, v65, v66, v67, v68, v69, v40, v41, v43, v46, v49, v52, v57, v60, v27, v28, v29, v30, v31, v32, v33, v96, v121, v120);
    _os_log_impl(&dword_26B0B9000, log, v74[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload of update %{public}@ (%p) failed: %{public}@", buf, 0x11Au);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
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

    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v66);
    if (v112)
    {
      MEMORY[0x277D82BD8](v113);
    }

    if (v114)
    {
      MEMORY[0x277D82BD8](v115);
    }

    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v76);
    v25 = 0;
    objc_storeStrong(&v96, 0);
    objc_storeStrong(&v97, v25);
    objc_storeStrong(&v100, v25);
    objc_storeStrong(&v101, v25);
    objc_storeStrong(&v102, v25);
    objc_storeStrong(&v103, v25);
    objc_storeStrong(&v104, v25);
    objc_storeStrong(&v105, v25);
    objc_storeStrong(&v116, v25);
    objc_storeStrong(&v117, v25);
  }

  objc_storeStrong(&oslog, 0);
  if (v121)
  {
    from = &v94;
    objc_initWeak(&v94, val);
    queue = *(val + *MEMORY[0x277D64C18]);
    block = &v86;
    v86 = MEMORY[0x277D85DD0];
    v87 = -1073741824;
    v88 = 0;
    v89 = __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke;
    v90 = &unk_279CCC7B0;
    v23 = v93;
    objc_copyWeak(v93, from);
    v93[1] = v123;
    v21 = (block + 32);
    v91 = MEMORY[0x277D82BE0](v121);
    v20 = (block + 40);
    v92 = MEMORY[0x277D82BE0](v120);
    dispatch_async(queue, block);
    v22 = 0;
    objc_storeStrong(v20, 0);
    objc_storeStrong(v21, v22);
    objc_destroyWeak(v23);
    objc_destroyWeak(from);
    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  v17 = 0;
  objc_storeStrong(&v120, 0);
  objc_storeStrong(&v121, v17);
  objc_storeStrong(&location, v17);
  *MEMORY[0x277D85DE8];
}

void __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v56[2] = a1;
  v56[1] = a1;
  v56[0] = objc_loadWeakRetained((a1 + 48));
  v28 = 0;
  if (!v56[0])
  {
    v27 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v55 = [v27 oslog];
    MEMORY[0x277D82BD8](v27);
    v54 = 16;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      log = v55;
      type = v54;
      v26 = NSStringFromSelector(*(a1 + 56));
      v53 = MEMORY[0x277D82BE0](v26);
      __os_log_helper_16_2_2_8_32_8_66(v60, "[SUUIMobileStatefulUIManager client:downloadDidFail:withError:]_block_invoke", v53);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v60, 0x16u);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v53, 0);
    }

    objc_storeStrong(&v55, 0);
    v52 = 1;
    v28 = 1;
  }

  if (v28)
  {
    v51 = 1;
  }

  else
  {
    v1 = *(a1 + 32);
    v47 = 0;
    if (v1)
    {
      v48 = [[SUUIMobileDownload alloc] initWithDownload:*(a1 + 32)];
      v47 = 1;
      v2 = MEMORY[0x277D82BE0](v48);
    }

    else
    {
      v2 = MEMORY[0x277D82BE0](0);
    }

    v49 = v2;
    if (v47)
    {
      MEMORY[0x277D82BD8](v48);
    }

    if (([v49 conformsToProtocol:&unk_287BBC258] & 1) == 0)
    {
      v7 = @"SUUIMobileDownloadFromSUDownload(download)";
      v8 = NSStringFromProtocol(&unk_287BBC258);
      _suui_precondition_failure_with_format();
    }

    v46 = MEMORY[0x277D82BE0](v49);
    objc_storeStrong(&v49, 0);
    v50 = v46;
    v45 = [v56[0] targetedUpdateForDownload:v46];
    v44 = 1;
    v43 = 1;
    v22 = [*(a1 + 40) domain];
    v23 = 0;
    if ([v22 isEqualToString:*MEMORY[0x277D64910]])
    {
      v23 = [*(a1 + 40) code] == 16;
    }

    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      v19 = [*(a1 + 40) userInfo];
      v20 = [v19 objectForKey:*MEMORY[0x277D64A90]];
      v21 = 0;
      if ([v20 BOOLValue])
      {
        v21 = [v56[0] hasHiddenDescriptors];
      }

      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v19);
      if (v21)
      {
        v44 = 0;
      }

      else
      {
        v43 = 0;
      }
    }

    v18 = [MEMORY[0x277D64B58] statefulUILogger];
    v42 = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v42;
      v15 = v41;
      v12 = v56[0];
      v58 = v44 & 1;
      if (v44)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v10 = v3;
      v4 = v3;
      v17 = v10;
      v13 = MEMORY[0x277D82BE0](v17);
      v40 = v13;
      v57 = v43 & 1;
      if (v43)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v11 = v5;
      v6 = v5;
      v16 = v11;
      v39 = MEMORY[0x277D82BE0](v16);
      __os_log_helper_16_2_4_8_32_8_0_8_66_8_66(v59, "[SUUIMobileStatefulUIManager client:downloadDidFail:withError:]_block_invoke", v12, v13, v39);
      _os_log_impl(&dword_26B0B9000, v14, v15, "%s [%p]: Cleaning up the manager state after a download failure.\n\t- fullScan: %{public}@\n\t- bgScan: %{public}@", v59, 0x2Au);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    [*(v56[0] + 35) destroyInstallationKeybag];
    if (v44)
    {
      if (v43)
      {
        [v56[0] checkForUpdatesInBackground:1 forceScan:1];
      }

      else
      {
        [v56[0] checkForAvailableUpdates:1 forceScan:1];
      }
    }

    else
    {
      [v56[0] clearPastDownload:v50];
    }

    v9 = v56[0];
    v30 = MEMORY[0x277D85DD0];
    v31 = -1073741824;
    v32 = 0;
    v33 = __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke_412;
    v34 = &unk_279CCF7B8;
    v35 = MEMORY[0x277D82BE0](v56[0]);
    v36 = MEMORY[0x277D82BE0](v45);
    v37 = MEMORY[0x277D82BE0](*(a1 + 40));
    v38 = MEMORY[0x277D82BE0](v50);
    [v9 executeOperationOnDelegate:sel_statefulUIManager_didFailToDownloadUpdateForDescriptor_withError_download_ usingBlock:&v30];
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v50, 0);
    v51 = 0;
  }

  objc_storeStrong(v56, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke_412(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  v4 = v1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = 0;
  if (*(a1 + 48))
  {
    v8 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:*(a1 + 48)];
    v7 = 1;
    [v4 statefulUIManager:v5 didFailToDownloadUpdateForDescriptor:v6 withError:v8 download:*(a1 + 56)];
  }

  else
  {
    [v1 statefulUIManager:v5 didFailToDownloadUpdateForDescriptor:v6 withError:0 download:*(a1 + 56)];
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  return MEMORY[0x277D82BD8](v4);
}

- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5
{
  obj = a4;
  v91 = a5;
  v89 = "[SUUIMobileStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]";
  v136 = *MEMORY[0x277D85DE8];
  val = self;
  v128 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v126 = 0;
  objc_storeStrong(&v126, obj);
  v125 = v91;
  v88 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v88 oslog];
  MEMORY[0x277D82BD8](v88);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v80 = type;
    v81 = val;
    v5 = objc_opt_class();
    v82 = NSStringFromClass(v5);
    v83 = MEMORY[0x277D82BE0](v82);
    v122 = v83;
    v6 = *(val + *MEMORY[0x277D64C00]);
    v84 = SUUIStatefulUIStateToString();
    v85 = MEMORY[0x277D82BE0](v84);
    v121 = v85;
    v86 = [val currentState];
    v87 = [val delegate];
    v119 = 0;
    v117 = 0;
    if (v87)
    {
      v120 = [val delegate];
      v77 = 1;
      v119 = 1;
      v7 = objc_opt_class();
      v118 = NSStringFromClass(v7);
      v117 = 1;
      v78 = v118;
    }

    else
    {
      v78 = @"(null)";
    }

    v71 = v78;
    v72 = [val delegate];
    v73 = [val scanError];
    v74 = [val preferredStatefulDescriptor];
    v75 = [val alternateStatefulDescriptor];
    v76 = [val currentDownload];
    v115 = 0;
    v113 = 0;
    v111 = 0;
    if (v76)
    {
      v116 = [val currentDownload];
      v69 = 1;
      v115 = 1;
      v114 = [v116 descriptor];
      v113 = 1;
      v112 = [v114 updateName];
      v111 = 1;
      v70 = v112;
    }

    else
    {
      v70 = @"(null)";
    }

    v46 = v70;
    v47 = [val currentDownload];
    [val currentUpdateOperationType];
    v48 = SUUIUpdateContinuousOperationTypeToString();
    v49 = MEMORY[0x277D82BE0](v48);
    v110 = v49;
    v134 = [val isTargetedUpdateScheduledForAutoInstall];
    v59 = @"NO";
    v60 = @"YES";
    v67 = 1;
    if (v134)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v50 = v8;
    v9 = v8;
    v51 = v50;
    v52 = MEMORY[0x277D82BE0](v51);
    v109 = v52;
    v133 = [val hidingPreferredDescriptor];
    if (v133)
    {
      v10 = v60;
    }

    else
    {
      v10 = v59;
    }

    v53 = v10;
    v11 = v10;
    v54 = v53;
    v55 = MEMORY[0x277D82BE0](v54);
    v108 = v55;
    v56 = [val hiddenPreferredStatefulDescriptor];
    v57 = [v56 updateName];
    v58 = MEMORY[0x277D82BE0](v57);
    v107 = v58;
    v132 = [val hidingAlternateDescriptor];
    if (v132)
    {
      v12 = v60;
    }

    else
    {
      v12 = v59;
    }

    v61 = v12;
    v13 = v12;
    v62 = v61;
    v63 = MEMORY[0x277D82BE0](v62);
    v106 = v63;
    v64 = [val hiddenAlternateStatefulDescriptor];
    v65 = [v64 updateName];
    v66 = MEMORY[0x277D82BE0](v65);
    v105 = v66;
    v68 = [val enrolledBetaProgram];
    v103 = 0;
    if (v68)
    {
      v104 = [val enrolledBetaProgram];
      v103 = 1;
      v45 = [v104 programID];
    }

    else
    {
      v45 = 0;
    }

    v30 = v45;
    v31 = [*(val + *MEMORY[0x277D64BE8]) count];
    v131 = [val canEnrollInBetaUpdates];
    v27 = @"NO";
    v28 = @"YES";
    v26 = 1;
    if (v131)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v25 = v14;
    v15 = v14;
    v44 = v25;
    v32 = MEMORY[0x277D82BE0](v44);
    v102 = v32;
    v33 = *(val + *MEMORY[0x277D64BF0]);
    v34 = *(val + *MEMORY[0x277D64BF8]);
    v35 = *(val + *MEMORY[0x277D64C08]);
    v36 = [*(val + *MEMORY[0x277D64BE0]) count];
    v43 = [v126 descriptor];
    v42 = [v43 humanReadableUpdateName];
    v37 = MEMORY[0x277D82BE0](v42);
    v101 = v37;
    v38 = v126;
    v130 = v125 & v26;
    if (v125 & v26)
    {
      v16 = v28;
    }

    else
    {
      v16 = v27;
    }

    v29 = v16;
    v17 = v16;
    v41 = v29;
    v100 = MEMORY[0x277D82BE0](v41);
    v39 = &v18;
    buf = v135;
    __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66(v135, v89, v81, v83, v85, v86, v71, v72, v73, v74, v75, v46, v47, v49, v52, v55, v58, v63, v66, v30, v31, v32, v33, v34, v35, v36, v37, v38, v100);
    _os_log_impl(&dword_26B0B9000, log, v80[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nClearing space for update %{public}@ (%p): %{public}@", buf, 0x11Au);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    if (v111)
    {
      MEMORY[0x277D82BD8](v112);
    }

    if (v113)
    {
      MEMORY[0x277D82BD8](v114);
    }

    if (v115)
    {
      MEMORY[0x277D82BD8](v116);
    }

    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v72);
    if (v117)
    {
      MEMORY[0x277D82BD8](v118);
    }

    if (v119)
    {
      MEMORY[0x277D82BD8](v120);
    }

    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v82);
    v24 = 0;
    objc_storeStrong(&v100, 0);
    objc_storeStrong(&v101, v24);
    objc_storeStrong(&v102, v24);
    objc_storeStrong(&v105, v24);
    objc_storeStrong(&v106, v24);
    objc_storeStrong(&v107, v24);
    objc_storeStrong(&v108, v24);
    objc_storeStrong(&v109, v24);
    objc_storeStrong(&v110, v24);
    objc_storeStrong(&v121, v24);
    objc_storeStrong(&v122, v24);
  }

  objc_storeStrong(&oslog, 0);
  from = &v99;
  objc_initWeak(&v99, val);
  queue = *(val + *MEMORY[0x277D64C18]);
  block = &v92;
  v92 = MEMORY[0x277D85DD0];
  v93 = -1073741824;
  v94 = 0;
  v95 = __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke;
  v96 = &unk_279CCF7E0;
  v21 = v97;
  objc_copyWeak(v97, from);
  v97[1] = v128;
  v98 = v125;
  dispatch_async(queue, block);
  objc_destroyWeak(v21);
  objc_destroyWeak(from);
  v23 = 0;
  objc_storeStrong(&v126, 0);
  objc_storeStrong(&location, v23);
  *MEMORY[0x277D85DE8];
}

void __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 32));
  v4 = 0;
  if (!v17[0])
  {
    v3 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v16 = [v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v2 = NSStringFromSelector(*(a1 + 40));
      location = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v18, "[SUUIMobileStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v16, v15, "%s: Self is nil in %{public}@. Stopping.", v18, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v4 = 1;
  }

  if (v4)
  {
    v12 = 1;
  }

  else
  {
    [v17[0] setClearingSpaceForDownload:*(a1 + 48) & 1];
    v1 = v17[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke_415;
    v10 = &unk_279CCC6E8;
    objc_copyWeak(v11, (a1 + 32));
    v11[1] = *(a1 + 40);
    [v1 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v6];
    objc_destroyWeak(v11);
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
  *MEMORY[0x277D85DE8];
}

void __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke_415(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)client:(id)a3 installTonightScheduled:(BOOL)a4 operationID:(id)a5
{
  v75 = a4;
  obj = a5;
  v74 = "[SUUIMobileStatefulUIManager client:installTonightScheduled:operationID:]";
  v109 = *MEMORY[0x277D85DE8];
  v103 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v101 = v75;
  v100 = 0;
  objc_storeStrong(&v100, obj);
  v73 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v73 oslog];
  MEMORY[0x277D82BD8](v73);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v65 = type;
    v66 = v103;
    v5 = objc_opt_class();
    v67 = NSStringFromClass(v5);
    v68 = MEMORY[0x277D82BE0](v67);
    v97 = v68;
    v6 = *(&v103->super.super.isa + *MEMORY[0x277D64C00]);
    v69 = SUUIStatefulUIStateToString();
    v70 = MEMORY[0x277D82BE0](v69);
    v96 = v70;
    v71 = [(SUUIStatefulUIManager *)v103 currentState];
    v72 = [(SUUIStatefulUIManager *)v103 delegate];
    v94 = 0;
    v92 = 0;
    if (v72)
    {
      v95 = [(SUUIStatefulUIManager *)v103 delegate];
      v62 = 1;
      v94 = 1;
      v7 = objc_opt_class();
      v93 = NSStringFromClass(v7);
      v92 = 1;
      v63 = v93;
    }

    else
    {
      v63 = @"(null)";
    }

    v56 = v63;
    v57 = [(SUUIStatefulUIManager *)v103 delegate];
    v58 = [(SUUIStatefulUIManager *)v103 scanError];
    v59 = [(SUUIStatefulUIManager *)v103 preferredStatefulDescriptor];
    v60 = [(SUUIStatefulUIManager *)v103 alternateStatefulDescriptor];
    v61 = [(SUUIStatefulUIManager *)v103 currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (v61)
    {
      v91 = [(SUUIStatefulUIManager *)v103 currentDownload];
      v54 = 1;
      v90 = 1;
      v89 = [(SUUIDownload *)v91 descriptor];
      v88 = 1;
      v87 = [v89 updateName];
      v86 = 1;
      v55 = v87;
    }

    else
    {
      v55 = @"(null)";
    }

    v31 = v55;
    v32 = [(SUUIStatefulUIManager *)v103 currentDownload];
    [(SUUIStatefulUIManager *)v103 currentUpdateOperationType];
    v33 = SUUIUpdateContinuousOperationTypeToString();
    v34 = MEMORY[0x277D82BE0](v33);
    v85 = v34;
    v107 = [(SUUIMobileStatefulUIManager *)v103 isTargetedUpdateScheduledForAutoInstall];
    v44 = @"NO";
    v45 = @"YES";
    v52 = 1;
    if (v107)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v35 = v8;
    v9 = v8;
    v36 = v35;
    v37 = MEMORY[0x277D82BE0](v36);
    v84 = v37;
    if ([(SUUIStatefulUIManager *)v103 hidingPreferredDescriptor])
    {
      v10 = v45;
    }

    else
    {
      v10 = v44;
    }

    v38 = v10;
    v11 = v10;
    v39 = v38;
    v40 = MEMORY[0x277D82BE0](v39);
    v83 = v40;
    v41 = [(SUUIStatefulUIManager *)v103 hiddenPreferredStatefulDescriptor];
    v42 = [(SUUIStatefulDescriptor *)v41 updateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v82 = v43;
    if ([(SUUIStatefulUIManager *)v103 hidingAlternateDescriptor])
    {
      v12 = v45;
    }

    else
    {
      v12 = v44;
    }

    v46 = v12;
    v13 = v12;
    v47 = v46;
    v48 = MEMORY[0x277D82BE0](v47);
    v81 = v48;
    v49 = [(SUUIStatefulUIManager *)v103 hiddenAlternateStatefulDescriptor];
    v50 = [(SUUIStatefulDescriptor *)v49 updateName];
    v51 = MEMORY[0x277D82BE0](v50);
    v80 = v51;
    v53 = [(SUUIStatefulUIManager *)v103 enrolledBetaProgram];
    v78 = 0;
    if (v53)
    {
      v79 = [(SUUIStatefulUIManager *)v103 enrolledBetaProgram];
      v78 = 1;
      v30 = [(SDBetaProgram *)v79 programID];
    }

    else
    {
      v30 = 0;
    }

    v21 = v30;
    v22 = [*(&v103->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)v103 canEnrollInBetaUpdates])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v20 = v14;
    v15 = v14;
    v29 = v20;
    v23 = MEMORY[0x277D82BE0](v29);
    v77 = v23;
    v24 = *(&v103->super.super.isa + *MEMORY[0x277D64BF0]);
    v25 = *(&v103->super.super.isa + *MEMORY[0x277D64BF8]);
    v26 = *(&v103->super.super.isa + *MEMORY[0x277D64C08]);
    v16 = [*(&v103->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v27 = &v17;
    buf = v108;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v108, v74, v66, v68, v70, v71, v56, v57, v58, v59, v60, v31, v32, v34, v37, v40, v43, v48, v51, v21, v22, v23, v24, v25, v26, v16);
    _os_log_impl(&dword_26B0B9000, log, v65[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\ninstallTonightScheduled called, start to refresh state", buf, 0xFCu);
    MEMORY[0x277D82BD8](v29);
    if (v78)
    {
      MEMORY[0x277D82BD8](v79);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v32);
    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v67);
    v19 = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v80, v19);
    objc_storeStrong(&v81, v19);
    objc_storeStrong(&v82, v19);
    objc_storeStrong(&v83, v19);
    objc_storeStrong(&v84, v19);
    objc_storeStrong(&v85, v19);
    objc_storeStrong(&v96, v19);
    objc_storeStrong(&v97, v19);
  }

  objc_storeStrong(&oslog, 0);
  [(SUUIStatefulUIManager *)v103 refreshState];
  v18 = 0;
  objc_storeStrong(&v100, 0);
  objc_storeStrong(location, v18);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 installDidStart:(id)a4
{
  v165 = &v183;
  obj = a4;
  v167 = "[SUUIMobileStatefulUIManager client:installDidStart:]";
  v208 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v201 = 0;
  objc_storeStrong(&v201, obj);
  v164 = [MEMORY[0x277D64B58] statefulUILogger];
  v162 = v164;
  v163 = [v162 oslog];
  v200 = v163;
  MEMORY[0x277D82BD8](v162);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
  {
    log = v165[23];
    *v159 = type;
    v160 = v165[27];
    v4 = v165[27];
    aClass = objc_opt_class();
    v157 = NSStringFromClass(aClass);
    v154 = v157;
    v5 = MEMORY[0x277D82BE0](v154);
    v6 = v165;
    v155 = v5;
    v165[21] = v5;
    v7 = *(v6[27] + *MEMORY[0x277D64C00]);
    v156 = SUUIStatefulUIStateToString();
    v151 = v156;
    v8 = MEMORY[0x277D82BE0](v151);
    v9 = v165;
    v152 = v8;
    v165[20] = v8;
    v153 = [v9[27] currentState];
    v150 = [v165[27] delegate];
    v149 = v150;
    v196 = 0;
    v195 = 0;
    if (v149)
    {
      v148 = [v165[27] delegate];
      v165[19] = v148;
      v196 = 1;
      v147 = objc_opt_class();
      v146 = NSStringFromClass(v147);
      v10 = v146;
      v165[17] = v10;
      v195 = 1;
      v145 = v10;
    }

    else
    {
      v145 = @"(null)";
    }

    v143 = v145;
    v144 = [v165[27] delegate];
    v141 = v144;
    v142 = [v165[27] scanError];
    v139 = v142;
    v140 = [v165[27] preferredStatefulDescriptor];
    v137 = v140;
    v138 = [v165[27] alternateStatefulDescriptor];
    v135 = v138;
    v136 = [v165[27] currentDownload];
    v134 = v136;
    v194 = 0;
    v193 = 0;
    v192 = 0;
    if (v134)
    {
      v133 = [v165[27] currentDownload];
      v11 = v133;
      v165[15] = v11;
      v194 = 1;
      v132 = [v11 descriptor];
      v12 = v132;
      v165[13] = v12;
      v193 = 1;
      v131 = [v12 updateName];
      v13 = v131;
      v165[11] = v13;
      v192 = 1;
      v130 = v13;
    }

    else
    {
      v130 = @"(null)";
    }

    v128 = v130;
    v129 = [v165[27] currentDownload];
    v126 = v129;
    v127 = [v165[27] currentUpdateOperationType];
    v125 = SUUIUpdateContinuousOperationTypeToString();
    v122 = v125;
    v14 = MEMORY[0x277D82BE0](v122);
    v15 = v165;
    v123 = v14;
    v165[9] = v14;
    v124 = [v15[27] isTargetedUpdateScheduledForAutoInstall];
    v206 = v124;
    if (v124)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v121 = v16;
    v17 = v16;
    v118 = v121;
    v18 = MEMORY[0x277D82BE0](v118);
    v19 = v165;
    v119 = v18;
    v165[8] = v18;
    v120 = [v19[27] hidingPreferredDescriptor];
    v205 = v120;
    if (v120)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v117 = v20;
    v21 = v20;
    v114 = v117;
    v22 = MEMORY[0x277D82BE0](v114);
    v23 = v165;
    v115 = v22;
    v165[7] = v22;
    v116 = [v23[27] hiddenPreferredStatefulDescriptor];
    v112 = v116;
    v113 = [v112 updateName];
    v109 = v113;
    v24 = MEMORY[0x277D82BE0](v109);
    v25 = v165;
    v110 = v24;
    v165[6] = v24;
    v111 = [v25[27] hidingAlternateDescriptor];
    v204 = v111;
    if (v111)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v108 = v26;
    v27 = v26;
    v105 = v108;
    v28 = MEMORY[0x277D82BE0](v105);
    v29 = v165;
    v106 = v28;
    v165[5] = v28;
    v107 = [v29[27] hiddenAlternateStatefulDescriptor];
    v103 = v107;
    v104 = [v103 updateName];
    v100 = v104;
    v30 = MEMORY[0x277D82BE0](v100);
    v31 = v165;
    v101 = v30;
    v165[4] = v30;
    v102 = [v31[27] enrolledBetaProgram];
    v99 = v102;
    v185 = 0;
    if (v99)
    {
      v98 = [v165[27] enrolledBetaProgram];
      v32 = v98;
      v165[3] = v32;
      v185 = 1;
      v97 = [v32 programID];
      v96 = v97;
    }

    else
    {
      v96 = 0;
    }

    v94 = v96;
    v95 = [*(v165[27] + *MEMORY[0x277D64BE8]) count];
    v93 = [v165[27] canEnrollInBetaUpdates];
    v203 = v93;
    if (v93)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v92 = v33;
    v34 = v33;
    v86 = v92;
    v35 = MEMORY[0x277D82BE0](v86);
    v36 = v165;
    v87 = v35;
    v165[1] = v35;
    v88 = *(v36[27] + *MEMORY[0x277D64BF0]);
    v89 = *(v36[27] + *MEMORY[0x277D64BF8]);
    v90 = *(v36[27] + *MEMORY[0x277D64C08]);
    v91 = [*(v36[27] + *MEMORY[0x277D64BE0]) count];
    v85 = [v165[24] humanReadableUpdateName];
    v37 = v106;
    v38 = v110;
    v39 = v115;
    v40 = v119;
    v41 = v123;
    v42 = v126;
    v43 = v128;
    v44 = v135;
    v45 = v137;
    v46 = v139;
    v84 = v85;
    v47 = MEMORY[0x277D82BE0](v84);
    v48 = v165;
    v49 = v101;
    v50 = v94;
    v51 = v95;
    v52 = v87;
    v53 = v88;
    v54 = v89;
    v55 = v90;
    v56 = v91;
    v57 = v167;
    v58 = v160;
    v59 = v155;
    v60 = v152;
    v61 = v153;
    v62 = v143;
    v63 = v141;
    *v165 = v47;
    v64 = v48[24];
    v82 = v67;
    buf = v207;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(v207, v57, v58, v59, v60, v61, v62, v63, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v49, v50, v51, v52, v53, v54, v55, v56, v47, v64);
    _os_log_impl(&dword_26B0B9000, log, v159[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to install an update targeting %{public}@ (%p)", buf, 0x110u);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v86);
    if (v185)
    {
      MEMORY[0x277D82BD8](v165[3]);
    }

    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v126);
    if (v192)
    {
      MEMORY[0x277D82BD8](v165[11]);
    }

    if (v193)
    {
      MEMORY[0x277D82BD8](v165[13]);
    }

    if (v194)
    {
      MEMORY[0x277D82BD8](v165[15]);
    }

    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v141);
    if (v195)
    {
      MEMORY[0x277D82BD8](v165[17]);
    }

    if (v196)
    {
      MEMORY[0x277D82BD8](v165[19]);
    }

    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v154);
    objc_storeStrong(&v183, 0);
    objc_storeStrong(&v184, 0);
    objc_storeStrong(&v186, 0);
    objc_storeStrong(&v187, 0);
    objc_storeStrong(&v188, 0);
    objc_storeStrong(&v189, 0);
    objc_storeStrong(&v190, 0);
    objc_storeStrong(&v191, 0);
    objc_storeStrong(&v197, 0);
    objc_storeStrong(&v198, 0);
  }

  objc_storeStrong(&v200, 0);
  if (v165[24])
  {
    v81 = [v165[27] currentUpdateOperation];
    v80 = v81;
    MEMORY[0x277D82BD8](v80);
    if (v80)
    {
      v182 = 1;
    }

    else
    {
      v65 = v165[24];
      v178 = 0;
      if (v65)
      {
        v79 = [SUUIMobileDescriptor alloc];
        v78 = [(SUUIMobileDescriptor *)v79 initWithDescriptor:v165[24]];
        v179 = v78;
        v178 = 1;
        v77 = v78;
      }

      else
      {
        v77 = 0;
      }

      v180 = MEMORY[0x277D82BE0](v77);
      if (v178)
      {
        MEMORY[0x277D82BD8](v179);
      }

      v76 = [v180 conformsToProtocol:&unk_287BB9698];
      if ((v76 & 1) == 0)
      {
        v75 = NSStringFromProtocol(&unk_287BB9698);
        v66 = v75;
        v67[0] = @"SUUIMobileDescriptorFromSUDescriptor(update)";
        v67[1] = v66;
        _suui_precondition_failure_with_format();
        __break(1u);
      }

      v74 = &v180;
      v177 = MEMORY[0x277D82BE0](v180);
      objc_storeStrong(v74, 0);
      v181 = v177;
      v73 = [v165[27] targetedUpdateMatchingDescriptor:v177];
      v176 = v73;
      if (v176)
      {
        objc_initWeak(&from, v165[27]);
        v70 = v165[27];
        v71 = sel_statefulUIManager_didStartInstallingUpdateWithDescriptor_;
        v168 = MEMORY[0x277D85DD0];
        v169 = -1073741824;
        v170 = 0;
        v171 = __54__SUUIMobileStatefulUIManager_client_installDidStart___block_invoke;
        v172 = &unk_279CCBD58;
        v72 = v174;
        objc_copyWeak(v174, &from);
        v69 = &v168;
        v174[1] = v165[26];
        v68 = &v173;
        v173 = MEMORY[0x277D82BE0](v176);
        [v70 executeOperationOnDelegate:v71 usingBlock:v69];
        objc_storeStrong(v68, 0);
        objc_destroyWeak(v72);
        objc_destroyWeak(&from);
        v182 = 0;
      }

      else
      {
        [v165[27] checkForAvailableUpdates:1 forceScan:1];
        v182 = 1;
      }

      objc_storeStrong(&v176, 0);
      objc_storeStrong(&v181, 0);
    }
  }

  else
  {
    v182 = 1;
  }

  objc_storeStrong(&v201, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __54__SUUIMobileStatefulUIManager_client_installDidStart___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 48));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:installDidStart:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5
{
  obj = a4;
  v76 = a5;
  v74 = "[SUUIMobileStatefulUIManager client:installDidFail:withError:]";
  v109 = *MEMORY[0x277D85DE8];
  v103 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v101 = 0;
  objc_storeStrong(&v101, obj);
  v100 = 0;
  objc_storeStrong(&v100, v76);
  v73 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v73 oslog];
  MEMORY[0x277D82BD8](v73);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v65 = type;
    v66 = v103;
    v5 = objc_opt_class();
    v67 = NSStringFromClass(v5);
    v68 = MEMORY[0x277D82BE0](v67);
    v97 = v68;
    v6 = *(&v103->super.super.isa + *MEMORY[0x277D64C00]);
    v69 = SUUIStatefulUIStateToString();
    v70 = MEMORY[0x277D82BE0](v69);
    v96 = v70;
    v71 = [(SUUIStatefulUIManager *)v103 currentState];
    v72 = [(SUUIStatefulUIManager *)v103 delegate];
    v94 = 0;
    v92 = 0;
    if (v72)
    {
      v95 = [(SUUIStatefulUIManager *)v103 delegate];
      v62 = 1;
      v94 = 1;
      v7 = objc_opt_class();
      v93 = NSStringFromClass(v7);
      v92 = 1;
      v63 = v93;
    }

    else
    {
      v63 = @"(null)";
    }

    v56 = v63;
    v57 = [(SUUIStatefulUIManager *)v103 delegate];
    v58 = [(SUUIStatefulUIManager *)v103 scanError];
    v59 = [(SUUIStatefulUIManager *)v103 preferredStatefulDescriptor];
    v60 = [(SUUIStatefulUIManager *)v103 alternateStatefulDescriptor];
    v61 = [(SUUIStatefulUIManager *)v103 currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (v61)
    {
      v91 = [(SUUIStatefulUIManager *)v103 currentDownload];
      v54 = 1;
      v90 = 1;
      v89 = [(SUUIDownload *)v91 descriptor];
      v88 = 1;
      v87 = [v89 updateName];
      v86 = 1;
      v55 = v87;
    }

    else
    {
      v55 = @"(null)";
    }

    v31 = v55;
    v32 = [(SUUIStatefulUIManager *)v103 currentDownload];
    [(SUUIStatefulUIManager *)v103 currentUpdateOperationType];
    v33 = SUUIUpdateContinuousOperationTypeToString();
    v34 = MEMORY[0x277D82BE0](v33);
    v85 = v34;
    v107 = [(SUUIMobileStatefulUIManager *)v103 isTargetedUpdateScheduledForAutoInstall];
    v44 = @"NO";
    v45 = @"YES";
    v52 = 1;
    if (v107)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v35 = v8;
    v9 = v8;
    v36 = v35;
    v37 = MEMORY[0x277D82BE0](v36);
    v84 = v37;
    if ([(SUUIStatefulUIManager *)v103 hidingPreferredDescriptor])
    {
      v10 = v45;
    }

    else
    {
      v10 = v44;
    }

    v38 = v10;
    v11 = v10;
    v39 = v38;
    v40 = MEMORY[0x277D82BE0](v39);
    v83 = v40;
    v41 = [(SUUIStatefulUIManager *)v103 hiddenPreferredStatefulDescriptor];
    v42 = [(SUUIStatefulDescriptor *)v41 updateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v82 = v43;
    if ([(SUUIStatefulUIManager *)v103 hidingAlternateDescriptor])
    {
      v12 = v45;
    }

    else
    {
      v12 = v44;
    }

    v46 = v12;
    v13 = v12;
    v47 = v46;
    v48 = MEMORY[0x277D82BE0](v47);
    v81 = v48;
    v49 = [(SUUIStatefulUIManager *)v103 hiddenAlternateStatefulDescriptor];
    v50 = [(SUUIStatefulDescriptor *)v49 updateName];
    v51 = MEMORY[0x277D82BE0](v50);
    v80 = v51;
    v53 = [(SUUIStatefulUIManager *)v103 enrolledBetaProgram];
    v78 = 0;
    if (v53)
    {
      v79 = [(SUUIStatefulUIManager *)v103 enrolledBetaProgram];
      v78 = 1;
      v30 = [(SDBetaProgram *)v79 programID];
    }

    else
    {
      v30 = 0;
    }

    v21 = v30;
    v22 = [*(&v103->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)v103 canEnrollInBetaUpdates])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v20 = v14;
    v15 = v14;
    v29 = v20;
    v23 = MEMORY[0x277D82BE0](v29);
    v77 = v23;
    v24 = *(&v103->super.super.isa + *MEMORY[0x277D64BF0]);
    v25 = *(&v103->super.super.isa + *MEMORY[0x277D64BF8]);
    v26 = *(&v103->super.super.isa + *MEMORY[0x277D64C08]);
    v16 = [*(&v103->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v27 = &v17;
    buf = v108;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v108, v74, v66, v68, v70, v71, v56, v57, v58, v59, v60, v31, v32, v34, v37, v40, v43, v48, v51, v21, v22, v23, v24, v25, v26, v16, v101, v100);
    _os_log_impl(&dword_26B0B9000, log, v65[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFailed to install an update. Error: %{public}@; Descriptor: %{public}@", buf, 0x110u);
    MEMORY[0x277D82BD8](v29);
    if (v78)
    {
      MEMORY[0x277D82BD8](v79);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v32);
    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v67);
    v19 = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v80, v19);
    objc_storeStrong(&v81, v19);
    objc_storeStrong(&v82, v19);
    objc_storeStrong(&v83, v19);
    objc_storeStrong(&v84, v19);
    objc_storeStrong(&v85, v19);
    objc_storeStrong(&v96, v19);
    objc_storeStrong(&v97, v19);
  }

  objc_storeStrong(&oslog, 0);
  [(SUUIStatefulUIManager *)v103 checkForAvailableUpdates:1 forceScan:1];
  v18 = 0;
  objc_storeStrong(&v100, 0);
  objc_storeStrong(&v101, v18);
  objc_storeStrong(location, v18);
  *MEMORY[0x277D85DE8];
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

- (void)autoInstallOperationWasCancelled:(id)a3
{
  v75 = "[SUUIMobileStatefulUIManager autoInstallOperationWasCancelled:]";
  v114 = *MEMORY[0x277D85DE8];
  val = self;
  v107 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v74 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v74 oslog];
  MEMORY[0x277D82BD8](v74);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v66 = type;
    v67 = val;
    v3 = objc_opt_class();
    v68 = NSStringFromClass(v3);
    v69 = MEMORY[0x277D82BE0](v68);
    v103 = v69;
    v4 = *(val + *MEMORY[0x277D64C00]);
    v70 = SUUIStatefulUIStateToString();
    v71 = MEMORY[0x277D82BE0](v70);
    v102 = v71;
    v72 = [val currentState];
    v73 = [val delegate];
    v100 = 0;
    v98 = 0;
    if (v73)
    {
      v101 = [val delegate];
      v63 = 1;
      v100 = 1;
      v5 = objc_opt_class();
      v99 = NSStringFromClass(v5);
      v98 = 1;
      v64 = v99;
    }

    else
    {
      v64 = @"(null)";
    }

    v57 = v64;
    v58 = [val delegate];
    v59 = [val scanError];
    v60 = [val preferredStatefulDescriptor];
    v61 = [val alternateStatefulDescriptor];
    v62 = [val currentDownload];
    v96 = 0;
    v94 = 0;
    v92 = 0;
    if (v62)
    {
      v97 = [val currentDownload];
      v55 = 1;
      v96 = 1;
      v95 = [v97 descriptor];
      v94 = 1;
      v93 = [v95 updateName];
      v92 = 1;
      v56 = v93;
    }

    else
    {
      v56 = @"(null)";
    }

    v32 = v56;
    v33 = [val currentDownload];
    [val currentUpdateOperationType];
    v34 = SUUIUpdateContinuousOperationTypeToString();
    v35 = MEMORY[0x277D82BE0](v34);
    v91 = v35;
    v112 = [val isTargetedUpdateScheduledForAutoInstall];
    v45 = @"NO";
    v46 = @"YES";
    v53 = 1;
    if (v112)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v36 = v6;
    v7 = v6;
    v37 = v36;
    v38 = MEMORY[0x277D82BE0](v37);
    v90 = v38;
    v111 = [val hidingPreferredDescriptor];
    if (v111)
    {
      v8 = v46;
    }

    else
    {
      v8 = v45;
    }

    v39 = v8;
    v9 = v8;
    v40 = v39;
    v41 = MEMORY[0x277D82BE0](v40);
    v89 = v41;
    v42 = [val hiddenPreferredStatefulDescriptor];
    v43 = [v42 updateName];
    v44 = MEMORY[0x277D82BE0](v43);
    v88 = v44;
    v110 = [val hidingAlternateDescriptor];
    if (v110)
    {
      v10 = v46;
    }

    else
    {
      v10 = v45;
    }

    v47 = v10;
    v11 = v10;
    v48 = v47;
    v49 = MEMORY[0x277D82BE0](v48);
    v87 = v49;
    v50 = [val hiddenAlternateStatefulDescriptor];
    v51 = [v50 updateName];
    v52 = MEMORY[0x277D82BE0](v51);
    v86 = v52;
    v54 = [val enrolledBetaProgram];
    v84 = 0;
    if (v54)
    {
      v85 = [val enrolledBetaProgram];
      v84 = 1;
      v31 = [v85 programID];
    }

    else
    {
      v31 = 0;
    }

    v22 = v31;
    v23 = [*(val + *MEMORY[0x277D64BE8]) count];
    v109 = [val canEnrollInBetaUpdates];
    if (v109)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v21 = v12;
    v13 = v12;
    v30 = v21;
    v24 = MEMORY[0x277D82BE0](v30);
    v83 = v24;
    v25 = *(val + *MEMORY[0x277D64BF0]);
    v26 = *(val + *MEMORY[0x277D64BF8]);
    v27 = *(val + *MEMORY[0x277D64C08]);
    v14 = [*(val + *MEMORY[0x277D64BE0]) count];
    v28 = &v15;
    buf = v113;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v113, v75, v67, v69, v71, v72, v57, v58, v59, v60, v61, v32, v33, v35, v38, v41, v44, v49, v52, v22, v23, v24, v25, v26, v27, v14);
    _os_log_impl(&dword_26B0B9000, log, v66[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v30);
    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v33);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    if (v96)
    {
      MEMORY[0x277D82BD8](v97);
    }

    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v68);
    obj = 0;
    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v86, obj);
    objc_storeStrong(&v87, obj);
    objc_storeStrong(&v88, obj);
    objc_storeStrong(&v89, obj);
    objc_storeStrong(&v90, obj);
    objc_storeStrong(&v91, obj);
    objc_storeStrong(&v102, obj);
    objc_storeStrong(&v103, obj);
  }

  objc_storeStrong(&oslog, 0);
  from = &v82;
  objc_initWeak(&v82, val);
  queue = *(val + *MEMORY[0x277D64C18]);
  block = &v76;
  v76 = MEMORY[0x277D85DD0];
  v77 = -1073741824;
  v78 = 0;
  v79 = __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke;
  v80 = &unk_279CCC6E8;
  v18 = v81;
  objc_copyWeak(v81, from);
  v81[1] = v107;
  dispatch_async(queue, block);
  objc_destroyWeak(v18);
  objc_destroyWeak(from);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 32));
  v4 = 0;
  if (!v17[0])
  {
    v3 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v16 = [v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v2 = NSStringFromSelector(*(a1 + 40));
      location = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v18, "[SUUIMobileStatefulUIManager autoInstallOperationWasCancelled:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v16, v15, "%s: Self is nil in %{public}@. Stopping.", v18, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v4 = 1;
  }

  if (v4)
  {
    v12 = 1;
  }

  else
  {
    [v17[0] setIsAutoUpdateScheduled:0];
    [v17[0] setCurrentAutoInstallOperation:0];
    v1 = v17[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke_470;
    v10 = &unk_279CCC6E8;
    objc_copyWeak(v11, (a1 + 32));
    v11[1] = *(a1 + 40);
    [v1 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v6];
    objc_destroyWeak(v11);
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
  *MEMORY[0x277D85DE8];
}

void __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke_470(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager autoInstallOperationWasCancelled:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)autoInstallOperationDidExpire:(id)a3 withError:(id)a4
{
  obj = a4;
  v77 = "[SUUIMobileStatefulUIManager autoInstallOperationDidExpire:withError:]";
  v118 = *MEMORY[0x277D85DE8];
  val = self;
  v111 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v109 = 0;
  objc_storeStrong(&v109, obj);
  v76 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v76 oslog];
  MEMORY[0x277D82BD8](v76);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v68 = type;
    v69 = val;
    v4 = objc_opt_class();
    v70 = NSStringFromClass(v4);
    v71 = MEMORY[0x277D82BE0](v70);
    v106 = v71;
    v5 = *(val + *MEMORY[0x277D64C00]);
    v72 = SUUIStatefulUIStateToString();
    v73 = MEMORY[0x277D82BE0](v72);
    v105 = v73;
    v74 = [val currentState];
    v75 = [val delegate];
    v103 = 0;
    v101 = 0;
    if (v75)
    {
      v104 = [val delegate];
      v65 = 1;
      v103 = 1;
      v6 = objc_opt_class();
      v102 = NSStringFromClass(v6);
      v101 = 1;
      v66 = v102;
    }

    else
    {
      v66 = @"(null)";
    }

    v59 = v66;
    v60 = [val delegate];
    v61 = [val scanError];
    v62 = [val preferredStatefulDescriptor];
    v63 = [val alternateStatefulDescriptor];
    v64 = [val currentDownload];
    v99 = 0;
    v97 = 0;
    v95 = 0;
    if (v64)
    {
      v100 = [val currentDownload];
      v57 = 1;
      v99 = 1;
      v98 = [v100 descriptor];
      v97 = 1;
      v96 = [v98 updateName];
      v95 = 1;
      v58 = v96;
    }

    else
    {
      v58 = @"(null)";
    }

    v34 = v58;
    v35 = [val currentDownload];
    [val currentUpdateOperationType];
    v36 = SUUIUpdateContinuousOperationTypeToString();
    v37 = MEMORY[0x277D82BE0](v36);
    v94 = v37;
    v116 = [val isTargetedUpdateScheduledForAutoInstall];
    v47 = @"NO";
    v48 = @"YES";
    v55 = 1;
    if (v116)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v38 = v7;
    v8 = v7;
    v39 = v38;
    v40 = MEMORY[0x277D82BE0](v39);
    v93 = v40;
    v115 = [val hidingPreferredDescriptor];
    if (v115)
    {
      v9 = v48;
    }

    else
    {
      v9 = v47;
    }

    v41 = v9;
    v10 = v9;
    v42 = v41;
    v43 = MEMORY[0x277D82BE0](v42);
    v92 = v43;
    v44 = [val hiddenPreferredStatefulDescriptor];
    v45 = [v44 updateName];
    v46 = MEMORY[0x277D82BE0](v45);
    v91 = v46;
    v114 = [val hidingAlternateDescriptor];
    if (v114)
    {
      v11 = v48;
    }

    else
    {
      v11 = v47;
    }

    v49 = v11;
    v12 = v11;
    v50 = v49;
    v51 = MEMORY[0x277D82BE0](v50);
    v90 = v51;
    v52 = [val hiddenAlternateStatefulDescriptor];
    v53 = [v52 updateName];
    v54 = MEMORY[0x277D82BE0](v53);
    v89 = v54;
    v56 = [val enrolledBetaProgram];
    v87 = 0;
    if (v56)
    {
      v88 = [val enrolledBetaProgram];
      v87 = 1;
      v33 = [v88 programID];
    }

    else
    {
      v33 = 0;
    }

    v24 = v33;
    v25 = [*(val + *MEMORY[0x277D64BE8]) count];
    v113 = [val canEnrollInBetaUpdates];
    if (v113)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v23 = v13;
    v14 = v13;
    v32 = v23;
    v26 = MEMORY[0x277D82BE0](v32);
    v86 = v26;
    v27 = *(val + *MEMORY[0x277D64BF0]);
    v28 = *(val + *MEMORY[0x277D64BF8]);
    v29 = *(val + *MEMORY[0x277D64C08]);
    v15 = [*(val + *MEMORY[0x277D64BE0]) count];
    v30 = &v16;
    buf = v117;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v117, v77, v69, v71, v73, v74, v59, v60, v61, v62, v63, v34, v35, v37, v40, v43, v46, v51, v54, v24, v25, v26, v27, v28, v29, v15);
    _os_log_impl(&dword_26B0B9000, log, v68[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v32);
    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
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
    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v70);
    v22 = 0;
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v89, v22);
    objc_storeStrong(&v90, v22);
    objc_storeStrong(&v91, v22);
    objc_storeStrong(&v92, v22);
    objc_storeStrong(&v93, v22);
    objc_storeStrong(&v94, v22);
    objc_storeStrong(&v105, v22);
    objc_storeStrong(&v106, v22);
  }

  objc_storeStrong(&oslog, 0);
  from = &v85;
  objc_initWeak(&v85, val);
  queue = *(val + *MEMORY[0x277D64C18]);
  block = &v79;
  v79 = MEMORY[0x277D85DD0];
  v80 = -1073741824;
  v81 = 0;
  v82 = __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke;
  v83 = &unk_279CCC6E8;
  v19 = v84;
  objc_copyWeak(v84, from);
  v84[1] = v111;
  dispatch_async(queue, block);
  objc_destroyWeak(v19);
  objc_destroyWeak(from);
  v21 = 0;
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&location, v21);
  *MEMORY[0x277D85DE8];
}

void __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 32));
  v4 = 0;
  if (!v17[0])
  {
    v3 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v16 = [v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v2 = NSStringFromSelector(*(a1 + 40));
      location = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v18, "[SUUIMobileStatefulUIManager autoInstallOperationDidExpire:withError:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v16, v15, "%s: Self is nil in %{public}@. Stopping.", v18, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v4 = 1;
  }

  if (v4)
  {
    v12 = 1;
  }

  else
  {
    [v17[0] setIsAutoUpdateScheduled:0];
    [v17[0] setCurrentAutoInstallOperation:0];
    v1 = v17[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke_471;
    v10 = &unk_279CCC6E8;
    objc_copyWeak(v11, (a1 + 32));
    v11[1] = *(a1 + 40);
    [v1 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v6];
    objc_destroyWeak(v11);
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke_471(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager autoInstallOperationDidExpire:withError:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)didBecomeActive:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SUUIStatefulUIManager *)v4 currentState]>= 2)
  {
    [(SUUIStatefulUIManager *)v4 refreshState];
  }

  objc_storeStrong(location, 0);
}

- (void)batteryStateChanged:(id)a3
{
  v71 = "[SUUIMobileStatefulUIManager batteryStateChanged:]";
  v108 = *MEMORY[0x277D85DE8];
  v102 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v72 = [MEMORY[0x277D75418] currentDevice];
  v73 = [v72 batteryState];
  MEMORY[0x277D82BD8](v72);
  v100 = v73;
  v74 = 1;
  if (v73 != 2)
  {
    v74 = v100 == 3;
  }

  v99 = v74;
  v98 = [(SUUIMobileStatefulUIManager *)v102 connectedToPowerSource];
  v70 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [v70 oslog];
  MEMORY[0x277D82BD8](v70);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v62 = type;
    v63 = v102;
    v3 = objc_opt_class();
    v64 = NSStringFromClass(v3);
    v65 = MEMORY[0x277D82BE0](v64);
    v95 = v65;
    v4 = *(&v102->super.super.isa + *MEMORY[0x277D64C00]);
    v66 = SUUIStatefulUIStateToString();
    v67 = MEMORY[0x277D82BE0](v66);
    v94 = v67;
    v68 = [(SUUIStatefulUIManager *)v102 currentState];
    v69 = [(SUUIStatefulUIManager *)v102 delegate];
    v92 = 0;
    v90 = 0;
    if (v69)
    {
      v93 = [(SUUIStatefulUIManager *)v102 delegate];
      v59 = 1;
      v92 = 1;
      v5 = objc_opt_class();
      v91 = NSStringFromClass(v5);
      v90 = 1;
      v60 = v91;
    }

    else
    {
      v60 = @"(null)";
    }

    v53 = v60;
    v54 = [(SUUIStatefulUIManager *)v102 delegate];
    v55 = [(SUUIStatefulUIManager *)v102 scanError];
    v56 = [(SUUIStatefulUIManager *)v102 preferredStatefulDescriptor];
    v57 = [(SUUIStatefulUIManager *)v102 alternateStatefulDescriptor];
    v58 = [(SUUIStatefulUIManager *)v102 currentDownload];
    v88 = 0;
    v86 = 0;
    v84 = 0;
    if (v58)
    {
      v89 = [(SUUIStatefulUIManager *)v102 currentDownload];
      v51 = 1;
      v88 = 1;
      v87 = [(SUUIDownload *)v89 descriptor];
      v86 = 1;
      v85 = [v87 updateName];
      v84 = 1;
      v52 = v85;
    }

    else
    {
      v52 = @"(null)";
    }

    v28 = v52;
    v29 = [(SUUIStatefulUIManager *)v102 currentDownload];
    [(SUUIStatefulUIManager *)v102 currentUpdateOperationType];
    v30 = SUUIUpdateContinuousOperationTypeToString();
    v31 = MEMORY[0x277D82BE0](v30);
    v83 = v31;
    v106 = [(SUUIMobileStatefulUIManager *)v102 isTargetedUpdateScheduledForAutoInstall];
    v41 = @"NO";
    v42 = @"YES";
    v49 = 1;
    if (v106)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v32 = v6;
    v7 = v6;
    v33 = v32;
    v34 = MEMORY[0x277D82BE0](v33);
    v82 = v34;
    if ([(SUUIStatefulUIManager *)v102 hidingPreferredDescriptor])
    {
      v8 = v42;
    }

    else
    {
      v8 = v41;
    }

    v35 = v8;
    v9 = v8;
    v36 = v35;
    v37 = MEMORY[0x277D82BE0](v36);
    v81 = v37;
    v38 = [(SUUIStatefulUIManager *)v102 hiddenPreferredStatefulDescriptor];
    v39 = [(SUUIStatefulDescriptor *)v38 updateName];
    v40 = MEMORY[0x277D82BE0](v39);
    v80 = v40;
    if ([(SUUIStatefulUIManager *)v102 hidingAlternateDescriptor])
    {
      v10 = v42;
    }

    else
    {
      v10 = v41;
    }

    v43 = v10;
    v11 = v10;
    v44 = v43;
    v45 = MEMORY[0x277D82BE0](v44);
    v79 = v45;
    v46 = [(SUUIStatefulUIManager *)v102 hiddenAlternateStatefulDescriptor];
    v47 = [(SUUIStatefulDescriptor *)v46 updateName];
    v48 = MEMORY[0x277D82BE0](v47);
    v78 = v48;
    v50 = [(SUUIStatefulUIManager *)v102 enrolledBetaProgram];
    v76 = 0;
    if (v50)
    {
      v77 = [(SUUIStatefulUIManager *)v102 enrolledBetaProgram];
      v76 = 1;
      v27 = [(SDBetaProgram *)v77 programID];
    }

    else
    {
      v27 = 0;
    }

    v18 = v27;
    v19 = [*(&v102->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)v102 canEnrollInBetaUpdates])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v17 = v12;
    v13 = v12;
    v26 = v17;
    v20 = MEMORY[0x277D82BE0](v26);
    v75 = v20;
    v21 = *(&v102->super.super.isa + *MEMORY[0x277D64BF0]);
    v22 = *(&v102->super.super.isa + *MEMORY[0x277D64BF8]);
    v23 = *(&v102->super.super.isa + *MEMORY[0x277D64C08]);
    v14 = [*(&v102->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v24 = &v15;
    buf = v107;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_4_0_4_0(v107, v71, v63, v65, v67, v68, v53, v54, v55, v56, v57, v28, v29, v31, v34, v37, v40, v45, v48, v18, v19, v20, v21, v22, v23, v14, v98, v99);
    _os_log_impl(&dword_26B0B9000, log, v62[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery state changed: %d -> %d", buf, 0x108u);
    MEMORY[0x277D82BD8](v26);
    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v29);
    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v64);
    obj = 0;
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v78, obj);
    objc_storeStrong(&v79, obj);
    objc_storeStrong(&v80, obj);
    objc_storeStrong(&v81, obj);
    objc_storeStrong(&v82, obj);
    objc_storeStrong(&v83, obj);
    objc_storeStrong(&v94, obj);
    objc_storeStrong(&v95, obj);
  }

  objc_storeStrong(&oslog, 0);
  if (v98 != v99)
  {
    [(SUUIMobileStatefulUIManager *)v102 setConnectedToPowerSource:v99];
    [(SUUIStatefulUIManager *)v102 refreshState];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)batteryLevelChanged:(id)a3
{
  v73 = "[SUUIMobileStatefulUIManager batteryLevelChanged:]";
  v113 = *MEMORY[0x277D85DE8];
  v107 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v78 = 1045220557;
  v105 = 1045220557;
  v104 = 0.5;
  v103 = v107[66];
  v76 = 0x277D75000uLL;
  v74 = [MEMORY[0x277D75418] currentDevice];
  [v74 batteryLevel];
  v75 = v3;
  MEMORY[0x277D82BD8](v74);
  v102 = v75;
  v77 = [MEMORY[0x277D75418] currentDevice];
  [v77 batteryLevel];
  [v107 setBatteryLevel:?];
  MEMORY[0x277D82BD8](v77);
  if (v75 < 0.2 && (*&v4 = v103, v103 >= 0.2) || v102 >= 0.2 && (*&v4 = v103, v103 < 0.2) || v102 < 0.5 && (*&v4 = v103, v103 >= 0.5) || v102 >= 0.5 && (*&v4 = v103, v103 < 0.5))
  {
    v72 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [v72 oslog];
    MEMORY[0x277D82BD8](v72);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v64 = type;
      v65 = v107;
      v5 = objc_opt_class();
      v66 = NSStringFromClass(v5);
      v67 = MEMORY[0x277D82BE0](v66);
      v99 = v67;
      v6 = *(v107 + *MEMORY[0x277D64C00]);
      v68 = SUUIStatefulUIStateToString();
      v69 = MEMORY[0x277D82BE0](v68);
      v98 = v69;
      v70 = [v107 currentState];
      v71 = [v107 delegate];
      v96 = 0;
      v94 = 0;
      if (v71)
      {
        v97 = [v107 delegate];
        v61 = 1;
        v96 = 1;
        v7 = objc_opt_class();
        v95 = NSStringFromClass(v7);
        v94 = 1;
        v62 = v95;
      }

      else
      {
        v62 = @"(null)";
      }

      v55 = v62;
      v56 = [v107 delegate];
      v57 = [v107 scanError];
      v58 = [v107 preferredStatefulDescriptor];
      v59 = [v107 alternateStatefulDescriptor];
      v60 = [v107 currentDownload];
      v92 = 0;
      v90 = 0;
      v88 = 0;
      if (v60)
      {
        v93 = [v107 currentDownload];
        v53 = 1;
        v92 = 1;
        v91 = [v93 descriptor];
        v90 = 1;
        v89 = [v91 updateName];
        v88 = 1;
        v54 = v89;
      }

      else
      {
        v54 = @"(null)";
      }

      v30 = v54;
      v31 = [v107 currentDownload];
      [v107 currentUpdateOperationType];
      v32 = SUUIUpdateContinuousOperationTypeToString();
      v33 = MEMORY[0x277D82BE0](v32);
      v87 = v33;
      v111 = [v107 isTargetedUpdateScheduledForAutoInstall];
      v43 = @"NO";
      v44 = @"YES";
      v51 = 1;
      if (v111)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v34 = v8;
      v9 = v8;
      v35 = v34;
      v36 = MEMORY[0x277D82BE0](v35);
      v86 = v36;
      v110 = [v107 hidingPreferredDescriptor];
      if (v110)
      {
        v10 = v44;
      }

      else
      {
        v10 = v43;
      }

      v37 = v10;
      v11 = v10;
      v38 = v37;
      v39 = MEMORY[0x277D82BE0](v38);
      v85 = v39;
      v40 = [v107 hiddenPreferredStatefulDescriptor];
      v41 = [v40 updateName];
      v42 = MEMORY[0x277D82BE0](v41);
      v84 = v42;
      v109 = [v107 hidingAlternateDescriptor];
      if (v109)
      {
        v12 = v44;
      }

      else
      {
        v12 = v43;
      }

      v45 = v12;
      v13 = v12;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v83 = v47;
      v48 = [v107 hiddenAlternateStatefulDescriptor];
      v49 = [v48 updateName];
      v50 = MEMORY[0x277D82BE0](v49);
      v82 = v50;
      v52 = [v107 enrolledBetaProgram];
      v80 = 0;
      if (v52)
      {
        v81 = [v107 enrolledBetaProgram];
        v80 = 1;
        v29 = [v81 programID];
      }

      else
      {
        v29 = 0;
      }

      v20 = v29;
      v21 = [*(v107 + *MEMORY[0x277D64BE8]) count];
      v108 = [v107 canEnrollInBetaUpdates];
      if (v108)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v19 = v14;
      v15 = v14;
      v28 = v19;
      v22 = MEMORY[0x277D82BE0](v28);
      v79 = v22;
      v23 = *(v107 + *MEMORY[0x277D64BF0]);
      v24 = *(v107 + *MEMORY[0x277D64BF8]);
      v25 = *(v107 + *MEMORY[0x277D64C08]);
      v16 = [*(v107 + *MEMORY[0x277D64BE0]) count];
      v26 = &v17;
      buf = v112;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v112, v73, v65, v67, v69, v70, v55, v56, v57, v58, v59, v30, v31, v33, v36, v39, v42, v47, v50, v20, v21, v22, v23, v24, v25, v16, COERCE__INT64(v103), COERCE__INT64(v102));
      _os_log_impl(&dword_26B0B9000, log, v64[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery level changed: %f -> %f", buf, 0x110u);
      MEMORY[0x277D82BD8](v28);
      if (v80)
      {
        MEMORY[0x277D82BD8](v81);
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
      if (v88)
      {
        MEMORY[0x277D82BD8](v89);
      }

      if (v90)
      {
        MEMORY[0x277D82BD8](v91);
      }

      if (v92)
      {
        MEMORY[0x277D82BD8](v93);
      }

      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v56);
      if (v94)
      {
        MEMORY[0x277D82BD8](v95);
      }

      if (v96)
      {
        MEMORY[0x277D82BD8](v97);
      }

      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v66);
      obj = 0;
      objc_storeStrong(&v79, 0);
      objc_storeStrong(&v82, obj);
      objc_storeStrong(&v83, obj);
      objc_storeStrong(&v84, obj);
      objc_storeStrong(&v85, obj);
      objc_storeStrong(&v86, obj);
      objc_storeStrong(&v87, obj);
      objc_storeStrong(&v98, obj);
      objc_storeStrong(&v99, obj);
    }

    objc_storeStrong(&oslog, 0);
    [v107 refreshState];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handleScanFinishedRollbackApplied:(id)a3
{
  v99 = "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]";
  v139 = *MEMORY[0x277D85DE8];
  val = self;
  v132 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v98 = [MEMORY[0x277D64B58] statefulUILogger];
  v96 = v98;
  v97 = [v96 oslog];
  oslog = v97;
  MEMORY[0x277D82BD8](v96);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v93 = type;
    v94 = val;
    aClass = objc_opt_class();
    v91 = NSStringFromClass(aClass);
    v88 = v91;
    v89 = MEMORY[0x277D82BE0](v88);
    v128 = v89;
    v3 = *(val + *MEMORY[0x277D64C00]);
    v90 = SUUIStatefulUIStateToString();
    v85 = v90;
    v86 = MEMORY[0x277D82BE0](v85);
    v127 = v86;
    v87 = [val currentState];
    v84 = [val delegate];
    v83 = v84;
    v125 = 0;
    v123 = 0;
    if (v83)
    {
      v82 = [val delegate];
      v126 = v82;
      v125 = 1;
      v81 = objc_opt_class();
      v80 = NSStringFromClass(v81);
      v124 = v80;
      v123 = 1;
      v79 = v124;
    }

    else
    {
      v79 = @"(null)";
    }

    v77 = v79;
    v78 = [val delegate];
    v75 = v78;
    v76 = [val scanError];
    v73 = v76;
    v74 = [val preferredStatefulDescriptor];
    v71 = v74;
    v72 = [val alternateStatefulDescriptor];
    v69 = v72;
    v70 = [val currentDownload];
    v68 = v70;
    v121 = 0;
    v119 = 0;
    v117 = 0;
    if (v68)
    {
      v67 = [val currentDownload];
      v122 = v67;
      v121 = 1;
      v66 = [v122 descriptor];
      v120 = v66;
      v119 = 1;
      v65 = [v120 updateName];
      v118 = v65;
      v117 = 1;
      v64 = v118;
    }

    else
    {
      v64 = @"(null)";
    }

    v62 = v64;
    v63 = [val currentDownload];
    v60 = v63;
    v61 = [val currentUpdateOperationType];
    v59 = SUUIUpdateContinuousOperationTypeToString();
    v56 = v59;
    v57 = MEMORY[0x277D82BE0](v56);
    v116 = v57;
    v58 = [val isTargetedUpdateScheduledForAutoInstall];
    v137 = v58;
    if (v58)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v55 = v4;
    v5 = v4;
    v52 = v55;
    v53 = MEMORY[0x277D82BE0](v52);
    v115 = v53;
    v54 = [val hidingPreferredDescriptor];
    v136 = v54;
    if (v54)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v51 = v6;
    v7 = v6;
    v48 = v51;
    v49 = MEMORY[0x277D82BE0](v48);
    v114 = v49;
    v50 = [val hiddenPreferredStatefulDescriptor];
    v46 = v50;
    v47 = [v46 updateName];
    v43 = v47;
    v44 = MEMORY[0x277D82BE0](v43);
    v113 = v44;
    v45 = [val hidingAlternateDescriptor];
    v135 = v45;
    if (v45)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v42 = v8;
    v9 = v8;
    v39 = v42;
    v40 = MEMORY[0x277D82BE0](v39);
    v112 = v40;
    v41 = [val hiddenAlternateStatefulDescriptor];
    v37 = v41;
    v38 = [v37 updateName];
    v34 = v38;
    v35 = MEMORY[0x277D82BE0](v34);
    v111 = v35;
    v36 = [val enrolledBetaProgram];
    v33 = v36;
    v109 = 0;
    if (v33)
    {
      v32 = [val enrolledBetaProgram];
      v110 = v32;
      v109 = 1;
      v31 = [v110 programID];
      v30 = v31;
    }

    else
    {
      v30 = 0;
    }

    v28 = v30;
    v29 = [*(val + *MEMORY[0x277D64BE8]) count];
    v27 = [val canEnrollInBetaUpdates];
    v134 = v27;
    if (v27)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v26 = v10;
    v11 = v10;
    v20 = v26;
    v21 = MEMORY[0x277D82BE0](v20);
    v108 = v21;
    v22 = *(val + *MEMORY[0x277D64BF0]);
    v23 = *(val + *MEMORY[0x277D64BF8]);
    v24 = *(val + *MEMORY[0x277D64C08]);
    v25 = [*(val + *MEMORY[0x277D64BE0]) count];
    v18 = &v12;
    buf = v138;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v138, v99, v94, v89, v86, v87, v77, v75, v73, v71, v69, v62, v60, v57, v53, v49, v44, v40, v35, v28, v29, v21, v22, v23, v24, v25);
    _os_log_impl(&dword_26B0B9000, log, v93[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nRollback applied. Attempts to ask to reboot the device.", buf, 0xFCu);
    MEMORY[0x277D82BD8](v20);
    if (v109)
    {
      MEMORY[0x277D82BD8](v110);
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
    if (v117)
    {
      MEMORY[0x277D82BD8](v118);
    }

    if (v119)
    {
      MEMORY[0x277D82BD8](v120);
    }

    if (v121)
    {
      MEMORY[0x277D82BD8](v122);
    }

    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v75);
    if (v123)
    {
      MEMORY[0x277D82BD8](v124);
    }

    if (v125)
    {
      MEMORY[0x277D82BD8](v126);
    }

    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v88);
    objc_storeStrong(&v108, 0);
    objc_storeStrong(&v111, 0);
    objc_storeStrong(&v112, 0);
    objc_storeStrong(&v113, 0);
    objc_storeStrong(&v114, 0);
    objc_storeStrong(&v115, 0);
    objc_storeStrong(&v116, 0);
    objc_storeStrong(&v127, 0);
    objc_storeStrong(&v128, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_initWeak(&from, val);
  v17 = [val delegateCallbackQueue];
  queue = v17;
  v100 = MEMORY[0x277D85DD0];
  v101 = -1073741824;
  v102 = 0;
  v103 = __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke;
  v104 = &unk_279CCBD58;
  v16 = v106;
  objc_copyWeak(v106, &from);
  block = &v100;
  v106[1] = v132;
  v13 = &v105;
  v105 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, block);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, 0);
  objc_destroyWeak(v16);
  objc_destroyWeak(&from);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 40));
  v5 = 0;
  if (!v19[0])
  {
    v4 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v18 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      location = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v18, v17, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v5 = 1;
  }

  if (v5)
  {
    v14 = 1;
  }

  else
  {
    v1 = [v19[0] delegate];
    v2 = v19[0];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_472;
    v11 = &unk_279CCC8A0;
    objc_copyWeak(v13, (a1 + 40));
    v13[1] = *(a1 + 48);
    v12 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v1 statefulUIManager:v2 requestRollbackRestartApprovalWithCompletion:&v7];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v12, 0);
    objc_destroyWeak(v13);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_472(id *a1, void *a2)
{
  v82 = a1;
  v83 = "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]_block_invoke";
  v129 = *MEMORY[0x277D85DE8];
  v122 = a1;
  v121 = a2;
  v120[1] = a1;
  v120[0] = objc_loadWeakRetained(a1 + 5);
  v81 = 0;
  if (!v120[0])
  {
    v80 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v80 oslog];
    MEMORY[0x277D82BD8](v80);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v76 = type;
      v78 = NSStringFromSelector(v82[6]);
      location = &v117;
      v117 = MEMORY[0x277D82BE0](v78);
      buf = v128;
      __os_log_helper_16_2_2_8_32_8_66(v128, v83, v117);
      _os_log_error_impl(&dword_26B0B9000, log, v76[0], "%s: Self is nil in %{public}@. Stopping.", v128, 0x16u);
      MEMORY[0x277D82BD8](v78);
      objc_storeStrong(&v117, 0);
    }

    objc_storeStrong(&oslog, 0);
    v116 = 1;
    v81 = 1;
  }

  if (v81)
  {
    v115 = 1;
  }

  else
  {
    v74 = [MEMORY[0x277D64B58] statefulUILogger];
    v114 = [v74 oslog];
    MEMORY[0x277D82BD8](v74);
    v113 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v114;
      *v66 = v113;
      v67 = v120[0];
      v2 = objc_opt_class();
      v68 = NSStringFromClass(v2);
      v69 = MEMORY[0x277D82BE0](v68);
      v112 = v69;
      v3 = *(v120[0] + *MEMORY[0x277D64C00]);
      v70 = SUUIStatefulUIStateToString();
      v71 = MEMORY[0x277D82BE0](v70);
      v111 = v71;
      v72 = [v120[0] currentState];
      v73 = [v120[0] delegate];
      v109 = 0;
      v107 = 0;
      if (v73)
      {
        v110 = [v120[0] delegate];
        v63 = 1;
        v109 = 1;
        v4 = objc_opt_class();
        v108 = NSStringFromClass(v4);
        v107 = 1;
        v64 = v108;
      }

      else
      {
        v64 = @"(null)";
      }

      v57 = v64;
      v58 = [v120[0] delegate];
      v59 = [v120[0] scanError];
      v60 = [v120[0] preferredStatefulDescriptor];
      v61 = [v120[0] alternateStatefulDescriptor];
      v62 = [v120[0] currentDownload];
      v105 = 0;
      v103 = 0;
      v101 = 0;
      if (v62)
      {
        v106 = [v120[0] currentDownload];
        v55 = 1;
        v105 = 1;
        v104 = [v106 descriptor];
        v103 = 1;
        v102 = [v104 updateName];
        v101 = 1;
        v56 = v102;
      }

      else
      {
        v56 = @"(null)";
      }

      v32 = v56;
      v33 = [v120[0] currentDownload];
      [v120[0] currentUpdateOperationType];
      v34 = SUUIUpdateContinuousOperationTypeToString();
      v35 = MEMORY[0x277D82BE0](v34);
      v100 = v35;
      v126 = [v120[0] isTargetedUpdateScheduledForAutoInstall];
      v45 = @"NO";
      v46 = @"YES";
      v53 = 1;
      if (v126)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v36 = v5;
      v6 = v5;
      v37 = v36;
      v38 = MEMORY[0x277D82BE0](v37);
      v99 = v38;
      v125 = [v120[0] hidingPreferredDescriptor];
      if (v125)
      {
        v7 = v46;
      }

      else
      {
        v7 = v45;
      }

      v39 = v7;
      v8 = v7;
      v40 = v39;
      v41 = MEMORY[0x277D82BE0](v40);
      v98 = v41;
      v42 = [v120[0] hiddenPreferredStatefulDescriptor];
      v43 = [v42 updateName];
      v44 = MEMORY[0x277D82BE0](v43);
      v97 = v44;
      v124 = [v120[0] hidingAlternateDescriptor];
      if (v124)
      {
        v9 = v46;
      }

      else
      {
        v9 = v45;
      }

      v47 = v9;
      v10 = v9;
      v48 = v47;
      v49 = MEMORY[0x277D82BE0](v48);
      v96 = v49;
      v50 = [v120[0] hiddenAlternateStatefulDescriptor];
      v51 = [v50 updateName];
      v52 = MEMORY[0x277D82BE0](v51);
      v95 = v52;
      v54 = [v120[0] enrolledBetaProgram];
      v93 = 0;
      if (v54)
      {
        v94 = [v120[0] enrolledBetaProgram];
        v93 = 1;
        v31 = [v94 programID];
      }

      else
      {
        v31 = 0;
      }

      v20 = v31;
      v21 = [*(v120[0] + *MEMORY[0x277D64BE8]) count];
      v123 = [v120[0] canEnrollInBetaUpdates];
      if (v123)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v19 = v11;
      v12 = v11;
      v30 = v19;
      v22 = MEMORY[0x277D82BE0](v30);
      v92 = v22;
      v23 = *(v120[0] + *MEMORY[0x277D64BF0]);
      v24 = *(v120[0] + *MEMORY[0x277D64BF8]);
      v25 = *(v120[0] + *MEMORY[0x277D64C08]);
      v26 = [*(v120[0] + *MEMORY[0x277D64BE0]) count];
      v29 = SUUIUserInteractionResponseToString();
      v91 = MEMORY[0x277D82BE0](v29);
      v27 = &v13;
      v28 = v127;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v127, v83, v67, v69, v71, v72, v57, v58, v59, v60, v61, v32, v33, v35, v38, v41, v44, v49, v52, v20, v21, v22, v23, v24, v25, v26, v91);
      _os_log_impl(&dword_26B0B9000, v65, v66[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUser responded to the rollback reboot request: %{public}@", v28, 0x106u);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      if (v93)
      {
        MEMORY[0x277D82BD8](v94);
      }

      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v33);
      if (v101)
      {
        MEMORY[0x277D82BD8](v102);
      }

      if (v103)
      {
        MEMORY[0x277D82BD8](v104);
      }

      if (v105)
      {
        MEMORY[0x277D82BD8](v106);
      }

      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v58);
      if (v107)
      {
        MEMORY[0x277D82BD8](v108);
      }

      if (v109)
      {
        MEMORY[0x277D82BD8](v110);
      }

      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v68);
      obj = 0;
      objc_storeStrong(&v91, 0);
      objc_storeStrong(&v92, obj);
      objc_storeStrong(&v95, obj);
      objc_storeStrong(&v96, obj);
      objc_storeStrong(&v97, obj);
      objc_storeStrong(&v98, obj);
      objc_storeStrong(&v99, obj);
      objc_storeStrong(&v100, obj);
      objc_storeStrong(&v111, obj);
      objc_storeStrong(&v112, obj);
    }

    objc_storeStrong(&v114, 0);
    queue = *(v120[0] + *MEMORY[0x277D64C18]);
    block = &v84;
    v84 = MEMORY[0x277D85DD0];
    v85 = -1073741824;
    v86 = 0;
    v87 = __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_473;
    v88 = &unk_279CCC878;
    v17 = v90;
    objc_copyWeak(v90, v82 + 5);
    v90[1] = v82[6];
    v90[2] = v121;
    v16 = (block + 32);
    v89 = MEMORY[0x277D82BE0](v82[4]);
    dispatch_async(queue, block);
    objc_storeStrong(v16, 0);
    objc_destroyWeak(v17);
    v115 = 0;
  }

  objc_storeStrong(v120, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_473(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v15[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v14 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      v4 = NSStringFromSelector(*(a1 + 48));
      v12 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v16, "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]_block_invoke", v12);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v16, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    v11 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v10 = 1;
  }

  else if (*(a1 + 56))
  {
    v1 = [v15[0] managerFSM];
    [v1 postEvent:*MEMORY[0x277D64D48] withInfo:*(a1 + 32)];
    MEMORY[0x277D82BD8](v1);
    v10 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"Reboot for rollback apply"];
    [v9 setRebootType:1];
    v8 = objc_alloc_init(MEMORY[0x277D0AE18]);
    [v8 shutdownWithOptions:v9];
    v10 = 1;
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
}

- (id)contextForFullScanOperation:(id)a3 withThirdPartyScanResults:(id)a4 scanError:(id)a5 forceReloadScanResults:(BOOL)a6
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = a6;
  v19 = objc_alloc_init(MEMORY[0x277D648F8]);
  [v19 setForced:1];
  v18 = [(SUUIMobileStatefulUIManager *)v24 clientIdentifier];
  [v19 setIdentifier:?];
  MEMORY[0x277D82BD8](v18);
  if (_os_feature_enabled_impl())
  {
    [v19 addType:?];
    [v19 addType:2];
    [v19 addType:3];
    [v19 addType:1];
    [v19 removeType:4];
    [v19 setScanForSplatIfNecessary:0];
  }

  v12 = [SUUIMobileScanOperationFullScanContext alloc];
  v7 = v22;
  v8 = v21;
  v9 = v20;
  v10 = v19;
  agreementStatusRegistry = v24->_agreementStatusRegistry;
  v13 = [(SUUIStatefulUIManager *)v24 currentSeedingDevice];
  v14 = [(SUUIMobileScanOperationFullScanContext *)v12 initWithPreviousThirdPartyScanResults:v7 previousScanError:v8 forceReloadScanResults:v9 scanOptions:v10 agreementStatusRegistry:agreementStatusRegistry currentSeedingDevice:?];
  MEMORY[0x277D82BD8](v13);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v14;
}

- (id)contextForRefreshScanOperation:(id)a3 withPreviouslyDiscoveredDownload:(id)a4 encounteredError:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v11 = [SUUIMobileScanOperationRefreshScanContext alloc];
  v9 = v15;
  v10 = v14;
  v12 = [(SUUIMobileStatefulUIManager *)v17 currentAutoInstallOperation];
  agreementStatusRegistry = v17->_agreementStatusRegistry;
  v13 = [SUUIMobileScanOperationRefreshScanContext initWithPreviousDownload:v11 previousEncounteredError:"initWithPreviousDownload:previousEncounteredError:currentAutoInstallOperation:andAgreementStatusRegistry:" currentAutoInstallOperation:v9 andAgreementStatusRegistry:v10];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (id)contextForDownloadUpdateOperation:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [SUUIMobileUpdateOperationDownloadContext alloc];
  v3 = [(SUUIStatefulUIManager *)v8 updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationDownloadContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:v8->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForDownloadAndInstallUpdateOperation:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [SUUIMobileUpdateOperationDownloadAndInstallContext alloc];
  v3 = [(SUUIStatefulUIManager *)v8 updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationDownloadAndInstallContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:v8->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForDownloadAndScheduleUpdateOperation:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [SUUIMobileUpdateOperationDownloadAndScheduleContext alloc];
  v3 = [(SUUIStatefulUIManager *)v8 updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationDownloadAndScheduleContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:v8->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForInstallUpdateOperation:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [SUUIMobileUpdateOperationInstallContext alloc];
  v3 = [(SUUIStatefulUIManager *)v8 updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationInstallContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:v8->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForScheduleUpdateOperation:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [SUUIMobileUpdateOperationScheduleContext alloc];
  v3 = [(SUUIStatefulUIManager *)v8 updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationScheduleContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:v8->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForUserUnscheduleUpdateOperation:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [SUUIMobileUpdateOperationUnscheduleContext alloc];
  v5 = [(SUUIMobileUpdateOperationUnscheduleContext *)v3 initWithAutoInstallOperation:v7->_currentAutoInstallOperation];
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)assignScanResults:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24.receiver = v27;
  v24.super_class = SUUIMobileStatefulUIManager;
  v25 = [(SUUIStatefulUIManager *)&v24 assignScanResults:location[0]];
  v22 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277D82BE0](v22);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  v21 = v3;
  objc_storeStrong(&v22, 0);
  v23 = v21;
  v19 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277D82BE0](v19);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](0);
  }

  v18 = v4;
  objc_storeStrong(&v19, 0);
  v20 = v18;
  v11 = 1;
  if (!v18)
  {
    v11 = v23 != 0;
  }

  if (!v11)
  {
    _suui_precondition_failure_with_format();
  }

  v15 = 0;
  v13 = 0;
  if (v23)
  {
    v16 = [v23 currentAutoInstallOperation];
    v15 = 1;
    v5 = MEMORY[0x277D82BE0](v16);
  }

  else
  {
    v14 = [v20 currentAutoInstallOperation];
    v13 = 1;
    v5 = MEMORY[0x277D82BE0](v14);
  }

  v17 = v5;
  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  v12 = [(SUUIMobileStatefulUIManager *)v27 currentAutoInstallOperation];
  if (v12 != v17 && (!v12 || ([v17 isEqual:v12] & 1) == 0))
  {
    if (v12)
    {
      v10 = [(SUUIMobileStatefulUIManager *)v27 currentAutoInstallOperation];
      [(SUAutoInstallOperation *)v10 setDelegate:0];
      MEMORY[0x277D82BD8](v10);
    }

    [(SUUIMobileStatefulUIManager *)v27 setCurrentAutoInstallOperation:v17];
    v25 = 1;
    if (v12)
    {
      v8 = v27;
      v9 = [(SUUIMobileStatefulUIManager *)v27 currentAutoInstallOperation];
      [(SUAutoInstallOperation *)v9 setDelegate:v8];
      MEMORY[0x277D82BD8](v9);
    }
  }

  v7 = v25;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (void)assignFullScanResults:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9.receiver = v11;
  v9.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v9 assignFullScanResults:location[0]];
  [(SUUIMobileStatefulUIManager *)v11 willChangeValueForKey:?];
  v8[0] = v11;
  v8[1] = @"rollbackDescriptor";
  v6 = MEMORY[0x277D82BE0](location[0]);
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  v3 = [v5 rollbackDescriptor];
  rollbackDescriptor = v11->_rollbackDescriptor;
  v11->_rollbackDescriptor = v3;
  MEMORY[0x277D82BD8](rollbackDescriptor);
  MEMORY[0x277D82BD8](v5);
  v7 = 2;
  v12 = v8;
  if (v8[0])
  {
    [*v12 didChangeValueForKey:v12[1]];
  }

  objc_storeStrong(location, 0);
}

- (void)assignDownloadAndScheduleUpdateResults:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11.receiver = v13;
  v11.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v11 assignDownloadAndScheduleUpdateResults:location[0]];
  v9 = MEMORY[0x277D82BE0](location[0]);
  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  v10 = v8;
  v3 = [v8 isScheduled];
  [(SUUIStatefulUIManager *)v13 setIsAutoUpdateScheduled:v3];
  v6 = [v10 currentAutoInstallOperation];
  [(SUUIMobileStatefulUIManager *)v13 setCurrentAutoInstallOperation:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [v10 currentAutoInstallOperation];
  MEMORY[0x277D82BD8](v7);
  if (v7)
  {
    v4 = v13;
    v5 = [(SUUIMobileStatefulUIManager *)v13 currentAutoInstallOperation];
    [(SUAutoInstallOperation *)v5 setDelegate:v4];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)assignScheduleUpdateResults:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10.receiver = v12;
  v10.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v10 assignScheduleUpdateResults:location[0]];
  v8 = MEMORY[0x277D82BE0](location[0]);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  v9 = v7;
  v3 = [v7 isSuccess];
  [(SUUIStatefulUIManager *)v12 setIsAutoUpdateScheduled:v3];
  v4 = [v9 currentAutoInstallOperation];
  [(SUUIMobileStatefulUIManager *)v12 setCurrentAutoInstallOperation:?];
  MEMORY[0x277D82BD8](v4);
  v5 = v12;
  v6 = [(SUUIMobileStatefulUIManager *)v12 currentAutoInstallOperation];
  [(SUAutoInstallOperation *)v6 setDelegate:v5];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)assignUnscheduleUpdateResults:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v3 assignUnscheduleUpdateResults:location[0]];
  [(SUUIMobileStatefulUIManager *)v5 setCurrentAutoInstallOperation:0];
  objc_storeStrong(location, 0);
}

@end