@interface SUSettingsStatefulUIManager
+ (id)_generateStateTable;
- (BOOL)assignScanRelatedMembersFromScanResults:(id)a3;
- (BOOL)doesTargetedUpdateMatchDescriptor:(id)a3;
- (BOOL)doesTargetedUpdateMatchDescriptorType:(unint64_t)a3;
- (BOOL)isDelayingUpdate;
- (BOOL)isPerformingFullScan;
- (BOOL)isPerformingRefresh;
- (BOOL)isPerformingUpdate;
- (BOOL)isPreferredUpdatePromotedAsAlternate;
- (BOOL)isTargetedUpdateScheduledForAutoInstall;
- (SUSettingsStatefulUIManager)initWithManagerClient:(id)a3;
- (SUSettingsStatefulUIManager)initWithManagerClient:(id)a3 betaManager:(id)a4 preferences:(id)a5 options:(id)a6;
- (SUSettingsStatefulUIManager)initWithManagerClient:(id)a3 options:(id)a4;
- (SUSettingsStatefulUIManagerDelegate)delegate;
- (id)baseDomain;
- (id)createScanOperationOptions;
- (id)createUpdateOperationOptions;
- (id)latestUpdateStatefulDescriptor;
- (id)targetedUpdateForDownload:(id)a3;
- (id)targetedUpdateMatchingDescriptor:(id)a3;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_CheckForAvailableUpdate:(id)a3 error:(id *)a4;
- (int64_t)action_RefreshScanResults:(id)a3 error:(id *)a4;
- (int64_t)action_ReportNoUpdateFound:(id)a3 error:(id *)a4;
- (int64_t)action_ReportRefreshScanResults:(id)a3 error:(id *)a4;
- (int64_t)action_ReportRefreshScanResultsFailed:(id)a3 error:(id *)a4;
- (int64_t)action_ReportScanFailed:(id)a3 error:(id *)a4;
- (int64_t)action_ReportUpdatesAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_ThirdPartyScanDuringRefresh:(id)a3 error:(id *)a4;
- (int64_t)convertFSMStateToUIState:(id)a3;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)assignDescriptorOfType:(unint64_t)a3 fromSearchResults:(id)a4;
- (void)assignRefreshScanResults:(id)a3;
- (void)autoInstallOperationDidConsent:(id)a3;
- (void)autoInstallOperationIsReadyToInstall:(id)a3 withResponse:(id)a4;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)a3 passcodePolicyType:(unint64_t)a4;
- (void)autoInstallOperationWasCancelled:(id)a3;
- (void)batteryLevelChanged:(id)a3;
- (void)batteryStateChanged:(id)a3;
- (void)beginUpdateOperationWithDescriptor:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 operationTypeBlock:(id)a6;
- (void)checkForAvailableUpdates;
- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)a3;
- (void)checkForUpdatesInBackground;
- (void)clearPastScanResults;
- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5;
- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5;
- (void)client:(id)a3 downloadDidStart:(id)a4;
- (void)client:(id)a3 downloadProgressDidChange:(id)a4;
- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4;
- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 installDidStart:(id)a4;
- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6;
- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4;
- (void)dealloc;
- (void)didBecomeActive:(id)a3;
- (void)doEnrollInBetaUpdatesProgram:(id)a3 completionHandler:(id)a4;
- (void)downloadAndInstall:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6;
- (void)downloadAndScheduleUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6;
- (void)downloadUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6;
- (void)enrollInBetaUpdatesProgram:(id)a3 withPurgeConfirmation:(id)a4 completionHandler:(id)a5;
- (void)executeOperationOnDelegate:(SEL)a3 usingBlock:(id)a4;
- (void)handleFailedFullScan:(id)a3;
- (void)handleFullScanResults:(id)a3;
- (void)handleRefreshScanResults:(id)a3;
- (void)handleScanFinishedRollbackApplied:(id)a3;
- (void)hideAlternateUpdate;
- (void)hideNonTargetedUpdateDescriptors;
- (void)hidePreferredUpdate;
- (void)installUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6;
- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4;
- (void)performFullScan:(id)a3;
- (void)performFullScanWithScanResults:(id)a3 andScanError:(id)a4;
- (void)performPostUpdateOperationRefresh:(BOOL)a3 withDownload:(id)a4 didScheduledUpdate:(BOOL)a5 autoInstallOperation:(id)a6 error:(id)a7 completionHandler:(id)a8;
- (void)performRefreshScan:(id)a3;
- (void)promoteTargetedUpdateToUserInitiatedStatus;
- (void)refreshBetaUpdates:(id)a3;
- (void)refreshState:(BOOL)a3;
- (void)revealHiddenAlteranteUpdate;
- (void)revealHiddenPreferredUpdate;
- (void)rvTriggerNeRDUpdate:(id)a3;
- (void)scheduleUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6;
- (void)setCurrentDownload:(id)a3;
- (void)setupBatteryMonitoring;
- (void)setupFSM;
- (void)setupNetworkMonitoring;
- (void)setupObservers;
- (void)unenrollFromBetaUpdatesWithCompletion:(id)a3;
- (void)unscheduleTargetedUpdateAutomaticInstallation;
- (void)updateDescriptorsUsingScanResults:(id)a3 andWithConcreteError:(id)a4;
- (void)updateStatePostDownloadOperation:(BOOL)a3 withDownload:(id)a4 error:(id)a5 completionHandler:(id)a6;
@end

@implementation SUSettingsStatefulUIManager

+ (id)_generateStateTable
{
  v152[7] = *MEMORY[0x277D85DE8];
  v56[2] = a1;
  v56[1] = a2;
  v151[0] = @"Idle";
  v149[0] = @"CheckForAvailableUpdate";
  v4 = MEMORY[0x277D64800];
  v147[0] = *MEMORY[0x277D64800];
  v148[0] = @"CheckingForAvailableUpdate";
  v5 = MEMORY[0x277D644B8];
  v147[1] = *MEMORY[0x277D644B8];
  v148[1] = @"CheckForAvailableUpdate";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:?];
  v150[0] = v53;
  v149[1] = @"RefreshScanResults";
  v145[0] = *v4;
  v146[0] = @"RefreshingScanResults";
  v145[1] = *v5;
  v146[1] = @"RefreshScanResults";
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];
  v150[1] = v52;
  v149[2] = @"RefreshScanResults";
  v143 = *v5;
  v6 = MEMORY[0x277D647D0];
  v144 = *MEMORY[0x277D647D0];
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:?];
  v150[2] = v51;
  v149[3] = @"PerformThirdPartyScan";
  v141 = *v5;
  v142 = *v6;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
  v150[3] = v50;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:4];
  v152[0] = v49;
  v151[1] = @"CheckingForAvailableUpdate";
  v139[0] = @"UpdatesAvailable";
  v137[0] = *v4;
  v138[0] = @"UpdatesAvailable";
  v137[1] = *v5;
  v138[1] = @"ReportUpdatesAvailable";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];
  v140[0] = v48;
  v139[1] = @"NoUpdateAvailable";
  v135[0] = *v4;
  v136[0] = @"NoUpdateFound";
  v135[1] = *v5;
  v136[1] = @"ReportNoUpdateFound";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];
  v140[1] = v47;
  v139[2] = @"CheckingForUpdatesFailed";
  v133[0] = *v4;
  v134[0] = @"ScanFailed";
  v133[1] = *v5;
  v134[1] = @"ReportScanFailed";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
  v140[2] = v46;
  v139[3] = @"CheckForAvailableUpdate";
  v131 = *v5;
  v132 = *v6;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
  v140[3] = v45;
  v139[4] = @"RefreshScanResults";
  v129 = *v5;
  v130 = *v6;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
  v140[4] = v44;
  v139[5] = @"PerformThirdPartyScan";
  v127 = *v5;
  v128 = *v6;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v140[5] = v43;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:?];
  v152[1] = v42;
  v151[2] = @"NoUpdateFound";
  v125[0] = @"CheckForAvailableUpdate";
  v123[0] = *v4;
  v124[0] = @"CheckingForAvailableUpdate";
  v123[1] = *v5;
  v124[1] = @"CheckForAvailableUpdate";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
  v126[0] = v41;
  v125[1] = @"RefreshScanResults";
  v121[0] = *v4;
  v122[0] = @"RefreshingScanResults";
  v121[1] = *v5;
  v122[1] = @"RefreshScanResults";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
  v126[1] = v40;
  v125[2] = @"PerformThirdPartyScan";
  v119 = *v4;
  v120 = @"PerformingThirdPartyScan";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
  v126[2] = v39;
  v125[3] = @"UpdatesAvailable";
  v117[0] = *v4;
  v118[0] = @"UpdatesAvailable";
  v117[1] = *v5;
  v118[1] = @"ReportUpdatesAvailable";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
  v126[3] = v38;
  v125[4] = @"NoUpdateAvailable";
  v115[0] = *v4;
  v116[0] = @"NoUpdateFound";
  v115[1] = *v5;
  v116[1] = @"ReportNoUpdateFound";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
  v126[4] = v37;
  v125[5] = @"CheckingForUpdatesFailed";
  v113[0] = *v4;
  v114[0] = @"ScanFailed";
  v113[1] = *v5;
  v114[1] = @"ReportScanFailed";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];
  v126[5] = v36;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:6];
  v152[2] = v35;
  v151[3] = @"UpdatesAvailable";
  v111[0] = @"CheckForAvailableUpdate";
  v109[0] = *v4;
  v110[0] = @"CheckingForAvailableUpdate";
  v109[1] = *v5;
  v110[1] = @"CheckForAvailableUpdate";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
  v112[0] = v34;
  v111[1] = @"RefreshScanResults";
  v107[0] = *v4;
  v108[0] = @"RefreshingScanResults";
  v107[1] = *v5;
  v108[1] = @"RefreshScanResults";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
  v112[1] = v33;
  v111[2] = @"PerformThirdPartyScan";
  v105 = *v4;
  v106 = @"PerformingThirdPartyScan";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
  v112[2] = v32;
  v111[3] = @"UpdatesAvailable";
  v103[0] = *v4;
  v104[0] = @"UpdatesAvailable";
  v103[1] = *v5;
  v104[1] = @"ReportUpdatesAvailable";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v112[3] = v31;
  v111[4] = @"NoUpdateAvailable";
  v101[0] = *v4;
  v102[0] = @"NoUpdateFound";
  v101[1] = *v5;
  v102[1] = @"ReportNoUpdateFound";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v112[4] = v30;
  v111[5] = @"CheckingForUpdatesFailed";
  v99[0] = *v4;
  v100[0] = @"ScanFailed";
  v99[1] = *v5;
  v100[1] = @"ReportScanFailed";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
  v112[5] = v29;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:6];
  v152[3] = v28;
  v151[4] = @"ScanFailed";
  v97[0] = @"CheckForAvailableUpdate";
  v95[0] = *v4;
  v96[0] = @"CheckingForAvailableUpdate";
  v95[1] = *v5;
  v96[1] = @"CheckForAvailableUpdate";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
  v98[0] = v27;
  v97[1] = @"RefreshScanResults";
  v93[0] = *v4;
  v94[0] = @"RefreshingScanResults";
  v93[1] = *v5;
  v94[1] = @"RefreshScanResults";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v98[1] = v26;
  v97[2] = @"PerformThirdPartyScan";
  v91 = *v4;
  v92 = @"PerformingThirdPartyScan";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
  v98[2] = v25;
  v97[3] = @"UpdatesAvailable";
  v89[0] = *v4;
  v90[0] = @"UpdatesAvailable";
  v89[1] = *v5;
  v90[1] = @"ReportUpdatesAvailable";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v98[3] = v24;
  v97[4] = @"NoUpdateAvailable";
  v87[0] = *v4;
  v88[0] = @"NoUpdateFound";
  v87[1] = *v5;
  v88[1] = @"ReportNoUpdateFound";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v98[4] = v23;
  v97[5] = @"CheckingForUpdatesFailed";
  v85[0] = *v4;
  v86[0] = @"ScanFailed";
  v85[1] = *v5;
  v86[1] = @"ReportScanFailed";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v98[5] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:6];
  v152[4] = v21;
  v151[5] = @"PerformingThirdPartyScan";
  v83[0] = @"CheckForAvailableUpdate";
  v81[0] = *v4;
  v82[0] = @"CheckingForAvailableUpdate";
  v81[1] = *v5;
  v82[1] = @"CheckForAvailableUpdate";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v84[0] = v20;
  v83[1] = @"RefreshScanResults";
  v79[0] = *v4;
  v80[0] = @"RefreshingScanResults";
  v79[1] = *v5;
  v80[1] = @"RefreshScanResults";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v84[1] = v19;
  v83[2] = @"UpdatesAvailable";
  v77[0] = *v4;
  v78[0] = @"UpdatesAvailable";
  v77[1] = *v5;
  v78[1] = @"ReportUpdatesAvailable";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v84[2] = v18;
  v83[3] = @"NoUpdateAvailable";
  v75[0] = *v4;
  v76[0] = @"NoUpdateFound";
  v75[1] = *v5;
  v76[1] = @"ReportNoUpdateFound";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v84[3] = v17;
  v83[4] = @"CheckingForUpdatesFailed";
  v73[0] = *v4;
  v74[0] = @"ScanFailed";
  v73[1] = *v5;
  v74[1] = @"ReportScanFailed";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v84[4] = v16;
  v83[5] = @"PerformThirdPartyScan";
  v71 = *v5;
  v72 = *v6;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v84[5] = v15;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:6];
  v152[5] = v14;
  v151[6] = @"RefreshingScanResults";
  v69[0] = @"CheckForAvailableUpdate";
  v67[0] = *v4;
  v68[0] = @"CheckingForAvailableUpdate";
  v67[1] = *v5;
  v68[1] = @"CheckForAvailableUpdate";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v70[0] = v13;
  v69[1] = @"UpdatesAvailable";
  v65[0] = *v4;
  v66[0] = @"UpdatesAvailable";
  v65[1] = *v5;
  v66[1] = @"ReportRefreshScanResults";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v70[1] = v12;
  v69[2] = @"NoUpdateAvailable";
  v63[0] = *v4;
  v64[0] = @"NoUpdateFound";
  v63[1] = *v5;
  v64[1] = @"ReportRefreshScanResults";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v70[2] = v11;
  v69[3] = @"PerformThirdPartyScan";
  v61[0] = *v4;
  v62[0] = @"PerformingThirdPartyScan";
  v61[1] = *v5;
  v62[1] = @"ThirdPartyScanDuringRefresh";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v70[3] = v10;
  v69[4] = @"RefreshScanResultsFailed";
  v59 = *v5;
  v60 = @"ReportRefreshScanResultsFailed";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v70[4] = v9;
  v69[5] = @"RefreshScanResults";
  v57 = *v5;
  v58 = *v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v70[5] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:6];
  v152[6] = v7;
  v56[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:7];
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
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v55 = [v2 initWithDictionary:v56[0] copyItems:1];
  v54 = MEMORY[0x277D82BE0](v55);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(v56, 0);
  *MEMORY[0x277D85DE8];

  return v54;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  objc_storeStrong(&v28, a6);
  v27 = 0;
  objc_storeStrong(&v27, a7);
  v26 = a8;
  v16 = [(SUSettingsStatefulUIManager *)v32 managerFSM];
  v15 = [(SUCoreFSM *)v16 extendedStateQueue];
  dispatch_assert_queue_V2(v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  if (v27)
  {
    v25 = [(SUSettingsStatefulUIManager *)v32 convertFSMStateToUIState:v27];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL && [(SUSettingsStatefulUIManager *)v32 currentState]!= v25)
    {
      v24 = [(SUSettingsStatefulUIManager *)v32 currentState];
      [(SUSettingsStatefulUIManager *)v32 setCurrentState:v25];
      v9 = v32;
      v18 = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __86__SUSettingsStatefulUIManager_performAction_onEvent_inState_withInfo_nextState_error___block_invoke;
      v22 = &unk_279CB93C0;
      v23[0] = MEMORY[0x277D82BE0](v32);
      v23[1] = v24;
      v23[2] = v25;
      [(SUSettingsStatefulUIManager *)v9 executeOperationOnDelegate:sel_statefulUIManager_didTransitionFromUIState_toState_ usingBlock:&v18];
      objc_storeStrong(v23, 0);
    }
  }

  if ([location[0] isEqualToString:*MEMORY[0x277D647D0]])
  {
    v17 = 0;
  }

  else if ([location[0] isEqualToString:@"CheckForAvailableUpdate"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_CheckForAvailableUpdate:v28 error:v26];
  }

  else if ([location[0] isEqualToString:@"ReportScanFailed"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_ReportScanFailed:v28 error:v26];
  }

  else if ([location[0] isEqualToString:@"ReportUpdatesAvailable"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_ReportUpdatesAvailable:v28 error:v26];
  }

  else if ([location[0] isEqualToString:@"ReportNoUpdateFound"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_ReportNoUpdateFound:v28 error:v26];
  }

  else if ([location[0] isEqualToString:@"RefreshScanResults"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_RefreshScanResults:v28 error:v26];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResults"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_ReportRefreshScanResults:v28 error:v26];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResultsFailed"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_ReportRefreshScanResultsFailed:v28 error:v26];
  }

  else if ([location[0] isEqualToString:@"ThirdPartyScanDuringRefresh"])
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 action_ThirdPartyScanDuringRefresh:v28 error:v26];
  }

  else
  {
    v17 = [(SUSettingsStatefulUIManager *)v32 actionUnknownAction:location[0] error:v26];
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  return v17;
}

uint64_t __86__SUSettingsStatefulUIManager_performAction_onEvent_inState_withInfo_nextState_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didTransitionFromUIState:*(a1 + 40) toState:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (int64_t)action_CheckForAvailableUpdate:(id)a3 error:(id *)a4
{
  v159 = a4;
  v160 = "[SUSettingsStatefulUIManager action_CheckForAvailableUpdate:error:]";
  v207 = *MEMORY[0x277D85DE8];
  v203 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog[3] = v159;
  v158 = [(SUCoreFSM *)v203->_managerFSM extendedStateQueue];
  v157 = v158;
  dispatch_assert_queue_V2(v157);
  MEMORY[0x277D82BD8](v157);
  obj = MEMORY[0x277D82BE0](v203);
  objc_sync_enter(obj);
  v156 = [(SUSettingsStatefulUIManager *)v203 currentRefreshScanOperation];
  v154 = v156;
  MEMORY[0x277D82BD8](v154);
  if (v154)
  {
    v153 = [(SUSettingsStatefulUIManager *)v203 log];
    v151 = v153;
    v152 = [v151 oslog];
    oslog[0] = v152;
    MEMORY[0x277D82BD8](v151);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v149 = type;
      v150 = [(SUSettingsStatefulUIManager *)v203 currentState];
      v147 = SUSettingsUIStateToString(v150);
      v144 = v147;
      v145 = MEMORY[0x277D82BE0](v144);
      v199 = v145;
      v146 = [(SUSettingsStatefulUIManager *)v203 currentState];
      v197 = 0;
      v195 = 0;
      v143 = [(SUSettingsStatefulUIManager *)v203 delegate];
      v142 = v143;
      if (v142)
      {
        v141 = [(SUSettingsStatefulUIManager *)v203 delegate];
        v198 = v141;
        v197 = 1;
        aClass = objc_opt_class();
        v139 = NSStringFromClass(aClass);
        v196 = v139;
        v195 = 1;
        v138 = v196;
      }

      else
      {
        v138 = @"(null)";
      }

      v136 = v138;
      v137 = [(SUSettingsStatefulUIManager *)v203 delegate];
      v134 = v137;
      v135 = [(SUSettingsStatefulUIManager *)v203 scanError];
      v132 = v135;
      v133 = [(SUSettingsStatefulUIManager *)v203 preferredStatefulDescriptor];
      v130 = v133;
      v131 = [(SUSettingsStatefulUIManager *)v203 alternateStatefulDescriptor];
      v128 = v131;
      v193 = 0;
      v191 = 0;
      v189 = 0;
      v129 = [(SUSettingsStatefulUIManager *)v203 currentDownload];
      v127 = v129;
      if (v127)
      {
        v126 = [(SUSettingsStatefulUIManager *)v203 currentDownload];
        v194 = v126;
        v193 = 1;
        v125 = [v194 descriptor];
        v192 = v125;
        v191 = 1;
        v124 = [v192 humanReadableUpdateName];
        v190 = v124;
        v189 = 1;
        v123 = v190;
      }

      else
      {
        v123 = @"(null)";
      }

      v121 = v123;
      v122 = [(SUSettingsStatefulUIManager *)v203 currentDownload];
      v119 = v122;
      v120 = [(SUSettingsStatefulUIManager *)v203 performThirdPartyScan];
      v4 = "YES";
      if (!v120)
      {
        v4 = "NO";
      }

      v117 = v4;
      v118 = [(SUSettingsStatefulUIManager *)v203 isTargetedUpdateScheduledForAutoInstall];
      v5 = "YES";
      if (!v118)
      {
        v5 = "NO";
      }

      v115 = v5;
      v116 = [(SUSettingsStatefulUIManager *)v203 hidingPreferredDescriptor];
      v6 = "YES";
      if (!v116)
      {
        v6 = "NO";
      }

      v113 = v6;
      v114 = [(SUSettingsStatefulDescriptor *)v203->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v110 = v114;
      v111 = MEMORY[0x277D82BE0](v110);
      v188 = v111;
      v112 = [(SUSettingsStatefulUIManager *)v203 hidingAlternateDescriptor];
      v7 = "YES";
      if (!v112)
      {
        v7 = "NO";
      }

      v108 = v7;
      v109 = [(SUSettingsStatefulDescriptor *)v203->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v105 = v109;
      v106 = MEMORY[0x277D82BE0](v105);
      v187 = v106;
      v185 = 0;
      v107 = [(SUSettingsStatefulUIManager *)v203 enrolledBetaProgram];
      v104 = v107;
      if (v104)
      {
        v103 = [(SUSettingsStatefulUIManager *)v203 enrolledBetaProgram];
        v186 = v103;
        v185 = 1;
        v102 = [v186 programID];
        v101 = v102;
      }

      else
      {
        v101 = 0;
      }

      v99 = v101;
      v100 = [(SUSettingsStatefulUIManager *)v203 betaPrograms];
      v97 = v100;
      v98 = [v97 count];
      v96 = [(SUSettingsStatefulUIManager *)v203 currentFullScanOperation];
      v94 = v96;
      v95 = [(SUSettingsStatefulUIManager *)v203 currentRefreshScanOperation];
      v92 = v95;
      v93 = [(SUSettingsStatefulUIManager *)v203 currentUpdateOperation];
      v90 = v93;
      v91 = [(SUSettingsStatefulUIManager *)v203 auxiliaryOperations];
      v88 = v91;
      v89 = [v88 count];
      v86 = v13;
      buf = v206;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v206, v160, v145, v146, v136, v134, v132, v130, v128, v121, v119, v117, v115, v113, v111, v108, v106, v101, v98, v94, v92, v90, v89);
      _os_log_impl(&dword_26AC94000, log, v149[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v97);
      if (v185)
      {
        MEMORY[0x277D82BD8](v186);
      }

      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v119);
      if (v189)
      {
        MEMORY[0x277D82BD8](v190);
      }

      if (v191)
      {
        MEMORY[0x277D82BD8](v192);
      }

      if (v193)
      {
        MEMORY[0x277D82BD8](v194);
      }

      MEMORY[0x277D82BD8](v127);
      MEMORY[0x277D82BD8](v128);
      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v134);
      if (v195)
      {
        MEMORY[0x277D82BD8](v196);
      }

      if (v197)
      {
        MEMORY[0x277D82BD8](v198);
      }

      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v144);
      objc_storeStrong(&v187, 0);
      objc_storeStrong(&v188, 0);
      objc_storeStrong(&v199, 0);
    }

    objc_storeStrong(oslog, 0);
    currentRefreshScanOperation = v203->_currentRefreshScanOperation;
    v84 = &v179;
    v179 = MEMORY[0x277D85DD0];
    v180 = -1073741824;
    v181 = 0;
    v182 = __68__SUSettingsStatefulUIManager_action_CheckForAvailableUpdate_error___block_invoke;
    v183 = &unk_279CB93E8;
    v83 = &v184;
    v184 = MEMORY[0x277D82BE0](v203);
    [(SUSettingsScanOperation *)currentRefreshScanOperation cancel:v84];
    objc_storeStrong(v83, 0);
  }

  v82 = [(SUSettingsStatefulUIManager *)v203 currentFullScanOperation];
  v81 = v82;
  MEMORY[0x277D82BD8](v81);
  if (v81)
  {
    v80 = [(SUSettingsStatefulUIManager *)v203 log];
    v78 = v80;
    v79 = [v78 oslog];
    v178 = v79;
    MEMORY[0x277D82BD8](v78);
    v177 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v178;
      *v76 = v177;
      v77 = [(SUSettingsStatefulUIManager *)v203 currentState];
      v74 = SUSettingsUIStateToString(v77);
      v71 = v74;
      v72 = MEMORY[0x277D82BE0](v71);
      v176 = v72;
      v73 = [(SUSettingsStatefulUIManager *)v203 currentState];
      v174 = 0;
      v172 = 0;
      v70 = [(SUSettingsStatefulUIManager *)v203 delegate];
      v69 = v70;
      if (v69)
      {
        v68 = [(SUSettingsStatefulUIManager *)v203 delegate];
        v175 = v68;
        v174 = 1;
        v67 = objc_opt_class();
        v66 = NSStringFromClass(v67);
        v173 = v66;
        v172 = 1;
        v65 = v173;
      }

      else
      {
        v65 = @"(null)";
      }

      v63 = v65;
      v64 = [(SUSettingsStatefulUIManager *)v203 delegate];
      v61 = v64;
      v62 = [(SUSettingsStatefulUIManager *)v203 scanError];
      v59 = v62;
      v60 = [(SUSettingsStatefulUIManager *)v203 preferredStatefulDescriptor];
      v57 = v60;
      v58 = [(SUSettingsStatefulUIManager *)v203 alternateStatefulDescriptor];
      v55 = v58;
      v170 = 0;
      v168 = 0;
      v166 = 0;
      v56 = [(SUSettingsStatefulUIManager *)v203 currentDownload];
      v54 = v56;
      if (v54)
      {
        v53 = [(SUSettingsStatefulUIManager *)v203 currentDownload];
        v171 = v53;
        v170 = 1;
        v52 = [v171 descriptor];
        v169 = v52;
        v168 = 1;
        v51 = [v169 humanReadableUpdateName];
        v167 = v51;
        v166 = 1;
        v50 = v167;
      }

      else
      {
        v50 = @"(null)";
      }

      v48 = v50;
      v49 = [(SUSettingsStatefulUIManager *)v203 currentDownload];
      v46 = v49;
      v47 = [(SUSettingsStatefulUIManager *)v203 performThirdPartyScan];
      v8 = "YES";
      if (!v47)
      {
        v8 = "NO";
      }

      v44 = v8;
      v45 = [(SUSettingsStatefulUIManager *)v203 isTargetedUpdateScheduledForAutoInstall];
      v9 = "YES";
      if (!v45)
      {
        v9 = "NO";
      }

      v42 = v9;
      v43 = [(SUSettingsStatefulUIManager *)v203 hidingPreferredDescriptor];
      v10 = "YES";
      if (!v43)
      {
        v10 = "NO";
      }

      v40 = v10;
      v41 = [(SUSettingsStatefulDescriptor *)v203->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v37 = v41;
      v38 = MEMORY[0x277D82BE0](v37);
      v165 = v38;
      v39 = [(SUSettingsStatefulUIManager *)v203 hidingAlternateDescriptor];
      v11 = "YES";
      if (!v39)
      {
        v11 = "NO";
      }

      v35 = v11;
      v36 = [(SUSettingsStatefulDescriptor *)v203->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v32 = v36;
      v33 = MEMORY[0x277D82BE0](v32);
      v164 = v33;
      v162 = 0;
      v34 = [(SUSettingsStatefulUIManager *)v203 enrolledBetaProgram];
      v31 = v34;
      if (v31)
      {
        v30 = [(SUSettingsStatefulUIManager *)v203 enrolledBetaProgram];
        v163 = v30;
        v162 = 1;
        v29 = [v163 programID];
        v28 = v29;
      }

      else
      {
        v28 = 0;
      }

      v26 = v28;
      v27 = [(SUSettingsStatefulUIManager *)v203 betaPrograms];
      v24 = v27;
      v25 = [v24 count];
      v23 = [(SUSettingsStatefulUIManager *)v203 currentFullScanOperation];
      v21 = v23;
      v22 = [(SUSettingsStatefulUIManager *)v203 currentRefreshScanOperation];
      v19 = v22;
      v20 = [(SUSettingsStatefulUIManager *)v203 currentUpdateOperation];
      v17 = v20;
      v18 = [(SUSettingsStatefulUIManager *)v203 auxiliaryOperations];
      v15 = v18;
      v16 = [v15 count];
      v13[17] = v13;
      v14 = v205;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v205, v160, v72, v73, v63, v61, v59, v57, v55, v48, v46, v44, v42, v40, v38, v35, v33, v26, v25, v21, v19, v17, v16);
      _os_log_impl(&dword_26AC94000, v75, v76[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v14, 0xDEu);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v24);
      if (v162)
      {
        MEMORY[0x277D82BD8](v163);
      }

      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v46);
      if (v166)
      {
        MEMORY[0x277D82BD8](v167);
      }

      if (v168)
      {
        MEMORY[0x277D82BD8](v169);
      }

      if (v170)
      {
        MEMORY[0x277D82BD8](v171);
      }

      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v61);
      if (v172)
      {
        MEMORY[0x277D82BD8](v173);
      }

      if (v174)
      {
        MEMORY[0x277D82BD8](v175);
      }

      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v71);
      objc_storeStrong(&v164, 0);
      objc_storeStrong(&v165, 0);
      objc_storeStrong(&v176, 0);
    }

    objc_storeStrong(&v178, 0);
    v204 = 0;
    v161 = 1;
  }

  else
  {
    v161 = 0;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  if (!v161)
  {
    [(SUSettingsStatefulUIManager *)v203 performFullScan:location[0]];
    v204 = 0;
    v161 = 1;
  }

  objc_storeStrong(location, 0);
  v13[16] = v204;
  *MEMORY[0x277D85DE8];
  return v204;
}

- (int64_t)action_ReportUpdatesAvailable:(id)a3 error:(id *)a4
{
  v80 = a4;
  v79 = "[SUSettingsStatefulUIManager action_ReportUpdatesAvailable:error:]";
  v110 = *MEMORY[0x277D85DE8];
  v108 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog[1] = v80;
  v81 = [(SUCoreFSM *)v108->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v81);
  MEMORY[0x277D82BD8](v81);
  v78 = [(SUSettingsStatefulUIManager *)v108 log];
  oslog[0] = [(SUCoreLog *)v78 oslog];
  MEMORY[0x277D82BD8](v78);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v73 = type;
    v74 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v108 currentState]);
    v75 = MEMORY[0x277D82BE0](v74);
    v104 = v75;
    v76 = [(SUSettingsStatefulUIManager *)v108 currentState];
    v77 = [(SUSettingsStatefulUIManager *)v108 delegate];
    v102 = 0;
    v100 = 0;
    if (v77)
    {
      v103 = [(SUSettingsStatefulUIManager *)v108 delegate];
      v70 = 1;
      v102 = 1;
      v4 = objc_opt_class();
      v101 = NSStringFromClass(v4);
      v100 = 1;
      v71 = v101;
    }

    else
    {
      v71 = @"(null)";
    }

    v64 = v71;
    v65 = [(SUSettingsStatefulUIManager *)v108 delegate];
    v66 = [(SUSettingsStatefulUIManager *)v108 scanError];
    v67 = [(SUSettingsStatefulUIManager *)v108 preferredStatefulDescriptor];
    v68 = [(SUSettingsStatefulUIManager *)v108 alternateStatefulDescriptor];
    v69 = [(SUSettingsStatefulUIManager *)v108 currentDownload];
    v98 = 0;
    v96 = 0;
    v94 = 0;
    if (v69)
    {
      v99 = [(SUSettingsStatefulUIManager *)v108 currentDownload];
      v62 = 1;
      v98 = 1;
      v97 = [(SUDownload *)v99 descriptor];
      v96 = 1;
      v95 = [(SUDescriptor *)v97 humanReadableUpdateName];
      v94 = 1;
      v63 = v95;
    }

    else
    {
      v63 = @"(null)";
    }

    v49 = v63;
    v50 = [(SUSettingsStatefulUIManager *)v108 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v108 performThirdPartyScan];
    v56 = "NO";
    v6 = "YES";
    v57 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v51 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v108 isTargetedUpdateScheduledForAutoInstall];
    v8 = v57;
    if (!v7)
    {
      v8 = v56;
    }

    v52 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v108 hidingPreferredDescriptor];
    v10 = v57;
    if (!v9)
    {
      v10 = v56;
    }

    v53 = v10;
    v54 = [(SUSettingsStatefulDescriptor *)v108->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v55 = MEMORY[0x277D82BE0](v54);
    v93 = v55;
    v11 = [(SUSettingsStatefulUIManager *)v108 hidingAlternateDescriptor];
    v12 = v57;
    if (!v11)
    {
      v12 = v56;
    }

    v58 = v12;
    v59 = [(SUSettingsStatefulDescriptor *)v108->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v60 = MEMORY[0x277D82BE0](v59);
    v92 = v60;
    v61 = [(SUSettingsStatefulUIManager *)v108 enrolledBetaProgram];
    v90 = 0;
    if (v61)
    {
      v91 = [(SUSettingsStatefulUIManager *)v108 enrolledBetaProgram];
      v90 = 1;
      v48 = [(SDBetaProgram *)v91 programID];
    }

    else
    {
      v48 = 0;
    }

    v26 = v48;
    v47 = [(SUSettingsStatefulUIManager *)v108 betaPrograms];
    v27 = [(NSArray *)v47 count];
    v46 = [(SUSettingsStatefulUIManager *)v108 currentFullScanOperation];
    v45 = [(SUSettingsStatefulUIManager *)v108 currentRefreshScanOperation];
    v44 = [(SUSettingsStatefulUIManager *)v108 currentUpdateOperation];
    v43 = [(SUSettingsStatefulUIManager *)v108 auxiliaryOperations];
    v28 = [(NSMutableSet *)v43 count];
    v42 = [location[0] fullScanResults];
    v41 = [v42 preferredDescriptor];
    v40 = [v41 humanReadableUpdateName];
    v29 = MEMORY[0x277D82BE0](v40);
    v89 = v29;
    v39 = [location[0] fullScanResults];
    v38 = [v39 preferredDescriptor];
    v37 = [location[0] fullScanResults];
    v36 = [v37 alternateDescriptor];
    v35 = [v36 humanReadableUpdateName];
    v30 = MEMORY[0x277D82BE0](v35);
    v88 = v30;
    v34 = [location[0] fullScanResults];
    v33 = [v34 alternateDescriptor];
    v31 = &v14;
    buf = v109;
    __os_log_helper_16_2_26_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_66_8_0(v109, v79, v75, v76, v64, v65, v66, v67, v68, v49, v50, v51, v52, v53, v55, v58, v60, v48, v27, v46, v45, v44, v28, v29, v38, v30, v33);
    _os_log_impl(&dword_26AC94000, log, v73[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nReporting on available updates:\n\tPreferred update: %{public}@ (%p)\n\tAlternate update: %{public}@ (%p)", buf, 0x106u);
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
    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v50);
    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    if (v96)
    {
      MEMORY[0x277D82BD8](v97);
    }

    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v65);
    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](v103);
    }

    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v74);
    obj = 0;
    objc_storeStrong(&v88, 0);
    objc_storeStrong(&v89, obj);
    objc_storeStrong(&v92, obj);
    objc_storeStrong(&v93, obj);
    objc_storeStrong(&v104, obj);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&v108->_delegate);
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained)
  {
    v22 = objc_loadWeakRetained(&v108->_delegate);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      v18 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v18 selectDelegateCallbackQueue:v108->_delegateCallbackQueue];
      block = &v82;
      v82 = MEMORY[0x277D85DD0];
      v83 = -1073741824;
      v84 = 0;
      v85 = __67__SUSettingsStatefulUIManager_action_ReportUpdatesAvailable_error___block_invoke;
      v86 = &unk_279CB9410;
      v20 = v87;
      v87[0] = MEMORY[0x277D82BE0](v108);
      v19 = (block + 40);
      v87[1] = MEMORY[0x277D82BE0](location[0]);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      v21 = 0;
      objc_storeStrong(v19, 0);
      objc_storeStrong(v20, v21);
    }
  }

  v15 = 0;
  objc_storeStrong(&v108->_currentFullScanOperation, 0);
  objc_storeStrong(&v108->_currentRefreshScanOperation, v15);
  [(SUSettingsStatefulUIManager *)v108 setPerformThirdPartyScan:0];
  objc_storeStrong(location, v15);
  *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __67__SUSettingsStatefulUIManager_action_ReportUpdatesAvailable_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) fullScanResults];
  [WeakRetained statefulUIManager:v3 didFinishScanningForUpdatesWithResults:?];
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (int64_t)action_ReportNoUpdateFound:(id)a3 error:(id *)a4
{
  v67 = a4;
  v66 = "[SUSettingsStatefulUIManager action_ReportNoUpdateFound:error:]";
  v95 = *MEMORY[0x277D85DE8];
  v93 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog[1] = v67;
  v68 = [(SUCoreFSM *)v93->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v68);
  MEMORY[0x277D82BD8](v68);
  v65 = [(SUSettingsStatefulUIManager *)v93 log];
  oslog[0] = [(SUCoreLog *)v65 oslog];
  MEMORY[0x277D82BD8](v65);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v60 = type;
    v61 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v93 currentState]);
    v62 = MEMORY[0x277D82BE0](v61);
    v89 = v62;
    v63 = [(SUSettingsStatefulUIManager *)v93 currentState];
    v64 = [(SUSettingsStatefulUIManager *)v93 delegate];
    v87 = 0;
    v85 = 0;
    if (v64)
    {
      v88 = [(SUSettingsStatefulUIManager *)v93 delegate];
      v57 = 1;
      v87 = 1;
      v4 = objc_opt_class();
      v86 = NSStringFromClass(v4);
      v85 = 1;
      v58 = v86;
    }

    else
    {
      v58 = @"(null)";
    }

    v51 = v58;
    v52 = [(SUSettingsStatefulUIManager *)v93 delegate];
    v53 = [(SUSettingsStatefulUIManager *)v93 scanError];
    v54 = [(SUSettingsStatefulUIManager *)v93 preferredStatefulDescriptor];
    v55 = [(SUSettingsStatefulUIManager *)v93 alternateStatefulDescriptor];
    v56 = [(SUSettingsStatefulUIManager *)v93 currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (v56)
    {
      v84 = [(SUSettingsStatefulUIManager *)v93 currentDownload];
      v49 = 1;
      v83 = 1;
      v82 = [(SUDownload *)v84 descriptor];
      v81 = 1;
      v80 = [(SUDescriptor *)v82 humanReadableUpdateName];
      v79 = 1;
      v50 = v80;
    }

    else
    {
      v50 = @"(null)";
    }

    v36 = v50;
    v37 = [(SUSettingsStatefulUIManager *)v93 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v93 performThirdPartyScan];
    v43 = "NO";
    v6 = "YES";
    v44 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v38 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v93 isTargetedUpdateScheduledForAutoInstall];
    v8 = v44;
    if (!v7)
    {
      v8 = v43;
    }

    v39 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v93 hidingPreferredDescriptor];
    v10 = v44;
    if (!v9)
    {
      v10 = v43;
    }

    v40 = v10;
    v41 = [(SUSettingsStatefulDescriptor *)v93->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](v41);
    v78 = v42;
    v11 = [(SUSettingsStatefulUIManager *)v93 hidingAlternateDescriptor];
    v12 = v44;
    if (!v11)
    {
      v12 = v43;
    }

    v45 = v12;
    v46 = [(SUSettingsStatefulDescriptor *)v93->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](v46);
    v77 = v47;
    v48 = [(SUSettingsStatefulUIManager *)v93 enrolledBetaProgram];
    v75 = 0;
    if (v48)
    {
      v76 = [(SUSettingsStatefulUIManager *)v93 enrolledBetaProgram];
      v75 = 1;
      v35 = [(SDBetaProgram *)v76 programID];
    }

    else
    {
      v35 = 0;
    }

    v26 = v35;
    v34 = [(SUSettingsStatefulUIManager *)v93 betaPrograms];
    v27 = [(NSArray *)v34 count];
    v33 = [(SUSettingsStatefulUIManager *)v93 currentFullScanOperation];
    v32 = [(SUSettingsStatefulUIManager *)v93 currentRefreshScanOperation];
    v31 = [(SUSettingsStatefulUIManager *)v93 currentUpdateOperation];
    v30 = [(SUSettingsStatefulUIManager *)v93 auxiliaryOperations];
    v28 = &v14;
    buf = v94;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v94, v66, v62, v63, v51, v52, v53, v54, v55, v36, v37, v38, v39, v40, v42, v45, v47, v35, v27, v33, v32, v31, [(NSMutableSet *)v30 count]);
    _os_log_impl(&dword_26AC94000, log, v60[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v37);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v61);
    obj = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, obj);
    objc_storeStrong(&v89, obj);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&v93->_delegate);
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained)
  {
    v22 = objc_loadWeakRetained(&v93->_delegate);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      v18 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v18 selectDelegateCallbackQueue:v93->_delegateCallbackQueue];
      block = &v69;
      v69 = MEMORY[0x277D85DD0];
      v70 = -1073741824;
      v71 = 0;
      v72 = __64__SUSettingsStatefulUIManager_action_ReportNoUpdateFound_error___block_invoke;
      v73 = &unk_279CB9410;
      v20 = v74;
      v74[0] = MEMORY[0x277D82BE0](v93);
      v19 = (block + 40);
      v74[1] = MEMORY[0x277D82BE0](location[0]);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      v21 = 0;
      objc_storeStrong(v19, 0);
      objc_storeStrong(v20, v21);
    }
  }

  v15 = 0;
  objc_storeStrong(&v93->_currentFullScanOperation, 0);
  objc_storeStrong(&v93->_currentRefreshScanOperation, v15);
  [(SUSettingsStatefulUIManager *)v93 setPerformThirdPartyScan:0];
  objc_storeStrong(location, v15);
  *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __64__SUSettingsStatefulUIManager_action_ReportNoUpdateFound_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) fullScanResults];
  [WeakRetained statefulUIManager:v3 didFinishScanningForUpdatesWithResults:?];
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (int64_t)action_ReportScanFailed:(id)a3 error:(id *)a4
{
  v67 = a4;
  v66 = "[SUSettingsStatefulUIManager action_ReportScanFailed:error:]";
  v95 = *MEMORY[0x277D85DE8];
  v93 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog[1] = v67;
  v68 = [(SUCoreFSM *)v93->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v68);
  MEMORY[0x277D82BD8](v68);
  v65 = [(SUSettingsStatefulUIManager *)v93 log];
  oslog[0] = [(SUCoreLog *)v65 oslog];
  MEMORY[0x277D82BD8](v65);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v60 = type;
    v61 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v93 currentState]);
    v62 = MEMORY[0x277D82BE0](v61);
    v89 = v62;
    v63 = [(SUSettingsStatefulUIManager *)v93 currentState];
    v64 = [(SUSettingsStatefulUIManager *)v93 delegate];
    v87 = 0;
    v85 = 0;
    if (v64)
    {
      v88 = [(SUSettingsStatefulUIManager *)v93 delegate];
      v57 = 1;
      v87 = 1;
      v4 = objc_opt_class();
      v86 = NSStringFromClass(v4);
      v85 = 1;
      v58 = v86;
    }

    else
    {
      v58 = @"(null)";
    }

    v51 = v58;
    v52 = [(SUSettingsStatefulUIManager *)v93 delegate];
    v53 = [(SUSettingsStatefulUIManager *)v93 scanError];
    v54 = [(SUSettingsStatefulUIManager *)v93 preferredStatefulDescriptor];
    v55 = [(SUSettingsStatefulUIManager *)v93 alternateStatefulDescriptor];
    v56 = [(SUSettingsStatefulUIManager *)v93 currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (v56)
    {
      v84 = [(SUSettingsStatefulUIManager *)v93 currentDownload];
      v49 = 1;
      v83 = 1;
      v82 = [(SUDownload *)v84 descriptor];
      v81 = 1;
      v80 = [(SUDescriptor *)v82 humanReadableUpdateName];
      v79 = 1;
      v50 = v80;
    }

    else
    {
      v50 = @"(null)";
    }

    v36 = v50;
    v37 = [(SUSettingsStatefulUIManager *)v93 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v93 performThirdPartyScan];
    v43 = "NO";
    v6 = "YES";
    v44 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v38 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v93 isTargetedUpdateScheduledForAutoInstall];
    v8 = v44;
    if (!v7)
    {
      v8 = v43;
    }

    v39 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v93 hidingPreferredDescriptor];
    v10 = v44;
    if (!v9)
    {
      v10 = v43;
    }

    v40 = v10;
    v41 = [(SUSettingsStatefulDescriptor *)v93->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](v41);
    v78 = v42;
    v11 = [(SUSettingsStatefulUIManager *)v93 hidingAlternateDescriptor];
    v12 = v44;
    if (!v11)
    {
      v12 = v43;
    }

    v45 = v12;
    v46 = [(SUSettingsStatefulDescriptor *)v93->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](v46);
    v77 = v47;
    v48 = [(SUSettingsStatefulUIManager *)v93 enrolledBetaProgram];
    v75 = 0;
    if (v48)
    {
      v76 = [(SUSettingsStatefulUIManager *)v93 enrolledBetaProgram];
      v75 = 1;
      v35 = [(SDBetaProgram *)v76 programID];
    }

    else
    {
      v35 = 0;
    }

    v26 = v35;
    v34 = [(SUSettingsStatefulUIManager *)v93 betaPrograms];
    v27 = [(NSArray *)v34 count];
    v33 = [(SUSettingsStatefulUIManager *)v93 currentFullScanOperation];
    v32 = [(SUSettingsStatefulUIManager *)v93 currentRefreshScanOperation];
    v31 = [(SUSettingsStatefulUIManager *)v93 currentUpdateOperation];
    v30 = [(SUSettingsStatefulUIManager *)v93 auxiliaryOperations];
    v28 = &v14;
    buf = v94;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v94, v66, v62, v63, v51, v52, v53, v54, v55, v36, v37, v38, v39, v40, v42, v45, v47, v35, v27, v33, v32, v31, [(NSMutableSet *)v30 count]);
    _os_log_impl(&dword_26AC94000, log, v60[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v37);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v61);
    obj = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, obj);
    objc_storeStrong(&v89, obj);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&v93->_delegate);
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained)
  {
    v22 = objc_loadWeakRetained(&v93->_delegate);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      v18 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v18 selectDelegateCallbackQueue:v93->_delegateCallbackQueue];
      block = &v69;
      v69 = MEMORY[0x277D85DD0];
      v70 = -1073741824;
      v71 = 0;
      v72 = __61__SUSettingsStatefulUIManager_action_ReportScanFailed_error___block_invoke;
      v73 = &unk_279CB9410;
      v20 = v74;
      v74[0] = MEMORY[0x277D82BE0](v93);
      v19 = (block + 40);
      v74[1] = MEMORY[0x277D82BE0](location[0]);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      v21 = 0;
      objc_storeStrong(v19, 0);
      objc_storeStrong(v20, v21);
    }
  }

  v15 = 0;
  objc_storeStrong(&v93->_currentFullScanOperation, 0);
  objc_storeStrong(&v93->_currentRefreshScanOperation, v15);
  [(SUSettingsStatefulUIManager *)v93 setPerformThirdPartyScan:0];
  objc_storeStrong(location, v15);
  *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __61__SUSettingsStatefulUIManager_action_ReportScanFailed_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) error];
  [WeakRetained statefulUIManager:v3 didFailToScanForUpdatesWithError:?];
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (int64_t)action_RefreshScanResults:(id)a3 error:(id *)a4
{
  v176 = &v196;
  v177 = a4;
  v178 = "[SUSettingsStatefulUIManager action_RefreshScanResults:error:]";
  v212 = *MEMORY[0x277D85DE8];
  v209 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v207[1] = v177;
  v175 = [(SUCoreFSM *)v209->_managerFSM extendedStateQueue];
  v174 = v175;
  dispatch_assert_queue_V2(v174);
  MEMORY[0x277D82BD8](v174);
  obj = MEMORY[0x277D82BE0](v209);
  objc_sync_enter(obj);
  if (v209->_currentRefreshScanOperation)
  {
    v172 = [*(v176 + 21) log];
    v170 = v172;
    v171 = [v170 oslog];
    v4 = v171;
    v5 = v170;
    *(v176 + 17) = v4;
    MEMORY[0x277D82BD8](v5);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v176 + 17), OS_LOG_TYPE_DEFAULT))
    {
      log = *(v176 + 17);
      *v168 = type;
      v169 = [*(v176 + 21) currentState];
      v166 = SUSettingsUIStateToString(v169);
      v163 = v166;
      v6 = MEMORY[0x277D82BE0](v163);
      v7 = v176;
      v164 = v6;
      *(v176 + 14) = v6;
      v165 = [v7[21] currentState];
      v8 = *(v176 + 21);
      v204 = 0;
      v203 = 0;
      v162 = [v8 delegate];
      v161 = v162;
      if (v161)
      {
        v160 = [*(v176 + 21) delegate];
        *(v176 + 13) = v160;
        v204 = 1;
        aClass = objc_opt_class();
        v158 = NSStringFromClass(aClass);
        v9 = v158;
        *(v176 + 11) = v9;
        v203 = 1;
        v157 = v9;
      }

      else
      {
        v157 = @"(null)";
      }

      v155 = v157;
      v156 = [*(v176 + 21) delegate];
      v153 = v156;
      v154 = [*(v176 + 21) scanError];
      v151 = v154;
      v152 = [*(v176 + 21) preferredStatefulDescriptor];
      v149 = v152;
      v150 = [*(v176 + 21) alternateStatefulDescriptor];
      v147 = v150;
      v10 = *(v176 + 21);
      v202 = 0;
      v201 = 0;
      v200 = 0;
      v148 = [v10 currentDownload];
      v146 = v148;
      if (v146)
      {
        v145 = [*(v176 + 21) currentDownload];
        v11 = v145;
        *(v176 + 9) = v11;
        v202 = 1;
        v144 = [v11 descriptor];
        v12 = v144;
        *(v176 + 7) = v12;
        v201 = 1;
        v143 = [v12 humanReadableUpdateName];
        v13 = v143;
        *(v176 + 5) = v13;
        v200 = 1;
        v142 = v13;
      }

      else
      {
        v142 = @"(null)";
      }

      v140 = v142;
      v141 = [*(v176 + 21) currentDownload];
      v138 = v141;
      v139 = [*(v176 + 21) performThirdPartyScan];
      v14 = "YES";
      if ((v139 & 1) == 0)
      {
        v14 = "NO";
      }

      v136 = v14;
      v137 = [*(v176 + 21) isTargetedUpdateScheduledForAutoInstall];
      v15 = "YES";
      if ((v137 & 1) == 0)
      {
        v15 = "NO";
      }

      v134 = v15;
      v135 = [*(v176 + 21) hidingPreferredDescriptor];
      v16 = "YES";
      if ((v135 & 1) == 0)
      {
        v16 = "NO";
      }

      v132 = v16;
      v133 = [*(*(v176 + 21) + 256) humanReadableUpdateName];
      v129 = v133;
      v17 = MEMORY[0x277D82BE0](v129);
      v18 = v176;
      v130 = v17;
      *(v176 + 3) = v17;
      v131 = [v18[21] hidingAlternateDescriptor];
      v19 = "YES";
      if ((v131 & 1) == 0)
      {
        v19 = "NO";
      }

      v127 = v19;
      v128 = [*(*(v176 + 21) + 264) humanReadableUpdateName];
      v124 = v128;
      v20 = MEMORY[0x277D82BE0](v124);
      v21 = v176;
      v125 = v20;
      *(v176 + 2) = v20;
      v22 = *(v21 + 21);
      v197 = 0;
      v126 = [v22 enrolledBetaProgram];
      v123 = v126;
      if (v123)
      {
        v122 = [*(v176 + 21) enrolledBetaProgram];
        v23 = v122;
        *(v176 + 1) = v23;
        v197 = 1;
        v121 = [v23 programID];
        v120 = v121;
      }

      else
      {
        v120 = 0;
      }

      v118 = v120;
      v119 = [*(v176 + 21) betaPrograms];
      v116 = v119;
      v117 = [v116 count];
      v115 = [*(v176 + 21) currentFullScanOperation];
      v113 = v115;
      v114 = [*(v176 + 21) currentRefreshScanOperation];
      v111 = v114;
      v112 = [*(v176 + 21) currentUpdateOperation];
      v109 = v112;
      v110 = [*(v176 + 21) auxiliaryOperations];
      v107 = v110;
      v108 = [v107 count];
      v105 = &v35;
      buf = v211;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v211, v178, v164, v165, v155, v153, v151, v149, v147, v140, v138, v136, v134, v132, v130, v127, v125, v120, v117, v113, v111, v109, v108);
      _os_log_impl(&dword_26AC94000, log, v168[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is already running. Skipping on this refresh request. This should never happen.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v109);
      MEMORY[0x277D82BD8](v111);
      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](v116);
      if (v197)
      {
        MEMORY[0x277D82BD8](*(v176 + 1));
      }

      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v124);
      MEMORY[0x277D82BD8](v129);
      MEMORY[0x277D82BD8](v138);
      if (v200)
      {
        MEMORY[0x277D82BD8](*(v176 + 5));
      }

      if (v201)
      {
        MEMORY[0x277D82BD8](*(v176 + 7));
      }

      if (v202)
      {
        MEMORY[0x277D82BD8](*(v176 + 9));
      }

      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v151);
      MEMORY[0x277D82BD8](v153);
      if (v203)
      {
        MEMORY[0x277D82BD8](*(v176 + 11));
      }

      if (v204)
      {
        MEMORY[0x277D82BD8](*(v176 + 13));
      }

      MEMORY[0x277D82BD8](v161);
      MEMORY[0x277D82BD8](v163);
      objc_storeStrong(&v198, 0);
      objc_storeStrong(&v199, 0);
      objc_storeStrong(&v205, 0);
    }

    objc_storeStrong(v207, 0);
    v24 = v176;
    *(v176 + 22) = 0;
    *v24 = 1;
  }

  else if (*(*(v176 + 21) + 184))
  {
    v104 = [*(v176 + 21) log];
    v102 = v104;
    v103 = [v102 oslog];
    oslog = v103;
    MEMORY[0x277D82BD8](v102);
    v194 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v99 = oslog;
      *v100 = v194;
      v101 = [*(v176 + 21) currentState];
      v98 = SUSettingsUIStateToString(v101);
      v95 = v98;
      v96 = MEMORY[0x277D82BE0](v95);
      v193 = v96;
      v97 = [*(v176 + 21) currentState];
      v25 = *(v176 + 21);
      v191 = 0;
      v189 = 0;
      v94 = [v25 delegate];
      v93 = v94;
      if (v93)
      {
        v92 = [*(v176 + 21) delegate];
        v192 = v92;
        v191 = 1;
        v91 = objc_opt_class();
        v90 = NSStringFromClass(v91);
        v190 = v90;
        v189 = 1;
        v89 = v190;
      }

      else
      {
        v89 = @"(null)";
      }

      v87 = v89;
      v88 = [*(v176 + 21) delegate];
      v85 = v88;
      v86 = [*(v176 + 21) scanError];
      v83 = v86;
      v84 = [*(v176 + 21) preferredStatefulDescriptor];
      v81 = v84;
      v82 = [*(v176 + 21) alternateStatefulDescriptor];
      v79 = v82;
      v26 = *(v176 + 21);
      v187 = 0;
      v185 = 0;
      v183 = 0;
      v80 = [v26 currentDownload];
      v78 = v80;
      if (v78)
      {
        v77 = [*(v176 + 21) currentDownload];
        v188 = v77;
        v187 = 1;
        v76 = [v188 descriptor];
        v186 = v76;
        v185 = 1;
        v75 = [v186 humanReadableUpdateName];
        v184 = v75;
        v183 = 1;
        v74 = v184;
      }

      else
      {
        v74 = @"(null)";
      }

      v72 = v74;
      v73 = [*(v176 + 21) currentDownload];
      v70 = v73;
      v71 = [*(v176 + 21) performThirdPartyScan];
      v27 = "YES";
      if ((v71 & 1) == 0)
      {
        v27 = "NO";
      }

      v68 = v27;
      v69 = [*(v176 + 21) isTargetedUpdateScheduledForAutoInstall];
      v28 = "YES";
      if ((v69 & 1) == 0)
      {
        v28 = "NO";
      }

      v66 = v28;
      v67 = [*(v176 + 21) hidingPreferredDescriptor];
      v29 = "YES";
      if ((v67 & 1) == 0)
      {
        v29 = "NO";
      }

      v64 = v29;
      v65 = [*(*(v176 + 21) + 256) humanReadableUpdateName];
      v61 = v65;
      v62 = MEMORY[0x277D82BE0](v61);
      v182 = v62;
      v63 = [*(v176 + 21) hidingAlternateDescriptor];
      v30 = "YES";
      if ((v63 & 1) == 0)
      {
        v30 = "NO";
      }

      v59 = v30;
      v60 = [*(*(v176 + 21) + 264) humanReadableUpdateName];
      v56 = v60;
      v57 = MEMORY[0x277D82BE0](v56);
      v181 = v57;
      v31 = *(v176 + 21);
      v179 = 0;
      v58 = [v31 enrolledBetaProgram];
      v55 = v58;
      if (v55)
      {
        v54 = [*(v176 + 21) enrolledBetaProgram];
        v180 = v54;
        v179 = 1;
        v53 = [v180 programID];
        v52 = v53;
      }

      else
      {
        v52 = 0;
      }

      v50 = v52;
      v51 = [*(v176 + 21) betaPrograms];
      v48 = v51;
      v49 = [v48 count];
      v47 = [*(v176 + 21) currentFullScanOperation];
      v45 = v47;
      v46 = [*(v176 + 21) currentRefreshScanOperation];
      v43 = v46;
      v44 = [*(v176 + 21) currentUpdateOperation];
      v41 = v44;
      v42 = [*(v176 + 21) auxiliaryOperations];
      v39 = v42;
      v40 = [v39 count];
      v37 = &v35;
      v38 = v210;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v210, v178, v96, v97, v87, v85, v83, v81, v79, v72, v70, v68, v66, v64, v62, v59, v57, v52, v49, v45, v43, v41, v40);
      _os_log_impl(&dword_26AC94000, v99, v100[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full scan operation is already running. Skipping on this refresh request. This should never happen.", v38, 0xDEu);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v48);
      if (v179)
      {
        MEMORY[0x277D82BD8](v180);
      }

      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v70);
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

      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      if (v189)
      {
        MEMORY[0x277D82BD8](v190);
      }

      if (v191)
      {
        MEMORY[0x277D82BD8](v192);
      }

      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v95);
      objc_storeStrong(&v181, 0);
      objc_storeStrong(&v182, 0);
      objc_storeStrong(&v193, 0);
    }

    objc_storeStrong(&oslog, 0);
    v32 = v176;
    *(v176 + 22) = 0;
    *v32 = 1;
  }

  else
  {
    *v176 = 0;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  if (!*v176)
  {
    [*(v176 + 21) performRefreshScan:*(v176 + 19)];
    v33 = v176;
    *(v176 + 22) = 0;
    *v33 = 1;
  }

  objc_storeStrong(location, 0);
  v36 = *(v176 + 22);
  *MEMORY[0x277D85DE8];
  return v36;
}

- (int64_t)action_ReportRefreshScanResults:(id)a3 error:(id *)a4
{
  v113 = a4;
  v112 = "[SUSettingsStatefulUIManager action_ReportRefreshScanResults:error:]";
  v166 = *MEMORY[0x277D85DE8];
  v162 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v160 = v113;
  v114 = [(SUCoreFSM *)v162->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v114);
  MEMORY[0x277D82BD8](v114);
  v115 = [(SUSettingsStatefulUIManager *)v162 currentState];
  v158 = 0;
  v116 = 0;
  if (v115 == [location[0] refreshPreviousState])
  {
    v116 = 0;
    if (([location[0] refreshHasAnyChanges] & 1) == 0)
    {
      v159 = [(SUSettingsStatefulUIManager *)v162 scanError];
      v158 = 1;
      v116 = v159 == 0;
    }
  }

  v111 = v116;
  if (v158)
  {
    MEMORY[0x277D82BD8](v159);
  }

  if (!v111)
  {
    goto LABEL_72;
  }

  if ([location[0] forceReload])
  {
    v69 = [(SUSettingsStatefulUIManager *)v162 log];
    v139 = [(SUCoreLog *)v69 oslog];
    MEMORY[0x277D82BD8](v69);
    v138 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v139;
      *v64 = v138;
      v65 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v162 currentState]);
      v66 = MEMORY[0x277D82BE0](v65);
      v137 = v66;
      v67 = [(SUSettingsStatefulUIManager *)v162 currentState];
      v68 = [(SUSettingsStatefulUIManager *)v162 delegate];
      v135 = 0;
      v133 = 0;
      if (v68)
      {
        v136 = [(SUSettingsStatefulUIManager *)v162 delegate];
        v61 = 1;
        v135 = 1;
        v13 = objc_opt_class();
        v134 = NSStringFromClass(v13);
        v133 = 1;
        v62 = v134;
      }

      else
      {
        v62 = @"(null)";
      }

      v55 = v62;
      v56 = [(SUSettingsStatefulUIManager *)v162 delegate];
      v57 = [(SUSettingsStatefulUIManager *)v162 scanError];
      v58 = [(SUSettingsStatefulUIManager *)v162 preferredStatefulDescriptor];
      v59 = [(SUSettingsStatefulUIManager *)v162 alternateStatefulDescriptor];
      v60 = [(SUSettingsStatefulUIManager *)v162 currentDownload];
      v131 = 0;
      v129 = 0;
      v127 = 0;
      if (v60)
      {
        v132 = [(SUSettingsStatefulUIManager *)v162 currentDownload];
        v53 = 1;
        v131 = 1;
        v130 = [(SUDownload *)v132 descriptor];
        v129 = 1;
        v128 = [(SUDescriptor *)v130 humanReadableUpdateName];
        v127 = 1;
        v54 = v128;
      }

      else
      {
        v54 = @"(null)";
      }

      v40 = v54;
      v41 = [(SUSettingsStatefulUIManager *)v162 currentDownload];
      v14 = [(SUSettingsStatefulUIManager *)v162 performThirdPartyScan];
      v47 = "NO";
      v15 = "YES";
      v48 = "YES";
      if (!v14)
      {
        v15 = "NO";
      }

      v42 = v15;
      v16 = [(SUSettingsStatefulUIManager *)v162 isTargetedUpdateScheduledForAutoInstall];
      v17 = v48;
      if (!v16)
      {
        v17 = v47;
      }

      v43 = v17;
      v18 = [(SUSettingsStatefulUIManager *)v162 hidingPreferredDescriptor];
      v19 = v48;
      if (!v18)
      {
        v19 = v47;
      }

      v44 = v19;
      v45 = [(SUSettingsStatefulDescriptor *)v162->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v46 = MEMORY[0x277D82BE0](v45);
      v126 = v46;
      v20 = [(SUSettingsStatefulUIManager *)v162 hidingAlternateDescriptor];
      v21 = v48;
      if (!v20)
      {
        v21 = v47;
      }

      v49 = v21;
      v50 = [(SUSettingsStatefulDescriptor *)v162->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v51 = MEMORY[0x277D82BE0](v50);
      v125 = v51;
      v52 = [(SUSettingsStatefulUIManager *)v162 enrolledBetaProgram];
      v123 = 0;
      if (v52)
      {
        v124 = [(SUSettingsStatefulUIManager *)v162 enrolledBetaProgram];
        v123 = 1;
        v39 = [(SDBetaProgram *)v124 programID];
      }

      else
      {
        v39 = 0;
      }

      v30 = v39;
      v38 = [(SUSettingsStatefulUIManager *)v162 betaPrograms];
      v31 = [(NSArray *)v38 count];
      v37 = [(SUSettingsStatefulUIManager *)v162 currentFullScanOperation];
      v36 = [(SUSettingsStatefulUIManager *)v162 currentRefreshScanOperation];
      v35 = [(SUSettingsStatefulUIManager *)v162 currentUpdateOperation];
      v34 = [(SUSettingsStatefulUIManager *)v162 auxiliaryOperations];
      v32 = v23;
      v33 = v164;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v164, v112, v66, v67, v55, v56, v57, v58, v59, v40, v41, v42, v43, v44, v46, v49, v51, v39, v31, v37, v36, v35, [(NSMutableSet *)v34 count]);
      _os_log_impl(&dword_26AC94000, v63, v64[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Force load was requested - proceeding to ask the delegate to reload the UI.", v33, 0xDEu);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
      if (v123)
      {
        MEMORY[0x277D82BD8](v124);
      }

      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v41);
      if (v127)
      {
        MEMORY[0x277D82BD8](v128);
      }

      if (v129)
      {
        MEMORY[0x277D82BD8](v130);
      }

      if (v131)
      {
        MEMORY[0x277D82BD8](v132);
      }

      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v56);
      if (v133)
      {
        MEMORY[0x277D82BD8](v134);
      }

      if (v135)
      {
        MEMORY[0x277D82BD8](v136);
      }

      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v65);
      v29 = 0;
      objc_storeStrong(&v125, 0);
      objc_storeStrong(&v126, v29);
      objc_storeStrong(&v137, v29);
    }

    objc_storeStrong(&v139, 0);
LABEL_72:
    v26 = v162;
    v24 = sel_statefulUIManagerDidRefreshState_;
    v25 = &v117;
    v117 = MEMORY[0x277D85DD0];
    v118 = -1073741824;
    v119 = 0;
    v120 = __69__SUSettingsStatefulUIManager_action_ReportRefreshScanResults_error___block_invoke;
    v121 = &unk_279CB93E8;
    v27 = &v122;
    v122 = MEMORY[0x277D82BE0](v162);
    [(SUSettingsStatefulUIManager *)v26 executeOperationOnDelegate:v24 usingBlock:v25];
    v28 = 0;
    objc_storeStrong(&v162->_currentRefreshScanOperation, 0);
    v163 = 0;
    v140 = 1;
    objc_storeStrong(v27, v28);
    goto LABEL_73;
  }

  v110 = [(SUSettingsStatefulUIManager *)v162 log];
  oslog = [(SUCoreLog *)v110 oslog];
  MEMORY[0x277D82BD8](v110);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v105 = type;
    v106 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v162 currentState]);
    v107 = MEMORY[0x277D82BE0](v106);
    v155 = v107;
    v108 = [(SUSettingsStatefulUIManager *)v162 currentState];
    v109 = [(SUSettingsStatefulUIManager *)v162 delegate];
    v153 = 0;
    v151 = 0;
    if (v109)
    {
      v154 = [(SUSettingsStatefulUIManager *)v162 delegate];
      v102 = 1;
      v153 = 1;
      v4 = objc_opt_class();
      v152 = NSStringFromClass(v4);
      v151 = 1;
      v103 = v152;
    }

    else
    {
      v103 = @"(null)";
    }

    v96 = v103;
    v97 = [(SUSettingsStatefulUIManager *)v162 delegate];
    v98 = [(SUSettingsStatefulUIManager *)v162 scanError];
    v99 = [(SUSettingsStatefulUIManager *)v162 preferredStatefulDescriptor];
    v100 = [(SUSettingsStatefulUIManager *)v162 alternateStatefulDescriptor];
    v101 = [(SUSettingsStatefulUIManager *)v162 currentDownload];
    v149 = 0;
    v147 = 0;
    v145 = 0;
    if (v101)
    {
      v150 = [(SUSettingsStatefulUIManager *)v162 currentDownload];
      v94 = 1;
      v149 = 1;
      v148 = [(SUDownload *)v150 descriptor];
      v147 = 1;
      v146 = [(SUDescriptor *)v148 humanReadableUpdateName];
      v145 = 1;
      v95 = v146;
    }

    else
    {
      v95 = @"(null)";
    }

    v81 = v95;
    v82 = [(SUSettingsStatefulUIManager *)v162 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v162 performThirdPartyScan];
    v88 = "NO";
    v6 = "YES";
    v89 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v83 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v162 isTargetedUpdateScheduledForAutoInstall];
    v8 = v89;
    if (!v7)
    {
      v8 = v88;
    }

    v84 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v162 hidingPreferredDescriptor];
    v10 = v89;
    if (!v9)
    {
      v10 = v88;
    }

    v85 = v10;
    v86 = [(SUSettingsStatefulDescriptor *)v162->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v87 = MEMORY[0x277D82BE0](v86);
    v144 = v87;
    v11 = [(SUSettingsStatefulUIManager *)v162 hidingAlternateDescriptor];
    v12 = v89;
    if (!v11)
    {
      v12 = v88;
    }

    v90 = v12;
    v91 = [(SUSettingsStatefulDescriptor *)v162->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v92 = MEMORY[0x277D82BE0](v91);
    v143 = v92;
    v93 = [(SUSettingsStatefulUIManager *)v162 enrolledBetaProgram];
    v141 = 0;
    if (v93)
    {
      v142 = [(SUSettingsStatefulUIManager *)v162 enrolledBetaProgram];
      v141 = 1;
      v80 = [(SDBetaProgram *)v142 programID];
    }

    else
    {
      v80 = 0;
    }

    v71 = v80;
    v79 = [(SUSettingsStatefulUIManager *)v162 betaPrograms];
    v72 = [(NSArray *)v79 count];
    v78 = [(SUSettingsStatefulUIManager *)v162 currentFullScanOperation];
    v77 = [(SUSettingsStatefulUIManager *)v162 currentRefreshScanOperation];
    v76 = [(SUSettingsStatefulUIManager *)v162 currentUpdateOperation];
    v75 = [(SUSettingsStatefulUIManager *)v162 auxiliaryOperations];
    v73 = v23;
    buf = v165;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v165, v112, v107, v108, v96, v97, v98, v99, v100, v81, v82, v83, v84, v85, v87, v90, v92, v80, v72, v78, v77, v76, [(NSMutableSet *)v75 count]);
    _os_log_impl(&dword_26AC94000, log, v105[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Dropping the refresh request.", buf, 0xDEu);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    if (v141)
    {
      MEMORY[0x277D82BD8](v142);
    }

    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v82);
    if (v145)
    {
      MEMORY[0x277D82BD8](v146);
    }

    if (v147)
    {
      MEMORY[0x277D82BD8](v148);
    }

    if (v149)
    {
      MEMORY[0x277D82BD8](v150);
    }

    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v97);
    if (v151)
    {
      MEMORY[0x277D82BD8](v152);
    }

    if (v153)
    {
      MEMORY[0x277D82BD8](v154);
    }

    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v106);
    obj = 0;
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, obj);
    objc_storeStrong(&v155, obj);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v162->_currentRefreshScanOperation, 0);
  v163 = 0;
  v140 = 1;
LABEL_73:
  objc_storeStrong(location, 0);
  v23[15] = v163;
  *MEMORY[0x277D85DE8];
  return v163;
}

uint64_t __69__SUSettingsStatefulUIManager_action_ReportRefreshScanResults_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManagerDidRefreshState:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
}

- (int64_t)action_ReportRefreshScanResultsFailed:(id)a3 error:(id *)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13[1] = a4;
  v6 = [(SUCoreFSM *)v15->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v6);
  MEMORY[0x277D82BD8](v6);
  v7 = v15;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__SUSettingsStatefulUIManager_action_ReportRefreshScanResultsFailed_error___block_invoke;
  v12 = &unk_279CB93E8;
  v13[0] = MEMORY[0x277D82BE0](v15);
  [(SUSettingsStatefulUIManager *)v7 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:?];
  objc_storeStrong(&v15->_currentRefreshScanOperation, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
  return 0;
}

uint64_t __75__SUSettingsStatefulUIManager_action_ReportRefreshScanResultsFailed_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManagerDidRefreshState:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
}

- (int64_t)action_ThirdPartyScanDuringRefresh:(id)a3 error:(id *)a4
{
  v64 = a4;
  v63 = "[SUSettingsStatefulUIManager action_ThirdPartyScanDuringRefresh:error:]";
  v87 = *MEMORY[0x277D85DE8];
  v85 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog[1] = v64;
  v65 = [(SUCoreFSM *)v85->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(v65);
  MEMORY[0x277D82BD8](v65);
  v62 = [(SUSettingsStatefulUIManager *)v85 log];
  oslog[0] = [(SUCoreLog *)v62 oslog];
  MEMORY[0x277D82BD8](v62);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v57 = type;
    v58 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v85 currentState]);
    v59 = MEMORY[0x277D82BE0](v58);
    v81 = v59;
    v60 = [(SUSettingsStatefulUIManager *)v85 currentState];
    v61 = [(SUSettingsStatefulUIManager *)v85 delegate];
    v79 = 0;
    v77 = 0;
    if (v61)
    {
      v80 = [(SUSettingsStatefulUIManager *)v85 delegate];
      v54 = 1;
      v79 = 1;
      v4 = objc_opt_class();
      v78 = NSStringFromClass(v4);
      v77 = 1;
      v55 = v78;
    }

    else
    {
      v55 = @"(null)";
    }

    v48 = v55;
    v49 = [(SUSettingsStatefulUIManager *)v85 delegate];
    v50 = [(SUSettingsStatefulUIManager *)v85 scanError];
    v51 = [(SUSettingsStatefulUIManager *)v85 preferredStatefulDescriptor];
    v52 = [(SUSettingsStatefulUIManager *)v85 alternateStatefulDescriptor];
    v53 = [(SUSettingsStatefulUIManager *)v85 currentDownload];
    v75 = 0;
    v73 = 0;
    v71 = 0;
    if (v53)
    {
      v76 = [(SUSettingsStatefulUIManager *)v85 currentDownload];
      v46 = 1;
      v75 = 1;
      v74 = [(SUDownload *)v76 descriptor];
      v73 = 1;
      v72 = [(SUDescriptor *)v74 humanReadableUpdateName];
      v71 = 1;
      v47 = v72;
    }

    else
    {
      v47 = @"(null)";
    }

    v33 = v47;
    v34 = [(SUSettingsStatefulUIManager *)v85 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v85 performThirdPartyScan];
    v40 = "NO";
    v6 = "YES";
    v41 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v35 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v85 isTargetedUpdateScheduledForAutoInstall];
    v8 = v41;
    if (!v7)
    {
      v8 = v40;
    }

    v36 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v85 hidingPreferredDescriptor];
    v10 = v41;
    if (!v9)
    {
      v10 = v40;
    }

    v37 = v10;
    v38 = [(SUSettingsStatefulDescriptor *)v85->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v39 = MEMORY[0x277D82BE0](v38);
    v70 = v39;
    v11 = [(SUSettingsStatefulUIManager *)v85 hidingAlternateDescriptor];
    v12 = v41;
    if (!v11)
    {
      v12 = v40;
    }

    v42 = v12;
    v43 = [(SUSettingsStatefulDescriptor *)v85->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v44 = MEMORY[0x277D82BE0](v43);
    v69 = v44;
    v45 = [(SUSettingsStatefulUIManager *)v85 enrolledBetaProgram];
    v67 = 0;
    if (v45)
    {
      v68 = [(SUSettingsStatefulUIManager *)v85 enrolledBetaProgram];
      v67 = 1;
      v32 = [(SDBetaProgram *)v68 programID];
    }

    else
    {
      v32 = 0;
    }

    v18 = v32;
    v31 = [(SUSettingsStatefulUIManager *)v85 betaPrograms];
    v19 = [(NSArray *)v31 count];
    v30 = [(SUSettingsStatefulUIManager *)v85 currentFullScanOperation];
    v29 = [(SUSettingsStatefulUIManager *)v85 currentRefreshScanOperation];
    v28 = [(SUSettingsStatefulUIManager *)v85 currentUpdateOperation];
    v27 = [(SUSettingsStatefulUIManager *)v85 auxiliaryOperations];
    v20 = [(NSMutableSet *)v27 count];
    v26 = [(SUSettingsStatefulUIManager *)v85 currentRefreshScanOperation];
    v25 = [(SUSettingsScanOperation *)v26 scanUUID];
    v21 = MEMORY[0x277D82BE0](v25);
    v66 = v21;
    v24 = [(SUSettingsStatefulUIManager *)v85 currentRefreshScanOperation];
    v22 = &v14;
    buf = v86;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_2(v86, v63, v59, v60, v48, v49, v50, v51, v52, v33, v34, v35, v36, v37, v39, v42, v44, v32, v19, v30, v29, v28, v20, v21, v24);
    _os_log_impl(&dword_26AC94000, log, v57[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCancelling a refresh request as a third-party scan has been initiated.\nRefresh scan UUID: %{public}@; Refresh Scan: %{public}p", buf, 0xF2u);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v34);
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

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v58);
    obj = 0;
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v69, obj);
    objc_storeStrong(&v70, obj);
    objc_storeStrong(&v81, obj);
  }

  objc_storeStrong(oslog, 0);
  v16 = [(SUSettingsStatefulUIManager *)v85 currentRefreshScanOperation];
  MEMORY[0x277D82BD8](v16);
  if (v16)
  {
    v15 = [(SUSettingsStatefulUIManager *)v85 currentRefreshScanOperation];
    [(SUSettingsScanOperation *)v15 cancel:0];
    MEMORY[0x277D82BD8](v15);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return 0;
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
  v11 = [(SUSettingsStatefulUIManager *)v18 managerFSM];
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
  v14 = [(SUSettingsStatefulUIManager *)v18 managerFSM];
  v13 = [(SUCoreFSM *)v14 diag];
  v6 = [v15 code];
  [v13 trackAnomaly:@"[SUSettingsStatefulUIManager]" forReason:@"Stateful UI FSM has reported an anomaly" withResult:v6 withError:v15];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (SUSettingsStatefulUIManager)initWithManagerClient:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v10;
  v4 = location[0];
  v7 = [MEMORY[0x277D4D310] sharedManager];
  v6 = [MEMORY[0x277D648D0] sharedInstance];
  v10 = 0;
  v10 = [SUSettingsStatefulUIManager initWithManagerClient:v5 betaManager:"initWithManagerClient:betaManager:preferences:options:" preferences:v4 options:v7];
  v8 = MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v8;
}

- (SUSettingsStatefulUIManager)initWithManagerClient:(id)a3 options:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v7 = v13;
  v6 = location[0];
  v9 = [MEMORY[0x277D4D310] sharedManager];
  v8 = [MEMORY[0x277D648D0] sharedInstance];
  v13 = 0;
  v13 = [SUSettingsStatefulUIManager initWithManagerClient:v7 betaManager:"initWithManagerClient:betaManager:preferences:options:" preferences:v6 options:v9];
  v10 = MEMORY[0x277D82BE0](v13);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (SUSettingsStatefulUIManager)initWithManagerClient:(id)a3 betaManager:(id)a4 preferences:(id)a5 options:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
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
  v6 = v46;
  v46 = 0;
  v41.receiver = v6;
  v41.super_class = SUSettingsStatefulUIManager;
  v30 = [(SUSettingsStatefulUIManager *)&v41 init];
  v46 = v30;
  objc_storeStrong(&v46, v30);
  if (!v30)
  {
    goto LABEL_25;
  }

  v7 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUSettingsStatefulUIManager"];
  v8 = *(v46 + 20);
  *(v46 + 20) = v7;
  MEMORY[0x277D82BD8](v8);
  if (!*(v46 + 20))
  {
    v26 = SUSettingsSharedLogger();
    v40 = [v26 oslog];
    MEMORY[0x277D82BD8](v26);
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v49, "[SUSettingsStatefulUIManager initWithManagerClient:betaManager:preferences:options:]", @"SUSettingsStatefulUIManager");
      _os_log_impl(&dword_26AC94000, v40, v39, "%s: Could not create a log category for %@", v49, 0x16u);
    }

    objc_storeStrong(&v40, 0);
    v47 = 0;
    v38 = 1;
    goto LABEL_26;
  }

  v36 = 0;
  if (v42)
  {
    objc_storeStrong(v46 + 6, v42);
  }

  else
  {
    v37 = objc_alloc_init(SUSettingsStatefulUIOptions);
    v36 = 1;
    objc_storeStrong(v46 + 6, v37);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  v9 = [[SUSettingsStatefulErrorContextProvider alloc] initForManager:v46];
  v10 = *(v46 + 7);
  *(v46 + 7) = v9;
  MEMORY[0x277D82BD8](v10);
  v21 = MEMORY[0x277CCACA8];
  v23 = [v46 baseDomain];
  v22 = [v21 stringWithFormat:@"%@.stateful-ui-manager.preferences", v23];
  v11 = v22;
  v12 = dispatch_queue_create([v22 UTF8String], 0);
  v13 = *(v46 + 22);
  *(v46 + 22) = v12;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v24 = [SUSettingsSUPreferencesManager alloc];
  v25 = *(v46 + 22);
  v34 = 0;
  if (v43)
  {
    v20 = v43;
  }

  else
  {
    v35 = [MEMORY[0x277D648D0] sharedInstance];
    v34 = 1;
    v20 = v35;
  }

  v14 = [(SUSettingsSUPreferencesManager *)v24 initWithDispatchQueue:v25 forSUPreferencesInstance:v20];
  v15 = *(v46 + 8);
  *(v46 + 8) = v14;
  MEMORY[0x277D82BD8](v15);
  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  objc_storeStrong(v46 + 28, location[0]);
  [*(v46 + 28) setDelegate:v46];
  *(v46 + 9) = 0;
  v32 = 0;
  if (v44)
  {
    objc_storeStrong(v46 + 29, v44);
  }

  else
  {
    v33 = [MEMORY[0x277D4D310] sharedManager];
    v32 = 1;
    objc_storeStrong(v46 + 29, v33);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = *(v46 + 26);
  *(v46 + 26) = v16;
  MEMORY[0x277D82BD8](v17);
  [v46 setupFSM];
  [v46 setupNetworkMonitoring];
  [v46 setupBatteryMonitoring];
  [v46 setupObservers];
  if (*(v46 + 27))
  {
LABEL_25:
    v47 = MEMORY[0x277D82BE0](v46);
    v38 = 1;
    goto LABEL_26;
  }

  v19 = [v46 log];
  v31 = [v19 oslog];
  MEMORY[0x277D82BD8](v19);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_32(v48, "[SUSettingsStatefulUIManager initWithManagerClient:betaManager:preferences:options:]");
    _os_log_error_impl(&dword_26AC94000, v31, OS_LOG_TYPE_ERROR, "%s: Failed creating the manager FSM", v48, 0xCu);
  }

  objc_storeStrong(&v31, 0);
  v47 = 0;
  v38 = 1;
LABEL_26:
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v46, 0);
  *MEMORY[0x277D85DE8];
  return v47;
}

- (void)dealloc
{
  v7 = self;
  v6 = a2;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x26D66A050](v2, v7->_originalCellFlag, v7->_originalWifiFlag);
  v3 = [getSUNetworkMonitorClass() sharedInstance];
  [v3 removeObserver:v7];
  MEMORY[0x277D82BD8](v3);
  PSSetBatteryMonitoringEnabled();
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:v7];
  MEMORY[0x277D82BD8](v4);
  v5.receiver = v7;
  v5.super_class = SUSettingsStatefulUIManager;
  [(SUSettingsStatefulUIManager *)&v5 dealloc];
}

- (void)checkForAvailableUpdates
{
  v56 = v75;
  v57 = "[SUSettingsStatefulUIManager checkForAvailableUpdates]";
  v77 = *MEMORY[0x277D85DE8];
  v75[1] = self;
  v75[0] = a2;
  v55 = [(SUSettingsStatefulUIManager *)self log];
  oslog = [(SUCoreLog *)v55 oslog];
  MEMORY[0x277D82BD8](v55);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v50 = type;
    v51 = SUSettingsUIStateToString([v56[1] currentState]);
    v52 = MEMORY[0x277D82BE0](v51);
    v72 = v52;
    v53 = [v56[1] currentState];
    v54 = [v56[1] delegate];
    v70 = 0;
    v68 = 0;
    if (v54)
    {
      v71 = [v56[1] delegate];
      v47 = 1;
      v70 = 1;
      v2 = objc_opt_class();
      v69 = NSStringFromClass(v2);
      v68 = 1;
      v48 = v69;
    }

    else
    {
      v48 = @"(null)";
    }

    v41 = v48;
    v42 = [v56[1] delegate];
    v43 = [v56[1] scanError];
    v44 = [v56[1] preferredStatefulDescriptor];
    v45 = [v56[1] alternateStatefulDescriptor];
    v46 = [v56[1] currentDownload];
    v66 = 0;
    v64 = 0;
    v62 = 0;
    if (v46)
    {
      v67 = [v56[1] currentDownload];
      v39 = 1;
      v66 = 1;
      v65 = [v67 descriptor];
      v64 = 1;
      v63 = [v65 humanReadableUpdateName];
      v62 = 1;
      v40 = v63;
    }

    else
    {
      v40 = @"(null)";
    }

    v26 = v40;
    v27 = [v56[1] currentDownload];
    v3 = [v56[1] performThirdPartyScan];
    v33 = "NO";
    v4 = "YES";
    v34 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v28 = v4;
    v5 = [v56[1] isTargetedUpdateScheduledForAutoInstall];
    v6 = v34;
    if ((v5 & 1) == 0)
    {
      v6 = v33;
    }

    v29 = v6;
    v7 = [v56[1] hidingPreferredDescriptor];
    v8 = v34;
    if ((v7 & 1) == 0)
    {
      v8 = v33;
    }

    v30 = v8;
    v31 = [*(v56[1] + 256) humanReadableUpdateName];
    v32 = MEMORY[0x277D82BE0](v31);
    v61 = v32;
    v9 = [v56[1] hidingAlternateDescriptor];
    v10 = v34;
    if ((v9 & 1) == 0)
    {
      v10 = v33;
    }

    v35 = v10;
    v36 = [*(v56[1] + 264) humanReadableUpdateName];
    v37 = MEMORY[0x277D82BE0](v36);
    location = v37;
    v38 = [v56[1] enrolledBetaProgram];
    v58 = 0;
    if (v38)
    {
      v59 = [v56[1] enrolledBetaProgram];
      v58 = 1;
      v25 = [v59 programID];
    }

    else
    {
      v25 = 0;
    }

    v16 = v25;
    v24 = [v56[1] betaPrograms];
    v17 = [v24 count];
    v23 = [v56[1] currentFullScanOperation];
    v22 = [v56[1] currentRefreshScanOperation];
    v21 = [v56[1] currentUpdateOperation];
    v20 = [v56[1] auxiliaryOperations];
    v18 = &v11;
    buf = v76;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v76, v57, v52, v53, v41, v42, v43, v44, v45, v26, v27, v28, v29, v30, v32, v35, v37, v25, v17, v23, v22, v21, [v20 count]);
    _os_log_impl(&dword_26AC94000, log, v50[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v27);
    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v42);
    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v51);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v61, obj);
    objc_storeStrong(&v72, obj);
  }

  objc_storeStrong(&oslog, 0);
  v14 = [v56[1] managerFSM];
  v12 = @"CheckForAvailableUpdate";
  v13 = objc_alloc_init(SUSettingsStatefulUIManagerFSMParam);
  [v14 postEvent:v12 withInfo:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *MEMORY[0x277D85DE8];
}

- (void)refreshState:(BOOL)a3
{
  v224 = "[SUSettingsStatefulUIManager refreshState:]";
  v285 = *MEMORY[0x277D85DE8];
  v281 = self;
  v280 = a2;
  v279 = a3;
  obj = MEMORY[0x277D82BE0](self->_currentRefreshScanOperation);
  objc_sync_enter(obj);
  v223 = [(SUSettingsStatefulUIManager *)v281 log];
  v221 = v223;
  v222 = [v221 oslog];
  oslog = v222;
  MEMORY[0x277D82BD8](v221);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v219 = type;
    v220 = [(SUSettingsStatefulUIManager *)v281 currentState];
    v217 = SUSettingsUIStateToString(v220);
    v214 = v217;
    v215 = MEMORY[0x277D82BE0](v214);
    v276 = v215;
    v216 = [(SUSettingsStatefulUIManager *)v281 currentState];
    v274 = 0;
    v272 = 0;
    v213 = [(SUSettingsStatefulUIManager *)v281 delegate];
    v212 = v213;
    if (v212)
    {
      v211 = [(SUSettingsStatefulUIManager *)v281 delegate];
      v275 = v211;
      v274 = 1;
      aClass = objc_opt_class();
      v209 = NSStringFromClass(aClass);
      v273 = v209;
      v272 = 1;
      v208 = v273;
    }

    else
    {
      v208 = @"(null)";
    }

    v206 = v208;
    v207 = [(SUSettingsStatefulUIManager *)v281 delegate];
    v204 = v207;
    v205 = [(SUSettingsStatefulUIManager *)v281 scanError];
    v202 = v205;
    v203 = [(SUSettingsStatefulUIManager *)v281 preferredStatefulDescriptor];
    v200 = v203;
    v201 = [(SUSettingsStatefulUIManager *)v281 alternateStatefulDescriptor];
    v198 = v201;
    v270 = 0;
    v268 = 0;
    v266 = 0;
    v199 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
    v197 = v199;
    if (v197)
    {
      v196 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
      v271 = v196;
      v270 = 1;
      v195 = [v271 descriptor];
      v269 = v195;
      v268 = 1;
      v194 = [v269 humanReadableUpdateName];
      v267 = v194;
      v266 = 1;
      v193 = v267;
    }

    else
    {
      v193 = @"(null)";
    }

    v191 = v193;
    v192 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
    v189 = v192;
    v190 = [(SUSettingsStatefulUIManager *)v281 performThirdPartyScan];
    v3 = "YES";
    if (!v190)
    {
      v3 = "NO";
    }

    v187 = v3;
    v188 = [(SUSettingsStatefulUIManager *)v281 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v188)
    {
      v4 = "NO";
    }

    v185 = v4;
    v186 = [(SUSettingsStatefulUIManager *)v281 hidingPreferredDescriptor];
    v5 = "YES";
    if (!v186)
    {
      v5 = "NO";
    }

    v183 = v5;
    v184 = [(SUSettingsStatefulDescriptor *)v281->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v180 = v184;
    v181 = MEMORY[0x277D82BE0](v180);
    v265 = v181;
    v182 = [(SUSettingsStatefulUIManager *)v281 hidingAlternateDescriptor];
    v6 = "YES";
    if (!v182)
    {
      v6 = "NO";
    }

    v178 = v6;
    v179 = [(SUSettingsStatefulDescriptor *)v281->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v175 = v179;
    v176 = MEMORY[0x277D82BE0](v175);
    location = v176;
    v262 = 0;
    v177 = [(SUSettingsStatefulUIManager *)v281 enrolledBetaProgram];
    v174 = v177;
    if (v174)
    {
      v173 = [(SUSettingsStatefulUIManager *)v281 enrolledBetaProgram];
      v263 = v173;
      v262 = 1;
      v172 = [v263 programID];
      v171 = v172;
    }

    else
    {
      v171 = 0;
    }

    v169 = v171;
    v170 = [(SUSettingsStatefulUIManager *)v281 betaPrograms];
    v167 = v170;
    v168 = [v167 count];
    v166 = [(SUSettingsStatefulUIManager *)v281 currentFullScanOperation];
    v164 = v166;
    v165 = [(SUSettingsStatefulUIManager *)v281 currentRefreshScanOperation];
    v162 = v165;
    v163 = [(SUSettingsStatefulUIManager *)v281 currentUpdateOperation];
    v160 = v163;
    v161 = [(SUSettingsStatefulUIManager *)v281 auxiliaryOperations];
    v158 = v161;
    v159 = [v158 count];
    v156 = &v15;
    buf = v284;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v284, v224, v215, v216, v206, v204, v202, v200, v198, v191, v189, v187, v185, v183, v181, v178, v176, v171, v168, v164, v162, v160, v159);
    _os_log_impl(&dword_26AC94000, log, v219[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](v158);
    MEMORY[0x277D82BD8](v160);
    MEMORY[0x277D82BD8](v162);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](v167);
    if (v262)
    {
      MEMORY[0x277D82BD8](v263);
    }

    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](v175);
    MEMORY[0x277D82BD8](v180);
    MEMORY[0x277D82BD8](v189);
    if (v266)
    {
      MEMORY[0x277D82BD8](v267);
    }

    if (v268)
    {
      MEMORY[0x277D82BD8](v269);
    }

    if (v270)
    {
      MEMORY[0x277D82BD8](v271);
    }

    MEMORY[0x277D82BD8](v197);
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](v200);
    MEMORY[0x277D82BD8](v202);
    MEMORY[0x277D82BD8](v204);
    if (v272)
    {
      MEMORY[0x277D82BD8](v273);
    }

    if (v274)
    {
      MEMORY[0x277D82BD8](v275);
    }

    MEMORY[0x277D82BD8](v212);
    MEMORY[0x277D82BD8](v214);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v265, 0);
    objc_storeStrong(&v276, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v281->_currentRefreshScanOperation)
  {
    v155 = [(SUSettingsStatefulUIManager *)v281 log];
    v153 = v155;
    v154 = [v153 oslog];
    v261 = v154;
    MEMORY[0x277D82BD8](v153);
    v260 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
    {
      v150 = v261;
      *v151 = v260;
      v152 = [(SUSettingsStatefulUIManager *)v281 currentState];
      v149 = SUSettingsUIStateToString(v152);
      v146 = v149;
      v147 = MEMORY[0x277D82BE0](v146);
      v259 = v147;
      v148 = [(SUSettingsStatefulUIManager *)v281 currentState];
      v257 = 0;
      v255 = 0;
      v145 = [(SUSettingsStatefulUIManager *)v281 delegate];
      v144 = v145;
      if (v144)
      {
        v143 = [(SUSettingsStatefulUIManager *)v281 delegate];
        v258 = v143;
        v257 = 1;
        v142 = objc_opt_class();
        v141 = NSStringFromClass(v142);
        v256 = v141;
        v255 = 1;
        v140 = v256;
      }

      else
      {
        v140 = @"(null)";
      }

      v138 = v140;
      v139 = [(SUSettingsStatefulUIManager *)v281 delegate];
      v136 = v139;
      v137 = [(SUSettingsStatefulUIManager *)v281 scanError];
      v134 = v137;
      v135 = [(SUSettingsStatefulUIManager *)v281 preferredStatefulDescriptor];
      v132 = v135;
      v133 = [(SUSettingsStatefulUIManager *)v281 alternateStatefulDescriptor];
      v130 = v133;
      v253 = 0;
      v251 = 0;
      v249 = 0;
      v131 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
      v129 = v131;
      if (v129)
      {
        v128 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
        v254 = v128;
        v253 = 1;
        v127 = [v254 descriptor];
        v252 = v127;
        v251 = 1;
        v126 = [v252 humanReadableUpdateName];
        v250 = v126;
        v249 = 1;
        v125 = v250;
      }

      else
      {
        v125 = @"(null)";
      }

      v123 = v125;
      v124 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
      v121 = v124;
      v122 = [(SUSettingsStatefulUIManager *)v281 performThirdPartyScan];
      v7 = "YES";
      if (!v122)
      {
        v7 = "NO";
      }

      v119 = v7;
      v120 = [(SUSettingsStatefulUIManager *)v281 isTargetedUpdateScheduledForAutoInstall];
      v8 = "YES";
      if (!v120)
      {
        v8 = "NO";
      }

      v117 = v8;
      v118 = [(SUSettingsStatefulUIManager *)v281 hidingPreferredDescriptor];
      v9 = "YES";
      if (!v118)
      {
        v9 = "NO";
      }

      v115 = v9;
      v116 = [(SUSettingsStatefulDescriptor *)v281->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v112 = v116;
      v113 = MEMORY[0x277D82BE0](v112);
      v248 = v113;
      v114 = [(SUSettingsStatefulUIManager *)v281 hidingAlternateDescriptor];
      v10 = "YES";
      if (!v114)
      {
        v10 = "NO";
      }

      v110 = v10;
      v111 = [(SUSettingsStatefulDescriptor *)v281->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v107 = v111;
      v108 = MEMORY[0x277D82BE0](v107);
      v247 = v108;
      v245 = 0;
      v109 = [(SUSettingsStatefulUIManager *)v281 enrolledBetaProgram];
      v106 = v109;
      if (v106)
      {
        v105 = [(SUSettingsStatefulUIManager *)v281 enrolledBetaProgram];
        v246 = v105;
        v245 = 1;
        v104 = [v246 programID];
        v103 = v104;
      }

      else
      {
        v103 = 0;
      }

      v101 = v103;
      v102 = [(SUSettingsStatefulUIManager *)v281 betaPrograms];
      v99 = v102;
      v100 = [v99 count];
      v98 = [(SUSettingsStatefulUIManager *)v281 currentFullScanOperation];
      v96 = v98;
      v97 = [(SUSettingsStatefulUIManager *)v281 currentRefreshScanOperation];
      v94 = v97;
      v95 = [(SUSettingsStatefulUIManager *)v281 currentUpdateOperation];
      v92 = v95;
      v93 = [(SUSettingsStatefulUIManager *)v281 auxiliaryOperations];
      v90 = v93;
      v91 = [v90 count];
      v88 = &v15;
      v89 = v283;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v283, v224, v147, v148, v138, v136, v134, v132, v130, v123, v121, v119, v117, v115, v113, v110, v108, v101, v100, v96, v94, v92, v91);
      _os_log_impl(&dword_26AC94000, v150, v151[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is already running. Skipping on this refresh request without transitioning to the RefreshingScanResults state.", v89, 0xDEu);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](v99);
      if (v245)
      {
        MEMORY[0x277D82BD8](v246);
      }

      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v121);
      if (v249)
      {
        MEMORY[0x277D82BD8](v250);
      }

      if (v251)
      {
        MEMORY[0x277D82BD8](v252);
      }

      if (v253)
      {
        MEMORY[0x277D82BD8](v254);
      }

      MEMORY[0x277D82BD8](v129);
      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v136);
      if (v255)
      {
        MEMORY[0x277D82BD8](v256);
      }

      if (v257)
      {
        MEMORY[0x277D82BD8](v258);
      }

      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v146);
      objc_storeStrong(&v247, 0);
      objc_storeStrong(&v248, 0);
      objc_storeStrong(&v259, 0);
    }

    objc_storeStrong(&v261, 0);
    v244 = 1;
  }

  else if (v281->_currentFullScanOperation)
  {
    v87 = [(SUSettingsStatefulUIManager *)v281 log];
    v85 = v87;
    v86 = [v85 oslog];
    v243 = v86;
    MEMORY[0x277D82BD8](v85);
    v242 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
    {
      v82 = v243;
      *v83 = v242;
      v84 = [(SUSettingsStatefulUIManager *)v281 currentState];
      v81 = SUSettingsUIStateToString(v84);
      v78 = v81;
      v79 = MEMORY[0x277D82BE0](v78);
      v241 = v79;
      v80 = [(SUSettingsStatefulUIManager *)v281 currentState];
      v239 = 0;
      v237 = 0;
      v77 = [(SUSettingsStatefulUIManager *)v281 delegate];
      v76 = v77;
      if (v76)
      {
        v75 = [(SUSettingsStatefulUIManager *)v281 delegate];
        v240 = v75;
        v239 = 1;
        v74 = objc_opt_class();
        v73 = NSStringFromClass(v74);
        v238 = v73;
        v237 = 1;
        v72 = v238;
      }

      else
      {
        v72 = @"(null)";
      }

      v70 = v72;
      v71 = [(SUSettingsStatefulUIManager *)v281 delegate];
      v68 = v71;
      v69 = [(SUSettingsStatefulUIManager *)v281 scanError];
      v66 = v69;
      v67 = [(SUSettingsStatefulUIManager *)v281 preferredStatefulDescriptor];
      v64 = v67;
      v65 = [(SUSettingsStatefulUIManager *)v281 alternateStatefulDescriptor];
      v62 = v65;
      v235 = 0;
      v233 = 0;
      v231 = 0;
      v63 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
      v61 = v63;
      if (v61)
      {
        v60 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
        v236 = v60;
        v235 = 1;
        v59 = [v236 descriptor];
        v234 = v59;
        v233 = 1;
        v58 = [v234 humanReadableUpdateName];
        v232 = v58;
        v231 = 1;
        v57 = v232;
      }

      else
      {
        v57 = @"(null)";
      }

      v55 = v57;
      v56 = [(SUSettingsStatefulUIManager *)v281 currentDownload];
      v53 = v56;
      v54 = [(SUSettingsStatefulUIManager *)v281 performThirdPartyScan];
      v11 = "YES";
      if (!v54)
      {
        v11 = "NO";
      }

      v51 = v11;
      v52 = [(SUSettingsStatefulUIManager *)v281 isTargetedUpdateScheduledForAutoInstall];
      v12 = "YES";
      if (!v52)
      {
        v12 = "NO";
      }

      v49 = v12;
      v50 = [(SUSettingsStatefulUIManager *)v281 hidingPreferredDescriptor];
      v13 = "YES";
      if (!v50)
      {
        v13 = "NO";
      }

      v47 = v13;
      v48 = [(SUSettingsStatefulDescriptor *)v281->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v44 = v48;
      v45 = MEMORY[0x277D82BE0](v44);
      v230 = v45;
      v46 = [(SUSettingsStatefulUIManager *)v281 hidingAlternateDescriptor];
      v14 = "YES";
      if (!v46)
      {
        v14 = "NO";
      }

      v42 = v14;
      v43 = [(SUSettingsStatefulDescriptor *)v281->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v39 = v43;
      v40 = MEMORY[0x277D82BE0](v39);
      v229 = v40;
      v227 = 0;
      v41 = [(SUSettingsStatefulUIManager *)v281 enrolledBetaProgram];
      v38 = v41;
      if (v38)
      {
        v37 = [(SUSettingsStatefulUIManager *)v281 enrolledBetaProgram];
        v228 = v37;
        v227 = 1;
        v36 = [v228 programID];
        v35 = v36;
      }

      else
      {
        v35 = 0;
      }

      v33 = v35;
      v34 = [(SUSettingsStatefulUIManager *)v281 betaPrograms];
      v31 = v34;
      v32 = [v31 count];
      v30 = [(SUSettingsStatefulUIManager *)v281 currentFullScanOperation];
      v28 = v30;
      v29 = [(SUSettingsStatefulUIManager *)v281 currentRefreshScanOperation];
      v26 = v29;
      v27 = [(SUSettingsStatefulUIManager *)v281 currentUpdateOperation];
      v24 = v27;
      v25 = [(SUSettingsStatefulUIManager *)v281 auxiliaryOperations];
      v22 = v25;
      v23 = [v22 count];
      v20 = &v15;
      v21 = v282;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v282, v224, v79, v80, v70, v68, v66, v64, v62, v55, v53, v51, v49, v47, v45, v42, v40, v33, v32, v28, v26, v24, v23);
      _os_log_impl(&dword_26AC94000, v82, v83[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full scan operation is already running. Skipping on this refresh requestwithout transitioning to the RefreshingScanResults state.", v21, 0xDEu);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v31);
      if (v227)
      {
        MEMORY[0x277D82BD8](v228);
      }

      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v53);
      if (v231)
      {
        MEMORY[0x277D82BD8](v232);
      }

      if (v233)
      {
        MEMORY[0x277D82BD8](v234);
      }

      if (v235)
      {
        MEMORY[0x277D82BD8](v236);
      }

      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v68);
      if (v237)
      {
        MEMORY[0x277D82BD8](v238);
      }

      if (v239)
      {
        MEMORY[0x277D82BD8](v240);
      }

      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v78);
      objc_storeStrong(&v229, 0);
      objc_storeStrong(&v230, 0);
      objc_storeStrong(&v241, 0);
    }

    objc_storeStrong(&v243, 0);
    v244 = 1;
  }

  else
  {
    v19 = objc_alloc_init(SUSettingsStatefulUIManagerFSMParam);
    v226 = v19;
    [(SUSettingsStatefulUIManagerFSMParam *)v19 setForceReload:v279];
    [v226 setRefreshHasAnyChanges:0];
    v18 = [(SUSettingsStatefulUIManager *)v281 currentState];
    [v226 setRefreshPreviousState:v18];
    v17 = [(SUSettingsStatefulUIManager *)v281 managerFSM];
    v16 = v17;
    [v16 postEvent:@"RefreshScanResults" withInfo:v226];
    MEMORY[0x277D82BD8](v16);
    objc_storeStrong(&v226, 0);
    v244 = 0;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)checkForUpdatesInBackground
{
  v55 = v74;
  v56 = "[SUSettingsStatefulUIManager checkForUpdatesInBackground]";
  v76 = *MEMORY[0x277D85DE8];
  v74[1] = self;
  v74[0] = a2;
  v54 = [(SUSettingsStatefulUIManager *)self log];
  oslog = [(SUCoreLog *)v54 oslog];
  MEMORY[0x277D82BD8](v54);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v49 = type;
    v50 = SUSettingsUIStateToString([v55[1] currentState]);
    v51 = MEMORY[0x277D82BE0](v50);
    v71 = v51;
    v52 = [v55[1] currentState];
    v53 = [v55[1] delegate];
    v69 = 0;
    v67 = 0;
    if (v53)
    {
      v70 = [v55[1] delegate];
      v46 = 1;
      v69 = 1;
      v2 = objc_opt_class();
      v68 = NSStringFromClass(v2);
      v67 = 1;
      v47 = v68;
    }

    else
    {
      v47 = @"(null)";
    }

    v40 = v47;
    v41 = [v55[1] delegate];
    v42 = [v55[1] scanError];
    v43 = [v55[1] preferredStatefulDescriptor];
    v44 = [v55[1] alternateStatefulDescriptor];
    v45 = [v55[1] currentDownload];
    v65 = 0;
    v63 = 0;
    v61 = 0;
    if (v45)
    {
      v66 = [v55[1] currentDownload];
      v38 = 1;
      v65 = 1;
      v64 = [v66 descriptor];
      v63 = 1;
      v62 = [v64 humanReadableUpdateName];
      v61 = 1;
      v39 = v62;
    }

    else
    {
      v39 = @"(null)";
    }

    v25 = v39;
    v26 = [v55[1] currentDownload];
    v3 = [v55[1] performThirdPartyScan];
    v32 = "NO";
    v4 = "YES";
    v33 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v27 = v4;
    v5 = [v55[1] isTargetedUpdateScheduledForAutoInstall];
    v6 = v33;
    if ((v5 & 1) == 0)
    {
      v6 = v32;
    }

    v28 = v6;
    v7 = [v55[1] hidingPreferredDescriptor];
    v8 = v33;
    if ((v7 & 1) == 0)
    {
      v8 = v32;
    }

    v29 = v8;
    v30 = [*(v55[1] + 256) humanReadableUpdateName];
    v31 = MEMORY[0x277D82BE0](v30);
    v60 = v31;
    v9 = [v55[1] hidingAlternateDescriptor];
    v10 = v33;
    if ((v9 & 1) == 0)
    {
      v10 = v32;
    }

    v34 = v10;
    v35 = [*(v55[1] + 264) humanReadableUpdateName];
    v36 = MEMORY[0x277D82BE0](v35);
    location = v36;
    v37 = [v55[1] enrolledBetaProgram];
    v57 = 0;
    if (v37)
    {
      v58 = [v55[1] enrolledBetaProgram];
      v57 = 1;
      v24 = [v58 programID];
    }

    else
    {
      v24 = 0;
    }

    v15 = v24;
    v23 = [v55[1] betaPrograms];
    v16 = [v23 count];
    v22 = [v55[1] currentFullScanOperation];
    v21 = [v55[1] currentRefreshScanOperation];
    v20 = [v55[1] currentUpdateOperation];
    v19 = [v55[1] auxiliaryOperations];
    v17 = &v11;
    buf = v75;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v75, v56, v51, v52, v40, v41, v42, v43, v44, v25, v26, v27, v28, v29, v31, v34, v36, v24, v16, v22, v21, v20, [v19 count]);
    _os_log_impl(&dword_26AC94000, log, v49[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v26);
    if (v61)
    {
      MEMORY[0x277D82BD8](v62);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v41);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v50);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v60, obj);
    objc_storeStrong(&v71, obj);
  }

  objc_storeStrong(&oslog, 0);
  v12 = v55[1];
  v13 = objc_alloc_init(SUSettingsStatefulUIManagerFSMParam);
  [v12 performFullScan:?];
  MEMORY[0x277D82BD8](v13);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isTargetedUpdateScheduledForAutoInstall
{
  LOBYTE(v3) = 0;
  if (self->_isAutoUpdateScheduled)
  {
    LOBYTE(v3) = 0;
    if (self->_currentAutoInstallOperation)
    {
      LOBYTE(v3) = 0;
      if (([(SUAutoInstallOperation *)self->_currentAutoInstallOperation isCanceled]& 1) == 0)
      {
        v3 = [(SUAutoInstallOperation *)self->_currentAutoInstallOperation isExpired]^ 1;
      }
    }
  }

  return v3 & 1;
}

- (BOOL)doesTargetedUpdateMatchDescriptorType:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = self;
  v17 = a2;
  v16 = a3;
  if (!a3 || v16 == 1)
  {
    v11 = 0;
    v9 = 0;
    if (v16)
    {
      v10 = [(SUSettingsStatefulUIManager *)v18 alternateStatefulDescriptor];
      v9 = 1;
      v4 = v10;
    }

    else
    {
      v12 = [(SUSettingsStatefulUIManager *)v18 preferredStatefulDescriptor];
      v11 = 1;
      v4 = v12;
    }

    v19 = [(SUSettingsStatefulUIManager *)v18 doesTargetedUpdateMatchDescriptor:v4];
    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }
  }

  else
  {
    v8 = [(SUSettingsStatefulUIManager *)v18 log];
    v15 = [(SUCoreLog *)v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v15;
      type = v14;
      v7 = SUSettingsDescriptorTypeToString(v16);
      v13 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_3_8_32_8_64_8_0(v20, "[SUSettingsStatefulUIManager doesTargetedUpdateMatchDescriptorType:]", v13, v16);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: The given descriptor type, %@ (%ld), is invalid.", v20, 0x20u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    v19 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (BOOL)doesTargetedUpdateMatchDescriptor:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(SUSettingsStatefulUIManager *)v13 currentDownload];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (v4)
  {
    v11 = [(SUSettingsStatefulUIManager *)v13 currentDownload];
    v10 = 1;
    v9 = [(SUDownload *)v11 descriptor];
    v8 = 1;
    v7 = [location[0] descriptor];
    v6 = 1;
    v5 = [(SUDescriptor *)v9 isEqual:?];
  }

  v14 = v5 & 1;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (id)latestUpdateStatefulDescriptor
{
  v5 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  v6 = [(SUSettingsStatefulDescriptor *)v5 isLatestUpdate];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    v8 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  }

  else
  {
    v3 = [(SUSettingsStatefulUIManager *)self alternateStatefulDescriptor];
    v4 = [(SUSettingsStatefulDescriptor *)v3 isLatestUpdate];
    MEMORY[0x277D82BD8](v3);
    if (v4)
    {
      v8 = [(SUSettingsStatefulUIManager *)self alternateStatefulDescriptor];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)downloadUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](v22);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)v22 beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke(NSObject *a1, void *a2)
{
  v68 = a1;
  v67 = "[SUSettingsStatefulUIManager downloadUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke";
  v101 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = v68;
  v66 = [(objc_class *)v68[4].isa log];
  oslog[0] = [v66 oslog];
  MEMORY[0x277D82BD8](v66);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v61 = type;
    v62 = SUSettingsUIStateToString([(objc_class *)v68[4].isa currentState]);
    v63 = MEMORY[0x277D82BE0](v62);
    v96 = v63;
    v64 = [(objc_class *)v68[4].isa currentState];
    v65 = [(objc_class *)v68[4].isa delegate];
    v94 = 0;
    v92 = 0;
    if (v65)
    {
      v95 = [(objc_class *)v68[4].isa delegate];
      v58 = 1;
      v94 = 1;
      v2 = objc_opt_class();
      v93 = NSStringFromClass(v2);
      v92 = 1;
      v59 = v93;
    }

    else
    {
      v59 = @"(null)";
    }

    v52 = v59;
    v53 = [(objc_class *)v68[4].isa delegate];
    v54 = [(objc_class *)v68[4].isa scanError];
    v55 = [(objc_class *)v68[4].isa preferredStatefulDescriptor];
    v56 = [(objc_class *)v68[4].isa alternateStatefulDescriptor];
    v57 = [(objc_class *)v68[4].isa currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (v57)
    {
      v91 = [(objc_class *)v68[4].isa currentDownload];
      v50 = 1;
      v90 = 1;
      v89 = [v91 descriptor];
      v88 = 1;
      v87 = [v89 humanReadableUpdateName];
      v86 = 1;
      v51 = v87;
    }

    else
    {
      v51 = @"(null)";
    }

    v37 = v51;
    v38 = [(objc_class *)v68[4].isa currentDownload];
    v3 = [(objc_class *)v68[4].isa performThirdPartyScan];
    v44 = "NO";
    v4 = "YES";
    v45 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v39 = v4;
    v5 = [(objc_class *)v68[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v45;
    if ((v5 & 1) == 0)
    {
      v6 = v44;
    }

    v40 = v6;
    v7 = [(objc_class *)v68[4].isa hidingPreferredDescriptor];
    v8 = v45;
    if ((v7 & 1) == 0)
    {
      v8 = v44;
    }

    v41 = v8;
    v42 = [*(v68[4].isa + 32) humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v85 = v43;
    v9 = [(objc_class *)v68[4].isa hidingAlternateDescriptor];
    v10 = v45;
    if ((v9 & 1) == 0)
    {
      v10 = v44;
    }

    v46 = v10;
    v47 = [*(v68[4].isa + 33) humanReadableUpdateName];
    v48 = MEMORY[0x277D82BE0](v47);
    v84 = v48;
    v49 = [(objc_class *)v68[4].isa enrolledBetaProgram];
    v82 = 0;
    if (v49)
    {
      v83 = [(objc_class *)v68[4].isa enrolledBetaProgram];
      v82 = 1;
      v36 = [v83 programID];
    }

    else
    {
      v36 = 0;
    }

    v27 = v36;
    v35 = [(objc_class *)v68[4].isa betaPrograms];
    v28 = [v35 count];
    v34 = [(objc_class *)v68[4].isa currentFullScanOperation];
    v33 = [(objc_class *)v68[4].isa currentRefreshScanOperation];
    v32 = [(objc_class *)v68[4].isa currentUpdateOperation];
    v31 = [(objc_class *)v68[4].isa auxiliaryOperations];
    v11 = [v31 count];
    isa = v68[5].isa;
    v29 = &v13;
    buf = v100;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v100, v67, v63, v64, v52, v53, v54, v55, v56, v37, v38, v39, v40, v41, v43, v46, v48, v36, v28, v34, v33, v32, v11, isa);
    _os_log_impl(&dword_26AC94000, log, v61[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to download (Download Only) the update: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v38);
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

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v62);
    obj = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, obj);
    objc_storeStrong(&v96, obj);
  }

  objc_storeStrong(oslog, 0);
  if (location[0])
  {
    v15 = *(v68[4].isa + 25);
    v17 = [(objc_class *)v68[5].isa descriptor];
    v16 = [(objc_class *)v68[4].isa createUpdateOperationOptions];
    v14 = &v69;
    v69 = MEMORY[0x277D85DD0];
    v70 = -1073741824;
    v71 = 0;
    v72 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2;
    v73 = &unk_279CB9500;
    v20 = v74;
    v74[0] = MEMORY[0x277D82BE0](v68[4].isa);
    v19 = (v14 + 6);
    v74[2] = MEMORY[0x277D82BE0](v68[6].isa);
    v18 = (v14 + 5);
    v74[1] = MEMORY[0x277D82BE0](v68[5].isa);
    [v15 downloadUpdate:v17 withOptions:v16 completionHandler:v14];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v21 = 0;
    objc_storeStrong(v18, 0);
    objc_storeStrong(v19, v21);
    objc_storeStrong(v20, v21);
    v75 = 0;
  }

  else
  {
    if (v68[6].isa)
    {
      v24 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v24 selectDelegateCallbackQueue:*(v68[4].isa + 5)];
      block = &v76;
      v76 = MEMORY[0x277D85DD0];
      v77 = -1073741824;
      v78 = 0;
      v79 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_346;
      v80 = &unk_279CB9438;
      v25 = &v81;
      v81 = MEMORY[0x277D82BE0](v68[6].isa);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(v25, 0);
    }

    v75 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_346(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:?];
  (*(v2 + 16))(v2, 0, 0);
  return MEMORY[0x277D82BD8](v3);
}

void __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2(NSObject *a1, unsigned __int8 a2, id obj, void *a4)
{
  v77 = a1;
  obja = a4;
  v75 = "[SUSettingsStatefulUIManager downloadUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v115 = *MEMORY[0x277D85DE8];
  v113 = a1;
  v112 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v110 = 0;
  objc_storeStrong(&v110, obja);
  oslog[1] = v77;
  v74 = [(objc_class *)v77[4].isa log];
  oslog[0] = [v74 oslog];
  MEMORY[0x277D82BD8](v74);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v69 = type;
    v70 = SUSettingsUIStateToString([(objc_class *)v77[4].isa currentState]);
    v71 = MEMORY[0x277D82BE0](v70);
    v107 = v71;
    v72 = [(objc_class *)v77[4].isa currentState];
    v73 = [(objc_class *)v77[4].isa delegate];
    v105 = 0;
    v103 = 0;
    if (v73)
    {
      v106 = [(objc_class *)v77[4].isa delegate];
      v66 = 1;
      v105 = 1;
      v4 = objc_opt_class();
      v104 = NSStringFromClass(v4);
      v103 = 1;
      v67 = v104;
    }

    else
    {
      v67 = @"(null)";
    }

    v60 = v67;
    v61 = [(objc_class *)v77[4].isa delegate];
    v62 = [(objc_class *)v77[4].isa scanError];
    v63 = [(objc_class *)v77[4].isa preferredStatefulDescriptor];
    v64 = [(objc_class *)v77[4].isa alternateStatefulDescriptor];
    v65 = [(objc_class *)v77[4].isa currentDownload];
    v101 = 0;
    v99 = 0;
    v97 = 0;
    if (v65)
    {
      v102 = [(objc_class *)v77[4].isa currentDownload];
      v58 = 1;
      v101 = 1;
      v100 = [v102 descriptor];
      v99 = 1;
      v98 = [v100 humanReadableUpdateName];
      v97 = 1;
      v59 = v98;
    }

    else
    {
      v59 = @"(null)";
    }

    v45 = v59;
    v46 = [(objc_class *)v77[4].isa currentDownload];
    v5 = [(objc_class *)v77[4].isa performThirdPartyScan];
    v52 = "NO";
    v6 = "YES";
    v53 = "YES";
    if ((v5 & 1) == 0)
    {
      v6 = "NO";
    }

    v47 = v6;
    v7 = [(objc_class *)v77[4].isa isTargetedUpdateScheduledForAutoInstall];
    v8 = v53;
    if ((v7 & 1) == 0)
    {
      v8 = v52;
    }

    v48 = v8;
    v9 = [(objc_class *)v77[4].isa hidingPreferredDescriptor];
    v10 = v53;
    if ((v9 & 1) == 0)
    {
      v10 = v52;
    }

    v49 = v10;
    v50 = [*(v77[4].isa + 32) humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](v50);
    v96 = v51;
    v11 = [(objc_class *)v77[4].isa hidingAlternateDescriptor];
    v12 = v53;
    if ((v11 & 1) == 0)
    {
      v12 = v52;
    }

    v54 = v12;
    v55 = [*(v77[4].isa + 33) humanReadableUpdateName];
    v56 = MEMORY[0x277D82BE0](v55);
    v95 = v56;
    v57 = [(objc_class *)v77[4].isa enrolledBetaProgram];
    v93 = 0;
    if (v57)
    {
      v94 = [(objc_class *)v77[4].isa enrolledBetaProgram];
      v93 = 1;
      v44 = [v94 programID];
    }

    else
    {
      v44 = 0;
    }

    v35 = v44;
    v43 = [(objc_class *)v77[4].isa betaPrograms];
    v36 = [v43 count];
    v42 = [(objc_class *)v77[4].isa currentFullScanOperation];
    v41 = [(objc_class *)v77[4].isa currentRefreshScanOperation];
    v40 = [(objc_class *)v77[4].isa currentUpdateOperation];
    v39 = [(objc_class *)v77[4].isa auxiliaryOperations];
    v13 = [v39 count];
    v37 = &v14;
    buf = v114;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_8_66(v114, v75, v71, v72, v60, v61, v62, v63, v64, v45, v46, v47, v48, v49, v51, v54, v56, v44, v36, v42, v41, v40, v13, v112 & 1, v110);
    _os_log_impl(&dword_26AC94000, log, v69[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload (Download Only) operation completed with result: %d; error: %{public}@", buf, 0xEEu);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v46);
    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v70);
    v34 = 0;
    objc_storeStrong(&v95, 0);
    objc_storeStrong(&v96, v34);
    objc_storeStrong(&v107, v34);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(v77[4].isa + 25, 0);
  if (v112)
  {
    objc_storeStrong(v77[4].isa + 13, location);
    isa = v77[4].isa;
    v16 = v112;
    v17 = location;
    v19 = v110;
    v20 = &v78;
    v78 = MEMORY[0x277D85DD0];
    v79 = -1073741824;
    v18 = 0;
    v80 = 0;
    v81 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_349;
    v82 = &unk_279CB94D8;
    v26 = v83;
    v83[0] = MEMORY[0x277D82BE0](v77[4].isa);
    v84 = v112 & 1;
    v25 = v20 + 8;
    v83[4] = MEMORY[0x277D82BE0](v77[6].isa);
    v24 = v20 + 5;
    v83[1] = MEMORY[0x277D82BE0](location);
    v23 = v20 + 6;
    v83[2] = MEMORY[0x277D82BE0](v110);
    v22 = v20 + 7;
    v83[3] = MEMORY[0x277D82BE0](v77[5].isa);
    v27 = 0;
    [objc_class performPostUpdateOperationRefresh:"performPostUpdateOperationRefresh:withDownload:didScheduledUpdate:autoInstallOperation:error:completionHandler:" withDownload:v16 & 1 didScheduledUpdate:v17 autoInstallOperation:v18 & 1 error:? completionHandler:?];
    objc_storeStrong(v22, v27);
    objc_storeStrong(v23, v27);
    objc_storeStrong(v24, v27);
    objc_storeStrong(v25, v27);
    objc_storeStrong(v26, v27);
    v85 = 0;
  }

  else
  {
    if (v77[6].isa)
    {
      v30 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v30 selectDelegateCallbackQueue:*(v77[4].isa + 5)];
      block = &v86;
      v86 = MEMORY[0x277D85DD0];
      v87 = -1073741824;
      v88 = 0;
      v89 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_348;
      v90 = &unk_279CB9460;
      v32 = &v92;
      v92 = MEMORY[0x277D82BE0](v77[6].isa);
      v31 = (block + 32);
      v91 = MEMORY[0x277D82BE0](v110);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v30);
      v33 = 0;
      objc_storeStrong(v31, 0);
      objc_storeStrong(v32, v33);
    }

    v85 = 1;
  }

  v15 = 0;
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&location, v15);
  *MEMORY[0x277D85DE8];
}

void __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_349(NSObject *a1, unsigned __int8 a2)
{
  v70 = a1;
  v71 = "[SUSettingsStatefulUIManager downloadUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v108 = *MEMORY[0x277D85DE8];
  v106 = a1;
  v105 = a2;
  oslog[1] = a1;
  v69 = [(objc_class *)a1[4].isa log];
  oslog[0] = [v69 oslog];
  MEMORY[0x277D82BD8](v69);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v64 = type;
    v65 = SUSettingsUIStateToString([(objc_class *)v70[4].isa currentState]);
    v66 = MEMORY[0x277D82BE0](v65);
    v102 = v66;
    v67 = [(objc_class *)v70[4].isa currentState];
    v68 = [(objc_class *)v70[4].isa delegate];
    v100 = 0;
    v98 = 0;
    if (v68)
    {
      v101 = [(objc_class *)v70[4].isa delegate];
      v61 = 1;
      v100 = 1;
      v2 = objc_opt_class();
      v99 = NSStringFromClass(v2);
      v98 = 1;
      v62 = v99;
    }

    else
    {
      v62 = @"(null)";
    }

    v55 = v62;
    v56 = [(objc_class *)v70[4].isa delegate];
    v57 = [(objc_class *)v70[4].isa scanError];
    v58 = [(objc_class *)v70[4].isa preferredStatefulDescriptor];
    v59 = [(objc_class *)v70[4].isa alternateStatefulDescriptor];
    v60 = [(objc_class *)v70[4].isa currentDownload];
    v96 = 0;
    v94 = 0;
    v92 = 0;
    if (v60)
    {
      v97 = [(objc_class *)v70[4].isa currentDownload];
      v53 = 1;
      v96 = 1;
      v95 = [v97 descriptor];
      v94 = 1;
      v93 = [v95 humanReadableUpdateName];
      v92 = 1;
      v54 = v93;
    }

    else
    {
      v54 = @"(null)";
    }

    v40 = v54;
    v41 = [(objc_class *)v70[4].isa currentDownload];
    v3 = [(objc_class *)v70[4].isa performThirdPartyScan];
    v47 = "NO";
    v4 = "YES";
    v48 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v42 = v4;
    v5 = [(objc_class *)v70[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v48;
    if ((v5 & 1) == 0)
    {
      v6 = v47;
    }

    v43 = v6;
    v7 = [(objc_class *)v70[4].isa hidingPreferredDescriptor];
    v8 = v48;
    if ((v7 & 1) == 0)
    {
      v8 = v47;
    }

    v44 = v8;
    v45 = [*(v70[4].isa + 32) humanReadableUpdateName];
    v46 = MEMORY[0x277D82BE0](v45);
    v91 = v46;
    v9 = [(objc_class *)v70[4].isa hidingAlternateDescriptor];
    v10 = v48;
    if ((v9 & 1) == 0)
    {
      v10 = v47;
    }

    v49 = v10;
    v50 = [*(v70[4].isa + 33) humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](v50);
    location = v51;
    v52 = [(objc_class *)v70[4].isa enrolledBetaProgram];
    v88 = 0;
    if (v52)
    {
      v89 = [(objc_class *)v70[4].isa enrolledBetaProgram];
      v88 = 1;
      v39 = [v89 programID];
    }

    else
    {
      v39 = 0;
    }

    v30 = v39;
    v31 = [(objc_class *)v70[4].isa betaPrograms];
    v32 = [v31 count];
    v33 = [(objc_class *)v70[4].isa currentFullScanOperation];
    v34 = [(objc_class *)v70[4].isa currentRefreshScanOperation];
    v35 = [(objc_class *)v70[4].isa currentUpdateOperation];
    v36 = [(objc_class *)v70[4].isa auxiliaryOperations];
    v37 = [v36 count];
    isa = v70[9].isa;
    v38 = 0;
    if (isa)
    {
      v38 = v105;
    }

    v28 = &v12;
    buf = v107;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v107, v71, v66, v67, v55, v56, v57, v58, v59, v40, v41, v42, v43, v44, v46, v49, v51, v30, v32, v33, v34, v35, v37, v38 & 1);
    _os_log_impl(&dword_26AC94000, log, v64[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform an update of type Download Only with result: %d", buf, 0xE4u);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v31);
    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v41);
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

    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v65);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v91, obj);
    objc_storeStrong(&v102, obj);
  }

  objc_storeStrong(oslog, 0);
  if (v70[8].isa)
  {
    v22 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v22 selectDelegateCallbackQueue:*(v70[4].isa + 5)];
    block = &v78;
    v78 = MEMORY[0x277D85DD0];
    v79 = -1073741824;
    v80 = 0;
    v81 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_350;
    v82 = &unk_279CB9488;
    v25 = &v85;
    v85 = MEMORY[0x277D82BE0](v70[8].isa);
    v86 = v70[9].isa & 1;
    v87 = v105 & 1;
    v24 = (block + 32);
    v83 = MEMORY[0x277D82BE0](v70[5].isa);
    v23 = (block + 40);
    v84 = MEMORY[0x277D82BE0](v70[6].isa);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v22);
    v26 = 0;
    objc_storeStrong(v23, 0);
    objc_storeStrong(v24, v26);
    objc_storeStrong(v25, v26);
  }

  v15 = v70[4].isa;
  v13 = sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_;
  v14 = &v72;
  v72 = MEMORY[0x277D85DD0];
  v73 = -1073741824;
  v74 = 0;
  v75 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_353;
  v76 = &unk_279CB94B0;
  v18 = v77;
  v77[0] = MEMORY[0x277D82BE0](v70[4].isa);
  v17 = (v14 + 5);
  v77[1] = MEMORY[0x277D82BE0](v70[7].isa);
  v16 = (v14 + 6);
  v77[2] = MEMORY[0x277D82BE0](v70[5].isa);
  [(objc_class *)v15 executeOperationOnDelegate:v13 usingBlock:v14];
  v19 = 0;
  objc_storeStrong(v16, 0);
  objc_storeStrong(v17, v19);
  objc_storeStrong(v18, v19);
  *MEMORY[0x277D85DE8];
}

uint64_t __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_350(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 56))
  {
    v2 = *(a1 + 57);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), v2 & 1, *(a1 + 32), *(a1 + 40));
}

uint64_t __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_353(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didStartDownloadForDescriptor:*(a1 + 40) withDownload:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)downloadAndInstall:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](v22);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)v22 beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke(NSObject *a1, void *a2)
{
  v68 = a1;
  v67 = "[SUSettingsStatefulUIManager downloadAndInstall:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke";
  v101 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = v68;
  v66 = [(objc_class *)v68[4].isa log];
  oslog[0] = [v66 oslog];
  MEMORY[0x277D82BD8](v66);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v61 = type;
    v62 = SUSettingsUIStateToString([(objc_class *)v68[4].isa currentState]);
    v63 = MEMORY[0x277D82BE0](v62);
    v96 = v63;
    v64 = [(objc_class *)v68[4].isa currentState];
    v65 = [(objc_class *)v68[4].isa delegate];
    v94 = 0;
    v92 = 0;
    if (v65)
    {
      v95 = [(objc_class *)v68[4].isa delegate];
      v58 = 1;
      v94 = 1;
      v2 = objc_opt_class();
      v93 = NSStringFromClass(v2);
      v92 = 1;
      v59 = v93;
    }

    else
    {
      v59 = @"(null)";
    }

    v52 = v59;
    v53 = [(objc_class *)v68[4].isa delegate];
    v54 = [(objc_class *)v68[4].isa scanError];
    v55 = [(objc_class *)v68[4].isa preferredStatefulDescriptor];
    v56 = [(objc_class *)v68[4].isa alternateStatefulDescriptor];
    v57 = [(objc_class *)v68[4].isa currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (v57)
    {
      v91 = [(objc_class *)v68[4].isa currentDownload];
      v50 = 1;
      v90 = 1;
      v89 = [v91 descriptor];
      v88 = 1;
      v87 = [v89 humanReadableUpdateName];
      v86 = 1;
      v51 = v87;
    }

    else
    {
      v51 = @"(null)";
    }

    v37 = v51;
    v38 = [(objc_class *)v68[4].isa currentDownload];
    v3 = [(objc_class *)v68[4].isa performThirdPartyScan];
    v44 = "NO";
    v4 = "YES";
    v45 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v39 = v4;
    v5 = [(objc_class *)v68[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v45;
    if ((v5 & 1) == 0)
    {
      v6 = v44;
    }

    v40 = v6;
    v7 = [(objc_class *)v68[4].isa hidingPreferredDescriptor];
    v8 = v45;
    if ((v7 & 1) == 0)
    {
      v8 = v44;
    }

    v41 = v8;
    v42 = [*(v68[4].isa + 32) humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v85 = v43;
    v9 = [(objc_class *)v68[4].isa hidingAlternateDescriptor];
    v10 = v45;
    if ((v9 & 1) == 0)
    {
      v10 = v44;
    }

    v46 = v10;
    v47 = [*(v68[4].isa + 33) humanReadableUpdateName];
    v48 = MEMORY[0x277D82BE0](v47);
    v84 = v48;
    v49 = [(objc_class *)v68[4].isa enrolledBetaProgram];
    v82 = 0;
    if (v49)
    {
      v83 = [(objc_class *)v68[4].isa enrolledBetaProgram];
      v82 = 1;
      v36 = [v83 programID];
    }

    else
    {
      v36 = 0;
    }

    v27 = v36;
    v35 = [(objc_class *)v68[4].isa betaPrograms];
    v28 = [v35 count];
    v34 = [(objc_class *)v68[4].isa currentFullScanOperation];
    v33 = [(objc_class *)v68[4].isa currentRefreshScanOperation];
    v32 = [(objc_class *)v68[4].isa currentUpdateOperation];
    v31 = [(objc_class *)v68[4].isa auxiliaryOperations];
    v11 = [v31 count];
    isa = v68[5].isa;
    v29 = &v13;
    buf = v100;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v100, v67, v63, v64, v52, v53, v54, v55, v56, v37, v38, v39, v40, v41, v43, v46, v48, v36, v28, v34, v33, v32, v11, isa);
    _os_log_impl(&dword_26AC94000, log, v61[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to download and install (Update Now) the update: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v38);
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

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v62);
    obj = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, obj);
    objc_storeStrong(&v96, obj);
  }

  objc_storeStrong(oslog, 0);
  if (location[0])
  {
    v15 = *(v68[4].isa + 25);
    v17 = [(objc_class *)v68[5].isa descriptor];
    v16 = [(objc_class *)v68[4].isa createUpdateOperationOptions];
    v14 = &v69;
    v69 = MEMORY[0x277D85DD0];
    v70 = -1073741824;
    v71 = 0;
    v72 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2;
    v73 = &unk_279CB9500;
    v20 = v74;
    v74[0] = MEMORY[0x277D82BE0](v68[4].isa);
    v19 = (v14 + 6);
    v74[2] = MEMORY[0x277D82BE0](v68[6].isa);
    v18 = (v14 + 5);
    v74[1] = MEMORY[0x277D82BE0](v68[5].isa);
    [v15 downloadAndInstall:v17 withOptions:v16 completionHandler:v14];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v21 = 0;
    objc_storeStrong(v18, 0);
    objc_storeStrong(v19, v21);
    objc_storeStrong(v20, v21);
    v75 = 0;
  }

  else
  {
    if (v68[6].isa)
    {
      v24 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v24 selectDelegateCallbackQueue:*(v68[4].isa + 5)];
      block = &v76;
      v76 = MEMORY[0x277D85DD0];
      v77 = -1073741824;
      v78 = 0;
      v79 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_357;
      v80 = &unk_279CB9438;
      v25 = &v81;
      v81 = MEMORY[0x277D82BE0](v68[6].isa);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(v25, 0);
    }

    v75 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_357(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:?];
  (*(v2 + 16))(v2, 0, 0);
  return MEMORY[0x277D82BD8](v3);
}

void __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2(NSObject *a1, unsigned __int8 a2, id obj, void *a4)
{
  v77 = a1;
  obja = a4;
  v75 = "[SUSettingsStatefulUIManager downloadAndInstall:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v115 = *MEMORY[0x277D85DE8];
  v113 = a1;
  v112 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v110 = 0;
  objc_storeStrong(&v110, obja);
  oslog[1] = v77;
  v74 = [(objc_class *)v77[4].isa log];
  oslog[0] = [v74 oslog];
  MEMORY[0x277D82BD8](v74);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v69 = type;
    v70 = SUSettingsUIStateToString([(objc_class *)v77[4].isa currentState]);
    v71 = MEMORY[0x277D82BE0](v70);
    v107 = v71;
    v72 = [(objc_class *)v77[4].isa currentState];
    v73 = [(objc_class *)v77[4].isa delegate];
    v105 = 0;
    v103 = 0;
    if (v73)
    {
      v106 = [(objc_class *)v77[4].isa delegate];
      v66 = 1;
      v105 = 1;
      v4 = objc_opt_class();
      v104 = NSStringFromClass(v4);
      v103 = 1;
      v67 = v104;
    }

    else
    {
      v67 = @"(null)";
    }

    v60 = v67;
    v61 = [(objc_class *)v77[4].isa delegate];
    v62 = [(objc_class *)v77[4].isa scanError];
    v63 = [(objc_class *)v77[4].isa preferredStatefulDescriptor];
    v64 = [(objc_class *)v77[4].isa alternateStatefulDescriptor];
    v65 = [(objc_class *)v77[4].isa currentDownload];
    v101 = 0;
    v99 = 0;
    v97 = 0;
    if (v65)
    {
      v102 = [(objc_class *)v77[4].isa currentDownload];
      v58 = 1;
      v101 = 1;
      v100 = [v102 descriptor];
      v99 = 1;
      v98 = [v100 humanReadableUpdateName];
      v97 = 1;
      v59 = v98;
    }

    else
    {
      v59 = @"(null)";
    }

    v45 = v59;
    v46 = [(objc_class *)v77[4].isa currentDownload];
    v5 = [(objc_class *)v77[4].isa performThirdPartyScan];
    v52 = "NO";
    v6 = "YES";
    v53 = "YES";
    if ((v5 & 1) == 0)
    {
      v6 = "NO";
    }

    v47 = v6;
    v7 = [(objc_class *)v77[4].isa isTargetedUpdateScheduledForAutoInstall];
    v8 = v53;
    if ((v7 & 1) == 0)
    {
      v8 = v52;
    }

    v48 = v8;
    v9 = [(objc_class *)v77[4].isa hidingPreferredDescriptor];
    v10 = v53;
    if ((v9 & 1) == 0)
    {
      v10 = v52;
    }

    v49 = v10;
    v50 = [*(v77[4].isa + 32) humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](v50);
    v96 = v51;
    v11 = [(objc_class *)v77[4].isa hidingAlternateDescriptor];
    v12 = v53;
    if ((v11 & 1) == 0)
    {
      v12 = v52;
    }

    v54 = v12;
    v55 = [*(v77[4].isa + 33) humanReadableUpdateName];
    v56 = MEMORY[0x277D82BE0](v55);
    v95 = v56;
    v57 = [(objc_class *)v77[4].isa enrolledBetaProgram];
    v93 = 0;
    if (v57)
    {
      v94 = [(objc_class *)v77[4].isa enrolledBetaProgram];
      v93 = 1;
      v44 = [v94 programID];
    }

    else
    {
      v44 = 0;
    }

    v35 = v44;
    v43 = [(objc_class *)v77[4].isa betaPrograms];
    v36 = [v43 count];
    v42 = [(objc_class *)v77[4].isa currentFullScanOperation];
    v41 = [(objc_class *)v77[4].isa currentRefreshScanOperation];
    v40 = [(objc_class *)v77[4].isa currentUpdateOperation];
    v39 = [(objc_class *)v77[4].isa auxiliaryOperations];
    v13 = [v39 count];
    v37 = &v14;
    buf = v114;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_8_66(v114, v75, v71, v72, v60, v61, v62, v63, v64, v45, v46, v47, v48, v49, v51, v54, v56, v44, v36, v42, v41, v40, v13, v112 & 1, v110);
    _os_log_impl(&dword_26AC94000, log, v69[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload and Install (Update Now) operation completed with result: %d; error: %{public}@", buf, 0xEEu);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v46);
    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v70);
    v34 = 0;
    objc_storeStrong(&v95, 0);
    objc_storeStrong(&v96, v34);
    objc_storeStrong(&v107, v34);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(v77[4].isa + 25, 0);
  if (v112)
  {
    objc_storeStrong(v77[4].isa + 13, location);
    isa = v77[4].isa;
    v16 = v112;
    v17 = location;
    v19 = v110;
    v20 = &v78;
    v78 = MEMORY[0x277D85DD0];
    v79 = -1073741824;
    v18 = 0;
    v80 = 0;
    v81 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_359;
    v82 = &unk_279CB94D8;
    v26 = v83;
    v83[0] = MEMORY[0x277D82BE0](v77[4].isa);
    v84 = v112 & 1;
    v25 = v20 + 8;
    v83[4] = MEMORY[0x277D82BE0](v77[6].isa);
    v24 = v20 + 5;
    v83[1] = MEMORY[0x277D82BE0](location);
    v23 = v20 + 6;
    v83[2] = MEMORY[0x277D82BE0](v110);
    v22 = v20 + 7;
    v83[3] = MEMORY[0x277D82BE0](v77[5].isa);
    v27 = 0;
    [objc_class performPostUpdateOperationRefresh:"performPostUpdateOperationRefresh:withDownload:didScheduledUpdate:autoInstallOperation:error:completionHandler:" withDownload:v16 & 1 didScheduledUpdate:v17 autoInstallOperation:v18 & 1 error:? completionHandler:?];
    objc_storeStrong(v22, v27);
    objc_storeStrong(v23, v27);
    objc_storeStrong(v24, v27);
    objc_storeStrong(v25, v27);
    objc_storeStrong(v26, v27);
    v85 = 0;
  }

  else
  {
    if (v77[6].isa)
    {
      v30 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v30 selectDelegateCallbackQueue:*(v77[4].isa + 5)];
      block = &v86;
      v86 = MEMORY[0x277D85DD0];
      v87 = -1073741824;
      v88 = 0;
      v89 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_358;
      v90 = &unk_279CB9460;
      v32 = &v92;
      v92 = MEMORY[0x277D82BE0](v77[6].isa);
      v31 = (block + 32);
      v91 = MEMORY[0x277D82BE0](v110);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v30);
      v33 = 0;
      objc_storeStrong(v31, 0);
      objc_storeStrong(v32, v33);
    }

    v85 = 1;
  }

  v15 = 0;
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&location, v15);
  *MEMORY[0x277D85DE8];
}

void __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_359(NSObject *a1, unsigned __int8 a2)
{
  v70 = a1;
  v71 = "[SUSettingsStatefulUIManager downloadAndInstall:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v108 = *MEMORY[0x277D85DE8];
  v106 = a1;
  v105 = a2;
  oslog[1] = a1;
  v69 = [(objc_class *)a1[4].isa log];
  oslog[0] = [v69 oslog];
  MEMORY[0x277D82BD8](v69);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v64 = type;
    v65 = SUSettingsUIStateToString([(objc_class *)v70[4].isa currentState]);
    v66 = MEMORY[0x277D82BE0](v65);
    v102 = v66;
    v67 = [(objc_class *)v70[4].isa currentState];
    v68 = [(objc_class *)v70[4].isa delegate];
    v100 = 0;
    v98 = 0;
    if (v68)
    {
      v101 = [(objc_class *)v70[4].isa delegate];
      v61 = 1;
      v100 = 1;
      v2 = objc_opt_class();
      v99 = NSStringFromClass(v2);
      v98 = 1;
      v62 = v99;
    }

    else
    {
      v62 = @"(null)";
    }

    v55 = v62;
    v56 = [(objc_class *)v70[4].isa delegate];
    v57 = [(objc_class *)v70[4].isa scanError];
    v58 = [(objc_class *)v70[4].isa preferredStatefulDescriptor];
    v59 = [(objc_class *)v70[4].isa alternateStatefulDescriptor];
    v60 = [(objc_class *)v70[4].isa currentDownload];
    v96 = 0;
    v94 = 0;
    v92 = 0;
    if (v60)
    {
      v97 = [(objc_class *)v70[4].isa currentDownload];
      v53 = 1;
      v96 = 1;
      v95 = [v97 descriptor];
      v94 = 1;
      v93 = [v95 humanReadableUpdateName];
      v92 = 1;
      v54 = v93;
    }

    else
    {
      v54 = @"(null)";
    }

    v40 = v54;
    v41 = [(objc_class *)v70[4].isa currentDownload];
    v3 = [(objc_class *)v70[4].isa performThirdPartyScan];
    v47 = "NO";
    v4 = "YES";
    v48 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v42 = v4;
    v5 = [(objc_class *)v70[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v48;
    if ((v5 & 1) == 0)
    {
      v6 = v47;
    }

    v43 = v6;
    v7 = [(objc_class *)v70[4].isa hidingPreferredDescriptor];
    v8 = v48;
    if ((v7 & 1) == 0)
    {
      v8 = v47;
    }

    v44 = v8;
    v45 = [*(v70[4].isa + 32) humanReadableUpdateName];
    v46 = MEMORY[0x277D82BE0](v45);
    v91 = v46;
    v9 = [(objc_class *)v70[4].isa hidingAlternateDescriptor];
    v10 = v48;
    if ((v9 & 1) == 0)
    {
      v10 = v47;
    }

    v49 = v10;
    v50 = [*(v70[4].isa + 33) humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](v50);
    location = v51;
    v52 = [(objc_class *)v70[4].isa enrolledBetaProgram];
    v88 = 0;
    if (v52)
    {
      v89 = [(objc_class *)v70[4].isa enrolledBetaProgram];
      v88 = 1;
      v39 = [v89 programID];
    }

    else
    {
      v39 = 0;
    }

    v30 = v39;
    v31 = [(objc_class *)v70[4].isa betaPrograms];
    v32 = [v31 count];
    v33 = [(objc_class *)v70[4].isa currentFullScanOperation];
    v34 = [(objc_class *)v70[4].isa currentRefreshScanOperation];
    v35 = [(objc_class *)v70[4].isa currentUpdateOperation];
    v36 = [(objc_class *)v70[4].isa auxiliaryOperations];
    v37 = [v36 count];
    isa = v70[9].isa;
    v38 = 0;
    if (isa)
    {
      v38 = v105;
    }

    v28 = &v12;
    buf = v107;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v107, v71, v66, v67, v55, v56, v57, v58, v59, v40, v41, v42, v43, v44, v46, v49, v51, v30, v32, v33, v34, v35, v37, v38 & 1);
    _os_log_impl(&dword_26AC94000, log, v64[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform an update of type Update Now with result: %d", buf, 0xE4u);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v31);
    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v41);
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

    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v65);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v91, obj);
    objc_storeStrong(&v102, obj);
  }

  objc_storeStrong(oslog, 0);
  if (v70[8].isa)
  {
    v22 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v22 selectDelegateCallbackQueue:*(v70[4].isa + 5)];
    block = &v78;
    v78 = MEMORY[0x277D85DD0];
    v79 = -1073741824;
    v80 = 0;
    v81 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_360;
    v82 = &unk_279CB9488;
    v25 = &v85;
    v85 = MEMORY[0x277D82BE0](v70[8].isa);
    v86 = v70[9].isa & 1;
    v87 = v105 & 1;
    v24 = (block + 32);
    v83 = MEMORY[0x277D82BE0](v70[5].isa);
    v23 = (block + 40);
    v84 = MEMORY[0x277D82BE0](v70[6].isa);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v22);
    v26 = 0;
    objc_storeStrong(v23, 0);
    objc_storeStrong(v24, v26);
    objc_storeStrong(v25, v26);
  }

  v15 = v70[4].isa;
  v13 = sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_;
  v14 = &v72;
  v72 = MEMORY[0x277D85DD0];
  v73 = -1073741824;
  v74 = 0;
  v75 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_361;
  v76 = &unk_279CB94B0;
  v18 = v77;
  v77[0] = MEMORY[0x277D82BE0](v70[4].isa);
  v17 = (v14 + 5);
  v77[1] = MEMORY[0x277D82BE0](v70[7].isa);
  v16 = (v14 + 6);
  v77[2] = MEMORY[0x277D82BE0](v70[5].isa);
  [(objc_class *)v15 executeOperationOnDelegate:v13 usingBlock:v14];
  v19 = 0;
  objc_storeStrong(v16, 0);
  objc_storeStrong(v17, v19);
  objc_storeStrong(v18, v19);
  *MEMORY[0x277D85DE8];
}

uint64_t __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_360(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 56))
  {
    v2 = *(a1 + 57);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), v2 & 1, *(a1 + 32), *(a1 + 40));
}

uint64_t __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_361(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didStartDownloadForDescriptor:*(a1 + 40) withDownload:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)downloadAndScheduleUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](v22);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)v22 beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke(NSObject *a1, void *a2)
{
  v68 = a1;
  v67 = "[SUSettingsStatefulUIManager downloadAndScheduleUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke";
  v101 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = v68;
  v66 = [(objc_class *)v68[4].isa log];
  oslog[0] = [v66 oslog];
  MEMORY[0x277D82BD8](v66);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v61 = type;
    v62 = SUSettingsUIStateToString([(objc_class *)v68[4].isa currentState]);
    v63 = MEMORY[0x277D82BE0](v62);
    v96 = v63;
    v64 = [(objc_class *)v68[4].isa currentState];
    v65 = [(objc_class *)v68[4].isa delegate];
    v94 = 0;
    v92 = 0;
    if (v65)
    {
      v95 = [(objc_class *)v68[4].isa delegate];
      v58 = 1;
      v94 = 1;
      v2 = objc_opt_class();
      v93 = NSStringFromClass(v2);
      v92 = 1;
      v59 = v93;
    }

    else
    {
      v59 = @"(null)";
    }

    v52 = v59;
    v53 = [(objc_class *)v68[4].isa delegate];
    v54 = [(objc_class *)v68[4].isa scanError];
    v55 = [(objc_class *)v68[4].isa preferredStatefulDescriptor];
    v56 = [(objc_class *)v68[4].isa alternateStatefulDescriptor];
    v57 = [(objc_class *)v68[4].isa currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (v57)
    {
      v91 = [(objc_class *)v68[4].isa currentDownload];
      v50 = 1;
      v90 = 1;
      v89 = [v91 descriptor];
      v88 = 1;
      v87 = [v89 humanReadableUpdateName];
      v86 = 1;
      v51 = v87;
    }

    else
    {
      v51 = @"(null)";
    }

    v37 = v51;
    v38 = [(objc_class *)v68[4].isa currentDownload];
    v3 = [(objc_class *)v68[4].isa performThirdPartyScan];
    v44 = "NO";
    v4 = "YES";
    v45 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v39 = v4;
    v5 = [(objc_class *)v68[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v45;
    if ((v5 & 1) == 0)
    {
      v6 = v44;
    }

    v40 = v6;
    v7 = [(objc_class *)v68[4].isa hidingPreferredDescriptor];
    v8 = v45;
    if ((v7 & 1) == 0)
    {
      v8 = v44;
    }

    v41 = v8;
    v42 = [*(v68[4].isa + 32) humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v85 = v43;
    v9 = [(objc_class *)v68[4].isa hidingAlternateDescriptor];
    v10 = v45;
    if ((v9 & 1) == 0)
    {
      v10 = v44;
    }

    v46 = v10;
    v47 = [*(v68[4].isa + 33) humanReadableUpdateName];
    v48 = MEMORY[0x277D82BE0](v47);
    v84 = v48;
    v49 = [(objc_class *)v68[4].isa enrolledBetaProgram];
    v82 = 0;
    if (v49)
    {
      v83 = [(objc_class *)v68[4].isa enrolledBetaProgram];
      v82 = 1;
      v36 = [v83 programID];
    }

    else
    {
      v36 = 0;
    }

    v27 = v36;
    v35 = [(objc_class *)v68[4].isa betaPrograms];
    v28 = [v35 count];
    v34 = [(objc_class *)v68[4].isa currentFullScanOperation];
    v33 = [(objc_class *)v68[4].isa currentRefreshScanOperation];
    v32 = [(objc_class *)v68[4].isa currentUpdateOperation];
    v31 = [(objc_class *)v68[4].isa auxiliaryOperations];
    v11 = [v31 count];
    isa = v68[5].isa;
    v29 = &v13;
    buf = v100;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v100, v67, v63, v64, v52, v53, v54, v55, v56, v37, v38, v39, v40, v41, v43, v46, v48, v36, v28, v34, v33, v32, v11, isa);
    _os_log_impl(&dword_26AC94000, log, v61[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to download and schedule (Update Tonight) the update: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v38);
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

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v62);
    obj = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, obj);
    objc_storeStrong(&v96, obj);
  }

  objc_storeStrong(oslog, 0);
  if (location[0])
  {
    v15 = *(v68[4].isa + 25);
    v17 = [(objc_class *)v68[5].isa descriptor];
    v16 = [(objc_class *)v68[4].isa createUpdateOperationOptions];
    v14 = &v69;
    v69 = MEMORY[0x277D85DD0];
    v70 = -1073741824;
    v71 = 0;
    v72 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2;
    v73 = &unk_279CB95C8;
    v20 = v74;
    v74[0] = MEMORY[0x277D82BE0](v68[4].isa);
    v19 = (v14 + 6);
    v74[2] = MEMORY[0x277D82BE0](v68[6].isa);
    v18 = (v14 + 5);
    v74[1] = MEMORY[0x277D82BE0](v68[5].isa);
    [v15 downloadAndScheduleUpdate:v17 forInstallationTonightWithOptions:v16 completionHandler:v14];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v21 = 0;
    objc_storeStrong(v18, 0);
    objc_storeStrong(v19, v21);
    objc_storeStrong(v20, v21);
    v75 = 0;
  }

  else
  {
    if (v68[6].isa)
    {
      v24 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v24 selectDelegateCallbackQueue:*(v68[4].isa + 5)];
      block = &v76;
      v76 = MEMORY[0x277D85DD0];
      v77 = -1073741824;
      v78 = 0;
      v79 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_362;
      v80 = &unk_279CB9438;
      v25 = &v81;
      v81 = MEMORY[0x277D82BE0](v68[6].isa);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(v25, 0);
    }

    v75 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_362(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:?];
  (*(v2 + 16))(v2, 0, 0, 0);
  return MEMORY[0x277D82BD8](v3);
}

void __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2(NSObject *a1, unsigned __int8 a2, id obj, int a4, void *a5, void *a6)
{
  v86 = a1;
  v83 = a4;
  obja = a5;
  v85 = a6;
  v82 = "[SUSettingsStatefulUIManager downloadAndScheduleUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v129 = *MEMORY[0x277D85DE8];
  v127 = a1;
  v126 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v124 = v83;
  v123 = 0;
  objc_storeStrong(&v123, obja);
  v122 = 0;
  objc_storeStrong(&v122, v85);
  oslog[1] = v86;
  v81 = [(objc_class *)v86[4].isa log];
  oslog[0] = [v81 oslog];
  MEMORY[0x277D82BD8](v81);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v76 = type;
    v77 = SUSettingsUIStateToString([(objc_class *)v86[4].isa currentState]);
    v78 = MEMORY[0x277D82BE0](v77);
    v119 = v78;
    v79 = [(objc_class *)v86[4].isa currentState];
    v80 = [(objc_class *)v86[4].isa delegate];
    v117 = 0;
    v115 = 0;
    if (v80)
    {
      v118 = [(objc_class *)v86[4].isa delegate];
      v73 = 1;
      v117 = 1;
      v6 = objc_opt_class();
      v116 = NSStringFromClass(v6);
      v115 = 1;
      v74 = v116;
    }

    else
    {
      v74 = @"(null)";
    }

    v67 = v74;
    v68 = [(objc_class *)v86[4].isa delegate];
    v69 = [(objc_class *)v86[4].isa scanError];
    v70 = [(objc_class *)v86[4].isa preferredStatefulDescriptor];
    v71 = [(objc_class *)v86[4].isa alternateStatefulDescriptor];
    v72 = [(objc_class *)v86[4].isa currentDownload];
    v113 = 0;
    v111 = 0;
    v109 = 0;
    if (v72)
    {
      v114 = [(objc_class *)v86[4].isa currentDownload];
      v65 = 1;
      v113 = 1;
      v112 = [v114 descriptor];
      v111 = 1;
      v110 = [v112 humanReadableUpdateName];
      v109 = 1;
      v66 = v110;
    }

    else
    {
      v66 = @"(null)";
    }

    v52 = v66;
    v53 = [(objc_class *)v86[4].isa currentDownload];
    v7 = [(objc_class *)v86[4].isa performThirdPartyScan];
    v59 = "NO";
    v8 = "YES";
    v60 = "YES";
    if ((v7 & 1) == 0)
    {
      v8 = "NO";
    }

    v54 = v8;
    v9 = [(objc_class *)v86[4].isa isTargetedUpdateScheduledForAutoInstall];
    v10 = v60;
    if ((v9 & 1) == 0)
    {
      v10 = v59;
    }

    v55 = v10;
    v11 = [(objc_class *)v86[4].isa hidingPreferredDescriptor];
    v12 = v60;
    if ((v11 & 1) == 0)
    {
      v12 = v59;
    }

    v56 = v12;
    v57 = [*(v86[4].isa + 32) humanReadableUpdateName];
    v58 = MEMORY[0x277D82BE0](v57);
    v108 = v58;
    v13 = [(objc_class *)v86[4].isa hidingAlternateDescriptor];
    v14 = v60;
    if ((v13 & 1) == 0)
    {
      v14 = v59;
    }

    v61 = v14;
    v62 = [*(v86[4].isa + 33) humanReadableUpdateName];
    v63 = MEMORY[0x277D82BE0](v62);
    v107 = v63;
    v64 = [(objc_class *)v86[4].isa enrolledBetaProgram];
    v105 = 0;
    if (v64)
    {
      v106 = [(objc_class *)v86[4].isa enrolledBetaProgram];
      v105 = 1;
      v51 = [v106 programID];
    }

    else
    {
      v51 = 0;
    }

    v42 = v51;
    v50 = [(objc_class *)v86[4].isa betaPrograms];
    v43 = [v50 count];
    v49 = [(objc_class *)v86[4].isa currentFullScanOperation];
    v48 = [(objc_class *)v86[4].isa currentRefreshScanOperation];
    v47 = [(objc_class *)v86[4].isa currentUpdateOperation];
    v46 = [(objc_class *)v86[4].isa auxiliaryOperations];
    v15 = [v46 count];
    v44 = &v17;
    buf = v128;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_4_0_8_66(v128, v82, v78, v79, v67, v68, v69, v70, v71, v52, v53, v54, v55, v56, v58, v61, v63, v51, v43, v49, v48, v47, v15, v126 & 1, v124 & 1, v122);
    _os_log_impl(&dword_26AC94000, log, v76[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUpdate and Schedule (Update Tonight) operation completed with download result: %d; schedule success: %d; error: %{public}@", buf, 0xF4u);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v53);
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

    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v68);
    if (v115)
    {
      MEMORY[0x277D82BD8](v116);
    }

    if (v117)
    {
      MEMORY[0x277D82BD8](v118);
    }

    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v77);
    v41 = 0;
    objc_storeStrong(&v107, 0);
    objc_storeStrong(&v108, v41);
    objc_storeStrong(&v119, v41);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(v86[4].isa + 25, 0);
  if (v126)
  {
    objc_storeStrong(v86[4].isa + 13, location);
    objc_storeStrong(v86[4].isa + 31, v123);
    v16 = v86;
    *(v86[4].isa + 14) = v124 & 1;
    if (*(v16[4].isa + 31))
    {
      [*(v86[4].isa + 31) setDelegate:v86[4].isa];
    }

    isa = v86[4].isa;
    v20 = v126;
    v21 = location;
    v22 = v124;
    v23 = v123;
    v24 = v122;
    v25 = &v87;
    v87 = MEMORY[0x277D85DD0];
    v88 = -1073741824;
    v89 = 0;
    v90 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_364;
    v91 = &unk_279CB95A0;
    v32 = v92;
    v92[0] = MEMORY[0x277D82BE0](v86[4].isa);
    v19 = 1;
    v93 = v126 & 1;
    v31 = v25 + 9;
    v92[5] = MEMORY[0x277D82BE0](v86[6].isa);
    v30 = v25 + 5;
    v92[1] = MEMORY[0x277D82BE0](location);
    v94 = v124 & v19;
    v29 = v25 + 6;
    v92[2] = MEMORY[0x277D82BE0](v123);
    v28 = v25 + 7;
    v92[3] = MEMORY[0x277D82BE0](v122);
    v27 = v25 + 8;
    v92[4] = MEMORY[0x277D82BE0](v86[5].isa);
    [(objc_class *)isa performPostUpdateOperationRefresh:v20 & 1 withDownload:v21 didScheduledUpdate:v22 & 1 autoInstallOperation:v23 error:v24 completionHandler:v25];
    v33 = 0;
    objc_storeStrong(v27, 0);
    objc_storeStrong(v28, v33);
    objc_storeStrong(v29, v33);
    objc_storeStrong(v30, v33);
    objc_storeStrong(v31, v33);
    objc_storeStrong(v32, v33);
    v95 = 0;
  }

  else
  {
    if (v86[6].isa)
    {
      v36 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v36 selectDelegateCallbackQueue:*(v86[4].isa + 5)];
      block = &v96;
      v96 = MEMORY[0x277D85DD0];
      v97 = -1073741824;
      v98 = 0;
      v99 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_363;
      v100 = &unk_279CB9550;
      v39 = &v103;
      v103 = MEMORY[0x277D82BE0](v86[6].isa);
      v104 = v124 & 1;
      v38 = (block + 32);
      v101 = MEMORY[0x277D82BE0](v123);
      v37 = (block + 40);
      v102 = MEMORY[0x277D82BE0](v122);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v36);
      v40 = 0;
      objc_storeStrong(v37, 0);
      objc_storeStrong(v38, v40);
      objc_storeStrong(v39, v40);
    }

    v95 = 1;
  }

  v18 = 0;
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v123, v18);
  objc_storeStrong(&location, v18);
  *MEMORY[0x277D85DE8];
}

uint64_t __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_363(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
}

void __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_364(NSObject *a1, unsigned __int8 a2)
{
  v71 = a1;
  v72 = "[SUSettingsStatefulUIManager downloadAndScheduleUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v111 = *MEMORY[0x277D85DE8];
  v109 = a1;
  v108 = a2;
  oslog[1] = a1;
  v70 = [(objc_class *)a1[4].isa log];
  oslog[0] = [v70 oslog];
  MEMORY[0x277D82BD8](v70);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v65 = type;
    v66 = SUSettingsUIStateToString([(objc_class *)v71[4].isa currentState]);
    v67 = MEMORY[0x277D82BE0](v66);
    v105 = v67;
    v68 = [(objc_class *)v71[4].isa currentState];
    v69 = [(objc_class *)v71[4].isa delegate];
    v103 = 0;
    v101 = 0;
    if (v69)
    {
      v104 = [(objc_class *)v71[4].isa delegate];
      v62 = 1;
      v103 = 1;
      v2 = objc_opt_class();
      v102 = NSStringFromClass(v2);
      v101 = 1;
      v63 = v102;
    }

    else
    {
      v63 = @"(null)";
    }

    v56 = v63;
    v57 = [(objc_class *)v71[4].isa delegate];
    v58 = [(objc_class *)v71[4].isa scanError];
    v59 = [(objc_class *)v71[4].isa preferredStatefulDescriptor];
    v60 = [(objc_class *)v71[4].isa alternateStatefulDescriptor];
    v61 = [(objc_class *)v71[4].isa currentDownload];
    v99 = 0;
    v97 = 0;
    v95 = 0;
    if (v61)
    {
      v100 = [(objc_class *)v71[4].isa currentDownload];
      v54 = 1;
      v99 = 1;
      v98 = [v100 descriptor];
      v97 = 1;
      v96 = [v98 humanReadableUpdateName];
      v95 = 1;
      v55 = v96;
    }

    else
    {
      v55 = @"(null)";
    }

    v41 = v55;
    v42 = [(objc_class *)v71[4].isa currentDownload];
    v3 = [(objc_class *)v71[4].isa performThirdPartyScan];
    v48 = "NO";
    v4 = "YES";
    v49 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v43 = v4;
    v5 = [(objc_class *)v71[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v49;
    if ((v5 & 1) == 0)
    {
      v6 = v48;
    }

    v44 = v6;
    v7 = [(objc_class *)v71[4].isa hidingPreferredDescriptor];
    v8 = v49;
    if ((v7 & 1) == 0)
    {
      v8 = v48;
    }

    v45 = v8;
    v46 = [*(v71[4].isa + 32) humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](v46);
    v94 = v47;
    v9 = [(objc_class *)v71[4].isa hidingAlternateDescriptor];
    v10 = v49;
    if ((v9 & 1) == 0)
    {
      v10 = v48;
    }

    v50 = v10;
    v51 = [*(v71[4].isa + 33) humanReadableUpdateName];
    v52 = MEMORY[0x277D82BE0](v51);
    location = v52;
    v53 = [(objc_class *)v71[4].isa enrolledBetaProgram];
    v91 = 0;
    if (v53)
    {
      v92 = [(objc_class *)v71[4].isa enrolledBetaProgram];
      v91 = 1;
      v40 = [v92 programID];
    }

    else
    {
      v40 = 0;
    }

    v31 = v40;
    v32 = [(objc_class *)v71[4].isa betaPrograms];
    v33 = [v32 count];
    v34 = [(objc_class *)v71[4].isa currentFullScanOperation];
    v35 = [(objc_class *)v71[4].isa currentRefreshScanOperation];
    v36 = [(objc_class *)v71[4].isa currentUpdateOperation];
    v37 = [(objc_class *)v71[4].isa auxiliaryOperations];
    v38 = [v37 count];
    isa = v71[10].isa;
    v39 = 0;
    if (isa)
    {
      v39 = v108;
    }

    v29 = &v12;
    buf = v110;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v110, v72, v67, v68, v56, v57, v58, v59, v60, v41, v42, v43, v44, v45, v47, v50, v52, v31, v33, v34, v35, v36, v38, v39 & 1);
    _os_log_impl(&dword_26AC94000, log, v65[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform an update of type Update Tonight with result: %d", buf, 0xE4u);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v32);
    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v42);
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

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v66);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v94, obj);
    objc_storeStrong(&v105, obj);
  }

  objc_storeStrong(oslog, 0);
  if (v71[9].isa)
  {
    v22 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v22 selectDelegateCallbackQueue:*(v71[4].isa + 5)];
    block = &v79;
    v79 = MEMORY[0x277D85DD0];
    v80 = -1073741824;
    v81 = 0;
    v82 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_365;
    v83 = &unk_279CB9578;
    v26 = &v87;
    v87 = MEMORY[0x277D82BE0](v71[9].isa);
    v88 = v71[10].isa & 1;
    v89 = v108 & 1;
    v25 = (block + 32);
    v84 = MEMORY[0x277D82BE0](v71[5].isa);
    v90 = BYTE1(v71[10].isa) & 1;
    v24 = (block + 40);
    v85 = MEMORY[0x277D82BE0](v71[6].isa);
    v23 = (block + 48);
    v86 = MEMORY[0x277D82BE0](v71[7].isa);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v22);
    v27 = 0;
    objc_storeStrong(v23, 0);
    objc_storeStrong(v24, v27);
    objc_storeStrong(v25, v27);
    objc_storeStrong(v26, v27);
  }

  v15 = v71[4].isa;
  v13 = sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_;
  v14 = &v73;
  v73 = MEMORY[0x277D85DD0];
  v74 = -1073741824;
  v75 = 0;
  v76 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_366;
  v77 = &unk_279CB94B0;
  v18 = v78;
  v78[0] = MEMORY[0x277D82BE0](v71[4].isa);
  v17 = (v14 + 5);
  v78[1] = MEMORY[0x277D82BE0](v71[8].isa);
  v16 = (v14 + 6);
  v78[2] = MEMORY[0x277D82BE0](v71[5].isa);
  [(objc_class *)v15 executeOperationOnDelegate:v13 usingBlock:v14];
  v19 = 0;
  objc_storeStrong(v16, 0);
  objc_storeStrong(v17, v19);
  objc_storeStrong(v18, v19);
  *MEMORY[0x277D85DE8];
}

uint64_t __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_365(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 64))
  {
    v2 = *(a1 + 65);
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), v2 & 1, *(a1 + 32), *(a1 + 66) & 1, *(a1 + 40), *(a1 + 48));
}

uint64_t __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_366(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didStartDownloadForDescriptor:*(a1 + 40) withDownload:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)installUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](v22);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)v22 beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke(NSObject *a1, void *a2)
{
  v68 = a1;
  v67 = "[SUSettingsStatefulUIManager installUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke";
  v101 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = v68;
  v66 = [(objc_class *)v68[4].isa log];
  oslog[0] = [v66 oslog];
  MEMORY[0x277D82BD8](v66);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v61 = type;
    v62 = SUSettingsUIStateToString([(objc_class *)v68[4].isa currentState]);
    v63 = MEMORY[0x277D82BE0](v62);
    v96 = v63;
    v64 = [(objc_class *)v68[4].isa currentState];
    v65 = [(objc_class *)v68[4].isa delegate];
    v94 = 0;
    v92 = 0;
    if (v65)
    {
      v95 = [(objc_class *)v68[4].isa delegate];
      v58 = 1;
      v94 = 1;
      v2 = objc_opt_class();
      v93 = NSStringFromClass(v2);
      v92 = 1;
      v59 = v93;
    }

    else
    {
      v59 = @"(null)";
    }

    v52 = v59;
    v53 = [(objc_class *)v68[4].isa delegate];
    v54 = [(objc_class *)v68[4].isa scanError];
    v55 = [(objc_class *)v68[4].isa preferredStatefulDescriptor];
    v56 = [(objc_class *)v68[4].isa alternateStatefulDescriptor];
    v57 = [(objc_class *)v68[4].isa currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (v57)
    {
      v91 = [(objc_class *)v68[4].isa currentDownload];
      v50 = 1;
      v90 = 1;
      v89 = [v91 descriptor];
      v88 = 1;
      v87 = [v89 humanReadableUpdateName];
      v86 = 1;
      v51 = v87;
    }

    else
    {
      v51 = @"(null)";
    }

    v37 = v51;
    v38 = [(objc_class *)v68[4].isa currentDownload];
    v3 = [(objc_class *)v68[4].isa performThirdPartyScan];
    v44 = "NO";
    v4 = "YES";
    v45 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v39 = v4;
    v5 = [(objc_class *)v68[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v45;
    if ((v5 & 1) == 0)
    {
      v6 = v44;
    }

    v40 = v6;
    v7 = [(objc_class *)v68[4].isa hidingPreferredDescriptor];
    v8 = v45;
    if ((v7 & 1) == 0)
    {
      v8 = v44;
    }

    v41 = v8;
    v42 = [*(v68[4].isa + 32) humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v85 = v43;
    v9 = [(objc_class *)v68[4].isa hidingAlternateDescriptor];
    v10 = v45;
    if ((v9 & 1) == 0)
    {
      v10 = v44;
    }

    v46 = v10;
    v47 = [*(v68[4].isa + 33) humanReadableUpdateName];
    v48 = MEMORY[0x277D82BE0](v47);
    v84 = v48;
    v49 = [(objc_class *)v68[4].isa enrolledBetaProgram];
    v82 = 0;
    if (v49)
    {
      v83 = [(objc_class *)v68[4].isa enrolledBetaProgram];
      v82 = 1;
      v36 = [v83 programID];
    }

    else
    {
      v36 = 0;
    }

    v27 = v36;
    v35 = [(objc_class *)v68[4].isa betaPrograms];
    v28 = [v35 count];
    v34 = [(objc_class *)v68[4].isa currentFullScanOperation];
    v33 = [(objc_class *)v68[4].isa currentRefreshScanOperation];
    v32 = [(objc_class *)v68[4].isa currentUpdateOperation];
    v31 = [(objc_class *)v68[4].isa auxiliaryOperations];
    v11 = [v31 count];
    isa = v68[5].isa;
    v29 = &v13;
    buf = v100;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v100, v67, v63, v64, v52, v53, v54, v55, v56, v37, v38, v39, v40, v41, v43, v46, v48, v36, v28, v34, v33, v32, v11, isa);
    _os_log_impl(&dword_26AC94000, log, v61[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to install (Install Now) the update: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v38);
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

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v62);
    obj = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, obj);
    objc_storeStrong(&v96, obj);
  }

  objc_storeStrong(oslog, 0);
  if (location[0])
  {
    v15 = *(v68[4].isa + 25);
    v17 = [(objc_class *)v68[5].isa descriptor];
    v16 = [(objc_class *)v68[4].isa createUpdateOperationOptions];
    v14 = &v69;
    v69 = MEMORY[0x277D85DD0];
    v70 = -1073741824;
    v71 = 0;
    v72 = __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2;
    v73 = &unk_279CB9618;
    v20 = v74;
    v74[0] = MEMORY[0x277D82BE0](v68[4].isa);
    v19 = (v14 + 6);
    v74[2] = MEMORY[0x277D82BE0](v68[6].isa);
    v18 = (v14 + 5);
    v74[1] = MEMORY[0x277D82BE0](v68[5].isa);
    [v15 installUpdate:v17 withOptions:v16 completionHandler:v14];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v21 = 0;
    objc_storeStrong(v18, 0);
    objc_storeStrong(v19, v21);
    objc_storeStrong(v20, v21);
    v75 = 0;
  }

  else
  {
    if (v68[6].isa)
    {
      v24 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v24 selectDelegateCallbackQueue:*(v68[4].isa + 5)];
      block = &v76;
      v76 = MEMORY[0x277D85DD0];
      v77 = -1073741824;
      v78 = 0;
      v79 = __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_368;
      v80 = &unk_279CB9438;
      v25 = &v81;
      v81 = MEMORY[0x277D82BE0](v68[6].isa);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(v25, 0);
    }

    v75 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_368(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
  (*(v2 + 16))(v2, 0);
  return MEMORY[0x277D82BD8](v3);
}

void __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2(NSObject *a1, char a2, id obj)
{
  v75 = a1;
  v74 = "[SUSettingsStatefulUIManager installUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v114 = *MEMORY[0x277D85DE8];
  v112 = a1;
  v111 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = v75;
  v73 = [(objc_class *)v75[4].isa log];
  oslog[0] = [v73 oslog];
  MEMORY[0x277D82BD8](v73);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v68 = type;
    v69 = SUSettingsUIStateToString([(objc_class *)v75[4].isa currentState]);
    v70 = MEMORY[0x277D82BE0](v69);
    v107 = v70;
    v71 = [(objc_class *)v75[4].isa currentState];
    v72 = [(objc_class *)v75[4].isa delegate];
    v105 = 0;
    v103 = 0;
    if (v72)
    {
      v106 = [(objc_class *)v75[4].isa delegate];
      v65 = 1;
      v105 = 1;
      v3 = objc_opt_class();
      v104 = NSStringFromClass(v3);
      v103 = 1;
      v66 = v104;
    }

    else
    {
      v66 = @"(null)";
    }

    v59 = v66;
    v60 = [(objc_class *)v75[4].isa delegate];
    v61 = [(objc_class *)v75[4].isa scanError];
    v62 = [(objc_class *)v75[4].isa preferredStatefulDescriptor];
    v63 = [(objc_class *)v75[4].isa alternateStatefulDescriptor];
    v64 = [(objc_class *)v75[4].isa currentDownload];
    v101 = 0;
    v99 = 0;
    v97 = 0;
    if (v64)
    {
      v102 = [(objc_class *)v75[4].isa currentDownload];
      v57 = 1;
      v101 = 1;
      v100 = [v102 descriptor];
      v99 = 1;
      v98 = [v100 humanReadableUpdateName];
      v97 = 1;
      v58 = v98;
    }

    else
    {
      v58 = @"(null)";
    }

    v44 = v58;
    v45 = [(objc_class *)v75[4].isa currentDownload];
    v4 = [(objc_class *)v75[4].isa performThirdPartyScan];
    v51 = "NO";
    v5 = "YES";
    v52 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v46 = v5;
    v6 = [(objc_class *)v75[4].isa isTargetedUpdateScheduledForAutoInstall];
    v7 = v52;
    if ((v6 & 1) == 0)
    {
      v7 = v51;
    }

    v47 = v7;
    v8 = [(objc_class *)v75[4].isa hidingPreferredDescriptor];
    v9 = v52;
    if ((v8 & 1) == 0)
    {
      v9 = v51;
    }

    v48 = v9;
    v49 = [*(v75[4].isa + 32) humanReadableUpdateName];
    v50 = MEMORY[0x277D82BE0](v49);
    v96 = v50;
    v10 = [(objc_class *)v75[4].isa hidingAlternateDescriptor];
    v11 = v52;
    if ((v10 & 1) == 0)
    {
      v11 = v51;
    }

    v53 = v11;
    v54 = [*(v75[4].isa + 33) humanReadableUpdateName];
    v55 = MEMORY[0x277D82BE0](v54);
    v95 = v55;
    v56 = [(objc_class *)v75[4].isa enrolledBetaProgram];
    v93 = 0;
    if (v56)
    {
      v94 = [(objc_class *)v75[4].isa enrolledBetaProgram];
      v93 = 1;
      v43 = [v94 programID];
    }

    else
    {
      v43 = 0;
    }

    v34 = v43;
    v42 = [(objc_class *)v75[4].isa betaPrograms];
    v35 = [v42 count];
    v41 = [(objc_class *)v75[4].isa currentFullScanOperation];
    v40 = [(objc_class *)v75[4].isa currentRefreshScanOperation];
    v39 = [(objc_class *)v75[4].isa currentUpdateOperation];
    v38 = [(objc_class *)v75[4].isa auxiliaryOperations];
    v12 = [v38 count];
    v36 = &v13;
    buf = v113;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_8_66(v113, v74, v70, v71, v59, v60, v61, v62, v63, v44, v45, v46, v47, v48, v50, v53, v55, v43, v35, v41, v40, v39, v12, v111 & 1, location);
    _os_log_impl(&dword_26AC94000, log, v68[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUpdate installation (Install Now) operation completed with download result: %d; error: %{public}@", buf, 0xEEu);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v45);
    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v69);
    obja = 0;
    objc_storeStrong(&v95, 0);
    objc_storeStrong(&v96, obja);
    objc_storeStrong(&v107, obja);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(v75[4].isa + 25, 0);
  v92 = [(objc_class *)v75[4].isa targetedUpdateStatefulDescriptor];
  v28 = v92;
  v29 = [(objc_class *)v75[4].isa currentDownload];
  v30 = [v92 updateDownloadable];
  v31 = [v92 updateDownloadError];
  v32 = location;
  v90 = 0;
  if (location)
  {
    v27 = v32;
  }

  else
  {
    v91 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:14 userInfo:0];
    v90 = 1;
    v27 = v91;
  }

  [v28 updateStateFromConcreteDownload:v29 downloadable:v30 downloadError:v31 isUpdateReadyForInstallation:0 updateInstallationError:v27 error:location];
  if (v90)
  {
    MEMORY[0x277D82BD8](v91);
  }

  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v29);
  if (v75[6].isa)
  {
    v23 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v23 selectDelegateCallbackQueue:*(v75[4].isa + 5)];
    block = &v82;
    v82 = MEMORY[0x277D85DD0];
    v83 = -1073741824;
    v84 = 0;
    v85 = __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_369;
    v86 = &unk_279CB95F0;
    v25 = &v88;
    v88 = MEMORY[0x277D82BE0](v75[6].isa);
    v89 = v111 & 1;
    v24 = (block + 32);
    v87 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v23);
    v26 = 0;
    objc_storeStrong(v24, 0);
    objc_storeStrong(v25, v26);
  }

  if (v111)
  {
    isa = v75[4].isa;
    v15 = sel_statefulUIManager_didStartInstallingUpdateWithDescriptor_;
    v16 = &v76;
    v76 = MEMORY[0x277D85DD0];
    v77 = -1073741824;
    v78 = 0;
    v79 = __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_372;
    v80 = &unk_279CB9410;
    v19 = v81;
    v81[0] = MEMORY[0x277D82BE0](v75[4].isa);
    v18 = (v16 + 5);
    v81[1] = MEMORY[0x277D82BE0](v75[5].isa);
    [(objc_class *)isa executeOperationOnDelegate:v15 usingBlock:v16];
    v20 = 0;
    objc_storeStrong(v18, 0);
    objc_storeStrong(v19, v20);
  }

  v14 = 0;
  objc_storeStrong(&v92, 0);
  objc_storeStrong(&location, v14);
  *MEMORY[0x277D85DE8];
}

uint64_t __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_372(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didStartInstallingUpdateWithDescriptor:*(a1 + 40)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)scheduleUpdate:(id)a3 completionHandler:(id)a4 operationDelegate:(id)a5 delegateCallbackQueue:(id)a6
{
  obj = a4;
  v186 = a5;
  v187 = a6;
  v184 = "[SUSettingsStatefulUIManager scheduleUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]";
  v258 = *MEMORY[0x277D85DE8];
  v254 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v252 = 0;
  objc_storeStrong(&v252, obj);
  v251 = 0;
  objc_storeStrong(&v251, v186);
  v250 = 0;
  objc_storeStrong(&v250, v187);
  v188 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
  MEMORY[0x277D82BD8](v188);
  if (v188)
  {
    v139 = location[0];
    v141 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
    v140 = [(SUDownload *)v141 descriptor];
    v142 = [v139 isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    if (v142)
    {
      v91 = [(SUSettingsStatefulUIManager *)v254 log];
      v212 = [(SUCoreLog *)v91 oslog];
      MEMORY[0x277D82BD8](v91);
      v211 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        v85 = v212;
        *v86 = v211;
        v87 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v254 currentState]);
        v88 = MEMORY[0x277D82BE0](v87);
        v210 = v88;
        v89 = [(SUSettingsStatefulUIManager *)v254 currentState];
        v90 = [(SUSettingsStatefulUIManager *)v254 delegate];
        v208 = 0;
        v206 = 0;
        if (v90)
        {
          v209 = [(SUSettingsStatefulUIManager *)v254 delegate];
          v83 = 1;
          v208 = 1;
          v25 = objc_opt_class();
          v207 = NSStringFromClass(v25);
          v206 = 1;
          v84 = v207;
        }

        else
        {
          v84 = @"(null)";
        }

        v77 = v84;
        v78 = [(SUSettingsStatefulUIManager *)v254 delegate];
        v79 = [(SUSettingsStatefulUIManager *)v254 scanError];
        v80 = [(SUSettingsStatefulUIManager *)v254 preferredStatefulDescriptor];
        v81 = [(SUSettingsStatefulUIManager *)v254 alternateStatefulDescriptor];
        v82 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
        v204 = 0;
        v202 = 0;
        v200 = 0;
        if (v82)
        {
          v205 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
          v75 = 1;
          v204 = 1;
          v203 = [(SUDownload *)v205 descriptor];
          v202 = 1;
          v201 = [(SUDescriptor *)v203 humanReadableUpdateName];
          v200 = 1;
          v76 = v201;
        }

        else
        {
          v76 = @"(null)";
        }

        v62 = v76;
        v63 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
        v26 = [(SUSettingsStatefulUIManager *)v254 performThirdPartyScan];
        v69 = "NO";
        v27 = "YES";
        v70 = "YES";
        if (!v26)
        {
          v27 = "NO";
        }

        v64 = v27;
        v28 = [(SUSettingsStatefulUIManager *)v254 isTargetedUpdateScheduledForAutoInstall];
        v29 = v70;
        if (!v28)
        {
          v29 = v69;
        }

        v65 = v29;
        v30 = [(SUSettingsStatefulUIManager *)v254 hidingPreferredDescriptor];
        v31 = v70;
        if (!v30)
        {
          v31 = v69;
        }

        v66 = v31;
        v67 = [(SUSettingsStatefulDescriptor *)v254->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v68 = MEMORY[0x277D82BE0](v67);
        v199 = v68;
        v32 = [(SUSettingsStatefulUIManager *)v254 hidingAlternateDescriptor];
        v33 = v70;
        if (!v32)
        {
          v33 = v69;
        }

        v71 = v33;
        v72 = [(SUSettingsStatefulDescriptor *)v254->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v73 = MEMORY[0x277D82BE0](v72);
        v198 = v73;
        v74 = [(SUSettingsStatefulUIManager *)v254 enrolledBetaProgram];
        v196 = 0;
        if (v74)
        {
          v197 = [(SUSettingsStatefulUIManager *)v254 enrolledBetaProgram];
          v196 = 1;
          v61 = [(SDBetaProgram *)v197 programID];
        }

        else
        {
          v61 = 0;
        }

        v52 = v61;
        v60 = [(SUSettingsStatefulUIManager *)v254 betaPrograms];
        v53 = [(NSArray *)v60 count];
        v59 = [(SUSettingsStatefulUIManager *)v254 currentFullScanOperation];
        v58 = [(SUSettingsStatefulUIManager *)v254 currentRefreshScanOperation];
        v57 = [(SUSettingsStatefulUIManager *)v254 currentUpdateOperation];
        v56 = [(SUSettingsStatefulUIManager *)v254 auxiliaryOperations];
        v34 = [(NSMutableSet *)v56 count];
        v54 = &v37;
        v55 = v255;
        __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v255, v184, v88, v89, v77, v78, v79, v80, v81, v62, v63, v64, v65, v66, v68, v71, v73, v61, v53, v59, v58, v57, v34, location[0]);
        _os_log_impl(&dword_26AC94000, v85, v86[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to schedule (Install Tonight) the update: %{public}@", v55, 0xE8u);
        MEMORY[0x277D82BD8](v56);
        MEMORY[0x277D82BD8](v57);
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v59);
        MEMORY[0x277D82BD8](v60);
        if (v196)
        {
          MEMORY[0x277D82BD8](v197);
        }

        MEMORY[0x277D82BD8](v74);
        MEMORY[0x277D82BD8](v72);
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](v63);
        if (v200)
        {
          MEMORY[0x277D82BD8](v201);
        }

        if (v202)
        {
          MEMORY[0x277D82BD8](v203);
        }

        if (v204)
        {
          MEMORY[0x277D82BD8](v205);
        }

        MEMORY[0x277D82BD8](v82);
        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](v80);
        MEMORY[0x277D82BD8](v79);
        MEMORY[0x277D82BD8](v78);
        if (v206)
        {
          MEMORY[0x277D82BD8](v207);
        }

        if (v208)
        {
          MEMORY[0x277D82BD8](v209);
        }

        MEMORY[0x277D82BD8](v90);
        MEMORY[0x277D82BD8](v87);
        v51 = 0;
        objc_storeStrong(&v198, 0);
        objc_storeStrong(&v199, v51);
        objc_storeStrong(&v210, v51);
      }

      objc_storeStrong(&v212, 0);
      v39 = [SUSettingsUpdateOperation alloc];
      v41 = [(SUSettingsStatefulUIManager *)v254 targetedUpdateStatefulDescriptor];
      v40 = [v41 descriptor];
      suClient = v254->_suClient;
      v36 = [SUSettingsUpdateOperation initWithDescriptor:v39 usingSUManagerClient:"initWithDescriptor:usingSUManagerClient:delegate:" delegate:?];
      v49 = &v195;
      v195 = v36;
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      [(SUSettingsUpdateOperation *)v195 setDelegateCallbackQueue:v250];
      [(SUSettingsUpdateOperation *)v195 setCompletionQueue:v254->_workQueue];
      [(NSMutableSet *)v254->_auxiliaryOperations addObject:v195];
      v43 = v195;
      v45 = [location[0] descriptor];
      v44 = [(SUSettingsStatefulUIManager *)v254 createUpdateOperationOptions];
      v42 = &v189;
      v189 = MEMORY[0x277D85DD0];
      v190 = -1073741824;
      v191 = 0;
      v192 = __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
      v193 = &unk_279CB9640;
      v48 = v194;
      v194[0] = MEMORY[0x277D82BE0](v254);
      v47 = (v42 + 6);
      v194[2] = MEMORY[0x277D82BE0](v252);
      v46 = (v42 + 5);
      v194[1] = MEMORY[0x277D82BE0](v195);
      [(SUSettingsUpdateOperation *)v43 scheduleUpdate:v45 forInstallationTonightWithOptions:v44 completionHandler:v42];
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
      v50 = 0;
      objc_storeStrong(v46, 0);
      objc_storeStrong(v47, v50);
      objc_storeStrong(v48, v50);
      objc_storeStrong(v49, v50);
      v232 = 0;
    }

    else
    {
      v138 = [(SUSettingsStatefulUIManager *)v254 log];
      v231 = [(SUCoreLog *)v138 oslog];
      MEMORY[0x277D82BD8](v138);
      v230 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
      {
        v132 = v231;
        *v133 = v230;
        v134 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v254 currentState]);
        v135 = MEMORY[0x277D82BE0](v134);
        v229 = v135;
        v136 = [(SUSettingsStatefulUIManager *)v254 currentState];
        v137 = [(SUSettingsStatefulUIManager *)v254 delegate];
        v227 = 0;
        v225 = 0;
        if (v137)
        {
          v228 = [(SUSettingsStatefulUIManager *)v254 delegate];
          v130 = 1;
          v227 = 1;
          v16 = objc_opt_class();
          v226 = NSStringFromClass(v16);
          v225 = 1;
          v131 = v226;
        }

        else
        {
          v131 = @"(null)";
        }

        v124 = v131;
        v125 = [(SUSettingsStatefulUIManager *)v254 delegate];
        v126 = [(SUSettingsStatefulUIManager *)v254 scanError];
        v127 = [(SUSettingsStatefulUIManager *)v254 preferredStatefulDescriptor];
        v128 = [(SUSettingsStatefulUIManager *)v254 alternateStatefulDescriptor];
        v129 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
        v223 = 0;
        v221 = 0;
        v219 = 0;
        if (v129)
        {
          v224 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
          v122 = 1;
          v223 = 1;
          v222 = [(SUDownload *)v224 descriptor];
          v221 = 1;
          v220 = [(SUDescriptor *)v222 humanReadableUpdateName];
          v219 = 1;
          v123 = v220;
        }

        else
        {
          v123 = @"(null)";
        }

        v109 = v123;
        v110 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
        v17 = [(SUSettingsStatefulUIManager *)v254 performThirdPartyScan];
        v116 = "NO";
        v18 = "YES";
        v117 = "YES";
        if (!v17)
        {
          v18 = "NO";
        }

        v111 = v18;
        v19 = [(SUSettingsStatefulUIManager *)v254 isTargetedUpdateScheduledForAutoInstall];
        v20 = v117;
        if (!v19)
        {
          v20 = v116;
        }

        v112 = v20;
        v21 = [(SUSettingsStatefulUIManager *)v254 hidingPreferredDescriptor];
        v22 = v117;
        if (!v21)
        {
          v22 = v116;
        }

        v113 = v22;
        v114 = [(SUSettingsStatefulDescriptor *)v254->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v115 = MEMORY[0x277D82BE0](v114);
        v218 = v115;
        v23 = [(SUSettingsStatefulUIManager *)v254 hidingAlternateDescriptor];
        v24 = v117;
        if (!v23)
        {
          v24 = v116;
        }

        v118 = v24;
        v119 = [(SUSettingsStatefulDescriptor *)v254->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v120 = MEMORY[0x277D82BE0](v119);
        v217 = v120;
        v121 = [(SUSettingsStatefulUIManager *)v254 enrolledBetaProgram];
        v215 = 0;
        if (v121)
        {
          v216 = [(SUSettingsStatefulUIManager *)v254 enrolledBetaProgram];
          v215 = 1;
          v108 = [(SDBetaProgram *)v216 programID];
        }

        else
        {
          v108 = 0;
        }

        v93 = v108;
        v107 = [(SUSettingsStatefulUIManager *)v254 betaPrograms];
        v94 = [(NSArray *)v107 count];
        v106 = [(SUSettingsStatefulUIManager *)v254 currentFullScanOperation];
        v105 = [(SUSettingsStatefulUIManager *)v254 currentRefreshScanOperation];
        v104 = [(SUSettingsStatefulUIManager *)v254 currentUpdateOperation];
        v103 = [(SUSettingsStatefulUIManager *)v254 auxiliaryOperations];
        v95 = [(NSMutableSet *)v103 count];
        v102 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
        v101 = [(SUDownload *)v102 descriptor];
        v100 = [(SUDescriptor *)v101 humanReadableUpdateName];
        v96 = MEMORY[0x277D82BE0](v100);
        v214 = v96;
        v99 = [location[0] humanReadableUpdateName];
        v213 = MEMORY[0x277D82BE0](v99);
        v97 = &v37;
        v98 = v256;
        __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v256, v184, v135, v136, v124, v125, v126, v127, v128, v109, v110, v111, v112, v113, v115, v118, v120, v108, v94, v106, v105, v104, v95, v96, v213);
        _os_log_impl(&dword_26AC94000, v132, v133[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not schedule the update because the current download points to a different descriptor.\n\tCurrent Download: %{public}@\n\tUpdate: %{public}@", v98, 0xF2u);
        MEMORY[0x277D82BD8](v99);
        MEMORY[0x277D82BD8](v100);
        MEMORY[0x277D82BD8](v101);
        MEMORY[0x277D82BD8](v102);
        MEMORY[0x277D82BD8](v103);
        MEMORY[0x277D82BD8](v104);
        MEMORY[0x277D82BD8](v105);
        MEMORY[0x277D82BD8](v106);
        MEMORY[0x277D82BD8](v107);
        if (v215)
        {
          MEMORY[0x277D82BD8](v216);
        }

        MEMORY[0x277D82BD8](v121);
        MEMORY[0x277D82BD8](v119);
        MEMORY[0x277D82BD8](v114);
        MEMORY[0x277D82BD8](v110);
        if (v219)
        {
          MEMORY[0x277D82BD8](v220);
        }

        if (v221)
        {
          MEMORY[0x277D82BD8](v222);
        }

        if (v223)
        {
          MEMORY[0x277D82BD8](v224);
        }

        MEMORY[0x277D82BD8](v129);
        MEMORY[0x277D82BD8](v128);
        MEMORY[0x277D82BD8](v127);
        MEMORY[0x277D82BD8](v126);
        MEMORY[0x277D82BD8](v125);
        if (v225)
        {
          MEMORY[0x277D82BD8](v226);
        }

        if (v227)
        {
          MEMORY[0x277D82BD8](v228);
        }

        MEMORY[0x277D82BD8](v137);
        MEMORY[0x277D82BD8](v134);
        v92 = 0;
        objc_storeStrong(&v213, 0);
        objc_storeStrong(&v214, v92);
        objc_storeStrong(&v217, v92);
        objc_storeStrong(&v218, v92);
        objc_storeStrong(&v229, v92);
      }

      objc_storeStrong(&v231, 0);
      v232 = 1;
    }
  }

  else
  {
    v183 = [(SUSettingsStatefulUIManager *)v254 log];
    oslog = [(SUCoreLog *)v183 oslog];
    MEMORY[0x277D82BD8](v183);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v178 = type;
      v179 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v254 currentState]);
      v180 = MEMORY[0x277D82BE0](v179);
      v247 = v180;
      v181 = [(SUSettingsStatefulUIManager *)v254 currentState];
      v182 = [(SUSettingsStatefulUIManager *)v254 delegate];
      v245 = 0;
      v243 = 0;
      if (v182)
      {
        v246 = [(SUSettingsStatefulUIManager *)v254 delegate];
        v175 = 1;
        v245 = 1;
        v6 = objc_opt_class();
        v244 = NSStringFromClass(v6);
        v243 = 1;
        v176 = v244;
      }

      else
      {
        v176 = @"(null)";
      }

      v169 = v176;
      v170 = [(SUSettingsStatefulUIManager *)v254 delegate];
      v171 = [(SUSettingsStatefulUIManager *)v254 scanError];
      v172 = [(SUSettingsStatefulUIManager *)v254 preferredStatefulDescriptor];
      v173 = [(SUSettingsStatefulUIManager *)v254 alternateStatefulDescriptor];
      v174 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
      v241 = 0;
      v239 = 0;
      v237 = 0;
      if (v174)
      {
        v242 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
        v167 = 1;
        v241 = 1;
        v240 = [(SUDownload *)v242 descriptor];
        v239 = 1;
        v238 = [(SUDescriptor *)v240 humanReadableUpdateName];
        v237 = 1;
        v168 = v238;
      }

      else
      {
        v168 = @"(null)";
      }

      v154 = v168;
      v155 = [(SUSettingsStatefulUIManager *)v254 currentDownload];
      v7 = [(SUSettingsStatefulUIManager *)v254 performThirdPartyScan];
      v161 = "NO";
      v8 = "YES";
      v162 = "YES";
      if (!v7)
      {
        v8 = "NO";
      }

      v156 = v8;
      v9 = [(SUSettingsStatefulUIManager *)v254 isTargetedUpdateScheduledForAutoInstall];
      v10 = v162;
      if (!v9)
      {
        v10 = v161;
      }

      v157 = v10;
      v11 = [(SUSettingsStatefulUIManager *)v254 hidingPreferredDescriptor];
      v12 = v162;
      if (!v11)
      {
        v12 = v161;
      }

      v158 = v12;
      v159 = [(SUSettingsStatefulDescriptor *)v254->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v160 = MEMORY[0x277D82BE0](v159);
      v236 = v160;
      v13 = [(SUSettingsStatefulUIManager *)v254 hidingAlternateDescriptor];
      v14 = v162;
      if (!v13)
      {
        v14 = v161;
      }

      v163 = v14;
      v164 = [(SUSettingsStatefulDescriptor *)v254->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v165 = MEMORY[0x277D82BE0](v164);
      v235 = v165;
      v166 = [(SUSettingsStatefulUIManager *)v254 enrolledBetaProgram];
      v233 = 0;
      if (v166)
      {
        v234 = [(SUSettingsStatefulUIManager *)v254 enrolledBetaProgram];
        v233 = 1;
        v153 = [(SDBetaProgram *)v234 programID];
      }

      else
      {
        v153 = 0;
      }

      v144 = v153;
      v152 = [(SUSettingsStatefulUIManager *)v254 betaPrograms];
      v145 = [(NSArray *)v152 count];
      v151 = [(SUSettingsStatefulUIManager *)v254 currentFullScanOperation];
      v150 = [(SUSettingsStatefulUIManager *)v254 currentRefreshScanOperation];
      v149 = [(SUSettingsStatefulUIManager *)v254 currentUpdateOperation];
      v148 = [(SUSettingsStatefulUIManager *)v254 auxiliaryOperations];
      v15 = [(NSMutableSet *)v148 count];
      v146 = &v37;
      buf = v257;
      __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v257, v184, v180, v181, v169, v170, v171, v172, v173, v154, v155, v156, v157, v158, v160, v163, v165, v153, v145, v151, v150, v149, v15, location[0]);
      _os_log_impl(&dword_26AC94000, log, v178[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan't schedule update as the current download is nil (and thus no update has been downloaded). You should use downloadAndScheduleUpdate: to do both operations. Update: %{public}@", buf, 0xE8u);
      MEMORY[0x277D82BD8](v148);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v151);
      MEMORY[0x277D82BD8](v152);
      if (v233)
      {
        MEMORY[0x277D82BD8](v234);
      }

      MEMORY[0x277D82BD8](v166);
      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](v159);
      MEMORY[0x277D82BD8](v155);
      if (v237)
      {
        MEMORY[0x277D82BD8](v238);
      }

      if (v239)
      {
        MEMORY[0x277D82BD8](v240);
      }

      if (v241)
      {
        MEMORY[0x277D82BD8](v242);
      }

      MEMORY[0x277D82BD8](v174);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](v171);
      MEMORY[0x277D82BD8](v170);
      if (v243)
      {
        MEMORY[0x277D82BD8](v244);
      }

      if (v245)
      {
        MEMORY[0x277D82BD8](v246);
      }

      MEMORY[0x277D82BD8](v182);
      MEMORY[0x277D82BD8](v179);
      v143 = 0;
      objc_storeStrong(&v235, 0);
      objc_storeStrong(&v236, v143);
      objc_storeStrong(&v247, v143);
    }

    objc_storeStrong(&oslog, 0);
    v232 = 1;
  }

  v38 = 0;
  objc_storeStrong(&v250, 0);
  objc_storeStrong(&v251, v38);
  objc_storeStrong(&v252, v38);
  objc_storeStrong(location, v38);
  *MEMORY[0x277D85DE8];
}

void __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke(NSObject *a1, unsigned __int8 a2, id obj, void *a4)
{
  v79 = a1;
  obja = a4;
  v77 = "[SUSettingsStatefulUIManager scheduleUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke";
  v117 = *MEMORY[0x277D85DE8];
  v115 = a1;
  v114 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v112 = 0;
  objc_storeStrong(&v112, obja);
  oslog[1] = v79;
  v76 = [(objc_class *)v79[4].isa log];
  oslog[0] = [v76 oslog];
  MEMORY[0x277D82BD8](v76);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v71 = type;
    v72 = SUSettingsUIStateToString([(objc_class *)v79[4].isa currentState]);
    v73 = MEMORY[0x277D82BE0](v72);
    v109 = v73;
    v74 = [(objc_class *)v79[4].isa currentState];
    v75 = [(objc_class *)v79[4].isa delegate];
    v107 = 0;
    v105 = 0;
    if (v75)
    {
      v108 = [(objc_class *)v79[4].isa delegate];
      v68 = 1;
      v107 = 1;
      v4 = objc_opt_class();
      v106 = NSStringFromClass(v4);
      v105 = 1;
      v69 = v106;
    }

    else
    {
      v69 = @"(null)";
    }

    v62 = v69;
    v63 = [(objc_class *)v79[4].isa delegate];
    v64 = [(objc_class *)v79[4].isa scanError];
    v65 = [(objc_class *)v79[4].isa preferredStatefulDescriptor];
    v66 = [(objc_class *)v79[4].isa alternateStatefulDescriptor];
    v67 = [(objc_class *)v79[4].isa currentDownload];
    v103 = 0;
    v101 = 0;
    v99 = 0;
    if (v67)
    {
      v104 = [(objc_class *)v79[4].isa currentDownload];
      v60 = 1;
      v103 = 1;
      v102 = [v104 descriptor];
      v101 = 1;
      v100 = [v102 humanReadableUpdateName];
      v99 = 1;
      v61 = v100;
    }

    else
    {
      v61 = @"(null)";
    }

    v47 = v61;
    v48 = [(objc_class *)v79[4].isa currentDownload];
    v5 = [(objc_class *)v79[4].isa performThirdPartyScan];
    v54 = "NO";
    v6 = "YES";
    v55 = "YES";
    if ((v5 & 1) == 0)
    {
      v6 = "NO";
    }

    v49 = v6;
    v7 = [(objc_class *)v79[4].isa isTargetedUpdateScheduledForAutoInstall];
    v8 = v55;
    if ((v7 & 1) == 0)
    {
      v8 = v54;
    }

    v50 = v8;
    v9 = [(objc_class *)v79[4].isa hidingPreferredDescriptor];
    v10 = v55;
    if ((v9 & 1) == 0)
    {
      v10 = v54;
    }

    v51 = v10;
    v52 = [*(v79[4].isa + 32) humanReadableUpdateName];
    v53 = MEMORY[0x277D82BE0](v52);
    v98 = v53;
    v11 = [(objc_class *)v79[4].isa hidingAlternateDescriptor];
    v12 = v55;
    if ((v11 & 1) == 0)
    {
      v12 = v54;
    }

    v56 = v12;
    v57 = [*(v79[4].isa + 33) humanReadableUpdateName];
    v58 = MEMORY[0x277D82BE0](v57);
    v97 = v58;
    v59 = [(objc_class *)v79[4].isa enrolledBetaProgram];
    v95 = 0;
    if (v59)
    {
      v96 = [(objc_class *)v79[4].isa enrolledBetaProgram];
      v95 = 1;
      v46 = [v96 programID];
    }

    else
    {
      v46 = 0;
    }

    v37 = v46;
    v45 = [(objc_class *)v79[4].isa betaPrograms];
    v38 = [v45 count];
    v44 = [(objc_class *)v79[4].isa currentFullScanOperation];
    v43 = [(objc_class *)v79[4].isa currentRefreshScanOperation];
    v42 = [(objc_class *)v79[4].isa currentUpdateOperation];
    v41 = [(objc_class *)v79[4].isa auxiliaryOperations];
    v13 = [v41 count];
    v39 = &v15;
    buf = v116;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_8_66(v116, v77, v73, v74, v62, v63, v64, v65, v66, v47, v48, v49, v50, v51, v53, v56, v58, v46, v38, v44, v43, v42, v13, v114 & 1, v112);
    _os_log_impl(&dword_26AC94000, log, v71[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nSchedule (Install Tonight) operation completed with result: %d; error: %{public}@", buf, 0xEEu);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v48);
    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    if (v107)
    {
      MEMORY[0x277D82BD8](v108);
    }

    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v72);
    v36 = 0;
    objc_storeStrong(&v97, 0);
    objc_storeStrong(&v98, v36);
    objc_storeStrong(&v109, v36);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(v79[4].isa + 25, 0);
  if (v114)
  {
    objc_storeStrong(v79[4].isa + 31, location);
    v14 = v79;
    *(v79[4].isa + 14) = v114 & 1;
    if (*(v14[4].isa + 31))
    {
      [*(v79[4].isa + 31) setDelegate:v79[4].isa];
    }

    isa = v79[4].isa;
    v23 = [(objc_class *)v79[4].isa currentDownload];
    v18 = v114;
    v19 = location;
    v20 = v112;
    v21 = &v80;
    v80 = MEMORY[0x277D85DD0];
    v81 = -1073741824;
    v82 = 0;
    v83 = __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2;
    v84 = &unk_279CB94D8;
    v28 = v85;
    v85[0] = MEMORY[0x277D82BE0](v79[4].isa);
    v17 = 1;
    v86 = v114 & 1;
    v27 = v21 + 8;
    v85[4] = MEMORY[0x277D82BE0](v79[6].isa);
    v26 = v21 + 5;
    v85[1] = MEMORY[0x277D82BE0](location);
    v25 = v21 + 6;
    v85[2] = MEMORY[0x277D82BE0](v112);
    v24 = v21 + 7;
    v85[3] = MEMORY[0x277D82BE0](v79[5].isa);
    [(objc_class *)isa performPostUpdateOperationRefresh:v17 & 1 withDownload:v23 didScheduledUpdate:v18 & 1 autoInstallOperation:v19 error:v20 completionHandler:v21];
    MEMORY[0x277D82BD8](v23);
    v29 = 0;
    objc_storeStrong(v24, 0);
    objc_storeStrong(v25, v29);
    objc_storeStrong(v26, v29);
    objc_storeStrong(v27, v29);
    objc_storeStrong(v28, v29);
    v87 = 0;
  }

  else
  {
    if (v79[6].isa)
    {
      v32 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v32 selectDelegateCallbackQueue:*(v79[4].isa + 5)];
      block = &v88;
      v88 = MEMORY[0x277D85DD0];
      v89 = -1073741824;
      v90 = 0;
      v91 = __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_375;
      v92 = &unk_279CB9460;
      v34 = &v94;
      v94 = MEMORY[0x277D82BE0](v79[6].isa);
      v33 = (block + 32);
      v93 = MEMORY[0x277D82BE0](v112);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v32);
      v35 = 0;
      objc_storeStrong(v33, 0);
      objc_storeStrong(v34, v35);
    }

    v87 = 1;
  }

  v16 = 0;
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&location, v16);
  *MEMORY[0x277D85DE8];
}

void __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2(NSObject *a1, char a2)
{
  v66 = a1;
  v67 = "[SUSettingsStatefulUIManager scheduleUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]_block_invoke_2";
  v103 = *MEMORY[0x277D85DE8];
  v101 = a1;
  v100 = a2;
  oslog[1] = a1;
  v65 = [(objc_class *)a1[4].isa log];
  oslog[0] = [v65 oslog];
  MEMORY[0x277D82BD8](v65);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v60 = type;
    v61 = SUSettingsUIStateToString([(objc_class *)v66[4].isa currentState]);
    v62 = MEMORY[0x277D82BE0](v61);
    v97 = v62;
    v63 = [(objc_class *)v66[4].isa currentState];
    v64 = [(objc_class *)v66[4].isa delegate];
    v95 = 0;
    v93 = 0;
    if (v64)
    {
      v96 = [(objc_class *)v66[4].isa delegate];
      v57 = 1;
      v95 = 1;
      v2 = objc_opt_class();
      v94 = NSStringFromClass(v2);
      v93 = 1;
      v58 = v94;
    }

    else
    {
      v58 = @"(null)";
    }

    v51 = v58;
    v52 = [(objc_class *)v66[4].isa delegate];
    v53 = [(objc_class *)v66[4].isa scanError];
    v54 = [(objc_class *)v66[4].isa preferredStatefulDescriptor];
    v55 = [(objc_class *)v66[4].isa alternateStatefulDescriptor];
    v56 = [(objc_class *)v66[4].isa currentDownload];
    v91 = 0;
    v89 = 0;
    v87 = 0;
    if (v56)
    {
      v92 = [(objc_class *)v66[4].isa currentDownload];
      v49 = 1;
      v91 = 1;
      v90 = [v92 descriptor];
      v89 = 1;
      v88 = [v90 humanReadableUpdateName];
      v87 = 1;
      v50 = v88;
    }

    else
    {
      v50 = @"(null)";
    }

    v36 = v50;
    v37 = [(objc_class *)v66[4].isa currentDownload];
    v3 = [(objc_class *)v66[4].isa performThirdPartyScan];
    v43 = "NO";
    v4 = "YES";
    v44 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v38 = v4;
    v5 = [(objc_class *)v66[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v44;
    if ((v5 & 1) == 0)
    {
      v6 = v43;
    }

    v39 = v6;
    v7 = [(objc_class *)v66[4].isa hidingPreferredDescriptor];
    v8 = v44;
    if ((v7 & 1) == 0)
    {
      v8 = v43;
    }

    v40 = v8;
    v41 = [*(v66[4].isa + 32) humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](v41);
    v86 = v42;
    v9 = [(objc_class *)v66[4].isa hidingAlternateDescriptor];
    v10 = v44;
    if ((v9 & 1) == 0)
    {
      v10 = v43;
    }

    v45 = v10;
    v46 = [*(v66[4].isa + 33) humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](v46);
    location = v47;
    v48 = [(objc_class *)v66[4].isa enrolledBetaProgram];
    v83 = 0;
    if (v48)
    {
      v84 = [(objc_class *)v66[4].isa enrolledBetaProgram];
      v83 = 1;
      v35 = [v84 programID];
    }

    else
    {
      v35 = 0;
    }

    v26 = v35;
    v34 = [(objc_class *)v66[4].isa betaPrograms];
    v27 = [v34 count];
    v33 = [(objc_class *)v66[4].isa currentFullScanOperation];
    v32 = [(objc_class *)v66[4].isa currentRefreshScanOperation];
    v31 = [(objc_class *)v66[4].isa currentUpdateOperation];
    v30 = [(objc_class *)v66[4].isa auxiliaryOperations];
    v11 = [v30 count];
    v12 = v66[9].isa & 1;
    v28 = &v13;
    buf = v102;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v102, v67, v62, v63, v51, v52, v53, v54, v55, v36, v37, v38, v39, v40, v42, v45, v47, v35, v27, v33, v32, v31, v11, v12);
    _os_log_impl(&dword_26AC94000, log, v60[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform an update of type Install Tonight with result: %d", buf, 0xE4u);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v37);
    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v61);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v86, obj);
    objc_storeStrong(&v97, obj);
  }

  objc_storeStrong(oslog, 0);
  if (v66[8].isa)
  {
    v20 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v20 selectDelegateCallbackQueue:*(v66[4].isa + 5)];
    block = &v74;
    v74 = MEMORY[0x277D85DD0];
    v75 = -1073741824;
    v76 = 0;
    v77 = __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_376;
    v78 = &unk_279CB9550;
    v23 = &v81;
    v81 = MEMORY[0x277D82BE0](v66[8].isa);
    v82 = v66[9].isa & 1;
    v22 = (block + 32);
    v79 = MEMORY[0x277D82BE0](v66[5].isa);
    v21 = (block + 40);
    v80 = MEMORY[0x277D82BE0](v66[6].isa);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v20);
    v24 = 0;
    objc_storeStrong(v21, 0);
    objc_storeStrong(v22, v24);
    objc_storeStrong(v23, v24);
  }

  isa = v66[4].isa;
  v14 = sel_statefulUIManagerDidRefreshState_;
  v15 = &v68;
  v68 = MEMORY[0x277D85DD0];
  v69 = -1073741824;
  v70 = 0;
  v71 = __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_377;
  v72 = &unk_279CB93E8;
  v17 = &v73;
  v73 = MEMORY[0x277D82BE0](v66[4].isa);
  [(objc_class *)isa executeOperationOnDelegate:v14 usingBlock:v15];
  [*(v66[4].isa + 26) removeObject:v66[7].isa];
  objc_storeStrong(v17, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_376(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56) & 1);
}

uint64_t __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke_2_377(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManagerDidRefreshState:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)promoteTargetedUpdateToUserInitiatedStatus
{
  v64 = "[SUSettingsStatefulUIManager promoteTargetedUpdateToUserInitiatedStatus]";
  v93 = *MEMORY[0x277D85DE8];
  v91 = self;
  oslog[1] = a2;
  v65 = [(SUSettingsStatefulUIManager *)self currentDownload];
  MEMORY[0x277D82BD8](v65);
  if (v65)
  {
    v13 = [SUSettingsUpdateOperation alloc];
    v15 = [(SUSettingsStatefulUIManager *)v91 targetedUpdateStatefulDescriptor];
    v14 = [v15 descriptor];
    suClient = v91->_suClient;
    v22 = 0;
    v21 = &v73;
    v73 = [SUSettingsUpdateOperation initWithDescriptor:v13 usingSUManagerClient:"initWithDescriptor:usingSUManagerClient:delegate:" delegate:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    [(SUSettingsUpdateOperation *)v73 setDelegateCallbackQueue:v91->_workQueue];
    [(SUSettingsUpdateOperation *)v73 setCompletionQueue:v91->_workQueue];
    [(NSMutableSet *)v91->_auxiliaryOperations addObject:v73];
    v17 = v73;
    v18 = [(SUSettingsStatefulUIManager *)v91 currentDownload];
    v16 = &v66;
    v66 = MEMORY[0x277D85DD0];
    v67 = -1073741824;
    v68 = 0;
    v69 = __73__SUSettingsStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus__block_invoke;
    v70 = &unk_279CB9668;
    v20 = &v71;
    v71 = MEMORY[0x277D82BE0](v91);
    v19 = &v72;
    v72 = MEMORY[0x277D82BE0](v73);
    [(SUSettingsUpdateOperation *)v17 promoteDownloadToUserInitiated:v18 completionHandler:&v66];
    MEMORY[0x277D82BD8](v18);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v73, 0);
  }

  else
  {
    v63 = [(SUSettingsStatefulUIManager *)v91 log];
    oslog[0] = [(SUCoreLog *)v63 oslog];
    MEMORY[0x277D82BD8](v63);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v58 = type;
      v59 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v91 currentState]);
      v60 = MEMORY[0x277D82BE0](v59);
      v88 = v60;
      v61 = [(SUSettingsStatefulUIManager *)v91 currentState];
      v62 = [(SUSettingsStatefulUIManager *)v91 delegate];
      v86 = 0;
      v84 = 0;
      if (v62)
      {
        v87 = [(SUSettingsStatefulUIManager *)v91 delegate];
        v55 = 1;
        v86 = 1;
        v2 = objc_opt_class();
        v85 = NSStringFromClass(v2);
        v84 = 1;
        v56 = v85;
      }

      else
      {
        v56 = @"(null)";
      }

      v49 = v56;
      v50 = [(SUSettingsStatefulUIManager *)v91 delegate];
      v51 = [(SUSettingsStatefulUIManager *)v91 scanError];
      v52 = [(SUSettingsStatefulUIManager *)v91 preferredStatefulDescriptor];
      v53 = [(SUSettingsStatefulUIManager *)v91 alternateStatefulDescriptor];
      v54 = [(SUSettingsStatefulUIManager *)v91 currentDownload];
      v82 = 0;
      v80 = 0;
      v78 = 0;
      if (v54)
      {
        v83 = [(SUSettingsStatefulUIManager *)v91 currentDownload];
        v47 = 1;
        v82 = 1;
        v81 = [(SUDownload *)v83 descriptor];
        v80 = 1;
        v79 = [(SUDescriptor *)v81 humanReadableUpdateName];
        v78 = 1;
        v48 = v79;
      }

      else
      {
        v48 = @"(null)";
      }

      v34 = v48;
      v35 = [(SUSettingsStatefulUIManager *)v91 currentDownload];
      v3 = [(SUSettingsStatefulUIManager *)v91 performThirdPartyScan];
      v41 = "NO";
      v4 = "YES";
      v42 = "YES";
      if (!v3)
      {
        v4 = "NO";
      }

      v36 = v4;
      v5 = [(SUSettingsStatefulUIManager *)v91 isTargetedUpdateScheduledForAutoInstall];
      v6 = v42;
      if (!v5)
      {
        v6 = v41;
      }

      v37 = v6;
      v7 = [(SUSettingsStatefulUIManager *)v91 hidingPreferredDescriptor];
      v8 = v42;
      if (!v7)
      {
        v8 = v41;
      }

      v38 = v8;
      v39 = [(SUSettingsStatefulDescriptor *)v91->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v40 = MEMORY[0x277D82BE0](v39);
      v77 = v40;
      v9 = [(SUSettingsStatefulUIManager *)v91 hidingAlternateDescriptor];
      v10 = v42;
      if (!v9)
      {
        v10 = v41;
      }

      v43 = v10;
      v44 = [(SUSettingsStatefulDescriptor *)v91->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v45 = MEMORY[0x277D82BE0](v44);
      location = v45;
      v46 = [(SUSettingsStatefulUIManager *)v91 enrolledBetaProgram];
      v74 = 0;
      if (v46)
      {
        v75 = [(SUSettingsStatefulUIManager *)v91 enrolledBetaProgram];
        v74 = 1;
        v33 = [(SDBetaProgram *)v75 programID];
      }

      else
      {
        v33 = 0;
      }

      v24 = v33;
      v32 = [(SUSettingsStatefulUIManager *)v91 betaPrograms];
      v25 = [(NSArray *)v32 count];
      v31 = [(SUSettingsStatefulUIManager *)v91 currentFullScanOperation];
      v30 = [(SUSettingsStatefulUIManager *)v91 currentRefreshScanOperation];
      v29 = [(SUSettingsStatefulUIManager *)v91 currentUpdateOperation];
      v28 = [(SUSettingsStatefulUIManager *)v91 auxiliaryOperations];
      v26 = &v12;
      buf = v92;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v92, v64, v60, v61, v49, v50, v51, v52, v53, v34, v35, v36, v37, v38, v40, v43, v45, v33, v25, v31, v30, v29, [(NSMutableSet *)v28 count]);
      _os_log_impl(&dword_26AC94000, log, v58[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not promote the initial status of a nil targeted update.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      if (v74)
      {
        MEMORY[0x277D82BD8](v75);
      }

      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v35);
      if (v78)
      {
        MEMORY[0x277D82BD8](v79);
      }

      if (v80)
      {
        MEMORY[0x277D82BD8](v81);
      }

      if (v82)
      {
        MEMORY[0x277D82BD8](v83);
      }

      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v50);
      if (v84)
      {
        MEMORY[0x277D82BD8](v85);
      }

      if (v86)
      {
        MEMORY[0x277D82BD8](v87);
      }

      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v59);
      obj = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v77, obj);
      objc_storeStrong(&v88, obj);
    }

    objc_storeStrong(oslog, 0);
  }

  *MEMORY[0x277D85DE8];
}

void __73__SUSettingsStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus__block_invoke(NSObject *a1, void *a2, int a3, void *a4)
{
  v66 = a1;
  v64 = a3;
  obj = a4;
  v63 = "[SUSettingsStatefulUIManager promoteTargetedUpdateToUserInitiatedStatus]_block_invoke";
  v94 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v91 = v64;
  v90 = 0;
  objc_storeStrong(&v90, obj);
  oslog[1] = v66;
  v62 = [(objc_class *)v66[4].isa log];
  oslog[0] = [v62 oslog];
  MEMORY[0x277D82BD8](v62);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v57 = type;
    v58 = SUSettingsUIStateToString([(objc_class *)v66[4].isa currentState]);
    v59 = MEMORY[0x277D82BE0](v58);
    v87 = v59;
    v60 = [(objc_class *)v66[4].isa currentState];
    v61 = [(objc_class *)v66[4].isa delegate];
    v85 = 0;
    v83 = 0;
    if (v61)
    {
      v86 = [(objc_class *)v66[4].isa delegate];
      v54 = 1;
      v85 = 1;
      v4 = objc_opt_class();
      v84 = NSStringFromClass(v4);
      v83 = 1;
      v55 = v84;
    }

    else
    {
      v55 = @"(null)";
    }

    v48 = v55;
    v49 = [(objc_class *)v66[4].isa delegate];
    v50 = [(objc_class *)v66[4].isa scanError];
    v51 = [(objc_class *)v66[4].isa preferredStatefulDescriptor];
    v52 = [(objc_class *)v66[4].isa alternateStatefulDescriptor];
    v53 = [(objc_class *)v66[4].isa currentDownload];
    v81 = 0;
    v79 = 0;
    v77 = 0;
    if (v53)
    {
      v82 = [(objc_class *)v66[4].isa currentDownload];
      v46 = 1;
      v81 = 1;
      v80 = [v82 descriptor];
      v79 = 1;
      v78 = [v80 humanReadableUpdateName];
      v77 = 1;
      v47 = v78;
    }

    else
    {
      v47 = @"(null)";
    }

    v33 = v47;
    v34 = [(objc_class *)v66[4].isa currentDownload];
    v5 = [(objc_class *)v66[4].isa performThirdPartyScan];
    v40 = "NO";
    v6 = "YES";
    v41 = "YES";
    if ((v5 & 1) == 0)
    {
      v6 = "NO";
    }

    v35 = v6;
    v7 = [(objc_class *)v66[4].isa isTargetedUpdateScheduledForAutoInstall];
    v8 = v41;
    if ((v7 & 1) == 0)
    {
      v8 = v40;
    }

    v36 = v8;
    v9 = [(objc_class *)v66[4].isa hidingPreferredDescriptor];
    v10 = v41;
    if ((v9 & 1) == 0)
    {
      v10 = v40;
    }

    v37 = v10;
    v38 = [*(v66[4].isa + 32) humanReadableUpdateName];
    v39 = MEMORY[0x277D82BE0](v38);
    v76 = v39;
    v11 = [(objc_class *)v66[4].isa hidingAlternateDescriptor];
    v12 = v41;
    if ((v11 & 1) == 0)
    {
      v12 = v40;
    }

    v42 = v12;
    v43 = [*(v66[4].isa + 33) humanReadableUpdateName];
    v44 = MEMORY[0x277D82BE0](v43);
    v75 = v44;
    v45 = [(objc_class *)v66[4].isa enrolledBetaProgram];
    v73 = 0;
    if (v45)
    {
      v74 = [(objc_class *)v66[4].isa enrolledBetaProgram];
      v73 = 1;
      v32 = [v74 programID];
    }

    else
    {
      v32 = 0;
    }

    v23 = v32;
    v31 = [(objc_class *)v66[4].isa betaPrograms];
    v24 = [v31 count];
    v30 = [(objc_class *)v66[4].isa currentFullScanOperation];
    v29 = [(objc_class *)v66[4].isa currentRefreshScanOperation];
    v28 = [(objc_class *)v66[4].isa currentUpdateOperation];
    v27 = [(objc_class *)v66[4].isa auxiliaryOperations];
    v13 = [v27 count];
    if (v91)
    {
      v14 = "succeeded";
    }

    else
    {
      v14 = "failed";
    }

    v25 = &v15;
    buf = v93;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_34_8_66(v93, v63, v59, v60, v48, v49, v50, v51, v52, v33, v34, v35, v36, v37, v39, v42, v44, v23, v24, v30, v29, v28, v13, v14, v90);
    _os_log_impl(&dword_26AC94000, log, v57[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPromote targeted update to user initiated status: %{public}s; error: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v34);
    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v58);
    v22 = 0;
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v76, v22);
    objc_storeStrong(&v87, v22);
  }

  objc_storeStrong(oslog, 0);
  v20 = location;
  [(objc_class *)v66[4].isa setCurrentDownload:location[0]];
  isa = v66[4].isa;
  v16 = sel_statefulUIManagerDidRefreshState_;
  v17 = &v67;
  v67 = MEMORY[0x277D85DD0];
  v68 = -1073741824;
  v69 = 0;
  v70 = __73__SUSettingsStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus__block_invoke_381;
  v71 = &unk_279CB93E8;
  v19 = &v72;
  v72 = MEMORY[0x277D82BE0](v66[4].isa);
  [(objc_class *)isa executeOperationOnDelegate:v16 usingBlock:v17];
  [*(v66[4].isa + 26) removeObject:v66[5].isa];
  v21 = 0;
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v90, v21);
  objc_storeStrong(v20, v21);
  *MEMORY[0x277D85DE8];
}

uint64_t __73__SUSettingsStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus__block_invoke_381(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManagerDidRefreshState:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)unscheduleTargetedUpdateAutomaticInstallation
{
  v115 = "[SUSettingsStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation]";
  v162 = *MEMORY[0x277D85DE8];
  v159 = self;
  oslog[1] = a2;
  v116 = [(SUSettingsStatefulUIManager *)self currentDownload];
  MEMORY[0x277D82BD8](v116);
  if (v116)
  {
    v73 = [(SUSettingsStatefulUIManager *)v159 currentAutoInstallOperation];
    MEMORY[0x277D82BD8](v73);
    if (v73)
    {
      v22 = [SUSettingsUpdateOperation alloc];
      v24 = [(SUSettingsStatefulUIManager *)v159 targetedUpdateStatefulDescriptor];
      v23 = [v24 descriptor];
      suClient = v159->_suClient;
      v31 = 0;
      v30 = &v124;
      v124 = [SUSettingsUpdateOperation initWithDescriptor:v22 usingSUManagerClient:"initWithDescriptor:usingSUManagerClient:delegate:" delegate:?];
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      [(SUSettingsUpdateOperation *)v124 setDelegateCallbackQueue:v159->_workQueue];
      [(SUSettingsUpdateOperation *)v124 setCompletionQueue:v159->_workQueue];
      [(NSMutableSet *)v159->_auxiliaryOperations addObject:v124];
      v26 = v124;
      v27 = [(SUSettingsStatefulUIManager *)v159 currentAutoInstallOperation];
      v25 = &v117;
      v117 = MEMORY[0x277D85DD0];
      v118 = -1073741824;
      v119 = 0;
      v120 = __76__SUSettingsStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation__block_invoke;
      v121 = &unk_279CB9690;
      v29 = &v122;
      v122 = MEMORY[0x277D82BE0](v159);
      v28 = &v123;
      v123 = MEMORY[0x277D82BE0](v124);
      [(SUSettingsUpdateOperation *)v26 unscheduleAutomaticInstallation:v27 completionHandler:&v117];
      MEMORY[0x277D82BD8](v27);
      objc_storeStrong(&v123, 0);
      objc_storeStrong(&v122, 0);
      objc_storeStrong(&v124, 0);
    }

    else
    {
      v72 = [(SUSettingsStatefulUIManager *)v159 log];
      v141 = [(SUCoreLog *)v72 oslog];
      MEMORY[0x277D82BD8](v72);
      v140 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v141;
        *v67 = v140;
        v68 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v159 currentState]);
        v69 = MEMORY[0x277D82BE0](v68);
        v139 = v69;
        v70 = [(SUSettingsStatefulUIManager *)v159 currentState];
        v71 = [(SUSettingsStatefulUIManager *)v159 delegate];
        v137 = 0;
        v135 = 0;
        if (v71)
        {
          v138 = [(SUSettingsStatefulUIManager *)v159 delegate];
          v64 = 1;
          v137 = 1;
          v11 = objc_opt_class();
          v136 = NSStringFromClass(v11);
          v135 = 1;
          v65 = v136;
        }

        else
        {
          v65 = @"(null)";
        }

        v58 = v65;
        v59 = [(SUSettingsStatefulUIManager *)v159 delegate];
        v60 = [(SUSettingsStatefulUIManager *)v159 scanError];
        v61 = [(SUSettingsStatefulUIManager *)v159 preferredStatefulDescriptor];
        v62 = [(SUSettingsStatefulUIManager *)v159 alternateStatefulDescriptor];
        v63 = [(SUSettingsStatefulUIManager *)v159 currentDownload];
        v133 = 0;
        v131 = 0;
        v129 = 0;
        if (v63)
        {
          v134 = [(SUSettingsStatefulUIManager *)v159 currentDownload];
          v56 = 1;
          v133 = 1;
          v132 = [(SUDownload *)v134 descriptor];
          v131 = 1;
          v130 = [(SUDescriptor *)v132 humanReadableUpdateName];
          v129 = 1;
          v57 = v130;
        }

        else
        {
          v57 = @"(null)";
        }

        v43 = v57;
        v44 = [(SUSettingsStatefulUIManager *)v159 currentDownload];
        v12 = [(SUSettingsStatefulUIManager *)v159 performThirdPartyScan];
        v50 = "NO";
        v13 = "YES";
        v51 = "YES";
        if (!v12)
        {
          v13 = "NO";
        }

        v45 = v13;
        v14 = [(SUSettingsStatefulUIManager *)v159 isTargetedUpdateScheduledForAutoInstall];
        v15 = v51;
        if (!v14)
        {
          v15 = v50;
        }

        v46 = v15;
        v16 = [(SUSettingsStatefulUIManager *)v159 hidingPreferredDescriptor];
        v17 = v51;
        if (!v16)
        {
          v17 = v50;
        }

        v47 = v17;
        v48 = [(SUSettingsStatefulDescriptor *)v159->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v49 = MEMORY[0x277D82BE0](v48);
        v128 = v49;
        v18 = [(SUSettingsStatefulUIManager *)v159 hidingAlternateDescriptor];
        v19 = v51;
        if (!v18)
        {
          v19 = v50;
        }

        v52 = v19;
        v53 = [(SUSettingsStatefulDescriptor *)v159->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v54 = MEMORY[0x277D82BE0](v53);
        v127 = v54;
        v55 = [(SUSettingsStatefulUIManager *)v159 enrolledBetaProgram];
        v125 = 0;
        if (v55)
        {
          v126 = [(SUSettingsStatefulUIManager *)v159 enrolledBetaProgram];
          v125 = 1;
          v42 = [(SDBetaProgram *)v126 programID];
        }

        else
        {
          v42 = 0;
        }

        v33 = v42;
        v41 = [(SUSettingsStatefulUIManager *)v159 betaPrograms];
        v34 = [(NSArray *)v41 count];
        v40 = [(SUSettingsStatefulUIManager *)v159 currentFullScanOperation];
        v39 = [(SUSettingsStatefulUIManager *)v159 currentRefreshScanOperation];
        v38 = [(SUSettingsStatefulUIManager *)v159 currentUpdateOperation];
        v37 = [(SUSettingsStatefulUIManager *)v159 auxiliaryOperations];
        v35 = &v21;
        v36 = v160;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v160, v115, v69, v70, v58, v59, v60, v61, v62, v43, v44, v45, v46, v47, v49, v52, v54, v42, v34, v40, v39, v38, [(NSMutableSet *)v37 count]);
        _os_log_impl(&dword_26AC94000, v66, v67[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unschedule an update when the auto-install operation is nil.", v36, 0xDEu);
        MEMORY[0x277D82BD8](v37);
        MEMORY[0x277D82BD8](v38);
        MEMORY[0x277D82BD8](v39);
        MEMORY[0x277D82BD8](v40);
        MEMORY[0x277D82BD8](v41);
        if (v125)
        {
          MEMORY[0x277D82BD8](v126);
        }

        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v53);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v44);
        if (v129)
        {
          MEMORY[0x277D82BD8](v130);
        }

        if (v131)
        {
          MEMORY[0x277D82BD8](v132);
        }

        if (v133)
        {
          MEMORY[0x277D82BD8](v134);
        }

        MEMORY[0x277D82BD8](v63);
        MEMORY[0x277D82BD8](v62);
        MEMORY[0x277D82BD8](v61);
        MEMORY[0x277D82BD8](v60);
        MEMORY[0x277D82BD8](v59);
        if (v135)
        {
          MEMORY[0x277D82BD8](v136);
        }

        if (v137)
        {
          MEMORY[0x277D82BD8](v138);
        }

        MEMORY[0x277D82BD8](v71);
        MEMORY[0x277D82BD8](v68);
        v32 = 0;
        objc_storeStrong(&v127, 0);
        objc_storeStrong(&v128, v32);
        objc_storeStrong(&v139, v32);
      }

      objc_storeStrong(&v141, 0);
    }
  }

  else
  {
    v114 = [(SUSettingsStatefulUIManager *)v159 log];
    oslog[0] = [(SUCoreLog *)v114 oslog];
    MEMORY[0x277D82BD8](v114);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v109 = type;
      v110 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v159 currentState]);
      v111 = MEMORY[0x277D82BE0](v110);
      v156 = v111;
      v112 = [(SUSettingsStatefulUIManager *)v159 currentState];
      v113 = [(SUSettingsStatefulUIManager *)v159 delegate];
      v154 = 0;
      v152 = 0;
      if (v113)
      {
        v155 = [(SUSettingsStatefulUIManager *)v159 delegate];
        v106 = 1;
        v154 = 1;
        v2 = objc_opt_class();
        v153 = NSStringFromClass(v2);
        v152 = 1;
        v107 = v153;
      }

      else
      {
        v107 = @"(null)";
      }

      v100 = v107;
      v101 = [(SUSettingsStatefulUIManager *)v159 delegate];
      v102 = [(SUSettingsStatefulUIManager *)v159 scanError];
      v103 = [(SUSettingsStatefulUIManager *)v159 preferredStatefulDescriptor];
      v104 = [(SUSettingsStatefulUIManager *)v159 alternateStatefulDescriptor];
      v105 = [(SUSettingsStatefulUIManager *)v159 currentDownload];
      v150 = 0;
      v148 = 0;
      v146 = 0;
      if (v105)
      {
        v151 = [(SUSettingsStatefulUIManager *)v159 currentDownload];
        v98 = 1;
        v150 = 1;
        v149 = [(SUDownload *)v151 descriptor];
        v148 = 1;
        v147 = [(SUDescriptor *)v149 humanReadableUpdateName];
        v146 = 1;
        v99 = v147;
      }

      else
      {
        v99 = @"(null)";
      }

      v85 = v99;
      v86 = [(SUSettingsStatefulUIManager *)v159 currentDownload];
      v3 = [(SUSettingsStatefulUIManager *)v159 performThirdPartyScan];
      v92 = "NO";
      v4 = "YES";
      v93 = "YES";
      if (!v3)
      {
        v4 = "NO";
      }

      v87 = v4;
      v5 = [(SUSettingsStatefulUIManager *)v159 isTargetedUpdateScheduledForAutoInstall];
      v6 = v93;
      if (!v5)
      {
        v6 = v92;
      }

      v88 = v6;
      v7 = [(SUSettingsStatefulUIManager *)v159 hidingPreferredDescriptor];
      v8 = v93;
      if (!v7)
      {
        v8 = v92;
      }

      v89 = v8;
      v90 = [(SUSettingsStatefulDescriptor *)v159->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v91 = MEMORY[0x277D82BE0](v90);
      v145 = v91;
      v9 = [(SUSettingsStatefulUIManager *)v159 hidingAlternateDescriptor];
      v10 = v93;
      if (!v9)
      {
        v10 = v92;
      }

      v94 = v10;
      v95 = [(SUSettingsStatefulDescriptor *)v159->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v96 = MEMORY[0x277D82BE0](v95);
      location = v96;
      v97 = [(SUSettingsStatefulUIManager *)v159 enrolledBetaProgram];
      v142 = 0;
      if (v97)
      {
        v143 = [(SUSettingsStatefulUIManager *)v159 enrolledBetaProgram];
        v142 = 1;
        v84 = [(SDBetaProgram *)v143 programID];
      }

      else
      {
        v84 = 0;
      }

      v75 = v84;
      v83 = [(SUSettingsStatefulUIManager *)v159 betaPrograms];
      v76 = [(NSArray *)v83 count];
      v82 = [(SUSettingsStatefulUIManager *)v159 currentFullScanOperation];
      v81 = [(SUSettingsStatefulUIManager *)v159 currentRefreshScanOperation];
      v80 = [(SUSettingsStatefulUIManager *)v159 currentUpdateOperation];
      v79 = [(SUSettingsStatefulUIManager *)v159 auxiliaryOperations];
      v77 = &v21;
      buf = v161;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v161, v115, v111, v112, v100, v101, v102, v103, v104, v85, v86, v87, v88, v89, v91, v94, v96, v84, v76, v82, v81, v80, [(NSMutableSet *)v79 count]);
      _os_log_impl(&dword_26AC94000, log, v109[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unschedule an update without having the current download object.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      if (v142)
      {
        MEMORY[0x277D82BD8](v143);
      }

      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v86);
      if (v146)
      {
        MEMORY[0x277D82BD8](v147);
      }

      if (v148)
      {
        MEMORY[0x277D82BD8](v149);
      }

      if (v150)
      {
        MEMORY[0x277D82BD8](v151);
      }

      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v101);
      if (v152)
      {
        MEMORY[0x277D82BD8](v153);
      }

      if (v154)
      {
        MEMORY[0x277D82BD8](v155);
      }

      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](v110);
      obj = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v145, obj);
      objc_storeStrong(&v156, obj);
    }

    objc_storeStrong(oslog, 0);
  }

  *MEMORY[0x277D85DE8];
}

void __76__SUSettingsStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation__block_invoke(uint64_t a1, char a2, id obj)
{
  v59 = &v77;
  v58 = a1;
  v57 = "[SUSettingsStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation]_block_invoke";
  v82 = *MEMORY[0x277D85DE8];
  v80 = a1;
  v79 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v77 = v58;
  v56 = [*(v58 + 32) log];
  oslog = [v56 oslog];
  MEMORY[0x277D82BD8](v56);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v51 = type;
    v52 = SUSettingsUIStateToString([*(v58 + 32) currentState]);
    v53 = MEMORY[0x277D82BE0](v52);
    v74 = v53;
    v54 = [*(v58 + 32) currentState];
    v55 = [*(v58 + 32) delegate];
    v72 = 0;
    v70 = 0;
    if (v55)
    {
      v73 = [*(v58 + 32) delegate];
      v48 = 1;
      v72 = 1;
      v3 = objc_opt_class();
      v71 = NSStringFromClass(v3);
      v70 = 1;
      v49 = v71;
    }

    else
    {
      v49 = @"(null)";
    }

    v42 = v49;
    v43 = [*(v58 + 32) delegate];
    v44 = [*(v58 + 32) scanError];
    v45 = [*(v58 + 32) preferredStatefulDescriptor];
    v46 = [*(v58 + 32) alternateStatefulDescriptor];
    v47 = [*(v58 + 32) currentDownload];
    v68 = 0;
    v66 = 0;
    v64 = 0;
    if (v47)
    {
      v69 = [*(v58 + 32) currentDownload];
      v40 = 1;
      v68 = 1;
      v67 = [v69 descriptor];
      v66 = 1;
      v65 = [v67 humanReadableUpdateName];
      v64 = 1;
      v41 = v65;
    }

    else
    {
      v41 = @"(null)";
    }

    v27 = v41;
    v28 = [*(v58 + 32) currentDownload];
    v4 = [*(v58 + 32) performThirdPartyScan];
    v34 = "NO";
    v5 = "YES";
    v35 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v29 = v5;
    v6 = [*(v58 + 32) isTargetedUpdateScheduledForAutoInstall];
    v7 = v35;
    if ((v6 & 1) == 0)
    {
      v7 = v34;
    }

    v30 = v7;
    v8 = [*(v58 + 32) hidingPreferredDescriptor];
    v9 = v35;
    if ((v8 & 1) == 0)
    {
      v9 = v34;
    }

    v31 = v9;
    v32 = [*(*(v58 + 32) + 256) humanReadableUpdateName];
    v33 = MEMORY[0x277D82BE0](v32);
    v63 = v33;
    v10 = [*(v58 + 32) hidingAlternateDescriptor];
    v11 = v35;
    if ((v10 & 1) == 0)
    {
      v11 = v34;
    }

    v36 = v11;
    v37 = [*(*(v58 + 32) + 264) humanReadableUpdateName];
    v38 = MEMORY[0x277D82BE0](v37);
    v62 = v38;
    v39 = [*(v58 + 32) enrolledBetaProgram];
    v60 = 0;
    if (v39)
    {
      v61 = [*(v58 + 32) enrolledBetaProgram];
      v60 = 1;
      v26 = [v61 programID];
    }

    else
    {
      v26 = 0;
    }

    v17 = v26;
    v25 = [*(v58 + 32) betaPrograms];
    v18 = [v25 count];
    v24 = [*(v58 + 32) currentFullScanOperation];
    v23 = [*(v58 + 32) currentRefreshScanOperation];
    v22 = [*(v58 + 32) currentUpdateOperation];
    v21 = [*(v58 + 32) auxiliaryOperations];
    v12 = [v21 count];
    v13 = "Failure";
    if (v79)
    {
      v13 = "Success";
    }

    v14 = v59[1];
    v19 = &v15;
    buf = v81;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_34_8_66(v81, v57, v53, v54, v42, v43, v44, v45, v46, v27, v28, v29, v30, v31, v33, v36, v38, v17, v18, v24, v23, v22, v12, v13, v14);
    _os_log_impl(&dword_26AC94000, log, v51[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUnschedule targeted update automatic installation: %{public}s; error: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v28);
    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v43);
    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v52);
    obja = 0;
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v63, obja);
    objc_storeStrong(&v74, obja);
  }

  objc_storeStrong(&oslog, 0);
  [*(*(v58 + 32) + 208) removeObject:*(v58 + 40)];
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isPerformingFullScan
{
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  v4 = self->_currentFullScanOperation != 0;
  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  return v4;
}

- (BOOL)isPerformingRefresh
{
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  v4 = self->_currentRefreshScanOperation != 0;
  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  return v4;
}

- (BOOL)isPerformingUpdate
{
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  v4 = self->_currentUpdateOperation != 0;
  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  return v4;
}

- (void)enrollInBetaUpdatesProgram:(id)a3 withPurgeConfirmation:(id)a4 completionHandler:(id)a5
{
  obj = a4;
  v330 = a5;
  v331 = "[SUSettingsStatefulUIManager enrollInBetaUpdatesProgram:withPurgeConfirmation:completionHandler:]";
  v426[29] = *MEMORY[0x277D85DE8];
  v422 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v420 = 0;
  objc_storeStrong(&v420, obj);
  v419 = 0;
  objc_storeStrong(&v419, v330);
  v328 = _os_feature_enabled_impl();
  if (v328)
  {
    v327 = [(SUSettingsStatefulUIManager *)v422 currentState];
    if (v327 > 1)
    {
      v258 = [(SUSettingsStatefulUIManager *)v422 currentSeedingDevice];
      v257 = v258;
      MEMORY[0x277D82BD8](v257);
      if (v257)
      {
        v188 = [(SUSettingsStatefulUIManager *)v422 betaPrograms];
        v186 = v188;
        v382 = 0;
        v187 = 1;
        if (v186)
        {
          v185 = [(SUSettingsStatefulUIManager *)v422 betaPrograms];
          v383 = v185;
          v382 = 1;
          v184 = [v383 count];
          v187 = v184 == 0;
        }

        v183 = v187;
        if (v382)
        {
          MEMORY[0x277D82BD8](v383);
        }

        MEMORY[0x277D82BD8](v186);
        if (v183)
        {
          v182 = [(SUSettingsStatefulUIManager *)v422 log];
          v180 = v182;
          v181 = [v180 oslog];
          v381 = v181;
          MEMORY[0x277D82BD8](v180);
          v380 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
          {
            v177 = v381;
            *v178 = v380;
            v179 = [(SUSettingsStatefulUIManager *)v422 currentState];
            v176 = SUSettingsUIStateToString(v179);
            v173 = v176;
            v174 = MEMORY[0x277D82BE0](v173);
            v379 = v174;
            v175 = [(SUSettingsStatefulUIManager *)v422 currentState];
            v172 = [(SUSettingsStatefulUIManager *)v422 delegate];
            v171 = v172;
            v377 = 0;
            v375 = 0;
            if (v171)
            {
              v170 = [(SUSettingsStatefulUIManager *)v422 delegate];
              v378 = v170;
              v377 = 1;
              v169 = objc_opt_class();
              v168 = NSStringFromClass(v169);
              v376 = v168;
              v375 = 1;
              v167 = v376;
            }

            else
            {
              v167 = @"(null)";
            }

            v165 = v167;
            v166 = [(SUSettingsStatefulUIManager *)v422 delegate];
            v163 = v166;
            v164 = [(SUSettingsStatefulUIManager *)v422 scanError];
            v161 = v164;
            v162 = [(SUSettingsStatefulUIManager *)v422 preferredStatefulDescriptor];
            v159 = v162;
            v160 = [(SUSettingsStatefulUIManager *)v422 alternateStatefulDescriptor];
            v157 = v160;
            v158 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
            v156 = v158;
            v373 = 0;
            v371 = 0;
            v369 = 0;
            if (v156)
            {
              v155 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
              v374 = v155;
              v373 = 1;
              v154 = [v374 descriptor];
              v372 = v154;
              v371 = 1;
              v153 = [v372 humanReadableUpdateName];
              v370 = v153;
              v369 = 1;
              v152 = v370;
            }

            else
            {
              v152 = @"(null)";
            }

            v150 = v152;
            v151 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
            v148 = v151;
            v149 = [(SUSettingsStatefulUIManager *)v422 performThirdPartyScan];
            v13 = "YES";
            if (!v149)
            {
              v13 = "NO";
            }

            v146 = v13;
            v147 = [(SUSettingsStatefulUIManager *)v422 isTargetedUpdateScheduledForAutoInstall];
            v14 = "YES";
            if (!v147)
            {
              v14 = "NO";
            }

            v144 = v14;
            v145 = [(SUSettingsStatefulUIManager *)v422 hidingPreferredDescriptor];
            v15 = "YES";
            if (!v145)
            {
              v15 = "NO";
            }

            v142 = v15;
            v143 = [(SUSettingsStatefulDescriptor *)v422->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
            v139 = v143;
            v140 = MEMORY[0x277D82BE0](v139);
            v368 = v140;
            v141 = [(SUSettingsStatefulUIManager *)v422 hidingAlternateDescriptor];
            v16 = "YES";
            if (!v141)
            {
              v16 = "NO";
            }

            v137 = v16;
            v138 = [(SUSettingsStatefulDescriptor *)v422->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
            v134 = v138;
            v135 = MEMORY[0x277D82BE0](v134);
            v367 = v135;
            v136 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
            v133 = v136;
            v365 = 0;
            if (v133)
            {
              v132 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
              v366 = v132;
              v365 = 1;
              v131 = [v366 programID];
              v130 = v131;
            }

            else
            {
              v130 = 0;
            }

            v128 = v130;
            v129 = [(SUSettingsStatefulUIManager *)v422 betaPrograms];
            v126 = v129;
            v127 = [v126 count];
            v125 = [(SUSettingsStatefulUIManager *)v422 currentFullScanOperation];
            v123 = v125;
            v124 = [(SUSettingsStatefulUIManager *)v422 currentRefreshScanOperation];
            v121 = v124;
            v122 = [(SUSettingsStatefulUIManager *)v422 currentUpdateOperation];
            v119 = v122;
            v120 = [(SUSettingsStatefulUIManager *)v422 auxiliaryOperations];
            v117 = v120;
            v118 = [v117 count];
            v116 = [location[0] programID];
            v114 = &v23;
            v115 = v424;
            __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v424, v331, v174, v175, v165, v163, v161, v159, v157, v150, v148, v146, v144, v142, v140, v137, v135, v130, v127, v123, v121, v119, v118, v116, location[0]);
            _os_log_impl(&dword_26AC94000, v177, v178[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not register to the beta progra %ld (%p) as no beta programs have been discovered by the Stateful UI. Attempts to perform a full re-scan.", v115, 0xF2u);
            MEMORY[0x277D82BD8](v117);
            MEMORY[0x277D82BD8](v119);
            MEMORY[0x277D82BD8](v121);
            MEMORY[0x277D82BD8](v123);
            MEMORY[0x277D82BD8](v126);
            if (v365)
            {
              MEMORY[0x277D82BD8](v366);
            }

            MEMORY[0x277D82BD8](v133);
            MEMORY[0x277D82BD8](v134);
            MEMORY[0x277D82BD8](v139);
            MEMORY[0x277D82BD8](v148);
            if (v369)
            {
              MEMORY[0x277D82BD8](v370);
            }

            if (v371)
            {
              MEMORY[0x277D82BD8](v372);
            }

            if (v373)
            {
              MEMORY[0x277D82BD8](v374);
            }

            MEMORY[0x277D82BD8](v156);
            MEMORY[0x277D82BD8](v157);
            MEMORY[0x277D82BD8](v159);
            MEMORY[0x277D82BD8](v161);
            MEMORY[0x277D82BD8](v163);
            if (v375)
            {
              MEMORY[0x277D82BD8](v376);
            }

            if (v377)
            {
              MEMORY[0x277D82BD8](v378);
            }

            MEMORY[0x277D82BD8](v171);
            MEMORY[0x277D82BD8](v173);
            objc_storeStrong(&v367, 0);
            objc_storeStrong(&v368, 0);
            objc_storeStrong(&v379, 0);
          }

          objc_storeStrong(&v381, 0);
          [(SUSettingsStatefulUIManager *)v422 checkForAvailableUpdates];
          v418 = 1;
        }

        else
        {
          if (!location[0])
          {
            v113 = [(SUSettingsStatefulUIManager *)v422 betaPrograms];
            v111 = v113;
            v112 = [v111 firstObject];
            v17 = v112;
            v18 = location[0];
            location[0] = v17;
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v111);
          }

          v110 = MEMORY[0x277D82BE0](v422->_currentDownload);
          objc_sync_enter(v110);
          if (v422->_currentDownload)
          {
            v101 = [(SUSettingsStatefulUIManager *)v422 log];
            v99 = v101;
            v100 = [v99 oslog];
            v356 = v100;
            MEMORY[0x277D82BD8](v99);
            v355 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
            {
              v96 = v356;
              *v97 = v355;
              v98 = [(SUSettingsStatefulUIManager *)v422 currentState];
              v95 = SUSettingsUIStateToString(v98);
              v92 = v95;
              v93 = MEMORY[0x277D82BE0](v92);
              v354 = v93;
              v94 = [(SUSettingsStatefulUIManager *)v422 currentState];
              v352 = 0;
              v350 = 0;
              v91 = [(SUSettingsStatefulUIManager *)v422 delegate];
              v90 = v91;
              if (v90)
              {
                v89 = [(SUSettingsStatefulUIManager *)v422 delegate];
                v353 = v89;
                v352 = 1;
                v88 = objc_opt_class();
                v87 = NSStringFromClass(v88);
                v351 = v87;
                v350 = 1;
                v86 = v351;
              }

              else
              {
                v86 = @"(null)";
              }

              v84 = v86;
              v85 = [(SUSettingsStatefulUIManager *)v422 delegate];
              v82 = v85;
              v83 = [(SUSettingsStatefulUIManager *)v422 scanError];
              v80 = v83;
              v81 = [(SUSettingsStatefulUIManager *)v422 preferredStatefulDescriptor];
              v78 = v81;
              v79 = [(SUSettingsStatefulUIManager *)v422 alternateStatefulDescriptor];
              v76 = v79;
              v348 = 0;
              v346 = 0;
              v344 = 0;
              v77 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
              v75 = v77;
              if (v75)
              {
                v74 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
                v349 = v74;
                v348 = 1;
                v73 = [v349 descriptor];
                v347 = v73;
                v346 = 1;
                v72 = [v347 humanReadableUpdateName];
                v345 = v72;
                v344 = 1;
                v71 = v345;
              }

              else
              {
                v71 = @"(null)";
              }

              v69 = v71;
              v70 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
              v67 = v70;
              v68 = [(SUSettingsStatefulUIManager *)v422 performThirdPartyScan];
              v19 = "YES";
              if (!v68)
              {
                v19 = "NO";
              }

              v65 = v19;
              v66 = [(SUSettingsStatefulUIManager *)v422 isTargetedUpdateScheduledForAutoInstall];
              v20 = "YES";
              if (!v66)
              {
                v20 = "NO";
              }

              v63 = v20;
              v64 = [(SUSettingsStatefulUIManager *)v422 hidingPreferredDescriptor];
              v21 = "YES";
              if (!v64)
              {
                v21 = "NO";
              }

              v61 = v21;
              v62 = [(SUSettingsStatefulDescriptor *)v422->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
              v58 = v62;
              v59 = MEMORY[0x277D82BE0](v58);
              v343 = v59;
              v60 = [(SUSettingsStatefulUIManager *)v422 hidingAlternateDescriptor];
              v22 = "YES";
              if (!v60)
              {
                v22 = "NO";
              }

              v56 = v22;
              v57 = [(SUSettingsStatefulDescriptor *)v422->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
              v53 = v57;
              v54 = MEMORY[0x277D82BE0](v53);
              v342 = v54;
              v340 = 0;
              v55 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
              v52 = v55;
              if (v52)
              {
                v51 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
                v341 = v51;
                v340 = 1;
                v50 = [v341 programID];
                v49 = v50;
              }

              else
              {
                v49 = 0;
              }

              v47 = v49;
              v48 = [(SUSettingsStatefulUIManager *)v422 betaPrograms];
              v45 = v48;
              v46 = [v45 count];
              v44 = [(SUSettingsStatefulUIManager *)v422 currentFullScanOperation];
              v42 = v44;
              v43 = [(SUSettingsStatefulUIManager *)v422 currentRefreshScanOperation];
              v40 = v43;
              v41 = [(SUSettingsStatefulUIManager *)v422 currentUpdateOperation];
              v38 = v41;
              v39 = [(SUSettingsStatefulUIManager *)v422 auxiliaryOperations];
              v36 = v39;
              v37 = [v36 count];
              v35 = [location[0] programID];
              v33 = &v23;
              v34 = v423;
              __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v423, v331, v93, v94, v84, v82, v80, v78, v76, v69, v67, v65, v63, v61, v59, v56, v54, v49, v46, v42, v40, v38, v37, v35, location[0]);
              _os_log_impl(&dword_26AC94000, v96, v97[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA targeted update exists when attempting to enroll in beta program: %ld (%p). Asking to purge the targeted update.", v34, 0xF2u);
              MEMORY[0x277D82BD8](v36);
              MEMORY[0x277D82BD8](v38);
              MEMORY[0x277D82BD8](v40);
              MEMORY[0x277D82BD8](v42);
              MEMORY[0x277D82BD8](v45);
              if (v340)
              {
                MEMORY[0x277D82BD8](v341);
              }

              MEMORY[0x277D82BD8](v52);
              MEMORY[0x277D82BD8](v53);
              MEMORY[0x277D82BD8](v58);
              MEMORY[0x277D82BD8](v67);
              if (v344)
              {
                MEMORY[0x277D82BD8](v345);
              }

              if (v346)
              {
                MEMORY[0x277D82BD8](v347);
              }

              if (v348)
              {
                MEMORY[0x277D82BD8](v349);
              }

              MEMORY[0x277D82BD8](v75);
              MEMORY[0x277D82BD8](v76);
              MEMORY[0x277D82BD8](v78);
              MEMORY[0x277D82BD8](v80);
              MEMORY[0x277D82BD8](v82);
              if (v350)
              {
                MEMORY[0x277D82BD8](v351);
              }

              if (v352)
              {
                MEMORY[0x277D82BD8](v353);
              }

              MEMORY[0x277D82BD8](v90);
              MEMORY[0x277D82BD8](v92);
              objc_storeStrong(&v342, 0);
              objc_storeStrong(&v343, 0);
              objc_storeStrong(&v354, 0);
            }

            objc_storeStrong(&v356, 0);
            v32 = [MEMORY[0x277D643F8] sharedCore];
            v30 = v32;
            v31 = [v30 selectDelegateCallbackQueue:v422->_delegateCallbackQueue];
            v29 = v31;
            v28 = &v332;
            v332 = MEMORY[0x277D85DD0];
            v333 = -1073741824;
            v334 = 0;
            v335 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_387;
            v336 = &unk_279CB9708;
            v24 = v339;
            v339[0] = MEMORY[0x277D82BE0](v420);
            v25 = (v28 + 32);
            v337 = MEMORY[0x277D82BE0](v422);
            v26 = (v28 + 40);
            v338 = MEMORY[0x277D82BE0](location[0]);
            v27 = (v28 + 56);
            v339[1] = MEMORY[0x277D82BE0](v419);
            dispatch_async(v29, v28);
            MEMORY[0x277D82BD8](v29);
            MEMORY[0x277D82BD8](v30);
            objc_storeStrong(v27, 0);
            objc_storeStrong(v26, 0);
            objc_storeStrong(v25, 0);
            objc_storeStrong(v24, 0);
            v418 = 0;
          }

          else
          {
            v109 = [MEMORY[0x277D643F8] sharedCore];
            v107 = v109;
            v108 = [v107 selectDelegateCallbackQueue:v422->_workQueue];
            queue = v108;
            block = &v357;
            v357 = MEMORY[0x277D85DD0];
            v358 = -1073741824;
            v359 = 0;
            v360 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke;
            v361 = &unk_279CB96B8;
            v102 = &v362;
            v362 = MEMORY[0x277D82BE0](v422);
            v103 = &v363;
            v363 = MEMORY[0x277D82BE0](location[0]);
            v104 = &v364;
            v364 = MEMORY[0x277D82BE0](v419);
            dispatch_async(queue, &v357);
            MEMORY[0x277D82BD8](queue);
            MEMORY[0x277D82BD8](v107);
            v418 = 1;
            objc_storeStrong(&v364, 0);
            objc_storeStrong(&v363, 0);
            objc_storeStrong(&v362, 0);
          }

          objc_sync_exit(v110);
          MEMORY[0x277D82BD8](v110);
          if (!v418)
          {
            v418 = 0;
          }
        }
      }

      else
      {
        v256 = [(SUSettingsStatefulUIManager *)v422 log];
        v254 = v256;
        v255 = [v254 oslog];
        v400 = v255;
        MEMORY[0x277D82BD8](v254);
        v399 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
        {
          v251 = v400;
          *v252 = v399;
          v253 = [(SUSettingsStatefulUIManager *)v422 currentState];
          v250 = SUSettingsUIStateToString(v253);
          v247 = v250;
          v248 = MEMORY[0x277D82BE0](v247);
          v398 = v248;
          v249 = [(SUSettingsStatefulUIManager *)v422 currentState];
          v246 = [(SUSettingsStatefulUIManager *)v422 delegate];
          v245 = v246;
          v396 = 0;
          v394 = 0;
          if (v245)
          {
            v244 = [(SUSettingsStatefulUIManager *)v422 delegate];
            v397 = v244;
            v396 = 1;
            v243 = objc_opt_class();
            v242 = NSStringFromClass(v243);
            v395 = v242;
            v394 = 1;
            v241 = v395;
          }

          else
          {
            v241 = @"(null)";
          }

          v239 = v241;
          v240 = [(SUSettingsStatefulUIManager *)v422 delegate];
          v237 = v240;
          v238 = [(SUSettingsStatefulUIManager *)v422 scanError];
          v235 = v238;
          v236 = [(SUSettingsStatefulUIManager *)v422 preferredStatefulDescriptor];
          v233 = v236;
          v234 = [(SUSettingsStatefulUIManager *)v422 alternateStatefulDescriptor];
          v231 = v234;
          v232 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
          v230 = v232;
          v392 = 0;
          v390 = 0;
          v388 = 0;
          if (v230)
          {
            v229 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
            v393 = v229;
            v392 = 1;
            v228 = [v393 descriptor];
            v391 = v228;
            v390 = 1;
            v227 = [v391 humanReadableUpdateName];
            v389 = v227;
            v388 = 1;
            v226 = v389;
          }

          else
          {
            v226 = @"(null)";
          }

          v224 = v226;
          v225 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
          v222 = v225;
          v223 = [(SUSettingsStatefulUIManager *)v422 performThirdPartyScan];
          v9 = "YES";
          if (!v223)
          {
            v9 = "NO";
          }

          v220 = v9;
          v221 = [(SUSettingsStatefulUIManager *)v422 isTargetedUpdateScheduledForAutoInstall];
          v10 = "YES";
          if (!v221)
          {
            v10 = "NO";
          }

          v218 = v10;
          v219 = [(SUSettingsStatefulUIManager *)v422 hidingPreferredDescriptor];
          v11 = "YES";
          if (!v219)
          {
            v11 = "NO";
          }

          v216 = v11;
          v217 = [(SUSettingsStatefulDescriptor *)v422->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
          v213 = v217;
          v214 = MEMORY[0x277D82BE0](v213);
          v387 = v214;
          v215 = [(SUSettingsStatefulUIManager *)v422 hidingAlternateDescriptor];
          v12 = "YES";
          if (!v215)
          {
            v12 = "NO";
          }

          v211 = v12;
          v212 = [(SUSettingsStatefulDescriptor *)v422->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
          v208 = v212;
          v209 = MEMORY[0x277D82BE0](v208);
          v386 = v209;
          v210 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
          v207 = v210;
          v384 = 0;
          if (v207)
          {
            v206 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
            v385 = v206;
            v384 = 1;
            v205 = [v385 programID];
            v204 = v205;
          }

          else
          {
            v204 = 0;
          }

          v202 = v204;
          v203 = [(SUSettingsStatefulUIManager *)v422 betaPrograms];
          v200 = v203;
          v201 = [v200 count];
          v199 = [(SUSettingsStatefulUIManager *)v422 currentFullScanOperation];
          v197 = v199;
          v198 = [(SUSettingsStatefulUIManager *)v422 currentRefreshScanOperation];
          v195 = v198;
          v196 = [(SUSettingsStatefulUIManager *)v422 currentUpdateOperation];
          v193 = v196;
          v194 = [(SUSettingsStatefulUIManager *)v422 auxiliaryOperations];
          v191 = v194;
          v192 = [v191 count];
          v189 = &v23;
          v190 = v425;
          __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v425, v331, v248, v249, v239, v237, v235, v233, v231, v224, v222, v220, v218, v216, v214, v211, v209, v204, v201, v197, v195, v193, v192);
          _os_log_impl(&dword_26AC94000, v251, v252[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not enroll in beta updates as we have not discovered a seeding device.", v190, 0xDEu);
          MEMORY[0x277D82BD8](v191);
          MEMORY[0x277D82BD8](v193);
          MEMORY[0x277D82BD8](v195);
          MEMORY[0x277D82BD8](v197);
          MEMORY[0x277D82BD8](v200);
          if (v384)
          {
            MEMORY[0x277D82BD8](v385);
          }

          MEMORY[0x277D82BD8](v207);
          MEMORY[0x277D82BD8](v208);
          MEMORY[0x277D82BD8](v213);
          MEMORY[0x277D82BD8](v222);
          if (v388)
          {
            MEMORY[0x277D82BD8](v389);
          }

          if (v390)
          {
            MEMORY[0x277D82BD8](v391);
          }

          if (v392)
          {
            MEMORY[0x277D82BD8](v393);
          }

          MEMORY[0x277D82BD8](v230);
          MEMORY[0x277D82BD8](v231);
          MEMORY[0x277D82BD8](v233);
          MEMORY[0x277D82BD8](v235);
          MEMORY[0x277D82BD8](v237);
          if (v394)
          {
            MEMORY[0x277D82BD8](v395);
          }

          if (v396)
          {
            MEMORY[0x277D82BD8](v397);
          }

          MEMORY[0x277D82BD8](v245);
          MEMORY[0x277D82BD8](v247);
          objc_storeStrong(&v386, 0);
          objc_storeStrong(&v387, 0);
          objc_storeStrong(&v398, 0);
        }

        objc_storeStrong(&v400, 0);
        v418 = 1;
      }
    }

    else
    {
      v326 = [(SUSettingsStatefulUIManager *)v422 log];
      v324 = v326;
      v325 = [v324 oslog];
      oslog = v325;
      MEMORY[0x277D82BD8](v324);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        *v322 = type;
        v323 = [(SUSettingsStatefulUIManager *)v422 currentState];
        v320 = SUSettingsUIStateToString(v323);
        v317 = v320;
        v318 = MEMORY[0x277D82BE0](v317);
        v415 = v318;
        v319 = [(SUSettingsStatefulUIManager *)v422 currentState];
        v316 = [(SUSettingsStatefulUIManager *)v422 delegate];
        v315 = v316;
        v413 = 0;
        v411 = 0;
        if (v315)
        {
          v314 = [(SUSettingsStatefulUIManager *)v422 delegate];
          v414 = v314;
          v413 = 1;
          aClass = objc_opt_class();
          v312 = NSStringFromClass(aClass);
          v412 = v312;
          v411 = 1;
          v311 = v412;
        }

        else
        {
          v311 = @"(null)";
        }

        v309 = v311;
        v310 = [(SUSettingsStatefulUIManager *)v422 delegate];
        v307 = v310;
        v308 = [(SUSettingsStatefulUIManager *)v422 scanError];
        v305 = v308;
        v306 = [(SUSettingsStatefulUIManager *)v422 preferredStatefulDescriptor];
        v303 = v306;
        v304 = [(SUSettingsStatefulUIManager *)v422 alternateStatefulDescriptor];
        v301 = v304;
        v302 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
        v300 = v302;
        v409 = 0;
        v407 = 0;
        v405 = 0;
        if (v300)
        {
          v299 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
          v410 = v299;
          v409 = 1;
          v298 = [v410 descriptor];
          v408 = v298;
          v407 = 1;
          v297 = [v408 humanReadableUpdateName];
          v406 = v297;
          v405 = 1;
          v296 = v406;
        }

        else
        {
          v296 = @"(null)";
        }

        v294 = v296;
        v295 = [(SUSettingsStatefulUIManager *)v422 currentDownload];
        v292 = v295;
        v293 = [(SUSettingsStatefulUIManager *)v422 performThirdPartyScan];
        v5 = "YES";
        if (!v293)
        {
          v5 = "NO";
        }

        v290 = v5;
        v291 = [(SUSettingsStatefulUIManager *)v422 isTargetedUpdateScheduledForAutoInstall];
        v6 = "YES";
        if (!v291)
        {
          v6 = "NO";
        }

        v288 = v6;
        v289 = [(SUSettingsStatefulUIManager *)v422 hidingPreferredDescriptor];
        v7 = "YES";
        if (!v289)
        {
          v7 = "NO";
        }

        v286 = v7;
        v287 = [(SUSettingsStatefulDescriptor *)v422->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v283 = v287;
        v284 = MEMORY[0x277D82BE0](v283);
        v404 = v284;
        v285 = [(SUSettingsStatefulUIManager *)v422 hidingAlternateDescriptor];
        v8 = "YES";
        if (!v285)
        {
          v8 = "NO";
        }

        v281 = v8;
        v282 = [(SUSettingsStatefulDescriptor *)v422->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v278 = v282;
        v279 = MEMORY[0x277D82BE0](v278);
        v403 = v279;
        v280 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
        v277 = v280;
        v401 = 0;
        if (v277)
        {
          v276 = [(SUSettingsStatefulUIManager *)v422 enrolledBetaProgram];
          v402 = v276;
          v401 = 1;
          v275 = [v402 programID];
          v274 = v275;
        }

        else
        {
          v274 = 0;
        }

        v272 = v274;
        v273 = [(SUSettingsStatefulUIManager *)v422 betaPrograms];
        v270 = v273;
        v271 = [v270 count];
        v269 = [(SUSettingsStatefulUIManager *)v422 currentFullScanOperation];
        v267 = v269;
        v268 = [(SUSettingsStatefulUIManager *)v422 currentRefreshScanOperation];
        v265 = v268;
        v266 = [(SUSettingsStatefulUIManager *)v422 currentUpdateOperation];
        v263 = v266;
        v264 = [(SUSettingsStatefulUIManager *)v422 auxiliaryOperations];
        v261 = v264;
        v262 = [v261 count];
        v259 = &v23;
        buf = v426;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v426, v331, v318, v319, v309, v307, v305, v303, v301, v294, v292, v290, v288, v286, v284, v281, v279, v274, v271, v267, v265, v263, v262);
        _os_log_impl(&dword_26AC94000, log, v322[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not enroll in beta updates as we are currently checking for updates.", buf, 0xDEu);
        MEMORY[0x277D82BD8](v261);
        MEMORY[0x277D82BD8](v263);
        MEMORY[0x277D82BD8](v265);
        MEMORY[0x277D82BD8](v267);
        MEMORY[0x277D82BD8](v270);
        if (v401)
        {
          MEMORY[0x277D82BD8](v402);
        }

        MEMORY[0x277D82BD8](v277);
        MEMORY[0x277D82BD8](v278);
        MEMORY[0x277D82BD8](v283);
        MEMORY[0x277D82BD8](v292);
        if (v405)
        {
          MEMORY[0x277D82BD8](v406);
        }

        if (v407)
        {
          MEMORY[0x277D82BD8](v408);
        }

        if (v409)
        {
          MEMORY[0x277D82BD8](v410);
        }

        MEMORY[0x277D82BD8](v300);
        MEMORY[0x277D82BD8](v301);
        MEMORY[0x277D82BD8](v303);
        MEMORY[0x277D82BD8](v305);
        MEMORY[0x277D82BD8](v307);
        if (v411)
        {
          MEMORY[0x277D82BD8](v412);
        }

        if (v413)
        {
          MEMORY[0x277D82BD8](v414);
        }

        MEMORY[0x277D82BD8](v315);
        MEMORY[0x277D82BD8](v317);
        objc_storeStrong(&v403, 0);
        objc_storeStrong(&v404, 0);
        objc_storeStrong(&v415, 0);
      }

      objc_storeStrong(&oslog, 0);
      v418 = 1;
    }
  }

  else
  {
    v418 = 1;
  }

  objc_storeStrong(&v419, 0);
  objc_storeStrong(&v420, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_387(void *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v5 = a1[6];
  v2 = a1[4];
  v3 = *(v2 + 104);
  v4 = a1[5];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_2;
  v9 = &unk_279CB96E0;
  v10 = MEMORY[0x277D82BE0](a1[4]);
  v11 = MEMORY[0x277D82BE0](a1[5]);
  v12[0] = MEMORY[0x277D82BE0](a1[7]);
  (*(v5 + 16))(v5, v2, v3, v4);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_2(NSObject *a1, uint64_t a2)
{
  v76 = a1;
  v77 = "[SUSettingsStatefulUIManager enrollInBetaUpdatesProgram:withPurgeConfirmation:completionHandler:]_block_invoke_2";
  v114 = *MEMORY[0x277D85DE8];
  v112 = a1;
  v111 = a2;
  oslog[1] = a1;
  v75 = [(objc_class *)a1[4].isa log];
  oslog[0] = [v75 oslog];
  MEMORY[0x277D82BD8](v75);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v70 = type;
    v71 = SUSettingsUIStateToString([(objc_class *)v76[4].isa currentState]);
    v72 = MEMORY[0x277D82BE0](v71);
    v108 = v72;
    v73 = [(objc_class *)v76[4].isa currentState];
    v74 = [(objc_class *)v76[4].isa delegate];
    v106 = 0;
    v104 = 0;
    if (v74)
    {
      v107 = [(objc_class *)v76[4].isa delegate];
      v67 = 1;
      v106 = 1;
      v2 = objc_opt_class();
      v105 = NSStringFromClass(v2);
      v104 = 1;
      v68 = v105;
    }

    else
    {
      v68 = @"(null)";
    }

    v61 = v68;
    v62 = [(objc_class *)v76[4].isa delegate];
    v63 = [(objc_class *)v76[4].isa scanError];
    v64 = [(objc_class *)v76[4].isa preferredStatefulDescriptor];
    v65 = [(objc_class *)v76[4].isa alternateStatefulDescriptor];
    v66 = [(objc_class *)v76[4].isa currentDownload];
    v102 = 0;
    v100 = 0;
    v98 = 0;
    if (v66)
    {
      v103 = [(objc_class *)v76[4].isa currentDownload];
      v59 = 1;
      v102 = 1;
      v101 = [v103 descriptor];
      v100 = 1;
      v99 = [v101 humanReadableUpdateName];
      v98 = 1;
      v60 = v99;
    }

    else
    {
      v60 = @"(null)";
    }

    v46 = v60;
    v47 = [(objc_class *)v76[4].isa currentDownload];
    v3 = [(objc_class *)v76[4].isa performThirdPartyScan];
    v53 = "NO";
    v4 = "YES";
    v54 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v48 = v4;
    v5 = [(objc_class *)v76[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v54;
    if ((v5 & 1) == 0)
    {
      v6 = v53;
    }

    v49 = v6;
    v7 = [(objc_class *)v76[4].isa hidingPreferredDescriptor];
    v8 = v54;
    if ((v7 & 1) == 0)
    {
      v8 = v53;
    }

    v50 = v8;
    v51 = [*(v76[4].isa + 32) humanReadableUpdateName];
    v52 = MEMORY[0x277D82BE0](v51);
    v97 = v52;
    v9 = [(objc_class *)v76[4].isa hidingAlternateDescriptor];
    v10 = v54;
    if ((v9 & 1) == 0)
    {
      v10 = v53;
    }

    v55 = v10;
    v56 = [*(v76[4].isa + 33) humanReadableUpdateName];
    v57 = MEMORY[0x277D82BE0](v56);
    v96 = v57;
    v58 = [(objc_class *)v76[4].isa enrolledBetaProgram];
    v94 = 0;
    if (v58)
    {
      v95 = [(objc_class *)v76[4].isa enrolledBetaProgram];
      v94 = 1;
      v45 = [v95 programID];
    }

    else
    {
      v45 = 0;
    }

    v29 = v45;
    v44 = [(objc_class *)v76[4].isa betaPrograms];
    v30 = [v44 count];
    v43 = [(objc_class *)v76[4].isa currentFullScanOperation];
    v42 = [(objc_class *)v76[4].isa currentRefreshScanOperation];
    v41 = [(objc_class *)v76[4].isa currentUpdateOperation];
    v40 = [(objc_class *)v76[4].isa auxiliaryOperations];
    v31 = [v40 count];
    v39 = [*(v76[4].isa + 13) descriptor];
    v38 = [v39 humanReadableUpdateName];
    v32 = MEMORY[0x277D82BE0](v38);
    v93 = v32;
    v33 = [(objc_class *)v76[5].isa programID];
    isa = v76[5].isa;
    v37 = SUSettingsUserInteractionResponseTypeToString(v111);
    location = MEMORY[0x277D82BE0](v37);
    v35 = &v12;
    buf = v113;
    __os_log_helper_16_2_26_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_0_8_66(v113, v77, v72, v73, v61, v62, v63, v64, v65, v46, v47, v48, v49, v50, v52, v55, v57, v45, v30, v43, v42, v41, v31, v32, v33, isa, location);
    _os_log_impl(&dword_26AC94000, log, v70[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUser responded to the targeted update purge request of %{public}@, for beta program %ld (%p): %{public}@", buf, 0x106u);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v47);
    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](v103);
    }

    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v62);
    if (v104)
    {
      MEMORY[0x277D82BD8](v105);
    }

    if (v106)
    {
      MEMORY[0x277D82BD8](v107);
    }

    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v71);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v93, obj);
    objc_storeStrong(&v96, obj);
    objc_storeStrong(&v97, obj);
    objc_storeStrong(&v108, obj);
  }

  objc_storeStrong(oslog, 0);
  if (v111)
  {
    if (v76[6].isa)
    {
      v24 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v24 selectDelegateCallbackQueue:*(v76[4].isa + 5)];
      block = &v85;
      v85 = MEMORY[0x277D85DD0];
      v86 = -1073741824;
      v87 = 0;
      v88 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_388;
      v89 = &unk_279CB9460;
      v26 = &v91;
      v91 = MEMORY[0x277D82BE0](v76[6].isa);
      v25 = (block + 32);
      v90 = MEMORY[0x277D82BE0](v76[5].isa);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v24);
      v27 = 0;
      objc_storeStrong(v25, 0);
      objc_storeStrong(v26, v27);
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D648D8]);
    v20 = &v84;
    v84 = v11;
    v13 = 1;
    [v11 setNotifyUser:0];
    [v84 setUserRequested:v13 & 1];
    v16 = *(v76[4].isa + 28);
    v14 = v84;
    v15 = &v78;
    v78 = MEMORY[0x277D85DD0];
    v79 = -1073741824;
    v80 = 0;
    v81 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_2_390;
    v82 = &unk_279CB9618;
    v19 = v83;
    v83[0] = MEMORY[0x277D82BE0](v76[4].isa);
    v18 = (v15 + 6);
    v83[2] = MEMORY[0x277D82BE0](v76[6].isa);
    v17 = (v15 + 5);
    v83[1] = MEMORY[0x277D82BE0](v76[5].isa);
    [v16 purgeDownloadWithOptions:v14 withResult:v15];
    v21 = 0;
    objc_storeStrong(v17, 0);
    objc_storeStrong(v18, v21);
    objc_storeStrong(v19, v21);
    objc_storeStrong(v20, v21);
  }

  *MEMORY[0x277D85DE8];
}

uint64_t __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_388(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:9 userInfo:0];
  (*(v3 + 16))(v3, v2);
  return MEMORY[0x277D82BD8](v4);
}

void __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_2_390(NSObject *a1, char a2, id obj)
{
  v69 = a1;
  v68 = "[SUSettingsStatefulUIManager enrollInBetaUpdatesProgram:withPurgeConfirmation:completionHandler:]_block_invoke_2";
  v105 = *MEMORY[0x277D85DE8];
  v103 = a1;
  v102 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = v69;
  v67 = [(objc_class *)v69[4].isa log];
  oslog[0] = [v67 oslog];
  MEMORY[0x277D82BD8](v67);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v62 = type;
    v63 = SUSettingsUIStateToString([(objc_class *)v69[4].isa currentState]);
    v64 = MEMORY[0x277D82BE0](v63);
    v98 = v64;
    v65 = [(objc_class *)v69[4].isa currentState];
    v66 = [(objc_class *)v69[4].isa delegate];
    v96 = 0;
    v94 = 0;
    if (v66)
    {
      v97 = [(objc_class *)v69[4].isa delegate];
      v59 = 1;
      v96 = 1;
      v3 = objc_opt_class();
      v95 = NSStringFromClass(v3);
      v94 = 1;
      v60 = v95;
    }

    else
    {
      v60 = @"(null)";
    }

    v53 = v60;
    v54 = [(objc_class *)v69[4].isa delegate];
    v55 = [(objc_class *)v69[4].isa scanError];
    v56 = [(objc_class *)v69[4].isa preferredStatefulDescriptor];
    v57 = [(objc_class *)v69[4].isa alternateStatefulDescriptor];
    v58 = [(objc_class *)v69[4].isa currentDownload];
    v92 = 0;
    v90 = 0;
    v88 = 0;
    if (v58)
    {
      v93 = [(objc_class *)v69[4].isa currentDownload];
      v51 = 1;
      v92 = 1;
      v91 = [v93 descriptor];
      v90 = 1;
      v89 = [v91 humanReadableUpdateName];
      v88 = 1;
      v52 = v89;
    }

    else
    {
      v52 = @"(null)";
    }

    v38 = v52;
    v39 = [(objc_class *)v69[4].isa currentDownload];
    v4 = [(objc_class *)v69[4].isa performThirdPartyScan];
    v45 = "NO";
    v5 = "YES";
    v46 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v40 = v5;
    v6 = [(objc_class *)v69[4].isa isTargetedUpdateScheduledForAutoInstall];
    v7 = v46;
    if ((v6 & 1) == 0)
    {
      v7 = v45;
    }

    v41 = v7;
    v8 = [(objc_class *)v69[4].isa hidingPreferredDescriptor];
    v9 = v46;
    if ((v8 & 1) == 0)
    {
      v9 = v45;
    }

    v42 = v9;
    v43 = [*(v69[4].isa + 32) humanReadableUpdateName];
    v44 = MEMORY[0x277D82BE0](v43);
    v87 = v44;
    v10 = [(objc_class *)v69[4].isa hidingAlternateDescriptor];
    v11 = v46;
    if ((v10 & 1) == 0)
    {
      v11 = v45;
    }

    v47 = v11;
    v48 = [*(v69[4].isa + 33) humanReadableUpdateName];
    v49 = MEMORY[0x277D82BE0](v48);
    v86 = v49;
    v50 = [(objc_class *)v69[4].isa enrolledBetaProgram];
    v84 = 0;
    if (v50)
    {
      v85 = [(objc_class *)v69[4].isa enrolledBetaProgram];
      v84 = 1;
      v37 = [v85 programID];
    }

    else
    {
      v37 = 0;
    }

    v28 = v37;
    v36 = [(objc_class *)v69[4].isa betaPrograms];
    v29 = [v36 count];
    v35 = [(objc_class *)v69[4].isa currentFullScanOperation];
    v34 = [(objc_class *)v69[4].isa currentRefreshScanOperation];
    v33 = [(objc_class *)v69[4].isa currentUpdateOperation];
    v32 = [(objc_class *)v69[4].isa auxiliaryOperations];
    v12 = [v32 count];
    v30 = &v13;
    buf = v104;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_8_66(v104, v68, v64, v65, v53, v54, v55, v56, v57, v38, v39, v40, v41, v42, v44, v47, v49, v37, v29, v35, v34, v33, v12, v102 & 1, location);
    _os_log_impl(&dword_26AC94000, log, v62[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPurge result: %d; error: %{public}@", buf, 0xEEu);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v39);
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

    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    if (v96)
    {
      MEMORY[0x277D82BD8](v97);
    }

    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v63);
    obja = 0;
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, obja);
    objc_storeStrong(&v98, obja);
  }

  objc_storeStrong(oslog, 0);
  if (v102)
  {
    v16 = [MEMORY[0x277D643F8] sharedCore];
    v15 = [v16 selectDelegateCallbackQueue:*(v69[4].isa + 21)];
    v14 = &v70;
    v70 = MEMORY[0x277D85DD0];
    v71 = -1073741824;
    v72 = 0;
    v73 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_2_392;
    v74 = &unk_279CB96B8;
    v19 = v75;
    v75[0] = MEMORY[0x277D82BE0](v69[4].isa);
    v18 = (v14 + 40);
    v75[1] = MEMORY[0x277D82BE0](v69[5].isa);
    v17 = (v14 + 48);
    v75[2] = MEMORY[0x277D82BE0](v69[6].isa);
    dispatch_async(v15, v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v20 = 0;
    objc_storeStrong(v17, 0);
    objc_storeStrong(v18, v20);
    objc_storeStrong(v19, v20);
    v76 = 0;
  }

  else
  {
    if (v69[6].isa)
    {
      v23 = [MEMORY[0x277D643F8] sharedCore];
      queue = [v23 selectDelegateCallbackQueue:*(v69[4].isa + 5)];
      block = &v77;
      v77 = MEMORY[0x277D85DD0];
      v78 = -1073741824;
      v79 = 0;
      v80 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_391;
      v81 = &unk_279CB9460;
      v25 = &v83;
      v83 = MEMORY[0x277D82BE0](v69[6].isa);
      v24 = (block + 32);
      v82 = MEMORY[0x277D82BE0](v69[5].isa);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v23);
      v26 = 0;
      objc_storeStrong(v24, 0);
      objc_storeStrong(v25, v26);
    }

    v76 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke_391(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:9 userInfo:0];
  (*(v3 + 16))(v3, v2);
  return MEMORY[0x277D82BD8](v4);
}

- (void)unenrollFromBetaUpdatesWithCompletion:(id)a3
{
  v110 = "[SUSettingsStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]";
  v157 = *MEMORY[0x277D85DE8];
  v154 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (_os_feature_enabled_impl())
  {
    if ([(SUSettingsStatefulUIManager *)v154 currentState]> 1)
    {
      v68 = [(SUSettingsStatefulUIManager *)v154 currentSeedingDevice];
      MEMORY[0x277D82BD8](v68);
      if (v68)
      {
        v23 = [MEMORY[0x277D4D310] sharedManager];
        v22 = [(SUSettingsStatefulUIManager *)v154 currentSeedingDevice];
        v21[15] = &v111;
        v111 = MEMORY[0x277D85DD0];
        v112 = -1073741824;
        v113 = 0;
        v114 = __69__SUSettingsStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke;
        v115 = &unk_279CB9780;
        v25 = &v116;
        v116 = MEMORY[0x277D82BE0](v154);
        v24 = &v117;
        v117 = MEMORY[0x277D82BE0](location[0]);
        [v23 unenrollDevice:v22 completion:&v111];
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BD8](v23);
        v26 = 0;
        objc_storeStrong(&v117, 0);
        objc_storeStrong(&v116, 0);
        v152 = 0;
      }

      else
      {
        v67 = [(SUSettingsStatefulUIManager *)v154 log];
        v134 = [(SUCoreLog *)v67 oslog];
        MEMORY[0x277D82BD8](v67);
        v133 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
        {
          v61 = v134;
          *v62 = v133;
          v63 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v154 currentState]);
          v64 = MEMORY[0x277D82BE0](v63);
          v132 = v64;
          v65 = [(SUSettingsStatefulUIManager *)v154 currentState];
          v66 = [(SUSettingsStatefulUIManager *)v154 delegate];
          v130 = 0;
          v128 = 0;
          if (v66)
          {
            v131 = [(SUSettingsStatefulUIManager *)v154 delegate];
            v59 = 1;
            v130 = 1;
            v12 = objc_opt_class();
            v129 = NSStringFromClass(v12);
            v128 = 1;
            v60 = v129;
          }

          else
          {
            v60 = @"(null)";
          }

          v53 = v60;
          v54 = [(SUSettingsStatefulUIManager *)v154 delegate];
          v55 = [(SUSettingsStatefulUIManager *)v154 scanError];
          v56 = [(SUSettingsStatefulUIManager *)v154 preferredStatefulDescriptor];
          v57 = [(SUSettingsStatefulUIManager *)v154 alternateStatefulDescriptor];
          v58 = [(SUSettingsStatefulUIManager *)v154 currentDownload];
          v126 = 0;
          v124 = 0;
          v122 = 0;
          if (v58)
          {
            v127 = [(SUSettingsStatefulUIManager *)v154 currentDownload];
            v51 = 1;
            v126 = 1;
            v125 = [(SUDownload *)v127 descriptor];
            v124 = 1;
            v123 = [(SUDescriptor *)v125 humanReadableUpdateName];
            v122 = 1;
            v52 = v123;
          }

          else
          {
            v52 = @"(null)";
          }

          v38 = v52;
          v39 = [(SUSettingsStatefulUIManager *)v154 currentDownload];
          v13 = [(SUSettingsStatefulUIManager *)v154 performThirdPartyScan];
          v45 = "NO";
          v14 = "YES";
          v46 = "YES";
          if (!v13)
          {
            v14 = "NO";
          }

          v40 = v14;
          v15 = [(SUSettingsStatefulUIManager *)v154 isTargetedUpdateScheduledForAutoInstall];
          v16 = v46;
          if (!v15)
          {
            v16 = v45;
          }

          v41 = v16;
          v17 = [(SUSettingsStatefulUIManager *)v154 hidingPreferredDescriptor];
          v18 = v46;
          if (!v17)
          {
            v18 = v45;
          }

          v42 = v18;
          v43 = [(SUSettingsStatefulDescriptor *)v154->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
          v44 = MEMORY[0x277D82BE0](v43);
          v121 = v44;
          v19 = [(SUSettingsStatefulUIManager *)v154 hidingAlternateDescriptor];
          v20 = v46;
          if (!v19)
          {
            v20 = v45;
          }

          v47 = v20;
          v48 = [(SUSettingsStatefulDescriptor *)v154->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
          v49 = MEMORY[0x277D82BE0](v48);
          v120 = v49;
          v50 = [(SUSettingsStatefulUIManager *)v154 enrolledBetaProgram];
          v118 = 0;
          if (v50)
          {
            v119 = [(SUSettingsStatefulUIManager *)v154 enrolledBetaProgram];
            v118 = 1;
            v37 = [(SDBetaProgram *)v119 programID];
          }

          else
          {
            v37 = 0;
          }

          v28 = v37;
          v36 = [(SUSettingsStatefulUIManager *)v154 betaPrograms];
          v29 = [(NSArray *)v36 count];
          v35 = [(SUSettingsStatefulUIManager *)v154 currentFullScanOperation];
          v34 = [(SUSettingsStatefulUIManager *)v154 currentRefreshScanOperation];
          v33 = [(SUSettingsStatefulUIManager *)v154 currentUpdateOperation];
          v32 = [(SUSettingsStatefulUIManager *)v154 auxiliaryOperations];
          v30 = v21;
          v31 = v155;
          __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v155, v110, v64, v65, v53, v54, v55, v56, v57, v38, v39, v40, v41, v42, v44, v47, v49, v37, v29, v35, v34, v33, [(NSMutableSet *)v32 count]);
          _os_log_impl(&dword_26AC94000, v61, v62[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unenroll from beta updates as we have not discovered a seeding device.", v31, 0xDEu);
          MEMORY[0x277D82BD8](v32);
          MEMORY[0x277D82BD8](v33);
          MEMORY[0x277D82BD8](v34);
          MEMORY[0x277D82BD8](v35);
          MEMORY[0x277D82BD8](v36);
          if (v118)
          {
            MEMORY[0x277D82BD8](v119);
          }

          MEMORY[0x277D82BD8](v50);
          MEMORY[0x277D82BD8](v48);
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](v39);
          if (v122)
          {
            MEMORY[0x277D82BD8](v123);
          }

          if (v124)
          {
            MEMORY[0x277D82BD8](v125);
          }

          if (v126)
          {
            MEMORY[0x277D82BD8](v127);
          }

          MEMORY[0x277D82BD8](v58);
          MEMORY[0x277D82BD8](v57);
          MEMORY[0x277D82BD8](v56);
          MEMORY[0x277D82BD8](v55);
          MEMORY[0x277D82BD8](v54);
          if (v128)
          {
            MEMORY[0x277D82BD8](v129);
          }

          if (v130)
          {
            MEMORY[0x277D82BD8](v131);
          }

          MEMORY[0x277D82BD8](v66);
          MEMORY[0x277D82BD8](v63);
          v27 = 0;
          objc_storeStrong(&v120, 0);
          objc_storeStrong(&v121, v27);
          objc_storeStrong(&v132, v27);
        }

        objc_storeStrong(&v134, 0);
        v152 = 1;
      }
    }

    else
    {
      v109 = [(SUSettingsStatefulUIManager *)v154 log];
      oslog = [(SUCoreLog *)v109 oslog];
      MEMORY[0x277D82BD8](v109);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        *v104 = type;
        v105 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v154 currentState]);
        v106 = MEMORY[0x277D82BE0](v105);
        v149 = v106;
        v107 = [(SUSettingsStatefulUIManager *)v154 currentState];
        v108 = [(SUSettingsStatefulUIManager *)v154 delegate];
        v147 = 0;
        v145 = 0;
        if (v108)
        {
          v148 = [(SUSettingsStatefulUIManager *)v154 delegate];
          v101 = 1;
          v147 = 1;
          v3 = objc_opt_class();
          v146 = NSStringFromClass(v3);
          v145 = 1;
          v102 = v146;
        }

        else
        {
          v102 = @"(null)";
        }

        v95 = v102;
        v96 = [(SUSettingsStatefulUIManager *)v154 delegate];
        v97 = [(SUSettingsStatefulUIManager *)v154 scanError];
        v98 = [(SUSettingsStatefulUIManager *)v154 preferredStatefulDescriptor];
        v99 = [(SUSettingsStatefulUIManager *)v154 alternateStatefulDescriptor];
        v100 = [(SUSettingsStatefulUIManager *)v154 currentDownload];
        v143 = 0;
        v141 = 0;
        v139 = 0;
        if (v100)
        {
          v144 = [(SUSettingsStatefulUIManager *)v154 currentDownload];
          v93 = 1;
          v143 = 1;
          v142 = [(SUDownload *)v144 descriptor];
          v141 = 1;
          v140 = [(SUDescriptor *)v142 humanReadableUpdateName];
          v139 = 1;
          v94 = v140;
        }

        else
        {
          v94 = @"(null)";
        }

        v80 = v94;
        v81 = [(SUSettingsStatefulUIManager *)v154 currentDownload];
        v4 = [(SUSettingsStatefulUIManager *)v154 performThirdPartyScan];
        v87 = "NO";
        v5 = "YES";
        v88 = "YES";
        if (!v4)
        {
          v5 = "NO";
        }

        v82 = v5;
        v6 = [(SUSettingsStatefulUIManager *)v154 isTargetedUpdateScheduledForAutoInstall];
        v7 = v88;
        if (!v6)
        {
          v7 = v87;
        }

        v83 = v7;
        v8 = [(SUSettingsStatefulUIManager *)v154 hidingPreferredDescriptor];
        v9 = v88;
        if (!v8)
        {
          v9 = v87;
        }

        v84 = v9;
        v85 = [(SUSettingsStatefulDescriptor *)v154->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v86 = MEMORY[0x277D82BE0](v85);
        v138 = v86;
        v10 = [(SUSettingsStatefulUIManager *)v154 hidingAlternateDescriptor];
        v11 = v88;
        if (!v10)
        {
          v11 = v87;
        }

        v89 = v11;
        v90 = [(SUSettingsStatefulDescriptor *)v154->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v91 = MEMORY[0x277D82BE0](v90);
        v137 = v91;
        v92 = [(SUSettingsStatefulUIManager *)v154 enrolledBetaProgram];
        v135 = 0;
        if (v92)
        {
          v136 = [(SUSettingsStatefulUIManager *)v154 enrolledBetaProgram];
          v135 = 1;
          v79 = [(SDBetaProgram *)v136 programID];
        }

        else
        {
          v79 = 0;
        }

        v70 = v79;
        v78 = [(SUSettingsStatefulUIManager *)v154 betaPrograms];
        v71 = [(NSArray *)v78 count];
        v77 = [(SUSettingsStatefulUIManager *)v154 currentFullScanOperation];
        v76 = [(SUSettingsStatefulUIManager *)v154 currentRefreshScanOperation];
        v75 = [(SUSettingsStatefulUIManager *)v154 currentUpdateOperation];
        v74 = [(SUSettingsStatefulUIManager *)v154 auxiliaryOperations];
        v72 = v21;
        buf = v156;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v156, v110, v106, v107, v95, v96, v97, v98, v99, v80, v81, v82, v83, v84, v86, v89, v91, v79, v71, v77, v76, v75, [(NSMutableSet *)v74 count]);
        _os_log_impl(&dword_26AC94000, log, v104[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unenroll from beta updates as we are currently checking for updates.", buf, 0xDEu);
        MEMORY[0x277D82BD8](v74);
        MEMORY[0x277D82BD8](v75);
        MEMORY[0x277D82BD8](v76);
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](v78);
        if (v135)
        {
          MEMORY[0x277D82BD8](v136);
        }

        MEMORY[0x277D82BD8](v92);
        MEMORY[0x277D82BD8](v90);
        MEMORY[0x277D82BD8](v85);
        MEMORY[0x277D82BD8](v81);
        if (v139)
        {
          MEMORY[0x277D82BD8](v140);
        }

        if (v141)
        {
          MEMORY[0x277D82BD8](v142);
        }

        if (v143)
        {
          MEMORY[0x277D82BD8](v144);
        }

        MEMORY[0x277D82BD8](v100);
        MEMORY[0x277D82BD8](v99);
        MEMORY[0x277D82BD8](v98);
        MEMORY[0x277D82BD8](v97);
        MEMORY[0x277D82BD8](v96);
        if (v145)
        {
          MEMORY[0x277D82BD8](v146);
        }

        if (v147)
        {
          MEMORY[0x277D82BD8](v148);
        }

        MEMORY[0x277D82BD8](v108);
        MEMORY[0x277D82BD8](v105);
        obj = 0;
        objc_storeStrong(&v137, 0);
        objc_storeStrong(&v138, obj);
        objc_storeStrong(&v149, obj);
      }

      objc_storeStrong(&oslog, 0);
      v152 = 1;
    }
  }

  else
  {
    v152 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUSettingsStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke(NSObject *a1, char a2)
{
  v61 = a1;
  v62 = "[SUSettingsStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke";
  v97 = *MEMORY[0x277D85DE8];
  v95 = a1;
  v94 = a2;
  oslog[1] = a1;
  v60 = [(objc_class *)a1[4].isa log];
  oslog[0] = [v60 oslog];
  MEMORY[0x277D82BD8](v60);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v55 = type;
    v56 = SUSettingsUIStateToString([(objc_class *)v61[4].isa currentState]);
    v57 = MEMORY[0x277D82BE0](v56);
    v91 = v57;
    v58 = [(objc_class *)v61[4].isa currentState];
    v59 = [(objc_class *)v61[4].isa delegate];
    v89 = 0;
    v87 = 0;
    if (v59)
    {
      v90 = [(objc_class *)v61[4].isa delegate];
      v52 = 1;
      v89 = 1;
      v2 = objc_opt_class();
      v88 = NSStringFromClass(v2);
      v87 = 1;
      v53 = v88;
    }

    else
    {
      v53 = @"(null)";
    }

    v46 = v53;
    v47 = [(objc_class *)v61[4].isa delegate];
    v48 = [(objc_class *)v61[4].isa scanError];
    v49 = [(objc_class *)v61[4].isa preferredStatefulDescriptor];
    v50 = [(objc_class *)v61[4].isa alternateStatefulDescriptor];
    v51 = [(objc_class *)v61[4].isa currentDownload];
    v85 = 0;
    v83 = 0;
    v81 = 0;
    if (v51)
    {
      v86 = [(objc_class *)v61[4].isa currentDownload];
      v44 = 1;
      v85 = 1;
      v84 = [v86 descriptor];
      v83 = 1;
      v82 = [v84 humanReadableUpdateName];
      v81 = 1;
      v45 = v82;
    }

    else
    {
      v45 = @"(null)";
    }

    v31 = v45;
    v32 = [(objc_class *)v61[4].isa currentDownload];
    v3 = [(objc_class *)v61[4].isa performThirdPartyScan];
    v38 = "NO";
    v4 = "YES";
    v39 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v33 = v4;
    v5 = [(objc_class *)v61[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v39;
    if ((v5 & 1) == 0)
    {
      v6 = v38;
    }

    v34 = v6;
    v7 = [(objc_class *)v61[4].isa hidingPreferredDescriptor];
    v8 = v39;
    if ((v7 & 1) == 0)
    {
      v8 = v38;
    }

    v35 = v8;
    v36 = [*(v61[4].isa + 32) humanReadableUpdateName];
    v37 = MEMORY[0x277D82BE0](v36);
    v80 = v37;
    v9 = [(objc_class *)v61[4].isa hidingAlternateDescriptor];
    v10 = v39;
    if ((v9 & 1) == 0)
    {
      v10 = v38;
    }

    v40 = v10;
    v41 = [*(v61[4].isa + 33) humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](v41);
    location = v42;
    v43 = [(objc_class *)v61[4].isa enrolledBetaProgram];
    v77 = 0;
    if (v43)
    {
      v78 = [(objc_class *)v61[4].isa enrolledBetaProgram];
      v77 = 1;
      v30 = [v78 programID];
    }

    else
    {
      v30 = 0;
    }

    v21 = v30;
    v29 = [(objc_class *)v61[4].isa betaPrograms];
    v22 = [v29 count];
    v28 = [(objc_class *)v61[4].isa currentFullScanOperation];
    v27 = [(objc_class *)v61[4].isa currentRefreshScanOperation];
    v26 = [(objc_class *)v61[4].isa currentUpdateOperation];
    v25 = [(objc_class *)v61[4].isa auxiliaryOperations];
    v23 = &v11;
    buf = v96;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v96, v62, v57, v58, v46, v47, v48, v49, v50, v31, v32, v33, v34, v35, v37, v40, v42, v30, v22, v28, v27, v26, [v25 count], v94 & 1);
    _os_log_impl(&dword_26AC94000, log, v55[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUn-enroll from beta program success: %d", buf, 0xE4u);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v32);
    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v56);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v80, obj);
    objc_storeStrong(&v91, obj);
  }

  objc_storeStrong(oslog, 0);
  if (v94)
  {
    [(objc_class *)v61[4].isa setEnrolledBetaProgram:0];
  }

  [(objc_class *)v61[4].isa checkForAvailableUpdates];
  if (v61[5].isa)
  {
    v18 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v18 selectDelegateCallbackQueue:*(v61[4].isa + 5)];
    block = &v70;
    v70 = MEMORY[0x277D85DD0];
    v71 = -1073741824;
    v72 = 0;
    v73 = __69__SUSettingsStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_394;
    v74 = &unk_279CB9730;
    v19 = &v75;
    v75 = MEMORY[0x277D82BE0](v61[5].isa);
    v76 = v94 & 1;
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v18);
    objc_storeStrong(v19, 0);
  }

  isa = v61[4].isa;
  v12 = sel_statefulUIManager_didUnenrollDevice_fromBetaUpdatesProgram_;
  v13 = &v63;
  v63 = MEMORY[0x277D85DD0];
  v64 = -1073741824;
  v65 = 0;
  v66 = __69__SUSettingsStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2;
  v67 = &unk_279CB9758;
  v15 = &v68;
  v68 = MEMORY[0x277D82BE0](v61[4].isa);
  v69 = v94 & 1;
  [(objc_class *)isa executeOperationOnDelegate:v12 usingBlock:v13];
  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __69__SUSettingsStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = [v4 currentSeedingDevice];
  v1 = *(a1 + 40);
  [v6 statefulUIManager:v4 didUnenrollDevice:? fromBetaUpdatesProgram:?];
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](v6);
}

- (void)refreshBetaUpdates:(id)a3
{
  v68 = "[SUSettingsStatefulUIManager refreshBetaUpdates:]";
  v98 = *MEMORY[0x277D85DE8];
  v96 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v69 = [MEMORY[0x277CCAD78] UUID];
  v94 = [v69 UUIDString];
  MEMORY[0x277D82BD8](v69);
  v67 = [(SUSettingsStatefulUIManager *)v96 log];
  oslog = [(SUCoreLog *)v67 oslog];
  MEMORY[0x277D82BD8](v67);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v62 = type;
    v63 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v96 currentState]);
    v64 = MEMORY[0x277D82BE0](v63);
    v91 = v64;
    v65 = [(SUSettingsStatefulUIManager *)v96 currentState];
    v66 = [(SUSettingsStatefulUIManager *)v96 delegate];
    v89 = 0;
    v87 = 0;
    if (v66)
    {
      v90 = [(SUSettingsStatefulUIManager *)v96 delegate];
      v59 = 1;
      v89 = 1;
      v3 = objc_opt_class();
      v88 = NSStringFromClass(v3);
      v87 = 1;
      v60 = v88;
    }

    else
    {
      v60 = @"(null)";
    }

    v53 = v60;
    v54 = [(SUSettingsStatefulUIManager *)v96 delegate];
    v55 = [(SUSettingsStatefulUIManager *)v96 scanError];
    v56 = [(SUSettingsStatefulUIManager *)v96 preferredStatefulDescriptor];
    v57 = [(SUSettingsStatefulUIManager *)v96 alternateStatefulDescriptor];
    v58 = [(SUSettingsStatefulUIManager *)v96 currentDownload];
    v85 = 0;
    v83 = 0;
    v81 = 0;
    if (v58)
    {
      v86 = [(SUSettingsStatefulUIManager *)v96 currentDownload];
      v51 = 1;
      v85 = 1;
      v84 = [(SUDownload *)v86 descriptor];
      v83 = 1;
      v82 = [(SUDescriptor *)v84 humanReadableUpdateName];
      v81 = 1;
      v52 = v82;
    }

    else
    {
      v52 = @"(null)";
    }

    v38 = v52;
    v39 = [(SUSettingsStatefulUIManager *)v96 currentDownload];
    v4 = [(SUSettingsStatefulUIManager *)v96 performThirdPartyScan];
    v45 = "NO";
    v5 = "YES";
    v46 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    v40 = v5;
    v6 = [(SUSettingsStatefulUIManager *)v96 isTargetedUpdateScheduledForAutoInstall];
    v7 = v46;
    if (!v6)
    {
      v7 = v45;
    }

    v41 = v7;
    v8 = [(SUSettingsStatefulUIManager *)v96 hidingPreferredDescriptor];
    v9 = v46;
    if (!v8)
    {
      v9 = v45;
    }

    v42 = v9;
    v43 = [(SUSettingsStatefulDescriptor *)v96->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v44 = MEMORY[0x277D82BE0](v43);
    v80 = v44;
    v10 = [(SUSettingsStatefulUIManager *)v96 hidingAlternateDescriptor];
    v11 = v46;
    if (!v10)
    {
      v11 = v45;
    }

    v47 = v11;
    v48 = [(SUSettingsStatefulDescriptor *)v96->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v49 = MEMORY[0x277D82BE0](v48);
    v79 = v49;
    v50 = [(SUSettingsStatefulUIManager *)v96 enrolledBetaProgram];
    v77 = 0;
    if (v50)
    {
      v78 = [(SUSettingsStatefulUIManager *)v96 enrolledBetaProgram];
      v77 = 1;
      v37 = [(SDBetaProgram *)v78 programID];
    }

    else
    {
      v37 = 0;
    }

    v28 = v37;
    v36 = [(SUSettingsStatefulUIManager *)v96 betaPrograms];
    v29 = [(NSArray *)v36 count];
    v35 = [(SUSettingsStatefulUIManager *)v96 currentFullScanOperation];
    v34 = [(SUSettingsStatefulUIManager *)v96 currentRefreshScanOperation];
    v33 = [(SUSettingsStatefulUIManager *)v96 currentUpdateOperation];
    v32 = [(SUSettingsStatefulUIManager *)v96 auxiliaryOperations];
    v12 = [(NSMutableSet *)v32 count];
    currentFullScanOperation = v96->_currentFullScanOperation;
    currentRefreshScanOperation = v96->_currentRefreshScanOperation;
    v30 = &v17;
    buf = v97;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v97, v68, v64, v65, v53, v54, v55, v56, v57, v38, v39, v40, v41, v42, v44, v47, v49, v37, v29, v35, v34, v33, v12, v94, currentFullScanOperation, currentRefreshScanOperation);
    _os_log_impl(&dword_26AC94000, log, v62[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a beta updates scan operation with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", buf, 0xFCu);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v39);
    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v63);
    obj = 0;
    objc_storeStrong(&v79, 0);
    objc_storeStrong(&v80, obj);
    objc_storeStrong(&v91, obj);
  }

  objc_storeStrong(&oslog, 0);
  v15 = [SUSettingsScanOperation alloc];
  v24 = &v94;
  v16 = [(SUSettingsScanOperation *)v15 initWithUUID:v94 usingSUManagerClient:v96->_suClient andBetaManager:v96->_seedingBetaManager withCompletionQueue:v96->_workQueue];
  v23 = &v76;
  v76 = v16;
  v19 = v16;
  v20 = [(SUSettingsStatefulUIManager *)v96 createScanOperationOptions];
  v18 = &v70;
  v70 = MEMORY[0x277D85DD0];
  v71 = -1073741824;
  v72 = 0;
  v73 = __50__SUSettingsStatefulUIManager_refreshBetaUpdates___block_invoke;
  v74 = &unk_279CB97D0;
  v22 = v75;
  v75[0] = MEMORY[0x277D82BE0](v96);
  v21 = (v18 + 5);
  v25 = location;
  v75[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUSettingsScanOperation *)v19 refreshBetaProgramsWithOptions:v20 completionHandler:v18];
  MEMORY[0x277D82BD8](v20);
  v26 = 0;
  objc_storeStrong(v21, 0);
  objc_storeStrong(v22, v26);
  objc_storeStrong(v23, v26);
  objc_storeStrong(v24, v26);
  objc_storeStrong(v25, v26);
  *MEMORY[0x277D85DE8];
}

void __50__SUSettingsStatefulUIManager_refreshBetaUpdates___block_invoke(id *a1, void *a2, void *a3)
{
  v86 = a1;
  obj = a3;
  v84 = "[SUSettingsStatefulUIManager refreshBetaUpdates:]_block_invoke";
  v128 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v125 = 0;
  objc_storeStrong(&v125, obj);
  v124 = v86;
  dispatch_assert_queue_V2(*(v86[4] + 21));
  v121 = 0;
  v119 = 0;
  v87 = 1;
  if (!v125)
  {
    v83 = [v86[4] enrolledBetaProgram];
    v122 = v83;
    v82 = 1;
    v121 = 1;
    v120 = [location[0] enrolledBetaProgram];
    v119 = 1;
    v87 = [v83 isEqual:?];
  }

  v81 = v87;
  if (v119)
  {
    MEMORY[0x277D82BD8](v120);
  }

  if (v121)
  {
    MEMORY[0x277D82BD8](v122);
  }

  v123 = v81 & 1;
  v80 = [v86[4] log];
  oslog = [v80 oslog];
  MEMORY[0x277D82BD8](v80);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v75 = type;
    v76 = SUSettingsUIStateToString([v86[4] currentState]);
    v77 = MEMORY[0x277D82BE0](v76);
    v116 = v77;
    v78 = [v86[4] currentState];
    v79 = [v86[4] delegate];
    v114 = 0;
    v112 = 0;
    if (v79)
    {
      v115 = [v86[4] delegate];
      v72 = 1;
      v114 = 1;
      v3 = objc_opt_class();
      v113 = NSStringFromClass(v3);
      v112 = 1;
      v73 = v113;
    }

    else
    {
      v73 = @"(null)";
    }

    v66 = v73;
    v67 = [v86[4] delegate];
    v68 = [v86[4] scanError];
    v69 = [v86[4] preferredStatefulDescriptor];
    v70 = [v86[4] alternateStatefulDescriptor];
    v71 = [v86[4] currentDownload];
    v110 = 0;
    v108 = 0;
    v106 = 0;
    if (v71)
    {
      v111 = [v86[4] currentDownload];
      v64 = 1;
      v110 = 1;
      v109 = [v111 descriptor];
      v108 = 1;
      v107 = [v109 humanReadableUpdateName];
      v106 = 1;
      v65 = v107;
    }

    else
    {
      v65 = @"(null)";
    }

    v51 = v65;
    v52 = [v86[4] currentDownload];
    v4 = [v86[4] performThirdPartyScan];
    v58 = "NO";
    v5 = "YES";
    v59 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v53 = v5;
    v6 = [v86[4] isTargetedUpdateScheduledForAutoInstall];
    v7 = v59;
    if ((v6 & 1) == 0)
    {
      v7 = v58;
    }

    v54 = v7;
    v8 = [v86[4] hidingPreferredDescriptor];
    v9 = v59;
    if ((v8 & 1) == 0)
    {
      v9 = v58;
    }

    v55 = v9;
    v56 = [*(v86[4] + 32) humanReadableUpdateName];
    v57 = MEMORY[0x277D82BE0](v56);
    v105 = v57;
    v10 = [v86[4] hidingAlternateDescriptor];
    v11 = v59;
    if ((v10 & 1) == 0)
    {
      v11 = v58;
    }

    v60 = v11;
    v61 = [*(v86[4] + 33) humanReadableUpdateName];
    v62 = MEMORY[0x277D82BE0](v61);
    v104 = v62;
    v63 = [v86[4] enrolledBetaProgram];
    v102 = 0;
    if (v63)
    {
      v103 = [v86[4] enrolledBetaProgram];
      v102 = 1;
      v50 = [v103 programID];
    }

    else
    {
      v50 = 0;
    }

    v39 = v50;
    v49 = [v86[4] betaPrograms];
    v40 = [v49 count];
    v48 = [v86[4] currentFullScanOperation];
    v47 = [v86[4] currentRefreshScanOperation];
    v46 = [v86[4] currentUpdateOperation];
    v45 = [v86[4] auxiliaryOperations];
    v41 = [v45 count];
    v12 = [location[0] scanUUID];
    v44 = v12;
    if (v123)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v42 = &v24;
    buf = v127;
    __os_log_helper_16_2_26_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66_8_34_8_66(v127, v84, v77, v78, v66, v67, v68, v69, v70, v51, v52, v53, v54, v55, v57, v60, v62, v39, v40, v48, v47, v46, v41, v12, v125, v13, location[0]);
    _os_log_impl(&dword_26AC94000, log, v75[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a beta updates scan with ID: %{public}@.\nError: %{public}@;\nEnrolled to a different beta program: %{public}s\nResults: %{public}@", buf, 0x106u);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    if (v102)
    {
      MEMORY[0x277D82BD8](v103);
    }

    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v52);
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

    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v67);
    if (v112)
    {
      MEMORY[0x277D82BD8](v113);
    }

    if (v114)
    {
      MEMORY[0x277D82BD8](v115);
    }

    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v76);
    v38 = 0;
    objc_storeStrong(&v104, 0);
    objc_storeStrong(&v105, v38);
    objc_storeStrong(&v116, v38);
  }

  objc_storeStrong(&oslog, 0);
  if (v125)
  {
    v14 = (v86[4] + 128);
    v37 = 0;
    objc_storeStrong(v14, 0);
    objc_storeStrong(v86[4] + 17, v37);
    objc_storeStrong(v86[4] + 18, v37);
  }

  else
  {
    v15 = [location[0] currentSeedingDevice];
    v16 = v86[4];
    v17 = v16[16];
    v16[16] = v15;
    MEMORY[0x277D82BD8](v17);
    v18 = [location[0] betaPrograms];
    v19 = v86[4];
    v20 = v19[17];
    v19[17] = v18;
    MEMORY[0x277D82BD8](v20);
    v21 = [location[0] enrolledBetaProgram];
    v22 = v86[4];
    v23 = v22[18];
    v22[18] = v21;
    MEMORY[0x277D82BD8](v23);
  }

  v36 = v86[4];
  v34 = sel_statefulUIManagerDidRefreshBetaUpdates_;
  v35 = &v96;
  v96 = MEMORY[0x277D85DD0];
  v97 = -1073741824;
  v98 = 0;
  v99 = __50__SUSettingsStatefulUIManager_refreshBetaUpdates___block_invoke_401;
  v100 = &unk_279CB93E8;
  v33 = &v101;
  v101 = MEMORY[0x277D82BE0](v86[4]);
  [v36 executeOperationOnDelegate:v34 usingBlock:v35];
  if (v86[5])
  {
    v28 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v28 selectDelegateCallbackQueue:*(v86[4] + 5)];
    block = &v88;
    v88 = MEMORY[0x277D85DD0];
    v89 = -1073741824;
    v90 = 0;
    v91 = __50__SUSettingsStatefulUIManager_refreshBetaUpdates___block_invoke_2;
    v92 = &unk_279CB97A8;
    v31 = &v95;
    v95 = MEMORY[0x277D82BE0](v86[5]);
    v30 = (block + 32);
    v93 = MEMORY[0x277D82BE0](location[0]);
    v29 = (block + 40);
    v94 = MEMORY[0x277D82BE0](v125);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v28);
    v32 = 0;
    objc_storeStrong(v29, 0);
    objc_storeStrong(v30, v32);
    objc_storeStrong(v31, v32);
  }

  if (v123)
  {
    [v86[4] checkForAvailableUpdates];
  }

  v25 = 0;
  objc_storeStrong(v33, 0);
  objc_storeStrong(&v125, v25);
  objc_storeStrong(location, v25);
  *MEMORY[0x277D85DE8];
}

uint64_t __50__SUSettingsStatefulUIManager_refreshBetaUpdates___block_invoke_401(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManagerDidRefreshBetaUpdates:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
}

- (BOOL)isDelayingUpdate
{
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v5 = 0;
  v4 = 1;
  if (!self->_delayingUpdate)
  {
    v12 = [(SUSettingsStatefulUIManager *)self scanError];
    v11 = 1;
    v3 = 0;
    if (v12)
    {
      v10 = [(SUSettingsStatefulUIManager *)self scanError];
      v9 = 1;
      v8 = [(NSError *)v10 domain];
      v7 = 1;
      v3 = 0;
      if ([(NSString *)v8 isEqualToString:*MEMORY[0x277D64910]])
      {
        v6 = [(SUSettingsStatefulUIManager *)self scanError];
        v5 = 1;
        v3 = [(NSError *)v6 code]== 55;
      }
    }

    v4 = v3;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  return v4;
}

- (BOOL)isPreferredUpdatePromotedAsAlternate
{
  v5 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (v5)
  {
    v12 = [(SUSettingsStatefulUIManager *)self alternateStatefulDescriptor];
    v11 = 1;
    v6 = 0;
    if (!v12)
    {
      v10 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
      v9 = 1;
      v8 = [(SUSettingsStatefulDescriptor *)v10 descriptor];
      v7 = 1;
      v6 = 0;
      if ([(SUDescriptor *)v8 audienceType]== 1)
      {
        v6 = !self->_hidingPreferredDescriptor;
      }
    }
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  MEMORY[0x277D82BD8](v5);
  if (!v6)
  {
    return 0;
  }

  v4 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  v3 = [(SUSettingsStatefulDescriptor *)v4 descriptor];
  v14 = [(SUDescriptor *)v3 promoteAlternateUpdate]& 1;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v14;
}

- (void)rvTriggerNeRDUpdate:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __51__SUSettingsStatefulUIManager_rvTriggerNeRDUpdate___block_invoke;
  v8 = &unk_279CB9410;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t __51__SUSettingsStatefulUIManager_rvTriggerNeRDUpdate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 224);
  if (*(a1 + 40))
  {
    return [v2 rvTriggerNeRDUpdate:*(a1 + 40)];
  }

  else
  {
    return [v2 rvTriggerNeRDUpdate:MEMORY[0x277CBEC10]];
  }
}

- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  queue = self->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75__SUSettingsStatefulUIManager_networkChangedFromNetworkType_toNetworkType___block_invoke;
  v9 = &unk_279CB97F8;
  v10 = MEMORY[0x277D82BE0](self);
  v11 = v13;
  v12 = v14;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v10, 0);
}

uint64_t __75__SUSettingsStatefulUIManager_networkChangedFromNetworkType_toNetworkType___block_invoke(NSObject *a1)
{
  v100 = a1;
  v98 = "[SUSettingsStatefulUIManager networkChangedFromNetworkType:toNetworkType:]_block_invoke";
  v122 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  obj = MEMORY[0x277D82BE0](a1[4].isa);
  objc_sync_enter(obj);
  if (LODWORD(v100[5].isa) != *(v100[4].isa + 5))
  {
    v97 = [(objc_class *)v100[4].isa log];
    v95 = v97;
    v96 = [v95 oslog];
    oslog[0] = v96;
    MEMORY[0x277D82BD8](v95);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v93 = type;
      v94 = [(objc_class *)v100[4].isa currentState];
      v91 = SUSettingsUIStateToString(v94);
      v88 = v91;
      v89 = MEMORY[0x277D82BE0](v88);
      v118 = v89;
      v90 = [(objc_class *)v100[4].isa currentState];
      isa = v100[4].isa;
      v116 = 0;
      v114 = 0;
      v87 = [(objc_class *)isa delegate];
      v86 = v87;
      if (v86)
      {
        v85 = [(objc_class *)v100[4].isa delegate];
        v117 = v85;
        v116 = 1;
        aClass = objc_opt_class();
        v83 = NSStringFromClass(aClass);
        v115 = v83;
        v114 = 1;
        v82 = v115;
      }

      else
      {
        v82 = @"(null)";
      }

      v80 = v82;
      v81 = [(objc_class *)v100[4].isa delegate];
      v78 = v81;
      v79 = [(objc_class *)v100[4].isa scanError];
      v76 = v79;
      v77 = [(objc_class *)v100[4].isa preferredStatefulDescriptor];
      v74 = v77;
      v75 = [(objc_class *)v100[4].isa alternateStatefulDescriptor];
      v72 = v75;
      v2 = v100[4].isa;
      v112 = 0;
      v110 = 0;
      v108 = 0;
      v73 = [(objc_class *)v2 currentDownload];
      v71 = v73;
      if (v71)
      {
        v70 = [(objc_class *)v100[4].isa currentDownload];
        v113 = v70;
        v112 = 1;
        v69 = [v113 descriptor];
        v111 = v69;
        v110 = 1;
        v68 = [v111 humanReadableUpdateName];
        v109 = v68;
        v108 = 1;
        v67 = v109;
      }

      else
      {
        v67 = @"(null)";
      }

      v65 = v67;
      v66 = [(objc_class *)v100[4].isa currentDownload];
      v63 = v66;
      v64 = [(objc_class *)v100[4].isa performThirdPartyScan];
      v3 = "YES";
      if ((v64 & 1) == 0)
      {
        v3 = "NO";
      }

      v61 = v3;
      v62 = [(objc_class *)v100[4].isa isTargetedUpdateScheduledForAutoInstall];
      v4 = "YES";
      if ((v62 & 1) == 0)
      {
        v4 = "NO";
      }

      v59 = v4;
      v60 = [(objc_class *)v100[4].isa hidingPreferredDescriptor];
      v5 = "YES";
      if ((v60 & 1) == 0)
      {
        v5 = "NO";
      }

      v57 = v5;
      v58 = [*(v100[4].isa + 32) humanReadableUpdateName];
      v54 = v58;
      v55 = MEMORY[0x277D82BE0](v54);
      v107 = v55;
      v56 = [(objc_class *)v100[4].isa hidingAlternateDescriptor];
      v6 = "YES";
      if ((v56 & 1) == 0)
      {
        v6 = "NO";
      }

      v52 = v6;
      v53 = [*(v100[4].isa + 33) humanReadableUpdateName];
      v49 = v53;
      v50 = MEMORY[0x277D82BE0](v49);
      v106 = v50;
      v7 = v100[4].isa;
      v104 = 0;
      v51 = [(objc_class *)v7 enrolledBetaProgram];
      v48 = v51;
      if (v48)
      {
        v47 = [(objc_class *)v100[4].isa enrolledBetaProgram];
        v105 = v47;
        v104 = 1;
        v46 = [v105 programID];
        v45 = v46;
      }

      else
      {
        v45 = 0;
      }

      v43 = v45;
      v44 = [(objc_class *)v100[4].isa betaPrograms];
      v41 = v44;
      v42 = [v41 count];
      v40 = [(objc_class *)v100[4].isa currentFullScanOperation];
      v38 = v40;
      v39 = [(objc_class *)v100[4].isa currentRefreshScanOperation];
      v36 = v39;
      v37 = [(objc_class *)v100[4].isa currentUpdateOperation];
      v34 = v37;
      v35 = [(objc_class *)v100[4].isa auxiliaryOperations];
      v32 = v35;
      v33 = [v32 count];
      isa_high = HIDWORD(v100[5].isa);
      v31 = SUStringFromNetworkType();
      v27 = v31;
      v28 = MEMORY[0x277D82BE0](v27);
      v103 = v28;
      v29 = HIDWORD(v100[5].isa);
      isa_low = LODWORD(v100[5].isa);
      v30 = SUStringFromNetworkType();
      v23 = v30;
      v24 = MEMORY[0x277D82BE0](v23);
      v102 = v24;
      v25 = v100[5].isa;
      v10 = *(v100[4].isa + 5);
      v26 = SUStringFromNetworkType();
      v22 = v26;
      location = MEMORY[0x277D82BE0](v22);
      v11 = *(v100[4].isa + 5);
      v20 = &v14;
      buf = v121;
      __os_log_helper_16_2_28_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_64_4_0_8_66_4_0_8_66_4_0(v121, v98, v89, v90, v80, v78, v76, v74, v72, v65, v63, v61, v59, v57, v55, v52, v50, v45, v42, v38, v36, v34, v33, v28, v29, v24, v25, location, v11);
      _os_log_impl(&dword_26AC94000, log, v93[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nChanged network type: %@ (%d) -> %{public}@ (%d) (current network type: %{public}@ (%d))", buf, 0x10Eu);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v41);
      if (v104)
      {
        MEMORY[0x277D82BD8](v105);
      }

      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v63);
      if (v108)
      {
        MEMORY[0x277D82BD8](v109);
      }

      if (v110)
      {
        MEMORY[0x277D82BD8](v111);
      }

      if (v112)
      {
        MEMORY[0x277D82BD8](v113);
      }

      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v78);
      if (v114)
      {
        MEMORY[0x277D82BD8](v115);
      }

      if (v116)
      {
        MEMORY[0x277D82BD8](v117);
      }

      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v88);
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v102, 0);
      objc_storeStrong(&v103, 0);
      objc_storeStrong(&v106, 0);
      objc_storeStrong(&v107, 0);
      objc_storeStrong(&v118, 0);
    }

    objc_storeStrong(oslog, 0);
    v12 = v100;
    *(v100[4].isa + 5) = v100[5].isa;
    if (LODWORD(v12[5].isa))
    {
      if ((*(v100[4].isa + 10) || (v19 = [(objc_class *)v100[4].isa currentState], v19 == 3)) && (v18 = [(objc_class *)v100[4].isa currentState], v18 != 2))
      {
        [(objc_class *)v100[4].isa setScanError:0];
        [(objc_class *)v100[4].isa refreshState:1];
      }

      else
      {
        [(objc_class *)v100[4].isa checkForAvailableUpdatesWithRetriesCount:kSUSettingsStatefulUINetworkErrorRetriesCount];
      }
    }

    else
    {
      v17 = [(objc_class *)v100[4].isa currentState];
      if (v17 != 2)
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:7 userInfo:0];
        v15 = v16;
        [(objc_class *)v100[4].isa setScanError:?];
        MEMORY[0x277D82BD8](v15);
        [(objc_class *)v100[4].isa refreshState];
      }
    }
  }

  objc_sync_exit(obj);
  result = MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4
{
  v131 = &v150;
  obj = a4;
  v129 = "[SUSettingsStatefulUIManager client:scanRequestDidStartForOptions:]";
  v167 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v163 = 0;
  objc_storeStrong(&v163, obj);
  v162 = 0;
  v132 = 1;
  if (v163)
  {
    v4 = [*(v131 + 19) identifier];
    *(v131 + 18) = v4;
    v162 = 1;
    v132 = v4 == 0;
  }

  v128 = v132;
  if (v162)
  {
    MEMORY[0x277D82BD8](*(v131 + 18));
  }

  if (v128)
  {
    v127 = [*(v131 + 22) log];
    v5 = [v127 oslog];
    v6 = v127;
    *(v131 + 16) = v5;
    MEMORY[0x277D82BD8](v6);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v131 + 16), OS_LOG_TYPE_DEFAULT))
    {
      log = *(v131 + 16);
      *v122 = type;
      v123 = SUSettingsUIStateToString([*(v131 + 22) currentState]);
      v7 = MEMORY[0x277D82BE0](v123);
      v8 = v131;
      v124 = v7;
      *(v131 + 14) = v7;
      v125 = [v8[22] currentState];
      v126 = [*(v131 + 22) delegate];
      v158 = 0;
      v157 = 0;
      if (v126)
      {
        *(v131 + 13) = [*(v131 + 22) delegate];
        v119 = 1;
        v158 = 1;
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *(v131 + 11) = v10;
        v157 = 1;
        v120 = v10;
      }

      else
      {
        v120 = @"(null)";
      }

      v113 = v120;
      v114 = [*(v131 + 22) delegate];
      v115 = [*(v131 + 22) scanError];
      v116 = [*(v131 + 22) preferredStatefulDescriptor];
      v117 = [*(v131 + 22) alternateStatefulDescriptor];
      v118 = [*(v131 + 22) currentDownload];
      v156 = 0;
      v155 = 0;
      v154 = 0;
      if (v118)
      {
        v11 = [*(v131 + 22) currentDownload];
        *(v131 + 9) = v11;
        v111 = 1;
        v156 = 1;
        v12 = [v11 descriptor];
        *(v131 + 7) = v12;
        v155 = 1;
        v13 = [v12 humanReadableUpdateName];
        v14 = v111;
        *(v131 + 5) = v13;
        v154 = v14 & 1;
        v112 = v13;
      }

      else
      {
        v112 = @"(null)";
      }

      v98 = v112;
      v99 = [*(v131 + 22) currentDownload];
      v15 = [*(v131 + 22) performThirdPartyScan];
      v105 = "NO";
      v16 = "YES";
      v106 = "YES";
      if ((v15 & 1) == 0)
      {
        v16 = "NO";
      }

      v100 = v16;
      v17 = [*(v131 + 22) isTargetedUpdateScheduledForAutoInstall];
      v18 = v106;
      if ((v17 & 1) == 0)
      {
        v18 = v105;
      }

      v101 = v18;
      v19 = [*(v131 + 22) hidingPreferredDescriptor];
      v20 = v106;
      if ((v19 & 1) == 0)
      {
        v20 = v105;
      }

      v102 = v20;
      v103 = [*(*(v131 + 22) + 256) humanReadableUpdateName];
      v21 = MEMORY[0x277D82BE0](v103);
      v22 = v131;
      v104 = v21;
      *(v131 + 3) = v21;
      v23 = [v22[22] hidingAlternateDescriptor];
      v24 = v106;
      if ((v23 & 1) == 0)
      {
        v24 = v105;
      }

      v107 = v24;
      v108 = [*(*(v131 + 22) + 264) humanReadableUpdateName];
      v25 = MEMORY[0x277D82BE0](v108);
      v26 = v131;
      v109 = v25;
      *(v131 + 2) = v25;
      v110 = [v26[22] enrolledBetaProgram];
      v151 = 0;
      if (v110)
      {
        v27 = [*(v131 + 22) enrolledBetaProgram];
        *(v131 + 1) = v27;
        v151 = 1;
        v97 = [v27 programID];
      }

      else
      {
        v97 = 0;
      }

      v88 = v97;
      v96 = [*(v131 + 22) betaPrograms];
      v89 = [v96 count];
      v95 = [*(v131 + 22) currentFullScanOperation];
      v94 = [*(v131 + 22) currentRefreshScanOperation];
      v93 = [*(v131 + 22) currentUpdateOperation];
      v92 = [*(v131 + 22) auxiliaryOperations];
      v90 = &v37;
      buf = v166;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v166, v129, v124, v125, v113, v114, v115, v116, v117, v98, v99, v100, v101, v102, v104, v107, v109, v97, v89, v95, v94, v93, [v92 count]);
      _os_log_impl(&dword_26AC94000, log, v122[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, but we've been given a nil options. Skipping.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v96);
      if (v151)
      {
        MEMORY[0x277D82BD8](*(v131 + 1));
      }

      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v99);
      if (v154)
      {
        MEMORY[0x277D82BD8](*(v131 + 5));
      }

      if (v155)
      {
        MEMORY[0x277D82BD8](*(v131 + 7));
      }

      if (v156)
      {
        MEMORY[0x277D82BD8](*(v131 + 9));
      }

      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v114);
      if (v157)
      {
        MEMORY[0x277D82BD8](*(v131 + 11));
      }

      if (v158)
      {
        MEMORY[0x277D82BD8](*(v131 + 13));
      }

      MEMORY[0x277D82BD8](v126);
      MEMORY[0x277D82BD8](v123);
      v87 = 0;
      objc_storeStrong(&v152, 0);
      objc_storeStrong(&v153, v87);
      objc_storeStrong(&v159, v87);
    }

    objc_storeStrong(&v161, 0);
    *v131 = 1;
  }

  else
  {
    v86 = [*(v131 + 22) log];
    oslog = [v86 oslog];
    MEMORY[0x277D82BD8](v86);
    v148 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v80 = oslog;
      *v81 = v148;
      v82 = SUSettingsUIStateToString([*(v131 + 22) currentState]);
      v83 = MEMORY[0x277D82BE0](v82);
      v147 = v83;
      v84 = [*(v131 + 22) currentState];
      v85 = [*(v131 + 22) delegate];
      v145 = 0;
      v143 = 0;
      if (v85)
      {
        v146 = [*(v131 + 22) delegate];
        v78 = 1;
        v145 = 1;
        v28 = objc_opt_class();
        v144 = NSStringFromClass(v28);
        v143 = 1;
        v79 = v144;
      }

      else
      {
        v79 = @"(null)";
      }

      v72 = v79;
      v73 = [*(v131 + 22) delegate];
      v74 = [*(v131 + 22) scanError];
      v75 = [*(v131 + 22) preferredStatefulDescriptor];
      v76 = [*(v131 + 22) alternateStatefulDescriptor];
      v77 = [*(v131 + 22) currentDownload];
      v141 = 0;
      v139 = 0;
      v137 = 0;
      if (v77)
      {
        v142 = [*(v131 + 22) currentDownload];
        v70 = 1;
        v141 = 1;
        v140 = [v142 descriptor];
        v139 = 1;
        v138 = [v140 humanReadableUpdateName];
        v137 = 1;
        v71 = v138;
      }

      else
      {
        v71 = @"(null)";
      }

      v57 = v71;
      v58 = [*(v131 + 22) currentDownload];
      v29 = [*(v131 + 22) performThirdPartyScan];
      v64 = "NO";
      v30 = "YES";
      v65 = "YES";
      if ((v29 & 1) == 0)
      {
        v30 = "NO";
      }

      v59 = v30;
      v31 = [*(v131 + 22) isTargetedUpdateScheduledForAutoInstall];
      v32 = v65;
      if ((v31 & 1) == 0)
      {
        v32 = v64;
      }

      v60 = v32;
      v33 = [*(v131 + 22) hidingPreferredDescriptor];
      v34 = v65;
      if ((v33 & 1) == 0)
      {
        v34 = v64;
      }

      v61 = v34;
      v62 = [*(*(v131 + 22) + 256) humanReadableUpdateName];
      v63 = MEMORY[0x277D82BE0](v62);
      v136 = v63;
      v35 = [*(v131 + 22) hidingAlternateDescriptor];
      v36 = v65;
      if ((v35 & 1) == 0)
      {
        v36 = v64;
      }

      v66 = v36;
      v67 = [*(*(v131 + 22) + 264) humanReadableUpdateName];
      v68 = MEMORY[0x277D82BE0](v67);
      v135 = v68;
      v69 = [*(v131 + 22) enrolledBetaProgram];
      v133 = 0;
      if (v69)
      {
        v134 = [*(v131 + 22) enrolledBetaProgram];
        v133 = 1;
        v56 = [v134 programID];
      }

      else
      {
        v56 = 0;
      }

      v45 = v56;
      v55 = [*(v131 + 22) betaPrograms];
      v46 = [v55 count];
      v54 = [*(v131 + 22) currentFullScanOperation];
      v53 = [*(v131 + 22) currentRefreshScanOperation];
      v52 = [*(v131 + 22) currentUpdateOperation];
      v51 = [*(v131 + 22) auxiliaryOperations];
      v47 = [v51 count];
      v50 = [*(v131 + 19) identifier];
      v48 = &v37;
      v49 = v165;
      __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v165, v129, v83, v84, v72, v73, v74, v75, v76, v57, v58, v59, v60, v61, v63, v66, v68, v56, v46, v54, v53, v52, v47, v50);
      _os_log_impl(&dword_26AC94000, v80, v81[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has started on behalf of: %{public}@", v49, 0xE8u);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v55);
      if (v133)
      {
        MEMORY[0x277D82BD8](v134);
      }

      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v58);
      if (v137)
      {
        MEMORY[0x277D82BD8](v138);
      }

      if (v139)
      {
        MEMORY[0x277D82BD8](v140);
      }

      if (v141)
      {
        MEMORY[0x277D82BD8](v142);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v73);
      if (v143)
      {
        MEMORY[0x277D82BD8](v144);
      }

      if (v145)
      {
        MEMORY[0x277D82BD8](v146);
      }

      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v82);
      v44 = 0;
      objc_storeStrong(&v135, 0);
      objc_storeStrong(&v136, v44);
      objc_storeStrong(&v147, v44);
    }

    objc_storeStrong(&oslog, 0);
    v42 = [*(v131 + 19) identifier];
    v43 = [v42 isEqualToString:@"com.apple.Preferences.software_update"];
    MEMORY[0x277D82BD8](v42);
    if (v43)
    {
      *v131 = 1;
    }

    else
    {
      [*(v131 + 22) setPerformThirdPartyScan:1];
      v40 = *(*(v131 + 22) + 216);
      v39 = @"PerformThirdPartyScan";
      v41 = objc_alloc_init(SUSettingsStatefulUIManagerFSMParam);
      [v40 postEvent:v39 withInfo:?];
      MEMORY[0x277D82BD8](v41);
      *v131 = 0;
    }
  }

  v38 = 0;
  objc_storeStrong(&v163, 0);
  objc_storeStrong(location, v38);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6
{
  v186 = &v207;
  obj = a4;
  v188 = a5;
  v189 = a6;
  v190 = "[SUSettingsStatefulUIManager client:scanRequestDidFinishForOptions:results:error:]";
  v229 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v224 = 0;
  objc_storeStrong(&v224, obj);
  v223 = 0;
  objc_storeStrong(&v223, v188);
  v222 = 0;
  objc_storeStrong(&v222, v189);
  v221 = 0;
  v185 = 1;
  if (v224)
  {
    v184 = [v186[24] identifier];
    v6 = v184;
    v186[21] = v6;
    v221 = 1;
    v185 = v6 == 0;
  }

  v183 = v185;
  if (v221)
  {
    MEMORY[0x277D82BD8](v186[21]);
  }

  if (v183)
  {
    v182 = [v186[27] log];
    v180 = v182;
    v181 = [v180 oslog];
    v7 = v181;
    v8 = v180;
    v186[19] = v7;
    MEMORY[0x277D82BD8](v8);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v186[19], OS_LOG_TYPE_DEFAULT))
    {
      log = v186[19];
      *v178 = type;
      v179 = [v186[27] currentState];
      v176 = SUSettingsUIStateToString(v179);
      v173 = v176;
      v9 = MEMORY[0x277D82BE0](v173);
      v10 = v186;
      v174 = v9;
      v186[17] = v9;
      v175 = [v10[27] currentState];
      v172 = [v186[27] delegate];
      v171 = v172;
      v217 = 0;
      v216 = 0;
      if (v171)
      {
        v170 = [v186[27] delegate];
        v186[16] = v170;
        v217 = 1;
        aClass = objc_opt_class();
        v168 = NSStringFromClass(aClass);
        v11 = v168;
        v186[14] = v11;
        v216 = 1;
        v167 = v11;
      }

      else
      {
        v167 = @"(null)";
      }

      v165 = v167;
      v166 = [v186[27] delegate];
      v163 = v166;
      v164 = [v186[27] scanError];
      v161 = v164;
      v162 = [v186[27] preferredStatefulDescriptor];
      v159 = v162;
      v160 = [v186[27] alternateStatefulDescriptor];
      v157 = v160;
      v158 = [v186[27] currentDownload];
      v156 = v158;
      v215 = 0;
      v214 = 0;
      v213 = 0;
      if (v156)
      {
        v155 = [v186[27] currentDownload];
        v12 = v155;
        v186[12] = v12;
        v215 = 1;
        v154 = [v12 descriptor];
        v13 = v154;
        v186[10] = v13;
        v214 = 1;
        v153 = [v13 humanReadableUpdateName];
        v14 = v153;
        v186[8] = v14;
        v213 = 1;
        v152 = v14;
      }

      else
      {
        v152 = @"(null)";
      }

      v150 = v152;
      v151 = [v186[27] currentDownload];
      v148 = v151;
      v149 = [v186[27] performThirdPartyScan];
      v15 = "YES";
      if ((v149 & 1) == 0)
      {
        v15 = "NO";
      }

      v146 = v15;
      v147 = [v186[27] isTargetedUpdateScheduledForAutoInstall];
      v16 = "YES";
      if ((v147 & 1) == 0)
      {
        v16 = "NO";
      }

      v144 = v16;
      v145 = [v186[27] hidingPreferredDescriptor];
      v17 = "YES";
      if ((v145 & 1) == 0)
      {
        v17 = "NO";
      }

      v142 = v17;
      v143 = [*(v186[27] + 32) humanReadableUpdateName];
      v139 = v143;
      v18 = MEMORY[0x277D82BE0](v139);
      v19 = v186;
      v140 = v18;
      v186[6] = v18;
      v141 = [v19[27] hidingAlternateDescriptor];
      v20 = "YES";
      if ((v141 & 1) == 0)
      {
        v20 = "NO";
      }

      v137 = v20;
      v138 = [*(v186[27] + 33) humanReadableUpdateName];
      v134 = v138;
      v21 = MEMORY[0x277D82BE0](v134);
      v22 = v186;
      v135 = v21;
      v186[5] = v21;
      v136 = [v22[27] enrolledBetaProgram];
      v133 = v136;
      v210 = 0;
      if (v133)
      {
        v132 = [v186[27] enrolledBetaProgram];
        v23 = v132;
        v186[4] = v23;
        v210 = 1;
        v131 = [v23 programID];
        v130 = v131;
      }

      else
      {
        v130 = 0;
      }

      v128 = v130;
      v129 = [v186[27] betaPrograms];
      v126 = v129;
      v127 = [v126 count];
      v125 = [v186[27] currentFullScanOperation];
      v123 = v125;
      v124 = [v186[27] currentRefreshScanOperation];
      v121 = v124;
      v122 = [v186[27] currentUpdateOperation];
      v119 = v122;
      v120 = [v186[27] auxiliaryOperations];
      v117 = v120;
      v118 = [v117 count];
      v115 = &v34;
      buf = v228;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v228, v190, v174, v175, v165, v163, v161, v159, v157, v150, v148, v146, v144, v142, v140, v137, v135, v130, v127, v123, v121, v119, v118);
      _os_log_impl(&dword_26AC94000, log, v178[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, but we've been given a nil options. Skipping.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v121);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v126);
      if (v210)
      {
        MEMORY[0x277D82BD8](v186[4]);
      }

      MEMORY[0x277D82BD8](v133);
      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v148);
      if (v213)
      {
        MEMORY[0x277D82BD8](v186[8]);
      }

      if (v214)
      {
        MEMORY[0x277D82BD8](v186[10]);
      }

      if (v215)
      {
        MEMORY[0x277D82BD8](v186[12]);
      }

      MEMORY[0x277D82BD8](v156);
      MEMORY[0x277D82BD8](v157);
      MEMORY[0x277D82BD8](v159);
      MEMORY[0x277D82BD8](v161);
      MEMORY[0x277D82BD8](v163);
      if (v216)
      {
        MEMORY[0x277D82BD8](v186[14]);
      }

      if (v217)
      {
        MEMORY[0x277D82BD8](v186[16]);
      }

      MEMORY[0x277D82BD8](v171);
      MEMORY[0x277D82BD8](v173);
      objc_storeStrong(&v211, 0);
      objc_storeStrong(&v212, 0);
      objc_storeStrong(&v218, 0);
    }

    objc_storeStrong(&v220, 0);
    *(v186 + 6) = 1;
  }

  else
  {
    v114 = [v186[27] log];
    v112 = v114;
    v113 = [v112 oslog];
    v24 = v113;
    v25 = v112;
    v186[2] = v24;
    MEMORY[0x277D82BD8](v25);
    v208 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v186[2], OS_LOG_TYPE_DEFAULT))
    {
      v109 = v186[2];
      *v110 = v208;
      v111 = [v186[27] currentState];
      v108 = SUSettingsUIStateToString(v111);
      v105 = v108;
      v26 = MEMORY[0x277D82BE0](v105);
      v27 = v186;
      v106 = v26;
      *v186 = v26;
      v107 = [v27[27] currentState];
      v104 = [v186[27] delegate];
      v103 = v104;
      v205 = 0;
      v203 = 0;
      if (v103)
      {
        v102 = [v186[27] delegate];
        v206 = v102;
        v205 = 1;
        v101 = objc_opt_class();
        v100 = NSStringFromClass(v101);
        v204 = v100;
        v203 = 1;
        v99 = v204;
      }

      else
      {
        v99 = @"(null)";
      }

      v97 = v99;
      v98 = [v186[27] delegate];
      v95 = v98;
      v96 = [v186[27] scanError];
      v93 = v96;
      v94 = [v186[27] preferredStatefulDescriptor];
      v91 = v94;
      v92 = [v186[27] alternateStatefulDescriptor];
      v89 = v92;
      v90 = [v186[27] currentDownload];
      v88 = v90;
      v201 = 0;
      v199 = 0;
      v197 = 0;
      if (v88)
      {
        v87 = [v186[27] currentDownload];
        v202 = v87;
        v201 = 1;
        v86 = [v202 descriptor];
        v200 = v86;
        v199 = 1;
        v85 = [v200 humanReadableUpdateName];
        v198 = v85;
        v197 = 1;
        v84 = v198;
      }

      else
      {
        v84 = @"(null)";
      }

      v82 = v84;
      v83 = [v186[27] currentDownload];
      v80 = v83;
      v81 = [v186[27] performThirdPartyScan];
      v28 = "YES";
      if ((v81 & 1) == 0)
      {
        v28 = "NO";
      }

      v78 = v28;
      v79 = [v186[27] isTargetedUpdateScheduledForAutoInstall];
      v29 = "YES";
      if ((v79 & 1) == 0)
      {
        v29 = "NO";
      }

      v76 = v29;
      v77 = [v186[27] hidingPreferredDescriptor];
      v30 = "YES";
      if ((v77 & 1) == 0)
      {
        v30 = "NO";
      }

      v74 = v30;
      v75 = [*(v186[27] + 32) humanReadableUpdateName];
      v71 = v75;
      v72 = MEMORY[0x277D82BE0](v71);
      v196 = v72;
      v73 = [v186[27] hidingAlternateDescriptor];
      v31 = "YES";
      if ((v73 & 1) == 0)
      {
        v31 = "NO";
      }

      v69 = v31;
      v70 = [*(v186[27] + 33) humanReadableUpdateName];
      v66 = v70;
      v67 = MEMORY[0x277D82BE0](v66);
      v195 = v67;
      v68 = [v186[27] enrolledBetaProgram];
      v65 = v68;
      v193 = 0;
      if (v65)
      {
        v64 = [v186[27] enrolledBetaProgram];
        v194 = v64;
        v193 = 1;
        v63 = [v194 programID];
        v62 = v63;
      }

      else
      {
        v62 = 0;
      }

      v60 = v62;
      v61 = [v186[27] betaPrograms];
      v58 = v61;
      v59 = [v58 count];
      v57 = [v186[27] currentFullScanOperation];
      v55 = v57;
      v56 = [v186[27] currentRefreshScanOperation];
      v53 = v56;
      v54 = [v186[27] currentUpdateOperation];
      v51 = v54;
      v52 = [v186[27] auxiliaryOperations];
      v49 = v52;
      v50 = [v49 count];
      v48 = [v186[24] identifier];
      v47 = v48;
      v45 = &v34;
      v46 = v227;
      __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v227, v190, v106, v107, v97, v95, v93, v91, v89, v82, v80, v78, v76, v74, v72, v69, v67, v62, v59, v55, v53, v51, v50, v47);
      _os_log_impl(&dword_26AC94000, v109, v110[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, triggered by the initiator: %{public}@", v46, 0xE8u);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v58);
      if (v193)
      {
        MEMORY[0x277D82BD8](v194);
      }

      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v80);
      if (v197)
      {
        MEMORY[0x277D82BD8](v198);
      }

      if (v199)
      {
        MEMORY[0x277D82BD8](v200);
      }

      if (v201)
      {
        MEMORY[0x277D82BD8](v202);
      }

      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v91);
      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v95);
      if (v203)
      {
        MEMORY[0x277D82BD8](v204);
      }

      if (v205)
      {
        MEMORY[0x277D82BD8](v206);
      }

      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v105);
      objc_storeStrong(&v195, 0);
      objc_storeStrong(&v196, 0);
      objc_storeStrong(&v207, 0);
    }

    objc_storeStrong(&v209, 0);
    v44 = [v186[24] identifier];
    v42 = v44;
    v43 = [v42 isEqualToString:@"com.apple.Preferences.software_update"];
    MEMORY[0x277D82BD8](v42);
    if (v43)
    {
      *(v186 + 6) = 1;
    }

    else
    {
      v41 = MEMORY[0x277D82BE0](v186[27]);
      objc_sync_enter(v41);
      if ((*(v186[27] + 10) & 1) == 0)
      {
        v40 = [v186[27] log];
        v38 = v40;
        v39 = [v38 oslog];
        oslog = v39;
        MEMORY[0x277D82BD8](v38);
        v191 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v35 = oslog;
          *v36 = v191;
          v32 = v186[22];
          v33 = v186[23];
          v37 = v226;
          __os_log_helper_16_2_3_8_32_8_66_8_66(v226, v190, v32, v33);
          _os_log_impl(&dword_26AC94000, v35, v36[0], "%s: Got a third-party scan completion even, but performThirdPartyScan is NO. Recovering.\nerror: %{public}@; SUScanResults: %{public}@", v37, 0x20u);
        }

        objc_storeStrong(&oslog, 0);
      }

      [v186[27] performFullScanWithScanResults:v186[23] andScanError:v186[22]];
      objc_sync_exit(v41);
      MEMORY[0x277D82BD8](v41);
      *(v186 + 6) = 0;
    }
  }

  objc_storeStrong(&v222, 0);
  objc_storeStrong(&v223, 0);
  objc_storeStrong(&v224, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 downloadDidStart:(id)a4
{
  obj = a4;
  v70 = "[SUSettingsStatefulUIManager client:downloadDidStart:]";
  v105 = *MEMORY[0x277D85DE8];
  v102 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v100 = 0;
  objc_storeStrong(&v100, obj);
  v69 = [(SUSettingsStatefulUIManager *)v102 log];
  oslog = [(SUCoreLog *)v69 oslog];
  MEMORY[0x277D82BD8](v69);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v64 = type;
    v65 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v102 currentState]);
    v66 = MEMORY[0x277D82BE0](v65);
    v97 = v66;
    v67 = [(SUSettingsStatefulUIManager *)v102 currentState];
    v68 = [(SUSettingsStatefulUIManager *)v102 delegate];
    v95 = 0;
    v93 = 0;
    if (v68)
    {
      v96 = [(SUSettingsStatefulUIManager *)v102 delegate];
      v61 = 1;
      v95 = 1;
      v4 = objc_opt_class();
      v94 = NSStringFromClass(v4);
      v93 = 1;
      v62 = v94;
    }

    else
    {
      v62 = @"(null)";
    }

    v55 = v62;
    v56 = [(SUSettingsStatefulUIManager *)v102 delegate];
    v57 = [(SUSettingsStatefulUIManager *)v102 scanError];
    v58 = [(SUSettingsStatefulUIManager *)v102 preferredStatefulDescriptor];
    v59 = [(SUSettingsStatefulUIManager *)v102 alternateStatefulDescriptor];
    v60 = [(SUSettingsStatefulUIManager *)v102 currentDownload];
    v91 = 0;
    v89 = 0;
    v87 = 0;
    if (v60)
    {
      v92 = [(SUSettingsStatefulUIManager *)v102 currentDownload];
      v53 = 1;
      v91 = 1;
      v90 = [(SUDownload *)v92 descriptor];
      v89 = 1;
      v88 = [(SUDescriptor *)v90 humanReadableUpdateName];
      v87 = 1;
      v54 = v88;
    }

    else
    {
      v54 = @"(null)";
    }

    v40 = v54;
    v41 = [(SUSettingsStatefulUIManager *)v102 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v102 performThirdPartyScan];
    v47 = "NO";
    v6 = "YES";
    v48 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v42 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v102 isTargetedUpdateScheduledForAutoInstall];
    v8 = v48;
    if (!v7)
    {
      v8 = v47;
    }

    v43 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v102 hidingPreferredDescriptor];
    v10 = v48;
    if (!v9)
    {
      v10 = v47;
    }

    v44 = v10;
    v45 = [(SUSettingsStatefulDescriptor *)v102->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v46 = MEMORY[0x277D82BE0](v45);
    v86 = v46;
    v11 = [(SUSettingsStatefulUIManager *)v102 hidingAlternateDescriptor];
    v12 = v48;
    if (!v11)
    {
      v12 = v47;
    }

    v49 = v12;
    v50 = [(SUSettingsStatefulDescriptor *)v102->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](v50);
    v85 = v51;
    v52 = [(SUSettingsStatefulUIManager *)v102 enrolledBetaProgram];
    v83 = 0;
    if (v52)
    {
      v84 = [(SUSettingsStatefulUIManager *)v102 enrolledBetaProgram];
      v83 = 1;
      v39 = [(SDBetaProgram *)v84 programID];
    }

    else
    {
      v39 = 0;
    }

    v27 = v39;
    v38 = [(SUSettingsStatefulUIManager *)v102 betaPrograms];
    v28 = [(NSArray *)v38 count];
    v37 = [(SUSettingsStatefulUIManager *)v102 currentFullScanOperation];
    v36 = [(SUSettingsStatefulUIManager *)v102 currentRefreshScanOperation];
    v35 = [(SUSettingsStatefulUIManager *)v102 currentUpdateOperation];
    v34 = [(SUSettingsStatefulUIManager *)v102 auxiliaryOperations];
    v29 = [(NSMutableSet *)v34 count];
    v33 = [v100 descriptor];
    v32 = [v33 humanReadableUpdateName];
    v82 = MEMORY[0x277D82BE0](v32);
    v30 = &v13;
    buf = v104;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0(v104, v70, v66, v67, v55, v56, v57, v58, v59, v40, v41, v42, v43, v44, v46, v49, v51, v39, v28, v37, v36, v35, v29, v82, v100);
    _os_log_impl(&dword_26AC94000, log, v64[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to download an update targeting %{public}@ (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v41);
    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v65);
    v26 = 0;
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v85, v26);
    objc_storeStrong(&v86, v26);
    objc_storeStrong(&v97, v26);
  }

  objc_storeStrong(&oslog, 0);
  if (v102->_currentUpdateOperation)
  {
    v81 = 1;
  }

  else
  {
    v80 = [(SUSettingsStatefulUIManager *)v102 targetedUpdateForDownload:v100];
    if (v80)
    {
      v17 = v102;
      v15 = v100;
      v16 = &v72;
      v72 = MEMORY[0x277D85DD0];
      v73 = -1073741824;
      v74 = 0;
      v75 = __55__SUSettingsStatefulUIManager_client_downloadDidStart___block_invoke;
      v76 = &unk_279CB9820;
      v20 = v77;
      v77[0] = MEMORY[0x277D82BE0](v102);
      v19 = (v16 + 5);
      v77[1] = MEMORY[0x277D82BE0](v80);
      v18 = (v16 + 6);
      v77[2] = MEMORY[0x277D82BE0](v100);
      v21 = 0;
      [SUSettingsStatefulUIManager updateStatePostDownloadOperation:v17 withDownload:"updateStatePostDownloadOperation:withDownload:error:completionHandler:" error:1 completionHandler:v15];
      objc_storeStrong(v18, v21);
      objc_storeStrong(v19, v21);
      objc_storeStrong(v20, v21);
      v81 = 0;
    }

    else
    {
      v25 = [(SUSettingsStatefulUIManager *)v102 log];
      v79 = [(SUCoreLog *)v25 oslog];
      MEMORY[0x277D82BD8](v25);
      v78 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v22 = v79;
        *v23 = v78;
        v24 = v103;
        __os_log_helper_16_2_1_8_32(v103, v70);
        _os_log_error_impl(&dword_26AC94000, v22, v23[0], "%s: Could not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v24, 0xCu);
      }

      objc_storeStrong(&v79, 0);
      [(SUSettingsStatefulUIManager *)v102 checkForUpdatesInBackground];
      v81 = 1;
    }

    objc_storeStrong(&v80, 0);
  }

  v14 = 0;
  objc_storeStrong(&v100, 0);
  objc_storeStrong(location, v14);
  *MEMORY[0x277D85DE8];
}

void __55__SUSettingsStatefulUIManager_client_downloadDidStart___block_invoke(void *a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v3 = a1[4];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__SUSettingsStatefulUIManager_client_downloadDidStart___block_invoke_2;
  v8 = &unk_279CB94B0;
  v9 = MEMORY[0x277D82BE0](a1[4]);
  v10 = MEMORY[0x277D82BE0](a1[5]);
  v11[0] = MEMORY[0x277D82BE0](a1[6]);
  [v3 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:?];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
}

uint64_t __55__SUSettingsStatefulUIManager_client_downloadDidStart___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didStartDownloadForDescriptor:*(a1 + 40) withDownload:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)client:(id)a3 downloadProgressDidChange:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  if ([(SUSettingsStatefulUIManager *)v37 currentState]== 4)
  {
    v33 = [v35 progress];
    [v33 normalizedPercentComplete];
    v32 = v4;
    v31 = [v33 phase];
    v15 = [(SUSettingsStatefulUIManager *)v37 log];
    v30 = [(SUCoreLog *)v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      log = v30;
      type = v29;
      v14 = [v35 descriptor];
      v13 = [v14 humanReadableUpdateName];
      v8 = MEMORY[0x277D82BE0](v13);
      v28 = v8;
      *&v9 = v32;
      v10 = v31;
      [v33 timeRemaining];
      __os_log_helper_16_2_6_8_32_8_66_8_0_8_66_8_0_8_0(v39, "[SUSettingsStatefulUIManager client:downloadProgressDidChange:]", v8, v9, v10, v5, v35);
      _os_log_impl(&dword_26AC94000, log, type, "%s [->%{public}@]: progress: %.02f; phase: %{public}@; time remaining: %f, download: %p", v39, 0x3Eu);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&v30, 0);
    [(SUSettingsStatefulUIManager *)v37 setCurrentDownload:v35];
    v27 = [(SUSettingsStatefulUIManager *)v37 targetedUpdateForDownload:v35];
    if (v27)
    {
      [v27 updateStateFromProgressedDownload:v35];
      v6 = v37;
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __64__SUSettingsStatefulUIManager_client_downloadProgressDidChange___block_invoke;
      v21 = &unk_279CB94B0;
      v22 = MEMORY[0x277D82BE0](v37);
      v23 = MEMORY[0x277D82BE0](v27);
      v24 = MEMORY[0x277D82BE0](v35);
      [(SUSettingsStatefulUIManager *)v6 executeOperationOnDelegate:sel_statefulUIManager_didChangeProgressForDownloadOfDescriptor_withDownload_ usingBlock:&v17];
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      v34 = 0;
    }

    else
    {
      v7 = [(SUSettingsStatefulUIManager *)v37 log];
      v26 = [(SUCoreLog *)v7 oslog];
      MEMORY[0x277D82BD8](v7);
      v25 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v38, "[SUSettingsStatefulUIManager client:downloadProgressDidChange:]");
        _os_log_error_impl(&dword_26AC94000, v26, v25, "%s: Could not resolve the targeted update from the current download. Skipping on the downloadProgressDidChange event and performing a new scan instead.", v38, 0xCu);
      }

      objc_storeStrong(&v26, 0);
      [(SUSettingsStatefulUIManager *)v37 checkForAvailableUpdates];
      v34 = 1;
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v34 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __64__SUSettingsStatefulUIManager_client_downloadProgressDidChange___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didChangeProgressForDownloadOfDescriptor:*(a1 + 40) withDownload:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5
{
  obj = a4;
  v73 = a5;
  v71 = "[SUSettingsStatefulUIManager client:downloadDidFinish:withInstallPolicy:]";
  v108 = *MEMORY[0x277D85DE8];
  v105 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v103 = 0;
  objc_storeStrong(&v103, obj);
  v102 = 0;
  objc_storeStrong(&v102, v73);
  v70 = [(SUSettingsStatefulUIManager *)v105 log];
  oslog = [(SUCoreLog *)v70 oslog];
  MEMORY[0x277D82BD8](v70);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v65 = type;
    v66 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v105 currentState]);
    v67 = MEMORY[0x277D82BE0](v66);
    v99 = v67;
    v68 = [(SUSettingsStatefulUIManager *)v105 currentState];
    v69 = [(SUSettingsStatefulUIManager *)v105 delegate];
    v97 = 0;
    v95 = 0;
    if (v69)
    {
      v98 = [(SUSettingsStatefulUIManager *)v105 delegate];
      v62 = 1;
      v97 = 1;
      v5 = objc_opt_class();
      v96 = NSStringFromClass(v5);
      v95 = 1;
      v63 = v96;
    }

    else
    {
      v63 = @"(null)";
    }

    v56 = v63;
    v57 = [(SUSettingsStatefulUIManager *)v105 delegate];
    v58 = [(SUSettingsStatefulUIManager *)v105 scanError];
    v59 = [(SUSettingsStatefulUIManager *)v105 preferredStatefulDescriptor];
    v60 = [(SUSettingsStatefulUIManager *)v105 alternateStatefulDescriptor];
    v61 = [(SUSettingsStatefulUIManager *)v105 currentDownload];
    v93 = 0;
    v91 = 0;
    v89 = 0;
    if (v61)
    {
      v94 = [(SUSettingsStatefulUIManager *)v105 currentDownload];
      v54 = 1;
      v93 = 1;
      v92 = [(SUDownload *)v94 descriptor];
      v91 = 1;
      v90 = [(SUDescriptor *)v92 humanReadableUpdateName];
      v89 = 1;
      v55 = v90;
    }

    else
    {
      v55 = @"(null)";
    }

    v41 = v55;
    v42 = [(SUSettingsStatefulUIManager *)v105 currentDownload];
    v6 = [(SUSettingsStatefulUIManager *)v105 performThirdPartyScan];
    v48 = "NO";
    v7 = "YES";
    v49 = "YES";
    if (!v6)
    {
      v7 = "NO";
    }

    v43 = v7;
    v8 = [(SUSettingsStatefulUIManager *)v105 isTargetedUpdateScheduledForAutoInstall];
    v9 = v49;
    if (!v8)
    {
      v9 = v48;
    }

    v44 = v9;
    v10 = [(SUSettingsStatefulUIManager *)v105 hidingPreferredDescriptor];
    v11 = v49;
    if (!v10)
    {
      v11 = v48;
    }

    v45 = v11;
    v46 = [(SUSettingsStatefulDescriptor *)v105->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](v46);
    v88 = v47;
    v12 = [(SUSettingsStatefulUIManager *)v105 hidingAlternateDescriptor];
    v13 = v49;
    if (!v12)
    {
      v13 = v48;
    }

    v50 = v13;
    v51 = [(SUSettingsStatefulDescriptor *)v105->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v52 = MEMORY[0x277D82BE0](v51);
    v87 = v52;
    v53 = [(SUSettingsStatefulUIManager *)v105 enrolledBetaProgram];
    v85 = 0;
    if (v53)
    {
      v86 = [(SUSettingsStatefulUIManager *)v105 enrolledBetaProgram];
      v85 = 1;
      v40 = [(SDBetaProgram *)v86 programID];
    }

    else
    {
      v40 = 0;
    }

    v28 = v40;
    v39 = [(SUSettingsStatefulUIManager *)v105 betaPrograms];
    v29 = [(NSArray *)v39 count];
    v38 = [(SUSettingsStatefulUIManager *)v105 currentFullScanOperation];
    v37 = [(SUSettingsStatefulUIManager *)v105 currentRefreshScanOperation];
    v36 = [(SUSettingsStatefulUIManager *)v105 currentUpdateOperation];
    v35 = [(SUSettingsStatefulUIManager *)v105 auxiliaryOperations];
    v30 = [(NSMutableSet *)v35 count];
    v34 = [v103 descriptor];
    v33 = [v34 humanReadableUpdateName];
    v84 = MEMORY[0x277D82BE0](v33);
    v31 = &v14;
    buf = v107;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0(v107, v71, v67, v68, v56, v57, v58, v59, v60, v41, v42, v43, v44, v45, v47, v50, v52, v40, v29, v38, v37, v36, v30, v84, v103);
    _os_log_impl(&dword_26AC94000, log, v65[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to download an update targeting %{public}@: (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v42);
    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v66);
    v27 = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v87, v27);
    objc_storeStrong(&v88, v27);
    objc_storeStrong(&v99, v27);
  }

  objc_storeStrong(&oslog, 0);
  if (v105->_currentUpdateOperation)
  {
    v83 = 1;
  }

  else
  {
    v82 = [(SUSettingsStatefulUIManager *)v105 targetedUpdateForDownload:v103];
    if (v82)
    {
      v18 = v105;
      v16 = v103;
      v17 = &v74;
      v74 = MEMORY[0x277D85DD0];
      v75 = -1073741824;
      v76 = 0;
      v77 = __74__SUSettingsStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke;
      v78 = &unk_279CB9820;
      v21 = v79;
      v79[0] = MEMORY[0x277D82BE0](v105);
      v20 = (v17 + 5);
      v79[1] = MEMORY[0x277D82BE0](v82);
      v19 = (v17 + 6);
      v79[2] = MEMORY[0x277D82BE0](v103);
      v22 = 0;
      [SUSettingsStatefulUIManager updateStatePostDownloadOperation:v18 withDownload:"updateStatePostDownloadOperation:withDownload:error:completionHandler:" error:1 completionHandler:v16];
      objc_storeStrong(v19, v22);
      objc_storeStrong(v20, v22);
      objc_storeStrong(v21, v22);
      v83 = 0;
    }

    else
    {
      v26 = [(SUSettingsStatefulUIManager *)v105 log];
      v81 = [(SUCoreLog *)v26 oslog];
      MEMORY[0x277D82BD8](v26);
      v80 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        v23 = v81;
        *v24 = v80;
        v25 = v106;
        __os_log_helper_16_2_1_8_32(v106, v71);
        _os_log_error_impl(&dword_26AC94000, v23, v24[0], "%s: Could not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v25, 0xCu);
      }

      objc_storeStrong(&v81, 0);
      [(SUSettingsStatefulUIManager *)v105 checkForAvailableUpdates];
      v83 = 1;
    }

    objc_storeStrong(&v82, 0);
  }

  v15 = 0;
  objc_storeStrong(&v102, 0);
  objc_storeStrong(&v103, v15);
  objc_storeStrong(location, v15);
  *MEMORY[0x277D85DE8];
}

void __74__SUSettingsStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke(void *a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v3 = a1[4];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __74__SUSettingsStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke_2;
  v8 = &unk_279CB94B0;
  v9 = MEMORY[0x277D82BE0](a1[4]);
  v10 = MEMORY[0x277D82BE0](a1[5]);
  v11[0] = MEMORY[0x277D82BE0](a1[6]);
  [v3 executeOperationOnDelegate:sel_statefulUIManager_didFinishDownloadForDescriptor_withDownload_ usingBlock:?];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
}

uint64_t __74__SUSettingsStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didFinishDownloadForDescriptor:*(a1 + 40) withDownload:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4
{
  v62 = &v81;
  obj = a4;
  v61 = "[SUSettingsStatefulUIManager client:downloadWasInvalidatedForNewUpdatesAvailable:]";
  v85 = *MEMORY[0x277D85DE8];
  v83 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v81 = 0;
  objc_storeStrong(&v81, obj);
  v60 = [(SUSettingsStatefulUIManager *)v83 log];
  oslog = [(SUCoreLog *)v60 oslog];
  MEMORY[0x277D82BD8](v60);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v55 = type;
    v56 = SUSettingsUIStateToString([v62[3] currentState]);
    v57 = MEMORY[0x277D82BE0](v56);
    v78 = v57;
    v58 = [v62[3] currentState];
    v59 = [v62[3] delegate];
    v76 = 0;
    v74 = 0;
    if (v59)
    {
      v77 = [v62[3] delegate];
      v52 = 1;
      v76 = 1;
      v4 = objc_opt_class();
      v75 = NSStringFromClass(v4);
      v74 = 1;
      v53 = v75;
    }

    else
    {
      v53 = @"(null)";
    }

    v46 = v53;
    v47 = [v62[3] delegate];
    v48 = [v62[3] scanError];
    v49 = [v62[3] preferredStatefulDescriptor];
    v50 = [v62[3] alternateStatefulDescriptor];
    v51 = [v62[3] currentDownload];
    v72 = 0;
    v70 = 0;
    v68 = 0;
    if (v51)
    {
      v73 = [v62[3] currentDownload];
      v44 = 1;
      v72 = 1;
      v71 = [v73 descriptor];
      v70 = 1;
      v69 = [v71 humanReadableUpdateName];
      v68 = 1;
      v45 = v69;
    }

    else
    {
      v45 = @"(null)";
    }

    v31 = v45;
    v32 = [v62[3] currentDownload];
    v5 = [v62[3] performThirdPartyScan];
    v38 = "NO";
    v6 = "YES";
    v39 = "YES";
    if ((v5 & 1) == 0)
    {
      v6 = "NO";
    }

    v33 = v6;
    v7 = [v62[3] isTargetedUpdateScheduledForAutoInstall];
    v8 = v39;
    if ((v7 & 1) == 0)
    {
      v8 = v38;
    }

    v34 = v8;
    v9 = [v62[3] hidingPreferredDescriptor];
    v10 = v39;
    if ((v9 & 1) == 0)
    {
      v10 = v38;
    }

    v35 = v10;
    v36 = [*(v62[3] + 32) humanReadableUpdateName];
    v37 = MEMORY[0x277D82BE0](v36);
    v67 = v37;
    v11 = [v62[3] hidingAlternateDescriptor];
    v12 = v39;
    if ((v11 & 1) == 0)
    {
      v12 = v38;
    }

    v40 = v12;
    v41 = [*(v62[3] + 33) humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](v41);
    v66 = v42;
    v43 = [v62[3] enrolledBetaProgram];
    v64 = 0;
    if (v43)
    {
      v65 = [v62[3] enrolledBetaProgram];
      v64 = 1;
      v30 = [v65 programID];
    }

    else
    {
      v30 = 0;
    }

    v21 = v30;
    v29 = [v62[3] betaPrograms];
    v22 = [v29 count];
    v28 = [v62[3] currentFullScanOperation];
    v27 = [v62[3] currentRefreshScanOperation];
    v26 = [v62[3] currentUpdateOperation];
    v25 = [v62[3] auxiliaryOperations];
    v13 = [v25 count];
    v14 = *v62;
    v23 = &v17;
    buf = v84;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v84, v61, v57, v58, v46, v47, v48, v49, v50, v31, v32, v33, v34, v35, v37, v40, v42, v30, v22, v28, v27, v26, v13, v14);
    _os_log_impl(&dword_26AC94000, log, v55[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload was invalidated for new updates available: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v32);
    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v56);
    v20 = 0;
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, v20);
    objc_storeStrong(&v78, v20);
  }

  objc_storeStrong(&oslog, 0);
  v15 = v62[3];
  v18 = &v81;
  v16 = *v62;
  v19 = 0;
  [v15 performFullScanWithScanResults:v16 andScanError:?];
  objc_storeStrong(v18, v19);
  objc_storeStrong(location, v19);
  *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5
{
  obj = a4;
  v77 = a5;
  v75 = "[SUSettingsStatefulUIManager client:downloadDidFail:withError:]";
  v113 = *MEMORY[0x277D85DE8];
  v111 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v109 = 0;
  objc_storeStrong(&v109, obj);
  v108 = 0;
  objc_storeStrong(&v108, v77);
  v74 = [(SUSettingsStatefulUIManager *)v111 log];
  oslog = [(SUCoreLog *)v74 oslog];
  MEMORY[0x277D82BD8](v74);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v69 = type;
    v70 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v111 currentState]);
    v71 = MEMORY[0x277D82BE0](v70);
    v105 = v71;
    v72 = [(SUSettingsStatefulUIManager *)v111 currentState];
    v73 = [(SUSettingsStatefulUIManager *)v111 delegate];
    v103 = 0;
    v101 = 0;
    if (v73)
    {
      v104 = [(SUSettingsStatefulUIManager *)v111 delegate];
      v66 = 1;
      v103 = 1;
      v5 = objc_opt_class();
      v102 = NSStringFromClass(v5);
      v101 = 1;
      v67 = v102;
    }

    else
    {
      v67 = @"(null)";
    }

    v60 = v67;
    v61 = [(SUSettingsStatefulUIManager *)v111 delegate];
    v62 = [(SUSettingsStatefulUIManager *)v111 scanError];
    v63 = [(SUSettingsStatefulUIManager *)v111 preferredStatefulDescriptor];
    v64 = [(SUSettingsStatefulUIManager *)v111 alternateStatefulDescriptor];
    v65 = [(SUSettingsStatefulUIManager *)v111 currentDownload];
    v99 = 0;
    v97 = 0;
    v95 = 0;
    if (v65)
    {
      v100 = [(SUSettingsStatefulUIManager *)v111 currentDownload];
      v58 = 1;
      v99 = 1;
      v98 = [(SUDownload *)v100 descriptor];
      v97 = 1;
      v96 = [(SUDescriptor *)v98 humanReadableUpdateName];
      v95 = 1;
      v59 = v96;
    }

    else
    {
      v59 = @"(null)";
    }

    v45 = v59;
    v46 = [(SUSettingsStatefulUIManager *)v111 currentDownload];
    v6 = [(SUSettingsStatefulUIManager *)v111 performThirdPartyScan];
    v52 = "NO";
    v7 = "YES";
    v53 = "YES";
    if (!v6)
    {
      v7 = "NO";
    }

    v47 = v7;
    v8 = [(SUSettingsStatefulUIManager *)v111 isTargetedUpdateScheduledForAutoInstall];
    v9 = v53;
    if (!v8)
    {
      v9 = v52;
    }

    v48 = v9;
    v10 = [(SUSettingsStatefulUIManager *)v111 hidingPreferredDescriptor];
    v11 = v53;
    if (!v10)
    {
      v11 = v52;
    }

    v49 = v11;
    v50 = [(SUSettingsStatefulDescriptor *)v111->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](v50);
    v94 = v51;
    v12 = [(SUSettingsStatefulUIManager *)v111 hidingAlternateDescriptor];
    v13 = v53;
    if (!v12)
    {
      v13 = v52;
    }

    v54 = v13;
    v55 = [(SUSettingsStatefulDescriptor *)v111->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v56 = MEMORY[0x277D82BE0](v55);
    v93 = v56;
    v57 = [(SUSettingsStatefulUIManager *)v111 enrolledBetaProgram];
    v91 = 0;
    if (v57)
    {
      v92 = [(SUSettingsStatefulUIManager *)v111 enrolledBetaProgram];
      v91 = 1;
      v44 = [(SDBetaProgram *)v92 programID];
    }

    else
    {
      v44 = 0;
    }

    v32 = v44;
    v43 = [(SUSettingsStatefulUIManager *)v111 betaPrograms];
    v33 = [(NSArray *)v43 count];
    v42 = [(SUSettingsStatefulUIManager *)v111 currentFullScanOperation];
    v41 = [(SUSettingsStatefulUIManager *)v111 currentRefreshScanOperation];
    v40 = [(SUSettingsStatefulUIManager *)v111 currentUpdateOperation];
    v39 = [(SUSettingsStatefulUIManager *)v111 auxiliaryOperations];
    v34 = [(NSMutableSet *)v39 count];
    v38 = [v109 descriptor];
    v37 = [v38 humanReadableUpdateName];
    v90 = MEMORY[0x277D82BE0](v37);
    v35 = &v16;
    buf = v112;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_66(v112, v75, v71, v72, v60, v61, v62, v63, v64, v45, v46, v47, v48, v49, v51, v54, v56, v44, v33, v42, v41, v40, v34, v90, v109, v108);
    _os_log_impl(&dword_26AC94000, log, v69[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload of update %{public}@ (%p) failed: %{public}@", buf, 0xFCu);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v46);
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

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v70);
    v31 = 0;
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v93, v31);
    objc_storeStrong(&v94, v31);
    objc_storeStrong(&v105, v31);
  }

  objc_storeStrong(&oslog, 0);
  v89 = [(SUSettingsStatefulUIManager *)v111 targetedUpdateForDownload:v109];
  v28 = [v108 domain];
  v29 = getSUErrorDomain();
  v14 = [v28 isEqualToString:?];
  v87 = 0;
  v85 = 0;
  v30 = 0;
  if (v14)
  {
    v15 = [v108 code];
    v30 = 0;
    if (v15 == 16)
    {
      v88 = [v108 userInfo];
      v27 = 1;
      v87 = 1;
      v86 = [v88 objectForKey:*MEMORY[0x277D64A90]];
      v85 = v27 & 1;
      v30 = [v86 BOOLValue];
    }
  }

  v26 = v30;
  if (v85)
  {
    MEMORY[0x277D82BD8](v86);
  }

  if (v87)
  {
    MEMORY[0x277D82BD8](v88);
  }

  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v28);
  if ((v26 & 1) != 0 && v89)
  {
    [v89 updateStateFromProgressedDownload:0];
    v84 = 1;
  }

  else
  {
    [(SUManagerClient *)v111->_suClient destroyInstallationKeybag];
    [(SUSettingsStatefulUIManager *)v111 checkForUpdatesInBackground];
    v20 = v111;
    v18 = sel_statefulUIManager_didFailToDownloadUpdateForDescriptor_withError_download_;
    v19 = &v78;
    v78 = MEMORY[0x277D85DD0];
    v79 = -1073741824;
    v80 = 0;
    v81 = __64__SUSettingsStatefulUIManager_client_downloadDidFail_withError___block_invoke;
    v82 = &unk_279CB9848;
    v24 = v83;
    v83[0] = MEMORY[0x277D82BE0](v111);
    v23 = v19 + 5;
    v83[1] = MEMORY[0x277D82BE0](v89);
    v22 = v19 + 6;
    v83[2] = MEMORY[0x277D82BE0](v108);
    v21 = v19 + 7;
    v83[3] = MEMORY[0x277D82BE0](v109);
    [(SUSettingsStatefulUIManager *)v20 executeOperationOnDelegate:v18 usingBlock:v19];
    v25 = 0;
    objc_storeStrong(v21, 0);
    objc_storeStrong(v22, v25);
    objc_storeStrong(v23, v25);
    objc_storeStrong(v24, v25);
    v84 = 0;
  }

  v17 = 0;
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v108, v17);
  objc_storeStrong(&v109, v17);
  objc_storeStrong(location, v17);
  *MEMORY[0x277D85DE8];
}

uint64_t __64__SUSettingsStatefulUIManager_client_downloadDidFail_withError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didFailToDownloadUpdateForDescriptor:*(a1 + 40) withError:*(a1 + 48) download:*(a1 + 56)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5
{
  obj = a4;
  v68 = a5;
  v66 = "[SUSettingsStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]";
  v98 = *MEMORY[0x277D85DE8];
  v96 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v94 = 0;
  objc_storeStrong(&v94, obj);
  v93 = v68;
  v65 = [(SUSettingsStatefulUIManager *)v96 log];
  oslog = [(SUCoreLog *)v65 oslog];
  MEMORY[0x277D82BD8](v65);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v60 = type;
    v61 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v96 currentState]);
    v62 = MEMORY[0x277D82BE0](v61);
    v90 = v62;
    v63 = [(SUSettingsStatefulUIManager *)v96 currentState];
    v64 = [(SUSettingsStatefulUIManager *)v96 delegate];
    v88 = 0;
    v86 = 0;
    if (v64)
    {
      v89 = [(SUSettingsStatefulUIManager *)v96 delegate];
      v57 = 1;
      v88 = 1;
      v5 = objc_opt_class();
      v87 = NSStringFromClass(v5);
      v86 = 1;
      v58 = v87;
    }

    else
    {
      v58 = @"(null)";
    }

    v51 = v58;
    v52 = [(SUSettingsStatefulUIManager *)v96 delegate];
    v53 = [(SUSettingsStatefulUIManager *)v96 scanError];
    v54 = [(SUSettingsStatefulUIManager *)v96 preferredStatefulDescriptor];
    v55 = [(SUSettingsStatefulUIManager *)v96 alternateStatefulDescriptor];
    v56 = [(SUSettingsStatefulUIManager *)v96 currentDownload];
    v84 = 0;
    v82 = 0;
    v80 = 0;
    if (v56)
    {
      v85 = [(SUSettingsStatefulUIManager *)v96 currentDownload];
      v49 = 1;
      v84 = 1;
      v83 = [(SUDownload *)v85 descriptor];
      v82 = 1;
      v81 = [(SUDescriptor *)v83 humanReadableUpdateName];
      v80 = 1;
      v50 = v81;
    }

    else
    {
      v50 = @"(null)";
    }

    v36 = v50;
    v37 = [(SUSettingsStatefulUIManager *)v96 currentDownload];
    v6 = [(SUSettingsStatefulUIManager *)v96 performThirdPartyScan];
    v43 = "NO";
    v7 = "YES";
    v44 = "YES";
    if (!v6)
    {
      v7 = "NO";
    }

    v38 = v7;
    v8 = [(SUSettingsStatefulUIManager *)v96 isTargetedUpdateScheduledForAutoInstall];
    v9 = v44;
    if (!v8)
    {
      v9 = v43;
    }

    v39 = v9;
    v10 = [(SUSettingsStatefulUIManager *)v96 hidingPreferredDescriptor];
    v11 = v44;
    if (!v10)
    {
      v11 = v43;
    }

    v40 = v11;
    v41 = [(SUSettingsStatefulDescriptor *)v96->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](v41);
    v79 = v42;
    v12 = [(SUSettingsStatefulUIManager *)v96 hidingAlternateDescriptor];
    v13 = v44;
    if (!v12)
    {
      v13 = v43;
    }

    v45 = v13;
    v46 = [(SUSettingsStatefulDescriptor *)v96->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](v46);
    v78 = v47;
    v48 = [(SUSettingsStatefulUIManager *)v96 enrolledBetaProgram];
    v76 = 0;
    if (v48)
    {
      v77 = [(SUSettingsStatefulUIManager *)v96 enrolledBetaProgram];
      v76 = 1;
      v35 = [(SDBetaProgram *)v77 programID];
    }

    else
    {
      v35 = 0;
    }

    v23 = v35;
    v34 = [(SUSettingsStatefulUIManager *)v96 betaPrograms];
    v24 = [(NSArray *)v34 count];
    v33 = [(SUSettingsStatefulUIManager *)v96 currentFullScanOperation];
    v32 = [(SUSettingsStatefulUIManager *)v96 currentRefreshScanOperation];
    v31 = [(SUSettingsStatefulUIManager *)v96 currentUpdateOperation];
    v30 = [(SUSettingsStatefulUIManager *)v96 auxiliaryOperations];
    v25 = [(NSMutableSet *)v30 count];
    v29 = [v94 descriptor];
    v28 = [v29 humanReadableUpdateName];
    v14 = MEMORY[0x277D82BE0](v28);
    v75 = v14;
    v15 = "YES";
    if (!v93)
    {
      v15 = "NO";
    }

    v26 = &v16;
    buf = v97;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_32(v97, v66, v62, v63, v51, v52, v53, v54, v55, v36, v37, v38, v39, v40, v42, v45, v47, v23, v24, v33, v32, v31, v25, v14, v94, v15);
    _os_log_impl(&dword_26AC94000, log, v60[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nClearing space for update %{public}@ (%p): %s", buf, 0xFCu);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v37);
    if (v80)
    {
      MEMORY[0x277D82BD8](v81);
    }

    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v61);
    v22 = 0;
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v78, v22);
    objc_storeStrong(&v79, v22);
    objc_storeStrong(&v90, v22);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSettingsStatefulUIManager *)v96 setClearingSpaceForDownload:1];
  v19 = v96;
  v17 = sel_statefulUIManagerDidRefreshState_;
  v18 = &v69;
  v69 = MEMORY[0x277D85DD0];
  v70 = -1073741824;
  v71 = 0;
  v72 = __77__SUSettingsStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke;
  v73 = &unk_279CB93E8;
  v20 = &v74;
  v74 = MEMORY[0x277D82BE0](v96);
  [(SUSettingsStatefulUIManager *)v19 executeOperationOnDelegate:v17 usingBlock:v18];
  v21 = 0;
  objc_storeStrong(v20, 0);
  objc_storeStrong(&v94, v21);
  objc_storeStrong(location, v21);
  *MEMORY[0x277D85DE8];
}

uint64_t __77__SUSettingsStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManagerDidRefreshState:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)client:(id)a3 installDidStart:(id)a4
{
  obj = a4;
  v64 = "[SUSettingsStatefulUIManager client:installDidStart:]";
  v96 = *MEMORY[0x277D85DE8];
  v94 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v92 = 0;
  objc_storeStrong(&v92, obj);
  v63 = [(SUSettingsStatefulUIManager *)v94 log];
  oslog = [(SUCoreLog *)v63 oslog];
  MEMORY[0x277D82BD8](v63);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v58 = type;
    v59 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v94 currentState]);
    v60 = MEMORY[0x277D82BE0](v59);
    v89 = v60;
    v61 = [(SUSettingsStatefulUIManager *)v94 currentState];
    v62 = [(SUSettingsStatefulUIManager *)v94 delegate];
    v87 = 0;
    v85 = 0;
    if (v62)
    {
      v88 = [(SUSettingsStatefulUIManager *)v94 delegate];
      v55 = 1;
      v87 = 1;
      v4 = objc_opt_class();
      v86 = NSStringFromClass(v4);
      v85 = 1;
      v56 = v86;
    }

    else
    {
      v56 = @"(null)";
    }

    v49 = v56;
    v50 = [(SUSettingsStatefulUIManager *)v94 delegate];
    v51 = [(SUSettingsStatefulUIManager *)v94 scanError];
    v52 = [(SUSettingsStatefulUIManager *)v94 preferredStatefulDescriptor];
    v53 = [(SUSettingsStatefulUIManager *)v94 alternateStatefulDescriptor];
    v54 = [(SUSettingsStatefulUIManager *)v94 currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (v54)
    {
      v84 = [(SUSettingsStatefulUIManager *)v94 currentDownload];
      v47 = 1;
      v83 = 1;
      v82 = [(SUDownload *)v84 descriptor];
      v81 = 1;
      v80 = [(SUDescriptor *)v82 humanReadableUpdateName];
      v79 = 1;
      v48 = v80;
    }

    else
    {
      v48 = @"(null)";
    }

    v34 = v48;
    v35 = [(SUSettingsStatefulUIManager *)v94 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v94 performThirdPartyScan];
    v41 = "NO";
    v6 = "YES";
    v42 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v36 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v94 isTargetedUpdateScheduledForAutoInstall];
    v8 = v42;
    if (!v7)
    {
      v8 = v41;
    }

    v37 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v94 hidingPreferredDescriptor];
    v10 = v42;
    if (!v9)
    {
      v10 = v41;
    }

    v38 = v10;
    v39 = [(SUSettingsStatefulDescriptor *)v94->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v40 = MEMORY[0x277D82BE0](v39);
    v78 = v40;
    v11 = [(SUSettingsStatefulUIManager *)v94 hidingAlternateDescriptor];
    v12 = v42;
    if (!v11)
    {
      v12 = v41;
    }

    v43 = v12;
    v44 = [(SUSettingsStatefulDescriptor *)v94->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v45 = MEMORY[0x277D82BE0](v44);
    v77 = v45;
    v46 = [(SUSettingsStatefulUIManager *)v94 enrolledBetaProgram];
    v75 = 0;
    if (v46)
    {
      v76 = [(SUSettingsStatefulUIManager *)v94 enrolledBetaProgram];
      v75 = 1;
      v33 = [(SDBetaProgram *)v76 programID];
    }

    else
    {
      v33 = 0;
    }

    v22 = v33;
    v32 = [(SUSettingsStatefulUIManager *)v94 betaPrograms];
    v23 = [(NSArray *)v32 count];
    v31 = [(SUSettingsStatefulUIManager *)v94 currentFullScanOperation];
    v30 = [(SUSettingsStatefulUIManager *)v94 currentRefreshScanOperation];
    v29 = [(SUSettingsStatefulUIManager *)v94 currentUpdateOperation];
    v28 = [(SUSettingsStatefulUIManager *)v94 auxiliaryOperations];
    v24 = [(NSMutableSet *)v28 count];
    v27 = [v92 humanReadableUpdateName];
    v74 = MEMORY[0x277D82BE0](v27);
    v25 = &v13;
    buf = v95;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0(v95, v64, v60, v61, v49, v50, v51, v52, v53, v34, v35, v36, v37, v38, v40, v43, v45, v33, v23, v31, v30, v29, v24, v74, v92);
    _os_log_impl(&dword_26AC94000, log, v58[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to install an update targeting %{public}@ (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v35);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v59);
    v21 = 0;
    objc_storeStrong(&v74, 0);
    objc_storeStrong(&v77, v21);
    objc_storeStrong(&v78, v21);
    objc_storeStrong(&v89, v21);
  }

  objc_storeStrong(&oslog, 0);
  if (v94->_currentUpdateOperation)
  {
    v73 = 1;
  }

  else
  {
    v72 = [(SUSettingsStatefulUIManager *)v94 targetedUpdateMatchingDescriptor:v92];
    if (v72)
    {
      v17 = v94;
      v15 = sel_statefulUIManager_didStartInstallingUpdateWithDescriptor_;
      v16 = &v66;
      v66 = MEMORY[0x277D85DD0];
      v67 = -1073741824;
      v68 = 0;
      v69 = __54__SUSettingsStatefulUIManager_client_installDidStart___block_invoke;
      v70 = &unk_279CB9410;
      v19 = v71;
      v71[0] = MEMORY[0x277D82BE0](v94);
      v18 = (v16 + 5);
      v71[1] = MEMORY[0x277D82BE0](v72);
      [(SUSettingsStatefulUIManager *)v17 executeOperationOnDelegate:v15 usingBlock:v16];
      v20 = 0;
      objc_storeStrong(v18, 0);
      objc_storeStrong(v19, v20);
      v73 = 0;
    }

    else
    {
      [(SUSettingsStatefulUIManager *)v94 checkForAvailableUpdates];
      v73 = 1;
    }

    objc_storeStrong(&v72, 0);
  }

  v14 = 0;
  objc_storeStrong(&v92, 0);
  objc_storeStrong(location, v14);
  *MEMORY[0x277D85DE8];
}

uint64_t __54__SUSettingsStatefulUIManager_client_installDidStart___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didStartInstallingUpdateWithDescriptor:*(a1 + 40)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5
{
  v62 = &v81;
  obj = a4;
  v63 = a5;
  v60 = "[SUSettingsStatefulUIManager client:installDidFail:withError:]";
  v86 = *MEMORY[0x277D85DE8];
  v84 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v82 = 0;
  objc_storeStrong(&v82, obj);
  v81 = 0;
  objc_storeStrong(&v81, v63);
  v59 = [(SUSettingsStatefulUIManager *)v84 log];
  oslog = [(SUCoreLog *)v59 oslog];
  MEMORY[0x277D82BD8](v59);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v54 = type;
    v55 = SUSettingsUIStateToString([v62[4] currentState]);
    v56 = MEMORY[0x277D82BE0](v55);
    v78 = v56;
    v57 = [v62[4] currentState];
    v58 = [v62[4] delegate];
    v76 = 0;
    v74 = 0;
    if (v58)
    {
      v77 = [v62[4] delegate];
      v51 = 1;
      v76 = 1;
      v5 = objc_opt_class();
      v75 = NSStringFromClass(v5);
      v74 = 1;
      v52 = v75;
    }

    else
    {
      v52 = @"(null)";
    }

    v45 = v52;
    v46 = [v62[4] delegate];
    v47 = [v62[4] scanError];
    v48 = [v62[4] preferredStatefulDescriptor];
    v49 = [v62[4] alternateStatefulDescriptor];
    v50 = [v62[4] currentDownload];
    v72 = 0;
    v70 = 0;
    v68 = 0;
    if (v50)
    {
      v73 = [v62[4] currentDownload];
      v43 = 1;
      v72 = 1;
      v71 = [v73 descriptor];
      v70 = 1;
      v69 = [v71 humanReadableUpdateName];
      v68 = 1;
      v44 = v69;
    }

    else
    {
      v44 = @"(null)";
    }

    v30 = v44;
    v31 = [v62[4] currentDownload];
    v6 = [v62[4] performThirdPartyScan];
    v37 = "NO";
    v7 = "YES";
    v38 = "YES";
    if ((v6 & 1) == 0)
    {
      v7 = "NO";
    }

    v32 = v7;
    v8 = [v62[4] isTargetedUpdateScheduledForAutoInstall];
    v9 = v38;
    if ((v8 & 1) == 0)
    {
      v9 = v37;
    }

    v33 = v9;
    v10 = [v62[4] hidingPreferredDescriptor];
    v11 = v38;
    if ((v10 & 1) == 0)
    {
      v11 = v37;
    }

    v34 = v11;
    v35 = [*(v62[4] + 32) humanReadableUpdateName];
    v36 = MEMORY[0x277D82BE0](v35);
    v67 = v36;
    v12 = [v62[4] hidingAlternateDescriptor];
    v13 = v38;
    if ((v12 & 1) == 0)
    {
      v13 = v37;
    }

    v39 = v13;
    v40 = [*(v62[4] + 33) humanReadableUpdateName];
    v41 = MEMORY[0x277D82BE0](v40);
    v66 = v41;
    v42 = [v62[4] enrolledBetaProgram];
    v64 = 0;
    if (v42)
    {
      v65 = [v62[4] enrolledBetaProgram];
      v64 = 1;
      v29 = [v65 programID];
    }

    else
    {
      v29 = 0;
    }

    v20 = v29;
    v28 = [v62[4] betaPrograms];
    v21 = [v28 count];
    v27 = [v62[4] currentFullScanOperation];
    v26 = [v62[4] currentRefreshScanOperation];
    v25 = [v62[4] currentUpdateOperation];
    v24 = [v62[4] auxiliaryOperations];
    v14 = [v24 count];
    v15 = v62[1];
    v16 = *v62;
    v22 = &v17;
    buf = v85;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v85, v60, v56, v57, v45, v46, v47, v48, v49, v30, v31, v32, v33, v34, v36, v39, v41, v29, v21, v27, v26, v25, v14, v15, v16);
    _os_log_impl(&dword_26AC94000, log, v54[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFailed to install an update. Error: %{public}@; Descriptor: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v31);
    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v46);
    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v55);
    v19 = 0;
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, v19);
    objc_storeStrong(&v78, v19);
  }

  objc_storeStrong(&oslog, 0);
  [v62[4] checkForAvailableUpdates];
  v18 = 0;
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, v18);
  objc_storeStrong(location, v18);
  *MEMORY[0x277D85DE8];
}

- (void)autoInstallOperationWasCancelled:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSettingsStatefulUIManager *)v11 setIsAutoUpdateScheduled:0];
  [(SUSettingsStatefulUIManager *)v11 setCurrentAutoInstallOperation:0];
  v3 = v11;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __64__SUSettingsStatefulUIManager_autoInstallOperationWasCancelled___block_invoke;
  v8 = &unk_279CB93E8;
  v9 = MEMORY[0x277D82BE0](v11);
  [(SUSettingsStatefulUIManager *)v3 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t __64__SUSettingsStatefulUIManager_autoInstallOperationWasCancelled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManagerDidRefreshState:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
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

- (void)batteryStateChanged:(id)a3
{
  v60 = &v80;
  v57 = "[SUSettingsStatefulUIManager batteryStateChanged:]";
  v83 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v58 = [MEMORY[0x277D75418] currentDevice];
  v59 = [v58 batteryState];
  MEMORY[0x277D82BD8](v58);
  v80 = v59;
  v61 = 1;
  if (v59 != 2)
  {
    v61 = *v60 == 3;
  }

  v79 = v61;
  v56 = [v60[3] log];
  oslog = [v56 oslog];
  MEMORY[0x277D82BD8](v56);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v51 = type;
    v52 = SUSettingsUIStateToString([v60[3] currentState]);
    v53 = MEMORY[0x277D82BE0](v52);
    v76 = v53;
    v54 = [v60[3] currentState];
    v55 = [v60[3] delegate];
    v74 = 0;
    v72 = 0;
    if (v55)
    {
      v75 = [v60[3] delegate];
      v48 = 1;
      v74 = 1;
      v3 = objc_opt_class();
      v73 = NSStringFromClass(v3);
      v72 = 1;
      v49 = v73;
    }

    else
    {
      v49 = @"(null)";
    }

    v42 = v49;
    v43 = [v60[3] delegate];
    v44 = [v60[3] scanError];
    v45 = [v60[3] preferredStatefulDescriptor];
    v46 = [v60[3] alternateStatefulDescriptor];
    v47 = [v60[3] currentDownload];
    v70 = 0;
    v68 = 0;
    v66 = 0;
    if (v47)
    {
      v71 = [v60[3] currentDownload];
      v40 = 1;
      v70 = 1;
      v69 = [v71 descriptor];
      v68 = 1;
      v67 = [v69 humanReadableUpdateName];
      v66 = 1;
      v41 = v67;
    }

    else
    {
      v41 = @"(null)";
    }

    v27 = v41;
    v28 = [v60[3] currentDownload];
    v4 = [v60[3] performThirdPartyScan];
    v34 = "NO";
    v5 = "YES";
    v35 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v29 = v5;
    v6 = [v60[3] isTargetedUpdateScheduledForAutoInstall];
    v7 = v35;
    if ((v6 & 1) == 0)
    {
      v7 = v34;
    }

    v30 = v7;
    v8 = [v60[3] hidingPreferredDescriptor];
    v9 = v35;
    if ((v8 & 1) == 0)
    {
      v9 = v34;
    }

    v31 = v9;
    v32 = [*(v60[3] + 256) humanReadableUpdateName];
    v33 = MEMORY[0x277D82BE0](v32);
    v65 = v33;
    v10 = [v60[3] hidingAlternateDescriptor];
    v11 = v35;
    if ((v10 & 1) == 0)
    {
      v11 = v34;
    }

    v36 = v11;
    v37 = [*(v60[3] + 264) humanReadableUpdateName];
    v38 = MEMORY[0x277D82BE0](v37);
    v64 = v38;
    v39 = [v60[3] enrolledBetaProgram];
    v62 = 0;
    if (v39)
    {
      v63 = [v60[3] enrolledBetaProgram];
      v62 = 1;
      v26 = [v63 programID];
    }

    else
    {
      v26 = 0;
    }

    v17 = v26;
    v25 = [v60[3] betaPrograms];
    v18 = [v25 count];
    v24 = [v60[3] currentFullScanOperation];
    v23 = [v60[3] currentRefreshScanOperation];
    v22 = [v60[3] currentUpdateOperation];
    v21 = [v60[3] auxiliaryOperations];
    v12 = [v21 count];
    v13 = *(v60[3] + 13) & 1;
    v19 = &v15;
    buf = v82;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_4_0(v82, v57, v53, v54, v42, v43, v44, v45, v46, v27, v28, v29, v30, v31, v33, v36, v38, v26, v18, v24, v23, v22, v12, v13, v79);
    _os_log_impl(&dword_26AC94000, log, v51[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery state changed: %d -> %d", buf, 0xEAu);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v28);
    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v43);
    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v52);
    obj = 0;
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, obj);
    objc_storeStrong(&v76, obj);
  }

  objc_storeStrong(&oslog, 0);
  if ((*(v60[3] + 13) & 1) != v79)
  {
    v14 = v60;
    *(v60[3] + 13) = v79;
    [v14[3] refreshState];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)batteryLevelChanged:(id)a3
{
  v62 = v81;
  v60 = "[SUSettingsStatefulUIManager batteryLevelChanged:]";
  v85 = *MEMORY[0x277D85DE8];
  v83 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0.2;
  v81[2] = 1045220557;
  v81[1] = 0.5;
  v81[0] = LODWORD(v83->_batteryLevel);
  v61 = [MEMORY[0x277D75418] currentDevice];
  [v61 batteryLevel];
  v3 = v61;
  v83->_batteryLevel = v4;
  MEMORY[0x277D82BD8](v3);
  if (*(*(v62 + 7) + 24) < v63 && (LODWORD(v5) = *v62, *v62 >= 0.2) || *(*(v62 + 7) + 24) >= 0.2 && (LODWORD(v5) = *v62, *v62 < 0.2) || *(*(v62 + 7) + 24) < 0.5 && (LODWORD(v5) = *v62, *v62 >= 0.5) || *(*(v62 + 7) + 24) >= 0.5 && (LODWORD(v5) = *v62, *v62 < 0.5))
  {
    v59 = [*(v62 + 7) log];
    oslog = [v59 oslog];
    MEMORY[0x277D82BD8](v59);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v54 = type;
      v55 = SUSettingsUIStateToString([*(v62 + 7) currentState]);
      v56 = MEMORY[0x277D82BE0](v55);
      v78 = v56;
      v57 = [*(v62 + 7) currentState];
      v58 = [*(v62 + 7) delegate];
      v76 = 0;
      v74 = 0;
      if (v58)
      {
        v77 = [*(v62 + 7) delegate];
        v51 = 1;
        v76 = 1;
        v6 = objc_opt_class();
        v75 = NSStringFromClass(v6);
        v74 = 1;
        v52 = v75;
      }

      else
      {
        v52 = @"(null)";
      }

      v45 = v52;
      v46 = [*(v62 + 7) delegate];
      v47 = [*(v62 + 7) scanError];
      v48 = [*(v62 + 7) preferredStatefulDescriptor];
      v49 = [*(v62 + 7) alternateStatefulDescriptor];
      v50 = [*(v62 + 7) currentDownload];
      v72 = 0;
      v70 = 0;
      v68 = 0;
      if (v50)
      {
        v73 = [*(v62 + 7) currentDownload];
        v43 = 1;
        v72 = 1;
        v71 = [v73 descriptor];
        v70 = 1;
        v69 = [v71 humanReadableUpdateName];
        v68 = 1;
        v44 = v69;
      }

      else
      {
        v44 = @"(null)";
      }

      v30 = v44;
      v31 = [*(v62 + 7) currentDownload];
      v7 = [*(v62 + 7) performThirdPartyScan];
      v37 = "NO";
      v8 = "YES";
      v38 = "YES";
      if ((v7 & 1) == 0)
      {
        v8 = "NO";
      }

      v32 = v8;
      v9 = [*(v62 + 7) isTargetedUpdateScheduledForAutoInstall];
      v10 = v38;
      if ((v9 & 1) == 0)
      {
        v10 = v37;
      }

      v33 = v10;
      v11 = [*(v62 + 7) hidingPreferredDescriptor];
      v12 = v38;
      if ((v11 & 1) == 0)
      {
        v12 = v37;
      }

      v34 = v12;
      v35 = [*(*(v62 + 7) + 256) humanReadableUpdateName];
      v36 = MEMORY[0x277D82BE0](v35);
      v67 = v36;
      v13 = [*(v62 + 7) hidingAlternateDescriptor];
      v14 = v38;
      if ((v13 & 1) == 0)
      {
        v14 = v37;
      }

      v39 = v14;
      v40 = [*(*(v62 + 7) + 264) humanReadableUpdateName];
      v41 = MEMORY[0x277D82BE0](v40);
      v66 = v41;
      v42 = [*(v62 + 7) enrolledBetaProgram];
      v64 = 0;
      if (v42)
      {
        v65 = [*(v62 + 7) enrolledBetaProgram];
        v64 = 1;
        v29 = [v65 programID];
      }

      else
      {
        v29 = 0;
      }

      v20 = v29;
      v28 = [*(v62 + 7) betaPrograms];
      v21 = [v28 count];
      v27 = [*(v62 + 7) currentFullScanOperation];
      v26 = [*(v62 + 7) currentRefreshScanOperation];
      v25 = [*(v62 + 7) currentUpdateOperation];
      v24 = [*(v62 + 7) auxiliaryOperations];
      v15 = [v24 count];
      *&v16 = *v62;
      *&v17 = *(*(v62 + 7) + 24);
      v22 = &v18;
      buf = v84;
      __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v84, v60, v56, v57, v45, v46, v47, v48, v49, v30, v31, v32, v33, v34, v36, v39, v41, v29, v21, v27, v26, v25, v15, v16, v17);
      _os_log_impl(&dword_26AC94000, log, v54[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery level changed: %f -> %f", buf, 0xF2u);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      if (v64)
      {
        MEMORY[0x277D82BD8](v65);
      }

      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v31);
      if (v68)
      {
        MEMORY[0x277D82BD8](v69);
      }

      if (v70)
      {
        MEMORY[0x277D82BD8](v71);
      }

      if (v72)
      {
        MEMORY[0x277D82BD8](v73);
      }

      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      if (v74)
      {
        MEMORY[0x277D82BD8](v75);
      }

      if (v76)
      {
        MEMORY[0x277D82BD8](v77);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      obj = 0;
      objc_storeStrong(&v66, 0);
      objc_storeStrong(&v67, obj);
      objc_storeStrong(&v78, obj);
    }

    objc_storeStrong(&oslog, 0);
    [*(v62 + 7) refreshState];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didBecomeActive:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SUSettingsStatefulUIManager *)v4 currentState]!= 1)
  {
    [(SUSettingsStatefulUIManager *)v4 refreshState];
  }

  objc_storeStrong(location, 0);
}

- (void)setupFSM
{
  v22 = self;
  v21[1] = a2;
  v24 = MGCopyAnswer();
  v2 = v24;
  v21[0] = v24;
  v23 = MGCopyAnswer();
  v12 = v23;
  v3 = v23;
  v20 = v12;
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v14 = NSStringFromClass(v4);
  v19 = [v13 initWithFormat:@"%@:%@(%@)", v14, v21[0], v20];
  MEMORY[0x277D82BD8](v14);
  v5 = [objc_opt_class() _generateStateTable];
  stateTable = v22->_stateTable;
  v22->_stateTable = v5;
  MEMORY[0x277D82BD8](stateTable);
  v15 = MEMORY[0x277CCACA8];
  v17 = [(SUSettingsStatefulUIManager *)v22 baseDomain];
  v16 = [v15 stringWithFormat:@"%@.stateful-ui-manager", v17];
  v7 = v16;
  v8 = dispatch_queue_create([v16 UTF8String], 0);
  workQueue = v22->_workQueue;
  v22->_workQueue = v8;
  MEMORY[0x277D82BD8](workQueue);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v18 = objc_alloc(MEMORY[0x277D64458]);
  v10 = [v18 initMachine:v19 withTable:v22->_stateTable startingIn:@"Idle" usingDelegate:v22 registeringAllInfoClass:objc_opt_class()];
  managerFSM = v22->_managerFSM;
  v22->_managerFSM = v10;
  MEMORY[0x277D82BD8](managerFSM);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
}

- (void)setupNetworkMonitoring
{
  v6 = self;
  v5[1] = a2;
  v5[0] = [getSUNetworkMonitorClass() sharedInstance];
  v2 = [v5[0] currentNetworkType];
  [(SUSettingsStatefulUIManager *)v6 setNetworkType:v2];
  [v5[0] addObserver:v6];
  v3 = SBSSpringBoardServerPort();
  MEMORY[0x26D66A030](v3, &v6->_originalCellFlag, &v6->_originalWifiFlag);
  v4 = SBSSpringBoardServerPort();
  MEMORY[0x26D66A050](v4, 1);
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

- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)a3
{
  v58 = v78;
  v59 = "[SUSettingsStatefulUIManager checkForAvailableUpdatesWithRetriesCount:]";
  v80 = *MEMORY[0x277D85DE8];
  v78[1] = self;
  v78[0] = a2;
  v77 = a3;
  v57 = [(SUSettingsStatefulUIManager *)self log];
  oslog = [(SUCoreLog *)v57 oslog];
  MEMORY[0x277D82BD8](v57);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v52 = type;
    v53 = SUSettingsUIStateToString([v58[1] currentState]);
    v54 = MEMORY[0x277D82BE0](v53);
    v74 = v54;
    v55 = [v58[1] currentState];
    v56 = [v58[1] delegate];
    v72 = 0;
    v70 = 0;
    if (v56)
    {
      v73 = [v58[1] delegate];
      v49 = 1;
      v72 = 1;
      v3 = objc_opt_class();
      v71 = NSStringFromClass(v3);
      v70 = 1;
      v50 = v71;
    }

    else
    {
      v50 = @"(null)";
    }

    v43 = v50;
    v44 = [v58[1] delegate];
    v45 = [v58[1] scanError];
    v46 = [v58[1] preferredStatefulDescriptor];
    v47 = [v58[1] alternateStatefulDescriptor];
    v48 = [v58[1] currentDownload];
    v68 = 0;
    v66 = 0;
    v64 = 0;
    if (v48)
    {
      v69 = [v58[1] currentDownload];
      v41 = 1;
      v68 = 1;
      v67 = [v69 descriptor];
      v66 = 1;
      v65 = [v67 humanReadableUpdateName];
      v64 = 1;
      v42 = v65;
    }

    else
    {
      v42 = @"(null)";
    }

    v28 = v42;
    v29 = [v58[1] currentDownload];
    v4 = [v58[1] performThirdPartyScan];
    v35 = "NO";
    v5 = "YES";
    v36 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v30 = v5;
    v6 = [v58[1] isTargetedUpdateScheduledForAutoInstall];
    v7 = v36;
    if ((v6 & 1) == 0)
    {
      v7 = v35;
    }

    v31 = v7;
    v8 = [v58[1] hidingPreferredDescriptor];
    v9 = v36;
    if ((v8 & 1) == 0)
    {
      v9 = v35;
    }

    v32 = v9;
    v33 = [*(v58[1] + 256) humanReadableUpdateName];
    v34 = MEMORY[0x277D82BE0](v33);
    v63 = v34;
    v10 = [v58[1] hidingAlternateDescriptor];
    v11 = v36;
    if ((v10 & 1) == 0)
    {
      v11 = v35;
    }

    v37 = v11;
    v38 = [*(v58[1] + 264) humanReadableUpdateName];
    v39 = MEMORY[0x277D82BE0](v38);
    location = v39;
    v40 = [v58[1] enrolledBetaProgram];
    v60 = 0;
    if (v40)
    {
      v61 = [v58[1] enrolledBetaProgram];
      v60 = 1;
      v27 = [v61 programID];
    }

    else
    {
      v27 = 0;
    }

    v18 = v27;
    v26 = [v58[1] betaPrograms];
    v19 = [v26 count];
    v25 = [v58[1] currentFullScanOperation];
    v24 = [v58[1] currentRefreshScanOperation];
    v23 = [v58[1] currentUpdateOperation];
    v22 = [v58[1] auxiliaryOperations];
    v20 = &v13;
    buf = v79;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v79, v59, v54, v55, v43, v44, v45, v46, v47, v28, v29, v30, v31, v32, v34, v37, v39, v27, v19, v25, v24, v23, [v22 count]);
    _os_log_impl(&dword_26AC94000, log, v52[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v29);
    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v44);
    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v53);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v63, obj);
    objc_storeStrong(&v74, obj);
  }

  objc_storeStrong(&oslog, 0);
  v16 = [v58[1] managerFSM];
  v14 = @"CheckForAvailableUpdate";
  v12 = [SUSettingsStatefulUIManagerFSMParam alloc];
  v15 = [(SUSettingsStatefulUIManagerFSMParam *)v12 initWithRetriesCount:v77];
  [v16 postEvent:v14 withInfo:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  *MEMORY[0x277D85DE8];
}

- (void)performFullScan:(id)a3
{
  v242 = "[SUSettingsStatefulUIManager performFullScan:]";
  v313 = *MEMORY[0x277D85DE8];
  v309 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = MEMORY[0x277D82BE0](v309);
  objc_sync_enter(obj);
  v241 = [(SUSettingsStatefulUIManager *)v309 currentRefreshScanOperation];
  v239 = v241;
  MEMORY[0x277D82BD8](v239);
  if (v239)
  {
    v238 = [(SUSettingsStatefulUIManager *)v309 log];
    v236 = v238;
    v237 = [v236 oslog];
    oslog = v237;
    MEMORY[0x277D82BD8](v236);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v234 = type;
      v235 = [(SUSettingsStatefulUIManager *)v309 currentState];
      v232 = SUSettingsUIStateToString(v235);
      v229 = v232;
      v230 = MEMORY[0x277D82BE0](v229);
      v305 = v230;
      v231 = [(SUSettingsStatefulUIManager *)v309 currentState];
      v303 = 0;
      v301 = 0;
      v228 = [(SUSettingsStatefulUIManager *)v309 delegate];
      v227 = v228;
      if (v227)
      {
        v226 = [(SUSettingsStatefulUIManager *)v309 delegate];
        v304 = v226;
        v303 = 1;
        aClass = objc_opt_class();
        v224 = NSStringFromClass(aClass);
        v302 = v224;
        v301 = 1;
        v223 = v302;
      }

      else
      {
        v223 = @"(null)";
      }

      v221 = v223;
      v222 = [(SUSettingsStatefulUIManager *)v309 delegate];
      v219 = v222;
      v220 = [(SUSettingsStatefulUIManager *)v309 scanError];
      v217 = v220;
      v218 = [(SUSettingsStatefulUIManager *)v309 preferredStatefulDescriptor];
      v215 = v218;
      v216 = [(SUSettingsStatefulUIManager *)v309 alternateStatefulDescriptor];
      v213 = v216;
      v299 = 0;
      v297 = 0;
      v295 = 0;
      v214 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
      v212 = v214;
      if (v212)
      {
        v211 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
        v300 = v211;
        v299 = 1;
        v210 = [v300 descriptor];
        v298 = v210;
        v297 = 1;
        v209 = [v298 humanReadableUpdateName];
        v296 = v209;
        v295 = 1;
        v208 = v296;
      }

      else
      {
        v208 = @"(null)";
      }

      v206 = v208;
      v207 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
      v204 = v207;
      v205 = [(SUSettingsStatefulUIManager *)v309 performThirdPartyScan];
      v3 = "YES";
      if (!v205)
      {
        v3 = "NO";
      }

      v202 = v3;
      v203 = [(SUSettingsStatefulUIManager *)v309 isTargetedUpdateScheduledForAutoInstall];
      v4 = "YES";
      if (!v203)
      {
        v4 = "NO";
      }

      v200 = v4;
      v201 = [(SUSettingsStatefulUIManager *)v309 hidingPreferredDescriptor];
      v5 = "YES";
      if (!v201)
      {
        v5 = "NO";
      }

      v198 = v5;
      v199 = [(SUSettingsStatefulDescriptor *)v309->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v195 = v199;
      v196 = MEMORY[0x277D82BE0](v195);
      v294 = v196;
      v197 = [(SUSettingsStatefulUIManager *)v309 hidingAlternateDescriptor];
      v6 = "YES";
      if (!v197)
      {
        v6 = "NO";
      }

      v193 = v6;
      v194 = [(SUSettingsStatefulDescriptor *)v309->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v190 = v194;
      v191 = MEMORY[0x277D82BE0](v190);
      v293 = v191;
      v291 = 0;
      v192 = [(SUSettingsStatefulUIManager *)v309 enrolledBetaProgram];
      v189 = v192;
      if (v189)
      {
        v188 = [(SUSettingsStatefulUIManager *)v309 enrolledBetaProgram];
        v292 = v188;
        v291 = 1;
        v187 = [v292 programID];
        v186 = v187;
      }

      else
      {
        v186 = 0;
      }

      v184 = v186;
      v185 = [(SUSettingsStatefulUIManager *)v309 betaPrograms];
      v182 = v185;
      v183 = [v182 count];
      v181 = [(SUSettingsStatefulUIManager *)v309 currentFullScanOperation];
      v179 = v181;
      v180 = [(SUSettingsStatefulUIManager *)v309 currentRefreshScanOperation];
      v177 = v180;
      v178 = [(SUSettingsStatefulUIManager *)v309 currentUpdateOperation];
      v175 = v178;
      v176 = [(SUSettingsStatefulUIManager *)v309 auxiliaryOperations];
      v173 = v176;
      v174 = [v173 count];
      v171 = &v18;
      buf = v312;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v312, v242, v230, v231, v221, v219, v217, v215, v213, v206, v204, v202, v200, v198, v196, v193, v191, v186, v183, v179, v177, v175, v174);
      _os_log_impl(&dword_26AC94000, log, v234[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](v175);
      MEMORY[0x277D82BD8](v177);
      MEMORY[0x277D82BD8](v179);
      MEMORY[0x277D82BD8](v182);
      if (v291)
      {
        MEMORY[0x277D82BD8](v292);
      }

      MEMORY[0x277D82BD8](v189);
      MEMORY[0x277D82BD8](v190);
      MEMORY[0x277D82BD8](v195);
      MEMORY[0x277D82BD8](v204);
      if (v295)
      {
        MEMORY[0x277D82BD8](v296);
      }

      if (v297)
      {
        MEMORY[0x277D82BD8](v298);
      }

      if (v299)
      {
        MEMORY[0x277D82BD8](v300);
      }

      MEMORY[0x277D82BD8](v212);
      MEMORY[0x277D82BD8](v213);
      MEMORY[0x277D82BD8](v215);
      MEMORY[0x277D82BD8](v217);
      MEMORY[0x277D82BD8](v219);
      if (v301)
      {
        MEMORY[0x277D82BD8](v302);
      }

      if (v303)
      {
        MEMORY[0x277D82BD8](v304);
      }

      MEMORY[0x277D82BD8](v227);
      MEMORY[0x277D82BD8](v229);
      objc_storeStrong(&v293, 0);
      objc_storeStrong(&v294, 0);
      objc_storeStrong(&v305, 0);
    }

    objc_storeStrong(&oslog, 0);
    currentRefreshScanOperation = v309->_currentRefreshScanOperation;
    v169 = &v285;
    v285 = MEMORY[0x277D85DD0];
    v286 = -1073741824;
    v287 = 0;
    v288 = __47__SUSettingsStatefulUIManager_performFullScan___block_invoke;
    v289 = &unk_279CB93E8;
    v168 = &v290;
    v290 = MEMORY[0x277D82BE0](v309);
    [(SUSettingsScanOperation *)currentRefreshScanOperation cancel:v169];
    objc_storeStrong(v168, 0);
  }

  v167 = [(SUSettingsStatefulUIManager *)v309 currentFullScanOperation];
  v166 = v167;
  MEMORY[0x277D82BD8](v166);
  if (v166)
  {
    v165 = [(SUSettingsStatefulUIManager *)v309 log];
    v163 = v165;
    v164 = [v163 oslog];
    v284 = v164;
    MEMORY[0x277D82BD8](v163);
    v283 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
    {
      v160 = v284;
      *v161 = v283;
      v162 = [(SUSettingsStatefulUIManager *)v309 currentState];
      v159 = SUSettingsUIStateToString(v162);
      v156 = v159;
      v157 = MEMORY[0x277D82BE0](v156);
      v282 = v157;
      v158 = [(SUSettingsStatefulUIManager *)v309 currentState];
      v280 = 0;
      v278 = 0;
      v155 = [(SUSettingsStatefulUIManager *)v309 delegate];
      v154 = v155;
      if (v154)
      {
        v153 = [(SUSettingsStatefulUIManager *)v309 delegate];
        v281 = v153;
        v280 = 1;
        v152 = objc_opt_class();
        v151 = NSStringFromClass(v152);
        v279 = v151;
        v278 = 1;
        v150 = v279;
      }

      else
      {
        v150 = @"(null)";
      }

      v148 = v150;
      v149 = [(SUSettingsStatefulUIManager *)v309 delegate];
      v146 = v149;
      v147 = [(SUSettingsStatefulUIManager *)v309 scanError];
      v144 = v147;
      v145 = [(SUSettingsStatefulUIManager *)v309 preferredStatefulDescriptor];
      v142 = v145;
      v143 = [(SUSettingsStatefulUIManager *)v309 alternateStatefulDescriptor];
      v140 = v143;
      v276 = 0;
      v274 = 0;
      v272 = 0;
      v141 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
      v139 = v141;
      if (v139)
      {
        v138 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
        v277 = v138;
        v276 = 1;
        v137 = [v277 descriptor];
        v275 = v137;
        v274 = 1;
        v136 = [v275 humanReadableUpdateName];
        v273 = v136;
        v272 = 1;
        v135 = v273;
      }

      else
      {
        v135 = @"(null)";
      }

      v133 = v135;
      v134 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
      v131 = v134;
      v132 = [(SUSettingsStatefulUIManager *)v309 performThirdPartyScan];
      v7 = "YES";
      if (!v132)
      {
        v7 = "NO";
      }

      v129 = v7;
      v130 = [(SUSettingsStatefulUIManager *)v309 isTargetedUpdateScheduledForAutoInstall];
      v8 = "YES";
      if (!v130)
      {
        v8 = "NO";
      }

      v127 = v8;
      v128 = [(SUSettingsStatefulUIManager *)v309 hidingPreferredDescriptor];
      v9 = "YES";
      if (!v128)
      {
        v9 = "NO";
      }

      v125 = v9;
      v126 = [(SUSettingsStatefulDescriptor *)v309->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v122 = v126;
      v123 = MEMORY[0x277D82BE0](v122);
      v271 = v123;
      v124 = [(SUSettingsStatefulUIManager *)v309 hidingAlternateDescriptor];
      v10 = "YES";
      if (!v124)
      {
        v10 = "NO";
      }

      v120 = v10;
      v121 = [(SUSettingsStatefulDescriptor *)v309->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v117 = v121;
      v118 = MEMORY[0x277D82BE0](v117);
      v270 = v118;
      v268 = 0;
      v119 = [(SUSettingsStatefulUIManager *)v309 enrolledBetaProgram];
      v116 = v119;
      if (v116)
      {
        v115 = [(SUSettingsStatefulUIManager *)v309 enrolledBetaProgram];
        v269 = v115;
        v268 = 1;
        v114 = [v269 programID];
        v113 = v114;
      }

      else
      {
        v113 = 0;
      }

      v111 = v113;
      v112 = [(SUSettingsStatefulUIManager *)v309 betaPrograms];
      v109 = v112;
      v110 = [v109 count];
      v108 = [(SUSettingsStatefulUIManager *)v309 currentFullScanOperation];
      v106 = v108;
      v107 = [(SUSettingsStatefulUIManager *)v309 currentRefreshScanOperation];
      v104 = v107;
      v105 = [(SUSettingsStatefulUIManager *)v309 currentUpdateOperation];
      v102 = v105;
      v103 = [(SUSettingsStatefulUIManager *)v309 auxiliaryOperations];
      v100 = v103;
      v101 = [v100 count];
      v98 = &v18;
      v99 = v311;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v311, v242, v157, v158, v148, v146, v144, v142, v140, v133, v131, v129, v127, v125, v123, v120, v118, v111, v110, v106, v104, v102, v101);
      _os_log_impl(&dword_26AC94000, v160, v161[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v99, 0xDEu);
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v109);
      if (v268)
      {
        MEMORY[0x277D82BD8](v269);
      }

      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v131);
      if (v272)
      {
        MEMORY[0x277D82BD8](v273);
      }

      if (v274)
      {
        MEMORY[0x277D82BD8](v275);
      }

      if (v276)
      {
        MEMORY[0x277D82BD8](v277);
      }

      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v146);
      if (v278)
      {
        MEMORY[0x277D82BD8](v279);
      }

      if (v280)
      {
        MEMORY[0x277D82BD8](v281);
      }

      MEMORY[0x277D82BD8](v154);
      MEMORY[0x277D82BD8](v156);
      objc_storeStrong(&v270, 0);
      objc_storeStrong(&v271, 0);
      objc_storeStrong(&v282, 0);
    }

    objc_storeStrong(&v284, 0);
    v267 = 1;
  }

  else
  {
    v267 = 0;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  if (!v267)
  {
    v97 = [MEMORY[0x277CCAD78] UUID];
    v95 = v97;
    v96 = [v95 UUIDString];
    v266 = v96;
    MEMORY[0x277D82BD8](v95);
    v94 = [(SUSettingsStatefulUIManager *)v309 log];
    v92 = v94;
    v93 = [v92 oslog];
    v265 = v93;
    MEMORY[0x277D82BD8](v92);
    v264 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
    {
      v89 = v265;
      *v90 = v264;
      v91 = [(SUSettingsStatefulUIManager *)v309 currentState];
      v88 = SUSettingsUIStateToString(v91);
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v263 = v86;
      v87 = [(SUSettingsStatefulUIManager *)v309 currentState];
      v84 = [(SUSettingsStatefulUIManager *)v309 delegate];
      v83 = v84;
      v261 = 0;
      v259 = 0;
      if (v83)
      {
        v82 = [(SUSettingsStatefulUIManager *)v309 delegate];
        v262 = v82;
        v261 = 1;
        v81 = objc_opt_class();
        v80 = NSStringFromClass(v81);
        v260 = v80;
        v259 = 1;
        v79 = v260;
      }

      else
      {
        v79 = @"(null)";
      }

      v77 = v79;
      v78 = [(SUSettingsStatefulUIManager *)v309 delegate];
      v75 = v78;
      v76 = [(SUSettingsStatefulUIManager *)v309 scanError];
      v73 = v76;
      v74 = [(SUSettingsStatefulUIManager *)v309 preferredStatefulDescriptor];
      v71 = v74;
      v72 = [(SUSettingsStatefulUIManager *)v309 alternateStatefulDescriptor];
      v69 = v72;
      v70 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
      v68 = v70;
      v257 = 0;
      v255 = 0;
      v253 = 0;
      if (v68)
      {
        v67 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
        v258 = v67;
        v257 = 1;
        v66 = [v258 descriptor];
        v256 = v66;
        v255 = 1;
        v65 = [v256 humanReadableUpdateName];
        v254 = v65;
        v253 = 1;
        v64 = v254;
      }

      else
      {
        v64 = @"(null)";
      }

      v62 = v64;
      v63 = [(SUSettingsStatefulUIManager *)v309 currentDownload];
      v60 = v63;
      v61 = [(SUSettingsStatefulUIManager *)v309 performThirdPartyScan];
      v11 = "YES";
      if (!v61)
      {
        v11 = "NO";
      }

      v58 = v11;
      v59 = [(SUSettingsStatefulUIManager *)v309 isTargetedUpdateScheduledForAutoInstall];
      v12 = "YES";
      if (!v59)
      {
        v12 = "NO";
      }

      v56 = v12;
      v57 = [(SUSettingsStatefulUIManager *)v309 hidingPreferredDescriptor];
      v13 = "YES";
      if (!v57)
      {
        v13 = "NO";
      }

      v54 = v13;
      v55 = [(SUSettingsStatefulDescriptor *)v309->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v51 = v55;
      v52 = MEMORY[0x277D82BE0](v51);
      v252 = v52;
      v53 = [(SUSettingsStatefulUIManager *)v309 hidingAlternateDescriptor];
      v14 = "YES";
      if (!v53)
      {
        v14 = "NO";
      }

      v49 = v14;
      v50 = [(SUSettingsStatefulDescriptor *)v309->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v46 = v50;
      v47 = MEMORY[0x277D82BE0](v46);
      v251 = v47;
      v48 = [(SUSettingsStatefulUIManager *)v309 enrolledBetaProgram];
      v45 = v48;
      v249 = 0;
      if (v45)
      {
        v44 = [(SUSettingsStatefulUIManager *)v309 enrolledBetaProgram];
        v250 = v44;
        v249 = 1;
        v43 = [v250 programID];
        v42 = v43;
      }

      else
      {
        v42 = 0;
      }

      v40 = v42;
      v41 = [(SUSettingsStatefulUIManager *)v309 betaPrograms];
      v38 = v41;
      v39 = [v38 count];
      v37 = [(SUSettingsStatefulUIManager *)v309 currentFullScanOperation];
      v35 = v37;
      v36 = [(SUSettingsStatefulUIManager *)v309 currentRefreshScanOperation];
      v33 = v36;
      v34 = [(SUSettingsStatefulUIManager *)v309 currentUpdateOperation];
      v31 = v34;
      v32 = [(SUSettingsStatefulUIManager *)v309 auxiliaryOperations];
      v29 = v32;
      v30 = [v29 count];
      currentFullScanOperation = v309->_currentFullScanOperation;
      v16 = v309->_currentRefreshScanOperation;
      v27 = &v18;
      v28 = v310;
      __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v310, v242, v86, v87, v77, v75, v73, v71, v69, v62, v60, v58, v56, v54, v52, v49, v47, v40, v39, v35, v33, v31, v30, v266, currentFullScanOperation, v16);
      _os_log_impl(&dword_26AC94000, v89, v90[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a full scan operation with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v28, 0xFCu);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v38);
      if (v249)
      {
        MEMORY[0x277D82BD8](v250);
      }

      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v60);
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

      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v75);
      if (v259)
      {
        MEMORY[0x277D82BD8](v260);
      }

      if (v261)
      {
        MEMORY[0x277D82BD8](v262);
      }

      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      objc_storeStrong(&v251, 0);
      objc_storeStrong(&v252, 0);
      objc_storeStrong(&v263, 0);
    }

    objc_storeStrong(&v265, 0);
    v309->_performThirdPartyScan = 0;
    v26 = [SUSettingsScanOperation alloc];
    v25 = [(SUSettingsScanOperation *)v26 initWithUUID:v266 usingSUManagerClient:v309->_suClient andBetaManager:v309->_seedingBetaManager withCompletionQueue:v309->_workQueue];
    v17 = v309->_currentFullScanOperation;
    v309->_currentFullScanOperation = v25;
    MEMORY[0x277D82BD8](v17);
    v23 = v309->_currentFullScanOperation;
    v24 = [(SUSettingsStatefulUIManager *)v309 createScanOperationOptions];
    v21 = v24;
    v22 = &v243;
    v243 = MEMORY[0x277D85DD0];
    v244 = -1073741824;
    v245 = 0;
    v246 = __47__SUSettingsStatefulUIManager_performFullScan___block_invoke_429;
    v247 = &unk_279CB9870;
    v19 = v248;
    v248[0] = MEMORY[0x277D82BE0](v309);
    v20 = (v22 + 5);
    v248[1] = MEMORY[0x277D82BE0](location[0]);
    [(SUSettingsScanOperation *)v23 checkForAvailableUpdatesWithOptions:v21 usingCompletionHandler:v22];
    MEMORY[0x277D82BD8](v21);
    objc_storeStrong(v20, 0);
    objc_storeStrong(v19, 0);
    objc_storeStrong(&v266, 0);
    v267 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __47__SUSettingsStatefulUIManager_performFullScan___block_invoke_429(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  dispatch_assert_queue_V2(*(a1[4] + 21));
  if (v5)
  {
    [a1[5] setError:v5];
    [a1[4] handleFailedFullScan:a1[5]];
  }

  else
  {
    [a1[5] setFullScanResults:location[0]];
    [a1[4] handleFullScanResults:a1[5]];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)performFullScanWithScanResults:(id)a3 andScanError:(id)a4
{
  obj = a4;
  v243 = "[SUSettingsStatefulUIManager performFullScanWithScanResults:andScanError:]";
  v315 = *MEMORY[0x277D85DE8];
  v311 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v309 = 0;
  objc_storeStrong(&v309, obj);
  v240 = MEMORY[0x277D82BE0](v311);
  objc_sync_enter(v240);
  v241 = [(SUSettingsStatefulUIManager *)v311 currentRefreshScanOperation];
  v239 = v241;
  MEMORY[0x277D82BD8](v239);
  if (v239)
  {
    v238 = [(SUSettingsStatefulUIManager *)v311 log];
    v236 = v238;
    v237 = [v236 oslog];
    oslog = v237;
    MEMORY[0x277D82BD8](v236);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v234 = type;
      v235 = [(SUSettingsStatefulUIManager *)v311 currentState];
      v232 = SUSettingsUIStateToString(v235);
      v229 = v232;
      v230 = MEMORY[0x277D82BE0](v229);
      v306 = v230;
      v231 = [(SUSettingsStatefulUIManager *)v311 currentState];
      v304 = 0;
      v302 = 0;
      v228 = [(SUSettingsStatefulUIManager *)v311 delegate];
      v227 = v228;
      if (v227)
      {
        v226 = [(SUSettingsStatefulUIManager *)v311 delegate];
        v305 = v226;
        v304 = 1;
        aClass = objc_opt_class();
        v224 = NSStringFromClass(aClass);
        v303 = v224;
        v302 = 1;
        v223 = v303;
      }

      else
      {
        v223 = @"(null)";
      }

      v221 = v223;
      v222 = [(SUSettingsStatefulUIManager *)v311 delegate];
      v219 = v222;
      v220 = [(SUSettingsStatefulUIManager *)v311 scanError];
      v217 = v220;
      v218 = [(SUSettingsStatefulUIManager *)v311 preferredStatefulDescriptor];
      v215 = v218;
      v216 = [(SUSettingsStatefulUIManager *)v311 alternateStatefulDescriptor];
      v213 = v216;
      v300 = 0;
      v298 = 0;
      v296 = 0;
      v214 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
      v212 = v214;
      if (v212)
      {
        v211 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
        v301 = v211;
        v300 = 1;
        v210 = [v301 descriptor];
        v299 = v210;
        v298 = 1;
        v209 = [v299 humanReadableUpdateName];
        v297 = v209;
        v296 = 1;
        v208 = v297;
      }

      else
      {
        v208 = @"(null)";
      }

      v206 = v208;
      v207 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
      v204 = v207;
      v205 = [(SUSettingsStatefulUIManager *)v311 performThirdPartyScan];
      v4 = "YES";
      if (!v205)
      {
        v4 = "NO";
      }

      v202 = v4;
      v203 = [(SUSettingsStatefulUIManager *)v311 isTargetedUpdateScheduledForAutoInstall];
      v5 = "YES";
      if (!v203)
      {
        v5 = "NO";
      }

      v200 = v5;
      v201 = [(SUSettingsStatefulUIManager *)v311 hidingPreferredDescriptor];
      v6 = "YES";
      if (!v201)
      {
        v6 = "NO";
      }

      v198 = v6;
      v199 = [(SUSettingsStatefulDescriptor *)v311->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v195 = v199;
      v196 = MEMORY[0x277D82BE0](v195);
      v295 = v196;
      v197 = [(SUSettingsStatefulUIManager *)v311 hidingAlternateDescriptor];
      v7 = "YES";
      if (!v197)
      {
        v7 = "NO";
      }

      v193 = v7;
      v194 = [(SUSettingsStatefulDescriptor *)v311->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v190 = v194;
      v191 = MEMORY[0x277D82BE0](v190);
      v294 = v191;
      v292 = 0;
      v192 = [(SUSettingsStatefulUIManager *)v311 enrolledBetaProgram];
      v189 = v192;
      if (v189)
      {
        v188 = [(SUSettingsStatefulUIManager *)v311 enrolledBetaProgram];
        v293 = v188;
        v292 = 1;
        v187 = [v293 programID];
        v186 = v187;
      }

      else
      {
        v186 = 0;
      }

      v184 = v186;
      v185 = [(SUSettingsStatefulUIManager *)v311 betaPrograms];
      v182 = v185;
      v183 = [v182 count];
      v181 = [(SUSettingsStatefulUIManager *)v311 currentFullScanOperation];
      v179 = v181;
      v180 = [(SUSettingsStatefulUIManager *)v311 currentRefreshScanOperation];
      v177 = v180;
      v178 = [(SUSettingsStatefulUIManager *)v311 currentUpdateOperation];
      v175 = v178;
      v176 = [(SUSettingsStatefulUIManager *)v311 auxiliaryOperations];
      v173 = v176;
      v174 = [v173 count];
      v171 = &v19;
      buf = v314;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v314, v243, v230, v231, v221, v219, v217, v215, v213, v206, v204, v202, v200, v198, v196, v193, v191, v186, v183, v179, v177, v175, v174);
      _os_log_impl(&dword_26AC94000, log, v234[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", buf, 0xDEu);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](v175);
      MEMORY[0x277D82BD8](v177);
      MEMORY[0x277D82BD8](v179);
      MEMORY[0x277D82BD8](v182);
      if (v292)
      {
        MEMORY[0x277D82BD8](v293);
      }

      MEMORY[0x277D82BD8](v189);
      MEMORY[0x277D82BD8](v190);
      MEMORY[0x277D82BD8](v195);
      MEMORY[0x277D82BD8](v204);
      if (v296)
      {
        MEMORY[0x277D82BD8](v297);
      }

      if (v298)
      {
        MEMORY[0x277D82BD8](v299);
      }

      if (v300)
      {
        MEMORY[0x277D82BD8](v301);
      }

      MEMORY[0x277D82BD8](v212);
      MEMORY[0x277D82BD8](v213);
      MEMORY[0x277D82BD8](v215);
      MEMORY[0x277D82BD8](v217);
      MEMORY[0x277D82BD8](v219);
      if (v302)
      {
        MEMORY[0x277D82BD8](v303);
      }

      if (v304)
      {
        MEMORY[0x277D82BD8](v305);
      }

      MEMORY[0x277D82BD8](v227);
      MEMORY[0x277D82BD8](v229);
      objc_storeStrong(&v294, 0);
      objc_storeStrong(&v295, 0);
      objc_storeStrong(&v306, 0);
    }

    objc_storeStrong(&oslog, 0);
    currentRefreshScanOperation = v311->_currentRefreshScanOperation;
    v169 = &v286;
    v286 = MEMORY[0x277D85DD0];
    v287 = -1073741824;
    v288 = 0;
    v289 = __75__SUSettingsStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke;
    v290 = &unk_279CB93E8;
    v168 = &v291;
    v291 = MEMORY[0x277D82BE0](v311);
    [(SUSettingsScanOperation *)currentRefreshScanOperation cancel:v169];
    objc_storeStrong(v168, 0);
  }

  v167 = [(SUSettingsStatefulUIManager *)v311 currentFullScanOperation];
  v166 = v167;
  MEMORY[0x277D82BD8](v166);
  if (v166)
  {
    v165 = [(SUSettingsStatefulUIManager *)v311 log];
    v163 = v165;
    v164 = [v163 oslog];
    v285 = v164;
    MEMORY[0x277D82BD8](v163);
    v284 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
    {
      v160 = v285;
      *v161 = v284;
      v162 = [(SUSettingsStatefulUIManager *)v311 currentState];
      v159 = SUSettingsUIStateToString(v162);
      v156 = v159;
      v157 = MEMORY[0x277D82BE0](v156);
      v283 = v157;
      v158 = [(SUSettingsStatefulUIManager *)v311 currentState];
      v281 = 0;
      v279 = 0;
      v155 = [(SUSettingsStatefulUIManager *)v311 delegate];
      v154 = v155;
      if (v154)
      {
        v153 = [(SUSettingsStatefulUIManager *)v311 delegate];
        v282 = v153;
        v281 = 1;
        v152 = objc_opt_class();
        v151 = NSStringFromClass(v152);
        v280 = v151;
        v279 = 1;
        v150 = v280;
      }

      else
      {
        v150 = @"(null)";
      }

      v148 = v150;
      v149 = [(SUSettingsStatefulUIManager *)v311 delegate];
      v146 = v149;
      v147 = [(SUSettingsStatefulUIManager *)v311 scanError];
      v144 = v147;
      v145 = [(SUSettingsStatefulUIManager *)v311 preferredStatefulDescriptor];
      v142 = v145;
      v143 = [(SUSettingsStatefulUIManager *)v311 alternateStatefulDescriptor];
      v140 = v143;
      v277 = 0;
      v275 = 0;
      v273 = 0;
      v141 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
      v139 = v141;
      if (v139)
      {
        v138 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
        v278 = v138;
        v277 = 1;
        v137 = [v278 descriptor];
        v276 = v137;
        v275 = 1;
        v136 = [v276 humanReadableUpdateName];
        v274 = v136;
        v273 = 1;
        v135 = v274;
      }

      else
      {
        v135 = @"(null)";
      }

      v133 = v135;
      v134 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
      v131 = v134;
      v132 = [(SUSettingsStatefulUIManager *)v311 performThirdPartyScan];
      v8 = "YES";
      if (!v132)
      {
        v8 = "NO";
      }

      v129 = v8;
      v130 = [(SUSettingsStatefulUIManager *)v311 isTargetedUpdateScheduledForAutoInstall];
      v9 = "YES";
      if (!v130)
      {
        v9 = "NO";
      }

      v127 = v9;
      v128 = [(SUSettingsStatefulUIManager *)v311 hidingPreferredDescriptor];
      v10 = "YES";
      if (!v128)
      {
        v10 = "NO";
      }

      v125 = v10;
      v126 = [(SUSettingsStatefulDescriptor *)v311->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v122 = v126;
      v123 = MEMORY[0x277D82BE0](v122);
      v272 = v123;
      v124 = [(SUSettingsStatefulUIManager *)v311 hidingAlternateDescriptor];
      v11 = "YES";
      if (!v124)
      {
        v11 = "NO";
      }

      v120 = v11;
      v121 = [(SUSettingsStatefulDescriptor *)v311->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v117 = v121;
      v118 = MEMORY[0x277D82BE0](v117);
      v271 = v118;
      v269 = 0;
      v119 = [(SUSettingsStatefulUIManager *)v311 enrolledBetaProgram];
      v116 = v119;
      if (v116)
      {
        v115 = [(SUSettingsStatefulUIManager *)v311 enrolledBetaProgram];
        v270 = v115;
        v269 = 1;
        v114 = [v270 programID];
        v113 = v114;
      }

      else
      {
        v113 = 0;
      }

      v111 = v113;
      v112 = [(SUSettingsStatefulUIManager *)v311 betaPrograms];
      v109 = v112;
      v110 = [v109 count];
      v108 = [(SUSettingsStatefulUIManager *)v311 currentFullScanOperation];
      v106 = v108;
      v107 = [(SUSettingsStatefulUIManager *)v311 currentRefreshScanOperation];
      v104 = v107;
      v105 = [(SUSettingsStatefulUIManager *)v311 currentUpdateOperation];
      v102 = v105;
      v103 = [(SUSettingsStatefulUIManager *)v311 auxiliaryOperations];
      v100 = v103;
      v101 = [v100 count];
      v98 = &v19;
      v99 = v313;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v313, v243, v157, v158, v148, v146, v144, v142, v140, v133, v131, v129, v127, v125, v123, v120, v118, v111, v110, v106, v104, v102, v101);
      _os_log_impl(&dword_26AC94000, v160, v161[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v99, 0xDEu);
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v109);
      if (v269)
      {
        MEMORY[0x277D82BD8](v270);
      }

      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v131);
      if (v273)
      {
        MEMORY[0x277D82BD8](v274);
      }

      if (v275)
      {
        MEMORY[0x277D82BD8](v276);
      }

      if (v277)
      {
        MEMORY[0x277D82BD8](v278);
      }

      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v146);
      if (v279)
      {
        MEMORY[0x277D82BD8](v280);
      }

      if (v281)
      {
        MEMORY[0x277D82BD8](v282);
      }

      MEMORY[0x277D82BD8](v154);
      MEMORY[0x277D82BD8](v156);
      objc_storeStrong(&v271, 0);
      objc_storeStrong(&v272, 0);
      objc_storeStrong(&v283, 0);
    }

    objc_storeStrong(&v285, 0);
    v268 = 1;
  }

  else
  {
    v268 = 0;
  }

  objc_sync_exit(v240);
  MEMORY[0x277D82BD8](v240);
  if (!v268)
  {
    v97 = [MEMORY[0x277CCAD78] UUID];
    v95 = v97;
    v96 = [v95 UUIDString];
    v267 = v96;
    MEMORY[0x277D82BD8](v95);
    v94 = [(SUSettingsStatefulUIManager *)v311 log];
    v92 = v94;
    v93 = [v92 oslog];
    v266 = v93;
    MEMORY[0x277D82BD8](v92);
    v265 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
    {
      v89 = v266;
      *v90 = v265;
      v91 = [(SUSettingsStatefulUIManager *)v311 currentState];
      v88 = SUSettingsUIStateToString(v91);
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v264 = v86;
      v87 = [(SUSettingsStatefulUIManager *)v311 currentState];
      v84 = [(SUSettingsStatefulUIManager *)v311 delegate];
      v83 = v84;
      v262 = 0;
      v260 = 0;
      if (v83)
      {
        v82 = [(SUSettingsStatefulUIManager *)v311 delegate];
        v263 = v82;
        v262 = 1;
        v81 = objc_opt_class();
        v80 = NSStringFromClass(v81);
        v261 = v80;
        v260 = 1;
        v79 = v261;
      }

      else
      {
        v79 = @"(null)";
      }

      v77 = v79;
      v78 = [(SUSettingsStatefulUIManager *)v311 delegate];
      v75 = v78;
      v76 = [(SUSettingsStatefulUIManager *)v311 scanError];
      v73 = v76;
      v74 = [(SUSettingsStatefulUIManager *)v311 preferredStatefulDescriptor];
      v71 = v74;
      v72 = [(SUSettingsStatefulUIManager *)v311 alternateStatefulDescriptor];
      v69 = v72;
      v70 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
      v68 = v70;
      v258 = 0;
      v256 = 0;
      v254 = 0;
      if (v68)
      {
        v67 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
        v259 = v67;
        v258 = 1;
        v66 = [v259 descriptor];
        v257 = v66;
        v256 = 1;
        v65 = [v257 humanReadableUpdateName];
        v255 = v65;
        v254 = 1;
        v64 = v255;
      }

      else
      {
        v64 = @"(null)";
      }

      v62 = v64;
      v63 = [(SUSettingsStatefulUIManager *)v311 currentDownload];
      v60 = v63;
      v61 = [(SUSettingsStatefulUIManager *)v311 performThirdPartyScan];
      v12 = "YES";
      if (!v61)
      {
        v12 = "NO";
      }

      v58 = v12;
      v59 = [(SUSettingsStatefulUIManager *)v311 isTargetedUpdateScheduledForAutoInstall];
      v13 = "YES";
      if (!v59)
      {
        v13 = "NO";
      }

      v56 = v13;
      v57 = [(SUSettingsStatefulUIManager *)v311 hidingPreferredDescriptor];
      v14 = "YES";
      if (!v57)
      {
        v14 = "NO";
      }

      v54 = v14;
      v55 = [(SUSettingsStatefulDescriptor *)v311->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v51 = v55;
      v52 = MEMORY[0x277D82BE0](v51);
      v253 = v52;
      v53 = [(SUSettingsStatefulUIManager *)v311 hidingAlternateDescriptor];
      v15 = "YES";
      if (!v53)
      {
        v15 = "NO";
      }

      v49 = v15;
      v50 = [(SUSettingsStatefulDescriptor *)v311->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v46 = v50;
      v47 = MEMORY[0x277D82BE0](v46);
      v252 = v47;
      v48 = [(SUSettingsStatefulUIManager *)v311 enrolledBetaProgram];
      v45 = v48;
      v250 = 0;
      if (v45)
      {
        v44 = [(SUSettingsStatefulUIManager *)v311 enrolledBetaProgram];
        v251 = v44;
        v250 = 1;
        v43 = [v251 programID];
        v42 = v43;
      }

      else
      {
        v42 = 0;
      }

      v40 = v42;
      v41 = [(SUSettingsStatefulUIManager *)v311 betaPrograms];
      v38 = v41;
      v39 = [v38 count];
      v37 = [(SUSettingsStatefulUIManager *)v311 currentFullScanOperation];
      v35 = v37;
      v36 = [(SUSettingsStatefulUIManager *)v311 currentRefreshScanOperation];
      v33 = v36;
      v34 = [(SUSettingsStatefulUIManager *)v311 currentUpdateOperation];
      v31 = v34;
      v32 = [(SUSettingsStatefulUIManager *)v311 auxiliaryOperations];
      v29 = v32;
      v30 = [v29 count];
      currentFullScanOperation = v311->_currentFullScanOperation;
      v17 = v311->_currentRefreshScanOperation;
      v27 = &v19;
      v28 = v312;
      __os_log_helper_16_2_27_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66_8_0_8_0(v312, v243, v86, v87, v77, v75, v73, v71, v69, v62, v60, v58, v56, v54, v52, v49, v47, v40, v39, v35, v33, v31, v30, location[0], v309, v267, currentFullScanOperation, v17);
      _os_log_impl(&dword_26AC94000, v89, v90[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a full scan operation with with existing scan results (results: %p, error: %{public}@), usoing scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v28, 0x110u);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v38);
      if (v250)
      {
        MEMORY[0x277D82BD8](v251);
      }

      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v60);
      if (v254)
      {
        MEMORY[0x277D82BD8](v255);
      }

      if (v256)
      {
        MEMORY[0x277D82BD8](v257);
      }

      if (v258)
      {
        MEMORY[0x277D82BD8](v259);
      }

      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v75);
      if (v260)
      {
        MEMORY[0x277D82BD8](v261);
      }

      if (v262)
      {
        MEMORY[0x277D82BD8](v263);
      }

      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      objc_storeStrong(&v252, 0);
      objc_storeStrong(&v253, 0);
      objc_storeStrong(&v264, 0);
    }

    objc_storeStrong(&v266, 0);
    v311->_performThirdPartyScan = 0;
    v26 = [SUSettingsScanOperation alloc];
    v25 = [(SUSettingsScanOperation *)v26 initWithUUID:v267 usingSUManagerClient:v311->_suClient andBetaManager:v311->_seedingBetaManager withCompletionQueue:v311->_workQueue];
    v18 = v311->_currentFullScanOperation;
    v311->_currentFullScanOperation = v25;
    MEMORY[0x277D82BD8](v18);
    v23 = v311->_currentFullScanOperation;
    v24 = [(SUSettingsStatefulUIManager *)v311 createScanOperationOptions];
    v21 = v24;
    v22 = &v244;
    v244 = MEMORY[0x277D85DD0];
    v245 = -1073741824;
    v246 = 0;
    v247 = __75__SUSettingsStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_431;
    v248 = &unk_279CB9898;
    v20 = &v249;
    v249 = MEMORY[0x277D82BE0](v311);
    [(SUSettingsScanOperation *)v23 checkForAvailableUpdatesWithOptions:v21 usingCompletionHandler:v22 usingThirdPartyScanResults:location[0] andScanError:v309];
    MEMORY[0x277D82BD8](v21);
    objc_storeStrong(v20, 0);
    objc_storeStrong(&v267, 0);
    v268 = 0;
  }

  objc_storeStrong(&v309, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __75__SUSettingsStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_431(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  dispatch_assert_queue_V2(*(a1[4] + 21));
  if (v7)
  {
    v5 = objc_alloc_init(SUSettingsStatefulUIManagerFSMParam);
    [(SUSettingsStatefulUIManagerFSMParam *)v5 setError:v7];
    [a1[4] handleFailedFullScan:v5];
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v6[0] = objc_alloc_init(SUSettingsStatefulUIManagerFSMParam);
    [v6[0] setFullScanResults:location[0]];
    [a1[4] handleFullScanResults:v6[0]];
    objc_storeStrong(v6, 0);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)performRefreshScan:(id)a3
{
  v74 = "[SUSettingsStatefulUIManager performRefreshScan:]";
  v103 = *MEMORY[0x277D85DE8];
  v101 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v75 = [MEMORY[0x277CCAD78] UUID];
  v99 = [v75 UUIDString];
  MEMORY[0x277D82BD8](v75);
  v73 = [(SUSettingsStatefulUIManager *)v101 log];
  oslog = [(SUCoreLog *)v73 oslog];
  MEMORY[0x277D82BD8](v73);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v68 = type;
    v69 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v101 currentState]);
    v70 = MEMORY[0x277D82BE0](v69);
    v96 = v70;
    v71 = [(SUSettingsStatefulUIManager *)v101 currentState];
    v72 = [(SUSettingsStatefulUIManager *)v101 delegate];
    v94 = 0;
    v92 = 0;
    if (v72)
    {
      v95 = [(SUSettingsStatefulUIManager *)v101 delegate];
      v65 = 1;
      v94 = 1;
      v3 = objc_opt_class();
      v93 = NSStringFromClass(v3);
      v92 = 1;
      v66 = v93;
    }

    else
    {
      v66 = @"(null)";
    }

    v59 = v66;
    v60 = [(SUSettingsStatefulUIManager *)v101 delegate];
    v61 = [(SUSettingsStatefulUIManager *)v101 scanError];
    v62 = [(SUSettingsStatefulUIManager *)v101 preferredStatefulDescriptor];
    v63 = [(SUSettingsStatefulUIManager *)v101 alternateStatefulDescriptor];
    v64 = [(SUSettingsStatefulUIManager *)v101 currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (v64)
    {
      v91 = [(SUSettingsStatefulUIManager *)v101 currentDownload];
      v57 = 1;
      v90 = 1;
      v89 = [(SUDownload *)v91 descriptor];
      v88 = 1;
      v87 = [(SUDescriptor *)v89 humanReadableUpdateName];
      v86 = 1;
      v58 = v87;
    }

    else
    {
      v58 = @"(null)";
    }

    v44 = v58;
    v45 = [(SUSettingsStatefulUIManager *)v101 currentDownload];
    v4 = [(SUSettingsStatefulUIManager *)v101 performThirdPartyScan];
    v51 = "NO";
    v5 = "YES";
    v52 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    v46 = v5;
    v6 = [(SUSettingsStatefulUIManager *)v101 isTargetedUpdateScheduledForAutoInstall];
    v7 = v52;
    if (!v6)
    {
      v7 = v51;
    }

    v47 = v7;
    v8 = [(SUSettingsStatefulUIManager *)v101 hidingPreferredDescriptor];
    v9 = v52;
    if (!v8)
    {
      v9 = v51;
    }

    v48 = v9;
    v49 = [(SUSettingsStatefulDescriptor *)v101->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v50 = MEMORY[0x277D82BE0](v49);
    v85 = v50;
    v10 = [(SUSettingsStatefulUIManager *)v101 hidingAlternateDescriptor];
    v11 = v52;
    if (!v10)
    {
      v11 = v51;
    }

    v53 = v11;
    v54 = [(SUSettingsStatefulDescriptor *)v101->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v55 = MEMORY[0x277D82BE0](v54);
    v84 = v55;
    v56 = [(SUSettingsStatefulUIManager *)v101 enrolledBetaProgram];
    v82 = 0;
    if (v56)
    {
      v83 = [(SUSettingsStatefulUIManager *)v101 enrolledBetaProgram];
      v82 = 1;
      v43 = [(SDBetaProgram *)v83 programID];
    }

    else
    {
      v43 = 0;
    }

    v34 = v43;
    v42 = [(SUSettingsStatefulUIManager *)v101 betaPrograms];
    v35 = [(NSArray *)v42 count];
    v41 = [(SUSettingsStatefulUIManager *)v101 currentFullScanOperation];
    v40 = [(SUSettingsStatefulUIManager *)v101 currentRefreshScanOperation];
    v39 = [(SUSettingsStatefulUIManager *)v101 currentUpdateOperation];
    v38 = [(SUSettingsStatefulUIManager *)v101 auxiliaryOperations];
    v12 = [(NSMutableSet *)v38 count];
    currentFullScanOperation = v101->_currentFullScanOperation;
    currentRefreshScanOperation = v101->_currentRefreshScanOperation;
    v36 = &v18;
    buf = v102;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v102, v74, v70, v71, v59, v60, v61, v62, v63, v44, v45, v46, v47, v48, v50, v53, v55, v43, v35, v41, v40, v39, v12, v99, currentFullScanOperation, currentRefreshScanOperation);
    _os_log_impl(&dword_26AC94000, log, v68[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning to refresh the current scan results with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", buf, 0xFCu);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v45);
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

    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
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
    obj = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, obj);
    objc_storeStrong(&v96, obj);
  }

  objc_storeStrong(&oslog, 0);
  v15 = [SUSettingsScanOperation alloc];
  v30 = &v99;
  v16 = [(SUSettingsScanOperation *)v15 initWithUUID:v99 usingSUManagerClient:v101->_suClient andBetaManager:v101->_seedingBetaManager withCompletionQueue:v101->_workQueue];
  v17 = v101->_currentRefreshScanOperation;
  v101->_currentRefreshScanOperation = v16;
  MEMORY[0x277D82BD8](v17);
  v101->_performThirdPartyScan = 0;
  v20 = v101->_currentRefreshScanOperation;
  v27 = [(SUSettingsStatefulUIManager *)v101 preferredStatefulDescriptor];
  v26 = [(SUSettingsStatefulDescriptor *)v27 descriptor];
  v25 = [(SUSettingsStatefulUIManager *)v101 alternateStatefulDescriptor];
  v24 = [(SUSettingsStatefulDescriptor *)v25 descriptor];
  v23 = [(SUSettingsStatefulUIManager *)v101 latestUpdateStatefulDescriptor];
  v22 = [v23 descriptor];
  v21 = [(SUSettingsStatefulUIManager *)v101 createScanOperationOptions];
  v19 = &v76;
  v76 = MEMORY[0x277D85DD0];
  v77 = -1073741824;
  v78 = 0;
  v79 = __50__SUSettingsStatefulUIManager_performRefreshScan___block_invoke;
  v80 = &unk_279CB98C0;
  v29 = v81;
  v81[0] = MEMORY[0x277D82BE0](v101);
  v28 = (v19 + 5);
  v31 = location;
  v81[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUSettingsScanOperation *)v20 refreshScanResultsWithPreferredUpdate:v26 alternateUpdate:v24 latestUpdate:v22 options:v21 completionHandler:v19];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v32 = 0;
  objc_storeStrong(v28, 0);
  objc_storeStrong(v29, v32);
  objc_storeStrong(v30, v32);
  objc_storeStrong(v31, v32);
  *MEMORY[0x277D85DE8];
}

void __50__SUSettingsStatefulUIManager_performRefreshScan___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  dispatch_assert_queue_V2(*(a1[4] + 21));
  if (v5)
  {
    objc_storeStrong(a1[4] + 12, v5);
    [a1[5] setError:v5];
    [*(a1[4] + 27) postEvent:@"RefreshScanResultsFailed" withInfo:a1[5]];
  }

  else
  {
    [a1[5] setRefreshScanResults:location[0]];
    [a1[4] handleRefreshScanResults:a1[5]];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)handleFullScanResults:(id)a3
{
  v225 = "[SUSettingsStatefulUIManager handleFullScanResults:]";
  v309 = *MEMORY[0x277D85DE8];
  v304 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v302 = [location[0] fullScanResults];
  v224 = [(SUSettingsStatefulUIManager *)v304 log];
  oslog = [(SUCoreLog *)v224 oslog];
  MEMORY[0x277D82BD8](v224);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v219 = type;
    v220 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v304 currentState]);
    v221 = MEMORY[0x277D82BE0](v220);
    v299 = v221;
    v222 = [(SUSettingsStatefulUIManager *)v304 currentState];
    v223 = [(SUSettingsStatefulUIManager *)v304 delegate];
    v297 = 0;
    v295 = 0;
    if (v223)
    {
      v298 = [(SUSettingsStatefulUIManager *)v304 delegate];
      v216 = 1;
      v297 = 1;
      v3 = objc_opt_class();
      v296 = NSStringFromClass(v3);
      v295 = 1;
      v217 = v296;
    }

    else
    {
      v217 = @"(null)";
    }

    v210 = v217;
    v211 = [(SUSettingsStatefulUIManager *)v304 delegate];
    v212 = [(SUSettingsStatefulUIManager *)v304 scanError];
    v213 = [(SUSettingsStatefulUIManager *)v304 preferredStatefulDescriptor];
    v214 = [(SUSettingsStatefulUIManager *)v304 alternateStatefulDescriptor];
    v215 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
    v293 = 0;
    v291 = 0;
    v289 = 0;
    if (v215)
    {
      v294 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
      v208 = 1;
      v293 = 1;
      v292 = [(SUDownload *)v294 descriptor];
      v291 = 1;
      v290 = [(SUDescriptor *)v292 humanReadableUpdateName];
      v289 = 1;
      v209 = v290;
    }

    else
    {
      v209 = @"(null)";
    }

    v195 = v209;
    v196 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
    v4 = [(SUSettingsStatefulUIManager *)v304 performThirdPartyScan];
    v202 = "NO";
    v5 = "YES";
    v203 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    v197 = v5;
    v6 = [(SUSettingsStatefulUIManager *)v304 isTargetedUpdateScheduledForAutoInstall];
    v7 = v203;
    if (!v6)
    {
      v7 = v202;
    }

    v198 = v7;
    v8 = [(SUSettingsStatefulUIManager *)v304 hidingPreferredDescriptor];
    v9 = v203;
    if (!v8)
    {
      v9 = v202;
    }

    v199 = v9;
    v200 = [(SUSettingsStatefulDescriptor *)v304->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v201 = MEMORY[0x277D82BE0](v200);
    v288 = v201;
    v10 = [(SUSettingsStatefulUIManager *)v304 hidingAlternateDescriptor];
    v11 = v203;
    if (!v10)
    {
      v11 = v202;
    }

    v204 = v11;
    v205 = [(SUSettingsStatefulDescriptor *)v304->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v206 = MEMORY[0x277D82BE0](v205);
    v287 = v206;
    v207 = [(SUSettingsStatefulUIManager *)v304 enrolledBetaProgram];
    v285 = 0;
    if (v207)
    {
      v286 = [(SUSettingsStatefulUIManager *)v304 enrolledBetaProgram];
      v285 = 1;
      v194 = [(SDBetaProgram *)v286 programID];
    }

    else
    {
      v194 = 0;
    }

    v183 = v194;
    v193 = [(SUSettingsStatefulUIManager *)v304 betaPrograms];
    v184 = [(NSArray *)v193 count];
    v192 = [(SUSettingsStatefulUIManager *)v304 currentFullScanOperation];
    v191 = [(SUSettingsStatefulUIManager *)v304 currentRefreshScanOperation];
    v190 = [(SUSettingsStatefulUIManager *)v304 currentUpdateOperation];
    v189 = [(SUSettingsStatefulUIManager *)v304 auxiliaryOperations];
    v185 = [(NSMutableSet *)v189 count];
    v188 = [v302 scanUUID];
    v186 = &v64;
    buf = v308;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v308, v225, v221, v222, v210, v211, v212, v213, v214, v195, v196, v197, v198, v199, v201, v204, v206, v194, v184, v192, v191, v190, v185, v188, v302);
    _os_log_impl(&dword_26AC94000, log, v219[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with ID: %{public}@.\nResults: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](v188);
    MEMORY[0x277D82BD8](v189);
    MEMORY[0x277D82BD8](v190);
    MEMORY[0x277D82BD8](v191);
    MEMORY[0x277D82BD8](v192);
    MEMORY[0x277D82BD8](v193);
    if (v285)
    {
      MEMORY[0x277D82BD8](v286);
    }

    MEMORY[0x277D82BD8](v207);
    MEMORY[0x277D82BD8](v205);
    MEMORY[0x277D82BD8](v200);
    MEMORY[0x277D82BD8](v196);
    if (v289)
    {
      MEMORY[0x277D82BD8](v290);
    }

    if (v291)
    {
      MEMORY[0x277D82BD8](v292);
    }

    if (v293)
    {
      MEMORY[0x277D82BD8](v294);
    }

    MEMORY[0x277D82BD8](v215);
    MEMORY[0x277D82BD8](v214);
    MEMORY[0x277D82BD8](v213);
    MEMORY[0x277D82BD8](v212);
    MEMORY[0x277D82BD8](v211);
    if (v295)
    {
      MEMORY[0x277D82BD8](v296);
    }

    if (v297)
    {
      MEMORY[0x277D82BD8](v298);
    }

    MEMORY[0x277D82BD8](v223);
    MEMORY[0x277D82BD8](v220);
    obj = 0;
    objc_storeStrong(&v287, 0);
    objc_storeStrong(&v288, obj);
    objc_storeStrong(&v299, obj);
  }

  objc_storeStrong(&oslog, 0);
  if (v304->_currentUpdateOperation)
  {
    v12 = [v302 emptyScanResults];
    v283 = 0;
    v181 = 0;
    if (v12)
    {
      v284 = [v302 currentDownload];
      v283 = 1;
      v181 = v284 == 0;
    }

    v180 = v181;
    if (v283)
    {
      MEMORY[0x277D82BD8](v284);
    }

    if (v180)
    {
      v179 = [(SUSettingsStatefulUIManager *)v304 log];
      v282 = [(SUCoreLog *)v179 oslog];
      MEMORY[0x277D82BD8](v179);
      v281 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
      {
        v173 = v282;
        *v174 = v281;
        v175 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v304 currentState]);
        v176 = MEMORY[0x277D82BE0](v175);
        v280 = v176;
        v177 = [(SUSettingsStatefulUIManager *)v304 currentState];
        v178 = [(SUSettingsStatefulUIManager *)v304 delegate];
        v278 = 0;
        v276 = 0;
        if (v178)
        {
          v279 = [(SUSettingsStatefulUIManager *)v304 delegate];
          v171 = 1;
          v278 = 1;
          v13 = objc_opt_class();
          v277 = NSStringFromClass(v13);
          v276 = v171 & 1;
          v172 = v277;
        }

        else
        {
          v172 = @"(null)";
        }

        v165 = v172;
        v166 = [(SUSettingsStatefulUIManager *)v304 delegate];
        v167 = [(SUSettingsStatefulUIManager *)v304 scanError];
        v168 = [(SUSettingsStatefulUIManager *)v304 preferredStatefulDescriptor];
        v169 = [(SUSettingsStatefulUIManager *)v304 alternateStatefulDescriptor];
        v170 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
        v274 = 0;
        v272 = 0;
        v270 = 0;
        if (v170)
        {
          v275 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
          v163 = 1;
          v274 = 1;
          v273 = [(SUDownload *)v275 descriptor];
          v272 = v163 & 1;
          v271 = [(SUDescriptor *)v273 humanReadableUpdateName];
          v270 = v163 & 1;
          v164 = v271;
        }

        else
        {
          v164 = @"(null)";
        }

        v150 = v164;
        v151 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
        v14 = [(SUSettingsStatefulUIManager *)v304 performThirdPartyScan];
        v157 = "NO";
        v15 = "YES";
        v158 = "YES";
        if (!v14)
        {
          v15 = "NO";
        }

        v152 = v15;
        v16 = [(SUSettingsStatefulUIManager *)v304 isTargetedUpdateScheduledForAutoInstall];
        v17 = v158;
        if (!v16)
        {
          v17 = v157;
        }

        v153 = v17;
        v18 = [(SUSettingsStatefulUIManager *)v304 hidingPreferredDescriptor];
        v19 = v158;
        if (!v18)
        {
          v19 = v157;
        }

        v154 = v19;
        v155 = [(SUSettingsStatefulDescriptor *)v304->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v156 = MEMORY[0x277D82BE0](v155);
        v269 = v156;
        v20 = [(SUSettingsStatefulUIManager *)v304 hidingAlternateDescriptor];
        v21 = v158;
        if (!v20)
        {
          v21 = v157;
        }

        v159 = v21;
        v160 = [(SUSettingsStatefulDescriptor *)v304->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v161 = MEMORY[0x277D82BE0](v160);
        v268 = v161;
        v162 = [(SUSettingsStatefulUIManager *)v304 enrolledBetaProgram];
        v266 = 0;
        if (v162)
        {
          v267 = [(SUSettingsStatefulUIManager *)v304 enrolledBetaProgram];
          v266 = 1;
          v149 = [(SDBetaProgram *)v267 programID];
        }

        else
        {
          v149 = 0;
        }

        v22 = v153;
        v23 = v152;
        v24 = v151;
        v25 = v150;
        v26 = v169;
        v140 = v149;
        v148 = [(SUSettingsStatefulUIManager *)v304 betaPrograms];
        v141 = [(NSArray *)v148 count];
        v147 = [(SUSettingsStatefulUIManager *)v304 currentFullScanOperation];
        v146 = [(SUSettingsStatefulUIManager *)v304 currentRefreshScanOperation];
        v145 = [(SUSettingsStatefulUIManager *)v304 currentUpdateOperation];
        v144 = [(SUSettingsStatefulUIManager *)v304 auxiliaryOperations];
        v27 = [(NSMutableSet *)v144 count];
        v142 = &v64;
        v143 = v307;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v307, v225, v176, v177, v165, v166, v167, v168, v26, v25, v24, v23, v22, v154, v156, v159, v161, v140, v141, v147, v146, v145, v27);
        _os_log_impl(&dword_26AC94000, v173, v174[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded empty scan results - cancelling the currently active update operation", v143, 0xDEu);
        MEMORY[0x277D82BD8](v144);
        MEMORY[0x277D82BD8](v145);
        MEMORY[0x277D82BD8](v146);
        MEMORY[0x277D82BD8](v147);
        MEMORY[0x277D82BD8](v148);
        if (v266)
        {
          MEMORY[0x277D82BD8](v267);
        }

        MEMORY[0x277D82BD8](v162);
        MEMORY[0x277D82BD8](v160);
        MEMORY[0x277D82BD8](v155);
        MEMORY[0x277D82BD8](v151);
        if (v270)
        {
          MEMORY[0x277D82BD8](v271);
        }

        if (v272)
        {
          MEMORY[0x277D82BD8](v273);
        }

        if (v274)
        {
          MEMORY[0x277D82BD8](v275);
        }

        MEMORY[0x277D82BD8](v170);
        MEMORY[0x277D82BD8](v169);
        MEMORY[0x277D82BD8](v168);
        MEMORY[0x277D82BD8](v167);
        MEMORY[0x277D82BD8](v166);
        if (v276)
        {
          MEMORY[0x277D82BD8](v277);
        }

        if (v278)
        {
          MEMORY[0x277D82BD8](v279);
        }

        MEMORY[0x277D82BD8](v178);
        MEMORY[0x277D82BD8](v175);
        v139 = 0;
        objc_storeStrong(&v268, 0);
        objc_storeStrong(&v269, v139);
        objc_storeStrong(&v280, v139);
      }

      objc_storeStrong(&v282, 0);
      currentUpdateOperation = v304->_currentUpdateOperation;
      v136 = &v260;
      v260 = MEMORY[0x277D85DD0];
      v261 = -1073741824;
      v262 = 0;
      v263 = __53__SUSettingsStatefulUIManager_handleFullScanResults___block_invoke;
      v264 = &unk_279CB98E8;
      v138 = &v265;
      v265 = MEMORY[0x277D82BE0](v304);
      [(SUSettingsUpdateOperation *)currentUpdateOperation cancel:v136];
      objc_storeStrong(v138, 0);
    }

    else
    {
      preferredStatefulDescriptor = v304->_preferredStatefulDescriptor;
      v135 = [v302 preferredDescriptor];
      v28 = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor isEqualToDescriptor:?];
      v258 = 0;
      v256 = 0;
      v254 = 0;
      if (v28 || (v132 = v304->_preferredStatefulDescriptor, v259 = [v302 alternateDescriptor], v258 = 1, v29 = -[SUSettingsStatefulDescriptor isEqualToDescriptor:](v132, "isEqualToDescriptor:"), v133 = 1, v29))
      {
        alternateStatefulDescriptor = v304->_alternateStatefulDescriptor;
        v257 = [v302 preferredDescriptor];
        v256 = 1;
        v30 = [(SUSettingsStatefulDescriptor *)alternateStatefulDescriptor isEqualToDescriptor:?];
        v131 = 0;
        if (!v30)
        {
          v128 = v304->_alternateStatefulDescriptor;
          v255 = [v302 alternateDescriptor];
          v129 = 1;
          v254 = 1;
          v31 = [(SUSettingsStatefulDescriptor *)v128 isEqualToDescriptor:?];
          v131 = v31 ^ v129;
        }

        v133 = v131;
      }

      v127 = v133;
      if (v254)
      {
        MEMORY[0x277D82BD8](v255);
      }

      if (v256)
      {
        MEMORY[0x277D82BD8](v257);
      }

      if (v258)
      {
        MEMORY[0x277D82BD8](v259);
      }

      MEMORY[0x277D82BD8](v135);
      if (v127)
      {
        v126 = [(SUSettingsStatefulUIManager *)v304 log];
        v253 = [(SUCoreLog *)v126 oslog];
        MEMORY[0x277D82BD8](v126);
        v252 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
        {
          v120 = v253;
          *v121 = v252;
          v122 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v304 currentState]);
          v123 = MEMORY[0x277D82BE0](v122);
          v251 = v123;
          v124 = [(SUSettingsStatefulUIManager *)v304 currentState];
          v125 = [(SUSettingsStatefulUIManager *)v304 delegate];
          v249 = 0;
          v247 = 0;
          if (v125)
          {
            v250 = [(SUSettingsStatefulUIManager *)v304 delegate];
            v118 = 1;
            v249 = 1;
            v32 = objc_opt_class();
            v248 = NSStringFromClass(v32);
            v247 = v118 & 1;
            v119 = v248;
          }

          else
          {
            v119 = @"(null)";
          }

          v112 = v119;
          v113 = [(SUSettingsStatefulUIManager *)v304 delegate];
          v114 = [(SUSettingsStatefulUIManager *)v304 scanError];
          v115 = [(SUSettingsStatefulUIManager *)v304 preferredStatefulDescriptor];
          v116 = [(SUSettingsStatefulUIManager *)v304 alternateStatefulDescriptor];
          v117 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
          v245 = 0;
          v243 = 0;
          v241 = 0;
          if (v117)
          {
            v246 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
            v110 = 1;
            v245 = 1;
            v244 = [(SUDownload *)v246 descriptor];
            v243 = v110 & 1;
            v242 = [(SUDescriptor *)v244 humanReadableUpdateName];
            v241 = v110 & 1;
            v111 = v242;
          }

          else
          {
            v111 = @"(null)";
          }

          v97 = v111;
          v98 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
          v33 = [(SUSettingsStatefulUIManager *)v304 performThirdPartyScan];
          v104 = "NO";
          v34 = "YES";
          v105 = "YES";
          if (!v33)
          {
            v34 = "NO";
          }

          v99 = v34;
          v35 = [(SUSettingsStatefulUIManager *)v304 isTargetedUpdateScheduledForAutoInstall];
          v36 = v105;
          if (!v35)
          {
            v36 = v104;
          }

          v100 = v36;
          v37 = [(SUSettingsStatefulUIManager *)v304 hidingPreferredDescriptor];
          v38 = v105;
          if (!v37)
          {
            v38 = v104;
          }

          v101 = v38;
          v102 = [(SUSettingsStatefulDescriptor *)v304->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
          v103 = MEMORY[0x277D82BE0](v102);
          v240 = v103;
          v39 = [(SUSettingsStatefulUIManager *)v304 hidingAlternateDescriptor];
          v40 = v105;
          if (!v39)
          {
            v40 = v104;
          }

          v106 = v40;
          v107 = [(SUSettingsStatefulDescriptor *)v304->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
          v108 = MEMORY[0x277D82BE0](v107);
          v239 = v108;
          v109 = [(SUSettingsStatefulUIManager *)v304 enrolledBetaProgram];
          v237 = 0;
          if (v109)
          {
            v238 = [(SUSettingsStatefulUIManager *)v304 enrolledBetaProgram];
            v237 = 1;
            v96 = [(SDBetaProgram *)v238 programID];
          }

          else
          {
            v96 = 0;
          }

          v41 = v103;
          v42 = v101;
          v43 = v100;
          v44 = v99;
          v45 = v98;
          v46 = v97;
          v47 = v116;
          v81 = v96;
          v95 = [(SUSettingsStatefulUIManager *)v304 betaPrograms];
          v82 = [(NSArray *)v95 count];
          v94 = [(SUSettingsStatefulUIManager *)v304 currentFullScanOperation];
          v93 = [(SUSettingsStatefulUIManager *)v304 currentRefreshScanOperation];
          v92 = [(SUSettingsStatefulUIManager *)v304 currentUpdateOperation];
          v91 = [(SUSettingsStatefulUIManager *)v304 auxiliaryOperations];
          v83 = [(NSMutableSet *)v91 count];
          v90 = [v302 preferredDescriptor];
          v89 = [v90 humanReadableUpdateName];
          v84 = MEMORY[0x277D82BE0](v89);
          v236 = v84;
          v88 = [v302 alternateDescriptor];
          v87 = [v88 humanReadableUpdateName];
          v235 = MEMORY[0x277D82BE0](v87);
          v85 = &v64;
          v86 = v306;
          __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v306, v225, v123, v124, v112, v113, v114, v115, v47, v46, v45, v44, v43, v42, v41, v106, v108, v81, v82, v94, v93, v92, v83, v84, v235);
          _os_log_impl(&dword_26AC94000, v120, v121[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded results that are different than the previously discovered results - cancelling the currently active update operation.\n\tresults.preferredDescriptor: %{public}@\n\tresults.alternateDescriptor: %{public}@", v86, 0xF2u);
          MEMORY[0x277D82BD8](v87);
          MEMORY[0x277D82BD8](v88);
          MEMORY[0x277D82BD8](v89);
          MEMORY[0x277D82BD8](v90);
          MEMORY[0x277D82BD8](v91);
          MEMORY[0x277D82BD8](v92);
          MEMORY[0x277D82BD8](v93);
          MEMORY[0x277D82BD8](v94);
          MEMORY[0x277D82BD8](v95);
          if (v237)
          {
            MEMORY[0x277D82BD8](v238);
          }

          MEMORY[0x277D82BD8](v109);
          MEMORY[0x277D82BD8](v107);
          MEMORY[0x277D82BD8](v102);
          MEMORY[0x277D82BD8](v98);
          if (v241)
          {
            MEMORY[0x277D82BD8](v242);
          }

          if (v243)
          {
            MEMORY[0x277D82BD8](v244);
          }

          if (v245)
          {
            MEMORY[0x277D82BD8](v246);
          }

          MEMORY[0x277D82BD8](v117);
          MEMORY[0x277D82BD8](v116);
          MEMORY[0x277D82BD8](v115);
          MEMORY[0x277D82BD8](v114);
          MEMORY[0x277D82BD8](v113);
          if (v247)
          {
            MEMORY[0x277D82BD8](v248);
          }

          if (v249)
          {
            MEMORY[0x277D82BD8](v250);
          }

          MEMORY[0x277D82BD8](v125);
          MEMORY[0x277D82BD8](v122);
          v80 = 0;
          objc_storeStrong(&v235, 0);
          objc_storeStrong(&v236, v80);
          objc_storeStrong(&v239, v80);
          objc_storeStrong(&v240, v80);
          objc_storeStrong(&v251, v80);
        }

        objc_storeStrong(&v253, 0);
        v78 = v304->_currentUpdateOperation;
        v77 = &v229;
        v229 = MEMORY[0x277D85DD0];
        v230 = -1073741824;
        v231 = 0;
        v232 = __53__SUSettingsStatefulUIManager_handleFullScanResults___block_invoke_433;
        v233 = &unk_279CB98E8;
        v79 = &v234;
        v234 = MEMORY[0x277D82BE0](v304);
        [(SUSettingsUpdateOperation *)v78 cancel:v77];
        objc_storeStrong(v79, 0);
      }
    }
  }

  [(SUSettingsStatefulUIManager *)v304 assignScanRelatedMembersFromScanResults:v302];
  v48 = [v302 scanError];
  scanError = v304->_scanError;
  v304->_scanError = v48;
  MEMORY[0x277D82BD8](scanError);
  v50 = [v302 mdmPathRestrictions];
  v304->_mdmPathRestrictions = v50;
  v51 = [v302 isDelayingUpdate];
  v304->_delayingUpdate = v51;
  v52 = [v302 isRollingBack];
  v304->_rollingBack = v52;
  v53 = [v302 rollbackDescriptor];
  rollbackDescriptor = v304->_rollbackDescriptor;
  v304->_rollbackDescriptor = v53;
  MEMORY[0x277D82BD8](rollbackDescriptor);
  v55 = [v302 currentSeedingDevice];
  currentSeedingDevice = v304->_currentSeedingDevice;
  v304->_currentSeedingDevice = v55;
  MEMORY[0x277D82BD8](currentSeedingDevice);
  v57 = [v302 betaPrograms];
  betaPrograms = v304->_betaPrograms;
  v304->_betaPrograms = v57;
  MEMORY[0x277D82BD8](betaPrograms);
  v59 = [v302 enrolledBetaProgram];
  enrolledBetaProgram = v304->_enrolledBetaProgram;
  v304->_enrolledBetaProgram = v59;
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  v61 = [v302 ddmDeclaration];
  ddmDeclaration = v304->_ddmDeclaration;
  v304->_ddmDeclaration = v61;
  MEMORY[0x277D82BD8](ddmDeclaration);
  v75 = [MEMORY[0x277D64418] sharedDevice];
  v76 = [v75 hasSemiSplatActive];
  MEMORY[0x277D82BD8](v75);
  if (v76)
  {
    v74 = [(SUSettingsStatefulUIManager *)v304 log];
    v228 = [(SUCoreLog *)v74 oslog];
    MEMORY[0x277D82BD8](v74);
    v227 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v228;
      *v72 = v227;
      v73 = v305;
      __os_log_helper_16_2_1_8_32(v305, v225);
      _os_log_impl(&dword_26AC94000, v71, v72[0], "%s: Rollback already applied, show the user an alert to reboot, and show no available updates.", v73, 0xCu);
    }

    objc_storeStrong(&v228, 0);
    [(SUSettingsStatefulUIManager *)v304 clearPastScanResults];
    [(SUSettingsStatefulUIManager *)v304 handleScanFinishedRollbackApplied:location[0]];
    [(SUCoreFSM *)v304->_managerFSM postEvent:@"NoUpdateAvailable" withInfo:location[0]];
    v226 = 1;
  }

  else if (v304->_scanError)
  {
    v69 = [(NSError *)v304->_scanError domain];
    v63 = [(NSString *)v69 isEqualToString:*MEMORY[0x277D64910]];
    v70 = 0;
    if (v63)
    {
      v70 = [(NSError *)v304->_scanError code]== 3;
    }

    v68 = v70;
    MEMORY[0x277D82BD8](v69);
    if (v68)
    {
      [(SUSettingsStatefulUIManager *)v304 clearPastScanResults];
    }

    [(SUCoreFSM *)v304->_managerFSM postEvent:@"NoUpdateAvailable" withInfo:location[0]];
    v226 = 1;
  }

  else if ([v302 emptyScanResults])
  {
    if (v304->_currentDownload && (v304->_preferredStatefulDescriptor || v304->_alternateStatefulDescriptor))
    {
      [(SUSettingsStatefulUIManager *)v304 updateDescriptorsUsingScanResults:v302 andWithConcreteError:0];
      [(SUCoreFSM *)v304->_managerFSM postEvent:@"UpdatesAvailable" withInfo:location[0]];
      v226 = 1;
    }

    else
    {
      [(SUSettingsStatefulUIManager *)v304 clearPastScanResults];
      [(SUCoreFSM *)v304->_managerFSM postEvent:@"NoUpdateAvailable" withInfo:location[0]];
      v226 = 0;
    }
  }

  else
  {
    [(SUSettingsStatefulUIManager *)v304 assignDescriptorOfType:0 fromSearchResults:v302];
    [(SUSettingsStatefulUIManager *)v304 assignDescriptorOfType:1 fromSearchResults:v302];
    v66 = 0;
    objc_storeStrong(&v304->_hiddenPreferredStatefulDescriptor, 0);
    objc_storeStrong(&v304->_hiddenAlternateStatefulDescriptor, v66);
    v304->_hidingPreferredDescriptor = 0;
    v304->_hidingAlternateDescriptor = 0;
    v67 = [(SUSettingsStatefulUIManager *)v304 currentDownload];
    MEMORY[0x277D82BD8](v67);
    if (v67)
    {
      [(SUSettingsStatefulUIManager *)v304 hideNonTargetedUpdateDescriptors];
    }

    [(SUCoreFSM *)v304->_managerFSM postEvent:@"UpdatesAvailable" withInfo:location[0]];
    v226 = 1;
  }

  v65 = 0;
  objc_storeStrong(&v302, 0);
  objc_storeStrong(location, v65);
  *MEMORY[0x277D85DE8];
}

- (void)handleFailedFullScan:(id)a3
{
  v81 = &v103;
  v82 = "[SUSettingsStatefulUIManager handleFailedFullScan:]";
  v114 = *MEMORY[0x277D85DE8];
  v110 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v80 = [(SUSettingsStatefulUIManager *)v110 log];
  v108 = [(SUCoreLog *)v80 oslog];
  MEMORY[0x277D82BD8](v80);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v81 + 7);
    *v75 = type;
    v76 = SUSettingsUIStateToString([*(v81 + 10) currentState]);
    v3 = MEMORY[0x277D82BE0](v76);
    v4 = v81;
    v77 = v3;
    *(v81 + 5) = v3;
    v78 = [v4[10] currentState];
    v79 = [*(v81 + 10) delegate];
    v105 = 0;
    v104 = 0;
    if (v79)
    {
      *(v81 + 4) = [*(v81 + 10) delegate];
      v72 = 1;
      v105 = 1;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *(v81 + 2) = v6;
      v104 = 1;
      v73 = v6;
    }

    else
    {
      v73 = @"(null)";
    }

    v66 = v73;
    v67 = [*(v81 + 10) delegate];
    v68 = [*(v81 + 10) scanError];
    v69 = [*(v81 + 10) preferredStatefulDescriptor];
    v70 = [*(v81 + 10) alternateStatefulDescriptor];
    v71 = [*(v81 + 10) currentDownload];
    v102 = 0;
    v100 = 0;
    v98 = 0;
    if (v71)
    {
      v7 = [*(v81 + 10) currentDownload];
      *v81 = v7;
      v64 = 1;
      v102 = 1;
      v101 = [v7 descriptor];
      v100 = 1;
      v99 = [v101 humanReadableUpdateName];
      v98 = 1;
      v65 = v99;
    }

    else
    {
      v65 = @"(null)";
    }

    v51 = v65;
    v52 = [*(v81 + 10) currentDownload];
    v8 = [*(v81 + 10) performThirdPartyScan];
    v58 = "NO";
    v9 = "YES";
    v59 = "YES";
    if ((v8 & 1) == 0)
    {
      v9 = "NO";
    }

    v53 = v9;
    v10 = [*(v81 + 10) isTargetedUpdateScheduledForAutoInstall];
    v11 = v59;
    if ((v10 & 1) == 0)
    {
      v11 = v58;
    }

    v54 = v11;
    v12 = [*(v81 + 10) hidingPreferredDescriptor];
    v13 = v59;
    if ((v12 & 1) == 0)
    {
      v13 = v58;
    }

    v55 = v13;
    v56 = [*(*(v81 + 10) + 256) humanReadableUpdateName];
    v57 = MEMORY[0x277D82BE0](v56);
    v97 = v57;
    v14 = [*(v81 + 10) hidingAlternateDescriptor];
    v15 = v59;
    if ((v14 & 1) == 0)
    {
      v15 = v58;
    }

    v60 = v15;
    v61 = [*(*(v81 + 10) + 264) humanReadableUpdateName];
    v62 = MEMORY[0x277D82BE0](v61);
    v96 = v62;
    v63 = [*(v81 + 10) enrolledBetaProgram];
    v94 = 0;
    if (v63)
    {
      v95 = [*(v81 + 10) enrolledBetaProgram];
      v94 = 1;
      v50 = [v95 programID];
    }

    else
    {
      v50 = 0;
    }

    v39 = v50;
    v49 = [*(v81 + 10) betaPrograms];
    v40 = [v49 count];
    v48 = [*(v81 + 10) currentFullScanOperation];
    v47 = [*(v81 + 10) currentRefreshScanOperation];
    v46 = [*(v81 + 10) currentUpdateOperation];
    v45 = [*(v81 + 10) auxiliaryOperations];
    v41 = [v45 count];
    v44 = [*(v81 + 8) error];
    v42 = &v23;
    buf = v113;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v113, v82, v77, v78, v66, v67, v68, v69, v70, v51, v52, v53, v54, v55, v57, v60, v62, v50, v40, v48, v47, v46, v41, v44);
    _os_log_impl(&dword_26AC94000, log, v75[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with error: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v52);
    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](*v81);
    }

    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v67);
    if (v104)
    {
      MEMORY[0x277D82BD8](*(v81 + 2));
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](*(v81 + 4));
    }

    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v76);
    obj = 0;
    objc_storeStrong(&v96, 0);
    objc_storeStrong(&v97, obj);
    objc_storeStrong(&v106, obj);
  }

  objc_storeStrong(&v108, 0);
  v16 = [*(v81 + 8) error];
  v17 = *(v81 + 10);
  v18 = *(v17 + 96);
  *(v17 + 96) = v16;
  MEMORY[0x277D82BD8](v18);
  v36 = [*(*(v81 + 10) + 96) domain];
  v19 = [v36 isEqualToString:*MEMORY[0x277D64910]];
  v37 = 0;
  if (v19)
  {
    v37 = [*(*(v81 + 10) + 96) code] == 26;
  }

  v35 = v37;
  MEMORY[0x277D82BD8](v36);
  if (!v35)
  {
    goto LABEL_45;
  }

  v93 = 0;
  v20 = [*(v81 + 8) retries];
  v21 = __OFSUB__(v20, 1);
  v93 = v20 - 1;
  v111 = v21 || v20 - 1 != (v20 - 1);
  v92 = v111;
  v34 = v111 ? 0 : v93;
  [*(v81 + 8) setRetries:v34];
  if ([*(v81 + 8) retries] > 0)
  {
    v33 = [*(v81 + 10) log];
    oslog = [v33 oslog];
    MEMORY[0x277D82BD8](v33);
    v90 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v30 = oslog;
      *v31 = v90;
      v22 = [*(v81 + 8) retries];
      v32 = v112;
      __os_log_helper_16_2_2_8_32_4_0(v112, v82, v22 + 1);
      _os_log_impl(&dword_26AC94000, v30, v31[0], "%s: The scan failed but got %u retries left. Performing a retry.", v32, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    when = dispatch_time(0, 1000000000 * kSUSettingsStatefulUIRetryDelay);
    queue = [*(v81 + 10) workQueue];
    block = &v84;
    v84 = MEMORY[0x277D85DD0];
    v85 = -1073741824;
    v86 = 0;
    v87 = __52__SUSettingsStatefulUIManager_handleFailedFullScan___block_invoke;
    v88 = &unk_279CB9410;
    v28 = v89;
    v89[0] = MEMORY[0x277D82BE0](*(v81 + 8));
    v27 = (block + 40);
    v89[1] = MEMORY[0x277D82BE0](*(v81 + 10));
    dispatch_after(when, queue, block);
    MEMORY[0x277D82BD8](queue);
    v83 = 1;
    v29 = 0;
    objc_storeStrong(v27, 0);
    objc_storeStrong(v28, v29);
  }

  else
  {
LABEL_45:
    [*(*(v81 + 10) + 216) postEvent:@"CheckingForUpdatesFailed" withInfo:*(v81 + 8)];
    v83 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __52__SUSettingsStatefulUIManager_handleFailedFullScan___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  objc_storeStrong((*(a1 + 40) + 184), 0);
  return [*(a1 + 40) performFullScan:*(a1 + 32)];
}

- (void)handleRefreshScanResults:(id)a3
{
  v62 = "[SUSettingsStatefulUIManager handleRefreshScanResults:]";
  v90 = *MEMORY[0x277D85DE8];
  v88 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v86 = [location[0] refreshScanResults];
  v61 = [(SUSettingsStatefulUIManager *)v88 log];
  oslog = [(SUCoreLog *)v61 oslog];
  MEMORY[0x277D82BD8](v61);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v56 = type;
    v57 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v88 currentState]);
    v58 = MEMORY[0x277D82BE0](v57);
    v83 = v58;
    v59 = [(SUSettingsStatefulUIManager *)v88 currentState];
    v60 = [(SUSettingsStatefulUIManager *)v88 delegate];
    v81 = 0;
    v79 = 0;
    if (v60)
    {
      v82 = [(SUSettingsStatefulUIManager *)v88 delegate];
      v53 = 1;
      v81 = 1;
      v3 = objc_opt_class();
      v80 = NSStringFromClass(v3);
      v79 = 1;
      v54 = v80;
    }

    else
    {
      v54 = @"(null)";
    }

    v47 = v54;
    v48 = [(SUSettingsStatefulUIManager *)v88 delegate];
    v49 = [(SUSettingsStatefulUIManager *)v88 scanError];
    v50 = [(SUSettingsStatefulUIManager *)v88 preferredStatefulDescriptor];
    v51 = [(SUSettingsStatefulUIManager *)v88 alternateStatefulDescriptor];
    v52 = [(SUSettingsStatefulUIManager *)v88 currentDownload];
    v77 = 0;
    v75 = 0;
    v73 = 0;
    if (v52)
    {
      v78 = [(SUSettingsStatefulUIManager *)v88 currentDownload];
      v45 = 1;
      v77 = 1;
      v76 = [(SUDownload *)v78 descriptor];
      v75 = 1;
      v74 = [(SUDescriptor *)v76 humanReadableUpdateName];
      v73 = 1;
      v46 = v74;
    }

    else
    {
      v46 = @"(null)";
    }

    v32 = v46;
    v33 = [(SUSettingsStatefulUIManager *)v88 currentDownload];
    v4 = [(SUSettingsStatefulUIManager *)v88 performThirdPartyScan];
    v39 = "NO";
    v5 = "YES";
    v40 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    v34 = v5;
    v6 = [(SUSettingsStatefulUIManager *)v88 isTargetedUpdateScheduledForAutoInstall];
    v7 = v40;
    if (!v6)
    {
      v7 = v39;
    }

    v35 = v7;
    v8 = [(SUSettingsStatefulUIManager *)v88 hidingPreferredDescriptor];
    v9 = v40;
    if (!v8)
    {
      v9 = v39;
    }

    v36 = v9;
    v37 = [(SUSettingsStatefulDescriptor *)v88->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v38 = MEMORY[0x277D82BE0](v37);
    v72 = v38;
    v10 = [(SUSettingsStatefulUIManager *)v88 hidingAlternateDescriptor];
    v11 = v40;
    if (!v10)
    {
      v11 = v39;
    }

    v41 = v11;
    v42 = [(SUSettingsStatefulDescriptor *)v88->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v71 = v43;
    v44 = [(SUSettingsStatefulUIManager *)v88 enrolledBetaProgram];
    v69 = 0;
    if (v44)
    {
      v70 = [(SUSettingsStatefulUIManager *)v88 enrolledBetaProgram];
      v69 = 1;
      v31 = [(SDBetaProgram *)v70 programID];
    }

    else
    {
      v31 = 0;
    }

    v20 = v31;
    v30 = [(SUSettingsStatefulUIManager *)v88 betaPrograms];
    v21 = [(NSArray *)v30 count];
    v29 = [(SUSettingsStatefulUIManager *)v88 currentFullScanOperation];
    v28 = [(SUSettingsStatefulUIManager *)v88 currentRefreshScanOperation];
    v27 = [(SUSettingsStatefulUIManager *)v88 currentUpdateOperation];
    v26 = [(SUSettingsStatefulUIManager *)v88 auxiliaryOperations];
    v22 = [(NSMutableSet *)v26 count];
    v25 = [v86 scanUUID];
    v23 = &v12;
    buf = v89;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v89, v62, v58, v59, v47, v48, v49, v50, v51, v32, v33, v34, v35, v36, v38, v41, v43, v31, v21, v29, v28, v27, v22, v25, v86);
    _os_log_impl(&dword_26AC94000, log, v56[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to refresh the current scan results with ID: %{public}@.\nResults: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v33);
    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v48);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v57);
    obj = 0;
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, obj);
    objc_storeStrong(&v83, obj);
  }

  objc_storeStrong(&oslog, 0);
  suClient = v88->_suClient;
  v13 = &v63;
  v63 = MEMORY[0x277D85DD0];
  v64 = -1073741824;
  v65 = 0;
  v66 = __56__SUSettingsStatefulUIManager_handleRefreshScanResults___block_invoke;
  v67 = &unk_279CB9690;
  v16 = v68;
  v68[0] = MEMORY[0x277D82BE0](v88);
  v15 = (v13 + 5);
  v17 = location;
  v68[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient isScanning:v13];
  v18 = 0;
  objc_storeStrong(v15, 0);
  objc_storeStrong(v16, v18);
  objc_storeStrong(&v86, v18);
  objc_storeStrong(v17, v18);
  *MEMORY[0x277D85DE8];
}

void __56__SUSettingsStatefulUIManager_handleRefreshScanResults___block_invoke(NSObject *a1, char a2, id obj)
{
  v57 = a1;
  v56 = "[SUSettingsStatefulUIManager handleRefreshScanResults:]_block_invoke";
  v80 = *MEMORY[0x277D85DE8];
  v78 = a1;
  v77 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = v57;
  v55 = [(objc_class *)v57[4].isa log];
  oslog[0] = [v55 oslog];
  MEMORY[0x277D82BD8](v55);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v50 = type;
    v51 = SUSettingsUIStateToString([(objc_class *)v57[4].isa currentState]);
    v52 = MEMORY[0x277D82BE0](v51);
    v73 = v52;
    v53 = [(objc_class *)v57[4].isa currentState];
    v54 = [(objc_class *)v57[4].isa delegate];
    v71 = 0;
    v69 = 0;
    if (v54)
    {
      v72 = [(objc_class *)v57[4].isa delegate];
      v47 = 1;
      v71 = 1;
      v3 = objc_opt_class();
      v70 = NSStringFromClass(v3);
      v69 = 1;
      v48 = v70;
    }

    else
    {
      v48 = @"(null)";
    }

    v41 = v48;
    v42 = [(objc_class *)v57[4].isa delegate];
    v43 = [(objc_class *)v57[4].isa scanError];
    v44 = [(objc_class *)v57[4].isa preferredStatefulDescriptor];
    v45 = [(objc_class *)v57[4].isa alternateStatefulDescriptor];
    v46 = [(objc_class *)v57[4].isa currentDownload];
    v67 = 0;
    v65 = 0;
    v63 = 0;
    if (v46)
    {
      v68 = [(objc_class *)v57[4].isa currentDownload];
      v39 = 1;
      v67 = 1;
      v66 = [v68 descriptor];
      v65 = 1;
      v64 = [v66 humanReadableUpdateName];
      v63 = 1;
      v40 = v64;
    }

    else
    {
      v40 = @"(null)";
    }

    v26 = v40;
    v27 = [(objc_class *)v57[4].isa currentDownload];
    v4 = [(objc_class *)v57[4].isa performThirdPartyScan];
    v33 = "NO";
    v5 = "YES";
    v34 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v28 = v5;
    v6 = [(objc_class *)v57[4].isa isTargetedUpdateScheduledForAutoInstall];
    v7 = v34;
    if ((v6 & 1) == 0)
    {
      v7 = v33;
    }

    v29 = v7;
    v8 = [(objc_class *)v57[4].isa hidingPreferredDescriptor];
    v9 = v34;
    if ((v8 & 1) == 0)
    {
      v9 = v33;
    }

    v30 = v9;
    v31 = [*(v57[4].isa + 32) humanReadableUpdateName];
    v32 = MEMORY[0x277D82BE0](v31);
    v62 = v32;
    v10 = [(objc_class *)v57[4].isa hidingAlternateDescriptor];
    v11 = v34;
    if ((v10 & 1) == 0)
    {
      v11 = v33;
    }

    v35 = v11;
    v36 = [*(v57[4].isa + 33) humanReadableUpdateName];
    v37 = MEMORY[0x277D82BE0](v36);
    v61 = v37;
    v38 = [(objc_class *)v57[4].isa enrolledBetaProgram];
    v59 = 0;
    if (v38)
    {
      v60 = [(objc_class *)v57[4].isa enrolledBetaProgram];
      v59 = 1;
      v25 = [v60 programID];
    }

    else
    {
      v25 = 0;
    }

    v16 = v25;
    v24 = [(objc_class *)v57[4].isa betaPrograms];
    v17 = [v24 count];
    v23 = [(objc_class *)v57[4].isa currentFullScanOperation];
    v22 = [(objc_class *)v57[4].isa currentRefreshScanOperation];
    v21 = [(objc_class *)v57[4].isa currentUpdateOperation];
    v20 = [(objc_class *)v57[4].isa auxiliaryOperations];
    v12 = [v20 count];
    if (v77)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v18 = &v14;
    buf = v79;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_32_8_66(v79, v56, v52, v53, v41, v42, v43, v44, v45, v26, v27, v28, v29, v30, v32, v35, v37, v16, v17, v23, v22, v21, v12, v13, location);
    _os_log_impl(&dword_26AC94000, log, v50[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nisScanning: %s; error: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v27);
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

    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v42);
    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v51);
    obja = 0;
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, obja);
    objc_storeStrong(&v73, obja);
  }

  objc_storeStrong(oslog, 0);
  if (v77)
  {
    if ([(objc_class *)v57[4].isa currentState]> 1)
    {
      [(objc_class *)v57[4].isa checkForUpdatesInBackground];
    }

    else
    {
      [(objc_class *)v57[4].isa checkForAvailableUpdates];
    }

    v58 = 1;
  }

  else
  {
    [(objc_class *)v57[4].isa assignRefreshScanResults:v57[5].isa];
    if (*(v57[4].isa + 10) || *(v57[4].isa + 11))
    {
      [*(v57[4].isa + 27) postEvent:@"UpdatesAvailable" withInfo:v57[5].isa];
    }

    else if ([(objc_class *)v57[5].isa refreshPreviousState]== 3)
    {
      [*(v57[4].isa + 27) postEvent:@"NoUpdateAvailable" withInfo:v57[5].isa];
    }

    else
    {
      [*(v57[4].isa + 27) postEvent:@"CheckForAvailableUpdate" withInfo:v57[5].isa];
    }

    v58 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)assignRefreshScanResults:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [location[0] refreshScanResults];
  v13 = [(SUSettingsStatefulUIManager *)v16 assignScanRelatedMembersFromScanResults:v14];
  v12 = [(SUSettingsStatefulUIManager *)v16 preferredStatefulDescriptor];
  v11 = [(SUSettingsStatefulUIManager *)v16 alternateStatefulDescriptor];
  if (*&v16->_preferredStatefulDescriptor == 0)
  {
    if (!v16->_currentDownload)
    {
      objc_storeStrong(&v16->_preferredStatefulDescriptor, 0);
      objc_storeStrong(&v16->_alternateStatefulDescriptor, 0);
    }
  }

  else
  {
    [(SUSettingsStatefulUIManager *)v16 updateDescriptorsUsingScanResults:v14 andWithConcreteError:0];
  }

  if (v16->_preferredStatefulDescriptor == v12 || (v8 = 1, v16->_preferredStatefulDescriptor) && (v8 = 1, [(SUSettingsStatefulDescriptor *)v16->_preferredStatefulDescriptor isEqual:v12]))
  {
    v7 = 0;
    if (v16->_alternateStatefulDescriptor != v11)
    {
      LOBYTE(v6) = 1;
      if (v16->_alternateStatefulDescriptor)
      {
        v6 = ![(SUSettingsStatefulDescriptor *)v16->_alternateStatefulDescriptor isEqual:v11];
      }

      v7 = v6;
    }

    v8 = v7;
  }

  v10 = v8 & 1;
  v5 = [(SUSettingsStatefulUIManager *)v16 log];
  oslog = [(SUCoreLog *)v5 oslog];
  MEMORY[0x277D82BD8](v5);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_32_4_0_4_0(v17, "[SUSettingsStatefulUIManager assignRefreshScanResults:]", v13, v10 & 1);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Refreshed results changes from previous data: changedScanRelatedData = %d, changedDescriptors: %d", v17, 0x18u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = 1;
  if (!v13)
  {
    v4 = v10;
  }

  [location[0] setRefreshHasAnyChanges:{v4 & 1, location}];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v3, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)assignScanRelatedMembersFromScanResults:(id)a3
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  v25 = MEMORY[0x277D82BE0](v35);
  objc_sync_enter(v25);
  agreementManager = v35->_agreementManager;
  v31 = 0;
  v23 = [location[0] agreementManager];
  v24 = 0;
  if (agreementManager != v23)
  {
    LOBYTE(v22) = 1;
    if (v35->_agreementManager)
    {
      v32 = [location[0] agreementManager];
      v31 = 1;
      v22 = [v32 isEqual:v35->_agreementManager] ^ 1;
    }

    v24 = v22;
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](v32);
  }

  MEMORY[0x277D82BD8](v23);
  if (v24)
  {
    v3 = [location[0] agreementManager];
    v4 = v35->_agreementManager;
    v35->_agreementManager = v3;
    MEMORY[0x277D82BD8](v4);
    v33 = 1;
  }

  clearingSpaceForDownload = v35->_clearingSpaceForDownload;
  if (clearingSpaceForDownload != [location[0] isClearingSpaceForDownload])
  {
    v20 = [location[0] isClearingSpaceForDownload];
    v35->_clearingSpaceForDownload = v20;
    v33 = 1;
  }

  currentDownload = v35->_currentDownload;
  v29 = 0;
  v17 = [location[0] currentDownload];
  v18 = 0;
  if (currentDownload != v17)
  {
    LOBYTE(v16) = 1;
    if (v35->_currentDownload)
    {
      v30 = [location[0] currentDownload];
      v29 = 1;
      v16 = [v30 isEqual:v35->_currentDownload] ^ 1;
    }

    v18 = v16;
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    v5 = [location[0] currentDownload];
    v6 = v35->_currentDownload;
    v35->_currentDownload = v5;
    MEMORY[0x277D82BD8](v6);
    v33 = 1;
  }

  isAutoUpdateScheduled = v35->_isAutoUpdateScheduled;
  if (isAutoUpdateScheduled != [location[0] isAutoUpdateScheduled])
  {
    v14 = [location[0] isAutoUpdateScheduled];
    v35->_isAutoUpdateScheduled = v14;
    v33 = 1;
  }

  currentAutoInstallOperation = v35->_currentAutoInstallOperation;
  v27 = 0;
  v11 = [location[0] currentAutoInstallOperation];
  v12 = 0;
  if (currentAutoInstallOperation != v11)
  {
    LOBYTE(v10) = 1;
    if (v35->_currentAutoInstallOperation)
    {
      v28 = [location[0] currentAutoInstallOperation];
      v27 = 1;
      v10 = [v28 isEqual:v35->_currentAutoInstallOperation] ^ 1;
    }

    v12 = v10;
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    if (v35->_currentAutoInstallOperation)
    {
      [(SUAutoInstallOperation *)v35->_currentAutoInstallOperation setDelegate:0];
    }

    v7 = [location[0] currentAutoInstallOperation];
    v8 = v35->_currentAutoInstallOperation;
    v35->_currentAutoInstallOperation = v7;
    MEMORY[0x277D82BD8](v8);
    v33 = 1;
    if (v35->_currentAutoInstallOperation)
    {
      [(SUAutoInstallOperation *)v35->_currentAutoInstallOperation setDelegate:v35];
    }
  }

  objc_sync_exit(v25);
  MEMORY[0x277D82BD8](v25);
  objc_storeStrong(location, 0);
  return v33 & 1;
}

- (void)clearPastScanResults
{
  v2 = MEMORY[0x277D82BE0](self);
  objc_sync_enter(v2);
  objc_storeStrong(&self->_preferredStatefulDescriptor, 0);
  objc_storeStrong(&self->_alternateStatefulDescriptor, 0);
  objc_storeStrong(&self->_hiddenPreferredStatefulDescriptor, 0);
  objc_storeStrong(&self->_hiddenAlternateStatefulDescriptor, 0);
  self->_hidingPreferredDescriptor = 0;
  self->_hidingAlternateDescriptor = 0;
  objc_sync_exit(v2);
  MEMORY[0x277D82BD8](v2);
}

- (id)createScanOperationOptions
{
  v10 = self;
  v9[1] = a2;
  v9[0] = [[SUSettingsScanOptions alloc] initWithScanOptions:?];
  v5 = [(SUSettingsStatefulUIManager *)v10 options];
  v2 = [(SUSettingsStatefulUIOptions *)v5 allowUnrestrictedCellularDownload];
  [v9[0] setAllowUnrestrictedCellularDownload:v2];
  MEMORY[0x277D82BD8](v5);
  v6 = [(SUSettingsStatefulUIManager *)v10 currentSeedingDevice];
  [v9[0] setCurrentSeedingDevice:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [(SUSettingsStatefulUIManager *)v10 options];
  v3 = [(SUSettingsStatefulUIOptions *)v7 clientIsBuddy];
  [v9[0] setClientIsBuddy:v3];
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v8;
}

- (id)targetedUpdateForDownload:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  preferredStatefulDescriptor = v12->_preferredStatefulDescriptor;
  v9 = [location[0] descriptor];
  v10 = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor isEqualToDescriptor:?];
  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    v13 = MEMORY[0x277D82BE0](v12->_preferredStatefulDescriptor);
  }

  else
  {
    alternateStatefulDescriptor = v12->_alternateStatefulDescriptor;
    v6 = [location[0] descriptor];
    v7 = [(SUSettingsStatefulDescriptor *)alternateStatefulDescriptor isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      v13 = MEMORY[0x277D82BE0](v12->_alternateStatefulDescriptor);
    }

    else
    {
      v13 = 0;
    }
  }

  objc_storeStrong(location, 0);
  v3 = v13;

  return v3;
}

- (id)targetedUpdateMatchingDescriptor:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SUSettingsStatefulDescriptor *)v6->_preferredStatefulDescriptor isEqualToDescriptor:location[0]])
  {
    v7 = MEMORY[0x277D82BE0](v6->_preferredStatefulDescriptor);
  }

  else if ([(SUSettingsStatefulDescriptor *)v6->_alternateStatefulDescriptor isEqualToDescriptor:location[0]])
  {
    v7 = MEMORY[0x277D82BE0](v6->_alternateStatefulDescriptor);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (void)beginUpdateOperationWithDescriptor:(id)a3 operationDelegate:(id)a4 delegateCallbackQueue:(id)a5 operationTypeBlock:(id)a6
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
  queue = v24->_workQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __125__SUSettingsStatefulUIManager_beginUpdateOperationWithDescriptor_operationDelegate_delegateCallbackQueue_operationTypeBlock___block_invoke;
  v14 = &unk_279CB9910;
  v15 = MEMORY[0x277D82BE0](v24);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v19 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x277D82BE0](v22);
  v18 = MEMORY[0x277D82BE0](v21);
  dispatch_async(queue, &v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

uint64_t __125__SUSettingsStatefulUIManager_beginUpdateOperationWithDescriptor_operationDelegate_delegateCallbackQueue_operationTypeBlock___block_invoke(NSObject *a1)
{
  v63 = a1;
  v64 = "[SUSettingsStatefulUIManager beginUpdateOperationWithDescriptor:operationDelegate:delegateCallbackQueue:operationTypeBlock:]_block_invoke";
  v83 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1[4].isa + 25))
  {
    v62 = [(objc_class *)v63[4].isa log];
    oslog[0] = [v62 oslog];
    MEMORY[0x277D82BD8](v62);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v57 = type;
      v58 = SUSettingsUIStateToString([(objc_class *)v63[4].isa currentState]);
      v59 = MEMORY[0x277D82BE0](v58);
      v79 = v59;
      v60 = [(objc_class *)v63[4].isa currentState];
      v61 = [(objc_class *)v63[4].isa delegate];
      v77 = 0;
      v75 = 0;
      if (v61)
      {
        v78 = [(objc_class *)v63[4].isa delegate];
        v54 = 1;
        v77 = 1;
        v1 = objc_opt_class();
        v76 = NSStringFromClass(v1);
        v75 = 1;
        v55 = v76;
      }

      else
      {
        v55 = @"(null)";
      }

      v48 = v55;
      v49 = [(objc_class *)v63[4].isa delegate];
      v50 = [(objc_class *)v63[4].isa scanError];
      v51 = [(objc_class *)v63[4].isa preferredStatefulDescriptor];
      v52 = [(objc_class *)v63[4].isa alternateStatefulDescriptor];
      v53 = [(objc_class *)v63[4].isa currentDownload];
      v73 = 0;
      v71 = 0;
      v69 = 0;
      if (v53)
      {
        v74 = [(objc_class *)v63[4].isa currentDownload];
        v46 = 1;
        v73 = 1;
        v72 = [v74 descriptor];
        v71 = 1;
        v70 = [v72 humanReadableUpdateName];
        v69 = 1;
        v47 = v70;
      }

      else
      {
        v47 = @"(null)";
      }

      v33 = v47;
      v34 = [(objc_class *)v63[4].isa currentDownload];
      v2 = [(objc_class *)v63[4].isa performThirdPartyScan];
      v40 = "NO";
      v3 = "YES";
      v41 = "YES";
      if ((v2 & 1) == 0)
      {
        v3 = "NO";
      }

      v35 = v3;
      v4 = [(objc_class *)v63[4].isa isTargetedUpdateScheduledForAutoInstall];
      v5 = v41;
      if ((v4 & 1) == 0)
      {
        v5 = v40;
      }

      v36 = v5;
      v6 = [(objc_class *)v63[4].isa hidingPreferredDescriptor];
      v7 = v41;
      if ((v6 & 1) == 0)
      {
        v7 = v40;
      }

      v37 = v7;
      v38 = [*(v63[4].isa + 32) humanReadableUpdateName];
      v39 = MEMORY[0x277D82BE0](v38);
      v68 = v39;
      v8 = [(objc_class *)v63[4].isa hidingAlternateDescriptor];
      v9 = v41;
      if ((v8 & 1) == 0)
      {
        v9 = v40;
      }

      v42 = v9;
      v43 = [*(v63[4].isa + 33) humanReadableUpdateName];
      v44 = MEMORY[0x277D82BE0](v43);
      location = v44;
      v45 = [(objc_class *)v63[4].isa enrolledBetaProgram];
      v65 = 0;
      if (v45)
      {
        v66 = [(objc_class *)v63[4].isa enrolledBetaProgram];
        v65 = 1;
        v32 = [v66 programID];
      }

      else
      {
        v32 = 0;
      }

      v23 = v32;
      v31 = [(objc_class *)v63[4].isa betaPrograms];
      v24 = [v31 count];
      v30 = [(objc_class *)v63[4].isa currentFullScanOperation];
      v29 = [(objc_class *)v63[4].isa currentRefreshScanOperation];
      v28 = [(objc_class *)v63[4].isa currentUpdateOperation];
      v27 = [(objc_class *)v63[4].isa auxiliaryOperations];
      v10 = [v27 count];
      isa = v63[5].isa;
      v25 = &v19;
      buf = v82;
      __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v82, v64, v59, v60, v48, v49, v50, v51, v52, v33, v34, v35, v36, v37, v39, v42, v44, v32, v24, v30, v29, v28, v10, isa);
      _os_log_impl(&dword_26AC94000, log, v57[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThere is already an update process running. Ignoring request to update into: %{public}@", buf, 0xE8u);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      if (v65)
      {
        MEMORY[0x277D82BD8](v66);
      }

      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v34);
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

      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v49);
      if (v75)
      {
        MEMORY[0x277D82BD8](v76);
      }

      if (v77)
      {
        MEMORY[0x277D82BD8](v78);
      }

      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v58);
      obj = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v68, obj);
      objc_storeStrong(&v79, obj);
    }

    objc_storeStrong(oslog, 0);
    result = (*(v63[8].isa + 2))();
  }

  else
  {
    v20 = [SUSettingsUpdateOperation alloc];
    v21 = [(objc_class *)v63[5].isa descriptor];
    v13 = *(v63[4].isa + 28);
    v14 = v63[6].isa;
    v15 = [SUSettingsUpdateOperation initWithDescriptor:v20 usingSUManagerClient:"initWithDescriptor:usingSUManagerClient:delegate:" delegate:?];
    v16 = v63[4].isa;
    v17 = *(v16 + 25);
    *(v16 + 25) = v15;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v21);
    [*(v63[4].isa + 25) setDelegateCallbackQueue:v63[7].isa];
    [*(v63[4].isa + 25) setCompletionQueue:*(v63[4].isa + 21)];
    v18 = *(v63[4].isa + 25);
    result = (*(v63[8].isa + 2))();
  }

  *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateStatePostDownloadOperation:(BOOL)a3 withDownload:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v8 = 0;
  objc_storeStrong(&v8, a6);
  [(SUSettingsStatefulUIManager *)v13 performPostUpdateOperationRefresh:v11 withDownload:location didScheduledUpdate:0 autoInstallOperation:0 error:v9 completionHandler:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

- (void)performPostUpdateOperationRefresh:(BOOL)a3 withDownload:(id)a4 didScheduledUpdate:(BOOL)a5 autoInstallOperation:(id)a6 error:(id)a7 completionHandler:(id)a8
{
  v82 = a5;
  obj = a6;
  v84 = a7;
  v85 = a8;
  v81 = "[SUSettingsStatefulUIManager performPostUpdateOperationRefresh:withDownload:didScheduledUpdate:autoInstallOperation:error:completionHandler:]";
  v122 = *MEMORY[0x277D85DE8];
  v120 = self;
  v119 = a2;
  v118 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v116 = v82;
  v115 = 0;
  objc_storeStrong(&v115, obj);
  v114 = 0;
  objc_storeStrong(&v114, v84);
  v113 = 0;
  objc_storeStrong(&v113, v85);
  v86 = [MEMORY[0x277CCAD78] UUID];
  v112 = [v86 UUIDString];
  MEMORY[0x277D82BD8](v86);
  v80 = [(SUSettingsStatefulUIManager *)v120 log];
  oslog = [(SUCoreLog *)v80 oslog];
  MEMORY[0x277D82BD8](v80);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v75 = type;
    v76 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v120 currentState]);
    v77 = MEMORY[0x277D82BE0](v76);
    v109 = v77;
    v78 = [(SUSettingsStatefulUIManager *)v120 currentState];
    v79 = [(SUSettingsStatefulUIManager *)v120 delegate];
    v107 = 0;
    v105 = 0;
    if (v79)
    {
      v108 = [(SUSettingsStatefulUIManager *)v120 delegate];
      v72 = 1;
      v107 = 1;
      v8 = objc_opt_class();
      v106 = NSStringFromClass(v8);
      v105 = 1;
      v73 = v106;
    }

    else
    {
      v73 = @"(null)";
    }

    v66 = v73;
    v67 = [(SUSettingsStatefulUIManager *)v120 delegate];
    v68 = [(SUSettingsStatefulUIManager *)v120 scanError];
    v69 = [(SUSettingsStatefulUIManager *)v120 preferredStatefulDescriptor];
    v70 = [(SUSettingsStatefulUIManager *)v120 alternateStatefulDescriptor];
    v71 = [(SUSettingsStatefulUIManager *)v120 currentDownload];
    v103 = 0;
    v101 = 0;
    v99 = 0;
    if (v71)
    {
      v104 = [(SUSettingsStatefulUIManager *)v120 currentDownload];
      v64 = 1;
      v103 = 1;
      v102 = [(SUDownload *)v104 descriptor];
      v101 = 1;
      v100 = [(SUDescriptor *)v102 humanReadableUpdateName];
      v99 = 1;
      v65 = v100;
    }

    else
    {
      v65 = @"(null)";
    }

    v51 = v65;
    v52 = [(SUSettingsStatefulUIManager *)v120 currentDownload];
    v9 = [(SUSettingsStatefulUIManager *)v120 performThirdPartyScan];
    v58 = "NO";
    v10 = "YES";
    v59 = "YES";
    if (!v9)
    {
      v10 = "NO";
    }

    v53 = v10;
    v11 = [(SUSettingsStatefulUIManager *)v120 isTargetedUpdateScheduledForAutoInstall];
    v12 = v59;
    if (!v11)
    {
      v12 = v58;
    }

    v54 = v12;
    v13 = [(SUSettingsStatefulUIManager *)v120 hidingPreferredDescriptor];
    v14 = v59;
    if (!v13)
    {
      v14 = v58;
    }

    v55 = v14;
    v56 = [(SUSettingsStatefulDescriptor *)v120->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v57 = MEMORY[0x277D82BE0](v56);
    v98 = v57;
    v15 = [(SUSettingsStatefulUIManager *)v120 hidingAlternateDescriptor];
    v16 = v59;
    if (!v15)
    {
      v16 = v58;
    }

    v60 = v16;
    v61 = [(SUSettingsStatefulDescriptor *)v120->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v62 = MEMORY[0x277D82BE0](v61);
    v97 = v62;
    v63 = [(SUSettingsStatefulUIManager *)v120 enrolledBetaProgram];
    v95 = 0;
    if (v63)
    {
      v96 = [(SUSettingsStatefulUIManager *)v120 enrolledBetaProgram];
      v95 = 1;
      v50 = [(SDBetaProgram *)v96 programID];
    }

    else
    {
      v50 = 0;
    }

    v41 = v50;
    v49 = [(SUSettingsStatefulUIManager *)v120 betaPrograms];
    v42 = [(NSArray *)v49 count];
    v48 = [(SUSettingsStatefulUIManager *)v120 currentFullScanOperation];
    v47 = [(SUSettingsStatefulUIManager *)v120 currentRefreshScanOperation];
    v46 = [(SUSettingsStatefulUIManager *)v120 currentUpdateOperation];
    v45 = [(SUSettingsStatefulUIManager *)v120 auxiliaryOperations];
    v43 = &v20;
    buf = v121;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v121, v81, v77, v78, v66, v67, v68, v69, v70, v51, v52, v53, v54, v55, v57, v60, v62, v50, v42, v48, v47, v46, [(NSMutableSet *)v45 count], v112);
    _os_log_impl(&dword_26AC94000, log, v75[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a post download refresh operation with scan ID: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v52);
    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v67);
    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    if (v107)
    {
      MEMORY[0x277D82BD8](v108);
    }

    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v76);
    v40 = 0;
    objc_storeStrong(&v97, 0);
    objc_storeStrong(&v98, v40);
    objc_storeStrong(&v109, v40);
  }

  objc_storeStrong(&oslog, 0);
  v17 = [SUSettingsScanOperation alloc];
  v34 = &v112;
  v18 = [(SUSettingsScanOperation *)v17 initWithUUID:v112 usingSUManagerClient:v120->_suClient andBetaManager:v120->_seedingBetaManager withCompletionQueue:v120->_workQueue];
  v33 = &v94;
  v94 = v18;
  [(NSMutableSet *)v120->_auxiliaryOperations addObject:v18];
  v21 = &v87;
  v87 = MEMORY[0x277D85DD0];
  v88 = -1073741824;
  v89 = 0;
  v90 = __142__SUSettingsStatefulUIManager_performPostUpdateOperationRefresh_withDownload_didScheduledUpdate_autoInstallOperation_error_completionHandler___block_invoke;
  v91 = &unk_279CB9938;
  v32 = v92;
  v92[0] = MEMORY[0x277D82BE0](v120);
  v31 = v21 + 7;
  v35 = &v113;
  v92[3] = MEMORY[0x277D82BE0](v113);
  v30 = v21 + 5;
  v92[1] = MEMORY[0x277D82BE0](v94);
  v29 = v21 + 6;
  v36 = &v114;
  v92[2] = MEMORY[0x277D82BE0](v114);
  v19 = MEMORY[0x26D66A460](v21);
  v28 = &v93;
  v93 = v19;
  v22 = v94;
  v27 = [(SUSettingsStatefulDescriptor *)v120->_preferredStatefulDescriptor descriptor];
  v26 = [(SUSettingsStatefulDescriptor *)v120->_alternateStatefulDescriptor descriptor];
  v25 = [(SUSettingsStatefulUIManager *)v120 latestUpdateStatefulDescriptor];
  v24 = [v25 descriptor];
  v23 = [(SUSettingsStatefulUIManager *)v120 createScanOperationOptions];
  p_location = &location;
  v37 = &v115;
  [v22 refreshScanResultsWithPreferredUpdate:v27 alternateUpdate:v26 latestUpdate:v24 options:v114 previouslyDiscoveredDownload:v93 previouslyDiscoveredAutoInstallOperation:? encounteredError:? completionHandler:?];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v39 = 0;
  objc_storeStrong(v28, 0);
  objc_storeStrong(v29, v39);
  objc_storeStrong(v30, v39);
  objc_storeStrong(v31, v39);
  objc_storeStrong(v32, v39);
  objc_storeStrong(v33, v39);
  objc_storeStrong(v34, v39);
  objc_storeStrong(v35, v39);
  objc_storeStrong(v36, v39);
  objc_storeStrong(v37, v39);
  objc_storeStrong(p_location, v39);
  *MEMORY[0x277D85DE8];
}

void __142__SUSettingsStatefulUIManager_performPostUpdateOperationRefresh_withDownload_didScheduledUpdate_autoInstallOperation_error_completionHandler___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v65 = a1;
  obj = a3;
  v63 = "[SUSettingsStatefulUIManager performPostUpdateOperationRefresh:withDownload:didScheduledUpdate:autoInstallOperation:error:completionHandler:]_block_invoke";
  v87 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v84 = 0;
  objc_storeStrong(&v84, obj);
  oslog[1] = v65;
  v62 = [(objc_class *)v65[4].isa log];
  oslog[0] = [v62 oslog];
  MEMORY[0x277D82BD8](v62);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v57 = type;
    v58 = SUSettingsUIStateToString([(objc_class *)v65[4].isa currentState]);
    v59 = MEMORY[0x277D82BE0](v58);
    v81 = v59;
    v60 = [(objc_class *)v65[4].isa currentState];
    v61 = [(objc_class *)v65[4].isa delegate];
    v79 = 0;
    v77 = 0;
    if (v61)
    {
      v80 = [(objc_class *)v65[4].isa delegate];
      v54 = 1;
      v79 = 1;
      v3 = objc_opt_class();
      v78 = NSStringFromClass(v3);
      v77 = 1;
      v55 = v78;
    }

    else
    {
      v55 = @"(null)";
    }

    v48 = v55;
    v49 = [(objc_class *)v65[4].isa delegate];
    v50 = [(objc_class *)v65[4].isa scanError];
    v51 = [(objc_class *)v65[4].isa preferredStatefulDescriptor];
    v52 = [(objc_class *)v65[4].isa alternateStatefulDescriptor];
    v53 = [(objc_class *)v65[4].isa currentDownload];
    v75 = 0;
    v73 = 0;
    v71 = 0;
    if (v53)
    {
      v76 = [(objc_class *)v65[4].isa currentDownload];
      v46 = 1;
      v75 = 1;
      v74 = [v76 descriptor];
      v73 = 1;
      v72 = [v74 humanReadableUpdateName];
      v71 = 1;
      v47 = v72;
    }

    else
    {
      v47 = @"(null)";
    }

    v33 = v47;
    v34 = [(objc_class *)v65[4].isa currentDownload];
    v4 = [(objc_class *)v65[4].isa performThirdPartyScan];
    v40 = "NO";
    v5 = "YES";
    v41 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v35 = v5;
    v6 = [(objc_class *)v65[4].isa isTargetedUpdateScheduledForAutoInstall];
    v7 = v41;
    if ((v6 & 1) == 0)
    {
      v7 = v40;
    }

    v36 = v7;
    v8 = [(objc_class *)v65[4].isa hidingPreferredDescriptor];
    v9 = v41;
    if ((v8 & 1) == 0)
    {
      v9 = v40;
    }

    v37 = v9;
    v38 = [*(v65[4].isa + 32) humanReadableUpdateName];
    v39 = MEMORY[0x277D82BE0](v38);
    v70 = v39;
    v10 = [(objc_class *)v65[4].isa hidingAlternateDescriptor];
    v11 = v41;
    if ((v10 & 1) == 0)
    {
      v11 = v40;
    }

    v42 = v11;
    v43 = [*(v65[4].isa + 33) humanReadableUpdateName];
    v44 = MEMORY[0x277D82BE0](v43);
    v69 = v44;
    v45 = [(objc_class *)v65[4].isa enrolledBetaProgram];
    v67 = 0;
    if (v45)
    {
      v68 = [(objc_class *)v65[4].isa enrolledBetaProgram];
      v67 = 1;
      v32 = [v68 programID];
    }

    else
    {
      v32 = 0;
    }

    v23 = v32;
    v31 = [(objc_class *)v65[4].isa betaPrograms];
    v24 = [v31 count];
    v30 = [(objc_class *)v65[4].isa currentFullScanOperation];
    v29 = [(objc_class *)v65[4].isa currentRefreshScanOperation];
    v28 = [(objc_class *)v65[4].isa currentUpdateOperation];
    v27 = [(objc_class *)v65[4].isa auxiliaryOperations];
    v12 = [v27 count];
    if (v84)
    {
      v13 = "failed";
    }

    else
    {
      v13 = "completed successfully";
    }

    v25 = &v18;
    buf = v86;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_32_8_66_8_66(v86, v63, v59, v60, v48, v49, v50, v51, v52, v33, v34, v35, v36, v37, v39, v42, v44, v23, v24, v30, v29, v28, v12, v13, v84, location[0]);
    _os_log_impl(&dword_26AC94000, log, v57[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPost update request refresh operation %s with error: %{public}@; scan results: %{public}@", buf, 0xFCu);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v34);
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

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);
    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v58);
    v22 = 0;
    objc_storeStrong(&v69, 0);
    objc_storeStrong(&v70, v22);
    objc_storeStrong(&v81, v22);
  }

  objc_storeStrong(oslog, 0);
  if (v84)
  {
    v14 = *(v65[7].isa + 2);
    v21 = 1;
    v14();
    v20 = [(objc_class *)v65[4].isa auxiliaryOperations];
    [v20 removeObject:v65[5].isa];
    MEMORY[0x277D82BD8](v20);
    v66 = v21;
  }

  else
  {
    v15 = [location[0] currentDownload];
    isa = v65[4].isa;
    v17 = *(isa + 13);
    *(isa + 13) = v15;
    MEMORY[0x277D82BD8](v17);
    [(objc_class *)v65[4].isa updateDescriptorsUsingScanResults:location[0] andWithConcreteError:v65[6].isa];
    (*(v65[7].isa + 2))();
    [*(v65[4].isa + 26) removeObject:v65[5].isa];
    v66 = 0;
  }

  v19 = 0;
  objc_storeStrong(&v84, 0);
  objc_storeStrong(location, v19);
  *MEMORY[0x277D85DE8];
}

- (id)createUpdateOperationOptions
{
  v8 = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(SUSettingsUpdateOptions);
  v2 = [(SUSettingsStatefulUIOptions *)v8->_options allowUnrestrictedCellularDownload];
  [v7[0] setAllowUnrestrictedCellularDownload:v2];
  v3 = [(SUSettingsStatefulUIOptions *)v8->_options clientIsBuddy];
  [v7[0] setClientIsBuddy:v3];
  v4 = [(SUSettingsStatefulUIOptions *)v8->_options bypassTermsAndConditions];
  [v7[0] setBypassTermsAndConditions:v4];
  [v7[0] setAgreementManager:v8->_agreementManager];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

- (void)hidePreferredUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)v12->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)v12 log];
    v8 = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [(SUSettingsStatefulDescriptor *)v12->_preferredStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager hidePreferredUpdate]", v6);
      _os_log_impl(&dword_26AC94000, v8, v7, "%s: Hiding preferred update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v12->_hiddenPreferredStatefulDescriptor, v12->_preferredStatefulDescriptor);
    objc_storeStrong(&v12->_preferredStatefulDescriptor, v12->_alternateStatefulDescriptor);
    objc_storeStrong(&v12->_alternateStatefulDescriptor, 0);
    v12->_hidingPreferredDescriptor = 1;
    v12->_hidingAlternateDescriptor = 0;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)v12 log];
    location[0] = [(SUCoreLog *)v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v14, "[SUSettingsStatefulUIManager hidePreferredUpdate]");
      _os_log_impl(&dword_26AC94000, location[0], v10, "%s: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v14, 0xCu);
    }

    objc_storeStrong(location, 0);
    v9 = 1;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)hideAlternateUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)v12->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)v12 log];
    v8 = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [(SUSettingsStatefulDescriptor *)v12->_alternateStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager hideAlternateUpdate]", v6);
      _os_log_impl(&dword_26AC94000, v8, v7, "%s: Hiding alternate update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v12->_hiddenAlternateStatefulDescriptor, v12->_alternateStatefulDescriptor);
    objc_storeStrong(&v12->_alternateStatefulDescriptor, 0);
    v12->_hidingPreferredDescriptor = 0;
    v12->_hidingAlternateDescriptor = 1;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)v12 log];
    location[0] = [(SUCoreLog *)v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v14, "[SUSettingsStatefulUIManager hideAlternateUpdate]");
      _os_log_impl(&dword_26AC94000, location[0], v10, "%s: A request to hide the alternate update was received. Rejecting this request as this ability was disabled via the manager's options.", v14, 0xCu);
    }

    objc_storeStrong(location, 0);
    v9 = 1;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)revealHiddenPreferredUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)v12->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)v12 log];
    v8 = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [(SUSettingsStatefulDescriptor *)v12->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager revealHiddenPreferredUpdate]", v6);
      _os_log_impl(&dword_26AC94000, v8, v7, "%s: Revealing the previously hidden preferred update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v12->_alternateStatefulDescriptor, v12->_preferredStatefulDescriptor);
    objc_storeStrong(&v12->_preferredStatefulDescriptor, v12->_hiddenPreferredStatefulDescriptor);
    objc_storeStrong(&v12->_hiddenPreferredStatefulDescriptor, 0);
    v12->_hidingPreferredDescriptor = 0;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)v12 log];
    location[0] = [(SUCoreLog *)v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v14, "[SUSettingsStatefulUIManager revealHiddenPreferredUpdate]");
      _os_log_impl(&dword_26AC94000, location[0], v10, "%s: A request to reveal the hidden preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v14, 0xCu);
    }

    objc_storeStrong(location, 0);
    v9 = 1;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)revealHiddenAlteranteUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)v12->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)v12 log];
    v8 = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [(SUSettingsStatefulDescriptor *)v12->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager revealHiddenAlteranteUpdate]", v6);
      _os_log_impl(&dword_26AC94000, v8, v7, "%s: Reveal the previously hidden alternate update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v12->_alternateStatefulDescriptor, v12->_hiddenAlternateStatefulDescriptor);
    objc_storeStrong(&v12->_hiddenAlternateStatefulDescriptor, 0);
    v12->_hidingAlternateDescriptor = 0;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)v12 log];
    location[0] = [(SUCoreLog *)v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v14, "[SUSettingsStatefulUIManager revealHiddenAlteranteUpdate]");
      _os_log_impl(&dword_26AC94000, location[0], v10, "%s: A request to reveal the hidden alternate update was received. Rejecting this request as this ability was disabled via the manager's options.", v14, 0xCu);
    }

    objc_storeStrong(location, 0);
    v9 = 1;
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)doEnrollInBetaUpdatesProgram:(id)a3 completionHandler:(id)a4
{
  obj = a4;
  v67 = "[SUSettingsStatefulUIManager doEnrollInBetaUpdatesProgram:completionHandler:]";
  v96 = *MEMORY[0x277D85DE8];
  v94 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v92 = 0;
  objc_storeStrong(&v92, obj);
  v66 = [(SUSettingsStatefulUIManager *)v94 log];
  oslog = [(SUCoreLog *)v66 oslog];
  MEMORY[0x277D82BD8](v66);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v61 = type;
    v62 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)v94 currentState]);
    v63 = MEMORY[0x277D82BE0](v62);
    v89 = v63;
    v64 = [(SUSettingsStatefulUIManager *)v94 currentState];
    v65 = [(SUSettingsStatefulUIManager *)v94 delegate];
    v87 = 0;
    v85 = 0;
    if (v65)
    {
      v88 = [(SUSettingsStatefulUIManager *)v94 delegate];
      v58 = 1;
      v87 = 1;
      v4 = objc_opt_class();
      v86 = NSStringFromClass(v4);
      v85 = 1;
      v59 = v86;
    }

    else
    {
      v59 = @"(null)";
    }

    v52 = v59;
    v53 = [(SUSettingsStatefulUIManager *)v94 delegate];
    v54 = [(SUSettingsStatefulUIManager *)v94 scanError];
    v55 = [(SUSettingsStatefulUIManager *)v94 preferredStatefulDescriptor];
    v56 = [(SUSettingsStatefulUIManager *)v94 alternateStatefulDescriptor];
    v57 = [(SUSettingsStatefulUIManager *)v94 currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (v57)
    {
      v84 = [(SUSettingsStatefulUIManager *)v94 currentDownload];
      v50 = 1;
      v83 = 1;
      v82 = [(SUDownload *)v84 descriptor];
      v81 = 1;
      v80 = [(SUDescriptor *)v82 humanReadableUpdateName];
      v79 = 1;
      v51 = v80;
    }

    else
    {
      v51 = @"(null)";
    }

    v37 = v51;
    v38 = [(SUSettingsStatefulUIManager *)v94 currentDownload];
    v5 = [(SUSettingsStatefulUIManager *)v94 performThirdPartyScan];
    v44 = "NO";
    v6 = "YES";
    v45 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    v39 = v6;
    v7 = [(SUSettingsStatefulUIManager *)v94 isTargetedUpdateScheduledForAutoInstall];
    v8 = v45;
    if (!v7)
    {
      v8 = v44;
    }

    v40 = v8;
    v9 = [(SUSettingsStatefulUIManager *)v94 hidingPreferredDescriptor];
    v10 = v45;
    if (!v9)
    {
      v10 = v44;
    }

    v41 = v10;
    v42 = [(SUSettingsStatefulDescriptor *)v94->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](v42);
    v78 = v43;
    v11 = [(SUSettingsStatefulUIManager *)v94 hidingAlternateDescriptor];
    v12 = v45;
    if (!v11)
    {
      v12 = v44;
    }

    v46 = v12;
    v47 = [(SUSettingsStatefulDescriptor *)v94->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v48 = MEMORY[0x277D82BE0](v47);
    v77 = v48;
    v49 = [(SUSettingsStatefulUIManager *)v94 enrolledBetaProgram];
    v75 = 0;
    if (v49)
    {
      v76 = [(SUSettingsStatefulUIManager *)v94 enrolledBetaProgram];
      v75 = 1;
      v36 = [(SDBetaProgram *)v76 programID];
    }

    else
    {
      v36 = 0;
    }

    v26 = v36;
    v35 = [(SUSettingsStatefulUIManager *)v94 betaPrograms];
    v27 = [(NSArray *)v35 count];
    v34 = [(SUSettingsStatefulUIManager *)v94 currentFullScanOperation];
    v33 = [(SUSettingsStatefulUIManager *)v94 currentRefreshScanOperation];
    v32 = [(SUSettingsStatefulUIManager *)v94 currentUpdateOperation];
    v31 = [(SUSettingsStatefulUIManager *)v94 auxiliaryOperations];
    v28 = [(NSMutableSet *)v31 count];
    v13 = [location[0] programID];
    v29 = &v14;
    buf = v95;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v95, v67, v63, v64, v52, v53, v54, v55, v56, v37, v38, v39, v40, v41, v43, v46, v48, v36, v27, v34, v33, v32, v28, v13, location[0]);
    _os_log_impl(&dword_26AC94000, log, v61[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nAttempts to enroll in beta program: %ld (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v38);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v62);
    v25 = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, v25);
    objc_storeStrong(&v89, v25);
  }

  objc_storeStrong(&oslog, 0);
  v18 = [(SUSettingsStatefulUIManager *)v94 seedingBetaManager];
  v17 = [(SUSettingsStatefulUIManager *)v94 currentSeedingDevice];
  v23 = location;
  v15 = location[0];
  v16 = &v69;
  v69 = MEMORY[0x277D85DD0];
  v70 = -1073741824;
  v71 = 0;
  v72 = __78__SUSettingsStatefulUIManager_doEnrollInBetaUpdatesProgram_completionHandler___block_invoke;
  v73 = &unk_279CB9960;
  v21 = v74;
  v74[0] = MEMORY[0x277D82BE0](v94);
  v20 = (v16 + 5);
  v74[1] = MEMORY[0x277D82BE0](location[0]);
  v19 = (v16 + 6);
  v22 = &v92;
  v74[2] = MEMORY[0x277D82BE0](v92);
  [(SDBetaManager *)v18 enrollDevice:v17 inBetaProgram:v15 completion:v16];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v24 = 0;
  objc_storeStrong(v19, 0);
  objc_storeStrong(v20, v24);
  objc_storeStrong(v21, v24);
  objc_storeStrong(v22, v24);
  objc_storeStrong(v23, v24);
  *MEMORY[0x277D85DE8];
}

void __78__SUSettingsStatefulUIManager_doEnrollInBetaUpdatesProgram_completionHandler___block_invoke(NSObject *a1, void *a2)
{
  v72 = a1;
  v71 = "[SUSettingsStatefulUIManager doEnrollInBetaUpdatesProgram:completionHandler:]_block_invoke";
  v106 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = v72;
  v70 = [(objc_class *)v72[4].isa log];
  oslog[0] = [v70 oslog];
  MEMORY[0x277D82BD8](v70);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v65 = type;
    v66 = SUSettingsUIStateToString([(objc_class *)v72[4].isa currentState]);
    v67 = MEMORY[0x277D82BE0](v66);
    v101 = v67;
    v68 = [(objc_class *)v72[4].isa currentState];
    v69 = [(objc_class *)v72[4].isa delegate];
    v99 = 0;
    v97 = 0;
    if (v69)
    {
      v100 = [(objc_class *)v72[4].isa delegate];
      v62 = 1;
      v99 = 1;
      v2 = objc_opt_class();
      v98 = NSStringFromClass(v2);
      v97 = 1;
      v63 = v98;
    }

    else
    {
      v63 = @"(null)";
    }

    v56 = v63;
    v57 = [(objc_class *)v72[4].isa delegate];
    v58 = [(objc_class *)v72[4].isa scanError];
    v59 = [(objc_class *)v72[4].isa preferredStatefulDescriptor];
    v60 = [(objc_class *)v72[4].isa alternateStatefulDescriptor];
    v61 = [(objc_class *)v72[4].isa currentDownload];
    v95 = 0;
    v93 = 0;
    v91 = 0;
    if (v61)
    {
      v96 = [(objc_class *)v72[4].isa currentDownload];
      v54 = 1;
      v95 = 1;
      v94 = [v96 descriptor];
      v93 = 1;
      v92 = [v94 humanReadableUpdateName];
      v91 = 1;
      v55 = v92;
    }

    else
    {
      v55 = @"(null)";
    }

    v41 = v55;
    v42 = [(objc_class *)v72[4].isa currentDownload];
    v3 = [(objc_class *)v72[4].isa performThirdPartyScan];
    v48 = "NO";
    v4 = "YES";
    v49 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    v43 = v4;
    v5 = [(objc_class *)v72[4].isa isTargetedUpdateScheduledForAutoInstall];
    v6 = v49;
    if ((v5 & 1) == 0)
    {
      v6 = v48;
    }

    v44 = v6;
    v7 = [(objc_class *)v72[4].isa hidingPreferredDescriptor];
    v8 = v49;
    if ((v7 & 1) == 0)
    {
      v8 = v48;
    }

    v45 = v8;
    v46 = [*(v72[4].isa + 32) humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](v46);
    v90 = v47;
    v9 = [(objc_class *)v72[4].isa hidingAlternateDescriptor];
    v10 = v49;
    if ((v9 & 1) == 0)
    {
      v10 = v48;
    }

    v50 = v10;
    v51 = [*(v72[4].isa + 33) humanReadableUpdateName];
    v52 = MEMORY[0x277D82BE0](v51);
    v89 = v52;
    v53 = [(objc_class *)v72[4].isa enrolledBetaProgram];
    v87 = 0;
    if (v53)
    {
      v88 = [(objc_class *)v72[4].isa enrolledBetaProgram];
      v87 = 1;
      v40 = [v88 programID];
    }

    else
    {
      v40 = 0;
    }

    v30 = v40;
    v39 = [(objc_class *)v72[4].isa betaPrograms];
    v31 = [v39 count];
    v38 = [(objc_class *)v72[4].isa currentFullScanOperation];
    v37 = [(objc_class *)v72[4].isa currentRefreshScanOperation];
    v36 = [(objc_class *)v72[4].isa currentUpdateOperation];
    v35 = [(objc_class *)v72[4].isa auxiliaryOperations];
    v32 = [v35 count];
    v11 = [(objc_class *)v72[5].isa programID];
    isa = v72[5].isa;
    v33 = &v13;
    buf = v105;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v105, v71, v67, v68, v56, v57, v58, v59, v60, v41, v42, v43, v44, v45, v47, v50, v52, v40, v31, v38, v37, v36, v32, v11, isa, location[0]);
    _os_log_impl(&dword_26AC94000, log, v65[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to enroll in beta program: %ld (%p); error: %{public}@", buf, 0xFCu);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v42);
    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v57);
    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v66);
    obj = 0;
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v90, obj);
    objc_storeStrong(&v101, obj);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)v72[4].isa setEnrolledBetaProgram:v72[5].isa];
  [(objc_class *)v72[4].isa checkForAvailableUpdates];
  if (v72[6].isa)
  {
    v24 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v24 selectDelegateCallbackQueue:*(v72[4].isa + 5)];
    block = &v79;
    v79 = MEMORY[0x277D85DD0];
    v80 = -1073741824;
    v81 = 0;
    v82 = __78__SUSettingsStatefulUIManager_doEnrollInBetaUpdatesProgram_completionHandler___block_invoke_438;
    v83 = &unk_279CB97A8;
    v27 = &v86;
    v86 = MEMORY[0x277D82BE0](v72[6].isa);
    v26 = (block + 32);
    v84 = MEMORY[0x277D82BE0](v72[5].isa);
    v25 = (block + 40);
    v85 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v24);
    v28 = 0;
    objc_storeStrong(v25, 0);
    objc_storeStrong(v26, v28);
    objc_storeStrong(v27, v28);
  }

  v16 = v72[4].isa;
  v14 = sel_statefulUIManager_didEnrollDevice_inBetaUpdatesProgram_withError_;
  v15 = &v73;
  v73 = MEMORY[0x277D85DD0];
  v74 = -1073741824;
  v75 = 0;
  v76 = __78__SUSettingsStatefulUIManager_doEnrollInBetaUpdatesProgram_completionHandler___block_invoke_2;
  v77 = &unk_279CB94B0;
  v19 = v78;
  v78[0] = MEMORY[0x277D82BE0](v72[4].isa);
  v18 = (v15 + 5);
  v78[1] = MEMORY[0x277D82BE0](v72[5].isa);
  v17 = (v15 + 6);
  v20 = location;
  v78[2] = MEMORY[0x277D82BE0](location[0]);
  [(objc_class *)v16 executeOperationOnDelegate:v14 usingBlock:v15];
  v21 = 0;
  objc_storeStrong(v17, 0);
  objc_storeStrong(v18, v21);
  objc_storeStrong(v19, v21);
  objc_storeStrong(v20, v21);
  *MEMORY[0x277D85DE8];
}

uint64_t __78__SUSettingsStatefulUIManager_doEnrollInBetaUpdatesProgram_completionHandler___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v6 = [v5 currentSeedingDevice];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  [v7 statefulUIManager:v5 didEnrollDevice:? inBetaUpdatesProgram:? withError:?];
  MEMORY[0x277D82BD8](v6);
  return MEMORY[0x277D82BD8](v7);
}

- (void)handleScanFinishedRollbackApplied:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(SUSettingsStatefulUIManager *)v15 log];
  v13 = [(SUCoreLog *)v4 oslog];
  MEMORY[0x277D82BD8](v4);
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v16, "[SUSettingsStatefulUIManager handleScanFinishedRollbackApplied:]");
    _os_log_impl(&dword_26AC94000, v13, v12, "%s: Rollback applied. Attempts to ask to reboot the device.", v16, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  queue = v15->_delegateCallbackQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __65__SUSettingsStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke;
  v9 = &unk_279CB9410;
  v10 = MEMORY[0x277D82BE0](v15);
  v11 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUSettingsStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke(void *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v2 = a1[4];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __65__SUSettingsStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_2;
  v8 = &unk_279CB99B0;
  v9 = MEMORY[0x277D82BE0](a1[4]);
  v10[0] = MEMORY[0x277D82BE0](a1[5]);
  [WeakRetained statefulUIManager:v2 requestRollbackRestartApprovalWithReplyHandler:?];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
}

void __65__SUSettingsStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v18 = a2;
  v17[1] = a1;
  v6 = [*(a1 + 32) log];
  v17[0] = [v6 oslog];
  MEMORY[0x277D82BD8](v6);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v17[0];
    type = v16;
    v5 = SUSettingsUserInteractionResponseTypeToString(v18);
    v15 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_2_8_32_8_66(v20, "[SUSettingsStatefulUIManager handleScanFinishedRollbackApplied:]_block_invoke_2", v15);
    _os_log_impl(&dword_26AC94000, log, type, "%s: User responded to the rollback reboot request: %{public}@", v20, 0x16u);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v17, 0);
  queue = *(*(a1 + 32) + 168);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __65__SUSettingsStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_442;
  v12 = &unk_279CB9988;
  v14[1] = v18;
  v13 = MEMORY[0x277D82BE0](*(a1 + 32));
  v14[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  dispatch_async(queue, &v8);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUSettingsStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_442(void *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  if (a1[6])
  {
    [*(a1[4] + 216) postEvent:@"CheckingForUpdatesFailed" withInfo:a1[5]];
  }

  else
  {
    v2[0] = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"Reboot for rollback apply"];
    [v2[0] setRebootType:1];
    v1 = objc_alloc_init(MEMORY[0x277D0AE18]);
    [v1 shutdownWithOptions:v2[0]];
    objc_storeStrong(&v1, 0);
    objc_storeStrong(v2, 0);
  }
}

- (void)updateDescriptorsUsingScanResults:(id)a3 andWithConcreteError:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSettingsStatefulUIManager *)v7 hideNonTargetedUpdateDescriptors];
  [(SUSettingsStatefulDescriptor *)v7->_preferredStatefulDescriptor updateStateWithScanResults:location[0] andWithConcreteError:v5];
  [(SUSettingsStatefulDescriptor *)v7->_alternateStatefulDescriptor updateStateWithScanResults:location[0] andWithConcreteError:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)hideNonTargetedUpdateDescriptors
{
  if (self->_currentDownload)
  {
    v8 = [(SUDownload *)self->_currentDownload downloadOptions];
    v9 = 0;
    if (([(SUDownloadOptions *)v8 isAutoDownload]& 1) == 0)
    {
      v9 = 0;
      if (!self->_hidingPreferredDescriptor)
      {
        v9 = !self->_hidingAlternateDescriptor;
      }
    }

    MEMORY[0x277D82BD8](v8);
    if (v9)
    {
      v6 = [(SUDownload *)self->_currentDownload descriptor];
      v5 = [(SUSettingsStatefulDescriptor *)self->_preferredStatefulDescriptor descriptor];
      v7 = [(SUDescriptor *)v6 isEqual:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      if (v7)
      {
        [(SUSettingsStatefulUIManager *)self hideAlternateUpdate];
      }

      else
      {
        v3 = [(SUDownload *)self->_currentDownload descriptor];
        v2 = [(SUSettingsStatefulDescriptor *)self->_alternateStatefulDescriptor descriptor];
        v4 = [(SUDescriptor *)v3 isEqual:?];
        MEMORY[0x277D82BD8](v2);
        MEMORY[0x277D82BD8](v3);
        if (v4)
        {
          [(SUSettingsStatefulUIManager *)self hidePreferredUpdate];
        }
      }
    }
  }
}

- (void)executeOperationOnDelegate:(SEL)a3 usingBlock:(id)a4
{
  v17 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v6 = [(SUSettingsStatefulUIManager *)v17 delegate];
  v14 = 0;
  v7 = 0;
  if (v6)
  {
    v15 = [(SUSettingsStatefulUIManager *)v17 delegate];
    v14 = 1;
    v7 = objc_opt_respondsToSelector();
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v5 = [MEMORY[0x277D643F8] sharedCore];
    queue = [v5 selectDelegateCallbackQueue:v17->_delegateCallbackQueue];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __69__SUSettingsStatefulUIManager_executeOperationOnDelegate_usingBlock___block_invoke;
    v12 = &unk_279CB9438;
    v13 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setCurrentDownload:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = MEMORY[0x277D82BE0](v28);
  objc_sync_enter(obj);
  if (location[0] != v28->_currentDownload || (v12 = v28->_currentDownload, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = SUSettingsSharedLogger();
    v26 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v22 = 0;
      v20 = 0;
      if (v28->_currentDownload && (v25 = [(SUDownload *)v28->_currentDownload descriptor], v24 = 1, v25))
      {
        v23 = [(SUDownload *)v28->_currentDownload descriptor];
        v22 = 1;
        v21 = [(SUDescriptor *)v23 humanReadableUpdateName];
        v20 = 1;
        v10 = v21;
      }

      else
      {
        v10 = @"N/A";
      }

      currentDownload = v28->_currentDownload;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v3 = @"YES";
      if ((isKindOfClass & 1) == 0)
      {
        v3 = @"NO";
      }

      v7 = v3;
      v18 = 0;
      v16 = 0;
      v14 = 0;
      if (location[0] && (v19 = [location[0] descriptor], v18 = 1, v19))
      {
        v17 = [location[0] descriptor];
        v16 = 1;
        v15 = [v17 humanReadableUpdateName];
        v14 = 1;
        v6 = v15;
      }

      else
      {
        v6 = @"N/A";
      }

      v5 = location[0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      __os_log_helper_16_2_7_8_32_8_66_8_0_8_66_8_66_8_0_8_66(v29, "[SUSettingsStatefulUIManager setCurrentDownload:]", v10, currentDownload, v7, v6, v5, v4);
      _os_log_impl(&dword_26AC94000, v26, OS_LOG_TYPE_DEFAULT, "%s: Replacing the current download object with a new one.\n\tCurrent: %{public}@ (%p, is SUSUIUninitializedDownload? %{public}@)\n\tNew: %{public}@ (%p, is SUSUIUninitializedDownload? %{public}@)\n", v29, 0x48u);
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

      if (v20)
      {
        MEMORY[0x277D82BD8](v21);
      }

      if (v22)
      {
        MEMORY[0x277D82BD8](v23);
      }

      if (v24)
      {
        MEMORY[0x277D82BD8](v25);
      }
    }

    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v28->_currentDownload, location[0]);
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
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
  v71 = *MEMORY[0x277D85DE8];
  v67 = self;
  v66 = a2;
  v65 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v65 < 2)
  {
    v57 = 0;
    v55 = 0;
    if (v65)
    {
      v56 = [(SUSettingsStatefulUIManager *)v67 alternateStatefulDescriptor];
      v55 = 1;
      v4 = MEMORY[0x277D82BE0](v56);
    }

    else
    {
      v58 = [(SUSettingsStatefulUIManager *)v67 preferredStatefulDescriptor];
      v57 = 1;
      v4 = MEMORY[0x277D82BE0](v58);
    }

    v59 = v4;
    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    v52 = 0;
    v50 = 0;
    if (v65)
    {
      v51 = [location alternateDescriptor];
      v50 = 1;
      v5 = MEMORY[0x277D82BE0](v51);
    }

    else
    {
      v53 = [location preferredDescriptor];
      v52 = 1;
      v5 = MEMORY[0x277D82BE0](v53);
    }

    v54 = v5;
    if (v50)
    {
      MEMORY[0x277D82BD8](v51);
    }

    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v59 || v54)
    {
      if ([v59 isEqualToDescriptor:v54])
      {
        v35 = [(SUSettingsStatefulUIManager *)v67 log];
        oslog = [(SUCoreLog *)v35 oslog];
        MEMORY[0x277D82BD8](v35);
        v48 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v30 = oslog;
          v31 = v48;
          v34 = SUSettingsDescriptorTypeToString(v65);
          v26 = MEMORY[0x277D82BE0](v34);
          v47 = v26;
          v33 = [v59 humanReadableUpdateName];
          v27 = MEMORY[0x277D82BE0](v33);
          v46 = v27;
          v32 = [v54 humanReadableUpdateName];
          v28 = MEMORY[0x277D82BE0](v32);
          v45 = v28;
          v6 = [(SUSettingsStatefulUIManager *)v67 hidingPreferredDescriptor];
          v7 = "YES";
          if (!v6)
          {
            v7 = "NO";
          }

          v29 = v7;
          if ([(SUSettingsStatefulUIManager *)v67 hidingAlternateDescriptor])
          {
            v8 = "YES";
          }

          else
          {
            v8 = "NO";
          }

          __os_log_helper_16_2_7_8_66_8_66_8_0_8_66_8_0_8_32_8_32(v69, v26, v27, v59, v28, v54, v29, v8);
          _os_log_impl(&dword_26AC94000, v30, v31, "%{public}@ descriptor assignment: the given descriptor is equal to the current stateful descriptor. Updating internal state instead of creation of an entirely new one.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %s; Alternate: %s", v69, 0x48u);
          MEMORY[0x277D82BD8](v32);
          MEMORY[0x277D82BD8](v33);
          MEMORY[0x277D82BD8](v34);
          objc_storeStrong(&v45, 0);
          objc_storeStrong(&v46, 0);
          objc_storeStrong(&v47, 0);
        }

        objc_storeStrong(&oslog, 0);
        [(SUSettingsStatefulUIManager *)v67 hideNonTargetedUpdateDescriptors];
        [v59 updateStateWithScanResults:location andWithConcreteError:0];
        v60 = 1;
      }

      else
      {
        v25 = [(SUSettingsStatefulUIManager *)v67 log];
        v44 = [(SUCoreLog *)v25 oslog];
        MEMORY[0x277D82BD8](v25);
        v43 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v44;
          v21 = v43;
          v24 = SUSettingsDescriptorTypeToString(v65);
          v16 = MEMORY[0x277D82BE0](v24);
          v42 = v16;
          v23 = [v59 humanReadableUpdateName];
          v17 = MEMORY[0x277D82BE0](v23);
          v41 = v17;
          v22 = [v54 humanReadableUpdateName];
          v18 = MEMORY[0x277D82BE0](v22);
          v40 = v18;
          v9 = [(SUSettingsStatefulUIManager *)v67 hidingPreferredDescriptor];
          v10 = "YES";
          if (!v9)
          {
            v10 = "NO";
          }

          v19 = v10;
          if ([(SUSettingsStatefulUIManager *)v67 hidingAlternateDescriptor])
          {
            v11 = "YES";
          }

          else
          {
            v11 = "NO";
          }

          __os_log_helper_16_2_7_8_66_8_66_8_0_8_66_8_0_8_32_8_32(v68, v16, v17, v59, v18, v54, v19, v11);
          _os_log_impl(&dword_26AC94000, v20, v21, "%{public}@ descriptor assignment: Replacing the current descriptor with a new descriptor.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %s; Alternate: %s", v68, 0x48u);
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](v23);
          MEMORY[0x277D82BD8](v24);
          objc_storeStrong(&v40, 0);
          objc_storeStrong(&v41, 0);
          objc_storeStrong(&v42, 0);
        }

        objc_storeStrong(&v44, 0);
        if (v65)
        {
          if (v54)
          {
            v13 = [SUSettingsStatefulDescriptor alloc];
            v14 = [(SUSettingsStatefulDescriptor *)v13 initForDescriptor:v65 fromScanResults:location managedBy:v67];
            [(SUSettingsStatefulUIManager *)v67 setAlternateStatefulDescriptor:?];
            MEMORY[0x277D82BD8](v14);
          }

          else
          {
            [(SUSettingsStatefulUIManager *)v67 setAlternateStatefulDescriptor:0];
          }
        }

        else if (v54)
        {
          v12 = [SUSettingsStatefulDescriptor alloc];
          v15 = [(SUSettingsStatefulDescriptor *)v12 initForDescriptor:v65 fromScanResults:location managedBy:v67];
          [(SUSettingsStatefulUIManager *)v67 setPreferredStatefulDescriptor:?];
          MEMORY[0x277D82BD8](v15);
        }

        else
        {
          [(SUSettingsStatefulUIManager *)v67 setPreferredStatefulDescriptor:0];
        }

        v60 = 0;
      }
    }

    else
    {
      v60 = 1;
    }

    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v59, 0);
  }

  else
  {
    v39 = [(SUSettingsStatefulUIManager *)v67 log];
    v63 = [(SUCoreLog *)v39 oslog];
    MEMORY[0x277D82BD8](v39);
    v62 = 16;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      log = v63;
      type = v62;
      v38 = SUSettingsDescriptorTypeToString(v65);
      v61 = MEMORY[0x277D82BE0](v38);
      __os_log_helper_16_2_2_8_32_8_66(v70, "[SUSettingsStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v61);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Invalid descriptor type: %{public}@", v70, 0x16u);
      MEMORY[0x277D82BD8](v38);
      objc_storeStrong(&v61, 0);
    }

    objc_storeStrong(&v63, 0);
    v60 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)baseDomain
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [MEMORY[0x277D643F8] sharedCore];
  v4 = [v5 commonDomain];
  v6 = [v3 initWithFormat:@"%@.susettings.fsm.manager", v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (SUSettingsStatefulUIManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end